Fetish Settings by Miscellaneous Backend begins here.

[!<AThingIsFetishAppropriate>+

Some things are only 'fetish appropriate' (and therefore allowed in the game) when certain fetishes are enabled.

+!]
Definition: a thing is fetish appropriate: decide yes.

The File of Player Options (owned by another project) is called "character".

Table of Player Options
choice
-1 [Original player-gender]
100 [player-name]
0 [was the name randomly selected last time]
-1 [bukkake fetish]
-1 [pregnancy fetish]
-1 [lactation fetish]
-1 [watersports fetish]
-1 [egg laying fetish]
-1 [extreme proportions fetish]
-1 [TG fetish]
-1 [inflation fetish]
-1 [weight gain fetish]
-1 [artificial enhancements fetish]
-1 [fast breast expansion]
-1 [latex prisoner]
-1 [bondage prisoner]
-1 [unlucky]
-1 [forgetful airhead]
-1 [diaper lover]
0 [inhuman pregnancy]
0 [bonus strength points]
0 [bonus dexterity points]
0 [bonus intelligence points]
0 [bonus strength]
0 [bonus dexterity]
0 [bonus intelligence]
0 [max breast size points]
0 [max ass size points]
0 [min penis size points]
0 [micro-choice]
0 [cheater-check]
0 [submissive sex addict]
0 [bonus breast size points]
0 [trap fetish]
0 [mindbreak protection]
-1 [spontaneous tattoos]
0 [max belly size points]
-1 [map reset]
0 [toilet allowance]
-1 [hair redness]
-1 [hair blondeness]
-1 [hair brightness]
0 [diaper focus]
-1 [sex fainting]
-1 [interracial fetish]
0 [diaper swapping]
0 [roleplay fetish i.e. starting headgear]
-1 [mythical creature fetish]
0 [slow pregnancy]
1 [diaper messing]
-1 [tough-shit]
0 [backgrounds]
0 [condom fetish]
0 [natural hair length]
0 [natural body shape]
0 [secret: tattoos]
0 [secret: piercings]
0 [secret: humiliation]
0 [secret: artificial]
-1 [ungape]
-1 [tentacle fetish]
0 [starting body shape]
0 [bonus liquid]
0 [bondage protection]
0 [christmas content]
0 [easter content] [currently does nothing]
0 [april fools content]
1 [futanari fetish (NPCs)]
-1 [alcohol fetish]
0 [lady fetish (what biological sex are NPCs)]
0 [incontinence protection]
2 [inventory handicap]
1 [fast TG - reworked into shrink TG and event TG]
-1 [clumsy]
0 [slow birth]
0 [combatvisor]
1 [supportersEnabled]
0 [strongCurses]
0 [transGender]
0 [halloween content]
0 [realisticArms]
0 [super gag reflex]
0 [grossness fetish]
1 [silicone milk clash]
0 [diaper cumrag]
0 [hungry messer]
1 [slower timers]
0 [player futanari fetish]

[!<DecideWhichNumberIsOriginalPlayerGender>+

0: Male
1: Female

+!]
To decide which number is original-player-gender:
	decide on choice in row 1 of the Table of Player Options.

[!<DecideWhichNumberIsThePlayerName>+

Which set of names to use.
1000 is the special custom name

+!]
To decide which number is the player-name:
	decide on choice in row 2 of the Table of Player Options.

To decide which number is inhuman pregnancy:
	if diaper quest is 1, decide on 0;
	decide on choice in row 20 of the Table of Player Options.

To decide which number is bonus strength points:
	decide on choice in row 21 of the Table of Player Options.

To decide which number is bonus dexterity points:
	decide on choice in row 22 of the Table of Player Options.

To decide which number is bonus intelligence points:
	decide on choice in row 23 of the Table of Player Options.

To decide which number is bonus strength:
	decide on choice in row 24 of the Table of Player Options.

To decide which number is bonus dexterity:
	decide on choice in row 25 of the Table of Player Options.

