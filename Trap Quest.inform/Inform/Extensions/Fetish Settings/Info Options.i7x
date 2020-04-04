Info Options by Fetish Settings begins here.

Table of Info Options
name
"Stephanie" [Platonic Full Name]
"Steph" [Nickname]
"Steffi" [Sexy Name]
"Starburst" [Slutty Name]
"best friend" [Platonic Role]
"tramp" [Gross Mate]
"tramps" [Gross Mates]
"big black cock" [black cock]
"size queen" [white sub]
"Keith" [Nemesis Name]
"ex friend" [Nemesis Role]
"John" [Distant Name]
"coworker" [Distant Role]
"Ashley" [Fancied Name]
"roommate" [Fancied Role]
"feminine gender" [PlatonicGender]
"strapon" [PlatonicEquipment]
"masculine gender" [NemesisGender]
"penis" [NemesisEquipment]
"feminine gender" [FanciedGender]
"strapon" [FanciedEquipment]
"masculine gender" [DistantGender]
"penis" [DistantEquipment]

The File of Info (owned by another project) is called "customflav".

To decide which text is PlatonicName:
	decide on name in row 1 of the Table of Info Options.
To decide which text is PlatonicNickname:
	decide on name in row 2 of the Table of Info Options.
To decide which text is PlatonicSexyName:
	decide on name in row 3 of the Table of Info Options.
To decide which text is PlatonicSlutName:
	decide on name in row 4 of the Table of Info Options.
To decide which text is PlatonicRole:
	decide on name in row 5 of the Table of Info Options.
To decide which text is GrossMate:
	decide on name in row 6 of the Table of Info Options.
To decide which text is GrossMates:
	decide on name in row 7 of the Table of Info Options.
To decide which text is BlackCock:
	decide on name in row 8 of the Table of Info Options.
To decide which text is WhiteSub:
	decide on name in row 9 of the Table of Info Options.
To decide which text is NemesisName:
	decide on name in row 10 of the Table of Info Options.
To decide which text is NemesisRole:
	decide on name in row 11 of the Table of Info Options.
To decide which text is FanciedName:
	decide on name in row 12 of the Table of Info Options.
To decide which text is FanciedRole:
	decide on name in row 13 of the Table of Info Options.
To decide which text is DistantName:
	decide on name in row 14 of the Table of Info Options.
To decide which text is DistantRole:
	decide on name in row 15 of the Table of Info Options.
To decide which text is PlatonicGender:
	decide on name in row 16 of the Table of Info Options.
To decide which text is PlatonicEquipment:
	decide on name in row 17 of the Table of Info Options.
To decide which text is NemesisGender:
	decide on name in row 18 of the Table of Info Options.
To decide which text is NemesisEquipment:
	decide on name in row 19 of the Table of Info Options.
To decide which text is FanciedGender:
	decide on name in row 20 of the Table of Info Options.
To decide which text is FanciedEquipment:
	decide on name in row 21 of the Table of Info Options.
To decide which text is DistantGender:
	decide on name in row 22 of the Table of Info Options.
To decide which text is DistantEquipment:
	decide on name in row 23 of the Table of Info Options.

setting-info is a number that varies.
setting-male-names is a number that varies.
setting-female-names is a number that varies.
setting-instruction is a text that varies.

Rule for printing a parser error when the latest parser error is the I beg your pardon error and (setting-info > 0 or setting-male-names > 0 or setting-female-names > 0) (this is the do something useful with blank lines rule):
	change the text of the player's command to "default";
	follow the custom flavour choosing rule.

