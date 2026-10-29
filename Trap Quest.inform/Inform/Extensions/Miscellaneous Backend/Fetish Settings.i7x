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
0 [RETIRED - bonus strength points]
0 [RETIRED - bonus dexterity points]
0 [RETIRED - bonus intelligence points]
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
0 [easter content]
0 [april fools content]
1 [futanari fetish (NPCs)]
-1 [alcohol fetish]
0 [gender preference (what biological sex are NPCs)]
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
0 [fantastic elastic]
-1 [nursery resident]
0 [enema fetish]
0 [easy teaching]
0 [smart start]
-1 [berri fetish]
0 [strongDoom]
0 [infamy fetish]

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

To decide which number is bonus stat points of (BS - a number):
	let N be 0;
	let next-cost be 2;
	let next-cost-step be 0;
	while BS > 0:
		increase N by next-cost;
		decrease BS by 1;
		if next-cost-step is 1:
			increase next-cost by 1;
			now next-cost-step is 0;
		otherwise:
			increase next-cost-step by 1;
	decide on N.

To decide which number is bonus strength points:
	decide on bonus stat points of bonus strength.

To decide which number is bonus dexterity points:
	decide on bonus stat points of bonus dexterity.

To decide which number is bonus intelligence points:
	decide on bonus stat points of bonus intelligence.

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
	if choice in row 35 of the Table of Player Options <= 0, decide on 0;
	decide on 1.

To decide which number is spontaneous tattoos:
	if tattoo-fetish is 1, decide on 1;
	if choice in row 36 of the Table of Player Options <= 0, decide on 0;
	decide on 1.

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
	if choice in row 47 of the Table of Player Options <= 0, decide on 0;
	decide on 1.

To decide which number is condom fetish:
	if diaper quest is 1, decide on 0;
	if choice in row 53 of the Table of Player Options <= 0, decide on 0;
	otherwise decide on choice in row 53 of the Table of Player Options / 2.
To decide which number is baseline condom fetish:
	if condom fetish is 0, decide on 0;
	decide on 1.
To decide which number is intense creampie fetish:
	if condom fetish is 0, decide on 0;
	if the remainder after dividing condom fetish by 2 is 1, decide on 1;
	decide on 0.
To decide which number is sticky condom fetish:
	if condom fetish is 0, decide on 0;
	if condom fetish > 1, decide on 1;
	decide on 0.
This is the condom fetish toggle rule:
	if choice in row 53 of the Table of Player Options < 7, increase choice in row 53 of the Table of Player Options by 1;
	otherwise now choice in row 53 of the Table of Player Options is 0.
This is the condom fetish nightmare rule:
	if the remainder after dividing choice in row 53 of the Table of Player Options by 2 is 1, now choice in row 53 of the Table of Player Options is 7.
The condom fetish nightmare rule is listed in the nightmare mode rules.
This is the condom fetish random rule:
	if the remainder after dividing choice in row 53 of the Table of Player Options by 2 is 1, now choice in row 53 of the Table of Player Options is ((a random number between 0 and 3) * 2) + 1.
The condom fetish random rule is listed in the random fetish rules.

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

[This determines whether NPCs can be futas. But if gender preference is set to all MALE, there is no futa possible]
To decide which number is futanari fetish:
	if andro fetish is 1, decide on 0;
	decide on the choice in row 68 of the Table of Player Options.

[
0 - no futanari.
1 - futanari with balls
2 - futanari, without balls
]
This is the futanari fetish rule:
	if andro fetish is 0 and choice in row 68 of the Table of Player Options < 2:
		increase choice in row 68 of the Table of Player Options by 1;
	otherwise:
		now choice in row 68 of the Table of Player Options is 0.

[This determines whether the PLAYER can become a futa. 1: with balls, 2: without balls.]
To decide which number is player futanari fetish:
	if the player is not the donator or berri fetish is 1, decide on 0;
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
	if choice in row 82 of the Table of Player Options is 1, decide on 1;
	otherwise decide on 2.

To decide which number is fantastic elastic:
	if diaper quest is 1, decide on 0;
	if choice in row 89 of the Table of Player Options <= 0, decide on 0;
	decide on 1.

To decide which number is smart start:
	if the player is not the donator, decide on 0;
	if choice in row 93 of the Table of Player Options <= 0, decide on 0;
	decide on 1.

To decide which number is berri fetish:
	if diaper quest is 0, decide on 0;
	if the player is not an september 2025 diaper donator, decide on 0;
	if choice in row 1 of the Table of Player Options is 0 and tg fetish is 0, decide on 0;
	if choice in row 94 of the Table of Player Options <= 0, decide on 0;
	decide on 1.
This is the berri fetish toggle rule:
	if choice in row 94 of the Table of Player Options is not 1, now choice in row 94 of the Table of Player Options is 1;
	otherwise now choice in row 94 of the Table of Player Options is 0.
[This is the berri nightmare rule:
	if choice in row 94 of the Table of Player Options is 0, now choice in row 94 of the Table of Player Options is 1.
The berri nightmare rule is listed in the nightmare mode rules.
This is the berri random rule:
	if choice in row 94 of the Table of Player Options is 0 or choice in row 94 of the Table of Player Options is 1, now choice in row 94 of the Table of Player Options is a random number between 0 and 1.
The berri random rule is listed in the random fetish rules.]

[
0: Minimal grossness (never)
1: Minimal grossness (not now)
2: Foot licking only (this time)
3: Foot licking only (always)
4: Ass-to-mouth and foot licking (this time)
5: Ass-to-mouth and foot licking (always)
6: Drinking butt stuff too (this time)
7: Drinking butt stuff too (always)
]
To decide which number is grossness fetish:
	if diaper quest is 1, decide on 0;
	if choice in row 83 of the Table of Player Options <= 0, decide on 0;
	otherwise decide on choice in row 83 of the Table of Player Options / 2.
To decide which number is baseline grossness fetish:
	if diaper quest is 1, decide on 0;
	if grossness fetish <= 0, decide on 0;
	decide on 1.
To decide which number is just grossness fetish:
	if diaper quest is 1, decide on 0;
	if grossness fetish > 0 and a2m fetish > 0, decide on 1;
	decide on 0.
