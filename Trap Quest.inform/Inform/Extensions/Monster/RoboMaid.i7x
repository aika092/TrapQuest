RoboMaid by Monster begins here.

A robomaid is a kind of robot. A robomaid is usually intelligent. Understand "maid", "robomaid", "robot maid" as robomaid. The leftover-type of a robomaid is usually 127.

[The robomaid does the following things:
	punishment:
		If you're dirty, she drags you to the laundry room
		If you're naked, she drags you to the nearest robobellboy
		otherwise, it's time for a "publicity stunt"
			she has a sloppy kissing session w/ you

	Patrons will periodically pass through the room the player is in and make a mess.
	If the robomaid is in the room with a patron at any time, she services them in some way and it makes a mess
]

dainty robomaid is a robomaid. The text-shortcut of dainty robomaid is "drm".
prissy robomaid is a robomaid. The text-shortcut of prissy robomaid is "psrm".
milkmaid is a robomaid. The text-shortcut of milkmaid is "cmm". Understand "mal", "malfunc", "malfunctioning", "milk", "malfunction" as milkmaid.

Figure of robomaid is the file "NPCs/Hotel/Robot/robomaid1.png".
To decide which figure-name is the monster-image of (M - a robomaid):
	decide on figure of robomaid.
Figure of milkmaid is the file "NPCs/Hotel/Robot/robomaid2.png".
To decide which figure-name is the monster-image of (M - milkmaid):
	decide on figure of milkmaid.

[Definition: a milkmaid (called M) is willing to do oral:
	decide yes.]

To say MonsterDesc of (M - a robomaid):
	say "A tall robot with a voluptuous figure that makes [him of M] look more sex doll than machine. [big he of M] is wearing a frilly black dress with a plunging neckline and scandalously short skirt, which show off [his of M] surprisingly soft-looking assets as [big he of M] glides around silently on wheeled feet. [big his of M] eyes cast a slight glow over [his of M] hyper feminine features.".

To say MonsterDesc of (M - milkmaid):
	say "A tall robot with a voluptuous figure that makes [him of M] look more sex doll than machine. [big he of M] is topless, leaving [his of M] expansive metal chest and surprisingly soft-looking nipples on full display. A white apron covers [his of M] crotch, but given the obvious tent in the fabric, it's not really clear why. [big his of M] eyes glow brightly as [big he of M] glides around silently on wheeled feet.".

To say speech style of (M - a robomaid):
	say second custom style.

To say robogreeting of (M - a robomaid):
	say "[if the class of the player is maid]GIRLFRIEND[otherwise if the player is female or the bimbo of the player > 9]SEXY[otherwise]BIG BOY[end if]".

This is the spawn initial robomaid rule:
	if the number of alive robomaids is 0:
		let M be a random robomaid;
		if debugmode > 0, say "Summoning maid in hotel.";
		summon M in the hotel.
The spawn initial robomaid rule is listed in the setting up hotel monsters rules.

To say SummoningFlav of (M - a robomaid):
	if M is in the location of the player:
		say "The teleporter emits a definitive sounding hum, and light fills the room as a voluptuous robot materialises on the pad. [line break][second custom style]'SHOULD I CLEAN THAT UP FOR YOU?'[roman type][line break]";
	otherwise:
		say "You hear the sound of a robotic voice coming from elsewhere in the hotel. [line break][second custom style]'SHOULD I CLEAN THAT UP FOR YOU?'[roman type][line break]".

To say LeftoverDesc (N - 127):
	say "There is a pile of mangled nuts and bolts here that used to be a fully functional robomaid.[line break]".

To say DragArrival of (M - a robomaid) to (R - Hotel20):
	say "[speech style of M]'LAUNDRY PROTOCOL INITIATED. [caps please] REMAIN SEATED.'[roman type][line break]".

To say DragArrival of (M - a robomaid) to (R - a room):
	let P be the number of patrons in R;
	if P > 0:
		say "[speech style of M]'TRANSPORT PROTOCOL COMPLETE. SENSORS INDICATE WE ARE ALONE. ERROR, UNCAUGHT INHIBITIONS EXCEPTION. I CAN'T HOLD BACK, [robogreeting of M].'[roman type][line break]You make [if the player is disgraced]excruciating[otherwise]smouldering[end if] eye contact with [if P is 1][NameDesc of a random patron in R][otherwise]a few of the patrons[end if] as [NameDesc of M] pins you against a wall with [his of M] strangely supple metal body.";
	otherwise:
		say "[speech style of M]'TRANSPORT PROTOCOL COMPLETE.'[roman type]".

