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
quick start is a number that varies. quick start is 0.


[!<fileOfPreferences:File>*

Contains all the settings that are just toggleable and not to do with perk points.

*!]
The File of Preferences (owned by another project) is called "prefs". 

[!<tableOfSettings:Integer>*

Each row holds one setting.

*!]
Table of Settings
choice
1000 [Text delay]
1 [Images Visible]
0 [Image Delay]
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
1 [Half Side Images]
0 [Cheatercheck part 1]
3 [Pubic Hair Images Visible]
1 [New status line]
1 [Newbie tips]
0 [Character Larger]
1 [Character Stats Text]
0 [Character Stats]
2 [Keriax Mirror]
1 [Shortcuts]
0 [Ultra Undo]
3 [Inline Hyperlinks]
1 [Inventory Hyperlinks]
1 [Image Cutscenes]
0 [April Fools]
2 [Auto Take]
1 [Game Difficulty]
1 [Transformation Cutscenes]
1 [Loading Screens]
1 [Trap Warning]
0 [Save Game Limit]

[!<DecideWhichNumberIsTextDelay>+

How long until the 'press enter to continue' happens automatically. The higher the longer.

+!]
To decide which number is text delay:
	decide on choice in row 1 of the Table of Settings.

[!<DecideWhichNumberIsImagesVisible>+

Are any images *except the map* displayed?

+!]
To decide which number is images visible:
	decide on choice in row 2 of the Table of Settings.

[!<DecideWhichNumberIsImageDelay>+

Legacy variable. Kept here because otherwise all the others would be pushed to incorrect locations.

+!]	
To decide which number is image delay:
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
	decide on choice in row 15 of the Table of Settings.

[!<DecideWhichNumberIsHalfSideImages>+

This is used for varying the size of the character window images, especially in the porn version.

+!]
To decide which number is half side images:
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

[!<DecideWhichNumberIsCharacterLarger>+

Is the character window or the map window the larger window (spawned first)?

+!]
To decide which number is character larger:
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
To decide which number is ultra undo:
	decide on choice in row 26 of the Table of Settings.

[!<DecideWhichNumberIsInlineHyperlinks>+

How complex are the hyperlinks?

+!]
To decide which number is inline hyperlinks:
	if disambiguation-busy is true, decide on 0; [This stops hyperlinks being made during disambiguation.]
	decide on choice in row 27 of the Table of Settings.

[!<DecideWhichNumberIsInventoryHyperlinks>+

Are there hyperlinks in the various inventory screens?

+!]
To decide which number is inventory hyperlinks:
	if disambiguation-busy is true, decide on 0; [This stops hyperlinks being made during disambiguation.]
	decide on choice in row 28 of the Table of Settings.

[!<DecideWhichNumberIsImageCutscenes>+

Do images sometimes appear in the main window triggered by certain events?

+!]
To decide which number is image cutscenes:
	decide on choice in row 29 of the Table of Settings.

[!<DecideWhichNumberIsAprilFools>+

Are all the april fools things enabled?

+!]
To decide which number is april fools:
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

[!<DecideWhichNumberIsSaveGameLimit>+

Is there a limited number of times that the game can be saved?

+!]	
To decide which number is save game limit:
	decide on choice in row 36 of the Table of Settings.