[
0: Minimal A2M
1: Anilingus and ass-to-mouth
2: Drinking butt stuff too
]
To decide which number is a2m fetish:
	if diaper quest is 1 or grossness fetish is 0, decide on 0;
	decide on grossness fetish - 1.
To decide which number is baseline a2m fetish:
	if diaper quest is 1 or grossness fetish is 0, decide on 0;
	if choice in row 83 of the Table of Player Options > 3, decide on 1;
	decide on 0.
To decide which number is just a2m fetish:
	if diaper quest is 1, decide on 0;
	if a2m fetish > 0 and snowball fetish is 0, decide on 1;
	decide on 0.
To decide which number is snowball fetish:
	if diaper quest is 1, decide on 0;
	if choice in row 83 of the Table of Player Options > 5, decide on 1;
	decide on 0.
This is the grossness fetish toggle rule:
	if choice in row 83 of the Table of Player Options < 7, increase choice in row 83 of the Table of Player Options by 1;
	otherwise now choice in row 83 of the Table of Player Options is 0.
This is the grossness fetish nightmare rule:
	if the remainder after dividing choice in row 83 of the Table of Player Options by 2 is 1, now choice in row 83 of the Table of Player Options is 7.
The grossness fetish nightmare rule is listed in the nightmare mode rules.
This is the grossness fetish random rule:
	if the remainder after dividing choice in row 83 of the Table of Player Options by 2 is 1, now choice in row 83 of the Table of Player Options is ((a random number between 0 and 3) * 2) + 1.
The grossness fetish random rule is listed in the random fetish rules.

To decide which number is silicone milk clash:
	decide on choice in row 84 of the Table of Player Options.

Part - Options Menus

Table of Kink Options
title	subtable	description	toggle
"[roman type]Confirm Choices (shortcut: press Q)"	--	--	quit rule
"TOGGLE HANDICAPS (graphical menu coming soon!)"	Table of Handicap Options	--	--
"TOGGLE SEASONAL CONTENT"	Table of Festive Options	--	--
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
	if hungry messer >= 1, increase X by 8;
	if inflation fetish is 1, increase X by 4;
	if artificial enhancements fetish is 1, increase X by 2;
	if interracial fetish is 1, increase X by 2;
	if mythical creature fetish is 1, increase X by mythical creature points;
	if extreme proportions fetish is 1, increase X by 9;
	if tg fetish >= 1, increase X by 2;
	if diaper lover >= 1 and toilet allowance is 1, increase X by 3;
	if diaper messing >= 5, increase X by 1;
	if fast breast expansion is 1, increase X by 4;
	if infamy fetish is 1, increase X by 4;
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
	if strongDoom is 1, increase X by 2;
	if nursery resident is 1, increase X by 5;
	if diaper quest is 1 and enema fetish is 1, increase X by 4;
	if save game limit > 0 and max-undos < 999999, increase X by 2 + (save game limit * 2);
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
	if diaper quest is 0 and background-pure is 1 and the player is originally male, decrease X by 9999;
	decrease X by total-secret-cost;
	decrease X by roleplay fetish;
	decrease X by (bonus liquid * (1 + bonus liquid)) / 2;
	decrease X by combatvisor;
	decrease X by fantastic elastic;
	decrease X by smart start;
	decrease X by easy teaching * 2;
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


Book - New Fetish Selection Window

[
FETISH MENU ID CHEAT SHEET
1) Bukkake / Cum Splatter
2) Pregnancy
3) Lactation
4) Egg Laying
5) Air Inflation
6) Weight Gain
7) Artificial Enhancements
8) Extreme Body Proportions
9) Big Black Cocks
10) Tentacle Monsters Everywhere
11) Gross Licking
12) Condoms
13) NPC Gender Preference
14) Infamy
15) Watersports
16) Mythical Creatures
17) Alcohol
18 or 15) TG
]

fetishMenuInProgress is a number that varies.
fetishSelection is a number that varies. [0: gender, 1: pregnancy type, 2: new player; 3: pregnancy size; 4: pregnancy growth, 5: font instructions, 6: secret dq, 7: lactating silicone, 8: random benefits]
previous menu selection is a number that varies. previous menu selection is 1.

Figure of Fetish Selection Backdrop is the file "Special/Menus/FetishSelection/backdrop1.jpg".

