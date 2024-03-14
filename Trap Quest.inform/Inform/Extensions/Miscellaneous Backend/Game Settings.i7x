Game Settings by Miscellaneous Backend begins here.

[!<crashdebug:Integer>*

Sometimes when there are a lot of crashes during fainting we enable this to allow checkpoints during fainting so we can see how far the interpreter got so that we can work out which bit is causing the crash. When it's set to 1, the game will spit out "CHECKPOINT 1", "CHECKPOINT 2" etc. during the resetting of the map.

*!]
crashdebug is a number that varies. crashdebug is 0.

[!<quickStart:Integer>*

Used to track what game mode was selected.

0: Normal start
1: Random start
2: Quick start
3: Load save file

*!]
quick start is a number that varies.

[!<fileOfPreferences:File>*

Contains all the settings that are just toggleable and not to do with perk points.

*!]
The File of Preferences (owned by another project) is called "prefs".

[!<tableOfSettings:Integer>*

Each row holds one setting.

*!]
Table of Settings
choice
1 [YesNoPreference]
1 [Images Visible]
1 [SaveLoadPreference]
1 [Face Images Visible]
1 [Breast Images Visible]
1 [Belly Images Visible]
1 [Hip Images Visible]
0 [Stockings Images Visible]
0 [Heels Images Visible]
1 [Orifice Images Visible]
1 [Fetish Images Visible]
1 [Autosearch]
1 [Autostand]
1 [Side Images]
1 [Map Images]
4 [Inventory Visible]
0 [Cheatercheck part 1]
3 [Pubic Hair Images Visible]
3 [New status line]
1 [Newbie tips]
0 [focusedBodyParts]
1 [Character Stats Text]
0 [Character Stats]
2 [Keriax Mirror]
0 [Shortcuts]
0 [Save Cheat Seed]
3 [Inline Hyperlinks]
1 [Inventory Hyperlinks]
1 [Image Cutscenes]
1 [Tattoo Vision]
2 [Auto Take]
1 [Game Difficulty]
1 [Transformation Cutscenes]
1 [Loading Screens]
1 [Trap Warning]
0 [Save Game Limit]
0 [Wonderfuller Clothing]
0 [Previous supporter ID]
1 [auto body window]
1 [auto clothing window]
0 [body outdated preference]
1 [auto body animations]
0 [Disclaimer Version]
0 [Undo Counter]
1 [School Names]
0 [Excessive Hyperlinks]
1 [Flexible Focus Windows]
24 [inventoryFocusLimit]
1 [animationsEnabled]
2 [darkMode]
0 [popup buttons]
30 [focus window height]
0 [announcements seen]
0 [combat-visor-hidden]
1 [map-figures]
15 [maximumMenuSize]
1 [areYouSure]
2 [combatSpeed]
0 [simulatedInternet]
0 [extreme images visible]
1 [visibilityVisible]
1 [cursesVisible]
0 [blessingsVisible]
0 [wetnessVisible]
0 [miscellaneousVisible]

To decide which number is YesNoPreference:
	decide on choice in row 1 of the Table of Settings.

[!<DecideWhichNumberIsImagesVisible>+

Are any images *except the map* displayed?

+!]
To decide which number is images visible:
	decide on choice in row 2 of the Table of Settings.

[!<DecideWhichNumberIsSaveLoadPreference>+

Legacy variable. Kept here because otherwise all the others would be pushed to incorrect locations.

+!]
To decide which number is SaveLoadPreference:
	decide on choice in row 3 of the Table of Settings.

[!<DecideWhichNumberIsFaceImagesVisible>+

Are face images displayed? (Porn version only)

+!]
To decide which number is face images visible:
	decide on choice in row 4 of the Table of Settings.

[!<DecideWhicheNumberIsBreastImagesVisible>+

Are breast images displayed? (Porn version only)

+!]
To decide which number is breast images visible:
	decide on choice in row 5 of the Table of Settings.

[!<DecideWhichNumberIsBellyImagesVisible>+

Are belly images displayed? (Porn version only)

+!]
To decide which number is belly images visible:
	decide on choice in row 6 of the Table of Settings.

[!<DecideWhichNumberIsHipImagesVisible>+

Are hip images displayed? (Porn version only)

+!]
To decide which number is hip images visible:
	decide on choice in row 7 of the Table of Settings.

[!<DecideWhichNumberIsStockingsImagesVisible>+

Are stockings images displayed? (Porn version only)

+!]
To decide which number is stockings images visible:
	decide on choice in row 8 of the Table of Settings.

[!<DecideWhichNumberIsHeelsImagesVisible>+

Are heels images displayed? (Porn version only)

+!]
To decide which number is heels images visible:
	decide on choice in row 9 of the Table of Settings.

[!<DecideWhichNumberIsOrificeImagesVisible>+

Are gape images displayed?

+!]
To decide which number is orifice images visible:
	decide on choice in row 10 of the Table of Settings.

