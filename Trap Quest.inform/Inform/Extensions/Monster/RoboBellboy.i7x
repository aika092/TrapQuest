RoboBellboy by Monster begins here.

A robobellboy is a kind of robot. Understand "bellboy", "bell", "boy" as robobellboy. A robobellboy is usually intelligent. The favour of a robobellboy is usually 11. The leftover-type of a robobellboy is usually 117. A robobellboy has a number called whore-intent.

Figure of robobellboy is the file "NPCs/Hotel/Robot/robobellboy1.png".

Figure of RoboBellboy Cutscene 1 is the file "Special/Cutscene/cutscene-robobellboy-perception1.png".

speedy robobellboy is a robobellboy. The text-shortcut of speedy robobellboy is "sbe".
whirring robobellboy is a robobellboy. The text-shortcut of whirring robobellboy is "wbe".
mechanical robobellboy is a robobellboy. The text-shortcut of mechanical robobellboy is "mbe".
wheeled robobellboy is a robobellboy. The text-shortcut of wheeled robobellboy is "wrb".

To say ShortDesc of (M - a robobellboy):
	say "RoboBellboy".

To say MediumDesc of (M - speedy robobellboy):
	say "speedy RoboBellboy".
To say MediumDesc of (M - whirring robobellboy):
	say "whirring RoboBellboy".
To say MediumDesc of (M - mechanical robobellboy):
	say "mechanical RoboBellboy".
To say MediumDesc of (M - wheeled robobellboy):
	say "wheeled RoboBellboy".

To decide which figure-name is the monster-image of (M - a robobellboy):
	decide on figure of robobellboy.

To say MonsterDesc of (M - a robobellboy):
	say "A small, human-shaped robot with a red uniform stylishly painted onto [his of M] clunky body. The words '[if item described is mechanical robobellboy]Bell-Bot 1.3[otherwise if the item described is whirring robobellboy]Bellomatic 4000[otherwise if the item described is wheeled robobellboy]Peon Unit 4.0[otherwise if the item described is speedy robobellboy]BellTron 58[otherwise]BellTron 001[end if]' are printed directly onto [his of M] metal chassis, which has a seam running straight down the centre, allowing it to open up like a door. [big he of M] has two bulging [']eyes['], which glow faintly as [he of M] hobbles around noisily on clumsy mechanical legs. You can occasionally hear small bits of radio feedback from the dimpled antennae on top, which seem to correspond with tiny micro-movements of [his of M] oversized, accordion-like torso.".

To set up (M - a robobellboy):
	reset M;
	now the monstersetup of M is 1;
	add mechanical joint to the banishItems of M, if absent;
	now the target-room of M is the location of a random on-stage hotel bed;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - robobellboy):
	decide on 6.

To decide which room is the nearest patron:
	let D be 100;
	let H be Hotel01;
	repeat with B running through hotel bed:[wouldn't it be better to search outward through nearby rooms until we find the closest bed? Selkie's thought: normally not, but I recall there's some inbuilt shortest-route finder functionality offered by inform, and that should be fast. See http://inform7.com/learn/man/WI_6_14.html] [Aika: I'm pretty sure that assessing the shortest route of every single room until we find one with a brothel bed would take longer on average than just checking the shortest route of each brothel bed, which is what we do at the moment.]
		let N be the distance of the location of B;
		if N < D and N >= 0:
			now H is the location of B;
			now D is N;
	decide on H.

[This is the spawn initial robobellboy rule:
	if the number of alive robobellboys is 0:
		if debugmode > 0, say "Summoning bellboy in hotel.";
		let M be a random robobellboy;
		while M is senior robobellboy:[never the first one to spawn.]
			now M is a random robobellboy;
		summon M in the hotel.
The spawn initial robobellboy rule is listed in the setting up hotel monsters rules.]

Part 1 - Misc Flavour

