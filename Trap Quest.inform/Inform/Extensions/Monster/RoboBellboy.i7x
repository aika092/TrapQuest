RoboBellboy by Monster begins here.

A robobellboy is a kind of robot.  A robobellboy is usually hotel dwelling.   Understand "bellboy", "bell", "boy" as robobellboy.  A robobellboy is usually intelligent.  The favour of a robobellboy is usually 11.  The leftover-type of a robobellboy is usually 117.

Figure of robobellboy is the file "robobellboy1.png". The description of robobellboy is usually "[RoboBellboyDesc]".

speedy robobellboy is a kind of robobellboy.  There is 1 speedy robobellboy.
The printed name of speedy robobellboy is "[if item described is in the location of the player][TQlink of item described][end if][input-style]speedy RoboBellboy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of speedy robobellboy is "sbe". 
whirring robobellboy is a kind of robobellboy.  There is 1 whirring robobellboy.
The printed name of whirring robobellboy is "[if item described is in the location of the player][TQlink of item described][end if][input-style]whirring RoboBellboy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of whirring robobellboy is "wbe". 
mechanical robobellboy is a kind of robobellboy.  There is 1 mechanical robobellboy.
The printed name of mechanical robobellboy is "[if item described is in the location of the player][TQlink of item described][end if][input-style]mechanical RoboBellboy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of mechanical robobellboy is "mbe". 
wheeled robobellboy is a kind of robobellboy.  There is 1 wheeled robobellboy.
The printed name of wheeled robobellboy is "[if item described is in the location of the player][TQlink of item described][end if][input-style]wheeled RoboBellboy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of wheeled robobellboy is "wrb". 

To say RoboBellboyDesc:
	if images visible is 1, display figure of robobellboy;
	say "A small, bucket-shaped robot with a red uniform stylishly painted onto its clunky body. The words  '[if item described is mechanical robobellboy]Bell-Bot 1.3[otherwise if the item described is whirring robobellboy]Bellomatic 4000[otherwise if the item described is wheeled robobellboy]Peon Unit 4.0[otherwise if the item described is speedy robobellboy]BellTron 58[end if]' are printed directly onto its metal chassis, which has a seam running straight down the center, allowing it to open up like a door. It has a single, rectangular [']eye['], which glows faintly as it glides around silently on a single, oversized wheel. You can occasionally hear small bits of radio feedback from the dimpled antennae on top, which seem to correspond with tiny micro-movements of its oversized, accordion-like arms.".

To set up (M - a robobellboy):
	reset M;
	now the monstersetup of M is 1;
	now the target-room of M is the location of a random on-stage HotelBedPatrons;
	now the difficulty of M is 5;
	now the health of M is the maxhealth of M.

To decide which room is the nearest patron:
	let D be 100;
	let H be Hotel01;
	repeat with B running through HotelBedPatrons:[wouldn't it be better to search outward through nearby rooms until we find the closest bed?]
		if the distance of the location of B < D and the distance of the location of B >= 0:
			now H is the location of B;
			now D is the distance of the location of B;
	decide on H.

This is the spawn initial robobellboy rule:
	if the number of alive robobellboys is 0:
		if debugmode > 0, say "Summoning bellboy in hotel.";
		let M be a random robobellboy;
		while M is senior robobellboy:[never the first one to spawn.]
			now M is a random robobellboy;
		summon M in the hotel.
The spawn initial robobellboy rule is listed in the setting up hotel monsters rules.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a robobellboy):
	say "You hear the sound of a robotic voice coming from elsewhere in the hotel.  [first custom style]'ALLOW ME TO HELP YOU WITH THAT.'[roman type][line break]".

To say LeftoverDesc (N - 117):
		say "There is a pile of mangled nuts and bolts here that used to be a fully functional robobellboy.[line break]".

Part 2 - Perception