After reading a command when setting-info > 0 (this is the custom flavour choosing rule):
	say line break;
	let PCD be 0;
	if the player's command matches the text "default", now PCD is 1;
	increase setting-info by 1;
	if setting-info is 2:
		if PCD is 0, now name in row 5 of the Table of Info Options is the player's command in lower case;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "feminine gender";
		set numerical response 2 to "masculine gender";
		say "Choose a binary gender for this person. (the current entry is [PlatonicGender]): [line break]";[TODO; process multiple choice?!?!]
		compute multiple choice question;
		let CNR be the chosen numerical response;
		now name in row 16 of the Table of Info Options is the printed name of CNR;
		say "Enter a name for this person (the current entry is [PlatonicName]): ";
	otherwise if setting-info is 3:
		if PCD is 0, now name in row 1 of the Table of Info Options is the player's command in title case;
		say "Enter a shorter nickname for this person, or if there is no shorter version, enter the same name (the current entry is [PlatonicNickName]): ";
	otherwise if setting-info is 4:
		if PCD is 0, now name in row 2 of the Table of Info Options is the player's command in title case;
		say "Enter a sexy nickname for this person, or if you can't think of a sexy version, you can just re-enter the same name (the current entry is [PlatonicSexyName]): ";
	otherwise if setting-info is 5:
		if PCD is 0, now name in row 3 of the Table of Info Options is the player's command in title case;
		say "Enter a slutty / stripper / pornstar nickname for this person, or if you can't think of a pornstar version, you can just re-enter the same name (the current entry is [PlatonicSlutName]): ";
	otherwise if setting-info is 6:
		if PCD is 0, now name in row 4 of the Table of Info Options is the player's command in lower case;
		reset multiple choice questions;
		set numerical response 1 to "small strapon";
		set numerical response 2 to "small penis";
		set numerical response 3 to "strapon";
		set numerical response 4 to "penis";
		set numerical response 5 to "huge strapon";
		set numerical response 6 to "huge penis";
		say "Choose the kind of equipment would this person use in the bedroom (the current entry is [PlatonicEquipment]): [line break]";
		compute multiple choice question;
		let CNR be the chosen numerical response;
		now name in row 17 of the Table of Info Options is the printed name of CNR;
		say "Next, enter a type of person who you wouldn't get along with, for example maybe it's your 'bully' or 'ex-roommate' or 'upstairs neighbor' or 'rival' (the current entry is [NemesisRole]): ";
	otherwise if setting-info is 7:
		if PCD is 0, now name in row 11 of the Table of Info Options is the player's command in lower case;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "feminine gender";
		set numerical response 2 to "masculine gender";
		say "Choose a binary gender for this person. (the current entry is [NemesisGender]): [line break]";[TODO; process multiple choice?!?!]
		compute multiple choice question;
		let CNR be the chosen numerical response;
		now name in row 18 of the Table of Info Options is the printed name of CNR;
		say "Enter a name for this person (the current entry is [NemesisName]): [line break]";
	otherwise if setting-info is 8:
		if PCD is 0, now name in row 10 of the Table of Info Options is the player's command in lower case;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "small strapon";
		set numerical response 2 to "small penis";
		set numerical response 3 to "strapon";
		set numerical response 4 to "penis";
		set numerical response 5 to "huge strapon";
		set numerical response 6 to "huge penis";
		say "Choose the kind of equipment would this person use in the bedroom (the current entry is [NemesisEquipment]): [line break]";
		compute multiple choice question;
		let CNR be the chosen numerical response;
		now name in row 19 of the Table of Info Options is the printed name of CNR;
		say "Next, enter a type of person it wouldn't be weird to masturbate to, for example maybe it's your 'crush' or 'hot coworker' or 'yoga instructor' (the current entry is [FanciedRole]): ";
	otherwise if setting-info is 9:
		if PCD is 0, now name in row 13 of the Table of Info Options is the player's command in lower case;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "feminine gender";
		set numerical response 2 to "masculine gender";
		say "Choose a binary gender for this person. (the current entry is [FanciedGender]): [line break]";[TODO; process multiple choice?!?!]
		compute multiple choice question;
		let CNR be the chosen numerical response;
		now name in row 20 of the Table of Info Options is the printed name of CNR;
		say "Enter a name for this person (the current entry is [FanciedName]): ";
	otherwise if setting-info is 10:
		if PCD is 0, now name in row 12 of the Table of Info Options is the player's command in lower case;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "small strapon";
		set numerical response 2 to "small penis";
		set numerical response 3 to "strapon";
		set numerical response 4 to "penis";
		set numerical response 5 to "huge strapon";
		set numerical response 6 to "huge penis";
		say "Choose the kind of equipment would this person use in the bedroom (the current entry is [FanciedEquipment]): [line break]";
		compute multiple choice question;
		let CNR be the chosen numerical response;
		now name in row 21 of the Table of Info Options is the printed name of CNR;
		say "Next, enter a type of person you normally wouldn't know very well, for example maybe its your 'mailman' or 'quiet coworker' or 'old classmate' or 'bus driver' (the current entry is [DistantRole]): ";
	otherwise if setting-info is 11:
		if PCD is 0, now name in row 15 of the Table of Info Options is the player's command in lower case;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "feminine gender";
		set numerical response 2 to "masculine gender";
		say "Choose either a binary gender for this person. (the current entry is [DistantGender]): [line break]";[TODO; process multiple choice?!?!]
		compute multiple choice question;
		let CNR be the chosen numerical response;
		now name in row 22 of the Table of Info Options is the printed name of CNR;
		say "Enter a name for this person (the current entry is [DistantName]): ";
	otherwise if setting-info is 12:
		if PCD is 0, now name in row 14 of the Table of Info Options is the player's command in lower case;
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "small strapon";
		set numerical response 2 to "small penis";
		set numerical response 3 to "strapon";
		set numerical response 4 to "penis";
		set numerical response 5 to "huge strapon";
		set numerical response 6 to "huge penis";
		say "Choose the kind of equipment would this person use in the bedroom (the current entry is [DistantEquipment]): [line break]";
		compute multiple choice question;
		let CNR be the chosen numerical response;
		now name in row 23 of the Table of Info Options is the printed name of CNR;
		say "Next, enter a living thing that would be humiliating to have sex with (the current entry is [GrossMate]): ";
	otherwise if setting-info is 13:
		if PCD is 0, now name in row 6 of the Table of Info Options is the player's command in lower case;
		say "Now please enter the plural of that thing (the current entry is [GrossMates]): ";
	otherwise if setting-info is 14:
		if PCD is 0, now name in row 7 of the Table of Info Options is the player's command in lower case;
		if interracial fetish is 1:
			say "Now please enter your favourite lewd way to refer to a large black penis (the current entry is [BlackCock]): ";
		otherwise:
			now setting-info is 999; [Skips all further entry]
	otherwise if setting-info is 15:
		if PCD is 0, now name in row 8 of the Table of Info Options is the player's command in lower case;
		if interracial fetish is 1:
			say "Now please enter your favourite term for a white person who worships black cock (the current entry is [WhiteSub]): ";
	 if setting-info >= 16:
		if PCD is 0 and setting-info is 16, now name in row 9 of the Table of Info Options is the player's command in lower case;
		write the File of Info from the Table of Info Options;
		say "Thanks! Now get back to the game.";
		now setting-info is 0;
		try looking;
	change the text of the player's command to "finish setting".