To say SummoningFlav of (M - a robobellboy):
	if M is in the location of the player:
		say "The teleporter emits a definitive sounding hum, and light fills the room as a small, human-shaped robot materialises on the pad.[line break][first custom style]'ALLOW ME TO HELP YOU WITH THAT.'[roman type][line break]";
	otherwise:
		say "You hear the sound of a robotic voice coming from elsewhere in the hotel.[line break][first custom style]'ALLOW ME TO HELP YOU WITH THAT.'[roman type][line break]".

To say LeftoverDesc (N - 117):
		say "There is a pile of mangled nuts and bolts here that used to be a fully functional robobellboy.[line break]".

Part 2 - Perception

To compute perception of (M - a robobellboy):
	say "[BigNameDesc of M] notices you!";
	if there is a worn messed knickers:
		say "[first custom style]'NEARBY MESSY [if there is a worn diaper]DIAPER[otherwise]UNDERWEAR[end if] DETECTED. [caps please] ASSUME THE NAPPY INSPECTION SUBMISSION POSITION.'[roman type][line break]";
		anger M;
		if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
	otherwise if the class of the player is maid or the player is hotel employed:
		say "[first custom style]'SERVANT, YOUR SERVICES ARE REQUIRED.'[roman type][line break]";
		anger M;
	otherwise if M is babifying the player:
		say "[big his of M] eyes turn red.[line break][first custom style][unless the class of the player is succubus]'LITTLE ONE, YOUR CLIENTS ARE WAITING. [caps please] ALLOW ME TO ESCORT YOU.'[otherwise]'THE CREATOR REQUESTS YOUR ASSISTANCE IN FUNDING THIS HOTEL.'[end if][roman type][line break]";
		anger M;
	otherwise if M is objectifying the player:
		if the times-submitted of pimp > 0:
			say "[big his of M] eyes turn red.[line break][speech style of M]'PART-TIME WHORE. [caps please] ALLOW ME TO MAKE USE OF YOUR SERVICES.'[roman type][line break]";
		otherwise:
			say "[big his of M] eyes turn red.[line break][speech style of M][unless the class of the player is succubus]'FREELANCE WHORE. [caps please] ALLOW ME TO MAKE USE OF YOUR SERVICES.'[otherwise]'THE CREATOR REQUESTS YOUR ASSISTANCE IN FUNDING THIS HOTEL.'[end if][roman type][line break]";
		anger M;
	otherwise if the class of the player is not catgirl and the class of the player is not puppygirl and (the number of worn crotch covering clothing is 0 or the number of worn breast covering clothing is 0):
		say "[big his of M] eyes turn red.[line break][first custom style][unless the class of the player is succubus]'YOU REQUIRE CLOTHING. ALLOW ME TO ASSIST YOU.'[otherwise]'THE CREATOR CONSIDERS IT IMPROPER FOR [caps his of demon lord] SERVANTS TO BE NUDE. ALLOW ME TO ASSIST YOU.'[end if][roman type][line break]";
		cutshow Figure of RoboBellboy Cutscene 1 for M;
		anger M;
	otherwise:
		say "[big he of M] appears to be completely uninterested in you and continues on [his of M] way.";
		bore M;
	if M is interested, now target-room of M is the nearest patron.[for some reason this function has pretty insane hang time on it, so I moved it into a place will it will trigger less frequently]

Definition: a senior robobellboy is objectifying the player:
	if the employee-record of it < 0, decide yes;
	decide no.

