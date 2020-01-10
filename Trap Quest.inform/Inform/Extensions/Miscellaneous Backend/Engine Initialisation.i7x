Engine Initialisation by Miscellaneous Backend begins here.

[!<TheDoNothingRule>+

Does nothing.

+!]
This is the do nothing rule:
	rule succeeds.


The maximum score is 150.

[!<diaperQuestFixRules:Rulebook>*

This is run at the start of the game if DQ is enabled. It allows people to create rules for how the starting environment is 'fixed' for DQ.

*!]
The diaper quest fix rules is a rulebook.

[!<WhenPlayBegins>+

This is the second procedure the game runs when the game is opened, the first one being the one that reads in the files and checks if there's a save file (this can be found in 'roguelike saving'). We start throwing menus at the player.

+!]
When play begins:
	clear the screen;
	let old-seed be new-seed;
	while old-seed is 1 and tutorial is 0:
		say "Your settings file was incompatible with this new version and had to be erased. Please note that the default settings are the [bold type]recommended[roman type] settings, so you should really try the game as-is before messing with them! Do you understand? ";
		if the player consents, now old-seed is 0;
		otherwise say "Please respond yes... ";
	correct table entries;
	retrieve settings;
	if disclaimer version < current-disclaimer-version:
		say disclaimer;
		while disclaimer version < current-disclaimer-version:
			say "[bold type]Have you read the disclaimer? [roman type]";
			if the player is consenting, now choice in row 43 of the Table of Settings is current-disclaimer-version;
			otherwise say "Please read the disclaimer before continuing.";
		clear the screen;
		write File of Preferences from the Table of Settings;
	compute announcements;
	retrieve gender;
	retrieve name;
	configure gender;
	if tutorial is 0:
		if quick start is 0:
			retrieve fetish options;
			retrieve pregnancy options;
			retrieve slow pregnancy options;
			retrieve diaper focus options;
			retrieve diaper options;
			retrieve toilet allowance options;
			retrieve slow random options; [At this point, the player can choose to have the rest randomised, which sets quick start to 1]
		if quick start is 1 or quick start is 2:
			follow the random mode rules;
			compute random bonuses;
		if quick start is 0:
			retrieve benefit options;
			retrieve TG options;
	clear the screen;
	fix starting stats;
	if diaper quest is 1, follow the diaper quest fix rules;
	Scramble Bottles;
	Set Up Dispensers;
	Set Up Drinks;
	Scramble Items;
	let SOH be a random sack of holding;
	now SOH is worn by the player;
	now SOH is identified;
	now SOH is sure;
	Set up alchemy table; [We only do this once.]
	[reset the undo counter]
	now choice in row 44 of the Table of Settings is 0;
	write File of Preferences from the Table of Settings;
	now the player is in Capsule;
	if quick start > 1: ['Quick Start' and 'Quick Random Start' skip the prologue]
		try pushing the big red button;
		clear the screen;
	otherwise if tutorial is 0:
		clear the screen;
		Prologue;
	otherwise:
		clear the screen;
	[unless new-seed is 0 and (quick start > 1 or tutorial is 1), now choice in row 31 of Table of Player Options is cheater-validation;] [Old cheater validation code that was somehow getting triggered when it shouldn't, so has been removed for now]
	write File of Player Options from the Table of Player Options;
	let var1 be the class of the player. [For some currently unknown reason, if we don't check the class of the player once at the start, the TitleBimbo function fails on turn 1 of the game.]

new-seed is a number that varies.

[!<ToInitialiseVariables>+

Some variables need giving certain values right from the start.

+!]
To initialise variables:
	[now debugmode is 2;]
	now earnings is starting-earnings;
	[now description in row 1 of the Table of Basic Help Options is "[bold type][story title][roman type][paragraph break][story description]";
	now title in row 2 of the Table of Basic Help Options is "Instructions for Playing Inform Games In General";][6M62TODO]
	if File of Preferences exists, read File of Preferences into the Table of Fake Settings;
	otherwise now tutorial is 1; [Triggers us to check for tutorial.]
	if File of Info exists, read File of Info into the Table of Info Options;
	if File of Player Options exists, read File of Player Options into the Table of Player Options;
	fill in table blanks;
	if File of Male Character exists, read File of Male Character into the Table of Custom Male Name;
	if File of Female Character exists, read File of Female Character into the Table of Custom Female Name;
	[These should each only happen once with an old settings file.]
	if there is a choice in row 17 of the Table of Settings:
		if choice in row 17 of Table of Settings is 0, now new-seed is 1;
	otherwise:
		now new-seed is 1;
	if new-seed is 1:
		now choice in row 17 of Table of Settings is a random number between 1 and 1000; [This should only happen once and is used to validate against cheaters.]
	check donators status;
	now random slow pregnancy is a random number between 0 and 3;
	now random slow birth is a random number between -1 and 3.

Table of Fake Settings
choice (number)
with 100 blank rows

To fill in table blanks:
	if there is a choice in row 46 of the Table of Fake Settings:
		read File of Preferences into the Table of Settings;
		unless there is a choice in row 47 of the Table of Settings, now choice in row 47 of Table of Settings is 1;
		unless there is a choice in row 48 of the Table of Settings, now choice in row 48 of Table of Settings is 12;
		unless there is a choice in row 49 of the Table of Settings, now choice in row 49 of Table of Settings is 1;
		unless there is a choice in row 50 of the Table of Settings, now choice in row 50 of Table of Settings is 0;
		unless there is a choice in row 51 of the Table of Settings, now choice in row 51 of Table of Settings is 1;
		unless there is a choice in row 52 of the Table of Settings, now choice in row 52 of Table of Settings is 30;
		unless there is a choice in row 53 of the Table of Settings, now choice in row 53 of Table of Settings is 0;
		unless there is a choice in row 54 of the Table of Settings, now choice in row 54 of Table of Settings is 0;
		unless there is a choice in row 55 of the Table of Settings, now choice in row 55 of Table of Settings is 1;
	[Allows old save files to load properly]
	unless there is a choice in row 32 of the Table of Player Options, now choice in row 32 of Table of Player Options is 0;
	unless there is a choice in row 33 of the Table of Player Options, now choice in row 33 of Table of Player Options is 0;
	unless there is a choice in row 34 of the Table of Player Options, now choice in row 34 of Table of Player Options is 0;
	unless there is a choice in row 35 of the Table of Player Options, now choice in row 35 of Table of Player Options is 0;
	unless there is a choice in row 36 of the Table of Player Options, now choice in row 36 of Table of Player Options is 0;
	unless there is a choice in row 37 of the Table of Player Options, now choice in row 37 of Table of Player Options is 0;
	unless there is a choice in row 38 of the Table of Player Options, now choice in row 38 of Table of Player Options is 0;
	unless there is a choice in row 39 of the Table of Player Options, now choice in row 39 of Table of Player Options is 0;
	unless there is a choice in row 40 of the Table of Player Options, now choice in row 40 of Table of Player Options is 0;
	unless there is a choice in row 41 of the Table of Player Options, now choice in row 41 of Table of Player Options is 0;
	unless there is a choice in row 42 of the Table of Player Options, now choice in row 42 of Table of Player Options is 0;
	unless there is a choice in row 43 of the Table of Player Options, now choice in row 43 of Table of Player Options is 0;
	unless there is a choice in row 44 of the Table of Player Options, now choice in row 44 of Table of Player Options is 1;
	unless there is a choice in row 45 of the Table of Player Options, now choice in row 45 of Table of Player Options is 0;
	unless there is a choice in row 46 of the Table of Player Options, now choice in row 46 of Table of Player Options is 0;
	unless there is a choice in row 47 of the Table of Player Options, now choice in row 47 of Table of Player Options is 0;
	unless there is a choice in row 48 of the Table of Player Options, now choice in row 48 of Table of Player Options is 0;
	unless there is a choice in row 49 of the Table of Player Options, now choice in row 49 of Table of Player Options is 0;
	unless there is a choice in row 50 of the Table of Player Options, now choice in row 50 of Table of Player Options is 0;
	unless there is a choice in row 51 of the Table of Player Options, now choice in row 51 of Table of Player Options is 0;
	unless there is a choice in row 52 of the Table of Player Options, now choice in row 52 of Table of Player Options is 0;
	unless there is a choice in row 53 of the Table of Player Options, now choice in row 53 of Table of Player Options is 0;
	unless there is a choice in row 54 of the Table of Player Options, now choice in row 54 of Table of Player Options is 0;
	unless there is a choice in row 55 of the Table of Player Options, now choice in row 55 of Table of Player Options is 0;
	unless there is a choice in row 56 of the Table of Player Options, now choice in row 56 of Table of Player Options is 0;
	unless there is a choice in row 57 of the Table of Player Options, now choice in row 57 of Table of Player Options is 0;
	unless there is a choice in row 58 of the Table of Player Options, now choice in row 58 of Table of Player Options is 0;
	unless there is a choice in row 59 of the Table of Player Options, now choice in row 59 of Table of Player Options is 0;
	unless there is a choice in row 60 of the Table of Player Options, now choice in row 60 of Table of Player Options is 0;
	unless there is a choice in row 61 of the Table of Player Options, now choice in row 61 of Table of Player Options is 0;
	unless there is a choice in row 62 of the Table of Player Options, now choice in row 62 of Table of Player Options is 0;
	unless there is a choice in row 63 of the Table of Player Options, now choice in row 63 of Table of Player Options is 0;
	unless there is a choice in row 64 of the Table of Player Options, now choice in row 64 of Table of Player Options is 0;
	unless there is a choice in row 65 of the Table of Player Options, now choice in row 65 of Table of Player Options is 0;
	unless there is a choice in row 66 of the Table of Player Options, now choice in row 66 of Table of Player Options is 0;
	unless there is a choice in row 67 of the Table of Player Options, now choice in row 67 of Table of Player Options is 0;
	unless there is a choice in row 68 of the Table of Player Options, now choice in row 68 of Table of Player Options is 1;
	unless there is a choice in row 69 of the Table of Player Options, now choice in row 69 of Table of Player Options is 0;
	unless there is a choice in row 70 of the Table of Player Options, now choice in row 70 of Table of Player Options is 0;
	unless there is a choice in row 71 of the Table of Player Options, now choice in row 71 of Table of Player Options is 0;
	unless there is a choice in row 72 of the Table of Player Options, now choice in row 72 of Table of Player Options is 0;
	unless there is a choice in row 73 of the Table of Player Options, now choice in row 73 of Table of Player Options is 0;
	unless there is a choice in row 74 of the Table of Player Options, now choice in row 74 of Table of Player Options is 0;
	unless there is a choice in row 75 of the Table of Player Options, now choice in row 75 of Table of Player Options is 0;
	unless there is a choice in row 76 of the Table of Player Options, now choice in row 76 of Table of Player Options is 0;
	unless there is a choice in row 77 of the Table of Player Options, now choice in row 77 of Table of Player Options is 1;
	unless there is a choice in row 78 of the Table of Player Options, now choice in row 78 of Table of Player Options is 0;
	unless there is a choice in row 79 of the Table of Player Options, now choice in row 79 of Table of Player Options is 0;
	unless there is a choice in row 80 of the Table of Player Options, now choice in row 80 of Table of Player Options is 1. [TODO change to 0]

To correct table entries:
	if the player is not the donator or Name in row 1 of Table of Custom Male Name is "Undefined Name 1":
		choose the row with a toggle of custom name rule in the Table of Male Name Options;
		blank out the whole row;
		choose the row with a toggle of custom name rule in the Table of Male Name Diaper Quest Options;
		blank out the whole row;
	if the player is not the donator or Name in row 1 of Table of Custom Female Name is "Undefined Name 1":
		choose the row with a toggle of custom name rule in the Table of Female Name Options;
		blank out the whole row;
		choose the row with a toggle of custom name rule in the Table of Female Name Diaper Quest Options;
		blank out the whole row;
	[if the player is not a top donator:
		choose the row with a subtable of Table of Festive Options in the Table of Kink Options;
		blank out the whole row;
		choose the row with a subtable of Table of Festive Options in the Table of Diaper Fetish Options;
		blank out the whole row;]
	if diaper quest is 0:
		choose the row with a toggle of easter content toggle rule in the Table of Festive Options;
		blank out the whole row;
	if the player is the donator:
		choose the row with a toggle of combat visor toggle rule in the Table of Benefit Options;
		if diaper quest is 1, choose the row with a toggle of combat visor toggle rule in the Table of Diaper Quest Benefit Options;
		blank out the whole row.

To retrieve settings:
	if tutorial is 1:
		now the current menu is the Table of Tutorial;
		carry out the displaying activity;
		clear the screen;
	if tutorial is 0:
		now the current menu is the Table of Game Settings;
		carry out the displaying activity;
		clear the screen;
	write File of Preferences from the Table of Settings.


To retrieve gender:
	now the current menu is the Table of Gender Options;
	if quick start < 3, now choice in row 1 of the Table of Player Options is -1; [We always ask the player what gender they want to be, even in quick random start (2)]
	while choice in row 1 of the Table of Player Options is -1:
		carry out the displaying activity;
		clear the screen;
	if choice in row 1 of the Table of Player Options is 1:
		now the player is female;
		now choice in row 34 of the Table of Player Options is 0; [Make sure trap fetish is disabled if the player is female]
	otherwise:
		now the player is male.

To retrieve name:
	if the player is gendered male, now the current menu is the Table of Male Name Options;
	otherwise now the current menu is the Table of Female Name Options;
	if diaper quest is 1:
		if the player is gendered male, now the current menu is the Table of Male Name Diaper Quest Options;
		otherwise now the current menu is the Table of Female Name Diaper Quest Options;
	if the player is male:
		choose the row with a toggle of pure background toggle rule in the Table of Background Options;
		blank out the whole row;
	if tutorial is 1:
		if the player is gendered male, follow the terrence name rule;
		otherwise follow the kimberly name rule;
	otherwise if quick start > 1:
		if diaper quest is 0:
			if choice in row 3 of the Table of Player Options is not 0 or choice in row 2 of the Table of Player Options is 100: [We skip the randomisation below if the player manually selected a name last time and wants to use it again]
				if the player is male, follow the male name rule;
				otherwise follow the female name rule;
	otherwise:
		now choice in row 2 of the Table of Player Options is 100;
		while the player-name is 100:
			now the choice in row 3 of the Table of Player Options is 0; [Flag that they did not choose a random name. This means next time, if they use quick start, we'll keep the same name rather than randomising it.]
			carry out the displaying activity;
			clear the screen.

To configure gender:
	if the player is male:
		now the soreness of vagina is 0;
		now the size of penis is 7;
		now the real size of penis is 7;
	otherwise:
		if diaper quest is 1, configure dq female proportions;
		now choice in row 29 of the Table of Player Options is 0; [We set min penis size points to 0, since you shouldn't be able to put points in here if you are female.]
		choose the row with a toggle of TG fetish toggle rule in the Table of Fetish Options;
		blank out the whole row;
		[choose the row with a toggle of TG fetish toggle rule in the Table of Diaper Fetish Options;
		blank out the whole row.]

To retrieve fetish options:
	if diaper quest is 1:
		now the current menu is the Table of Diaper Fetish Options;
	otherwise:
		now choice in row 49 of the Table of Player Options is 2; [set the slow pregnancy choice to the 0 point option]
		now choice in row 75 of the Table of Player Options is 0; [set the slow pregnancy choice to the 0 point option]
		now the current menu is the Table of Kink Options;
	carry out the displaying activity;
	clear the screen.

To retrieve pregnancy options:
	if pregnancy fetish is 1 and (the player is female or tg fetish >= 1):
		now the current menu is the Table of Pregnancy Options;
		carry out the displaying activity;
		clear the screen;
	otherwise:
		now the choice in row 20 of the Table of Player Options is 0.

To retrieve slow pregnancy options:
	if pregnancy fetish is 1 and (the player is female or tg fetish >= 1):
		now the current menu is the Table of Slow Pregnancy Options;
		carry out the displaying activity;
		clear the screen;
		now the current menu is the Table of Slow Birth Options;
		carry out the displaying activity;
		clear the screen.

To retrieve diaper focus options:
	if diaper lover >= 1 and diaper quest is 0:
		now the current menu is the Table of Diaper Focus Options;
		carry out the displaying activity;
		clear the screen.

To retrieve diaper options:
	if diaper lover >= 1 and choice in row 50 of the Table of Player Options > -2:
		now the current menu is the Table of Diaper Options;
		carry out the displaying activity;
		clear the screen.

To retrieve toilet allowance options:
	if diaper lover >= 1:
		now the current menu is the Table of Toilet Allowance Options;
		carry out the displaying activity;
		clear the screen.

To retrieve slow random options:
	now the current menu is the Table of Random Settings;
	carry out the displaying activity;
	clear the screen.

To retrieve benefit options:
	now the current menu is the Table of Benefit Options;
	if diaper quest is 1, now the current menu is the Table of Diaper Quest Benefit Options;
	if points count < 0, follow the reset rule;
	if tg fetish is 0:
		choose the row with a toggle of trap fetish toggle rule in the Table of Body Limit Options; [Make sure trap fetish can't be selected]
		blank out the whole row;
	carry out the displaying activity;
	clear the screen.

To retrieve TG options:
	if tg fetish >= 1 and the player is male: [This doesn't award points and refers to the player's penis size so it comes after the benefit options.]
		clear the screen;
		now the current menu is the Table of TG Options;
		carry out the displaying activity;
		clear the screen.

To fix starting stats:
	now the raw strength of the player is the starting strength of the player;
	now the raw dexterity of the player is the starting dexterity of the player;
	now the raw intelligence of the player is the starting intelligence of the player;
	now the blondeness of hair is natural blondeness * 3;
	now the brightness of hair is natural brightness * 3;
	now the redness of hair is natural redness * 3;
	now the thickness of hips is min hip size;
	now the real thickness of hips is min hip size;
	now the flesh volume of hips is min ass size;
	if the player is female:
		while the largeness of breasts < min breast size: [Starting body shape fixed here]
			increase the flesh volume of breasts by 1;
			now the real flesh volume of breasts is the flesh volume of breasts;
	now the raw largeness of hair is min ass size;
	now the real largeness of hair is the raw largeness of hair.

Engine Initialisation ends here.