This is the setup custom flavour rule:
	follow the quit rule;
	now setting-info is 1;
	now setting-instruction is "Enter a type of person who it would be weird for you to interact with sexually, for example maybe it's your 'old babysitter' or 'ex-teacher' or 'boss' or 'landlord' (the current entry is [PlatonicRole]): ";

After reading a command when setting-male-names > 0 (this is the custom male name choosing rule):
	say line break;
	let PCD be 0;
	if the player's command matches the text "default", now PCD is 1;
	increase setting-male-names by 1;
	if setting-male-names is 2:
		if PCD is 0, now name in row 1 of the Table of Custom Male Name is the player's command in title case;
		say "Enter a name for your (male) player at between 4 and 6 (out of 20) bimbo (the current entry is [name in row 2 of the Table of Custom Male Name]): ";
	otherwise if setting-male-names is 3:
		if PCD is 0, now name in row 2 of the Table of Custom Male Name is the player's command in title case;
		say "Enter a name for your (male) player at between 7 and 9 (out of 20) bimbo (the current entry is [name in row 3 of the Table of Custom Male Name]): ";
	otherwise if setting-male-names is 4:
		if PCD is 0, now name in row 3 of the Table of Custom Male Name is the player's command in title case;
		say "Enter a name for your (male) player at between 10 and 12 (out of 20) bimbo (the current entry is [name in row 4 of the Table of Custom Male Name]) [bold type]NB this will also be used if the player is transformed to a woman at low bimbo[roman type]: ";
	otherwise if setting-male-names is 5:
		if PCD is 0, now name in row 4 of the Table of Custom Male Name is the player's command in title case;
		say "Enter a name for your player at between 13 and 15 (out of 20) bimbo (the current entry is [name in row 5 of the Table of Custom Male Name]): ";
	otherwise if setting-male-names is 6:
		if PCD is 0, now name in row 5 of the Table of Custom Male Name is the player's command in title case;
		say "Enter a name for your player at 16+ bimbo (the current entry is [name in row 6 of the Table of Custom Male Name]): ";
	otherwise:
		if PCD is 0, now name in row 6 of the Table of Custom Male Name is the player's command in title case;
		write the File of Male Character from the Table of Custom Male Name;
		if the player-name is not 1000 and the player is originally male:
			say "Do you wish to switch to this set of names now? ";
			if the player is consenting:
				now choice in row 2 of the Table of Player Options is 1000;
				write File of Player Options from the Table of Player Options;
		say "Thanks! Now get back to the game.";
		try looking;
		now setting-male-names is 0;
	change the text of the player's command to "finish setting".