To say DragArrival of (M - a milkmaid) to (R - a room):
	let P be the number of patrons in R;
	if P > 0:
		say "[speech style of M]'TRANSPORT PROTOCOL COMPLETE. HEY THERE, [if P > 0]PLURAL [end if]BIG BOY. EXECUTING PERFORMANCE SEQUENCE.'[roman type][line break]You make [if the player is disgraced]excruciating[otherwise]smouldering[end if] eye contact with [if P is 1][NameDesc of a random patron in R][otherwise]a few of the patrons[end if] as [NameDesc of M] lays you down on the ground and climbs on top of you.";
	otherwise:
		say "[speech style of M]'TRANSPORT PROTOCOL COMPLETE.'[roman type]".

To say ShortDesc of (M - a robomaid):
	say "robomaid".
To say ShortDesc of (M - a milkmaid):
	say "milkmaid".

To say MediumDesc of (M - dainty robomaid):
	say "dainty RoboMaid".
To say MediumDesc of (M - prissy robomaid):
	say "prissy RoboMaid".
To say MediumDesc of (M - a milkmaid):
	say "sultry MilkMaid".

[To compute unique periodic effect of (M - a robomaid):
	if a random number between 1 and 30 is 1:
		[TODO: cleanup.]]

To compute unique periodic effect of (M - a milkmaid):
	if a random number between 1 and 30 is 1:
		if lactation fetish is 1 and a random number between 1 and 2 is 1:
			if M is in the location of the player, say "[BigNameDesc of M] reaches up and squeezes [his of M] rubber nipples, forcing several droplets of milk out onto the floor.";
			PuddleUp milk by (a random number between 2 and 3) in (the location of M);
		otherwise:
			if M is in the location of the player, say "[BigNameDesc of M] starts jacking off, moaning in a grating monotone as [his of M] [LongDickDesc of M] blows its load on the floor.";
			PuddleUp semen by (a random number between 2 and 3) in (the location of M).