To decide which number is bonus intelligence:
	decide on choice in row 26 of the Table of Player Options.

To decide which number is max breast size points:
	if diaper quest is 1, decide on 0;
	decide on choice in row 27 of the Table of Player Options.

To decide which number is bonus max breast size points:
	if diaper quest is 1, decide on 0;
	decide on choice in row 33 of the Table of Player Options.

To decide which number is max ass size points:
	if diaper quest is 1, decide on 0;
	decide on choice in row 28 of the Table of Player Options.

To decide which number is min penis size points:
	decide on choice in row 29 of the Table of Player Options.

To decide which number is micro-choice:
	decide on choice in row 30 of the Table of Player Options.

To decide which number is cheater-check:
	decide on choice in row 31 of the Table of Player Options.

To decide which number is trap fetish:
	if diaper quest is 1 or TG fetish is 0, decide on 0;
	decide on choice in row 34 of the Table of Player Options.

To decide which number is mindbreak protection:
	decide on choice in row 35 of the Table of Player Options.

To decide which number is spontaneous tattoos:
	if tattoo-fetish is 1, decide on 1;
	decide on choice in row 36 of the Table of Player Options.

To decide which number is max belly size points:
	if diaper quest is 1, decide on 0;
	decide on choice in row 37 of the Table of Player Options.

To decide which number is toilet allowance:
	decide on choice in row 39 of the Table of Player Options.

To decide which number is diaper focus:
	if diaper lover is 0, decide on 0;
	if diaper quest is 1, decide on 1;
	decide on choice in row 43 of the Table of Player Options.

To decide which number is roleplay fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 47 of the Table of Player Options.

To decide which number is condom fetish:
	if diaper quest is 1, decide on 0;
	if choice in row 53 of the Table of Player Options <= 0, decide on 0;
	otherwise decide on choice in row 53 of the Table of Player Options / 2.
This is the condom fetish toggle rule:
	if choice in row 53 of the Table of Player Options < 7, increase choice in row 53 of the Table of Player Options by 1;
	otherwise now choice in row 53 of the Table of Player Options is 0.
This is the condom fetish nightmare rule:
	if the remainder after dividing choice in row 53 of the Table of Player Options by 2 is 1, now choice in row 53 of the Table of Player Options is 7.
The condom fetish nightmare rule is listed in the nightmare mode rules.
This is the condom fetish random rule:
	if the remainder after dividing choice in row 53 of the Table of Player Options by 2 is 1, now choice in row 53 of the Table of Player Options is ((a random number between 0 and 3) * 2) + 1.
The condom fetish random rule is listed in the random mode rules.

To decide which number is tattoo-fetish:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 56 of the Table of Player Options.

To decide which number is piercing-fetish:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 57 of the Table of Player Options.

To decide which number is humiliation-fetish:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 58 of the Table of Player Options.

To decide which number is artificial-fetish:
	if diaper quest is 1 or artificial enhancements fetish is 0, decide on 0;
	decide on the choice in row 59 of the Table of Player Options.

To decide which number is max bonus liquid:
	decide on 6.

To decide which number is bonus liquid:
	decide on choice in row 63 of the Table of Player Options.

To decide which number is bondage protection:
	decide on the choice in row 64 of the Table of Player Options.

To decide which number is christmas content:
	[if the player is not a top donator, decide on 0;]
	if choice in row 65 of the Table of Player Options < 6, decide on 1;
	decide on 0.

To decide which number is easter content:
	if the player is not a top donator or diaper quest is 0, decide on 0;
	decide on the choice in row 66 of the Table of Player Options.

To decide which number is april fools content:
	if the player is not a top donator, decide on 0;
	if choice in row 67 of the Table of Player Options > 0, decide on 1;
	decide on 0.

To decide which number is halloween content:
	if the player is not a top donator, decide on 0;
	if choice in row 80 of the Table of Player Options < 6, decide on 1;
	decide on 0.

[This determines whether NPCs can be futas. But if gender preference is set to all MALE, there is no futa possible]
To decide which number is futanari fetish:
	if lady fetish is 2, decide on 0;
	decide on the choice in row 68 of the Table of Player Options.