To compute perception of (M - a robobellboy):
	say "The [M] notices you!";
	if there is a worn messed knickers:
		say "[first custom style]'NEARBY MESSY [if there is a worn diaper]DIAPER[otherwise]UNDERWEAR[end if] DETECTED.  PLEASE ASSUME THE NAPPY INSPECTION SUBMISSION POSITION.'[roman type][line break]";
		anger M;
	if the employee-record of senior robobellboy > 3:
		say "Its eyes turn red. [speech style of M]'YOUR PERFORMANCE HAS RECEIVED BAD REVIEWS. PLEASE ALLOW ME TO ADMINISTER TRAINING.'[roman type][line break]";
	otherwise if the class of the player is maid or the class of the player is hotel employment:
		say "[first custom style]'SERVANT, YOUR SERVICES ARE REQUIRED.'[roman type][line break]";
		anger M;
	otherwise if M is babifying the player:
		say "Its eyes turn red.  [first custom style][unless the class of the player is succubus]'LITTLE ONE, YOUR CLIENTS ARE WAITING.  PLEASE ALLOW ME TO ESCORT YOU.'[otherwise]'THE CREATOR REQUESTS YOUR ASSISTANCE IN FUNDING THIS HOTEL.'[end if][roman type][line break]";
		anger M;
	otherwise if M is objectifying the player:
		if the times-fucked of a random pimp > 0:
			say "Its eyes turn red. [speech style of M]'PART-TIME WHORE. PLEASE ALLOW ME TO MAKE USE OF YOUR SERVICES.'[roman type][line break]";
		otherwise:
			say "Its eyes turn red.  [speech style of M][unless the class of the player is succubus]'FREELANCE WHORE. PLEASE ALLOW ME TO MAKE USE OF YOUR SERVICES.'[otherwise]'THE CREATOR REQUESTS YOUR ASSISTANCE IN FUNDING THIS HOTEL.'[end if][roman type][line break]";
		anger M;
	otherwise if the class of the player is not catgirl and the class of the player is not puppygirl and (the number of worn crotch covering clothing is 0 or the number of worn breast covering clothing is 0):
		say "Its eyes turn red.  [first custom style][unless the class of the player is succubus]'YOU REQUIRE CLOTHING.  ALLOW ME TO ASSIST YOU.'[otherwise]'THE CREATOR CONSIDERS IT IMPROPER FOR HIS SERVANTS TO BE NUDE. ALLOW ME TO ASSIST YOU.'[end if][roman type][line break]";
		anger M;
	otherwise:
		say "It appears to be completely uninterested in you and continues on its way.";
		bore M;
	if M is interested, now target-room of M is the nearest patron.[for some reason this function has pretty insane hang time on it, so I moved it into a place will it will trigger less frequently]

To compute perception of (M - senior robobellboy):
	if there is a worn messed knickers:
		say "[first custom style]'NEARBY MESSY [if there is a worn diaper]DIAPER[otherwise]UNDERWEAR[end if] DETECTED.  PLEASE ASSUME THE NAPPY INSPECTION SUBMISSION POSITION.'[roman type][line break]";
	otherwise if diaper quest is 1:[eventually he should have training for diaper quest players too.]
		say "It appears to be completely uninterested in you and continues on its way.";
		bore M;
	if the training-progress of M > 2:
		say "Its eyes turn red. [speech style of M]'GOOD GOING TRAINEE. PLEASE KNEEL FOR YOUR TRAINING COMPLETION CEREMONY.'[roman type][line break]";
	otherwise if (the class of the player is trained hooker or the class of the player is succubus) and the refactory-period of a random mechanic + the refactory-period of a random demon lord <= 0:
		say "Its eyes turn red. [speech style of M]'HELLO EMPLOYEE. SUBMIT IMMEDIATELY FOR PERFORMANCE REVIEW.'[roman type][line break]";
	otherwise if the class of the player is maid or the class of the player is hooker in training:
		say "Its eyes turn red. [speech style of M]HELLO TRAINEE. PLEASE SUBMIT FOR FURTHER PERFORMANCE OPTIMIZATION.'[roman type][line break]";
	otherwise if the class of the player is succubus:
		say "Its eyes flicker red, then green. [speech style of M]HELLO HONORED EMPLOYEE. PLEASE DO NOT HURT ME.[roman type][line break]It appears to lose interest and continues on its way.";
	otherwise if M is babifying the player:
		say "Its eyes turn red.  [speech style of M]'LITTLE ONE, YOUR CLIENTS ARE WAITING.  PLEASE ALLOW ME TO ESCORT YOU.'[roman type][line break]";
	otherwise if M is objectifying the player:
		say "Its eyes turn red.  [speech style of M]'HELLO NEW TRAINEE. SUBMIT IMMEDIATELY FOR PERFOMANCE OPTIMIZATION.'[roman type][line break]";
	otherwise if the class of the player is not catgirl and the class of the player is not puppygirl and (the number of worn crotch covering clothing is 0 or the number of worn breast covering clothing is 0):
		say "Its eyes turn red. [speech style of M]'ERROR LINE 34, PATRON UNSUITABLE. INTIALIZING EJECTION PROTOCOL...ERROR...ERROR...HELLO NEW TRAINEE. PLEASE SUBMIT IMMEDIATELY FOR PERFORMANCE OPTIMIZATION.";
	otherwise:
		say "[speech style of M]HELLO TREASURED CUSTOMER. PLEASE ALLOW THE BUTLER TO ASSIST YOU.[roman type][line break]It appears to lose interest and continues on its way.";
		bore M;
	if M is interested:
		anger M;
		now target-room of M is the nearest patron.