[!<DecideWhichNumberIsFetishImagesVisible>+

Are the more fetishy images (e.g. cum covered) displayed? (Porn version only)

+!]
To decide which number is fetish images visible:
	decide on choice in row 11 of the Table of Settings.

[!<DecideWhichNumberIsAutosearch>+

Does the player automatically search containers before opening them?

+!]
To decide which number is autosearch:
	decide on choice in row 12 of the Table of Settings.

[!<DecideWhichNumberIsAutostand>+

Does the player automatically stand up after tripping when it's safe?

+!]
To decide which number is autostand:
	decide on choice in row 13 of the Table of Settings.

[!<DecideWhichNumberIsSideImages>+

Is the character window enabled?

+!]
To decide which number is side images:
	decide on choice in row 14 of the Table of Settings.

[!<DecideWhichNumberIsMapImages>+

Is the map window enabled?

+!]
To decide which number is map images:
	decide on 1.

[!<DecideWhichNumberIsHalfSideImages>+

This is used for varying the size of the character window images, especially in the porn version.

+!]
To decide which number is inventory-visible:
	decide on choice in row 16 of the Table of Settings.

[!<DecideWhichNumberIsPubicHairImagesVisible>+

What pubic hair images are enabled?

+!]
To decide which number is pubic hair images visible:
	decide on choice in row 18 of the Table of Settings.

[!<DecideWhichNumberIsTheNewStatusLine>+

Is the status line made thicker to avoid it going off the right hand edge of the screen?

+!]
To decide which number is new status line:
	decide on choice in row 19 of the Table of Settings.

[!<DecideWhichNumberIsNewbieTips>+

Are newbie tips enabled?

+!]
To decide which number is newbie tips:
	decide on choice in row 20 of the Table of Settings.

To decide which number is focusedBodyParts:
	decide on choice in row 21 of the Table of Settings.

[!<DecideWhichNumberIsCharacterStatsText>+

Are the stat wheel labels enabled?

+!]
To decide which number is character stats text:
	decide on choice in row 22 of the Table of Settings.

[!<DecideWhichNumberIsCharacterStats>+

Are the stat wheels enabled?

+!]
To decide which number is character stats:
	decide on choice in row 23 of the Table of Settings.

[!<DecideWhichNumberIsKeriaxMirror>+

Is the mirror in the keriax window enabled?

+!]
To decide which number is keriax mirror:
	decide on choice in row 24 of the Table of Settings.

