Giant Wasp by Monster begins here.

A giant wasp is a kind of monster. A giant wasp is usually airborne. A giant wasp can be flying. A giant wasp is usually not flying. A giant wasp is usually neuter. The poison-status of a giant wasp is -1. A giant wasp has a number called fertilization-cooldown.

Definition: a giant wasp (called M) is willing to do anal:
	decide yes.

Definition: A giant wasp (called M) is woods dwelling:
	if egg laying fetish is 0 or mythical creature fetish is 0, decide no;
	decide yes.

daddy-wasp is an object that varies.
newborn-wasp is an object that varies.

Figure of Giant Wasp is the file "NPCs/Forest/wasp1.png". The description of giant wasp is usually "[GiantWaspDesc]". Understand "daddy", "dwsp" as giant wasp when the item described is daddy-wasp. Understand "newborn", "nwsp" as giant wasp when the item described is newborn-wasp.

buzzing giant wasp is a giant wasp. The printed name of buzzing giant wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy[otherwise if item described is newborn-wasp]newborn[otherwise]buzzing[end if] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of buzzing giant wasp is "bwsp".
fluttering giant wasp is a giant wasp. The printed name of fluttering giant wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy[otherwise if item described is newborn-wasp]newborn[otherwise]fluttering[end if] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of fluttering giant wasp is "fwsp".
hovering giant wasp is a giant wasp. The printed name of hovering giant wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy[otherwise if item described is newborn-wasp]newborn[otherwise]hovering[end if] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of hovering giant wasp is "hwsp".
fuzzy giant wasp is a giant wasp. The printed name of fuzzy giant wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy[otherwise if item described is newborn-wasp]newborn[otherwise]fuzzy[end if] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of fuzzy giant wasp is "fwsp".
erratic giant wasp is a giant wasp. The printed name of erratic giant wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy[otherwise if item described is newborn-wasp]newborn[otherwise]erratic[end if] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of erratic giant wasp is "ewsp".

vicious giant wasp is a giant wasp. The printed name of vicious giant wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy[otherwise if item described is newborn-wasp]newborn[otherwise]vicious[end if] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of vicious giant wasp is "vwsp".
angry giant wasp is a giant wasp. The printed name of angry giant wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy[otherwise if item described is newborn-wasp]newborn[otherwise]angry[end if] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of angry giant wasp is "awsp".
stinging giant wasp is a giant wasp. The printed name of stinging giant wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy[otherwise if item described is newborn-wasp]newborn[otherwise]stinging[end if] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of stinging giant wasp is "swsp".
nasty giant wasp is a giant wasp. The printed name of nasty giant wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy[otherwise if item described is newborn-wasp]newborn[otherwise]nasty[end if] giant wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of nasty giant wasp is "nwsp".


[The list of wasp-types is a list of monster-adjectives that varies. List of wasp-types is {buzzing, hovering, angry}.
This is the scramble wasp adjectives rule:
	sort the list of wasp-types in random order.
The scramble wasp adjectives rule is listed in the monster adjectives scrambling rules.]

To say GiantWaspDesc:
	if images visible is 1, display the Figure of Giant Wasp;
	if the item described is domesticated wasp:
		say "This giant flying insect has a tiny fairy perched on its back, controlling it with a pair of fibrous green reigns. Despite its clearly domesticated nature, it has a huge, nasty-looking stinger, and an even more intimidating ovipositor extending from its underbelly.";
	otherwise:
		say "This giant flying insect is larger than you, but is still capable of perfect flight from its rapidly oscillating wings. As with real wasps in the real world, this beast seems to be very aggressive for no clear reason. Aside from its terrifying giant stinger, you can also see an ovipositor extending from its underbelly.".

