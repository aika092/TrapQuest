Engine Initialisation by Miscellaneous Backend begins here.

[!<TheDoNothingRule>+

Does nothing.

+!]
This is the do nothing rule:
	rule succeeds.


The maximum score is 150.

[!<diaperQuestFixRules:Rulebook>*

This is run at the start of the game if DQ is enabled.  It allows people to create rules for how the starting environment is 'fixed' for DQ.

*!]
The diaper quest fix rules is a rulebook.

[!<WhenPlayBegins>+

This is the first procedure the game runs when the game is opened.  We initialise variables and set stuff up, then start throwing menus at the player.

+!]
When play begins:
	initialise variables;
	clear the screen;
	retrieve settings;
	if quick start < 3:
		say disclaimer;
		retrieve gender;
		retrieve name;
		configure gender;
		if tutorial is 0:
			if quick start is 1:
				follow the secret randomise choices rule;
				follow the randomise bonuses rule;
				if pregnancy fetish is 1, now choice in row 20 of the Table of Player Options is a random number between 0 and 2;
			otherwise if quick start is 0:
				retrieve fetish options;
				retrieve pregnancy options;
				retrieve slow pregnancy options;
				retrieve diaper focus options;
				retrieve diaper options;
				retrieve toilet allowance options;
				retrieve panty messing options;
				retrieve benefit options;
				retrieve TG options;
		clear the screen;
		fix starting stats;
		if diaper quest is 1, follow the diaper quest fix rules;
		Scramble Bottles;
		Set Up Dispensers;
		Set Up Drinks;
		Scramble Items;
		now a random sack of holding is worn by the player;
		Set up alchemy table; [We only do this once.]
		now the player is in Capsule;
		if quick start > 0:
			try pushing the big red button;
			clear the screen;
		otherwise if tutorial is 0:
			clear the screen;
			Prologue;
		otherwise:
			clear the screen;
		unless quick start is 1 or tutorial is 1, now choice in row 31 of Table of Player Options is cheater-validation;
		write File of Player Options from the Table of Player Options;
		[if side images > 0, initialise display stuff.]
	otherwise:
		now the player is in Loading;
	let var1 be the class of the player. [For some currently unknown reason, if we don't check the class of the player once at the start, the TitleBimbo function fails on turn 1 of the game.]

[!<ToInitialiseVariables>+

Some variables need giving certain values right from the start.

+!]
To initialise variables:
	[now debugmode is 2;]
	now earnings is starting-earnings;
	now description in row 1 of the Table of Basic Help Options is "[bold type][story title][roman type][paragraph break][story description]";
	now title in row 2 of the Table of Basic Help Options is "Instructions for Playing Inform Games In General";
	if File of Preferences exists, read File of Preferences into the Table of Settings;
	otherwise now tutorial is 1; [Triggers us to check for tutorial.]
	if File of Male Character exists, read File of Male Character into the Table of Custom Male Name;
	if File of Female Character exists, read File of Female Character into the Table of Custom Female Name;
	[These should each only happen once with an old settings file.]
	let new-seed be 0;
	if there is a choice in row 17 of the Table of Settings:
		if choice in row 17 of Table of Settings is 0, now new-seed is 1;
	otherwise:
		now new-seed is 1;
	if new-seed is 1:
		now choice in row 17 of Table of Settings is a random number between 1 and 1000; [This should only happen once and is used to validate against cheaters.]
	check donators status;
	if File of Player Options exists, read File of Player Options into the Table of Player Options;
	fill in table blanks;
	now random slow pregnancy is a random number between 0 and 3;

To fill in table blanks:
	unless there is a choice in row 18 of the Table of Settings, now choice in row 18 of Table of Settings is 2;
	unless there is a choice in row 19 of the Table of Settings, now choice in row 19 of Table of Settings is 1;
	unless there is a choice in row 20 of the Table of Settings, now choice in row 20 of Table of Settings is 1; 
	unless there is a choice in row 21 of the Table of Settings, now choice in row 21 of Table of Settings is 0; 
	unless there is a choice in row 22 of the Table of Settings, now choice in row 22 of Table of Settings is 1; 
	unless there is a choice in row 23 of the Table of Settings, now choice in row 23 of Table of Settings is 1; 
	unless there is a choice in row 24 of the Table of Settings, now choice in row 24 of Table of Settings is 2; 
	unless there is a choice in row 25 of the Table of Settings, now choice in row 25 of Table of Settings is 1; 
	unless there is a choice in row 26 of the Table of Settings, now choice in row 26 of Table of Settings is 0; 
	unless there is a choice in row 27 of the Table of Settings, now choice in row 27 of Table of Settings is 3;
	unless there is a choice in row 28 of the Table of Settings, now choice in row 28 of Table of Settings is 1; 
	unless there is a choice in row 29 of the Table of Settings, now choice in row 29 of Table of Settings is 1; 
	unless there is a choice in row 30 of the Table of Settings, now choice in row 30 of Table of Settings is 0; 
	unless there is a choice in row 31 of the Table of Settings, now choice in row 31 of Table of Settings is 2; 
	unless there is a choice in row 32 of the Table of Settings, now choice in row 32 of Table of Settings is 1; 
	unless there is a choice in row 33 of the Table of Settings, now choice in row 33 of Table of Settings is 1; 
	unless there is a choice in row 34 of the Table of Settings, now choice in row 34 of Table of Settings is 1;
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
	unless there is a choice in row 51 of the Table of Player Options, now choice in row 51 of Table of Player Options is 1;
	unless there is a choice in row 52 of the Table of Player Options, now choice in row 52 of Table of Player Options is 0;
	unless there is a choice in row 53 of the Table of Player Options, now choice in row 53 of Table of Player Options is 0;
	unless there is a choice in row 54 of the Table of Player Options, now choice in row 54 of Table of Player Options is 0;
	unless there is a choice in row 55 of the Table of Player Options, now choice in row 55 of Table of Player Options is 0;
	unless there is a choice in row 56 of the Table of Player Options, now choice in row 56 of Table of Player Options is 0;
	unless there is a choice in row 57 of the Table of Player Options, now choice in row 57 of Table of Player Options is 0;
	unless there is a choice in row 58 of the Table of Player Options, now choice in row 58 of Table of Player Options is 0;
	unless there is a choice in row 59 of the Table of Player Options, now choice in row 59 of Table of Player Options is 0;
	unless there is a choice in row 60 of the Table of Player Options, now choice in row 60 of Table of Player Options is 0;
	unless there is a choice in row 61 of the Table of Player Options, now choice in row 61 of Table of Player Options is 0.

To correct table entries:
	if the player is not the donator:
		choose the row with a toggle of ultra undo toggle rule in the Table of Game Settings;
		blank out the whole row;
		now choice in row 26 of the Table of Settings is 0;
	if the player is not top donator or Name in row 1 of Table of Male Name Options is "Undefined Name 1":
		choose the row with a toggle of custom name rule in the Table of Male Name Options;
		blank out the whole row;
	if the player is not a top donator or Name in row 1 of Table of Female Name Options is "Undefined Name 1":
		choose the row with a toggle of custom name rule in the Table of Female Name Options;
		blank out the whole row;
	if the player is not the donator:
		choose the row with a toggle of roleplay fetish toggle rule in the Table of Benefit Options;
		blank out the whole row;
		now choice in row 47 of Table of Player Options is 0.

To retrieve settings:
	if tutorial is 1:
		now the current menu is the Table of Tutorial;
		carry out the displaying activity;
		clear the screen;
	if tutorial is 0:
		now the current menu is the Table of Game Settings;
		carry out the displaying activity;
		clear the screen;
	if ultra undo is 1, compute undo weirdness;
	write File of Preferences from the Table of Settings.

To say disclaimer:
	if diaper quest is 0, say "This game is a piece of erotic interactive fiction intended for the consumption by mature adults only.  The following are topics that you can be confident that this game will not contain: under-age characters (babies are born and quickly whisked away in brief pregnancy scenes), gore, scat play, extreme torture, sex with real animals (for example the game does not contain a bull, a real animal, but it does contain a minotaur).   The game contains offensive gendered slurs and stereotypes, and you may encounter some extremely adult and sometimes taboo topics, including but not limited to mild physical violence, implied lack of consent and sexual violence, blackmail, degradation, and sex with inhuman (fantasy) creatures.   These topics are presented in the context of a FICTIONAL UNIVERSE that does not reflect the author's views or the reality of modern day society.  In the same way that you would not watch the movie Saw and then consider it any more morally acceptable to torture or murder people, you should not, after playing this game, be under any impression that the acts encountered are any less morally despicable than you previously held.  If you believe acts such as any kind of assault including sexual assault to be morally acceptable or justifiable, then you should not play this game, or use the content of this game to further reinforce your belief structure, and should ideally seek professional help and guidance.  

	Similarly you should not understand the stereotypes portrayed and played on in this game to be an accurate reflection of people, or trends of people, in the real world.  In the real world, men, women and others who do not fit into the binary gender spectrum should be respected and treated equally, judged on their deeds and choices and not on the way they were born.  Acts based on sexist or similar philosophies are only acceptable when used for mutual enjoyment between consenting adults.  It is imperative that you do not play this game unless you are mature enough to be fully aware of this separation between fantasy and reality.  The legal age for you to purchase and view adult (XXX) material in your country is a reasonable guideline for when you may be approaching this age, but the game author personally recommends not engaging in and consuming such potentially objectionable material as is contained within this game until you are at least 21 years old.

	Images were obtained for this game through image sharing sites where it is a breach of the ToS to upload copyrighted material.  If, however, you do discover images in this game of which you are the copyright holder, please inform the author who will promptly remove them from the game in compliance with the DMCA.";
	otherwise say "This game is a piece of interactive fiction intended for the consumption by mature adults only.  In this game, the player can be humiliated by being forced to look and act like a woman and/or as an 'adult baby'.  Roleplay based on sexist or similar philosophies are only acceptable when used for mutual enjoyment between consenting adults.  It is imperative that you do not play this game unless you are mature enough to be fully aware of this separation between fantasy and reality.  The legal age for you to purchase and view adult (XXX) material in your country is a reasonable guideline for when you may be approaching this age, but the game author personally recommends not engaging in and consuming such potentially objectionable material as is contained within this game until you are at least 21 years old.";
	say "[bold type][line break]By pressing enter I acknowledge that I have read the above disclaimer and that I agree with its principles.  I am of a legal age to consume adult material.[roman type]";
	unless text delay is 999, wait 30000 * text delay ms before continuing;
	clear the screen.

To retrieve gender:
	if quick start is 1:
		now choice in row 1 of the Table of Player Options is a random number between 0 and 1;
	otherwise:
		now the current menu is the Table of Gender Options;
		if quick start is 0, now choice in row 1 of the Table of Player Options is -1;
		while choice in row 1 of the Table of Player Options is -1:
			carry out the displaying activity;
			clear the screen.

To retrieve name:
	if the player is male, now the current menu is the Table of Male Name Options;
	otherwise now the current menu is the Table of Female Name Options;
	if the player is male:
		choose the row with a toggle of pure background toggle rule in the Table of Background Options;
		blank out the whole row;
	if diaper quest is 1 or tutorial is 1:
		if the player is male, follow the terrence name rule;
		otherwise follow the kimberly name rule;
	otherwise if quick start > 0:
		unless choice in row 3 of the Table of Player Options is 0 and quick start is 2 and choice in row 2 of the Table of Player Options is not 100: [The player manually selected a name last time and wants to use it again]
			if the player is male, follow the male name rule;
			otherwise follow the female name rule;
	otherwise:
		now choice in row 2 of the Table of Player Options is 100;
		while the player-name is 100:
			now the choice in row 3 of the Table of Player Options is 0; [This means the player is selecting options and therefore a name manually again so we want to flag this for next time.]
			carry out the displaying activity;
			clear the screen.

To configure gender:
	if the player is male:
		now the soreness of vagina is 0;
		now the semen volume of vagina is 0;
		now the size of penis is 7;
		now the real size of penis is 7;
	otherwise:
		now the flesh volume of breasts is 3;
		now the real flesh volume of breasts is 3;
		now the thickness of hips is 2;
		now the real thickness of hips is 2;
		now the flesh volume of hips is 2;
		if diaper quest is 1:
			now the flesh volume of breasts is 6;
			now the real flesh volume of breasts is 6;
			now the thickness of hips is 5;
			now the real thickness of hips is 5;
			now the flesh volume of hips is 5;
		now the raw largeness of hair is 4;
		now the real largeness of hair is 4;	
		now choice in row 29 of the Table of Player Options is 0; [We set min penis size points to 0, since you shouldn't be able to put points in here if you are female.]
		now choice in row 10 of the Table of Player Options is 0; [Similarly TG fetish must be off.]
		choose the row with a toggle of TG fetish toggle rule in the Table of Fetish Options;
		blank out the whole row;
		choose the row with a toggle of TG fetish toggle rule in the Table of Diaper Fetish Options;
		blank out the whole row.

To retrieve fetish options:
	if diaper quest is 1, now the current menu is the Table of Diaper Fetish Options;
	otherwise now the current menu is the Table of Kink Options;
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
		clear the screen.

To retrieve diaper focus options:
	if diaper lover >= 1 and diaper quest is 0:
		now the current menu is the Table of Diaper Focus Options;
		carry out the displaying activity;
		clear the screen.

To retrieve diaper options:
	if diaper lover is 1 or diaper lover >= 3:
		now the current menu is the Table of Diaper Options;
		carry out the displaying activity;
		clear the screen.

To retrieve toilet allowance options:
	if diaper lover >= 1:
		now the current menu is the Table of Toilet Allowance Options;
		carry out the displaying activity;
		clear the screen.

To retrieve panty messing options:
	if diaper lover >= 4:
		now the current menu is the Table of Panty Messing Options;
		carry out the displaying activity;
		clear the screen.

To retrieve benefit options:
	now the current menu is the Table of Benefit Options;
		if diaper quest is 1, now the current menu is the Table of Diaper Quest Benefit Options;
		if points count < 0, follow the reset rule;
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
	if the player is female: [Flat chested girls fixed here]
		while max breast size < the largeness of breasts:
			decrease the flesh volume of breasts by 1;
			decrease the real flesh volume of breasts by 1;
			if the largeness of breasts <= 1, break. [failsafe]

Engine Initialisation ends here.