Part 3 - Combat

Section 1 - Attack

The latex punishment rule of a robobellboy is usually the no latex punishment rule.

The unique punishment rule of a robobellboy is usually the robobellboy punishment rule.
This is the robobellboy punishment rule:
	if the player is immobile:
		say "[one of]The [current-monster] waits beside you patiently.[or][cycling]";
	otherwise if there is a worn messed knickers:
		compute change forcing of current-monster;
	if current-monster is senior robobellboy or the employee-record of senior robobellboy < 3:
		compute trainee forcing of current-monster;
	otherwise if the class of the player is maid:
		compute maid forcing of current-monster;
	otherwise if the variety of current-monster is 1 or the bimbo of the player > 13 or the number of worn crotch covering clothing > 0 and the number of worn breast covering clothing > 0:
		compute whore forcing of current-monster;
	otherwise:
		compute clothes forcing of current-monster;
	rule succeeds.

To compute trainee forcing of (M - a robobellboy):
	if the training-progress of senior robobellboy is -1:
		compute whore forcing of M;
	let C be a random off-stage trainee bra;
	let D be C;
	let H be a random off-stage trainee hood;
	let T be a random off-stage trainee thigh highs;
	if C is clothing and C is actually summonable:
		summon C cursed;
		say "The [M] opens up its chest compartment and pulls out a [C]!  You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as it forces the item onto your body, where the straps snap together and emit a small tone that worries you.";
		bore M;
		FavourUp M;
	otherwise if H is clothing and H is actually summonable:
		summon H cursed;
		say "The [M] opens up its chest compartment and pulls out a [C]. You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as it forces it over your head, where a metal latch snaps closed and emits a short and somehow ominous tone.";
		now D is H;
	otherwise if T is clothing and T is actually summonable:
		summon T cursed;
		say "The [M] opens up its chest compartment and pulls out a pair of [printed name of C]!  You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as it forces them onto your body, where they emit a short tone and cling to your skin like glue.";
		now D is T;
	if D is worn:
		say "[first custom style]'PLEASE BE MORE CONSCIOUS OF YOUR PERFORMANCE IN THE FUTURE.'[roman type][line break]";
		decrease the training-progress of D by 2;
		now the employee-record of senior robobellboy is 0;
	otherwise:
		compute clothes forcing of M.	