To compute perception of (M - senior robobellboy):
	if there is a worn messed knickers:
		say "[first custom style]'NEARBY MESSY [if there is a worn diaper]DIAPER[otherwise]UNDERWEAR[end if] DETECTED. [caps please] ASSUME THE NAPPY INSPECTION SUBMISSION POSITION.'[roman type][line break]";
		if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
	otherwise if diaper quest is 1:[eventually he should have training for diaper quest players too.]
		say "[big he of M] appears to be completely uninterested in you and continues on [his of M] way.";
		bore M;
	otherwise if the training-progress of M > 2:
		say "[big his of M] eyes turn red.[line break][speech style of M]'GOOD GOING TRAINEE. [caps please] KNEEL FOR YOUR TRAINING COMPLETION CEREMONY.'[roman type][line break]";
	otherwise if (the player is a trained hooker or the class of the player is succubus) and the refractory-period of mechanic + the refractory-period of demon lord <= 0:
		say "[big his of M] eyes turn red.[line break][speech style of M]'HELLO EMPLOYEE. SUBMIT IMMEDIATELY FOR PERFORMANCE REVIEW.'[roman type][line break]";
	otherwise if the class of the player is maid or the player is a hooker in training:
		say "[big his of M] eyes turn red.[line break][speech style of M]'HELLO TRAINEE. [caps please] SUBMIT FOR FURTHER PERFORMANCE OPTIMISATION.'[roman type][line break]";
	otherwise if the class of the player is succubus:
		say "[big his of M] eyes flicker red, then green.[line break][speech style of M]'HELLO HONOURED EMPLOYEE. [caps please] DO NOT HURT ME.'[roman type][line break][big he of M] appears to lose interest and continues on [his of M] way.";
		bore M;
	otherwise if M is babifying the player:
		say "[big his of M] eyes turn red.[line break][speech style of M]'LITTLE ONE, YOUR CLIENTS ARE WAITING. [caps please] ALLOW ME TO ESCORT YOU.'[roman type][line break]";
	otherwise if M is objectifying the player:
		say "[big his of M] eyes turn red.[line break][speech style of M]'HELLO NEW TRAINEE. SEVERAL COMPLAINTS HAVE BEEN MADE OF YOUR LACKLUSTRE DEDICATION. SUBMIT IMMEDIATELY FOR PERFORMANCE OPTIMISATION.'[roman type][line break]";
	otherwise if the class of the player is not catgirl and the class of the player is not puppygirl and (the number of worn crotch covering clothing is 0 or the number of worn breast covering clothing is 0):
		say "[big his of M] eyes turn red.[line break][speech style of M]'ERROR LINE 34, PATRON UNSUITABLE. INITIALISING EJECTION PROTOCOL... ERROR... ERROR... HELLO NEW TRAINEE. [caps please] SUBMIT IMMEDIATELY FOR PERFORMANCE OPTIMISATION.";
	otherwise:
		say "[speech style of M]'HELLO TREASURED CUSTOMER. [caps please] ALLOW THE BUTLER TO ASSIST YOU.'[roman type][line break][big he of M] appears to lose interest and continues on [his of M] way.";
		bore M;
	if M is interested:
		anger M;
		now target-room of M is the nearest patron.

Part 3 - Combat

Section 1 - Attack

To compute damaging attack of (M - a robobellboy):
	if the player is the donator and (the difficulty of M > the starting difficulty of M + 1 or M is senior robobellboy) and M is wrangling a body part:
		compute shredding attack of M;
	otherwise:
		if the player is the donator and (the difficulty of M > the starting difficulty of M + 1 or M is senior robobellboy) and a random number between 1 and 5 is 1 and M is not wrangling a body part, compute grabbing attack of M;
		otherwise compute striking attack of M.