This is the futanari fetish rule:
	if lady fetish < 2 and choice in row 68 of the Table of Player Options < 2:
		increase choice in row 68 of the Table of Player Options by 1;
	otherwise:
		now choice in row 68 of the Table of Player Options is 0.

[This determines whether the PLAYER can become a futa. 1: with balls, 2: without balls.]
To decide which number is player futanari fetish:
	if the player is not the donator, decide on 0;
	if choice in row 88 of the Table of Player Options <= 0, decide on 0;
	decide on choice in row 88 of the Table of Player Options.

This is the player futanari fetish rule:
	if choice in row 88 of the Table of Player Options < 2:
		increase choice in row 88 of the Table of Player Options by 1;
	otherwise:
		now choice in row 88 of the Table of Player Options is 0.

To decide which number is incontinence protection:
	if diaper quest is 0, decide on 0;
	decide on the choice in row 71 of the Table of Player Options.

To decide which number is combatvisor:
	if the player is the donator, decide on 0;
	decide on the choice in row 76 of the Table of Player Options.

To decide which number is supportersEnabled:
	if diaper quest is 1, decide on 0;
	if the player is not the donator, decide on 1;
	decide on the choice in row 77 of the Table of Player Options.

Definition: a person is a flatchested trap:
	if diaper quest is 1, decide no;
	if trap fetish is 1 and the player is not possessing a vagina, decide yes;
	if the player is not possessing a vagina and max breast size <= 1, decide yes;
	decide no.

To decide which number is super gag reflex:
	if diaper quest is 1, decide on 0;
	if choice in row 82 of the Table of Player Options <= 0, decide on 0;
	otherwise decide on choice in row 82 of the Table of Player Options.

[
0: Minimal grossness
1: Foot licking only
2: Ass-to-mouth and foot licking
3: Drinking butt stuff too
]
To decide which number is grossness fetish:
	if diaper quest is 1, decide on 0;
	if choice in row 83 of the Table of Player Options <= 0, decide on 0;
	otherwise decide on choice in row 83 of the Table of Player Options / 2.
[
0: Minimal A2M
1: Anilingus and ass-to-mouth
2: Drinking butt stuff too
]
To decide which number is a2m fetish:
	if diaper quest is 1 or grossness fetish is 0, decide on 0;
	decide on grossness fetish - 1.
This is the grossness fetish toggle rule:
	if choice in row 83 of the Table of Player Options < 7, increase choice in row 83 of the Table of Player Options by 1;
	otherwise now choice in row 83 of the Table of Player Options is 0.
This is the grossness fetish nightmare rule:
	if the remainder after dividing choice in row 83 of the Table of Player Options by 2 is 1, now choice in row 83 of the Table of Player Options is 7.
The grossness fetish nightmare rule is listed in the nightmare mode rules.
This is the grossness fetish random rule:
	if the remainder after dividing choice in row 83 of the Table of Player Options by 2 is 1, now choice in row 83 of the Table of Player Options is ((a random number between 0 and 3) * 2) + 1.
The grossness fetish random rule is listed in the random mode rules.

To decide which number is silicone milk clash:
	if the player is not the donator, decide on 1;
	decide on choice in row 84 of the Table of Player Options.

Part - Options Menus

Table of Kink Options
title	subtable	description	toggle
"[roman type]Confirm Choices (shortcut: press Q)"	--	--	quit rule
"ENABLE SPECIFIC EROTIC CONTENT"	Table of Fetish Options	--	--
"ENABLE OTHER HANDICAPS"	Table of Handicap Options	--	--
"ENABLE SEASONAL CONTENT"	Table of Festive Options	--	--
[DO NOT PUT ANY OPTIONS BELOW THE SEASONAL CONTENT ROW - they will not appear for non-alpha testers. Put them above the seasonal row instead.]

Part - Points

