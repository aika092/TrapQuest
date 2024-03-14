RoboMaid by Monster begins here.

A robomaid is a kind of robot. A robomaid is intelligent. Understand "maid", "robomaid" as robomaid. The leftover-type of a robomaid is usually 127.

dainty robomaid is a robomaid. The text-shortcut of dainty robomaid is "drm".
prissy robomaid is a robomaid. The text-shortcut of prissy robomaid is "psrm".
robomilkmaid is a robomaid. The text-shortcut of robomilkmaid is "cmm". Understand "mal", "malfunc", "malfunctioning", "malfunction" as robomilkmaid. robomilkmaid has a number called milk volume. robomilkmaid has a number called milk charge.

Figure of robomaid is the file "NPCs/Hotel/Robot/robomaid1.png".
To decide which figure-name is the monster-image of (M - a robomaid):
	decide on figure of robomaid.
Figure of robomilkmaid is the file "NPCs/Hotel/Robot/robomaid3.jpg".
To decide which figure-name is the monster-image of (M - robomilkmaid):
	decide on figure of robomilkmaid.

[Definition: a robomilkmaid (called M) is willing to do oral:
	decide yes.]

To say MonsterDesc of (M - a robomaid):
	say "A tall robot with a voluptuous figure that makes [him of M] look more sex doll than machine. [big he of M] is wearing a frilly black dress with a plunging neckline and scandalously short skirt, which show off [his of M] surprisingly soft-looking assets as [big he of M] glides around silently on wheeled feet. [big his of M] eyes cast a slight glow over [his of M] hyper feminine features.".

To say MonsterDesc of (M - robomilkmaid):
	say "A tall robot with a voluptuous figure that makes [him of M] look more sex doll than machine. A white apron covers [his of M] front, but its skimpy design leaves almost the entirety of [his of M] soft, transparent robot breasts on display, revealing that they are filled with some white liquid - presumably [milk]. [big his of M] eyes glow brightly as [big he of M] glides around silently on wheeled feet.".

To say speech style of (M - a robomaid):
	say second custom style.

To say robogreeting of (M - a robomaid):
	say "[if the class of the player is maid][caps boy of the player]FRIEND[otherwise if the player is presenting as female or the bimbo of the player > 9]SEXY[otherwise]BIG [caps boy of the player][end if]".

[This is the spawn initial robomaid rule:
	if the number of alive robomaids is 0:
		let M be a random robomaid;
		if debugmode > 0, say "Summoning maid in hotel.";
		summon M in the hotel.
The spawn initial robomaid rule is listed in the setting up hotel monsters rules.]

To set up (M - a robomaid):
	reset M;
	now the monstersetup of M is 1;
	add mechanical joint to the banishItems of M, if absent;
	add erasure-salve to the tradableItems of M, if absent;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	if M is robomilkmaid, now the milk volume of M is 8;
	now M is unconcerned.

To decide which number is the starting difficulty of (M - robomaid):
	decide on 6.

To say SummoningFlav of (M - a robomaid):
	if M is in the location of the player:
		say "The teleporter emits a definitive sounding hum, and light fills the room as a voluptuous robot materialises on the pad.[line break][second custom style]'SHOULD I CLEAN THAT UP FOR YOU?'[roman type][line break]";
	otherwise:
		say "You hear the sound of a robotic voice coming from elsewhere in the hotel.[line break][second custom style]'SHOULD I CLEAN THAT UP FOR YOU?'[roman type][line break]".

To say LeftoverDesc (N - 127):
	say "There is a pile of mangled nuts and bolts here that used to be a fully functional robomaid.[line break]".

To say DragArrival of (M - a robomaid) to (R - Hotel20):
	say "[speech style of M]'LAUNDRY PROTOCOL INITIATED. [caps please] REMAIN SEATED.'[roman type][line break]".

To say DragArrival of (M - a robomaid) to (R - a room):
	let P be the number of patrons in R;
	if P > 0:
		say "[speech style of M]'TRANSPORT PROTOCOL COMPLETE. SENSORS INDICATE WE ARE ALONE. ERROR, UNCAUGHT INHIBITIONS EXCEPTION. I CAN'T HOLD BACK, [robogreeting of M].'[roman type][line break]You make [if the player is disgraced]excruciating[otherwise]smouldering[end if] eye contact with [if P is 1][NameDesc of a random patron in R][otherwise]a few of the patrons[end if] as [NameDesc of M] pins you against a wall with [his of M] strangely supple metal body.";
	otherwise:
		say "[speech style of M]'TRANSPORT PROTOCOL COMPLETE.'[roman type][line break]".