[!<tableOfGameSettings:Table>*

REQUIRES COMMENTING

*!]
Table of Game Settings
title	subtable	description	toggle
"Restore a Save File (to guarantee windows are the right size or if this crashes, try Quick Start followed by 'restore')"	--	--	load game rule
"[if earnings is starting-earnings]Normal Start (choose all your options, read prologue)[otherwise]Confirm Settings[end if] (shortcut: Q)"	--	--	quit rule
"Quick Start (use same player choices as last time, skip prologue)"	--	--	quick start rule
"Tutorial (learn how to play the game)"	--	--	tutorial start rule
"Random Start (randomise everything, skip prologue)"	--	--	random start rule
"Game Difficulty: [if game difficulty is 0]EASIEST[otherwise if game difficulty is 1]EASY[otherwise if game difficulty is 2]NORMAL[otherwise if game difficulty is 3]HARD[otherwise if game difficulty is 4]HARDER[otherwise]GET FUCKED[end if] (+[game difficulty * 10] points to your score at the end of the game)"	--	--	game difficulty rule
"Automatic 'press enter to continue' (choose 'instant' when using Gargoyle to avoid freezes): [if text delay is 999]INSTANT[otherwise if text delay is 4]SLOWEST[otherwise if text delay is 3]SLOW[otherwise if text delay is 2]FAST[otherwise if text delay is 1]SUPERFAST[otherwise]NEVER[end if]"	--	--	text speed rule
"IMAGE AND LAYOUT SETTINGS"	Table of Image Settings	--	--
"OPTIONAL TEXT SETTINGS"	Table of Optional Text Settings	--	--
"AUTOMATIC ACTIONS SETTINGS"	Table of Automatic Actions Settings	--	--
"File Based Undo (guaranteed to make undo work properly, but can slow down game; essentially creates a save file every turn. recommended if you sometimes experience crashes because you can just restore with the latest undo file): [if ultra undo is 1]ON[otherwise]OFF[end if]"	--	--	ultra undo toggle rule



[!<TheQuickLoadRule>+

REQUIRES COMMENTING

+!]
This is the quick load rule:
	if earnings is starting-earnings:
		now quick start is 3;
		follow quit rule.

[!<TheQuickStartRule>+

REQUIRES COMMENTING

+!]
This is the quick start rule:
	if earnings is starting-earnings:
		now quick start is 2;
		follow quit rule.

[!<TheRandomStartRule>+

REQUIRES COMMENTING

+!]
This is the random start rule:
	if earnings is starting-earnings:
		now quick start is 1;
		follow quit rule.

[!<TheLoadGameRule>+

REQUIRES COMMENTING

+!]
This is the load game rule:
	clear the screen;
	follow restore the game rule.

[!<tableOfCustomLibraryMessages:Table>*

This is a weird work-around way in Inform to be able to run a function after the game has finished restoring a save file. We want to refresh the UI and so we do that via a say command.

*!]
Table of custom library messages (continued)
	library-action	library-message-id	library-message-text
	restoring the game action	2	"[UIrefresh]"

[!<SayUIRefresh>+

Refresh the UI.

+!]
To say UIrefresh:
	display entire map;
	if side images > 0 and the player is virtual, display stuff;
	fill hyperlink window;
	try looking.

[!<TheTextSpeedRule>+

REQUIRES COMMENTING

+!]
This is the text speed rule:
	if text delay <= 1:
		now the choice in row 1 of the Table of Settings is 1000;
	otherwise if text delay is 999:
		now the choice in row 1 of the Table of Settings is 4;
	otherwise:
		decrease the choice in row 1 of the Table of Settings by 1.

[!<TheGameDifficultyRule>+

Cycles the game difficulty between 0 and 5, each successive number representing a higher difficulty. Note that this refers to row 32 of the Table of Settings, not the Table of Player Options.

+!]
This is the game difficulty rule:
	if game difficulty < 5:
		increase the choice in row 32 of the Table of Settings by 1;
	otherwise:
		now the choice in row 32 of the Table of Settings is 0.	


[!<TheUltraUndoToggleRule>+

REQUIRES COMMENTING

+!]
This is the ultra undo toggle rule:
	if choice in row 26 of Table of Settings is 0:
		now choice in row 26 of Table of Settings is 1;
		if earnings is not starting-earnings, compute undo weirdness;
	otherwise:
		now choice in row 26 of Table of Settings is 0;
		if earnings is not starting-earnings, reverse undo weirdness.	

[!<TheCrashDebugRule>+

REQUIRES COMMENTING

+!]
This is the crash debug rule:
	if crashdebug is 0:
		now crashdebug is 1;
	otherwise:
		now crashdebug is 0.