To decide which number is positive points count:
	let X be 0;
	if diaper quest is 1, increase X by 10;
	if bukkake fetish is 1, increase X by 7;
	if pregnancy fetish is 1, increase X by pregnancy points;
	if inhuman pregnancy >= 2 and (the player is possessing a vagina or tg fetish >= 1), increase X by inhuman pregnancy - 1;
	if lactation fetish is 1, increase X by 5;
	if watersports fetish is 1, increase X by 3;
	if diaper lover >= 1 and diaper quest is 0, increase X by diaper points;
	if egg laying fetish is 1, increase X by 3;
	if weight gain fetish is 1, increase X by 3;
	if hungry messer >= 1, increase X by 3;
	if inflation fetish is 1, increase X by 4;
	if artificial enhancements fetish is 1, increase X by 2;
	if interracial fetish is 1, increase X by 2;
	if mythical creature fetish is 1, increase X by mythical creature points;
	if extreme proportions fetish is 1, increase X by 9;
	if tg fetish >= 1, increase X by 2;
	if diaper lover >= 1 and toilet allowance is 1, increase X by 3;
	if diaper messing >= 5, increase X by 1;
	if fast breast expansion is 1, increase X by 4;
	if forgetful airhead is 1, increase X by 5;
	if map reset is 1, increase X by map reset points;
	if unlucky is 1, increase X by 6;
	if submissive sex addict is 1, increase X by 7;
	if latex prisoner is 1, increase X by 7;
	if bondage prisoner is 1, increase X by 7;
	if ungape is 1, increase X by 2;
	if tentacle fetish is 1, increase X by 6;
	if alcohol fetish is 1, increase X by 2;
	if tough-shit is 1, increase X by 8;
	if inventory handicap is 1, increase X by 3;
	if clumsy is 1, increase X by 5;
	if strongCurses is 1, increase X by 5;
	if save game limit > 0, increase X by 2 + (save game limit * 2);
	increase X by natural hair length;
	increase X by natural redness;
	increase X by natural blondeness;
	increase X by natural brightness;
	increase X by natural body shape * 2;
	increase X by starting body shape * 2;
	increase X by grossness fetish;
	increase X by condom fetish;
	decide on X.

To decide which number is diaper points:
	if watersports fetish is 1, decide on 5;
	decide on 3.

To decide which number is trap points:
	if the player is male and tg fetish >= 1, decide on 3;
	decide on 0.

To decide which number is points count:
	let X be positive points count;
	decrease X by bonus strength points;
	decrease X by bonus dexterity points;
	decrease X by bonus intelligence points;
	decrease X by max breast size points;
	decrease X by max ass size points;
	decrease X by max belly size points;
	if TG fetish is 0, decrease X by min penis size points;
	if trap fetish is 1, decrease X by trap points;
	decrease X by mindbreak protection * 4;
	decrease X by bondage protection * 2;
	decrease X by incontinence protection * 2;
	if background-selected is 1, decrease X by 5;
	decrease X by total-secret-cost;
	decrease X by roleplay fetish;
	decrease X by (bonus liquid * (1 + bonus liquid)) / 2;
	decrease X by combatvisor;
	if slower timers is 2, decrease X by 2;
	if diaper quest is 0:
		if supportersEnabled is 0, decrease X by 1;
		if super gag reflex is 1, decrease X by 3;
		if super gag reflex is 2, decrease X by 4;
	decide on X.

[This is the randomise bonuses rule:
	while points count > 0:
		let R be a random number between 1 and 10;
		if R < 4:
			follow bonus strength rule;
		otherwise if R < 7:
			follow bonus dexterity rule;
		otherwise if R < 10:
			follow bonus intelligence rule;
		otherwise:
			if the player is male and a random number from 1 to 2 is 1 and TG fetish is 0:
				follow min penis size rule;
			otherwise:
				if a random number from 1 to 3 is 1:
					follow max breast size rule;
				otherwise if a random number from 1 to 2 is 1:
					follow max belly size rule;
				otherwise:
					follow max ass size rule.]

Fetish Settings ends here.
