Giant Wasp by Monster begins here.

A giant wasp is a kind of monster.  A giant wasp is usually woods dwelling.  A giant wasp is usually airborne.  A giant wasp can be flying. A giant wasp is usually not flying. A giant wasp is usually willing to do anal.  A giant wasp is usually neuter. A giant wasp is poison immune.  A giant wasp has a number called fertilization-cooldown.

There are 8 giant wasps.  Figure of Giant Wasp is the file "wasp1.png".  The printed name of giant wasp is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style][monster-adjective of item described] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The printed plural name of giant wasp is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style][monster-adjective of item described] giant wasps[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  The text-shortcut of giant wasp is "wsp".  The description of giant wasp is usually "[GiantWaspDesc]".

The list of wasp-types is a list of monster-adjectives that varies.  List of wasp-types is {buzzing, hovering, angry}.
This is the scramble wasp adjectives rule:
	sort the list of wasp-types in random order.
The scramble wasp adjectives rule is listed in the monster adjectives scrambling rules.

To say GiantWaspDesc:
	if images visible is 1, display the Figure of Giant Wasp;
	say "This giant flying insect is larger than you, but is still capable of perfect flight from its rapidly oscillating wings.  As with real wasps in the real world, this beast seems to be very aggressive for no clear reason.  Aside from its terrifying giant stinger, you can also see an ovipositor extending from its underbelly.".

To set up (M - a giant wasp):
	reset M;
	now the monstersetup of M is 1;
	if egg laying fetish is 1 and mythical creature fetish is 1:
		repeat with L running through the list of wasp-types:
			if L is unused:
				now the monster-adjective of M is L;
				break;
			otherwise:
				now the monster-adjective of M is entry 1 in list of wasp-types;
				scramble monster adjectives;
		now the difficulty of M is 6;
		now the fertilization-cooldown of M is 100;
		now the health of M is the maxhealth of M;
	otherwise:
		remove M from play;

To decide which number is the girth of (M - a giant wasp):
	decide on 6.

Definition: A giant wasp (called M) is second level:
	if egg laying fetish is 0, decide no;
	decide yes.

This is the spawn initial giant wasp rule:
	if the number of alive giant wasps is 0 and egg laying fetish is 1:
		let M be a random giant wasp;
		summon M in the woods.
The spawn initial giant wasp rule is listed in the setting up woods monsters rules.
	
Part 1 - Misc Flavour

To say SummoningFlav of (M - a giant wasp):
	if the location of the player is Woods30, say "You hear someone (or something) moaning intensely from inside the statue, loudly climaxing as a large object, about the size of a football rolls through the stony passage. The surface of the object cracks, and a full-grown [printed name of M] emerges from the egg and begins hovering in the air just below the statue's chest.";
	otherwise say "You hear an egg cracking somewhere close by.".
	
Definition: a giant wasp (called M) is virginity taking:
	decide yes.[an ovipositor is a kind of sex organ, isn't it?]

Part 2 - Perception

Definition: a giant wasp (called M) is normally guardian:
	if the class of the player is broodmother, decide yes;
	decide no.

Definition: a giant wasp (called M) is normally ally:
	if the class of the player is broodmother or the medium egg count of belly > 0, decide yes;
	decide no.

Definition: a giant wasp (called M) is normally buddy:
	if the class of the player is broodmother or the medium egg count of belly > 0, decide yes;
	decide no.

Definition: a giant wasp (called M) is normally acquaintance:
	if the class of the player is broodmother or the medium egg count of belly > 0, decide yes;
	decide no.

Definition: a giant wasp (called M) is normally annoyed:
	if the class of the player is broodmother or the medium egg count of belly > 0, decide yes;
	if the favour of M > the aggro limit of M, decide yes;
	decide no.

To compute perception of (M - a giant wasp):
	if the player-class is broodmother:
		say "The [M] seems to notice you, and begins buzzing protectively around you!";
		calm M;
		now M is interested;
	otherwise if the medium egg count of belly > 0:
		say "The [M] seems to notice you, and starts following you around passively!";
		calm M;
	otherwise:
		say "The [M] seems to notice you, and flies towards you aggressively!";
		anger M.
		
Part 3 - Motion and Seeking

To compute motion of (M - a giant wasp):
	if the fertilization-cooldown of M <= 0 and there is a medium egg in the location of M:
		let E be a random medium egg in the location of M;
		if E is not held by the player and E is laid:
			Fertilize E with M;
	otherwise if M is in Dungeon11 or M is in Dungeon10:
		try M going east;
	otherwise:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and P is not Dungeon12:
			try M going A;
		otherwise if A is a random N-viable direction and P is not Dungeon12:
			try M going A;
	if the fertilization-cooldown of M > 0, decrease the fertilization-cooldown of M by seconds.
	
To compute (M - a giant wasp) seeking (D - a direction):
	if the fertilization-cooldown of M <= 0 and there is a medium egg in the location of M:
		let E be a random medium egg in the location of M;
		if E is not held by the player and E is laid:
			Fertilize E with M;
	otherwise:
		try M going D;
	if the fertilization-cooldown of M > 0, decrease the fertilization-cooldown of M by seconds.

Part 4 - Fertilize

To Fertilize (E - a medium egg) with (M - a giant wasp):
	if E is laid and E is not carried by the player and the player-class is not broodmother:[The broodmother can birth her own giant wasps and needs eggs in general, so we don't want the giant wasps screwing that up]
		if M is in the location of the player:
			say "The [M] swoops down and lands next to the [printed name of E].  [one of]A different phallic appendage protrudes itself from the wasp's underbelly and it drips a few drops of a mostly clear liquid onto the egg.  You watch, paralysed with awe and fear, as the white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack.  Within seconds, a familiarly looking larva has emerged from the egg.  The wasp keeps dropping its seemingly magic reproductive juices onto the giant maggot, which, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds.  Before you realise what has happened, there are two identical giant wasps hovering in front of you.  The 'father' looks ready for round 2, and the newborn doesn't seem to care that you're his 'mother'. It looks like it wants to follow its immediate instincts to reproduce.[or]Once again you are forced to watch the wasp fertilize your egg, changes colour to light brown, doubles in size, and then just as quickly, starts to crack.  Within seconds, a familiarly looking larva has emerged from the egg.  The wasp keeps dropping its seemingly magic reproductive juices onto the giant maggot, which, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds.  The 'father' looks ready for round 2, and just like the previous time, the newborn doesn't seem to care that you're his 'mother'...[stopping]";
		anger M;
		remove E from play;
		let H be a random off-stage wasp-antennae;
		if a random number between 1 and 2 is 1 and H is actually summonable:
			summon H cursed;
			say "[bold type]Suddenly a pair of antennae on a headband appears on your head![roman type][line break]";
		let W be a random off-stage giant wasp;
		if W is monster:
			now W is in the location of the player;
			now the difficulty of W is 6;
			now the fertilization-cooldown of W is 500;
			now the fertilization-cooldown of M is 200;
			anger W;
			bore W for 1 seconds;
			now W is released;
			now W is newborn;
			now the health of W is the maxhealth of W;
		now M is daddy.
		
Part 5 - Combat

Section 1 - Protect and Attack

To compute (M - a giant wasp) protecting against (X - a monster):
	if X is not giant wasp and the medium egg count of belly > 0:
		compute X receiving 1 damage from M.

To say AllyDamageFlav of (M - a giant wasp) on (X - a monster):
	say "The [M] [one of]speedily flies in to protect you and your eggs.  It [or][stopping]stings the [X]!".

To compute anal sex of (M - a giant wasp):
	say "The [M] keeps thrusting with its ovipositor!  ";
	if the medium egg count of belly is 0 and image cutscenes is 1, display figure of wasp cutscene 1;
	if a random number between 1 and 2 is 1:
		say "As the [M] pushes its ovipositor into the deepest recesses of your [asshole], you feel [one of]a solid round object[or]another egg[stopping] travel through the organ and exit into your belly!";
		assfill 1 medium eggs;
	if the reaction of the player > 0:
		say "You submit to the fucking and relax your [asshole] around the ovipositor.  This lets another egg travel more easily through the sex organ, bringing the [M] closer to finishing.[if the bimbo of the player < 13]You feel very humiliated letting this happen to you almost willingly.[end if]"; [NB: humiliation is carried out inside the "Carry Out Submitting" function.]
		if the sex-length of M > 1:
			decrease the sex-length of M by 1;
			assfill 1 medium eggs;
	say "[one of][or][or][line break][if the bimbo of the player < 8][first custom style]Fuck fuck fuck, this is bad![otherwise if the bimbo of the player < 13][variable custom style]Oof!  This is intense![otherwise][second custom style]Ooh, I can't wait![end if][roman type][line break][or][or][or][or][in random order]";
	decrease the sex-length of M by 1;
	ruin asshole.
	
Definition: an giant wasp (called M) is willing to let go:
	decide no.

To compute anal climax of (M - a giant wasp):
	TimesFuckedUp M by 1;
	say "Finally the [M] pulls out and leaves you alone.";
	bore M.

The latex punishment rule of a giant wasp is usually the no latex punishment rule.

The wasp priority attack rules is a rulebook.  The priority attack rules of a giant wasp is usually the wasp priority attack rules.

This is the wasp fertilizes an egg rule:
	if there is a laid medium egg in the location of the player and the fertilization-cooldown of current-monster is 0:
		fertilize a random laid medium egg in the location of the player with current-monster;
		rule succeeds.
The wasp fertilizes an egg rule is listed last in the wasp priority attack rules.

This is the wasp tends the broodmother rule:
	let M be the current-monster;
	if current-monster is in the location of the player and the thirst of the player > 3 and the number of unfriendly monsters in the location of the player < 1 and the player-class is broodmother:
		say "The [M] seems to notice you are thirsty and buzzes around you with what almost seems to be concern. It rubs its abdomen, and a strange thick fluid starts flowing out. It positions itself above your mouth and allows it to drip towards your mouth, and in your present state you decide it[']s your best option. ";
		while the thirst of the player > 1:
			increase the stomach-water of the player by 1;
		rule succeeds;
	otherwise if current-monster is in the location of the player and the orifice soreness of the player > 8 and the number of unfriendly monsters in the location of the player < 1 and the player-class is broodmother:
		heal asshole times 2;
		heal vagina times 2;
		say "The [M] seems to notice that you are suffering some kind of birthing problems and buzzes around you with what almost seems to be concern. It sprays a sticky, sweet fluid at your crotch, which amazingly seems to make you feel a bit better.";
		rule succeeds;
	otherwise if current-monster is in the location of the player and the body soreness of the player > 8 and the number of unfriendly monsters in the location of the player < 1 and the player-class is broodmother:
		BodyHeal 2;
		say "The [M] seems to notice that you have suffered significant injury and buzzes around you with what almost seems to be concern. It sprays a sticky, sweet fluid on your bruises, and they feel slightly better!";
		rule succeeds.
The wasp tends the broodmother rule is listed in the wasp priority attack rules.

To compute the default taunting of (M - a giant wasp):
	say "The [M] buzzes around you impatiently!".

To compute the dildo stuck taunting of (M - a giant wasp):
	compute the default taunting of M.

The monster convinced rule of a giant wasp is usually the wasp unconvinced rule.
This is the wasp unconvinced rule:
	if presented-orifice is not nothing, say "The [current-monster] shows no indication of having noticed or understood your action.".

To say PullAttempt of (M - a giant wasp) at (C - a clothing):
	say "The [M] tries to push through your [printed name of C] to try and rip it off!".

To compute (M - a giant wasp) ripping (C - a clothing):
	say "The wasp forcefully penetrates it, creating a hole at the crotch!";
	now C is crotch-ripped.

To compute (M - a giant wasp) destroying (C - a clothing):
	say "It forcefully penetrates it, destroying it completely!";
	destroy C.

To compute (M - a giant wasp) displacing (C - a clothing):
	say "The [M] uses its ovipositor as a prehensile limb and pulls the [if C is hobble-skirted]skirt up, exposing your crotch[otherwise if C is trousers]waistband down to your knees[otherwise]crotch section to one side[end if]!";
	displace C.

To compute SelectionFailure of (M - a giant wasp):
	say "The [M] finds itself unable to use you how it planned, and buzzes off angrily.";
	bore M.

To compute (M - a giant wasp) entering asshole:
	say "The [M]  tries to stick its ovipositor into your [asshole] through your ass cheeks!  Its ovipositor manages to push its way in!  You are being bred by the [M].";
	now M is penetrating asshole;
	now the sex-length of M is 4;
	ruin asshole.

To compute striking attack of (M - a giant wasp):
	say "The [M] stings you in the [one of]arm[or]butt[or]neck[or]back[purely at random]!  It doesn't really hurt but you feel yourself getting tired very quickly...";
	FatigueUp a random number between the difficulty of M and the buckle threshold of the player / 9.

Section 2 - Damage

To compute damage of (M - a giant wasp):
	if the health of M > 0:
		if M is uninterested:
			say "The [noun] seems to notice you.  Uh-oh...";
			now M is interested;
			anger M;
		otherwise:
			if the health of M > the maxhealth of M / 2, say "The [noun] buzzes angrily!";
			otherwise say "The [noun]'s buzzing is getting weaker!";
			anger M;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a giant wasp):
	if N > (the maxhealth of M / 4) * 3:
		say "The [noun] buzzes angrily!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "The [noun] drops a few inches, buzzing as [he of M] takes the hit!";
	otherwise if N > (the maxhealth of M / 4):
		say "The [noun]'s buzzing is getting weaker!";
	otherwise:
		say "The [noun] seems to be struggling to stay in the air!".

To compute unique death of (M - a giant wasp):
	say "The [noun] falls to the ground and its body slowly melts into nothingness!";
	let W be a random off-stage wasp wing;
	if W is wasp wing:
		say "[one of]On closer inspection, you notice that[or]Once again,[stopping] a [W] has been left behind.";
		now W is in the location of the player;
		compute autotaking W.




Giant Wasp ends here.