To compute shredding attack of (M - a robobellboy):
	let C be a random worn tearable clothing;
	if C is trainee bra, now C is nothing;
	if C is trainee thigh highs, now C is nothing;
	if C is headgear, now C is nothing;
	if C is clothing and C is not super-slutty-bra and C is not super-slutty-knickers and C is not nudism-enabling or C is cursed:
		say "[speech style of M]'ERROR, SERVANT ATTIRE UNSUITABLE. REMOVING.'[roman type][line break][BigNameDesc of M] pulls a pair of scissors from its chest compartment and cuts apart your [ShortDesc of C]!";
		destroy C;
	otherwise:[If we pick a clothing we don't want to destroy, just do a normal attack.]
		compute striking attack of M.

To compute grabbing attack of (M - a robobellboy):
	say "[speech style of M]'UNACCEPTABLE RESISTANCE DETECTED. INITIATING AUXILARY RESTRAINT PROTOCOL.'[roman type][line break][BigNameDesc of M]'s eyes flash as [he of M] rushes towards you! [run paragraph on]";
	if the accuracy roll of M >= the dexterity of the player:
		say "You aren't quick enough to avoid [him of M], and [FuckerDesc of M] latches onto your leg!";
		now M is wrangling thighs;
	otherwise:
		say "You're just quick enough to avoid [him of M].";

The latex punishment rule of a robobellboy is usually the no latex punishment rule.

The unique punishment rule of a robobellboy is usually the robobellboy punishment rule.
This is the robobellboy punishment rule:
	if the player is at least partially immobile:
		say "[one of][BigNameDesc of current-monster] waits beside you patiently.[or][cycling]";
	otherwise if there is a worn messed knickers:
		compute change forcing of current-monster;
	if current-monster is senior robobellboy:
		compute trainee forcing of current-monster;
	otherwise if the class of the player is maid:
		compute maid forcing of current-monster;
	otherwise if the whore-intent of current-monster is 1 or the bimbo of the player > 13 or the number of worn crotch covering clothing > 0 and the number of worn breast covering clothing > 0:
		compute whore forcing of current-monster;
	otherwise:
		compute clothes forcing of current-monster;
	rule succeeds.

To compute trainee forcing of (M - a robobellboy):
	if the training-progress of senior robobellboy is -1:
		compute whore forcing of M;
	let C be a random off-stage trainee bra;
	let D be C;
	let T be a random off-stage trainee thigh highs;
	if C is clothing and C is actually summonable:
		summon C;
		say "[BigNameDesc of M] opens [his of M] chest compartment and pulls out a [C]! You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as [he of M] forces the item onto your body, where the straps snap together and emit a small tone that worries you.";
		bore M;
		FavourUp M;
	otherwise if trainee hood is off-stage and trainee hood is actually summonable:
		summon trainee hood;
		say "[BigNameDesc of M] opens [his of M] chest compartment and pulls out a [ShortDesc of trainee hood]. You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as [he of M] forces it over your head, where a metal latch snaps closed and emits a short and somehow ominous tone.";
		now D is trainee hood;
	otherwise if T is clothing and T is actually summonable:
		summon T;
		say "[BigNameDesc of M] opens [his of M] chest compartment and pulls out a pair of [printed name of T]! You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as [he of M] forces them onto your body, where they emit a short tone and cling to your skin like glue.";
		now D is T;
	if D is worn:
		say "[first custom style]'[caps please] BE MORE CONSCIOUS OF YOUR PERFORMANCE IN THE FUTURE.'[roman type][line break]";
		decrease the training-progress of D by 2;
		now the employee-record of senior robobellboy is 0;
		satisfy M;
	otherwise:
		compute clothes forcing of M.

To compute maid forcing of (M - a robobellboy):
	[One day I want to code a unique punishment for maids, once I've thought of a good one.]
	compute whore forcing of M.[Selkie says: I think it might be fun if the bellboy drags the player through the hotel, forcing them to clean up all the dirty floors with their tongue][Selkie thinks a scene where you're dragged through to polish and clean various parts of the hotel would be fun. It could choose randomly between lovingly cleaning the dildo seat, the modification machine, the hypno screens, the dominatrix's X-frame, the toilets, ...polishing the cocks of the robots, cleaning the portal and then being dragged away before you could use it to escape. Just humiliating scenes. Maybe one where you have to wash a dirty patron, or make the bed or wash the semen-stained sheets from one of the rooms. Let me know if you'd like me to write them. You'd either need to select only rooms visited, or else say they're dragged so quickly from room to room they can't remember the confusing turns that got them to places they hadn't visited.] [Aika: Dragging code automatically works out a path and then flags all the rooms along that path as discovered, so the turns aren't that confusing.]

To compute whore forcing of (M - a robobellboy):
	now the target-room of M is the location of a random on-stage hotel bed;
	if the location of the player is the target-room of M or there is a hotel bed in the location of the player:
		say "[first custom style]'YOUR CLIENTS WILL BEGIN ARRIVING SHORTLY.'[roman type][line break]";
		bore M for 400 seconds;
		FavourUp M;
		now the whore-intent of M is 0;
		repeat with N running through monsters in the location of the player:
			compute mandatory room leaving of N;
		let H be a random hotel bed in the location of the player;
		compute PatronSpawning of H;
		if the sex addiction of the player < 9, say "[one of][line break][variable custom style]That fucking robot! What has [he of M] got me into?![roman type][line break][or][stopping]";
	otherwise:
		drag to the target-room of M by M.

To say DragArrival of (M - a robobellboy) to (R - a room):
	say "[first custom style]'WE HAVE ARRIVED.'[roman type][line break]".

To compute change forcing of (M - a robobellboy):
	if the location of the player is not Hotel20:
		drag to Hotel20 by M;
	say "[first custom style]'FULL CHANGING PROCESS ENGAGED. [caps please] RELAX.'[roman type][line break]";
	bore M for 400 seconds;
	now the whore-intent of M is 0;
	let ACS be a random automated changing station in Hotel20;
	if ACS is a thing:
		now auto is 1;
		compute furniture resting on ACS;
		now auto is 0;
	otherwise:
		compute LaundryRobots.

To compute clothes forcing of (M - a robobellboy):
	if a random number between 1 and 2 is 1 and the number of worn breast covering clothing is 0:
		compute bra forcing of M;
	otherwise if the number of worn crotch covering clothing is 0:
		compute knickers forcing of M;
	otherwise:
		compute bra forcing of M.

Definition: a clothing (called C) is super-slutty-bra:
	if C is unique or C is rare, decide no;
	if C is ridiculously low cut or lower and diaper quest is 0, decide yes;
	if C is breast covering and C is actually sheer, decide yes;
	decide no.

[You could put a test for "the number of worn breast covering clothing is 0" in here as the first test, but it's not necessary since "actual summonable clothing" checks to see if there's anything worn there.]
To compute bra forcing of (M - a robobellboy):
	let C be a random off-stage super-slutty-bra clothing;
	let N be 0;
	while C is not actually summonable and N < 25:
		now C is a random off-stage super-slutty-bra clothing;
		increase N by 1;
	if C is actually summonable clothing:
		if the player is the donator and the difficulty of M > the starting difficulty of M and a random number between 1 and 5 is 1 and C is gluable, now C is glued;
		say "[BigNameDesc of M] opens up [his of M] chest compartment and pulls out a [ShortDesc of C]! You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as [he of M] forces the item onto your body, where it sticks to your skin like glue. [if C is glued]Unfortunately, [FuckerDesc of M] isn't satisfied with it being [italic type]like[roman type] glue, and applies a translucent adhesive to the garment before finally[otherwise]After this, [NameDesc of M] seems to be happy[end if] leaving you alone.";
		summon C cursed with quest;
		bore M;
		FavourUp M;
	otherwise:
		compute failed forcing of M.

Definition: a clothing (called C) is super-slutty-knickers:
	if C is unique or C is rare, decide no;
	if C is diaper:
		if diaper lover >= 1, decide yes;
		decide no;
	if C is crotch covering and (C is actually sheer or C is no protection or C is pussy protection), decide yes;
	decide no.

To compute knickers forcing of (M - a robobellboy):
	let C be a random off-stage super-slutty-knickers clothing;
	let N be 0;
	while C is not actually summonable and N < 25:
		now C is a random off-stage super-slutty-knickers clothing;
		increase N by 1;
	if C is actually summonable clothing:
		if the player is the donator and the difficulty of M > the starting difficulty of M and a random number between 1 and 5 is 1, now C is glued;
		say "[BigNameDesc of M] opens up [his of M] chest compartment and pulls out a [ShortDesc of C]! You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as [he of M] forces the item u, where it sticks to your skin like glue. [if C is glued]Unfortunately, [FuckerDesc of M] isn't satisfied with it being [italic type]like[roman type] glue, and applies a translucent adhesive to the garment before finally[otherwise]After this, [NameDesc of M] seems to be happy[end if] leaving you alone.";
		summon C cursed with quest;
		bore M;
		FavourUp M;
	otherwise:
		compute failed forcing of M.

To compute failed forcing of (M - a robobellboy):
	now the whore-intent of M is 1;
	say "[BigNameDesc of M] seems to pause for a moment, and then seems to change his mind in how to deal with you.[line break][first custom style]'UNABLE TO SELECT SUITABLE FETISH ATTIRE; CLIENT WILL HAVE TO STAY NUDE. [if diaper quest is 1]BABY SLAVE[otherwise]PROSTITUTION[end if] DUTIES PROGRAM ENGAGED.'[roman type][line break]";
	compute whore forcing of M.

To uniquely destroy (M - a robobellboy): [Are there any special rules we need to follow?]
	now the whore-intent of M is 0.

Section 2- DQ

Definition: a robobellboy (called M) is willing to change diapers:
	if there is worn messed knickers, decide yes;
	decide no.

To compute diaper change of (M - a robobellboy):
	compute change forcing of M.

bellboy-forced-bed is a diaper punishment. The priority of bellboy-forced-bed is 2.
Definition: a bellboy-forced-bed (called P) is appropriate:
	if current-monster is not robobellboy, decide no;
	if the player is at least partially immobile, decide no;
	[if the cringe appearance of the player < 5, decide no;]
	decide yes.

To compute punishment of (P - bellboy-forced-bed):
	compute whore forcing of current-monster.

bellboy-forced-clothing is a diaper punishment. The priority of bellboy-forced-clothing is 3.
Definition: a bellboy-forced-clothing (called P) is appropriate:
	if current-monster is not robobellboy, decide no;
	if current-monster is babifying the player and the player is not immobile, decide no; [Will do whore forcing regime instead.]
	if the class of the player is not catgirl and the class of the player is not puppygirl and (the number of worn crotch covering clothing is 0 or the number of worn breast covering clothing is 0), decide yes;
	decide no.

To compute punishment of (P - bellboy-forced-clothing):
	compute clothes forcing of current-monster.

Part 4 - Conversation

Section 1 - Greeting

[To compute basic greeting to (M - a robobellboy):
	if M is interested:
		say VanityGreeting to M;
	otherwise:
		if the times-met of M < 2, say FirstGreeting to M;
		otherwise say RepeatGreeting to M;
		now the boredom of M is 0;
		compute correct perception of M.]

To say FirstResponse of (M - a robobellboy):
	say "[first custom style]'GREETINGS [robogreeting].'[roman type][line break]";

To say RepeatResponse of (M - a robobellboy):
	if M is unconcerned:
		say "[first custom style]'GREETINGS [robogreeting].'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] ignores you.";

Section 2 - Questioning

To compute answer of (M - a robobellboy):
	if M is unfriendly:
		say "[first custom style]'[caps please] [if the player is upright]KNEEL[otherwise]WAIT[end if], AND ALLOW ME TO ASSIST YOU.'[roman type][line break]";
	otherwise:
		say "[first custom style]'[caps please] ASK THE BUTLER FOR ASSISTANCE, [robogreeting].'[roman type][line break]".

Part 5 - Variants

Section 1 - Senior Robobellboy

senior robobellboy is a robobellboy. senior robobellboy has a number called training-progress. The training-progress of senior robobellboy is 0. senior robobellboy has a number called employee-record. The employee-record of senior robobellboy is 0. The text-shortcut of senior robobellboy is "srb".

To decide which number is the starting difficulty of (M - senior robobellboy):
	decide on 8.

To say ShortDesc of (M - senior robobellboy):
	say "senior RoboBellboy".
To say MediumDesc of (M - senior robobellboy):
	say "senior RoboBellboy".

To ProgressUp (M - senior robobellboy):
	if the training-progress of M >= 0, increase the training-progress of M by 1;
	if the training-progress of M >= 3, say "You hear a computerised voice speaking in your head.[line break][second custom style][if the player is a trained hooker]CONGRATULATIONS ON COMPLETING YOUR IMPROVEMENT PROGRAM, EMPLOYEE. ALWAYS KEEP IMPROVING[otherwise]CONGRATULATIONS, TRAINEE. YOU HAVE COMPLETED [training-progress of M] EMPLOYEE IMPROVEMENT PROGRAMS. [caps please] SEE THE SENIOR ROBOBELLBOY FOR CERTIFICATION[end if].'[roman type][line break]";

To compute unique banishment of (M - senior robobellboy):
	let L be a random off-stage leftover;
	now the leftover-type of L is the leftover-type of M;
	now L is in the location of the player;
	repeat with H running through worn clothing:
		if H is trainee hood or H is trainee bra or H is trainee thigh highs, demagnetise H.

To compute trainee forcing of (M - senior robobellboy):
	if there is a worn free ride tattoo and the training-progress of M is 3, now the training-progress of M is -1;
	if the training-progress of M > 2:
		say "[BigNameDesc of M] pauses and [his of M] eyes shift from red to yellow.[line break][speech style of M]ADVANCED TRAINEE DETECTED. ADMINISTERING INSIGNIA OF QUALITY.[roman type][line break][big he of M] seizes you by the wrists, holding you tightly as [his of M] chest compartment opens up.";
		if there is a worn tattoo:
			let T be a random off-stage crotch tattoo;
			if T is drawable and the concealer of T is nothing:
				summon T;
				say "A tiny needle shoots out, moving rapidly as it prints a [printed name of T] onto the skin above your [genitals].";
			otherwise if free ride tattoo is not worn:
				say "A tiny needle shoots out toward your face, moving rapidly as it prints the words 'Free Ride' onto your right cheek.";
				summon free ride tattoo;
			otherwise:
				say "[big he of M] seems to struggle to find an appropriate tattoo template and closes the compartment again silently.";
		otherwise:
			say "[big he of M]'s motionless for a second, then [he of M] closes [his of M] chest compartment without releasing you.[line break][speech style of M]'ERROR LINE 35, CANVAS UNSUITABLE... ADMINISTERING FINAL EXAM'[roman type][line break]";
			compute whore forcing of M;
		now the training-progress of M is -1;
		bore M;
	otherwise if the training-progress of M is -1:
		compute whore forcing of M;
	otherwise if a random number between 1 and 2 is 1 and the number of worn breast covering clothing is 0:
		compute bra forcing of M;
	otherwise if the number of worn leg covering clothing is 0:
		compute knickers forcing of M;
	otherwise:
		compute headgear forcing of M.

To compute headgear forcing of (M - senior robobellboy):
	if trainee hood is off-stage and trainee hood is actually summonable:
		summon trainee hood;
		say "[BigNameDesc of M] opens up [his of M] chest compartment and pulls out a [ShortDesc of trainee hood]. You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as [he of M] forces it over your head, where a metal latch snaps closed and emits a short and somehow ominous tone.[line break][first custom style]'APPEARANCE REGIMEN INITIATED. [caps please] WAIT PATIENTLY FOR FURTHER OPTIMISATION.[roman type][line break]";
		FavourUp M;
	otherwise:
		say "[BigNameDesc of M] pauses and [his of M] eyes shift from red to green.[line break][first custom style]'CANNOT EXCEED MAXIMUM NUMBER OF ONGOING [']CLASS['] PROGRAMS. [caps please] REPORT BACK ONCE YOU HAVE REMOVED YOUR HEADWEAR.'[roman type][line break]";
	bore M.

To compute bra forcing of (M - senior robobellboy):
	let C be a random off-stage trainee bra;
	if C is clothing and C is actually summonable:
		summon C;
		say "[BigNameDesc of M] opens up [his of M] chest compartment and pulls out a [ShortDesc of C]! You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as [he of M] forces the item onto your body, where the straps snap together and emit a small tone that worries you.[line break][first custom style]MAMMARY IMPROVEMENT REGIMEN INITIATED. [caps please] WAIT PATIENTLY FOR FURTHER OPTIMISATION.[roman type][line break]";
		bore M;
		FavourUp M;
	otherwise:
		compute headgear forcing of M.

To compute knickers forcing of (M - senior robobellboy):
	let C be a random off-stage trainee thigh highs;
	if C is clothing and C is actually summonable:
		summon C;
		say "[BigNameDesc of M] opens up [his of M] chest compartment and pulls out a pair of [ShortDesc of C]! You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as [he of M] forces them onto your body, where it clings to your skin like glue.[line break][first custom style]'FULL MENTAL REGIMEN INITIATED. [caps please] WAIT PATIENTLY FOR FURTHER OPTIMISATION.'[roman type][line break]";
		bore M;
		FavourUp M;
	otherwise:
		compute headgear forcing of M.

To compute whore forcing of (M - senior robobellboy):
	let D be a random alive mechanic;
	unless D is monster, now D is a random alive demon lord;
	if D is monster and the refractory-period of D <= 0:
		if D is not in the location of the player:
			drag to (the location of D) by M;
		otherwise:
			say "[speech style of M]'HELLO SIR. I HAVE BROUGHT THIS ONE IN TIME FOR YOUR BI-HOURLY EMPLOYEE REVIEW.'[roman type][line break][BigNameDesc of M] lets go and starts to leave as [if D is mechanic]the [D] turns around with a cocky grin, unzipping [his of D] pants.[line break][speech style of D]'Guess it's my responsibility to take care of this, huh?'[roman type][line break][otherwise]the [D] turns around stroking [his of D] enormous [manly-penis].[line break][speech style of D]'[one of]EVEN I HAVE RESPONSIBILITIES[or]YOU FAIL! BUT I'M GOING TO FUCK YOU ANYWAY[or]YOU PASS! TIME TO CELEBRATE[at random]! HA HA HA!'[roman type][line break][end if][line break]";
			now D is interested;
			anger D;
			bore M;
	otherwise if the location of the player is the target-room of M:
		say "[first custom style]'YOUR CLIENTS WILL BEGIN ARRIVING SHORTLY.'[roman type][line break]";
		bore M for 400 seconds;
		FavourUp M;
		now the whore-intent of M is 0;
		repeat with N running through monsters in the location of the player:
			compute mandatory room leaving of N;
		let H be a random hotel bed in the location of the player;
		compute PatronSpawning of H;
		if the sex addiction of the player < 9, say "[one of][line break][variable custom style]That fucking robot! What has [he of M] got me into?![roman type][line break][or][stopping]";
	otherwise:
		drag to nearest patron by M.

To compute failed forcing of (M - senior robobellboy):
	now the whore-intent of M is 1;
	say "[BigNameDesc of M] seems to pause for a moment, and then seems to change his mind in how to deal with you.[line break][first custom style]'UNABLE TO UPGRADE PERFORMANCE. PROSTITUTE MAY BE FULLY UPGRADED. PROSTITUTION DUTIES PROGRAM ENGAGED.'[roman type][line break]";
	compute whore forcing of M.

RoboBellboy ends here.