To say DragArrival of (M - a robomilkmaid) to (R - a room):
	let P be the number of patrons in R;
	if P > 0:
		say "[speech style of M]'TRANSPORT PROTOCOL COMPLETE. HEY THERE, [if P > 0]PLURAL [end if]BIG [caps boy of a random patron]. EXECUTING PERFORMANCE SEQUENCE.'[roman type][line break]You make [if the player is disgraced]excruciating[otherwise]smouldering[end if] eye contact with [if P is 1][NameDesc of a random patron in R][otherwise]a few of the patrons[end if] as [NameDesc of M] lays you down on the ground and climbs on top of you.";
	otherwise:
		say "[speech style of M]'TRANSPORT PROTOCOL COMPLETE.'[roman type][line break]".

To say ShortDesc of (M - a robomaid):
	say "robomaid".
To say ShortDesc of (M - a robomilkmaid):
	say "robomilkmaid".

To say MediumDesc of (M - dainty robomaid):
	say "dainty RoboMaid".
To say MediumDesc of (M - prissy robomaid):
	say "prissy RoboMaid".
To say MediumDesc of (M - a robomilkmaid):
	say "sultry robomilkmaid".

Part 1 - Misc Flavour

[To compute unique periodic effect of (M - a robomaid):
	if a random number between 1 and 30 is 1:
		[TODO: cleanup.]]

To compute unique periodic effect of (M - a robomilkmaid):
	if M is not combative:
		if lactation fetish is 1 and M is in Hotel19 and the milk volume of M < 12:
			if M is in the location of the player, say "[BigNameDesc of M] attaches [himself of M] to the kichten fridge by some kind of cable, and you hear a pumping sound. You watch [his of M] transparent [']jugs['] fill close to the brim with [milk].";
			now the milk volume of M is 12;
		otherwise:
			increase the milk charge of M by a random number between 1 and 2;
			if the milk charge of M > 45:
				now the milk charge of M is 0;
				if lactation fetish is 1 and a random number between 8 and 15 < the milk volume of M:
					if M is in the location of the player, say "[BigNameDesc of M] reaches up and squeezes [his of M] rubber nipples, forcing several droplets of milk out onto the floor.";
					let MV be a random number between 2 and 3;
					PuddleUp milk by MV in (the location of M);
					decrease the milk volume of M by MV;
				otherwise:
					if M is in the location of the player, say "[BigNameDesc of M] pulls up [his of M] apron, revealing a large robotic [DickDesc of M]. [big he of M] starts jacking off, moaning in a grating monotone as [his of M] [LongDickDesc of M] blows [his of M] load on the floor.";
					PuddleUp semen by (a random number between 2 and 3) in (the location of M).

Part 2 - Perception