To compute maid forcing of (M - a robobellboy):
	[One day I want to code a unique punishment for maids, once I've thought of a good one.]
	compute whore forcing of M.[I think it might be fun if the bellboy drags the player through the hotel, forcing them to clean up all the dirty floors with their tongue]
	
To compute whore forcing of (M - a robobellboy):
	if the location of the player is the target-room of M:
		say "[first custom style]'YOUR CLIENTS WILL BEGIN ARRIVING SHORTLY.'[roman type][line break]";
		bore M for 400 seconds;
		FavourUp M;
		now the variety of M is 0;
		while there is a monster in the location of the player:
			repeat with N running through monsters in the location of the player:
				compute motion of N;
		let H be a random HotelBedPatrons in the location of the player;
		compute PatronSpawning of H;
		if the sex addiction of the player < 9, say "[one of][variable custom style]That fucking robot!  What has it got me into?![roman type][line break][or][stopping]";
	otherwise:
		drag to the target-room of M by M.

To say DragArrival of (M - a robobellboy) to (R - a room):
	say "[first custom style]'WE HAVE ARRIVED.'[roman type][line break]".

To compute change forcing of (M - a robobellboy):
	if the location of the player is not Hotel20:
		drag to Hotel20 by M;
	say "[first custom style]'FULL CHANGING PROCESS ENGAGED.  PLEASE RELAX.'[roman type][line break]";
	bore M for 400 seconds;
	now the variety of M is 0;
	compute LaundryRobots.

To compute clothes forcing of (M - a robobellboy):
	if a random number between 1 and 2 is 1 and the number of worn breast covering clothing is 0:
		compute bra forcing of M;
	otherwise if the number of worn crotch covering clothing is 0:
		compute knickers forcing of M;
	otherwise:
		compute bra forcing of M.

Definition: a clothing (called C) is ridiculously low cut or lower:
	if C is fully exposing or C is ridiculously low cut, decide yes;
	decide no.

Definition: a clothing (called C) is super-slutty-bra:
	if C is unique, decide no;
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
		summon C cursed;
		say "The [M] opens up its chest compartment and pulls out a [C]!  You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as it forces the item onto your body, where it sticks to your skin like glue. After this, the [M] seems to be happy leaving you alone.";
		bore M;
		FavourUp M;
	otherwise:
		compute failed forcing of M.

Definition: a clothing (called C) is super-slutty-knickers:
	if C is unique, decide no;
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
		summon C cursed;
		say "The [M] opens up its chest compartment and pulls out a [C]!  You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as it forces the item onto your body, where it sticks to your skin like glue.  After this, it seems to be happy to leave you alone.";
		bore M;
		FavourUp M;
	otherwise:
		compute failed forcing of M.

To compute failed forcing of (M - a robobellboy):
	now the variety of M is 1;
	say "The [M] seems to pause for a moment, and then seems to change his mind in how to deal with you.  [first custom style]'UNABLE TO SELECT SUITABLE FETISH ATTIRE; CLIENT WILL HAVE TO STAY NUDE.  [if diaper quest is 1]BABY SLAVE[otherwise]PROSTITUTION[end if] DUTIES PROGRAM ENGAGED.'[roman type][line break]";
	compute whore forcing of M.

To uniquely destroy (M - a robobellboy): [Are there any special rules we need to follow?]
	now the variety of M is 0.

Section 2- DQ

Definition: a robobellboy (called M) is willing to change diapers:
	if there is worn messed knickers, decide yes;
	decide no.

To compute diaper change of (M - a robobellboy):
	compute change forcing of M.

bellboy-forced-bed is a diaper punishment.  The priority of bellboy-forced-bed is 2.
Definition: a bellboy-forced-bed (called P) is appropriate:
	if current-monster is not robobellboy, decide no;
	if the player is immobile, decide no;
	[if the cringe appearance of the player < 5, decide no;]
	decide yes.

To compute punishment of (P - bellboy-forced-bed):
	compute whore forcing of current-monster.

bellboy-forced-clothing is a diaper punishment.  The priority of bellboy-forced-clothing is 3.
Definition: a bellboy-forced-clothing (called P) is appropriate:
	if current-monster is not robobellboy, decide no;
	if current-monster is babifying the player and the player is not immobile, decide no; [Will do whore forcing regime instead.]
	if the class of the player is not catgirl and the class of the player is not puppygirl and (the number of worn crotch covering clothing is 0 or the number of worn breast covering clothing is 0), decide yes;
	decide no.

To compute punishment of (P - bellboy-forced-clothing):
	compute clothes forcing of current-monster.


Part 4 - Conversation

Section 1 - Greeting

To compute greeting response of (M - a robobellboy):
	if M is uninterested:
		compute correct perception of M;
	otherwise:
		say "The [M] ignores you.".

Section 2 - Questioning

To compute talk option (N - 2) to (M - a robobellboy):
	say "[variable custom style]Can you help me out?[roman type][line break]";
	compute answer of M.

To compute answer of (M - a robobellboy):
	if M is unfriendly:
		say "[first custom style]'PLEASE [if the player is upright]KNEEL[otherwise]WAIT[end if], AND ALLOW ME TO ASSIST YOU.'[roman type][line break]";
	otherwise:
		say "[first custom style]'PLEASE ASK THE BUTLER FOR ASSISTANCE, [robogreeting].'[roman type][line break]".


Part 5 - Variants

Section 1 - Senior Robobellboy

The senior robobellboy is a robobellboy. senior robobellboy has a number called training-progress. The training-progress of senior robobellboy is usually 0. senior robobellboy has a number called employee-record. The employee-record of senior robobellboy is usually 0.
The printed name of senior robobellboy is "[if item described is in the location of the player][TQlink of item described][end if][input-style]senior RoboBellboy[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of senior robobellboy is "srb".

To ProgressUp (M - senior robobellboy):
	if the training-progress of M >= 0, increase the training-progress of M by 1.

To compute unique death of (M - senior robobellboy):
	say "The [M] falls apart and clatters to the ground.";
	let D be a random off-stage mechanical joint;
	if D is mechanical joint:
		now D is in the location of the player;
		say "You manage to salvage a working [D].";
		compute autotaking D;
	let L be a random off-stage leftover;
	now the leftover-type of L is the leftover-type of M;
	now L is in the location of the player;
	repeat with H running through worn clothing:
		if H is trainee hood or H is trainee bra or H is trainee thigh highs, demagnetise H;
	destroy M.



To compute trainee forcing of (M - senior robobellboy):
	if there is a worn free ride tattoo and the training-progress of M is 3, now the training-progress of M is -1;
	if the training-progress of M > 2:
		say "The [M] pauses and its eyes shift from red to yellow. [speech style of M]ADVANCED TRAINEE DETECTED. ADMINISTERING INSIGNIA OF QUALITY.[roman type] It seizes you by the wrists, holding you tightly as its chest compartment opens up.";
		if there is a worn tattoo:
			let T be a random off-stage crotch tattoo;
			if T is drawable and the concealer of T is nothing:
				summon T;
				say "A tiny needle shoots out, moving rapidly as it prints a [printed name of T] onto the skin above your [genitals].";
			otherwise:
				let F be a random off-stage free ride tattoo;
				say "A tiny needle shoots out, moving rapidly as it prints the words 'Free Ride' onto your right cheek.";
				summon F;
		otherwise:
			say "It's motionless for a second, then it closes its chest compartment without releasing you. [speech style of M]'ERROR LINE 35, CANVAS UNSUITABLE...ADMINISTERING FINAL EXAM'[roman type]";
			compute whore forcing of M;
		now the training-progress of M is -1;
	otherwise if the training-progress of M is -1:
		compute whore forcing of M;
	otherwise if a random number between 1 and 2 is 1 and the number of worn breast covering clothing is 0:
		compute bra forcing of M;
	otherwise if the number of worn leg covering clothing is 0:
		compute knickers forcing of M;
	otherwise:
		compute headgear forcing of M.

To compute headgear forcing of (M - senior robobellboy):
	let C be a random off-stage trainee hood;
	if C is clothing and C is actually summonable:
		summon C cursed;
		say "The [M] opens up its chest compartment and pulls out a [C]. You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as it forces it over your head, where a metal latch snaps closed and emits a short and somehow ominous tone. [first custom style]'APPEARANCE REGIMEN INITIATED. PLEASE WAIT PATIENTLY FOR FURTHER OPTIMIZATION.[roman type][line break]";
		FavourUp M;
	otherwise:
		say "The [M] pauses and its eyes shift from red to green. [first custom style]'CANNOT EXCEED MAXIMUM NUMBER OF ONGOING PROGRAMS. GOOD JOB TRAINEE. KEEP UP THE GOOD WORK.'[roman type]";
	bore M.	

To compute bra forcing of (M - senior robobellboy):
	let C be a random off-stage trainee bra;
	if C is clothing and C is actually summonable:
		summon C cursed;
		say "The [M] opens up its chest compartment and pulls out a [C]!  You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as it forces the item onto your body, where the straps snap together and emit a small tone that worries you. [first custom style]MAMMARY IMPROVEMENT PROGRAM INITIATED. PLEASE WAIT PATIENTLY FOR FURTHER OPTIMIZATION.[roman type]";
		bore M;
		FavourUp M;
	otherwise:
		compute headgear forcing of M.

To compute knickers forcing of (M - senior robobellboy):
	let C be a random off-stage trainee thigh highs;
	if C is clothing and C is actually summonable:
		summon C cursed;
		say "The [M] opens up its chest compartment and pulls out a pair of [printed name of C]!  You [if the body soreness of the player > 7]are powerless to resist[otherwise]are too slow to react[end if] as it forces them onto your body, where it clings to your skin like glue.  [first custom style]'FULL MENTAL REGIMEN INITIATED. PLEASE WAIT PATIENTLY FOR FURTHER OPTIMIZATION.'[roman type][line break]";
		bore M;
		FavourUp M;
	otherwise:
		compute headgear forcing of M.

To compute whore forcing of (M - senior robobellboy):
	let D be a random alive mechanic;
	unless D is monster, now D is a random alive demon lord;
	if D is monster and the refactory-period of D <= 0:
		if D is not in the location of the player:
			drag to (the location of D) by M;
		otherwise:
			say "[speech style of M]'HELLO SIR. IT IS TIME FOR YOUR BI-HOURLY EMPLOYEE REVIEW.'[roman type][line break]The [M] lets go and starts to leave as [if D is mechanic]the [D] turns around with a cocky grin, unzipping his pants. [speech style of D]'Guess its my responsibility to take care of this, huh?'[roman type][otherwise]the [D] turns around stroking his enormous [manly-penis]. [speech style of D]'[one of]EVEN I HAVE RESPONSIBILITIES[or]YOU FAIL! BUT I'M GOING TO FUCK YOU ANYWAY[or]YOU PASS! TIME TO CELEBRATE[at random]! HAHAHA!'[roman type][end if][line break]";
			now D is interested;
			anger D;
			bore M;
	otherwise if the location of the player is the target-room of M:
		say "[first custom style]'YOUR CLIENTS WILL BEGIN ARRIVING SHORTLY.'[roman type][line break]";
		bore M for 400 seconds;
		FavourUp M;
		now the variety of M is 0;
		while there is a monster in the location of the player:
			repeat with N running through monsters in the location of the player:
				compute motion of N;
		let H be a random HotelBedPatrons in the location of the player;
		compute PatronSpawning of H;
		if the sex addiction of the player < 9, say "[one of][variable custom style]That fucking robot!  What has it got me into?![roman type][line break][or][stopping]";
	otherwise:
		drag to nearest patron by M.

To compute failed forcing of (M - senior robobellboy):
	now the variety of M is 1;
	say "The [M] seems to pause for a moment, and then seems to change his mind in how to deal with you.  [first custom style]'UNABLE TO UPGRADE PERFORMANCE. PROSTITUTE MAY BE FULLY UPGRADED. PROSTITUTION DUTIES PROGRAM ENGAGED.'[roman type][line break]";
	compute whore forcing of M.



RoboBellboy ends here.
