Roguelike Saving by Miscellaneous Backend begins here.

The file of save data is save file.

Before reading a command when save game limit > 0 (this is the automatically save before input rule):
	now choice in row 26 of Table of Settings is a random number between 0 and 999999;
	write File of Preferences from the Table of Settings;
	write game data to the file of save data;
	continue the action.

When play begins (this is the restore if we have a savefile rule):
	initialise variables;
	reset the Glulx timer;
	if loading scenes is 1:
		if images visible is 1:
			if choice in row 49 of Table of Settings > -1 and (diaper quest is 1 or choice in row 48 of the Table of Player Options > -1): [mythical creatures must be enabled to see the gargoyle]
				let A be a random initial animation track;
				commence animation of A;
			otherwise:
				if diaper quest is 0, display figure of dungeon loading;
				otherwise display figure of dq dungeon loading;
				say "Now loading...";
	wait until animations are over;
	if the file of save data exists:
		read file of save data into memory.

Check saving the game when save game limit > 0 (this is the block saving rule):
	say "The game is saved and loaded automatically. There is no need to save it manually[unless the file of save data exists]. But make sure to do at least one thing before closing, because currently there's no save file![end if]." instead.

Check restoring the game when save game limit > 0 (this is the block restore rule):
	say "The game is saved and loaded automatically. There is no need to restore your game manually." instead.

After printing the player's obituary when save game limit > 0 (this is the delete save on finish rule):
	delete file of save data.

First carry out restarting the game (this is the delete save on restart rule):
	if save game limit > 0:
		delete file of save data.

First carry out quitting the game (this is the create save on quit rule):
	unless the file of save data exists or save game limit is 0:
		write game data to the file of save data.

saveCheatDetected is a number that varies.

After restoring from a saved game:
	if save game limit > 0:
		read File of Preferences into the Table of Fake Settings;
		if choice in row 26 of Table of Settings is not choice in row 26 of Table of Fake Settings:
			[say "[bold type]SCD!!![roman type][line break]";]
			if saveCheatDetected is 0:
				now saveCheatDetected is a random number between 30 and 50;
			otherwise if saveCheatDetected is -1:
				compute trolling;
	fix window overhang;
	[delete file of save data.] [Bad for crashes]

Every turn:
	if saveCheatDetected > 0:
		[say "Debug: [saveCheatDetected].";]
		decrease saveCheatDetected by 1;
		if saveCheatDetected <= 2:
			compute trolling;
			now saveCheatDetected is -1.

To fix window overhang:
	say "One more moment, fixing windows...";
	render buffered stuff;
	clear the screen;
	force inventory-focus redraw; [Forces redraw of inventory window]
	force clothing-focus redraw; [Forces redraw of clothing inventory window]
	fix status bar;
	refresh windows;
	if setting-instruction is "":
		try looking;
	otherwise:
		say "[setting-instruction]";
		now setting-instruction is "".

To fix status bar:
	if new status line is 4:
		close the status window;
	otherwise:
		open the status window;
		update status line.

Roguelike Saving ends here.