Part - Optional Text Settings

[!<tableOfOptionalTextSettings:Table>*

REQUIRES COMMENTING

*!]
Table of Optional Text Settings
title	subtable	description	toggle
"Previous Menu (Shortcut: Q)"	--	--	quit rule
"Use compact status bar (for low resolution monitors): [if new status line is 1]ON[otherwise]OFF[end if]"	--	--	new status toggle rule
"Enable tips for newbies: [if newbie tips is 1]ON[otherwise]OFF[end if]"	--	--	newbie tips toggle rule
"Display Text Shortcuts: [if shortcuts is 1]ON[otherwise]OFF[end if]"	--	--	shortcuts toggle rule
"Display Hyperlink Options: [if inline hyperlinks is 3]SMART (but slow)[otherwise if inline hyperlinks is 2]IN-LINE[otherwise if inline hyperlinks is 1]BASIC[otherwise]OFF[end if]"	--	--	inline hyperlinks toggle rule
"Display Hyperlinks In Inventory (can cause inventory command to lag): [if inventory hyperlinks is 2]ON[otherwise if inventory hyperlinks is 1]INVENTORY SUBSECTIONS ONLY (e.g. 'drinks')[otherwise]OFF[end if]"	--	--	inventory hyperlinks toggle rule


[!<TheNewStatusToggleRule>+

REQUIRES COMMENTING

+!]
This is the new status toggle rule:
	if choice in row 19 of Table of Settings is 0, now choice in row 19 of Table of Settings is 1;
	otherwise now choice in row 19 of Table of Settings is 0.

[!<TheNewbieTipsToggleRule>+

REQUIRES COMMENTING

+!]
This is the newbie tips toggle rule:
	if choice in row 20 of Table of Settings is 0, now choice in row 20 of Table of Settings is 1;
	otherwise now choice in row 20 of Table of Settings is 0.


[!<TheShortcutsToggleRule>+

REQUIRES COMMENTING

+!]
This is the shortcuts toggle rule:
	if choice in row 25 of Table of Settings is 0, now choice in row 25 of Table of Settings is 1;
	otherwise now choice in row 25 of Table of Settings is 0.


[!<TheInlineHyperlinksToggleRule>+

REQUIRES COMMENTING

+!]
This is the inline hyperlinks toggle rule:
	if choice in row 27 of Table of Settings < 3, increase choice in row 27 of Table of Settings by 1;
	otherwise now choice in row 27 of Table of Settings is 0.

[!<TheInventoryHyperlinksToggleRule>+

REQUIRES COMMENTING

+!]
This is the inventory hyperlinks toggle rule:
	if choice in row 28 of Table of Settings is 0, increase choice in row 28 of Table of Settings by 1;
	otherwise now choice in row 28 of Table of Settings is 0.


Part - Automatic Actions


[!<tableOfAutomaticActionsSettings:Table>*

REQUIRES COMMENTING

*!]
Table of Automatic Actions Settings
title	subtable	description	toggle
"Previous Menu (Shortcut: Q)"	--	--	quit rule
"Automatically search containers before opening them: [if autosearch is 1]ON[otherwise]OFF[end if]"	--	--	autosearch toggle rule
"Automatically attempt standing after tripping (not including combat): [if autostand is 1]ON[otherwise]OFF[end if]"	--	--	autostand toggle rule
"Automatically pick up items: [if autotake is 2]ON[otherwise if autotake is 1]ONLY NON-EDIBLES[otherwise]OFF[end if]"	--	--	autotake toggle rule
"Warn if entering trapped room: [if trap warning is 1]ON[otherwise]OFF[end if]"	--	--	trap warning toggle rule

[!<TheAutosearchToggleRule>+

REQUIRES COMMENTING

+!]
This is the autosearch toggle rule:
	if autosearch is 0, now choice in row 12 of the Table of Settings is 1;
	otherwise now choice in row 12 of the Table of Settings is 0.