Figure of AI Enhance is the file "Special/Menus/FetishSelection/AI Enhance.jpg".
Figure of Air Inflation is the file "Special/Menus/FetishSelection/Air Inflation.jpg".
Figure of air_inflation_always is the file "Special/Menus/FetishSelection/air_inflation_always.png".
Figure of air_inflation_never is the file "Special/Menus/FetishSelection/air_inflation_never.png".
Figure of air_inflation_not_now is the file "Special/Menus/FetishSelection/air_inflation_not_now.png".
Figure of air_inflation_this_time is the file "Special/Menus/FetishSelection/air_inflation_this_time.png".
Figure of AI_Enhance_always is the file "Special/Menus/FetishSelection/AI_Enhance_always.png".
Figure of AI_Enhance_never is the file "Special/Menus/FetishSelection/AI_Enhance_never.png".
Figure of AI_Enhance_not_now is the file "Special/Menus/FetishSelection/AI_Enhance_not_now.png".
Figure of AI_Enhance_this_time is the file "Special/Menus/FetishSelection/AI_Enhance_this_time.png".
Figure of Alcohol is the file "Special/Menus/FetishSelection/Alcohol.jpg".
Figure of Alcohol Patreon is the file "Special/Menus/FetishSelection/Alcohol Patreon.jpg".
Figure of alcohol_always is the file "Special/Menus/FetishSelection/alcohol_always.png".
Figure of alcohol_never is the file "Special/Menus/FetishSelection/alcohol_never.png".
Figure of alcohol_not_now is the file "Special/Menus/FetishSelection/alcohol_not_now.png".
Figure of alcohol_this_time is the file "Special/Menus/FetishSelection/alcohol_this_time.png".
Figure of always_icon is the file "Special/Menus/FetishSelection/always_icon.png".
Figure of always_off_buttons is the file "Special/Menus/FetishSelection/always_off_buttons.png".
Figure of always_on_buttons is the file "Special/Menus/FetishSelection/always_on_buttons.png".
Figure of Big Black Cocks is the file "Special/Menus/FetishSelection/Big Black Cocks.jpg".
Figure of big_black_cocks_always is the file "Special/Menus/FetishSelection/big_black_cocks_always.png".
Figure of big_black_cocks_never is the file "Special/Menus/FetishSelection/big_black_cocks_never.png".
Figure of big_black_cocks_not_now is the file "Special/Menus/FetishSelection/big_black_cocks_not_now.png".
Figure of big_black_cocks_this_time is the file "Special/Menus/FetishSelection/big_black_cocks_this_time.png".
Figure of Condoms 1 is the file "Special/Menus/FetishSelection/Condoms 1.jpg".
Figure of Condoms 2 is the file "Special/Menus/FetishSelection/Condoms 2.jpg".
Figure of Condoms 3 is the file "Special/Menus/FetishSelection/Condoms 3.jpg".
Figure of condoms_1_always is the file "Special/Menus/FetishSelection/condoms_1_always.png".
Figure of condoms_1_never is the file "Special/Menus/FetishSelection/condoms_1_never.png".
Figure of condoms_1_not_now is the file "Special/Menus/FetishSelection/condoms_1_not_now.png".
Figure of condoms_1_this_time is the file "Special/Menus/FetishSelection/condoms_1_this_time.png".
Figure of condoms_2_always is the file "Special/Menus/FetishSelection/condoms_2_always.png".
[Figure of condoms_2_never is the file "Special/Menus/FetishSelection/condoms_2_never.png".
Figure of condoms_2_not_now is the file "Special/Menus/FetishSelection/condoms_2_not_now.png".]
Figure of condoms_2_this_time is the file "Special/Menus/FetishSelection/condoms_2_this_time.png".
Figure of condoms_3_always is the file "Special/Menus/FetishSelection/condoms_3_always.png".
Figure of condoms_3_this_time is the file "Special/Menus/FetishSelection/condoms_3_this_time.png".
Figure of Cum splatter is the file "Special/Menus/FetishSelection/Cum splatter.jpg".
Figure of cum_splatter_always is the file "Special/Menus/FetishSelection/cum_splatter_always.png".
Figure of cum_splatter_never is the file "Special/Menus/FetishSelection/cum_splatter_never.png".
Figure of cum_splatter_not_now is the file "Special/Menus/FetishSelection/cum_splatter_not_now.png".
Figure of cum_splatter_this_time is the file "Special/Menus/FetishSelection/cum_splatter_this_time.png".
Figure of Egg Laying is the file "Special/Menus/FetishSelection/Egg Laying.jpg".
Figure of egg_laying_always is the file "Special/Menus/FetishSelection/egg_laying_always.png".
Figure of egg_laying_never is the file "Special/Menus/FetishSelection/egg_laying_never.png".
Figure of egg_laying_not_now is the file "Special/Menus/FetishSelection/egg_laying_not_now.png".
Figure of egg_laying_this_time is the file "Special/Menus/FetishSelection/egg_laying_this_time.png".
Figure of Extreme Body is the file "Special/Menus/FetishSelection/Extreme Body.jpg".
Figure of extreme_body_always is the file "Special/Menus/FetishSelection/extreme_body_always.png".
Figure of extreme_body_never is the file "Special/Menus/FetishSelection/extreme_body_never.png".
Figure of extreme_body_not_now is the file "Special/Menus/FetishSelection/extreme_body_not_now.png".
Figure of extreme_body_this_time is the file "Special/Menus/FetishSelection/extreme_body_this_time.png".
Figure of Gross Licking 1 is the file "Special/Menus/FetishSelection/Gross Licking 1.jpg".
Figure of Gross Licking 2 is the file "Special/Menus/FetishSelection/Gross Licking 2.jpg".
Figure of Gross Licking 3 is the file "Special/Menus/FetishSelection/Gross Licking 3.jpg".
Figure of gross_licking_1_always is the file "Special/Menus/FetishSelection/gross_licking_1_always.png".
Figure of gross_licking_1_never is the file "Special/Menus/FetishSelection/gross_licking_1_never.png".
Figure of gross_licking_1_not_now is the file "Special/Menus/FetishSelection/gross_licking_1_not_now.png".
Figure of gross_licking_1_this_time is the file "Special/Menus/FetishSelection/gross_licking_1_this_time.png".
Figure of gross_licking_2_always is the file "Special/Menus/FetishSelection/gross_licking_2_always.png".
[Figure of gross_licking_2_never is the file "Special/Menus/FetishSelection/gross_licking_2_never.png".
Figure of gross_licking_2_not_now is the file "Special/Menus/FetishSelection/gross_licking_2_not_now.png".]
Figure of gross_licking_2_this_time is the file "Special/Menus/FetishSelection/gross_licking_2_this_time.png".
Figure of gross_licking_3_always is the file "Special/Menus/FetishSelection/gross_licking_3_always.png".
Figure of gross_licking_3_this_time is the file "Special/Menus/FetishSelection/gross_licking_3_this_time.png".
Figure of Lactation is the file "Special/Menus/FetishSelection/Lactation.jpg".
Figure of lactation_always is the file "Special/Menus/FetishSelection/lactation_always.png".
Figure of lactation_never is the file "Special/Menus/FetishSelection/lactation_never.png".
Figure of lactation_not_now is the file "Special/Menus/FetishSelection/lactation_not_now.png".
Figure of lactation_this_time is the file "Special/Menus/FetishSelection/lactation_this_time.png".
Figure of Mythical Creatures is the file "Special/Menus/FetishSelection/Mythical Creatures.jpg".
Figure of Mythical Creatures Eggs is the file "Special/Menus/FetishSelection/Mythical Creatures Eggs.jpg".
Figure of mythical_always is the file "Special/Menus/FetishSelection/mythical_always.png".
Figure of mythical_never is the file "Special/Menus/FetishSelection/mythical_never.png".
Figure of mythical_not_now is the file "Special/Menus/FetishSelection/mythical_not_now.png".
Figure of mythical_this_time is the file "Special/Menus/FetishSelection/mythical_this_time.png".
Figure of never_icon is the file "Special/Menus/FetishSelection/never_icon.png".
Figure of never_off_buttons is the file "Special/Menus/FetishSelection/never_off_buttons.png".
Figure of never_on_buttons is the file "Special/Menus/FetishSelection/never_on_buttons.png".
Figure of not_now_icon is the file "Special/Menus/FetishSelection/not_now_icon.png".
Figure of not_now_off_buttons is the file "Special/Menus/FetishSelection/not_now_off_buttons.png".
Figure of not_now_on_buttons is the file "Special/Menus/FetishSelection/not_now_on_buttons.png".
Figure of NPC Gender 1 is the file "Special/Menus/FetishSelection/NPC Gender 1.jpg".
Figure of NPC Gender 2 is the file "Special/Menus/FetishSelection/NPC Gender 2.jpg".
Figure of NPC Gender 3 is the file "Special/Menus/FetishSelection/NPC Gender 3.jpg".
Figure of NPC Gender Patreon is the file "Special/Menus/FetishSelection/NPC Gender Patreon.jpg".
Figure of NPC_gender_1_always is the file "Special/Menus/FetishSelection/NPC_gender_1_always.png".
Figure of NPC_gender_1_never is the file "Special/Menus/FetishSelection/NPC_gender_1_never.png".
Figure of NPC_gender_1_not_now is the file "Special/Menus/FetishSelection/NPC_gender_1_not_now.png".
Figure of NPC_gender_1_this_time is the file "Special/Menus/FetishSelection/NPC_gender_1_this_time.png".
Figure of NPC_gender_2_always is the file "Special/Menus/FetishSelection/NPC_gender_2_always.png".
Figure of NPC_gender_2_never is the file "Special/Menus/FetishSelection/NPC_gender_2_never.png".
Figure of NPC_gender_2_not_now is the file "Special/Menus/FetishSelection/NPC_gender_2_not_now.png".
Figure of NPC_gender_2_this_time is the file "Special/Menus/FetishSelection/NPC_gender_2_this_time.png".
Figure of Pregnancy is the file "Special/Menus/FetishSelection/Pregnancy.jpg".
Figure of Pregnancy Male is the file "Special/Menus/FetishSelection/Pregnancy Male.jpg".
Figure of pregnancy_always is the file "Special/Menus/FetishSelection/pregnancy_always.png".
Figure of pregnancy_never is the file "Special/Menus/FetishSelection/pregnancy_never.png".
Figure of pregnancy_not_now is the file "Special/Menus/FetishSelection/pregnancy_not_now.png".
Figure of pregnancy_this_time is the file "Special/Menus/FetishSelection/pregnancy_this_time.png".
Figure of Tentacle is the file "Special/Menus/FetishSelection/Tentacle.jpg".
Figure of tentacle_always is the file "Special/Menus/FetishSelection/tentacle_always.png".
Figure of tentacle_never is the file "Special/Menus/FetishSelection/tentacle_never.png".
Figure of tentacle_not_now is the file "Special/Menus/FetishSelection/tentacle_not_now.png".
Figure of tentacle_this_time is the file "Special/Menus/FetishSelection/tentacle_this_time.png".
Figure of TG is the file "Special/Menus/FetishSelection/TG.jpg".
Figure of TG_always is the file "Special/Menus/FetishSelection/TG_always.png".
Figure of TG_never is the file "Special/Menus/FetishSelection/TG_never.png".
Figure of TG_not_now is the file "Special/Menus/FetishSelection/TG_not_now.png".
Figure of TG_this_time is the file "Special/Menus/FetishSelection/TG_this_time.png".
Figure of Watersports is the file "Special/Menus/FetishSelection/Watersports.jpg".
Figure of watersports_always is the file "Special/Menus/FetishSelection/watersports_always.png".
[Figure of watersports_never is the file "Special/Menus/FetishSelection/watersports_never.png".]
[Figure of watersports_not_now is the file "Special/Menus/FetishSelection/watersports_not_now.png".]
Figure of watersports_this_time is the file "Special/Menus/FetishSelection/watersports_this_time.png".
Figure of Slimeshooter is the file "Special/Menus/FetishSelection/slimeshooter.jpg".
Figure of slimeshooter_always is the file "Special/Menus/FetishSelection/slimeshooter_always.jpg".
Figure of slimeshooter_never is the file "Special/Menus/FetishSelection/slimeshooter_never.jpg".
Figure of slimeshooter_not_now is the file "Special/Menus/FetishSelection/slimeshooter_not_now.jpg".
Figure of slimeshooter_this_time is the file "Special/Menus/FetishSelection/slimeshooter_this_time.jpg".
Figure of Weight Gain is the file "Special/Menus/FetishSelection/Weight Gain.jpg".
Figure of weight_gain_always is the file "Special/Menus/FetishSelection/weight_gain_always.png".
Figure of weight_gain_never is the file "Special/Menus/FetishSelection/weight_gain_never.png".
Figure of weight_gain_not_now is the file "Special/Menus/FetishSelection/weight_gain_not_now.png".
Figure of weight_gain_this_time is the file "Special/Menus/FetishSelection/weight_gain_this_time.png".
Figure of Infamy is the file "Special/Menus/FetishSelection/Internet Infamy.jpg".
Figure of infamy_always is the file "Special/Menus/FetishSelection/internet_infamy_always.png".
Figure of infamy_never is the file "Special/Menus/FetishSelection/internet_infamy_never.png".
Figure of infamy_not_now is the file "Special/Menus/FetishSelection/internet_infamy_not_now.png".
Figure of infamy_this_time is the file "Special/Menus/FetishSelection/internet_infamy_this_time.png".
Figure of yes_this_time_icon is the file "Special/Menus/FetishSelection/yes_this_time_icon.png".
Figure of yes_this_time_off_buttons is the file "Special/Menus/FetishSelection/yes_this_time_off_buttons.png".
Figure of yes_this_time_on_buttons is the file "Special/Menus/FetishSelection/yes_this_time_on_buttons.png".