[!<DecideWhichNumberIsShortcuts>+

Are the text shortcuts after each noun enabled? (Won't be visible if in-line hyperlinks are on)

+!]
To decide which number is shortcuts:
	decide on choice in row 25 of the Table of Settings.

[!<DecideWhichNumberIsUltraUndo>+

Does the game create an undo save after every action?

+!]
To decide which number is saveCheatSeed:
	decide on choice in row 26 of the Table of Settings.

[!<DecideWhichNumberIsInlineHyperlinks>+

How complex are the hyperlinks?

+!]
To decide which number is inline hyperlinks:
	if linksCurrentlyEnabled is 0, decide on 0; [This stops hyperlinks being made during when we don't want, e.g. during inventory.]
	decide on choice in row 27 of the Table of Settings.

[!<DecideWhichNumberIsActualInlineHyperlinks>+

How complex are the hyperlinks?

+!]
To decide which number is actual inline hyperlinks:
	decide on choice in row 27 of the Table of Settings.

[!<DecideWhichNumberIsInventoryHyperlinks>+

Are there hyperlinks in the various inventory screens?

+!]
[To decide which number is inventory hyperlinks:
	if linksCurrentlyEnabled is 0, decide on 0;
	decide on choice in row 28 of the Table of Settings.]

[!<DecideWhichNumberIsImageCutscenes>+

Do images sometimes appear in the main window triggered by certain events?

+!]
To decide which number is image cutscenes:
	decide on choice in row 29 of the Table of Settings.

[!<DecideWhichNumberIsTattooVision>+

Do we show relevant tattoos in the focus window?

+!]
To decide which number is tattoo vision:
	decide on choice in row 30 of the Table of Settings.

[!<DecideWhichNumberIsAutotake>+

Does the player automatically take things found in containers?

+!]
To decide which number is autotake:
	decide on choice in row 31 of the Table of Settings.

[!<DecideWhichNumberIsGameDifficulty>+

How difficult is the game? (Monster HP)

+!]
To decide which number is game difficulty:
	decide on choice in row 32 of the Table of Settings.

[!<DecideWhichNumberIsTransformationCutscenes>+

Are items automatically examined when they transform?

+!]
To decide which number is transformation cutscenes:
	decide on choice in row 33 of the Table of Settings.

[!<DecideWhichNumberIsLoadingScreens>+

Are there specific screens for loading the various regions?

+!]
To decide which number is loading scenes:
	decide on choice in row 34 of the Table of Settings.

[!<DecideWhichNumberIsTrapWarning>+

Do you want to be warned before entering a room with an active trap that may affect you?

+!]
To decide which number is trap warning:
	decide on choice in row 35 of the Table of Settings.

[!<DecideWhichNumberIsWonderfullerClothing>+

Are there clothes on the Wonderfuller model?

+!]
To decide which number is wonderfuller clothing:
	decide on choice in row 37 of the Table of Settings.

[!<DecideWhichNumberIsPreviousSupporterID>+

Which was the previous supporter used? Because we want to avoid it next time

+!]
To decide which number is previous supporter ID:
	decide on choice in row 38 of the Table of Settings.

To record supporter ID as (N - a number):
	now choice in row 38 of the Table of Settings is N;
	write File of Preferences from the Table of Settings.

To decide which number is auto body window:
	decide on choice in row 39 of the Table of Settings.

This is the auto body window toggle rule:
	if auto body window is 0, now choice in row 39 of the Table of Settings is 1;
	otherwise now choice in row 39 of the Table of Settings is 0.

To decide which number is auto clothing window:
	decide on choice in row 40 of the Table of Settings.

This is the auto clothing window toggle rule:
	if auto clothing window < 2, increase choice in row 40 of the Table of Settings by 1;
	otherwise now choice in row 40 of the Table of Settings is 0.

To decide which number is body outdated preference:
	decide on choice in row 41 of the Table of Settings.

This is the body outdated preference toggle rule:
	if body outdated preference < 1, increase choice in row 41 of the Table of Settings by 1;
	otherwise now choice in row 41 of the Table of Settings is 0.

To decide which number is auto body animations:
	if the player is not a march 2024 top donator, decide on 0;
	decide on choice in row 42 of the Table of Settings.

This is the auto body animations toggle rule:
	if auto body animations is 0, now choice in row 42 of the Table of Settings is 1;
	otherwise now choice in row 42 of the Table of Settings is 0.


[!<DecideWhichNumberIsDisclaimerVersion>+

Which is the latest version of the disclaimer that this person has read?

+!]
To decide which number is disclaimer version:
	decide on choice in row 43 of the Table of Settings.

[!<DecideWhichNumberIsUndoCounter>+

How many times has the player used undo since they started this new game?

+!]
To decide which number is undo-counter:
	decide on choice in row 44 of the Table of Settings.

[!<DecideWhichNumberIsSchoolNames>+

Does the player's name get overridden in the school?

+!]
To decide which number is schoolNames:
	decide on choice in row 45 of the Table of Settings.

[!<DecideWhichNumberIsExcessiveHyperlinks>+

Does the player get hyperlinks in the text even when all the windows are open?

+!]
To decide which number is excessiveHyperlinks:
	decide on choice in row 46 of the Table of Settings.

[!<DecideWhichNumberIsFlexibleFocusWindows>+

How many of those clickable arrows to open windows does the player want?

+!]
To decide which number is flexible focus windows:
	decide on choice in row 47 of the Table of Settings.

Table of Random Settings
title	subtable	description	toggle
"Play with the exact settings I just chose for this run-through, and let me choose how I spend my benefits points."	--	--	quit rule
"I like surprises. Randomise the things that I didn't set to [']never['] or [']always['] and choose my benefits for me!"	--	--	slow random start rule

Table of Game Settings
title	subtable	description	toggle
"Restore a Save File (to guarantee windows are the right size or if this crashes, try Quick Start followed by 'restore')"	--	--	load game rule
"[if earnings is starting-earnings and the player is in Start]Normal Start (choose all your options, read prologue)[otherwise]Confirm Settings[end if] (shortcut: Q)"	--	--	quit rule
"[if halloween content is 1]UNAVAILABLE DURING HALLOWEEN MODE Quick Start (disable this in Normal Start > Seasonal Content)[otherwise]Quick Start (use same player choices as last time, skip prologue)[end if]"	--	--	quick start rule
"[if halloween content is 1]UNAVAILABLE DURING HALLOWEEN MODE Quick Random Start (disable this in Normal Start > Seasonal Content)[otherwise]Quick RANDOM Start (randomise everything that isn't set to [']never['] or [']always['], skip prologue)[end if]"	--	--	random start rule
"Tutorial (learn how to play the game)"	--	--	tutorial start rule
"Maximum menu rows: [maximumMenuSize + 1]"	--	--	maximumMenuSize toggle rule
"GAME FLOW SETTINGS"	Table of Game Flow Settings	--	--
"IMAGE AND LAYOUT SETTINGS"	Table of Image Settings	--	--
"OPTIONAL TEXT SETTINGS"	Table of Optional Text Settings	--	--
"AUTOMATIC ACTIONS SETTINGS"	Table of Automatic Actions Settings	--	--
["File Based Undo (guaranteed to make undo work properly, but can slow down game; essentially creates a save file every turn. recommended if you sometimes experience crashes because you can just restore with the latest undo file): [if ultra undo is 1]ON[otherwise]OFF[end if]"	--	--	ultra undo toggle rule]

To prune settings menu:
	choose the row with a toggle of load game rule in the Table of Game Settings;
	blank out the whole row;
	choose the row with a toggle of quick start rule in the Table of Game Settings;
	blank out the whole row;
	choose the row with a toggle of tutorial start rule in the Table of Game Settings;
	if the player is the donator:
		now the title entry is "Customise male names";
		now the toggle entry is the setup custom male name rule;
	otherwise:
		blank out the whole row;
	choose the row with a toggle of random start rule in the Table of Game Settings;
	if the player is the donator:
		now the title entry is "Customise female names";
		now the toggle entry is the setup custom female name rule;
	otherwise:
		blank out the whole row;
	choose the row with a subtable of Table of Game Flow Settings in the Table of Game Settings;
	blank out the whole row;
	if the player is the donator:
		now the title entry is "Customise flavour";
		now the toggle entry is the setup custom flavour rule;
	sort the Table of Game Settings in description order. [Move blank rows to the bottom]

This is the quick start rule:
	if earnings is starting-earnings and halloween content is 0:
		now quick start is 3;
		follow quit rule.

This is the random start rule:
	if earnings is starting-earnings and halloween content is 0:
		now quick start is 2;
		follow quit rule.

This is the slow random start rule:
	now quick start is 1;
	follow quit rule.

This is the load game rule:
	clear the screen;
	follow restore the game rule.

[!<TheYesNoPreferenceToggleRule>+

0: Always prefers to type yes/no
1+: Normal (all possible options provided)
1000: Doesn't want the map window option

+!]
This is the YesNoPreference toggle rule:
	if YesNoPreference is 1:
		now the choice in row 1 of the Table of Settings is 1000;
	otherwise if YesNoPreference is 1000:
		now the choice in row 1 of the Table of Settings is 0;
	otherwise:
		now the choice in row 1 of the Table of Settings is 1.

[!<TheSaveLoadPreferenceToggleRule>+

0: No save and load buttons
1: Save and load buttons in the map window

+!]
This is the SaveLoadPreference toggle rule:
	if SaveLoadPreference is 1:
		now the choice in row 3 of the Table of Settings is 0;
	otherwise:
		now the choice in row 3 of the Table of Settings is 1.

[!<TheGameDifficultyRule>+

Cycles the game difficulty between 0 and 5, each successive number representing a higher difficulty. Note that this refers to row 32 of the Table of Settings, not the Table of Player Options.

+!]
This is the game difficulty rule:
	unless the player is virtual:
		if game difficulty < 5:
			increase the choice in row 32 of the Table of Settings by 1;
		otherwise:
			now the choice in row 32 of the Table of Settings is 0.

[This is the ultra undo toggle rule:
	if choice in row 26 of Table of Settings is 0:
		now choice in row 26 of Table of Settings is 1;
		if earnings is not starting-earnings, compute undo weirdness;
	otherwise:
		now choice in row 26 of Table of Settings is 0;
		if earnings is not starting-earnings, reverse undo weirdness.]

This is the crash debug rule:
	if crashdebug is 0:
		now crashdebug is 1;
	otherwise:
		now crashdebug is 0.

Part - Game Flow Settings

Table of Game Flow Settings
title	subtable	description	toggle
"Previous Menu (Shortcut: Q)"	--	--	quit rule
"Game Difficulty (base unfriendliness of NPCs and increased number of game effects that can drain your 3 main stats): [if game difficulty is 0]EASIEST[otherwise if game difficulty is 1]EASY[otherwise if game difficulty is 2]NORMAL[otherwise if game difficulty is 3]HARD[otherwise if game difficulty is 4]HARDER[otherwise]GET FUCKED[end if] (+[game difficulty * 10] points to your epilogue score)"	--	--	game difficulty rule
"Combat Speed: [if combatSpeed is 1]FAST[otherwise if combatSpeed is 2]SLOWER[otherwise if combatSpeed is 3]VERY SLOW[otherwise]SLOWEST[end if]"	--	--	combat speed toggle rule


Part - Optional Text Settings

Table of Optional Text Settings
title	subtable	description	toggle
"Previous Menu (Shortcut: Q)"	--	--	quit rule
"Status bar: [if new status line is 4]NONE[otherwise if new status line is 3]MINIMAL (recommended assuming you're using the graphics windows)[otherwise if new status line is 2]COMPACT (for low resolution monitors)[otherwise if new status line is 1]NORMAL[otherwise]EXPANDED[end if]"	--	--	new status toggle rule
"Enable tips for newbies: [if newbie tips is 1]ON[otherwise]OFF[end if]"	--	--	newbie tips toggle rule
"Display Text Shortcuts (when hyperlinks are disabled, the abbreviated forms of all objects will be shown next to their names): [if shortcuts is 1]ON[otherwise]OFF[end if]"	--	--	shortcuts toggle rule
"Display Hyperlink Options: [if actual inline hyperlinks is 3]SMART (but slow)[otherwise if actual inline hyperlinks is 2]IN-LINE[otherwise if actual inline hyperlinks is 1]BASIC[otherwise]OFF[end if]"	--	--	inline hyperlinks toggle rule
"Inventory Window: On / Off: [if inventory-visible > 0]ON[otherwise]OFF[end if]"	--	--	inventory-visible toggle rule
"Display Hyperlinks In Inventory (can cause inventory command to lag): [if inventory hyperlinks is 2]ON[otherwise if inventory hyperlinks is 1]INVENTORY SUBSECTIONS ONLY (e.g. 'drinks')[otherwise]OFF[end if]"	--	--	inventory hyperlinks toggle rule
"Non-inventory Hyperlinks disabled when all graphical windows are open: [if excessiveHyperlinks is 0]YES[otherwise]NO[end if]"	--	--	excessive hyperlinks toggle rule
"When you are asked to respond yes / no: [if actual inline hyperlinks < 1]Respond by keyboard only (since you've disabled hyperlinks)[otherwise if YesNoPreference is 0]Respond by keyboard only[otherwise if YesNoPreference is 1]Respond by keyboard or text hyperlinks or map window buttons (all options will be provided to you)[otherwise]Respond by keyboard or text hyperlinks (obnoxious map window buttons don't appear)[end if]"	--	--	YesNoPreference toggle rule
"Examine Items After Transform: On / Off: [if transformation cutscenes is 1]ON[otherwise]OFF[end if]"	--	--	transformation cutscenes toggle rule
"Schoolteachers can give you new names: [if schoolNames is 0]OFF[otherwise]ON[end if]"	--	--	school names toggle rule
"Simulated internet (at the end of the game it's revealed that nothing compromising was actually published to the real internet): [if simulatedInternet is 0]OFF[otherwise]ON[end if]"	--	--	simulated internet toggle rule
[ALL EXTRA OPTIONS SHOULD GO ABOVE SIMULATED INTERNET ROW, OR NON-DONATORS WON'T SEE THEM.]

This is the new status toggle rule:
	if choice in row 19 of Table of Settings < 4, increase choice in row 19 of Table of Settings by 1;
	otherwise now choice in row 19 of Table of Settings is 0.

This is the newbie tips toggle rule:
	if choice in row 20 of Table of Settings is 0, now choice in row 20 of Table of Settings is 1;
	otherwise now choice in row 20 of Table of Settings is 0.

This is the shortcuts toggle rule:
	if choice in row 25 of Table of Settings is 0, now choice in row 25 of Table of Settings is 1;
	otherwise now choice in row 25 of Table of Settings is 0.

This is the inline hyperlinks toggle rule:
	if choice in row 27 of Table of Settings < 3, increase choice in row 27 of Table of Settings by 1;
	otherwise now choice in row 27 of Table of Settings is 0.

This is the inventory hyperlinks toggle rule:
	if choice in row 28 of Table of Settings < 2, increase choice in row 28 of Table of Settings by 1;
	otherwise now choice in row 28 of Table of Settings is 0.

Part - Automatic Actions

Table of Automatic Actions Settings
title	subtable	description	toggle
"Previous Menu (Shortcut: Q)"	--	--	quit rule
"Automatically search containers before opening them: [if autosearch is 1]ON[otherwise]OFF[end if]"	--	--	autosearch toggle rule
"Automatically attempt standing after tripping (not including combat): [if autostand is 1]ON[otherwise]OFF[end if]"	--	--	autostand toggle rule
"Automatically pick up items: [if autotake is 2]ON[otherwise if autotake is 1]ONLY NON-EDIBLES[otherwise]OFF[end if]"	--	--	autotake toggle rule
"Warn if entering trapped room: [if trap warning is 1]ON[otherwise]OFF[end if]"	--	--	trap warning toggle rule
"Ask 'are you sure' for common mistakes: [if areYouSure is 1]ON[otherwise]OFF[end if]"	--	--	areYouSure toggle rule

This is the autosearch toggle rule:
	if autosearch is 0, now choice in row 12 of the Table of Settings is 1;
	otherwise now choice in row 12 of the Table of Settings is 0.

This is the autostand toggle rule:
	if autostand is 0, now choice in row 13 of the Table of Settings is 1;
	otherwise now choice in row 13 of the Table of Settings is 0.

This is the autotake toggle rule:
	if autotake < 2, increase choice in row 31 of the Table of Settings by 1;
	otherwise now choice in row 31 of the Table of Settings is 0.

Part - GUI Settings

Table of GUI Settings
title	subtable	description	toggle
"Previous Menu (Shortcut: Q)"	--	--	quit rule
"Graphics Window: [if side images is 0]OFF[otherwise]ON[end if]"	--	--	side images toggle rule
"Automatically show clothing window when clothing changes: [if auto clothing window is 0]OFF[otherwise if auto clothing window is 1]ON (lower priority than automatically showing body window)[otherwise]ON (higher priority than automatically showing body window)[end if]"	--	--	auto clothing window toggle rule
"Automatically show body window when body transformation visibly progresses: [if auto body window is 0]OFF[otherwise]ON[end if]"	--	--	auto body window toggle rule
"What counts as body transformation visibly progressing? [if body outdated preference is 0]ALL VISIBLE CHANGES, GOOD & BAD[otherwise]ONLY WHEN BODY GETS SLUTTIER[end if]"	--	--	body outdated preference toggle rule
"Animated graphical elements: [if animationsEnabled is 1]ON[otherwise]OFF[end if]"	--	--	animationsEnabled toggle rule
"Automatically animate body transformations (recent alpha testers only): [if auto body animations is 0]OFF[otherwise]ON[end if]"	--	--	auto body animations toggle rule
"Icons for nearby NPCs in Map Window: [if map-figures is 1]ENABLED[otherwise if the player is not the donator]BETA TESTERS ONLY FOR NOW[otherwise]DISABLED[end if]"	--	--	map-figures toggle rule
"Save and Restore buttons[if SaveLoadPreference is 1] (these still won't show if you've chosen roguelike saving): ON[otherwise]: OFF[end if]"	--	--	SaveLoadPreference toggle rule
"Cutscene images: [if image cutscenes is 0]NO CUTSCENE IMAGES AT ALL[otherwise if image cutscenes is 1]PUSH LOTS TO THE MAP WINDOW (recommended)[otherwise]KEEP MOST IN THE LOCATION WINDOW[end if]"	--	--	image cutscenes toggle rule
"Visible humiliating tattoos shown in Location Window: [if tattoo vision is 1]ON[otherwise]OFF[end if]"	--	--	tattoo vision toggle rule


Part - Image Toggle Rules

This is the images visible toggle rule:
	if images visible is 0:
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 3 of the Table of Settings is 0;
		now choice in row 4 of the Table of Settings is 0;
		now choice in row 5 of the Table of Settings is 0;
		now choice in row 6 of the Table of Settings is 0;
		now choice in row 11 of the Table of Settings is 0;
		now choice in row 14 of the Table of Settings is 0;
		now choice in row 7 of the Table of Settings is 0;
		now choice in row 10 of the Table of Settings is 0;
		now choice in row 29 of the Table of Settings is 0;
		now choice in row 60 of the Table of Settings is 0;
		now the choice in row 2 of the Table of Settings is 0.

This is the side images toggle rule:
	if choice in row 14 of the Table of Settings is 0, now choice in row 2 of the Table of Settings is 1; [re-enable images]
	increase choice in row 14 of the Table of Settings by 1;
	if choice in row 14 of the Table of Settings > 1, now choice in row 14 of the Table of Settings is 0.

This is the map images toggle rule:
	if map images is 0, now the choice in row 2 of the Table of Settings is 1; [re-enable images]
	increase choice in row 15 of the Table of Settings by 1;
	if choice in row 15 of the Table of Settings > 1, now choice in row 15 of the Table of Settings is 0.

This is the inventory-visible toggle rule:
	if inventory-visible > 0:
		now choice in row 16 of the Table of Settings is 0;
	otherwise:
		increase choice in row 16 of the Table of Settings by 1.

This is the face images visible toggle rule:
	if face images visible is 0:
		now choice in row 4 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 4 of the Table of Settings is 0.

This is the breast images visible toggle rule:
	if breast images visible is 0:
		now choice in row 5 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 5 of the Table of Settings is 0.

This is the belly images visible toggle rule:
	if belly images visible is 0:
		now choice in row 6 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 6 of the Table of Settings is 0.

This is the hip images visible toggle rule:
	if hip images visible < 2:
		increase choice in row 7 of the Table of Settings by 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 10 of the Table of Settings is 0;
		now choice in row 7 of the Table of Settings is 0.

This is the stockings images visible toggle rule:
	if stockings images visible is 0:
		now choice in row 8 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 8 of the Table of Settings is 0.

This is the heels images visible toggle rule:
	if heels images visible is 0:
		now choice in row 9 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 9 of the Table of Settings is 0.

This is the orifice images visible toggle rule:
	if orifice images visible is 0:
		now choice in row 10 of the Table of Settings is 1;
		now choice in row 7 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 10 of the Table of Settings is 0.

This is the fetish images visible toggle rule:
	if fetish images visible is 0:
		now choice in row 11 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 11 of the Table of Settings is 0.

This is the pubic hair images visible toggle rule:
	if pubic hair images visible is 0:
		now choice in row 18 of the Table of Settings is 3;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		decrease choice in row 18 of the Table of Settings by 1.

This is the GUI layout toggle rule:
	if choice in row 21 of Table of Settings < 1, increase choice in row 21 of Table of Settings by 1;
	otherwise now choice in row 21 of Table of Settings is 0.

This is the character stats text toggle rule:
	if choice in row 22 of Table of Settings is 0, now choice in row 22 of Table of Settings is 1;
	otherwise now choice in row 22 of Table of Settings is 0.

This is the character stats toggle rule:
	if choice in row 23 of Table of Settings is 0, now choice in row 23 of Table of Settings is 1;
	otherwise now choice in row 23 of Table of Settings is 0.

This is the keriax mirror toggle rule:
	if choice in row 24 of Table of Settings > 0, decrease choice in row 24 of Table of Settings by 1;
	otherwise now choice in row 24 of Table of Settings is 2.

This is the image cutscenes toggle rule:
	if choice in row 29 of Table of Settings < 2, increase choice in row 29 of Table of Settings by 1;
	otherwise now choice in row 29 of Table of Settings is 0.

This is the tattoo vision toggle rule:
	if tattoo vision is 0:
		now choice in row 30 of the Table of Settings is 1;
	otherwise:
		now choice in row 30 of the Table of Settings is 0.

This is the transformation cutscenes toggle rule:
	if choice in row 33 of Table of Settings is 0, increase choice in row 33 of Table of Settings by 1;
	otherwise now choice in row 33 of Table of Settings is 0.

This is the loading scenes toggle rule:
	if choice in row 34 of Table of Settings is 0, increase choice in row 34 of Table of Settings by 1;
	otherwise now choice in row 34 of Table of Settings is 0.

This is the trap warning toggle rule:
	if choice in row 35 of Table of Settings is 0, increase choice in row 35 of Table of Settings by 1;
	otherwise now choice in row 35 of Table of Settings is 0.

This is the school names toggle rule:
	if choice in row 45 of Table of Settings is 0, increase choice in row 45 of Table of Settings by 1;
	otherwise now choice in row 45 of Table of Settings is 0.

This is the excessive hyperlinks toggle rule:
	if choice in row 46 of Table of Settings is 0:
		increase choice in row 46 of Table of Settings by 1;
	otherwise:
		now choice in row 46 of Table of Settings is 0;
		now choice in row 25 of Table of Settings is 0. [shortcuts look crap in this mode]

This is the flexible focus windows toggle rule:
	if choice in row 47 of Table of Settings < 2:
		increase choice in row 47 of Table of Settings by 1;
	otherwise:
		now choice in row 47 of Table of Settings is 0.

This is the inventoryFocusLimit toggle rule:
	if choice in row 48 of Table of Settings < 36:
		increase choice in row 48 of Table of Settings by 1;
	otherwise:
		now choice in row 48 of Table of Settings is 6.

To decide which number is inventoryFocusLimit:
	decide on choice in row 48 of Table of Settings.

This is the animationsEnabled toggle rule:
	if choice in row 49 of Table of Settings < 1:
		now choice in row 49 of Table of Settings is 1;
	otherwise:
		now choice in row 49 of Table of Settings is 0.

To decide which number is animationsEnabled:
	if choice in row 49 of Table of Settings is -1, decide on 0; [required due to a legacy setting]
	decide on choice in row 49 of Table of Settings.

This is the darkMode toggle rule:
	if darkMode < 2:
		increase choice in row 50 of Table of Settings by 1;
	otherwise:
		now choice in row 50 of Table of Settings is 0.

To decide which number is darkMode:
	decide on 1;
	[if the player is not the donator and choice in row 50 of Table of Settings is 1, decide on 2;]
	decide on choice in row 50 of Table of Settings.

This is the popup buttons toggle rule:
	if PopupButtons < 2:
		increase choice in row 51 of Table of Settings by 1;
	otherwise:
		now choice in row 51 of Table of Settings is 0.

To decide which number is PopupButtons:
	decide on 1.
	[decide on choice in row 51 of Table of Settings.]

This is the focus window height toggle rule:
	if focusWindowHeight < 39:
		increase choice in row 52 of Table of Settings by 2;
	otherwise:
		now choice in row 52 of Table of Settings is 20.

To decide which number is focusWindowHeight:
	decide on choice in row 52 of Table of Settings.

To decide which number is announcements seen:
	decide on choice in row 53 of Table of Settings.

To decide which number is combat-visor-hidden:
	decide on choice in row 54 of Table of Settings.

This is the combat visor hidden toggle rule:
	if combat-visor-hidden is 0:
		increase choice in row 54 of Table of Settings by 1;
		follow the hide combat visor rule;
	otherwise:
		now choice in row 54 of Table of Settings is 0.

To decide which number is map-figures:
	if the player is not the donator, decide on 0;
	decide on choice in row 55 of Table of Settings.

This is the map-figures toggle rule:
	if map-figures is 0:
		increase choice in row 55 of Table of Settings by 1;
	otherwise:
		now choice in row 55 of Table of Settings is 0.

To decide which number is maximumMenuSize:
	decide on choice in row 56 of Table of Settings.

This is the maximumMenuSize toggle rule:
	if maximumMenuSize < 40:
		increase choice in row 56 of Table of Settings by 1;
	otherwise:
		now choice in row 56 of Table of Settings is 4;
		if current menu selection > 3, now current menu scroll is current menu selection - 3;
	let CM be the number of filled rows in the current menu - current menu scroll; [current number of rows shown]
	if CM < maximumMenuSize, now current menu scroll is the number of filled rows in the current menu - maximumMenuSize; [autoscroll back up so that we're showing as many rows as possible]
	if current menu scroll < 1, now current menu scroll is 1.

To decide which number is areYouSure:
	decide on choice in row 57 of Table of Settings.

This is the areYouSure toggle rule:
	if areYouSure is 0:
		increase choice in row 57 of Table of Settings by 1;
	otherwise:
		now choice in row 57 of Table of Settings is 0.

To decide which number is combatSpeed: [the higher this is, the slower combat goes]
	decide on choice in row 58 of Table of Settings.

This is the combat speed toggle rule:
	if combatSpeed < 3:
		increase choice in row 58 of Table of Settings by 1;
	otherwise:
		now choice in row 58 of Table of Settings is 1.

To decide which number is simulatedInternet:
	decide on choice in row 59 of Table of Settings.

This is the simulated internet toggle rule:
	if simulatedInternet is 0:
		increase choice in row 59 of Table of Settings by 1;
	otherwise:
		now choice in row 59 of Table of Settings is 0.

To decide which number is extreme images visible:
	decide on choice in row 60 of Table of Settings.

This is the extreme images visible toggle rule:
	if extreme images visible is 0:
		now the choice in row 2 of the Table of Settings is 1;
		now the choice in row 60 of Table of Settings is 1;
	otherwise:
		now choice in row 60 of Table of Settings is 0.

To decide which number is visibilityVisible:
	decide on choice in row 61 of Table of Settings.

To decide which number is cursesVisible:
	decide on choice in row 62 of Table of Settings.

To decide which number is blessingsVisible:
	decide on choice in row 63 of Table of Settings.

To decide which number is wetnessVisible:
	decide on choice in row 64 of Table of Settings.

To decide which number is miscellaneousVisible:
	decide on choice in row 65 of Table of Settings.

Part - Settings

SettingsSetting is an action applying to nothing.
Check SettingsSetting:
	if the player is not virtual, say "You need to start the virtual reality machine before you can access its settings!" instead.
Carry Out SettingsSetting:
	kill all animations;
	repeat with W running through g-window:
		if W is g-present and W is not the main window and W is not status window, close W;
	clear the screen;
	retrieve settings.
Report SettingsSetting:
	now previousGUILayout is -1;
	resolve graphics windows mayhem;
	fix window overhang;
	refresh windows.
Understand "preferences", "prefs", "help", "hint", "hints", "about", "info", "settings", "menu", "options" as SettingsSetting.

Part - Save Game Counter

[The save game counter is a number that varies.
To decide which number is max game save counter: decide on 6 - game difficulty.
To decide which number is remaining game saves: decide on (max game save counter * (4 - the extra lives of the player)) - save game counter.
The check game save counter rules are a rulebook. The check game save counter rules have default success.
Check game save counter:
	if (remaining game saves <= 0) and (the player is not in FinalBoss01) and save game limit is 1:
		say "You don't have a permission to save the game. Nintendolls, with love.";
		rule fails.
The increase game save counter rules are a rulebook. The increase game save counter rules have default success.
Increase game save counter:
	if save game limit is 1 and (the player is not in Capsule) and (the player is not in FinalBoss01) and debugmode is 0:
		increase save game counter by 1;
		say "You now have [remaining game saves] saves remaining.".]

[Include (-
[ SAVE_THE_GAME_R res fref;
	if (actor ~= player) rfalse;
	if ( FollowRulebook( (+ check game save counter +) ) && RulebookFailed()) jump SFailed;
	fref = glk_fileref_create_by_prompt($01, $01, 0);
	if (fref == 0) jump SFailed;
	gg_savestr = glk_stream_open_file(fref, $01, GG_SAVESTR_ROCK);
	glk_fileref_destroy(fref);
	if (gg_savestr == 0) jump SFailed;
	@save gg_savestr res;
	if (res == -1) {
		GGRecoverObjects();
		glk_stream_close(gg_savestr, 0);
		gg_savestr = 0;
		return GL__M(##Restore, 2);
	}
	glk_stream_close(gg_savestr, 0);
	gg_savestr = 0;
	if (res == 0) {
		FollowRulebook( (+ increase game save counter +) );
		return GL__M(##Save, 2);
	}
	.SFailed;
	GL__M(##Save, 1);
];
-) instead of "Save The Game Rule" in "Glulx.i6t".]

Game Settings ends here.
