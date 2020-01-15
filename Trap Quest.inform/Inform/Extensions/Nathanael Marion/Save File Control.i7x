Version 1/181001 of Save File Control (for Glulx only) by Nathanael Marion begins here.

"Allows the author to save and load the game with an external file without the player's control."

"based on the Kerkerkruip Permadeath extension by Victor Gijsbers, itself adapted from Roguelike save & restore by Erik Temple"

[Link to Erik Temple's Roguelike save & restore: http://www.intfiction.org/forum/viewtopic.php?f=7&t=2843]

Part 1 - Save files

[We mark save files with this property.]
An external file can be save file.

Part 2 - The restoring from a saved game activity

Restoring from a saved game is an activity.

For restoring from a saved game (this is the default restore rule):
	say "[text of the restore the game rule response (B)][line break]";

Part 3 - Phrases for working with save files

[We take advantage of the existence of the I7 "external file" type to make declaring files easier, but we should only use saved game files with these three phrases; the built-in external file handling is not equipped to deal with them. If we didn't use the I7 type, we would need to declare the name the saved game file(s) in I6 using string arrays.]

To read (filename - save file external file) into memory:
	(- FileIO_LoadSavedGame({filename}); -).

To write game data to (filename - save file external file):
	(- FileIO_WriteSavedGame({filename}); -).

To delete (filename - save file external file):
	(- FileIO_DeleteSavedGame({filename}); -).

To decide if (filename - external file) exists:
	if filename is a save file:
		set filename as a save file;
	decide on whether or not filename exists part b;

To set (filename - external file) as a save file:
	(- FileIO_SetSaveFile( {filename} ); -).

To decide if (filename - external file) exists part b:
	(- (FileIO_Exists({filename}, false)) -).

Part 4 - Inform 6 code

Include (-

[ FileIO_LoadSavedGame extf struc fref res;
	if ((extf < 1) || (extf > NO_EXTERNAL_FILES))
		return FileIO_Error(extf, "tried to access a non-file");
	struc = TableOfExternalFiles-->extf;
	fref = glk_fileref_create_by_name(fileusage_SavedGame + fileusage_BinaryMode, Glulx_ChangeAnyToCString(struc-->AUXF_FILENAME), 0);
	if (fref == 0) jump RFailed;
	gg_savestr = glk_stream_open_file(fref, $02, GG_SAVESTR_ROCK);
	glk_fileref_destroy(fref);
	if (gg_savestr == 0) jump RFailed;
	@restore gg_savestr res;
	glk_stream_close(gg_savestr, 0);
	gg_savestr = 0;
	rtrue;
	.RFailed;
	RESTORE_THE_GAME_RM('A'); new_line;
];

[ FileIO_WriteSavedGame extf struc fref res;
	if (actor ~= player) rfalse;
	if ((extf < 1) || (extf > NO_EXTERNAL_FILES))
		return FileIO_Error(extf, "tried to access a non-file");
	struc = TableOfExternalFiles-->extf;
	fref = glk_fileref_create_by_name(fileusage_SavedGame + fileusage_BinaryMode, Glulx_ChangeAnyToCString(struc-->AUXF_FILENAME), 0);
	if (fref == 0) jump SFailed;
	gg_savestr = glk_stream_open_file(fref, $01, GG_SAVESTR_ROCK);
	glk_fileref_destroy(fref);
	if (gg_savestr == 0) jump SFailed;
	@save gg_savestr res;
	if (res == -1) {
		! The player actually just typed "restore". We have to recover all the Glk objects;
		! the values in our global variables are all wrong.
		GGRecoverObjects();
		glk_stream_close(gg_savestr, 0); ! stream_close
		gg_savestr = 0;
		CarryOutActivity( (+ restoring from a saved game +) );
		rtrue;
	}
	glk_stream_close(gg_savestr, 0); ! stream_close
	gg_savestr = 0;
	if (res == 0) rtrue;
	.SFailed;
	SAVE_THE_GAME_RM('A'); new_line;
];

[ FileIO_DeleteSavedGame extf struc fref res;
	if ((extf < 1) || (extf > NO_EXTERNAL_FILES))
		return FileIO_Error(extf, "tried to access a non-file");
	struc = TableOfExternalFiles-->extf;
	fref = glk_fileref_create_by_name(fileusage_SavedGame + fileusage_BinaryMode, Glulx_ChangeAnyToCString(struc-->AUXF_FILENAME), 0);
	if (fref == 0) rfalse;
	if (glk_fileref_does_file_exist(fref)) {
		res = glk_fileref_delete_file(fref);
		if (res ~= 0)
		{
			print "[Failed to delete the saved game. Please remove by hand.]^^"; ! TODO
		}
	}
	glk_fileref_destroy(fref);
];

[ FileIO_SetSaveFile extf struc;
	if ((extf < 1) || (extf > NO_EXTERNAL_FILES))
		return FileIO_Error(extf, "tried to access a non-file");
	struc = TableOfExternalFiles-->extf;
	struc-->AUXF_BINARY = struc-->AUXF_BINARY | 2;
];

-).

[ We will alter the built in if (external file) exists phrase so that we don't confuse matters with two similar phrases. ]
Include (-

[ FileIO_Exists extf fref struc rv usage;
	if ((extf < 1) || (extf > NO_EXTERNAL_FILES)) rfalse;
	struc = TableOfExternalFiles-->extf;
	if ((struc == 0) || (struc-->AUXF_MAGIC ~= AUXF_MAGIC_VALUE)) rfalse;
	if ( struc-->AUXF_BINARY )
	{
		usage = fileusage_BinaryMode;
	} else {
		usage = fileusage_TextMode;
	}
	if ( struc-->AUXF_BINARY & 2 == 2 )
	{
		usage = usage + fileusage_SavedGame;
	} else {
		usage = usage + fileusage_Data;
	}
	fref = glk_fileref_create_by_name( usage, Glulx_ChangeAnyToCString(struc-->AUXF_FILENAME), 0 );
	rv = glk_fileref_does_file_exist(fref);
	glk_fileref_destroy(fref);
	return rv;
];

-) instead of "Existence" in "FileIO.i6t".

Save File Control ends here.

---- DOCUMENTATION ----

This extension allows us to save a game to an external file and restore it without the player's interaction.

First, we have to declare the external files (one for each saved game):

	The binary file of save data is called "MyGameSave".
	The file of save data is save file.

Note that the external file has to be declared a "binary" file. Moreover, the external files used for saving must have the property "save file".

To save and restore the game, these phrases are available:

	write game data to (save file);
	read (save file) into memory;

Writing game data will overwrite the previous save contained in the file.

To delete the save file, we can use this phrase:

	delete (save file);

Saving and deleting a save file won't display a message except if an error occurs. The behavior after restoring is determined by the restoring from a saved game activity. If no for rule is provided, the game will display the text of the restore the game rule response (B), which by default is "Ok.". If we want the player to look after restoring, we could for instance write:

	After restoring from a saved game:
		try looking.

See the example for standard uses.

Example: * Permadeath - Allowing the player to only have one save file, and saving automatically each turn. (Adapted from Kerkerkruip.)

	*:"Permadeath"

	Part 1 - The permadeath system

	Use undo prevention.

	Roguelike mode is initially true.

	The binary file of save data is called "PermadeathSaves".
	The file of save data is save file.

	Before reading a command when roguelike mode is true (this is the automatically save before input rule):
		write game data to the file of save data;
		continue the action.

	When play begins when roguelike mode is true (this is the restore if we have a savefile rule):
		if the file of save data exists:
			read file of save data into memory.

	Check saving the game when roguelike mode is true (this is the block saving rule):
		say "The game is saved and loaded automatically. There is no need to save it manually." instead.

	Check restoring the game when roguelike mode is true (this is the block restore rule):
		say "The game is saved and loaded automatically. There is no need to restore your game manually." instead.

	After printing the player's obituary when roguelike mode is true (this is the delete save on finish rule):
		delete file of save data.

	First carry out restarting the game (this is the delete save on restart rule):
		if roguelike mode is true:
			delete file of save data.

	Part 2 - The scenario

	Use scoring.

	The cliff is a room.

	The book is a thing. The player carries the book.

	Instead of jumping:
		say "You jump to your death.";
		end the story saying "You have died".

To test, you can drop the book, do other things, quit and relaunch the story. You can see if the game restored itself if the book is still in the location and if the turn count stayed where you left. Jump or restart if you want to delete the save file.