To decide which number is fetishSelectionTotalOptions:
	if the player is sexed male, decide on 16 + (2 * legacy content); [THE LAST OPTION MUST BE TG, so it's the one that gets cut off if the player chooses to start female]
	decide on 15 + (2 * legacy content).

To decide which number is fetishSelectionTotalButtons:
	decide on fetishSelectionTotalOptions + 3.

To compute new fetish selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 1;
	now current menu selection is 1;
	[wait 50 ms before continuing;]
	while fetishMenuInProgress is 1:
		update the status line;
		refresh the graphics-window;
		let __x be the chosen letter;
		if __x is 81 or __x is 113:
			now fetishMenuInProgress is 0;
			now waitingForChar is false;
			now current menu selection is 1;
		otherwise if __x is -2: [up]
			if current menu selection is 1, now previous menu selection is 1;
			if current menu selection is greater than 1, decrease current menu selection by 1;
			otherwise now current menu selection is fetishSelectionTotalButtons;
		otherwise if __x is -3: [down]
			if current menu selection is fetishSelectionTotalOptions, now previous menu selection is fetishSelectionTotalOptions;
			if current menu selection is less than fetishSelectionTotalButtons, increase current menu selection by 1;
			otherwise now current menu selection is 1;
		otherwise if __x is -5:
			compute fetish toggle up;
		otherwise if __x is -4:
			compute fetish toggle down;
		otherwise if __x is -6 or __x is 13 or __x is 32 or candidate replacement command is "quit":
			compute fetish toggle select;
	close the graphics-window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

[From left to right, which row in the table of player options does each GUI fetish selection correspond to?]
To decide which number is fetishMenuRow of (X - a number):
	let N be 0;
	if X is 1:
		now N is 4;[Bukkake]
	otherwise if X is 2:
		now N is 5;[Pregnancy]
	otherwise if X is 3:
		now N is 6;[Lactation]
	otherwise if X is 4:
		now N is 8;[Eggs]
	otherwise if X is 5:
		now N is 11;[Inflation]
	otherwise if X is 6:
		now N is 12;[Weight]
	otherwise if X is 7:
		now N is 13;[Silicone/Enhancements]
	otherwise if X is 8:
		now N is 9;[Proportions]
	otherwise if X is 9:
		now N is 45;[BBC]
	otherwise if X is 10:
		now N is 61;[Tentacles everywhere]
	otherwise if X is 11:
		now N is 83;[Licking]
	otherwise if X is 12:
		now N is 53;[condoms]
	otherwise if X is 13:
		now N is 70;[Gender preference]
	otherwise if X is 14:
		now N is 96;[internet reputation]
	otherwise if X is 15:
		now N is 7;[slimeshooters]
	otherwise if legacy content is 1 and X is 16:
		now N is 48;
	otherwise if legacy content is 1 and X is 17:
		now N is 69;[drinks]
	otherwise:
		now N is 10;[TG]
	decide on N.

[Tiered rows will need an extra block when rendering their buttons.]
To decide whether fetishRow (N - a number) is tiered-row:
	if N is 11 or N is 12, decide yes;[Respectively, Grossness, Condoms]
	[if N is 15 and legacy content is 1, decide yes;][slimeshooters]
	decide no.

[For certain fetishes with multiple tiers, the numbers are all jumbled in the table, compared to what the new menu expects.]
To decide which number is convert-to-table (N - a number):
	if N <= 0:
		decide on N + 1;
	otherwise if the remainder after dividing N by 2 is 1:
		decide on N + 2;
	otherwise:
		decide on N.
To decide which number is convert-to-new-menu (N - a number):
	if N <= 1:
		decide on N - 1;
	otherwise if the remainder after dividing N by 2 is 1:
		decide on N - 2;
	otherwise:
		decide on N.

To compute fetish toggle (D - a direction):
	let N be fetishMenuRow of current menu selection;
	if N > 0:
		if the player is not the donator and current menu selection is 13:
			do nothing; [NPC gender is donators only]
		otherwise if fetishRow current menu selection is tiered-row:
			let selectRIGHT be 6;
			if D is down:
				if choice in row N of the Table of Player Options is selectRIGHT:
					now choice in row N of the Table of Player Options is 0;
				otherwise if choice in row N of the Table of Player Options is 0:
					increase choice in row N of the Table of Player Options by 1;
				otherwise if choice in row N of the Table of Player Options is 1:
					increase choice in row N of the Table of Player Options by 2;
				otherwise if the remainder after dividing choice in row N of the Table of Player Options by 2 is 1:
					decrease choice in row N of the Table of Player Options by 1;
				otherwise:
					increase choice in row N of the Table of Player Options by 3;
			otherwise:
				if choice in row N of the Table of Player Options is 0:
					now choice in row N of the Table of Player Options is selectRIGHT;
				otherwise if choice in row N of the Table of Player Options is 1:
					decrease choice in row N of the Table of Player Options by 1;
				otherwise if choice in row N of the Table of Player Options is 3:
					decrease choice in row N of the Table of Player Options by 2;
				otherwise if the remainder after dividing choice in row N of the Table of Player Options by 2 is 0:
					increase choice in row N of the Table of Player Options by 1;
				otherwise:
					decrease choice in row N of the Table of Player Options by 3;
		otherwise:
			let selectMAX be 2;
			let selectMIN be -1;
			if current menu selection is 13:
				now selectMIN is 0;
				now selectMAX is 5;
			if current menu selection is 15, now selectMAX is 4;
			if D is down:
				if choice in row N of the Table of Player Options < selectMAX, increase choice in row N of the Table of Player Options by 1;
				otherwise now choice in row N of the Table of Player Options is selectMIN;
			otherwise:
				if choice in row N of the Table of Player Options > selectMIN, decrease choice in row N of the Table of Player Options by 1;
				otherwise now choice in row N of the Table of Player Options is selectMAX;
		now status_int is choice in row N of the Table of Player Options.


To compute fetish toggle select:
	if current menu selection is fetishSelectionTotalOptions + 3:
		now fetishMenuInProgress is 0;
		now current menu selection is 1;
		now waitingForChar is false;
	otherwise if current menu selection is fetishSelectionTotalOptions + 2:
		follow the nightmare mode rules;
	otherwise if current menu selection is fetishSelectionTotalOptions + 1:
		follow the random fetish rules;
	otherwise:
		compute fetish toggle down.

To decide which figure-name is fetish menu banner:
	let CMS be current menu selection;
	if CMS > fetishSelectionTotalOptions, now CMS is previous menu selection;
	if CMS is 1:
		decide on figure of Cum splatter;
	otherwise if CMS is 2:
		if the player is sexed male and tg fetish is 0, decide on figure of pregnancy male;
		decide on figure of pregnancy;
	otherwise if CMS is 3:
		decide on figure of lactation;
	otherwise if CMS is 4:
		decide on figure of Egg Laying;
	otherwise if CMS is 5:
		decide on figure of Air Inflation;
	otherwise if CMS is 6:
		decide on figure of Weight Gain;
	otherwise if CMS is 7:
		decide on figure of AI Enhance;
	otherwise if CMS is 8:
		decide on figure of Extreme Body;
	otherwise if CMS is 9:
		decide on figure of Big Black Cocks;
	otherwise if CMS is 10:
		decide on figure of Tentacle;
	otherwise if CMS is 11:
		if grossness fetish <= 1:
			decide on figure of Gross Licking 1;
		otherwise if grossness fetish is 2:
			decide on figure of Gross Licking 2;
		otherwise:
			decide on figure of Gross Licking 3;
	otherwise if CMS is 12:
		if condom fetish <= 1:
			decide on figure of Condoms 1;
		otherwise if condom fetish is 2:
			decide on figure of Condoms 2;
		otherwise:
			decide on figure of Condoms 3;
	otherwise if CMS is 13:
		if the player is not the donator, decide on figure of NPC Gender Patreon;
		if gender-preference is 0, decide on figure of NPC Gender 2;
		if gyno fetish is 1, decide on figure of NPC Gender 3;
		decide on figure of NPC Gender 1;
	otherwise if CMS is 14:
		decide on figure of Infamy;
	otherwise if CMS is 15:
		let T be the choice in row 7 of the Table of Player Options;
		if legacy content is 0, decide on figure of Slimeshooter;[the legacy lock *shouldn't* be necessary, but just in case...]
		if legacy watersports fetish is 1, decide on figure of Watersports;
		decide on figure of Slimeshooter;
	otherwise if legacy content is 1 and CMS is 16:
		if egg laying fetish is 1, decide on figure of Mythical Creatures Eggs;
		decide on figure of Mythical Creatures;
	otherwise if legacy content is 1 and CMS is 17:
		decide on figure of Alcohol;
	otherwise:
		decide on figure of TG.

To render full new fetish selection menu:
	let CMS be current menu selection;
	if CMS > fetishSelectionTotalOptions, now CMS is previous menu selection;
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W2 be (W * 2) / 3;
	display the image Figure of Fetish Selection Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	[check page number and render appropriate image - 60 / 1080; height 917 / 1080]
	let bannerYR be 60.0 * H / 1080.0;
	let bannerY be bannerYR to the nearest whole number;
	let bannerHR be 917.0 * H / 1080.0;
	let bannerH be bannerHR to the nearest whole number;
	display the image fetish menu banner in the graphics-window at 0 by bannerY with dimensions W by bannerH;
	[render all fetish strips, and add links]
	[top left corner 65 x 614; top left of next one 177 x 614]
	let optionYR be 614.0 * H / 1080.0;
	let optionY be optionYR to the nearest whole number;
	let optionHR be 330.0 * H / 1080.0;
	let optionH be optionHR to the nearest whole number;
	[let optionXR be 65.0 * W / 1920.0;
	let optionX be optionXR to the nearest whole number;]
	let optionNMax be 1920 / fetishSelectionTotalOptions;
	let optionWR be 110.0 * W / 1920.0;
	let optionW be optionWR to the nearest whole number;
	let optionNR be 112.0 * W  / 1920.0;
	let optionN be optionNR to the nearest whole number;
	if optionN > optionNMax:
		now optionW is optionNMax - 2;
		now optionN is optionNMax;
	[let optionX be (W - (optionN * fetishSelectionTotalOptions)) / 2;]
	let optionX be (W2 - (optionN * fetishSelectionTotalOptions)) / 2;
	[if optionX < 0:]
	now optionX is 2;
	if (((W2 / fetishSelectionTotalOptions) - 2) * 3) < optionH: [assuming this makes the boxes smaller than max height allowed]
		now optionN is W2 / fetishSelectionTotalOptions;
		now optionW is optionN - 2;
		increase optionY by (optionH - (optionW * 3)) / 2; [centre new height in the available space]
		now optionH is optionW * 3;
	otherwise: [if it would make the boxes bigger, we need to go with the original height]
		now optionW is optionH / 3;
		now optionN is optionW + 2;
	let F be figure of alcohol_never;
	let CC be 0;
	let FBTN be 1;
	let BTNS be 4;
	repeat with X running from 1 to fetishSelectionTotalOptions:
		let C be choice in row (fetishMenuRow of X) of the Table of Player Options;
		if X is 1:
			if C is -1:
				now F is figure of cum_splatter_never;
			otherwise if C is 0:
				now F is figure of cum_splatter_not_now;
			otherwise if C is 1:
				now F is figure of cum_splatter_this_time;
			otherwise:
				now F is figure of cum_splatter_always;
		otherwise if X is 2:
			if C is -1:
				now F is figure of pregnancy_never;
			otherwise if C is 0:
				now F is figure of pregnancy_not_now;
			otherwise if C is 1:
				now F is figure of pregnancy_this_time;
			otherwise:
				now F is figure of pregnancy_always;
		otherwise if X is 3:
			if C is -1:
				now F is figure of lactation_never;
			otherwise if C is 0:
				now F is figure of lactation_not_now;
			otherwise if C is 1:
				now F is figure of lactation_this_time;
			otherwise:
				now F is figure of lactation_always;
		otherwise if X is 4:
			if C is -1:
				now F is figure of egg_laying_never;
			otherwise if C is 0:
				now F is figure of egg_laying_not_now;
			otherwise if C is 1:
				now F is figure of egg_laying_this_time;
			otherwise:
				now F is figure of egg_laying_always;
		otherwise if X is 5:
			if C is -1:
				now F is figure of air_inflation_never;
			otherwise if C is 0:
				now F is figure of air_inflation_not_now;
			otherwise if C is 1:
				now F is figure of air_inflation_this_time;
			otherwise:
				now F is figure of air_inflation_always;
		otherwise if X is 6:
			if C is -1:
				now F is figure of weight_gain_never;
			otherwise if C is 0:
				now F is figure of weight_gain_not_now;
			otherwise if C is 1:
				now F is figure of weight_gain_this_time;
			otherwise:
				now F is figure of weight_gain_always;
		otherwise if X is 7:
			if C is -1:
				now F is figure of AI_Enhance_never;
			otherwise if C is 0:
				now F is figure of AI_Enhance_not_now;
			otherwise if C is 1:
				now F is figure of AI_Enhance_this_time;
			otherwise:
				now F is figure of AI_Enhance_always;
		otherwise if X is 8:
			if C is -1:
				now F is figure of extreme_body_never;
			otherwise if C is 0:
				now F is figure of extreme_body_not_now;
			otherwise if C is 1:
				now F is figure of extreme_body_this_time;
			otherwise:
				now F is figure of extreme_body_always;
		otherwise if X is 9:
			if C is -1:
				now F is figure of big_black_cocks_never;
			otherwise if C is 0:
				now F is figure of big_black_cocks_not_now;
			otherwise if C is 1:
				now F is figure of big_black_cocks_this_time;
			otherwise:
				now F is figure of big_black_cocks_always;
		otherwise if X is 10:
			if C is -1:
				now F is figure of tentacle_never;
			otherwise if C is 0:
				now F is figure of tentacle_not_now;
			otherwise if C is 1:
				now F is figure of tentacle_this_time;
			otherwise:
				now F is figure of tentacle_always;
		otherwise if X is 11:
			if C <= 1:
				decrease C by 1; [this function expects -1 and 0 for never / not now]
			otherwise if the remainder after dividing C by 2 is 1:
				decrease C by 2; [this function expects yes this time to come before always]
			if X is CMS, now BTNS is 8;[Display 8 buttons, not 4]
			if C is -1:
				now F is figure of gross_licking_1_never;
			otherwise if C is 0:
				now F is figure of gross_licking_1_not_now;
			otherwise if C is 1:
				now F is figure of gross_licking_1_this_time;
			otherwise if C is 2:
				now F is figure of gross_licking_1_always;
			otherwise if C is 3:
				now F is figure of gross_licking_2_this_time;
			otherwise if C is 4:
				now F is figure of gross_licking_2_always;
			otherwise if C is 5:
				now F is figure of gross_licking_3_this_time;
			otherwise:
				now F is figure of gross_licking_3_always;
		otherwise if X is 12:
			if C <= 1:
				decrease C by 1; [this function expects -1 and 0 for never / not now]
			otherwise if the remainder after dividing C by 2 is 1:
				decrease C by 2; [this function expects yes this time to come before always]
			if X is CMS, now BTNS is 8;[Display 8 buttons, not 4]
			if C is -1:
				now F is figure of condoms_1_never;
			otherwise if C is 0:
				now F is figure of condoms_1_not_now;
			otherwise if C is 1:
				now F is figure of condoms_1_this_time;
			otherwise if C is 2:
				now F is figure of condoms_1_always;
			otherwise if C is 3:
				now F is figure of condoms_2_this_time;
			otherwise if C is 4:
				now F is figure of condoms_2_always;
			otherwise if C is 5:
				now F is figure of condoms_3_this_time;
			otherwise:
				now F is figure of condoms_3_always;
		otherwise if X is 13:
			if X is CMS, now BTNS is 6;[Display 6 buttons, not 4]
			decrease C by 1;
			if C is -1 or the player is not the donator:
				now F is figure of NPC_gender_1_never;
			otherwise if C is 0:
				now F is figure of NPC_gender_1_not_now;
			otherwise if C is 1:
				now F is figure of NPC_gender_1_this_time;
			otherwise if C is 2:
				now F is figure of NPC_gender_1_always;
			otherwise if C is 3:
				now F is figure of NPC_gender_2_this_time;
			otherwise:
				now F is figure of NPC_gender_2_always;
		otherwise if X is 14:
			if C is -1:
				now F is figure of infamy_never;
			otherwise if C is 0:
				now F is figure of infamy_not_now;
			otherwise if C is 1:
				now F is figure of infamy_this_time;
			otherwise:
				now F is figure of infamy_always;
		otherwise if X is 15:
			if legacy content is 1:
				if X is CMS, now BTNS is 6;[Display 6 buttons, not 4]
			if C is -1:
				now F is figure of slimeshooter_never;
			otherwise if C is 0:
				now F is figure of slimeshooter_not_now;
			otherwise if C is 1 or (C is 3 and legacy content is 0):
				now F is figure of slimeshooter_this_time;
			otherwise if C is 2 or (C > 2 and legacy content is 0):
				now F is figure of slimeshooter_always;
			otherwise if C is 3:
				now F is figure of watersports_this_time;
			otherwise:
				now F is figure of watersports_always;
		otherwise if legacy content is 1 and X is 16:
			if C is -1:
				now F is figure of mythical_never;
			otherwise if C is 0:
				now F is figure of mythical_not_now;
			otherwise if C is 1:
				now F is figure of mythical_this_time;
			otherwise:
				now F is figure of mythical_always;
		otherwise if legacy content is 1 and X is 17:
			if C is -1:
				now F is figure of alcohol_never;
			otherwise if C is 0:
				now F is figure of alcohol_not_now;
			otherwise if C is 1:
				now F is figure of alcohol_this_time;
			otherwise:
				now F is figure of alcohol_always;
		otherwise:
			if C is -1:
				now F is figure of TG_never;
			otherwise if C is 0:
				now F is figure of TG_not_now;
			otherwise if C is 1:
				now F is figure of TG_this_time;
			otherwise:
				now F is figure of TG_always;
		display the image F in the graphics-window at optionX by optionY with dimensions optionW by optionH;
		let TXT be the substituted form of "fet[if X < 10]0[end if][X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from optionX by optionY to (optionX + optionW) by (optionY + optionH) as TXT, ignoring redundant links;
		if X is CMS:
			now CC is C;
			let lineY be optionY - ((14 * H) / 1080);
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at optionX by lineY with size optionW by lineH;
		increase optionX by optionN;
	repeat with BX running from (fetishSelectionTotalOptions + 1) to (fetishSelectionTotalOptions + 3):
		let boxYR be 1000.0 * H / 1080.0;
		let boxY be boxYR to the nearest whole number;
		let boxHR be 55.0 * H / 1080.0;
		let boxY2 be (boxYR + boxHR) to the nearest whole number;
		let boxXR be 679.0 * W / 1920.0;
		let boxX be boxXR to the nearest whole number;
		let boxWR be 146.0 * W / 1920.0;
		let TXT be "fet41";
		if BX is fetishSelectionTotalOptions + 2:
			now boxXR is 846.0 * W / 1920.0;
			now boxX is boxXR to the nearest whole number;
			now boxWR is 230.0 * W / 1920.0;
			now TXT is "fet42";
		otherwise if BX is fetishSelectionTotalOptions + 3:
			now boxXR is 1097.0 * W / 1920.0;
			now boxX is boxXR to the nearest whole number;
			now boxWR is 146.0 * W / 1920.0;
			now TXT is "fet43";
		let boxX2 be (boxXR + boxWR) to the nearest whole number;
		if current menu selection is BX: [draw box over selected bottom button]
			draw a box 16029161 in the graphics-window from boxX by boxY to boxX2 by boxY2 with 2 pixel line-weight, inset;
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from boxX by boxY to boxX2 by boxY2 as TXT, ignoring redundant links;
	[top left corner 115 x 385; top left of next one 216 x 385]
	let buttonYR be 385.0 * H / 1080.0;
	let buttonY be buttonYR to the nearest whole number;
	let buttonHR be 128.0 * H / 1080.0;
	let buttonH be buttonHR to the nearest whole number;
	let buttonXR be 115.0 * W / 1920.0;
	let buttonX be buttonXR to the nearest whole number;
	let buttonWR be 81.0 * W / 1920.0;
	let buttonW be buttonWR to the nearest whole number;
	let buttonNR be 101.0 * W  / 1920.0;
	let buttonN be buttonNR to the nearest whole number;
	[render 4 buttons, and add links]
	unless the player is not the donator and CMS is 13:
		say "CC is [CC].";
		repeat with X running from FBTN to BTNS:
			if X is 1:
				if CC < 0, now F is figure of never_on_buttons;
				otherwise now F is figure of never_off_buttons;
			otherwise if X is 2:
				if CC is 0, now F is figure of not_now_on_buttons;
				otherwise now F is figure of not_now_off_buttons;
			otherwise if X is 3 or X is 5 or X is 7 or X is 9:
				if CC is X - 2, now F is figure of yes_this_time_on_buttons;
				otherwise now F is figure of yes_this_time_off_buttons;
			otherwise:
				if CC is X - 2, now F is figure of always_on_buttons;
				otherwise now F is figure of always_off_buttons;
			display the image F in the graphics-window at buttonX by buttonY with dimensions buttonW by buttonH;
			unless current menu selection > fetishSelectionTotalOptions:
				let TXT be the substituted form of "fet5[X]";
				set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from buttonX by buttonY to (buttonX + buttonW) by (buttonY + buttonH) as TXT, ignoring redundant links;
			increase buttonX by buttonN;



Figure of lactating silicone Selection Backdrop is the file "Special/Menus/lactationbackdrop1.jpg".

To compute new lactating silicone selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 3;
	now fetishSelection is 7;
	let menuItems be 2;
	now current menu selection is 1;
	[wait 50 ms before continuing;]
	close the status window;
	while fetishMenuInProgress is 3:
		update the status line;
		refresh the graphics-window;
		let __x be the chosen letter;
		if __x is 81 or __x is 113 or __x is -6 or __x is 13 or __x is 32 or candidate replacement command is "quit":
			now fetishMenuInProgress is 0;
			now waitingForChar is false;
		otherwise if __x is -2 or __x is -5: [up or right]
			if current menu selection is 1, now previous menu selection is 1;
			if current menu selection is greater than 1, decrease current menu selection by 1;
			otherwise now current menu selection is menuItems;
		otherwise if __x is -3 or __x is -4: [down or left]
			if current menu selection is menuItems, now previous menu selection is menuItems;
			if current menu selection is less than menuItems, increase current menu selection by 1;
			otherwise now current menu selection is 1;
	if current menu selection is 1:
		now choice in row 84 of the Table of Player Options is 1;
	otherwise:
		now choice in row 84 of the Table of Player Options is 0;
	now current menu selection is 1;
	close the graphics-window;
	open the status window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To render full new lactating silicone selection menu:
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W1 be W / 2;
	display the image Figure of lactating silicone Selection Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	repeat with X running from 1 to 2:
		let X1 be 1;
		let X2 be W1 + 1;
		if X > 1:
			increase X1 by W1;
			increase X2 by W1;
		let TXT be the substituted form of "fet6[X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from X1 by 1 to X2 by H as TXT, ignoring redundant links;
		if X is current menu selection:
			let lineY be (175 * H) / 1080;
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at X1 by lineY with size (X2 - X1) by lineH;





Figure of random benefits Selection Backdrop is the file "Special/Menus/randombackdrop1.jpg".

To compute new random benefits selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 3;
	now fetishSelection is 8;
	let menuItems be 2;
	now current menu selection is 1;
	[wait 50 ms before continuing;]
	close the status window;
	while fetishMenuInProgress is 3:
		update the status line;
		refresh the graphics-window;
		let __x be the chosen letter;
		if __x is 81 or __x is 113 or __x is -6 or __x is 13 or __x is 32 or candidate replacement command is "quit":
			now fetishMenuInProgress is 0;
			now waitingForChar is false;
		otherwise if __x is -2 or __x is -5: [up or right]
			if current menu selection is 1, now previous menu selection is 1;
			if current menu selection is greater than 1, decrease current menu selection by 1;
			otherwise now current menu selection is menuItems;
		otherwise if __x is -3 or __x is -4: [down or left]
			if current menu selection is menuItems, now previous menu selection is menuItems;
			if current menu selection is less than menuItems, increase current menu selection by 1;
			otherwise now current menu selection is 1;
	if current menu selection is 1:
		now quick start is 1;
	otherwise:
		now quick start is 0;
	now current menu selection is 1;
	close the graphics-window;
	open the status window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To render full new random benefits selection menu:
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W1 be W / 2;
	display the image Figure of random benefits Selection Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	repeat with X running from 1 to 2:
		let X1 be 1;
		let X2 be W1 + 1;
		if X > 1:
			increase X1 by W1;
			increase X2 by W1;
		let TXT be the substituted form of "fet6[X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from X1 by 1 to X2 by H as TXT, ignoring redundant links;
		if X is current menu selection:
			let lineY be (330 * H) / 1080;
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at X1 by lineY with size (X2 - X1) by lineH;

Fetish Settings ends here.