To compute perception of (M - a robomaid):
	say "[BigNameDesc of M] notices you!";
	if the current-errand of M is completed and M is friendly:
		compute errand completion of M;
	otherwise if the number of worn dirty clothing > 0:
		if M is unfriendly:
			say "[big his of M] eyes turn red and [he of M] spins towards you.[line break][speech style of M]'CLEANLINESS VIOLATION DETECTED. EMERGENCY LAUNDERING PROGRAM INITIATED.'[roman type][line break]";
		otherwise:
			say "[big his of M] eyes turn yellow as [he of M] glides up to you.[line break][speech style of M]'CLEANLINESS VIOLATION DETECTED. [caps please] INSERT FUNDS TO INITIATE MEMORY WIPE.'[roman type][line break][big he of M] points to [one of]a[or]the[stopping] slot between [his of M] breasts, labelled [']PAYMENT['].";[if you don't pay her she takes matters into her own hands]
		FavourDown M by 3;
	otherwise if the number of worn clothing is 0:
		if the number of glazed body parts is 0 or M is unfriendly:
			say "[big his of M] eyes turn red and [he of M] spins towards you.[line break][speech style of M]'DECENCY VIOLATION DETECTED. CLOTHING ASSISTANCE PROGRAM INITIATED.'[roman type][line break]";
			anger M;
		otherwise:
			say "[big his of M] eyes flash yellow and [he of M] glides up next to you.[line break][speech style of M]'DECENCY VIOLATION DETECTED. [caps please] INSERT FUNDS TO INITIATE MEMORY WIPE.'[roman type][line break][big he of M] points to [one of]a[or]the[stopping] slot between [his of M] breasts, labelled [']PAYMENT['].";
		FavourDown M by 3;
	otherwise if the class of the player is vixen:
		say "[big his of M] eyes turn red and [he of M] spins toward you.[line break][speech style of M]'BURGLAR DETECTED! PUBLICITY STUNT PROGRAM INITIATED!'[roman type][line break]";
		anger M;
	otherwise if the current-errand of M is completed and M is not uniquely unfriendly:
		compute errand completion of M;
	otherwise if M is friendly:
		say "[big he of M] glides towards you, striking a provocative pose as [he of M] addresses you in a monotone.[line break][speech style of M]'FLIRTATION PROGRAM CLASS ['][robogreeting of M]['] initiated. HEY, [robogreeting of M]. DOES THIS [one of]MAKE MY BOSOM UNIT LOOK BIG[or]SKIRT REVEAL SUFFICIENT CUSHIONING UNIT[or]POSE ACCENTUATE MY MONEY-SHOT APPARATUS[at random]?[roman type][line break][if the player is able to speak]Say yes?[end if]";
		if the player is consenting and the player is able to speak and the refractory-period of M < 0:
			if the player is not hotel employed:
				say "[big his of M] eyes turn green, and [he of M] points unsubtly toward a slot between [his of M] breasts, labelled [']PAYMENT['].";
				FavourDown M;
			otherwise:
				say "[big his of M] eyes turn green.[line break][speech style of M]'THANKS. [caps boy of the player]FRIEND.'[roman type][line break]";
			now the refractory-period of M is the refractory-time of M;
		otherwise:
			if the player is not hotel employed:
				say "[if the player is not able to speak or the refractory-period of M >= 0][big he of M] seems to [']think['] for a moment, and i[otherwise]I[end if]ts eyes turn yellow.[line break][speech style of M]'THANK YOU FOR YOUR FEEDBACK, VALUED [robogreeting of M]'[roman type][line break]";
				increase the raw difficulty of M by 1;
			otherwise:
				say "[big his of M] eyes turn yellow.[line break][speech style of M]'THANKS. [caps boy of the player]FRIEND.'[roman type][line break]";
				FavourDown M;
				decrease the employee-record of senior robobellboy by 1;[she spreads bad rumours about you!]
	otherwise:
		say "[big his of M] eyes turn red and [he of M] spins towards you.[line break][speech style of M]'[if the player is hotel employed]COWORKER[otherwise]FREELANCER[end if] DETECTED. PUBLICITY STUNT PROGRAM INITIATED.'[roman type][line break]".

To compute perception of (M - a robomilkmaid):
	say "[BigNameDesc of M] notices you!";
	if the ready-for-milking of milking-quest is 1:
		say "[big his of M] eyes turn red and [he of M] spins toward you.[line break][speech style of M]'HIGH VOLUME OF MILK DETECTED. DAIRY FARM SIMULATION PROGRAM INITIATED.'[roman type][line break]";
		anger M;
	otherwise if the player is hotel employed:
		if breasts is lewdly exposed or there is a worn trainee bra:
			say "[big he of M] glides towards you, addressing you in a monotone.[line break][speech style of M]HEY [caps boy of the player]FRIEND. YOU HAVE SOMETHING ON YOUR CHEST. TITS. TEEHEE. TEEHEE.[roman type][line break][big he of M] seems to abruptly lose interest.";
			calm M;
		otherwise if the largeness of breasts < 2:[exposed but not lewdly exposed? You must have small breasts!]
			say "[big his of M] eyes turn red and [he of M] spins toward you.[line break][speech style of M]DECENCY VIOLATION DETECTED. [if lactation fetish is 1]MAMMARY STIMULATION PROGRAM INITIATED[otherwise]EMERGENCY MAMMARY DEVELOPMENT PROGRAM INITIATED[end if].'[roman type][line break]";
			anger M;
		otherwise:
			say "[big his of M] eyes turn red and [he of M] spins toward you.[line break][speech style of M]'DECENCY VIOLATION DETECTED. MAMMARY LIBERATION PROGRAM INITIATED.[roman type][line break]";
			anger M;
	otherwise if the class of the player is vixen:
		say "[big his of M] eyes turn red and [he of M] spins toward you.[line break][speech style of M]'BURGLAR DETECTED! PUBLICITY STUNT PROGRAM INITIATED!'[roman type][line break]";
		anger M;
	otherwise if lactation fetish is 1 and the milk volume of M >= 12:
		say "[big his of M] eyes turn red and [he of M] spins toward you.[line break][speech style of M]'ELIGIBLE CUSTOMER DETECTED! MILK STOARAGE IS NEARING MAXIMUM CAPACITY. REQUESTING JOINT PERFORMANCE ROUTINE...'[roman type][line break]";
		anger M;
	otherwise if M is friendly:
		say "[big he of M] glides toward you, pushing out [his of M] chest as [he of M] addresses you in a monotone.[line break][speech style of M]'FLIRTATION PROGRAM INITIATED...[one of]YOU ARE SEXY.[or]OBSERVE MY TITS, HOT STUFF.[or]BEEP BOOP, I LIKE MAN SOUP.[at random] [caps please] TIP ME.[roman type][line break][big he of M] points to [one of]a[or]the[stopping] slot between [his of M] breasts, labelled [']PAYMENT['].";
		FavourDown M;
	otherwise:
		say "[big his of M] eyes turn red and [he of M] spins toward you.[line break][first custom style]'FREELANCE WHORE DETECTED. PUBLICITY STUNT PROGRAM INITIATED.'[roman type][line break]";
		anger M.

Part 3 - Combat

Section 1 - Attack

The robomaid priority attack rules is a rulebook. The priority attack rules of a robomaid is the robomaid priority attack rules.

[After reaching +3 difficulty, the robomaid constantly emits aphrodisiacs]
This is the robomaid haziness rule:
	let M be current-monster;
	if the difficulty of M > the starting difficulty of M + 1:
		say "[one of]A haze of pink smoke follows [NameDesc of M] around as [he of M] moves.[or]Pink smoke follows [NameDesc of M] around in a haze.[or][BigNameDesc of M]'s movements are followed by a haze of pink smoke.[in random order] [one of]There's so much of it that you're forced to breathe some of it in.[or]You cough as you breathe it in.[or]You can't help breathing a bit of it in.[in random order]";
		Arouse 100.
The robomaid haziness rule is listed in the robomaid priority attack rules.

To compute damaging attack of (M - a robomaid):
	if the difficulty of M > the starting difficulty of M and a random number between 1 and 3 is 1:
		compute molesting attack of M;
	otherwise:
		compute striking attack of M.

[The robomaid puffs out aphrodisiac, avoided with intelligence.]
To compute molesting attack of (M - a robomaid):
	let D be the difficulty of M - the starting difficulty of M;
	say "[BigNameDesc of M] puckers [his of M] mechanical lips, blowing out a [if D > 2]huge cloud[otherwise]cloud[end if] of pink smoke. [run paragraph on]";
	if the latex-transformation of the player > 6:
		say "You don't need to breathe, so it doesn't affect you.";
	otherwise if there is a worn ringagged clothing or (the intelligence roll of M >= the intelligence of the player):
		if there is a worn ringagged clothing, say "With no way of closing your mouth, you are forced to breathe in a good amount of it. You cough as the heat of new arousal quickly spreads out from your core.";
		otherwise say "It takes you a couple seconds to realise that you probably shouldn't breathe it in, and you cough as you feel the heat of new arousal spreading out from your core.";
		Arouse 200;
	otherwise:
		say "You notice that the smoke disperses really quickly, so you hold your breath just long enough to avoid breathing any of it in.".

[The robomilkmaid sprays out an aphrodisiac, avoided with dexterity]
To compute molesting attack of (M - robomilkmaid):
	say "[BigNameDesc of M] lifts [his of M] apron, aiming [his of M] [LongDickDesc of M] at you as it shoots out a spurt of pink liquid. [run paragraph on]";
	let B be the painful-part of M;
	if the latex-transformation of the player > 6:
		say "Some of it lands on you, but it doesn't seem to have any effect.";
	otherwise:
		if the accuracy roll of M >= the dexterity of the player:
			if B is face:
				if there is worn ringagged clothing:[hitting your face is a "crit"]
					say "A good amount of the liquid lands directly in your open mouth, and you accidentally drink it. Your knees grow weak as arousal blooms through your whole body.";
					Arouse 500;
					FatigueUp 15;
				otherwise:
					say "A good amount of the liquid hits you in the face, and you accidentally swallow some it. Your lips tingle as arousal blooms through your whole body.";
					Arouse 400;
			otherwise if B is exposed:
				say "A good amount of the liquid hits you [TargetName of B], where it rapidly soaks into your skin. Your skin tingles as arousal blooms through your body.";
				Arouse 300;
			otherwise:
				say "A some of the liquid hits you [TargetName of B], but luckily it doesn't touch your skin directly.";
		otherwise:
			say "You avoid letting any of the liquid land on you!";

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
		bore M;
		compute LaundryRobots;
		rule succeeds;
	otherwise if the number of barriers in the location of the player is 0:
		say "[BigNameDesc of M]'s [LongDickDesc of M] pushes out from underneath [his of M] apron and [one of]spurts warm, pink liquid across your [ShortDesc of breasts][or]shoots several [']ropes['] of warm, pink fluid onto your [BellyDesc][or]splatters your [ShortDesc of face] with warm, pink liquid[at random].[line break][speech style of M]'OOH. SO HOT. SO HOT.'[roman type][line break]The fluid rapidly absorbs into your skin and causes a wave of arousal!";
		let C be a random video-monitor in the location of M;
		if C is video-monitor, now C is recording-disgrace;
		Arouse 1000;
		moderateHumiliate;
		say "[line break][FuckerDesc of M] seems to lose interest.";
		bore M;
		rule succeeds;
	otherwise if the number of worn clothing is 0 and there is an alive robobellboy:[the maid drags you to the nearest robobellboy for clothing.]
		say "[BigNameDesc of M][']s eyes turn purple as [he of M] sweeps you off the ground.[line break][speech style of M]'SEARCHING... SEARCHING... PATRON FOUND. EXECUTING TRANSPORT PROTOCOL.'[roman type][line break]";
		let N be a random robobellboy in the location of the player;
		unless N is monster:
			let R be a random modern room;
			while R is not placed and R is not Hotel20 and R is not bossed:
				now R is a random modern room;
			now N is a random alive robobellboy;
			unless N is monster, now N is a random robobellboy;
			now N is in R;
			drag to R by M;
		say "[speech style of current-monster]'PROGRAM REQUEST: ['][robogreeting of M]['] DOT CLOTHING UNDERSCORE ASSIST.'[roman type][line break] [BigNameDesc of M] drops you on the ground in front of [NameDesc of N] as [he of M] suddenly wheels around, eyes glowing red. Uh-oh.";
		unless N is dangerous, anger N;
		now N is interested;
		now the boredom of N is 0;
		bore M;
		rule succeeds;
	otherwise:
		say "[BigNameDesc of M][']s eyes turn purple as [he of M] sweeps you off the ground.[line break][speech style of M]'SEARCHING... SEARCHING... AUDIENCE FOUND. EXECUTING TRANSPORT PROTOCOL.'[roman type][line break]";
		let R be a random modern room;
		while (R is not placed or R is Hotel20 or R is bossed):
			now R is a random modern room;
		let X be a random number between 1 and 3;
		while X > 0:
			let P be a random off-stage generic-appropriate patron;
			now P is in R;
			decrease X by 1;
		drag to R by M;
		compute publicity stunt of M;
		satisfy M for 500 seconds;
		rule succeeds.
The unique punishment rule of a robomaid is usually the robomaid punishment rule.

To compute publicity stunt of (M - a robomaid):
	let R be a random number between 1 and 3;
	say "[BigNameDesc of M] [if face is not actually occupied]passionately kisses you[otherwise]peppers your face with kisses[end if], grinding [his of M] surprisingly supple body against you as your audience begins to masturbate. [run paragraph on]";
	let P be a random patron in the location of the player;
	let X be the number of patrons in the location of the player;
	let D be nothing;
	repeat with C running through currently uncovered clothing:[already checks for worn]
		if C is removable and ((breasts is not exposed and C is actually breast covering clothing) or C is potentially at least partially vagina covering):
			now D is C;
			break;
	if D is clothing:[flash]
		say "You feel [NameDesc of M][']s hand grab your [printed name of D] and begin to pull it off.[line break][speech style of current-monster]'LET'S GET NAKED, [robogreeting of M].'[roman type][line break]Do you let [him of M] strip you? ";
		if the player is bimbo consenting:
			say "[if X > 1]The patrons chuckle[otherwise][BigNameDesc of P] smirks[end if] as [NameDesc of M] slips off your [printed name of D] and tosses it to the ground, revealing everything underneath it. You feel a wave of [if the player is disgraced]embarrassment[otherwise]excitement[end if] as [if X > 1]each of them blow their loads on the ground and leave the room[otherwise][NameDesc of P] blows [his of P] load on the ground and leaves[end if]. [BigNameDesc of M] sets you down gently, satisfied.";
			now D is in the location of the player;
			SemenPuddleUp X in (the location of M);
			FavourUp M;
			increase the employee-record of senior robobellboy by 1;
			humiliate X * MODERATE-HUMILIATION;
		otherwise:
			say "[if X > 1]The patrons grumble[otherwise][BigNameDesc of P] grumbles[end if] in disappointment as you smack [NameDesc of M][']s hand away and squirm in [his of M] grip. [big his of M] lips deliver a sharp jolt of electricity to your skin, leaving a stinging welt on your face as [if X > 1]the patrons leave[otherwise][NameDesc of P] leaves[end if] and [NameDesc of M] abruptly drops you.";
			PainUp 10;
			decrease the employee-record of senior robobellboy by 1;
	otherwise:[grope]
		say "[BigNameDesc of M] begins to grope you, turning to put the act on full display for [if X > 1]the patrons[otherwise][NameDesc of P][end if] as [he of M] fondles your [ShortDesc of breasts].[line break][speech style of current-monster]'I AM. SO HORNY.'[roman type][line break]Do you smack [his of M] hand away? ";
		if the player is reverse bimbo consenting:
			say "[if X > 1]The patrons grumble[otherwise][BigNameDesc of P] grumbles[end if] in disappointment as you smack [NameDesc of M][']s hand away and squirm in [his of M] grip. [big his of M] lips deliver a sharp jolt of electricity to your skin, leaving a stinging welt on your face as [if X > 1]the patrons leave[otherwise][NameDesc of P] leaves[end if] and [NameDesc of P] abruptly drops you.";
			PainUp 10;
			decrease the employee-record of senior robobellboy by 1;
		otherwise:
			say "[if X > 1]The patrons stroke themselves[otherwise][BigNameDesc of P] strokes[end if] even harder as [NameDesc of M] dexterously twists your nipples and palms your [AssDesc]. You feel a wave of [if the player is disgraced]embarrassment[otherwise]excitement[end if] and arousal as [if X > 1]each of them blow their loads on the ground and leave the room[otherwise][NameDesc of P] blows [his of P] on the ground and leaves[end if]. [BigNameDesc of M] sets you down gently, satisfied.";
			Arouse 1000;
			SemenPuddleUp X in (the location of M);
			FavourUp M;
			increase the employee-record of senior robobellboy by 1;
			humiliate X * (MODERATE-HUMILIATION + 5);
	repeat with N running through patrons in the location of the player:
		destroy N.

The unique punishment rule of robomilkmaid is the robomilkmaid punishment rule.

This is the robomilkmaid punishment rule:
	if presented-orifice is not nothing, say "[speech style of current-monster]'REQUEST NOT UNDERSTOOD. IGNORING.'[roman type][line break]";
	let M be current-monster;
	if the player is immobile:
		say "[one of][BigNameDesc of current-monster] waits beside you patiently.[or][cycling]";
		[compute maidFluff of M;]
		rule succeeds;
	otherwise if the ready-for-milking of milking-quest is 1:
		let C be a random top level breasts protection clothing;
		if there is worn actually nipple covering clothing and C is clothing:
			if C is trainee bra or (C is not-top-displacable and C is not stealable):
				say "[BigNameDesc of current-monster] cocks [his of current-monster] head sideways, staring at your [ShortDesc of C]![line break][speech style of current-monster]'ERROR: UNREMOVABLE CLOTHING. MILKING ROUTINE TERMINATED EARLY. THIS INCIDENT HAS BEEN LOGGED.'[roman type][line break][BigNameDesc of current-monster] turns to leave you alone.";
				bore M;
			otherwise if C is currently not-top-displacable:
				if the number of worn breast covering top-placed clothing is 1:
					say "[BigNameDesc of current-monster] rips open your [ShortDesc of C] at the nipples!";
					now C is top-ripped;
				otherwise:
					say "[BigNameDesc of current-monster] yanks off your [ShortDesc of C] and drops it on the ground!";
					dislodge C;
					now C is in the location of the player;
			otherwise:
				say "[BigNameDesc of current-monster] yanks open your [printed name of C], exposing your [ShortDesc of breasts]!";
				TopDisplace C;
			rule succeeds;
		otherwise:
			say "[line break][speech style of current-monster]'OOH OOH OOH. YOU ARE ONE CUTE DAIRY COW.'[roman type][line break][BigNameDesc of current-monster][']s robotic hands latch onto your [BreastDesc]! Moments later, some kind of ports open up inside [his of current-monster] palms, and suck your nipples inside! By squeezing [his of current-monster] hands in a rhythmic motion, [NameDesc of current-monster] milks your breasts! Your fresh [milk] disappears up into [his of current-monster] arms, and you can see it being collected inside the transparent milk tanks that are [his of current-monster] own [']breasts['].";
			let N be 0;
			now milking is 1;
			while ready-for-milking of milking-quest is 1:
				if N > 0, say "Your breasts are so full, that the suction keeps going!";
				let MV be the milk volume of breasts;
				if MV > 8, now MV is 8;
				increase the milk volume of current-monster by MV;
				decrease the milk volume of breasts by MV;
				stimulate breasts from current-monster;
				increase N by 1;
				check milking unreadiness;
				check for arousal change;
			now milking is 0;
			satisfy M;
			BreastsSensitivityUp 1;
			rule succeeds;
	otherwise if the player is hotel employed:
		let C be a random stealable top level breasts protection clothing;
		if C is clothing and C is not trainee bra:
			if C is currently not-top-displacable:
				say "[BigNameDesc of current-monster] tears off your [printed name of C], exposing your [ShortDesc of breasts]!";
				destroy C;
			otherwise:
				say "[BigNameDesc of current-monster] yanks open your [printed name of C], exposing your [ShortDesc of breasts]!";
				TopDisplace C;
			rule succeeds;
		otherwise if the largeness of breasts < 2:
			say "[BigNameDesc of current-monster] splashes your chest with a vial of pink liquid, which causes your [ShortDesc of breasts] to suddenly grow!";
			BustUp a random number between 2 and 3;
			bore M;
			rule succeeds;
	otherwise if the number of barriers in the location of the player is 0:
		say "[BigNameDesc of M][']s eyes turn purple as [he of M] sweeps you off the ground.[line break][speech style of M]'SEARCHING... SEARCHING... PATRON FOUND. EXECUTING TRANSPORT PROTOCOL.'[roman type][line break]";
		let R be a random placed unbossed modern room;
		while R is Hotel20:
			now R is a random placed unbossed modern room;
		let X be a random number between 1 and 3;
		while X > 0:
			let P be a random off-stage generic-appropriate patron;
			now P is in R;
			decrease X by 1;
		if the player is not in R, drag to R by M;
		compute publicity stunt of M;
		bore M;
		rule succeeds;
	otherwise:
		say "[BigNameDesc of M] pins you against a wall, grinding [his of M] surprisingly supple body against you as [he of M] [if face is not actually occupied]passionately kisses your lips[otherwise]peppers your face with kisses[end if].";
		let C be a random video-monitor in the location of M;
		if C is video-monitor, now C is recording-disgrace;
		moderateHumiliate;
		say "[line break][FuckerDesc of M] seems to lose interest.";
		bore M;
		rule succeeds.

To compute publicity stunt of (M - a robomilkmaid):
	let P be a random patron in the location of the player;
	say "[if the number of patrons in the location of the player > 1]The patrons watch[otherwise][BigNameDesc of P] watches[end if] [run paragraph on]";
	if face is not actually occupied and lactation fetish is 1 and the latex-transformation of the player <= 4 and milk volume of M >= 8: [breast feeding]
		say "as [NameDesc of M] pushes one of its [']nipples['] into your mouth. Its impossibly strong, vice-like grip prevents you from freeing your [LipDesc] from the seal they have around the [']teat['] of this soft, silicone [']boob['].[line break][speech style of current-monster]'OOH. OOH. MY NIPPLES ARE. SO TENDER.'[roman type][line break]Some kind of pump kicks in, and with a whirring sound, it begins to express what is unmistakably human breast milk into your mouth.";
		let MV be the milk volume of M;
		if MV > 12, now MV is 12;
		FaceFill milk by MV;
		decrease the milk volume of M by MV;
		say moderateHumiliateReflect;
	otherwise if face is not actually occupied:
		say "as [NameDesc of M] lifts up [his of M] apron, pushing [his of M] [LongDickDesc of M] in your face as [his of M] eyes rapidly flash red and pink.[line break][speech style of current-monster]'OOH. OOH. [caps please] SUCK ME.'[roman type][line break] [big he of M] shoves [his of M] [DickDesc of M] into your open mouth and ejaculates with incredible force. Do you try to swallow it?";
		now M is penetrating face;[TODO: possibly update]
		if the player is bimbo consenting:
			say "You desperately gulp, just barely able to keep up as [NameDesc of M] thoroughly empties [his of M] stored [semen] into your mouth. Eventually, the flow dies down, and [he of M] pulls out, rolling off of you as [his of M] apron falls back into place.";
			FaceFill semen by 8;
			say moderateHumiliateReflect;
		otherwise:
			say "Your mouth rapidly fills as you hold your throat closed, sparing your stomach from [his of M] huge load. With nowhere else to go, [semen] explodes out the edges of your mouth, coating your cheeks, chin, and neck as the flow steadily dies down, and [NameDesc of M] slowly pulls out. You spit out the rest of it, gasping for air as [he of M] rolls off you and lets [his of M] apron fall back into place.";
			CumFaceUp 3;
			SemenPuddleUp 1;
			say slightHumiliateReflect;
		BlowCount;
	otherwise if bukkake fetish is 1 and a random number between 1 and 2 is 1:[bukkake]
		say "as [NameDesc of M] lifts up [his of M] apron, pushing [his of M] [LongDickDesc of M] in your face as [his of M] eyes rapidly flash red and green.[line break][speech style of M]'OOH. OOH. I AM SHOOTING IT.'[roman type][line break] [big his of M] [DickDesc of M] throbs visibly as it blasts your face with several bursts of makeup powder, followed by several ropes of thick, sticky [semen]. You can feel it clinging to your eyelids and rolling slowly down your cheeks as [he of M] rolls off of you.";
		FaceUp 1;
		CumFaceUp 2;
		say moderateHumiliateReflect;
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
			say "as [NameDesc of M] yanks your [ShortDesc of D] out of the way.[line break][speech style of M]'SHOW ME THE GOODS, BABY.'[roman type][line break][big he of M] smacks your [if breasts is lewdly exposed][ShortDesc of breasts][otherwise]face[end if], leaving a painful red welt in the shape of a hand as [he of M] rolls off of you.";
			if D is top-displacable and D is top-placed, now D is top-displaced;
			otherwise now D is crotch-displaced;
			PainUp 10;
			say slightHumiliateReflect;
		otherwise:[aphrodisiac]
			say "as [NameDesc of M][']s [LongDickDesc of M] pushes out from underneath [his of M] apron and [one of]spurts warm, pink liquid across your [ShortDesc of breasts][or]shoots several [']ropes['] of warm, pink fluid onto your [BellyDesc][or]splatters your [ShortDesc of face] with warm, pink liquid[at random].[line break][speech style of M]'OOH. SO HOT. SO HOT.'[roman type][line break]You can feel the fluid absorbing into your skin as [NameDesc of M] rolls off of you. You feel incredibly turned on!";
			Arouse 1000;
			say slightHumiliateReflect;
	satisfy M;
	increase the employee-record of senior robobellboy by 1;
	if the number of patrons in the location of the player > 1, say "The patrons take turns high fiving each other as they file out of the room.";
	otherwise say "[NameDesc of P] smirks at you as [he of P] leaves the room.";
	repeat with N running through patrons in the location of the player:
		destroy N.

[Milking only for now]
Definition: robomilkmaid is uniquely ready to entice:
	if the ready-for-milking of milking-quest is 1, decide yes;
	decide no.

To compute enticing of (M - robomilkmaid):
	let CM be current-monster;
	now current-monster is M;
	let S be the sensitivity of breasts;
	say "[speech style of M]'PLEASE ADOPT THE DAIRY MILKING SUBMISSION POSITION. I PROMISE I WILL MAKE IT FEEL REAAAAAAAAALY GOOD.'[roman type][line break][BigNameDesc of M] makes squeezing motions towards you with [his of M] robotic hands.";
	check enticing of M for breasts with temptation level S;
	now current-monster is CM.

Part 4 - Conversation

Section 1 - Greeting

To say FirstResponse of (M - a robomaid):
	if the class of the player is maid:
		say "[first custom style]'GREETINGS, [caps boy of the player]FRIEND. YOU SEEM BUSY. GOODBYE.'[roman type][line break]";
	otherwise:
		say "[first custom style]'GREETINGS [robogreeting of M].'[roman type][line break]";

To say RepeatResponse of (M - a robomaid):
	if the class of the player is maid:
		say "[first custom style]'HEY [caps boy of the player]FRIEND. GOODBYE.'[roman type][line break]";
	otherwise if M is unconcerned:
		say "[first custom style]'GREETINGS [robogreeting of M].'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] ignores you.".

RoboMaid ends here.