[!<TheAutostandToggleRule>+

REQUIRES COMMENTING

+!]
This is the autostand toggle rule:
	if autostand is 0, now choice in row 13 of the Table of Settings is 1;
	otherwise now choice in row 13 of the Table of Settings is 0.

[!<TheAutotakeToggleRule>+

REQUIRES COMMENTING

+!]
This is the autotake toggle rule:
	if autotake < 2, increase choice in row 31 of the Table of Settings by 1;
	otherwise now choice in row 31 of the Table of Settings is 0.


Part - Image Toggle Rules


[!<TheImagesVisibleToggleRule>+

REQUIRES COMMENTING

+!]
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
		now the choice in row 2 of the Table of Settings is 0.

[!<TheSideImagesToggleRule>+

REQUIRES COMMENTING

+!]
This is the side images toggle rule:
	now drawn-character-width is 0;
	now drawn-character-height is 0; [Reset the preconfigure dimensions of the window]
	if side images is 0 and the player is virtual, initialise display stuff;
	increase choice in row 14 of the Table of Settings by 1;
	if choice in row 14 of the Table of Settings > 1, now choice in row 14 of the Table of Settings is 0.

[!<TheMapImagesToggleRule>+

REQUIRES COMMENTING

+!]
This is the map images toggle rule:
	if map images is 0:
		now choice in row 15 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
		if the player is in the dungeon or the player is in the woods or the player is in the hotel or the player is in the mansion, initialise map stuff;
	otherwise:
		terminate map stuff;
		now choice in row 15 of the Table of Settings is 0.

[!<TheHalfSideImagesToggleRule>+

REQUIRES COMMENTING

+!]
This is the half side images toggle rule:
	if half side images is 4:
		now choice in row 16 of the Table of Settings is 0;
	otherwise:
		increase choice in row 16 of the Table of Settings by 1.

[!<TheFaceImagesVisibleToggleRule>+

REQUIRES COMMENTING

+!]
This is the face images visible toggle rule:
	if face images visible is 0:
		now choice in row 4 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 4 of the Table of Settings is 0.

[!<TheBreastImagesVisibleToggleRule>+

REQUIRES COMMENTING

+!]
This is the breast images visible toggle rule:
	if breast images visible is 0:
		now choice in row 5 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 5 of the Table of Settings is 0.

[!<TheBellyImagesVisibleToggleRule>+

REQUIRES COMMENTING

+!]
This is the belly images visible toggle rule:
	if belly images visible is 0:
		now choice in row 6 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 6 of the Table of Settings is 0.

[!<TheHipImagesVisibleToggleRule>+

REQUIRES COMMENTING

+!]
This is the hip images visible toggle rule:
	if hip images visible < 2:
		increase choice in row 7 of the Table of Settings by 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 10 of the Table of Settings is 0;
		now choice in row 7 of the Table of Settings is 0.

[!<TheStockingsImagesVisibleToggleRule>+

REQUIRES COMMENTING

+!]
This is the stockings images visible toggle rule:
	if stockings images visible is 0:
		now choice in row 8 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 8 of the Table of Settings is 0.

[!<TheHeelsImagesVisibletoggleRule>+

REQUIRES COMMENTING

+!]
This is the heels images visible toggle rule:
	if heels images visible is 0:
		now choice in row 9 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 9 of the Table of Settings is 0.

[!<TheOrificeImagesVisibleToggleRule>+

REQUIRES COMMENTING

+!]
This is the orifice images visible toggle rule:
	if orifice images visible is 0:
		now choice in row 10 of the Table of Settings is 1;
		now choice in row 7 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 10 of the Table of Settings is 0.

[!<TheFetishImagesVisiibleToggleRule>+

REQUIRES COMMENTING

+!]
This is the fetish images visible toggle rule:
	if fetish images visible is 0:
		now choice in row 11 of the Table of Settings is 1;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		now choice in row 11 of the Table of Settings is 0.