To set up (M - a giant wasp):
	reset M;
	now the monstersetup of M is 1;
	if egg laying fetish is 1 and mythical creature fetish is 1:
		[repeat with L running through the list of wasp-types:
			if L is unused:
				now the monster-adjective of M is L;
				break;
			otherwise:
				now the monster-adjective of M is entry 1 in list of wasp-types;
				scramble monster adjectives;]
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
	let W be a random off-stage giant wasp;
	if E is laid and E is not carried by the player and the player-class is not broodmother and W is monster:[The broodmother can birth her own giant wasps and needs eggs in general, so we don't want the giant wasps screwing that up]		
		if M is in the location of the player:
			compute M fathering W;	
		anger M;
		remove E from play;
		let H be a random off-stage wasp-antennae;
		if a random number between 1 and 2 is 1 and H is actually summonable:
			summon H cursed;
			say "[bold type]Suddenly a pair of antennae on a headband appears on your head![roman type][line break]".	

To compute (M - a giant wasp) fathering (W - a giant wasp):
	say "The [M] swoops down and lands next to the egg. [one of]A different phallic appendage protrudes itself from the wasp's underbelly and it drips a few drops of a mostly clear liquid onto the egg. You watch, paralysed with awe and fear, as the white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiarly looking larva has emerged from the egg. The wasp keeps dropping its seemingly magic reproductive juices onto the giant maggot, which, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds. Before you realise what has happened, there are two identical giant wasps hovering in front of you. The 'father' looks ready for round 2, and the newborn doesn't seem to care that you're his 'mother'. It looks like it wants to follow its immediate instincts to reproduce.[or]Once again you are forced to watch the wasp fertilize your egg, changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiarly looking larva has emerged from the egg. The wasp keeps dropping its seemingly magic reproductive juices onto the giant maggot, which, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in its youth, in a few seconds. The 'father' looks ready for round 2, and just like the previous time, the newborn doesn't seem to care that you're his 'mother'...[stopping]";
	now W is in the location of M;
	newbornSetup W;
	now the fertilization-cooldown of M is 200;
	now daddy-wasp is M.

To newbornSetUp (W - a giant wasp):
	now the difficulty of W is 6;
	now the fertilization-cooldown of W is 500;
	anger W;
	bore W for 1 seconds;
	now W is released;
	now the health of W is the maxhealth of W;
	now newborn-wasp is W.

Part 5 - Combat

Section 1 - Protect and Attack

To compute (M - a giant wasp) protecting against (X - a monster):
	if X is not giant wasp and the medium egg count of belly > 0:
		compute X receiving 1 damage from M.

To say AllyDamageFlav of (M - a giant wasp) on (X - a monster):
	say "The [M] [one of]speedily flies in to protect you and your eggs. It [or][stopping]stings the [X]!".

To compute anal sex of (M - a giant wasp):
	say "The [M] keeps thrusting with its ovipositor!  ";
	if the medium egg count of belly is 0 and image cutscenes is 1, display figure of wasp cutscene 1;
	if a random number between 1 and 2 is 1:
		say "As the [M] pushes its ovipositor into the deepest recesses of your [asshole], you feel [one of]a solid round object[or]another egg[stopping] travel through the organ and exit into your belly!";
		assfill 1 medium eggs;
	if the reaction of the player > 0:
		say "You submit to the fucking and relax your [asshole] around the ovipositor. This lets another egg travel more easily through the sex organ, bringing the [M] closer to finishing.[if the bimbo of the player < 13]You feel very humiliated letting this happen to you almost willingly.[end if]"; [NB: humiliation is carried out inside the "Carry Out Submitting" function.]
		if the sex-length of M > 1:
			decrease the sex-length of M by 1;
			assfill 1 medium eggs;
	say "[one of][or][or][line break][if the bimbo of the player < 8][line break][first custom style]Fuck fuck fuck, this is bad![otherwise if the bimbo of the player < 13][line break][variable custom style]Oof!  This is intense![otherwise][line break][second custom style]Ooh, I can't wait![end if][roman type][line break][or][or][or][or][in random order]";
	decrease the sex-length of M by 1;
	ruin asshole.
	
Definition: an giant wasp (called M) is willing to let go:
	decide no.

To compute anal climax of (M - a giant wasp):
	TimesFuckedUp M by 1;
	say "Finally the [M] pulls out and leaves you alone.";
	bore M.

The latex punishment rule of a giant wasp is usually the no latex punishment rule.

The wasp priority attack rules is a rulebook. The priority attack rules of a giant wasp is usually the wasp priority attack rules.

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

To compute kneeling reaction of (M - a giant wasp): [Default boring reaction if none is defined.]
	say "The [M] watches you[one of] as its ovipositor unfurls fully from its belly[or], flexing its ovipositor as the wasp hovers closer to you[or], allowing its ovipositor to bob underneath its belly as the wasp hovers closer[or], hovering closer as clear lubricant drips from its ovipositor[at random].[if the humiliation of the player < HUMILIATION-SHAMELESS - 2000]You shudder with shame.[end if]";	
	humiliate MODERATE-HUMILIATION + SLIGHT-HUMILIATION.

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

To say AssholePenetrationFlav of (M - a giant wasp):
	say "The [M]  tries to stick its ovipositor into your [asshole] through your ass cheeks!  Its ovipositor manages to push its way in!  You are being bred by the [M].".

To set up sex length of (M - a giant wasp) in (B - asshole):
	set up sex length 4 of M in B.

To compute striking attack of (M - a giant wasp):
	say "The wasp stings you in the [one of]arm[or]butt[or]neck[or]back[purely at random]! [one of]It doesn't really hurt but you feel yourself getting tired very quickly...[or]You can feel yourself getting tired![or]Its getting harder to stay on your feet![or]You're having more trouble holding yourself up![or]It doesn't hurt, but you're struggling to stay on your feet...[then at random]";
	FatigueUp a random number between the difficulty of M and the buckle threshold of the player / 9.

Section 2 - Damage

To compute damage of (M - a giant wasp):
	if the health of M > 0:
		if M is uninterested:
			say "The [noun] seems to notice you. Uh-oh...";
			now M is interested;
			anger M;
		otherwise:
			if the health of M > the maxhealth of M / 2, say "The [noun] buzzes angrily!";
			otherwise say "The [noun]'s buzzing is getting weaker!";
			anger M;
	otherwise:
		compute death of M.

To say DamageReactHealthy of (M - a giant wasp):
	say "The [noun] buzzes angrily!".

To say DamageReactDamaged of (M - a giant wasp):
	say "The [noun] drops a few inches, buzzing as [he of M] takes the hit!".

To say DamageReactTired of (M - a giant wasp):
	say "The [noun]'s buzzing is getting weaker!".

To say DamageReactWeak of (M - a giant wasp):
	say "The [noun] seems to be struggling to stay in the air!".

To compute unique death of (M - a giant wasp):
	say "The [noun] falls to the ground and its body slowly melts into nothingness!";
	let W be a random off-stage wasp wing;
	if W is wasp wing:
		say "[one of]On closer inspection, you notice that[or]Once again,[stopping] a [W] has been left behind.";
		now W is in the location of the player;
		compute autotaking W.

Part 6 - Variants

Section 1 - Domesticated wasp

domesticated wasp is a giant wasp. The printed name of domesticated wasp is "[if item described is in the location of the player][TQlink of item described][end if][input-style][if item described is daddy-wasp]daddy [otherwise if item described is newborn-wasp]newborn [end if]domesticated wasp[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of domesticated wasp is "lwsp". domesticated wasp is intelligent. Understand "rider", "wasp rider", "fairy" as domesticated wasp.

To set up (M - domesticated wasp):
	reset M;
	now the monstersetup of M is 1;
	if egg laying fetish is 1 and mythical creature fetish is 1[ and the player is a february 2018 top donator]:
		now the difficulty of M is 8;
		now the fertilization-cooldown of M is 200;
		now the health of M is the maxhealth of M;
	otherwise:
		remove M from play.

To say SummoningFlav of (M - domesticated wasp):
	if the location of the player is Woods30, say "You hear someone (or something) moaning intensely from inside the statue, loudly climaxing as a large object, about the size of a football rolls through the stony passage. The surface of the object cracks, and a full-grown wasp emerges from the egg. A fairy emerges shortly from the passage, and quickly swings a set of green reigns over its head as it lifts off the ground.";
	otherwise say "You hear an egg cracking somewhere close by.".

To say DamageReactHealthy of (M - domesticated wasp):
	say "The wasp's rider yells angrily!".

To say DamageReactDamaged of (M - domesticated wasp):
	say "The wasp drops a few inches, buzzing as it takes the hit!".

To say DamageReactTired of (M - domesticated wasp):
	say "The wasps's buzzing starts growing weaker.".

To say DamageReactWeak of (M - domesticated wasp):
	say "The wasp rider seems to be struggling to keep her mount under control!".

To say TripChanceFlav of (M - domesticated wasp):
	if the last-tripped of M > 4:
		say "The [M]'s rider [one of]unravels some of the twine hanging off her belt[or]lets off some of the twine on her belt[or]unravels a bit of the twine hanging off her belt[in random order]. [big he of M] is clearly going to try and trip you soon.";
	otherwise if the last-tripped of M > 2:
		say "The [M] [one of]puts her hand on a length of twine hanging off her belt[or]seems to hold onto the length of twine hanging from her belt[or]puts her thumb on a loop of twine attached to her belt[in random order]! There's a chance [he of M] is planning to trip you up.[if newbie tips is 1 and tutorial is 0][one of][item style]This would be a good time to stick to slapping until the NPC makes [his of M] trip attack.[roman type][line break][or][stopping][end if]".

To say MonsterTripAnnounceFlav of (M - domesticated wasp):
	say "[one of]The wasp rider throws a tiny lasso at your feet![or]The wasp rider throws her tiny lasso at your feet[purely at random]".

To say MonsterTrippedFlav of (M - domesticated wasp):  [We say "it", not "she" here because the player is actually being tripped by a giant clay hand.]
	say "The lasso [one of]catches[or]snags[at random] your ankle, and you [if the player is ankle bound]can't move your legs far enough apart to maintain your balance. You [end if]fall to the ground!".

To say MonsterFailedTripFlav of (M - domesticated wasp):
	say "[one of]You manage to avoid it catching you.[or]Luckily, you're fast enough to avoid it catching you.[at random]".

To compute delay of (M - domesticated wasp):
	say "The wasp rider pulls back on the [M]'s reigns [line break][speech style of M]'[one of]Lets see her beg. Heheh.'[or]So, should he violate you anally or anally?'[or]He's about to breed your starfish! Why don't you show it to him?'[or]Wait. I want to see her ask for it.'[or]Show it to him, loser. Show him.'[in random order][roman type][line break]".

To compute unique death of (M - domesticated wasp):
	[let F be a random off-stage fairy;
	if F is fairy:
		say "The fairy leaps off the wasp as it falls to the ground and slowly melts into nothingness. [speech style of M]'You killed my mount! You're going DOWN!'[roman type]";
		set up F;
		now F is in the location of the player;
	otherwise:]
	say "The fairy leaps off the wasp as it falls to the ground and slowly melts into nothingness. She sticks out her tongue at you as she flies off into the distance.";
	let W be a random off-stage wasp wing;
	if W is wasp wing:
		say "[one of]On closer inspection, you notice that[or]Once again,[stopping] a [W] has been left behind.";
		now W is in the location of the player.

To compute (M - a giant wasp) fathering (W - a giant wasp):
	say "The [M] swoops down and lands next to the egg. A different phallic appendage protrudes itself from the wasp's underbelly and it drips a few drops of a mostly clear liquid onto the egg. You watch, paralysed with awe and fear, as the white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiar looking larva has emerged from the egg. The older wasp is suddenly hit in the side with a pink bolt of energy, and it flees as a tiny fairy with her hair drawn back into a ponytail bursts from the bushes. She sprinkles the wasp with a handful of glittering dust as she wraps a pair of fibrous reigns around his head, causing it to go through the entire metamorphosis a normal wasp goes through in its youth, but in the span of only a few seconds. The fairy seems too aborbed with her new mount to care about you.";	
	now W is in the location of M;
	newbornSetup W;
	now the fertilization-cooldown of M is 200;
	now daddy-wasp is M;
	distract M.

To newbornSetUp (W - domesticated wasp):
	now the difficulty of W is 10;
	now the fertilization-cooldown of W is 500;
	now W is released;
	now the health of W is the maxhealth of W;
	now newborn-wasp is W;
	distract W.

To say FriendlyAssholePenetrationFlav of (M - a domesticated wasp):
	say "The [M]  tries to stick its ovipositor into your [asshole] through your ass cheeks!  Its ovipositor manages to push its way in!  You are being bred by the [M].".

[To compute (M - domesticated wasp) protecting against (X - domesticated wasp):
	do nothing.]
	[say "[speech style of M] get [him of X]![roman type][line break]The [M]'s wasp stings the [X]!";]

[This is a response to a first time greeting.]
To say FirstResponse of (M - domesticated wasp):
	say "[speech style of M]'I[']m Oona, the wasp rider. Challenge me if you think you can take me, loser.'[roman type][line break]";

[This is a generic response to a repeat greeting by the player.]
To say RepeatResponse of (M - domesticated wasp):
	if the class of the player is faerie:
		say "[speech style of M]'[one of]You[']re pretty big for a fairy, but I can take you.'[or]Is this what they send to challenge me? A giant?'[or]Hmmph. Even a giant is no match for me.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]What[']s up, loser?'[or]What's up? My wasp can take on anyone.'[or]Hey. Ever think you can take a wasp? You're wrong. Sorry.'[or]Hey, loser.'[at random][roman type][line break]";

To say AsDominantResponse of (M - domesticated wasp):
	say "[speech style of M]'Never mess with a wasp rider!'[roman type][line break]".
	
To say AsPartnerResponse of (M - domesticated wasp):
	say "[speech style of M]'Stop ruining the moment!'[roman type][line break]".

[This is a response to generic greetings for monsters that have previously dominated the player.]
To say DominantResponse of (M - domesticated wasp):
	if M is unfriendly, say "[speech style of M]'[one of]Don[']t worry, he[']s about to make it up to you!'[or]Just for that, I[']m going to make sure he breeds you again!'[at random][roman type][line break]";
	otherwise say "[speech style of M]'My mount wants what its wants. Maybe you should make your butt less fun to breed!'[roman type][line break]";

[This is a response to greetings while the player is being dominated. Not sure the apostrophes I've used here will work since they are not encased within a [one of] function.]
To say midDominanceResponse of (M - domesticated wasp):
	if M is willing to shag and (M is unfriendly or the player is seductive):
		say "[speech style of M]'He wants to join in too!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'We have important training to do. Sorry.'[roman type][line break]".

To say InSexResponse of (M - domesticated wasp):
	if M is unfriendly:
		say "[speech style of M]'[one of]Sorry, but when he has a need to seed, he has a need to seed. Or egg. I guess.'[or]But if he doesn't fuck you, where would he put all his eggs? They wouldn't fit in me.'[or]Oh come on, its not like it's going to go on forever.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'Looks fun, but we have important training to do!'[roman type][line break]".

To compute annoyance of (M - domesticated wasp):
	if M is uninterested:
		say "The wasp rider doesn't seem to realize you are talking to her.";
	otherwise if M is unfriendly:
		say "[speech style of M]'Heheh, talking is useless now!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I'm bored of talking!'[roman type][line break]".

To say WhereAnswer of (M - domesticated wasp):
	say "[speech style of M]'[if the class of the player is faerie][one of]They didn't even tell you that much?!'[or]Do you even listen to yourself when you talk? You[']re so dumb!'[at random][otherwise]We're in my domain, the enchanted woods of Bimbacia. Some huge pink human used to rule here, I think.'[end if][roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 11.

To say WhoAnswer of (M - domesticated wasp):
	say "[speech style of M]'[one of]Oona the wasp rider.'[or]I already told you that, idiot.'[stopping][roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 10.

To say StoryAnswer of (M - domesticated wasp):
	say "[speech style of M]'There were always rumors among fairies that wasps could be tamed, but I was the only fairy cool enough to try.'[roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 8.

To say EscapeAnswer of (M - domesticated wasp):
	if the class of the player is faerie:
		say "[speech style of M]'[one of]Weak fairies like you aren't supposed to leave. I think.'[or]There's a mansion somewhere you could hide in. Its overrated.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Why? Are you scared of me? Heheheh...'[or]Don't you remember how you got here? Just go that way.'[or]There[']s a set of doors somewhere, but behind them everything is all lame and clean. You[']d probably fit right in.'[as decreasingly likely outcomes][roman type][line break]";
	if image cutscenes is 1, display figure of fairy interact 11.

To say AdviceAnswer of (M - domesticated wasp):
	if the class of the player is faerie, say "[speech style of M][one of]And give you an advantage? No way!'[or]Like I'd share my secrets with you!'[at random][roman type][line break]";
	otherwise say "[speech style of M]'[one of]The demoness really loves it when you resist her. The more you fight, the bigger the mess you get. Its fun!'[or]If you get bred a lot, you could try building an army.[or]Many years ago, the princess used a mystical amulet to seal away a demon's power. She created a minotaur to watch it, but it wouldn't stop breeding her, so she put him in a giant bird cage.'[or]You'll get really powerful if you use demonic items, but if you're weak you could turn out being the demon lord's slave.'[in random order][roman type][line break].";
	if image cutscenes is 1, display figure of fairy interact 12.

To compute perception of (M - domesticated wasp):
	let F be 0;
	let E be 0;
	if the number of worn demonic clothing > 1 or the class of the player is vixen, now F is 1;
	if the medium egg count of belly > 0 or the class of the player is broodmother, now E is 1;
	if M is unfriendly:
		if E is 1:
			say "The [M] and its rider seem to notice you! [line break][speech style of M]'That[']s her! Get her!'[roman type][line break] The fairy snaps her reigns as the wasp heads straight for you!";
		otherwise:
			say "The [M] and its rider seem to notice you! [line break][speech style of M]'She's perfect breeding material! Get her!'[roman type][line break] The fairy snaps her reigns as the wasp heads straight for you!";		
		anger M;
		now M is interested;
	otherwise if F is 1:
		if E is 1:
			say "The [M] flies up to you, and its rider looks you up and down. [line break][speech style of M]'Hey. You look pretty cool!'[roman type][line break]";
		otherwise:
			say "The [M] flies right up to you, and its rider pulls back sharply on the reigns. [line break][speech style of M]'You should hang out with me if you need someone to show you the ropes.'[roman type][line break]";
			FavourDown M by 1;
		now M is interested;
	otherwise if the class of the player is faerie or the class of the player is priestess:
		say "The [M] flies up to you, and its rider looks you up and down. [line break][speech style of M]'I[']ve got my eye on you. Don[']t try anything funny, loser.'[roman type][line break]";
		FavourDown M by 2;
		now M is interested;
	otherwise if E is 1:
		say "The [M] and its rider notice you! They lose interest.";
		calm M;
		now M is uninterested;
	otherwise:
		say "The [M] seems to notice you, and its rider giggles as it flies toward you aggressively.";
		now M is interested;
		anger M.

To compute (M - domesticated wasp) protecting against (X - a monster): [Default protection if not defined for the monster]
	if X is demoness or the number of worn demonic clothing > 0:
		say "[one of]The [M]'s rider watches, totally enthralled.[or][or]The [M]'s rider pulls out a slow notebook, recording your performance.[or][or]The [M] and its rider watch your performance, throoughly entertained.[or][or]Your actions appear to interest the [M]'s, who watches with excitement.[cycling]";
	otherwise:
		say "[one of]The [M] watches, seemingly not noticing your situation.[or]The [M] appears not to have noticed what's going on![or]The [M] is looking the other way, and doesn't see your humiliating situation.[or]The [M] seems confused by your actions.[or]The [M] simply watches, waiting. It's a little embarrassing, and you try to tell yourself that what you're doing is perfectly normal, really. Besides, it's not like the [M] cares. Right?[cycling]".

To compute SelectionFailure of (M - domesticated wasp):
	say "The [M] finds itself unable to use you how it planned, but the rider seems to have an idea! ";
	if the player is male and the size of penis > min penis size:
		let P be the size of penis;
		PenisDown 1;
		say "She fires several bolts of pink magic toward your crotch, [if P > the size of penis]causing your penis to shrink into a [ShortDesc of penis][otherwise]which doesn't seem to have any visible effect[end if].";
	otherwise:
		say "She fires several bolts of red magic toward your ass, which cause your skin to tingle as her magic painfully gapes your [asshole].";
		ruin asshole;
	bore M.

Giant Wasp ends here.