This is the setup custom male name rule:
	follow the quit rule;
	now setting-male-names is 1;
	now setting-instruction is "Enter a name for your (male) player at between 1 and 3 (out of 20) bimbo (the current entry is [name in row 1 of the Table of Custom Male Name]): ";

After reading a command when setting-female-names > 0 (this is the custom female name choosing rule):
	say line break;
	let PCD be 0;
	if the player's command matches the text "default", now PCD is 1;
	increase setting-female-names by 1;
	if setting-female-names is 2:
		if PCD is 0, now name in row 1 of the Table of Custom Female Name is the player's command in title case;
		say "Enter a name for your player at between 4 and 6 (out of 20) bimbo (the current entry is [name in row 2 of the Table of Custom Female Name]): ";
	otherwise if setting-female-names is 3:
		if PCD is 0, now name in row 2 of the Table of Custom Female Name is the player's command in title case;
		say "Enter a name for your player at between 7 and 9 (out of 20) bimbo (the current entry is [name in row 3 of the Table of Custom Female Name]): ";
	otherwise if setting-female-names is 4:
		if PCD is 0, now name in row 3 of the Table of Custom Female Name is the player's command in title case;
		say "Enter a name for your player at between 10 and 12 (out of 20) bimbo (the current entry is [name in row 4 of the Table of Custom Female Name]): ";
	otherwise if setting-female-names is 5:
		if PCD is 0, now name in row 4 of the Table of Custom Female Name is the player's command in title case;
		say "Enter a name for your player at between 13 and 15 (out of 20) bimbo (the current entry is [name in row 5 of the Table of Custom Female Name]): ";
	otherwise if setting-female-names is 6:
		if PCD is 0, now name in row 5 of the Table of Custom Female Name is the player's command in title case;
		say "Enter a name for your player at 16+ bimbo (the current entry is [name in row 6 of the Table of Custom Female Name]): ";
	otherwise:
		if PCD is 0, now name in row 6 of the Table of Custom Female Name is the player's command in title case;
		write the File of Female Character from the Table of Custom Female Name;
		if the player-name is not 1000 and (the player is originally female):
			say "Do you wish to switch to this set of names now? ";
			if the player is consenting:
				now choice in row 2 of the Table of Player Options is 1000;
				write File of Player Options from the Table of Player Options;
		say "Thanks! Now get back to the game.";
		try looking;
		now setting-female-names is 0;
	change the text of the player's command to "finish setting".

This is the setup custom female name rule:
	follow the quit rule;
	now setting-female-names is 1;
	now setting-instruction is "Enter a name for your (female) player at between 1 and 3 (out of 20) bimbo (the current entry is [name in row 1 of the Table of Custom Female Name]): ";

Info Options ends here.