[!<ThePubicHairImagesVisibleToggleRule>+

REQUIRES COMMENTING

+!]
This is the pubic hair images visible toggle rule:
	if pubic hair images visible is 0:
		now choice in row 18 of the Table of Settings is 3;
		now the choice in row 2 of the Table of Settings is 1;
	otherwise:
		decrease choice in row 18 of the Table of Settings by 1.


[!<TheCharacterLargerToggleRule>+

REQUIRES COMMENTING

+!]
This is the character larger toggle rule:
	if choice in row 21 of Table of Settings is 0, now choice in row 21 of Table of Settings is 1;
	otherwise now choice in row 21 of Table of Settings is 0.

[!<TheCharacterStatsTextToggleRule>+

REQUIRES COMMENTING

+!]
This is the character stats text toggle rule:
	if choice in row 22 of Table of Settings is 0, now choice in row 22 of Table of Settings is 1;
	otherwise now choice in row 22 of Table of Settings is 0.

[!<TheCharacterStatsToggleRule>+

REQUIRES COMMENTING

+!]
This is the character stats toggle rule:
	if choice in row 23 of Table of Settings is 0, now choice in row 23 of Table of Settings is 1;
	otherwise now choice in row 23 of Table of Settings is 0.

[!<TheKeriaxMirrorToggleRule>+

REQUIRES COMMENTING

+!]
This is the keriax mirror toggle rule:
	if choice in row 24 of Table of Settings > 0, decrease choice in row 24 of Table of Settings by 1;
	otherwise now choice in row 24 of Table of Settings is 2.


[!<TheImageCutscenesToggleRule>+

REQUIRES COMMENTING

+!]
This is the image cutscenes toggle rule:
	if choice in row 29 of Table of Settings < 2, increase choice in row 29 of Table of Settings by 1;
	otherwise now choice in row 29 of Table of Settings is 0.

[!<TheTransformationCutscenesToggleRule>+

REQUIRES COMMENTING

+!]
This is the transformation cutscenes toggle rule:
	if choice in row 33 of Table of Settings is 0, increase choice in row 33 of Table of Settings by 1;
	otherwise now choice in row 33 of Table of Settings is 0.

[!<TheLoadingCutscenesToggleRule>+

REQUIRES COMMENTING

+!]
This is the loading scenes toggle rule:
	if choice in row 34 of Table of Settings is 0, increase choice in row 34 of Table of Settings by 1;
	otherwise now choice in row 34 of Table of Settings is 0.

[!<TheTrapWarningToggleRule>+

REQUIRES COMMENTING

+!]
This is the trap warning toggle rule:
	if choice in row 35 of Table of Settings is 0, increase choice in row 35 of Table of Settings by 1;
	otherwise now choice in row 35 of Table of Settings is 0.

[!<TheSaveGameToggleRule>+

REQUIRES COMMENTING

+!]
This is the save game toggle rule:
	if choice in row 36 of Table of Settings is 0, increase choice in row 36 of Table of Settings by 1;
	otherwise now choice in row 36 of Table of Settings is 0.


Part - Save Game Counter

The save game counter is a number that varies. 
To decide which number is max game save counter: decide on 6 - game difficulty.
To decide which number is remaining game saves: decide on (max game save counter * (4 - the extra lives of the player)) - save game counter.
The check game save counter rules are a rulebook. The check game save counter rules have default success.
Check game save counter: 
	if (remaining game saves <= 0) and (the player is not in Hotel36) and save game limit is 1:
		say "You dont have a permission to save the game. Nintendodolls, with love.";
		rule fails.
The increase game save counter rules are a rulebook. The increase game save counter rules have default success.
Increase game save counter: if (the player is not in Capsule) and (the player is not in Hotel36) and debugmode is 0, increase save game counter by 1; say "You now have [remaining game saves] saves remaining.".

Include (-
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
-) instead of "Save The Game Rule" in "Glulx.i6t".

Game Settings ends here.