To compute perception of (M - a robomaid):
 	say "[BigNameDesc of M] notices you!";
	if the number of worn dirty clothing > 0:
		if M is unfriendly:
			say "[big his of M] eyes turn red and [he of M] spins towards you. [line break][speech style of M]'CLEANLINESS VIOLATION DETECTED. EMERGENCY LAUNDERING PROGRAM INITIATED.'[roman type][line break]";
		otherwise:
			say "[big his of M] eyes turn yellow as [he of M] glides up to you. [line break][speech style of M]'CLEANLINESS VIOLATION DETECTED. [caps please] INSERT FUNDS TO INITIATE MEMORY WIPE.'[roman type][line break][big he of M] points to [one of]a[or]the[stopping] slot between [his of M] breasts, labelled [']PAYMENT['].";[if you don't pay her she takes matters into her own hands]
		FavourDown M by 3;
	otherwise if the number of worn clothing is 0:
		if the number of glazed body parts is 0 or M is unfriendly:
			say "[big his of M] eyes turn red and [he of M] spins towards you. [line break][speech style of M]'DECENCY VIOLATION DETECTED. CLOTHING ASSISTANCE PROGRAM INITIATED.'[roman type][line break]";
			anger M;
		otherwise:
			say "[big his of M] eyes flash yellow and [he of M] glides up next to you. [line break][speech style of M]'DECENCY VIOLATION DETECTED. [caps please] INSERT FUNDS TO INITIATE MEMORY WIPE.'[roman type][line break][big he of M] points to [one of]a[or]the[stopping] slot between [his of M] breasts, labelled [']PAYMENT['].";
		FavourDown M by 3;
	otherwise if the class of the player is vixen:
		say "[big his of M] eyes turn red and [he of M] spins toward you. [line break][speech style of M]'BURGLAR DETECTED! PUBLICITY STUNT PROGRAM INITIATED!'[roman type][line break]";
		anger M;
	otherwise if M is friendly:
		say "[big he of M] glides towards you, striking a provocative pose as [he of M] addresses you in a monotone. [line break][speech style of M]'FLIRTATION PROGRAM CLASS ['][robogreeting of M]['] initiated. HEY, [robogreeting of M]. DOES THIS [one of]MAKE MY BOSOM UNIT LOOK BIG[or]SKIRT REVEAL SUFFICIENT CUSHIONING UNIT[or]POSE ACCENTUATE MY MONEY-SHOT APPARATUS[at random]?[roman type][line break][if the player is able to speak]Say yes?[end if]";
		if the player is consenting and the player is able to speak and the refactory-period of M < 0:
			if the class of the player is not hotel employment:
				say "[big his of M] eyes turn green, and [he of M] points unsubtly toward a slot between [his of M] breasts, labelled [']PAYMENT['].";
				FavourDown M;
			otherwise:
				say "[big his of M] eyes turn green. [line break][speech style of M]'THANKS. GIRLFRIEND.'[roman type][line break]";
			now the refactory-period of M is the refactory-time of M;
		otherwise:
			if the class of the player is not hotel employment:
				say "[if the player is not able to speak or the refactory-period of M >= 0][big e of M] seems to [']think['] for a moment, and [his of M][otherwise][big his of M][end if] eyes turn yellow. [line break][speech style of M]'THANK YOU FOR YOUR FEEDBACK, VALUED [robogreeting of M]'[roman type][line break]";
				increase the difficulty of M by 1;
			otherwise:
				say "[big his of M] eyes turn yellow. [line break][speech style of M]'THANKS. GIRLFRIEND.'[roman type][line break]";
				FavourDown M;
				decrease the employee-record of senior robobellboy by 1;[she spreads bad rumours about you!]
	otherwise:
		say "[big his of M] eyes turn red and [he of M] spins towards you. [line break][speech style of M]'[if the class of the player is hotel employment]COWORKER[otherwise]FREELANCER[end if] DETECTED. PUBLICITY STUNT PROGRAM INITIATED.'[roman type][line break]".

To compute perception of (M - a milkmaid):
	if the class of the player is hotel employment:
		if breasts is lewdly exposed or there is a worn trainee bra:
			say "[big he of M] glides towards you, addressing you in a monotone. [line break][speech style of M]HEY GIRLFRIEND. YOU HAVE SOMETHING ON YOUR CHEST. TITS. TEE-HEE. TEE-HEE.[roman type][line break][big he of M] seems to abruptly lose interest.";
			calm M;
		otherwise if the largeness of breasts < 2:[exposed but not lewdly exposed? You must have small breasts!]
			say "[big his of M] eyes turn red and [he of M] spins toward you. [line break][speech style of M]DECENCY VIOLATION DETECTED. [if lactation fetish is 1]MAMMARY STIMULATION PROGRAM INITIATED[otherwise]EMERGENCY MAMMARY DEVELOPMENT PROGRAM INITIATED[end if].'[roman type][line break]";
			anger M;
		otherwise:
			say "[big his of M] eyes turn red and [he of M] spins toward you. [line break][speech style of M]'DECENCY VIOLATION DETECTED. MAMMARY LIBERATION PROGRAM INITIATED.[roman type][line break]";
			anger M;
	otherwise if the class of the player is vixen:
		say "[big his of M] eyes turn red and [he of M] spins toward you. [line break][speech style of M]'BURGLAR DETECTED! PUBLICITY STUNT PROGRAM INITIATED!'[roman type][line break]";
		anger M;
	otherwise if M is friendly:
		say "[big he of M] glides toward you, pushing out [his of M] chest as [he of M] addresses you in a monotone. [line break][speech style of M]'FLIRTATION PROGRAM INITIATED...[one of]YOU ARE SEXY.[or]OBSERVE MY TITS, HOT STUFF.[or]BEEP BOOP, I LIKE MAN SOUP.[at random] [caps please] TIP ME.[roman type][line break][big he of M] points to [one of]a[or]the[stopping] slot between [his of M] breasts, labelled [']PAYMENT['].";
		FavourDown M;
	otherwise:
		say "[big his of M] eyes turn red and [he of M] spins toward you. [line break][first custom style]'FREELANCE WHORE DETECTED. PUBLICITY STUNT PROGRAM INITIATED.'[roman type][line break]";
		anger M.

The unique punishment rule of a robomaid is usually the robomaid punishment rule.

This is the robomaid punishment rule:
	let M be current-monster;
	if presented-orifice is not nothing, say "[speech style of current-monster]'REQUEST NOT UNDERSTOOD. IGNORING.'[roman type][line break]";
	if the player is immobile:
		say "[one of][BigNameDesc of current-monster] waits beside you patiently.[or][cycling]";
		[compute maidFluff of M;]
		rule succeeds;
	otherwise if the number of worn dirty clothing > 0:[The maid drags you to the laundry room.]
		unless the player is in Hotel20:
			drag to Hotel20 by M;
		bore M for 500 seconds;
		compute LaundryRobots;
		rule succeeds;
	otherwise if the number of worn clothing is 0 and there is a alive robobellboy:[the maid drags you to the nearest robobellboy for clothing.]
		say "[BigNameDesc of M]'s eyes turn purple as [he of M] sweeps you off the ground. [line break][speech style of M]'SEARCHING... SEARCHING... PATRON FOUND. EXECUTING TRANSPORT PROTOCOL.'[roman type][line break]";
		let N be a random robobellboy in the location of the player;
		unless N is monster:
			let R be a random modern room;
			while R is not placed and R is not Hotel20 and R is not bossed:
				now R is a random modern room;
			now N is a random alive robobellboy;
			unless N is monster, now N is a random robobellboy;
			now N is in R;
			drag to R by M;
		say "[speech style of current-monster]'PROGRAM REQUEST: ['][robogreeting of M]['] DOT CLOTHING UNDERSCORE ASSIST.'[roman type][line break] [BigNameDesc of M] drops you on the ground in front of [NameDesc of N] as [he of N] suddenly wheels around, eyes glowing red. Uh-oh.";
		unless N is dangerous, anger N;
		now N is interested;
		now the boredom of N is 0;
		bore M for 500 seconds;
		rule succeeds;
	otherwise:
		say "[BigNameDesc of M]'s eyes turn purple as [he of M] sweeps you off the ground. [line break][speech style of M]'SEARCHING... SEARCHING... AUDIENCE FOUND. EXECUTING TRANSPORT PROTOCOL.'[roman type][line break]";
		let R be a random modern room;
		while (R is not placed or R is Hotel20 or R is bossed):
			now R is a random modern room;
		let X be a random number between 1 and 3;
		while X > 0:
			let P be a random off-stage patron;
			now P is in R;
			decrease X by 1;
		drag to R by M;
		compute publicity stunt of M;
		satisfy M for 500 seconds;
		rule succeeds.

To compute publicity stunt of (M - a robomaid):
	let R be a random number between 1 and 3;
	say "[BigNameDesc of M] [if face is not actually occupied]passionately kisses you[otherwise]peppers your face with kisses[end if], grinding [his of M] surprisingly supple body against you as your audience begins to masturbate. [run paragraph on]";
	let P be a random patron in the location of the player;
	let X be the number of patrons in the location of the player;
	let D be nothing;
	repeat with C running through currently uncovered clothing:[already checks for worn]
		if C is removable and ((breasts is not exposed and C is actually breast covering nipple covering clothing) or C is potentially at least partially vagina covering):
			now D is C;
			break;
	if D is clothing:[flash]
		say "You feel [NameDesc of M]'s hand grab your [printed name of D] and begin to pull it off. [line break][speech style of current-monster]'LET'S GET NAKED, [robogreeting of M].'[roman type][line break]Do you let [him of M] strip you? ";
		if the player is bimbo consenting:
			say "[if X > 1]The patrons chuckle[otherwise][BigNameDesc of P] smirks[end if] as [NameDesc of M] slips off your [printed name of D] and tosses it to the ground, revealing everything underneath it. You feel a wave of [if the player is disgraced]embarrassment[otherwise]excitement[end if] as [if X > 1]each of them blow their loads on the ground and leave the room[otherwise][NameDesc of P] blows [his of P] load on the ground and leaves[end if]. [BigNameDesc of M] sets you down gently, satisfied.";
			now D is in the location of the player;
			SemenPuddleUp X in (the location of M);
			FavourUp M;
			increase the employee-record of senior robobellboy by 1;
			humiliate X * MODERATE-HUMILIATION;
		otherwise:
			say "[if X > 1]The patrons grumble[otherwise][BigNameDesc of P] grumbles[end if] in disappointment as you smack [NameDesc of M]'s hand away and squirm in [his of M] grip. [big his of M] lips deliver a sharp jolt of electricity to your skin, leaving a stinging welt on your face as [if X > 1]the patrons leave[otherwise][NameDesc of P] leaves[end if] and [NameDesc of M] abruptly drops you.";
			PainUp 1;
			decrease the employee-record of senior robobellboy by 1;
	otherwise:[grope]
		say "[BigNameDesc of M] begins to grope you, turning to put the act on full display for [if X > 1]the patrons[otherwise][NameDesc of P][end if] as [he of M] fondles your [ShortDesc of breasts].[line break][speech style of current-monster]'I AM SO HORNY.'[roman type][line break]Do you smack [his of M] hand away? ";
		if the player is reverse bimbo consenting:
			say "[if X > 1]The patrons grumble[otherwise][BigNameDesc of P] grumbles[end if] in disappointment as you smack [NameDesc of M]'s hand away and squirm in [his of M] grip. [big his of M] lips deliver a sharp jolt of electricity to your skin, leaving a stinging welt on your face as [if X > 1]the patrons leave[otherwise][NameDesc of P] leaves[end if] and [NameDesc of P] abruptly drops you.";
			PainUp 1;
			decrease the employee-record of senior robobellboy by 1;
		otherwise:
			say "[if X > 1]The patrons stroke themselves[otherwise][BigNameDesc of P] strokes[end if] even harder as [NameDesc of M] dexterously twists your nipples and palms your [AssDesc]. You feel a wave of [if the player is disgraced]embarrassment[otherwise]excitement[end if] and arousal as [if X > 1]each of them blow their loads on the ground and leave the room[otherwise][NameDesc of P] blows [his of P] on the ground and leaves[end if]. [BigNameDesc of M] sets you down gently, satisfied.";
			Arouse 1000;
			SemenPuddleUp X in (the location of M);
			FavourUp M;
			increase the employee-record of senior robobellboy by 1;
			humiliate X * (MODERATE-HUMILIATION + SLIGHT-HUMILIATION);
	repeat with N running through patrons in the location of the player:
		destroy N.

The unique punishment rule of milkmaid is the milkmaid punishment rule.

This is the milkmaid punishment rule:
	if presented-orifice is not nothing, say "[speech style of current-monster]'REQUEST NOT UNDERSTOOD. IGNORING.'[roman type][line break]";
	let M be current-monster;
	if the player is immobile:
		say "[one of][BigNameDesc of current-monster] waits beside you patiently.[or][cycling]";
		[compute maidFluff of M;]
		rule succeeds;
	if the class of the player is hotel employment:
		let C be a random worn top-placed breast covering clothing;
		if C is clothing and C is not trainee bra:
			if C is not-top-displacable:
				say "[BigNameDesc of current-monster] tears off your [printed name of C], exposing your [ShortDesc of breasts]!";
				destroy C;
			otherwise:
				say "[BigNameDesc of current-monster] yanks open your [printed name of C], exposing your [ShortDesc of breasts]!";
				TopDisplace C;
			rule succeeds;
		otherwise if the largeness of breasts < 2:
			say "[BigNameDesc of current-monster] splashes your chest with a vial of pink liquid, which causes your [ShortDesc of breasts] to suddenly grow!";
			BustUp a random number between 2 and 3;
			bore M for 500 seconds;
			rule succeeds;
	otherwise:
		say "[BigNameDesc of M]'s eyes turn purple as [he of M] sweeps you off the ground.[line break][speech style of M]'SEARCHING... SEARCHING... PATRON FOUND. EXECUTING TRANSPORT PROTOCOL.'[roman type][line break]";
		let R be a random placed unbossed modern room;
		while R is Hotel20:
			now R is a random placed unbossed modern room;
		let X be a random number between 1 and 3;
		while X > 0:
			let P be a random off-stage patron;
			now P is in R;
			decrease X by 1;
		drag to R by M;
		compute publicity stunt of M;
		bore M for 500 seconds;
		rule succeeds.

To compute publicity stunt of (M - a milkmaid):
	let R be a random number between 1 and 3;
	let P be a random patron in the location of the player;
	say "[if the number of patrons in the location of the player > 1]The patrons watch[otherwise][BigNameDesc of P] watches[end if] [run paragraph on]";
	if face is not actually occupied and lactation fetish is 1 and R is 1:[breast feeding]
		say "as [NameDesc of M] forces a rubber teat into your mouth. [line break][speech style of current-monster]'OOH. OOH. MY NIPPLES ARE SO TENDER.'[roman type][line break]Suction kicks in, and you have no choice but to swallow several gulps of ice cold milk before [he of M] releases you.";
		increase the fat-burning of the player by 250;
		StomachUp 3;
		MilkTasteAddictUp 1;
		humiliate R * MODERATE-HUMILIATION;
	otherwise if face is not actually occupied:
		say "as [NameDesc of M] lifts up [his of M] apron, pushing [his of M] [LongDickDesc of M] in your face as [his of M] eyes rapidly flash red and pink. [line break][speech style of current-monster]'OOH. OOH. [caps please] SUCK ME.'[roman type][line break] [big he of M] shoves [his of M] [DickDesc of M] into your open mouth and ejaculates with incredible force. Do you try to swallow it?";
		if the player is bimbo consenting:
			say "You desperately gulp, just barely able to keep up as [NameDesc of M] thoroughly empties [his of M] stored [semen] straight down your throat. Eventually, the flow dies down, and [he of M] pulls out, rolling off of you as [his of M] apron falls back into place.";
			StomachSemenUp 4;
			humiliate R * MODERATE-HUMILIATION;
		otherwise:
			say "Your mouth rapidly fills as you hold your throat closed, sparing your stomach from [his of M]'s huge load. With nowhere else to go, [semen] explodes out the edges of your mouth, coating your cheeks, chin, and neck as the flow steadily dies down, and [NameDesc of M] slowly pulls out. You spit out the rest of it, gasping for air as [he of M] rolls off you and lets [his of M] apron fall back into place.";
			CumFaceUp 3;
			SemenPuddleUp 1;
			humiliate R * SLIGHT-HUMILIATION;
		BlowCount;
	otherwise if bukkake fetish is 1 and R is 2:[bukkake]
		say "as [NameDesc of M] lifts up [his of M] apron, pushing [his of M] [LongDickDesc of M] in your face as [his of M] eyes rapidly flash red and green. [line break][speech style of M]'OOH. OOH. I AM SHOOTING IT.'[roman type][line break] [big his of M] [DickDesc of M] throbs visibly as it blasts your face with several bursts of makeup powder, followed by several ropes of thick, sticky [semen]. You can feel it clinging to your eyelids and rolling slowly down your cheeks as [he of M] rolls off of you.";
		FaceUp 1;
		CumFaceUp 2;
		humiliate R * MODERATE-HUMILIATION;
	otherwise:
		let D be nothing;
		repeat with C running through worn clothing:
			if C is top-displacable and C is top-placed:
				now D is C;
				break;
			otherwise if C is displacable and C is crotch-in-place:
				now D is C;
				break;
		if D is clothing:[flash]
			say "as [NameDesc of M] yanks your [ShortDesc of D] out of the way. [line break][speech style of M]'SHOW ME THE GOODS, BABY.'[roman type][line break][big he of M] smacks your [if breasts is lewdly exposed][ShortDesc of breasts][otherwise]face[end if], leaving a painful red welt in the shape of a hand as [he of M] rolls off of you.";
			if D is top-displacable and D is top-placed, now D is top-displaced;
			otherwise now D is crotch-displaced;
			PainUp 1;
			humiliate R * SLIGHT-HUMILIATION;
		otherwise:[aphrodisiac]
			say "as [NameDesc of M]'s [LongDickDesc of M] pushes out from underneath [his of M] apron and [one of]spurts warm, pink liquid across your [ShortDesc of breasts][or]shoots several [']ropes['] of warm, pink fluid onto your [BellyDesc][or]splatters your [ShortDesc of face] with warm, pink liquid[at random].[line break][speech style of M]'OOH. SO HOT. SO HOT.'[roman type][line break]You can feel the fluid absorbing into your skin as [NameDesc of M] rolls off of you. You feel incredibly turned on!";
			Arouse 1000;
			humiliate R * SLIGHT-HUMILIATION;
	Bore M;
	increase the employee-record of senior robobellboy by 1;
	if the number of patrons in the location of the player > 1, say "The patrons take turns high fiving each other as they file out of the room.";
	otherwise say "[NameDesc of P] smirks at you as [he of P] leaves the room.";
	repeat with N running through patrons in the location of the player:
		destroy N.

To compute basic greeting to (M - a robomaid):
	if M is interested:
		say VanityGreeting to M;
	otherwise:
		if the times-met of M < 2, say FirstGreeting to M;
		otherwise say RepeatGreeting to M;
		unless the class of the player is maid:
			now the boredom of M is 0;
			compute correct perception of M.

To say FirstResponse of (M - a robomaid):
	if the class of the player is maid:
		say "[first custom style]'GREETINGS, GIRLFRIEND. YOU SEEM BUSY. GOODBYE.'[roman type][line break]";
	otherwise:
		say "[first custom style]'GREETINGS [robogreeting of M].'[roman type][line break]";

To say RepeatResponse of (M - a robomaid):
	if the class of the player is maid:
		say "[first custom style]'HEY GIRLFRIEND. GOODBYE.'[roman type][line break]";
	otherwise if M is unconcerned:
		say "[first custom style]'GREETINGS [robogreeting of M].'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] ignores you.".

RoboMaid ends here.
