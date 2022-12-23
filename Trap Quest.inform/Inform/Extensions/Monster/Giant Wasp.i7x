Giant Wasp by Monster begins here.

A giant wasp is a kind of monster. A giant wasp is usually airborne. A giant wasp is usually neuter. The poison-status of a giant wasp is -1. A giant wasp has a number called fertilisation-cooldown. A giant wasp is detached-dick-ignoring.

Definition: a giant wasp is virginity taking: decide yes. [an ovipositor is a kind of sex organ]
Definition: a giant wasp is egg-fathering: decide yes.
Definition: a giant wasp is willing to do anal: decide yes.
Definition: a giant wasp is willing to do vaginal:
	if the pregnancy of the player <= 0 or the pregnancy of the player is 3, decide yes;
	decide no.

To say ShortDesc of (M - a giant wasp):
	say "wasp".

Figure of Giant Wasp Daddy is the file "NPCs/Forest/Wasp/wasp1.png".
Figure of Giant Wasp is the file "NPCs/Forest/Wasp/wasp2.jpg".
Figure of Giant Wasp Dangerous is the file "NPCs/Forest/Wasp/wasp3.jpg".
Figure of Giant Wasp Honey is the file "NPCs/Forest/Wasp/wasp4.jpg".
Figure of Wasp Cutscene 1 is the file "NPCs/Forest/Wasp/cutscene-wasp-sex1.png".
Figure of Wasp Cutscene 2 is the file "NPCs/Forest/Wasp/cutscene-wasp-sex2.jpg".

To decide which figure-name is the monster-image of (M - a giant wasp):
	decide on figure of giant wasp.
To decide which figure-name is the monster-image of (M - fuzzy giant wasp):
	decide on figure of giant wasp daddy.
To decide which figure-name is the monster-image of (M - domesticated wasp):
	decide on figure of giant wasp daddy.
To decide which figure-name is the monster-image of (M - a dangerous-wasp):
	decide on figure of giant wasp dangerous.
To decide which figure-name is the monster-image of (M - a honey-wasp):
	decide on figure of giant wasp honey.

To decide which figure-name is the anal-sex-monster-image of (M - fuzzy giant wasp):
	decide on figure of Wasp Cutscene 1.
To decide which figure-name is the anal-sex-monster-image of (M - domesticated wasp):
	decide on figure of Wasp Cutscene 1.
To decide which figure-name is the anal-sex-monster-image of (M - a giant wasp):
	decide on figure of Wasp Cutscene 2.

To decide which figure-name is the vaginal-sex-monster-image of (M - a giant wasp):
	decide on the anal-sex-monster-image of M.

A mundane-wasp is a kind of giant wasp.

[All wasps are "descended" from this wasp, so the player can only see the special variants when this wasp has babies.]
buzzing giant wasp is a mundane-wasp. The text-shortcut of buzzing giant wasp is "bwsp".
To say MediumDesc of (M - buzzing giant wasp):
	say "buzzing wasp".
Definition: buzzing giant wasp is woods dwelling:
	if egg laying fetish is 1 and mythical creature fetish is 1, decide yes;
	decide no.
Definition: buzzing giant wasp is willing to have time out: decide yes.
To decide which number is the girth of (M - buzzing giant wasp):
	decide on 4.

erratic giant wasp is a mundane-wasp. The text-shortcut of erratic giant wasp is "ewsp".
To say MediumDesc of (M - erratic giant wasp):
	say "erratic wasp".
fluttering giant wasp is a mundane-wasp. The text-shortcut of fluttering giant wasp is "fwsp".
To say MediumDesc of (M - fluttering giant wasp):
	say "fluttering wasp".
hovering giant wasp is a mundane-wasp. The text-shortcut of hovering giant wasp is "hwsp".
To say MediumDesc of (M - hovering giant wasp):
	say "hovering wasp".

A dangerous-wasp is a kind of giant wasp.

vicious giant wasp is a dangerous-wasp. The text-shortcut of vicious giant wasp is "vwsp".
To say MediumDesc of (M - vicious giant wasp):
	say "vicious wasp".
angry giant wasp is a dangerous-wasp. The text-shortcut of angry giant wasp is "awsp".
To say MediumDesc of (M - angry giant wasp):
	say "angry wasp".
stinging giant wasp is a dangerous-wasp. The text-shortcut of stinging giant wasp is "swsp".
To say MediumDesc of (M - stinging giant wasp):
	say "stinging wasp".
nasty giant wasp is a dangerous-wasp. The text-shortcut of nasty giant wasp is "nwsp".
To say MediumDesc of (M - nasty giant wasp):
	say "nasty wasp".

A honey-wasp is a kind of giant wasp.

fuzzy giant wasp is a honey-wasp. The text-shortcut of fuzzy giant wasp is "fzwp".
To say MediumDesc of (M - fuzzy giant wasp):
	say "fuzzy wasp".
woolly giant wasp is a honey-wasp. The text-shortcut of woolly giant wasp is "wzwp".
To say MediumDesc of (M - woolly giant wasp):
	say "woolly wasp".

To say MonsterDesc of (M - a giant wasp):
	say "This giant flying insect is larger than you, but is still capable of perfect flight from [his of M] rapidly oscillating wings. As with real wasps in the real world, this beast seems to be very aggressive for no clear reason. Aside from [his of M] terrifying giant stinger, you can also see an ovipositor extending from [his of M] underbelly.".

To say DickDesc of (M - a giant wasp):
	say "ovipositor".

To set up (M - a giant wasp):
	reset M;
	now the monstersetup of M is 1;
	add wasp wing to the banishItems of M, if absent;
	if egg laying fetish is 1 and mythical creature fetish is 1:
		now the raw difficulty of M is the starting difficulty of M;
		now the health of M is the maxhealth of M;
	otherwise:
		remove M from play;

To decide which number is the girth of (M - a giant wasp):
	decide on 3.
To decide which number is the grossness of (M - a giant wasp): [grossness addiction needed to tolerate it]
	decide on 11.

Part 1 - Misc Flavour

To say SummoningFlav of (M - a giant wasp):
	if the location of the player is Woods30, say "You hear someone (or something) moaning intensely from inside the statue, loudly climaxing as a large object, about the size of a football rolls through the stony passage. The surface of the object cracks, and a full-grown [printed name of M] emerges from the egg and begins hovering in the air just below the statue's chest.";
	otherwise say "You hear an egg cracking somewhere close by.".

To compute (M - a monster) stomping (N - a giant wasp):
	if M is in the location of the player, say "[BigNameDesc of M] smacks [NameDesc of N] with a clenched fist. [BigNameDesc of N] quickly turns tail and buzzes far, far away!";
	destroy N.

Part 2 - Perception

Definition: a giant wasp (called M) is normally guardian:
	if the class of the player is broodmother, decide yes;
	decide no.

Definition: a giant wasp (called M) is normally ally:
	if the class of the player is broodmother or the medium egg count of belly > 0 or the medium egg count of vagina > 0, decide yes;
	decide no.

Definition: a giant wasp (called M) is normally buddy:
	if the class of the player is broodmother or the medium egg count of belly > 0 or the medium egg count of vagina > 0, decide yes;
	decide no.

Definition: a giant wasp (called M) is normally acquaintance:
	if the class of the player is broodmother or the medium egg count of belly > 0 or the medium egg count of vagina > 0, decide yes;
	decide no.

Definition: a giant wasp (called M) is normally annoyed:
	if the class of the player is broodmother or the medium egg count of belly > 0 or the medium egg count of vagina > 0, decide yes;
	if the favour of M > the aggro limit of M, decide yes;
	decide no.

To compute perception of (M - a giant wasp):
	if the player-class is broodmother:
		say "[BigNameDesc of M] seems to notice you, and begins buzzing protectively around you!";
		calm M;
	otherwise if the medium egg count of belly > 0:
		say "[BigNameDesc of M] seems to notice you, and starts following you around passively!";
		calm M;
	otherwise:
		say "[BigNameDesc of M] seems to notice you, and flies towards you aggressively!";
		anger M.

Part 3 - Motion and Seeking

To compute monstermotion of (M - buzzing giant wasp):
	if the fertilisation-cooldown of M <= 0 and there is a medium egg in the location of M:
		let E be a random medium egg in the location of M;
		if E is not held by the player and E is laid:
			Fertilise E with M;
	otherwise:
		compute room leaving of M;
	if the fertilisation-cooldown of M > 0, decrease the fertilisation-cooldown of M by seconds.

To compute (M - buzzing giant wasp) seeking (D - a direction):
	if the fertilisation-cooldown of M <= 0 and there is a medium egg in the location of M:
		let E be a random medium egg in the location of M;
		if E is not held by the player and E is laid:
			Fertilise E with M;
	otherwise:
		blockable move M to D;
	if the fertilisation-cooldown of M > 0, decrease the fertilisation-cooldown of M by seconds.

Part 4 - Fertilise

To Fertilise (E - a medium egg) with (M - a giant wasp):
	let W be a random off-stage giant wasp;
	if E is laid and E is not carried by the player and the player-class is not broodmother and W is monster:[The broodmother can birth her own giant wasps and needs eggs in general, so we don't want the giant wasps screwing that up]
		if M is in the location of the player:
			compute M fathering W;
			if wasp-antennae is off-stage and wasp-antennae is actually summonable:
				summon wasp-antennae cursed;
				say "[bold type]Suddenly a pair of antennae on a headband appears on your head![roman type][line break]";
		anger M;
		remove E from play.

To compute (M - a giant wasp) fathering (W - a giant wasp):
	say "[BigNameDesc of M] swoops down and lands next to the egg. [one of]A different phallic appendage protrudes itself from the wasp's underbelly and it drips a few drops of a mostly clear liquid onto the egg. You watch, paralysed with awe and fear, as the white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiarly looking larva has emerged from the egg. The wasp keeps dropping [his of M] seemingly magic reproductive juices onto the giant maggot, which, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in [his of M] youth, in a few seconds. Before you realise what has happened, there are two identical giant wasps hovering in front of you.[or]Once again you are forced to watch the wasp fertilise your egg, changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiarly looking larva has emerged from the egg. The wasp keeps dropping [his of M] seemingly magic reproductive juices onto the giant maggot, which, right in front of your eyes, goes through the entire metamorphosis which a normal wasp goes through in [his of M] youth, in a few seconds.[stopping]";
	now W is in the location of M;
	newbornSetup W;
	now the fertilisation-cooldown of M is 200.

To newbornSetUp (W - a giant wasp):
	set up W;
	bore W.

Part 5 - Combat

Section 1 - Protect and Attack

To compute (M - a giant wasp) protecting against (X - a monster):
	if X is not giant wasp and the medium egg count of belly > 0:
		compute X receiving 1 damage from M.

To say AllyDamageFlav of (M - a giant wasp) on (X - a monster):
	say "[BigNameDesc of M] [one of]speedily flies in to protect you and your eggs. It [or][stopping]stings the [X]!".

To compute anal sex of (M - a giant wasp):
	compute fuckhole sex of M.
To compute vaginal sex of (M - a giant wasp):
	compute fuckhole sex of M.

To compute fuckhole sex of (M - a giant wasp):
	let F be a random fuckhole penetrated by M;
	say "[BigNameDesc of M] keeps fucking your [variable F] with [his of M] ovipositor, all the way in and all the way out[one of] like [he of M][']s purposefully trying to make it feel extra-intense[or][or][or][or][or][cycling]! ";
	if a random number between 1 and 2 is 1:
		say "As [NameDesc of M][']s ovipositor reaches the innermost recesses of your [variable F], you feel [one of]a small round object[or]another egg[stopping] travel through the organ and exit into your [if F is asshole]belly[otherwise]womb[end if]!";
		if F is asshole, assfill 1 small eggs;
		otherwise wombfill 1 small eggs;
		if the reaction of the player > 0:
			say "Your submission to the in-and-out fucking allows another egg to travel more easily through the sex organ, bringing [NameDesc of M] closer to finishing.[if the bimbo of the player < 13]You feel very humiliated letting this happen to you almost willingly.[end if]";[NB: humiliation is carried out inside the "Carry Out Submitting" function.]
			if the sex-length of M > 1:
				decrease the sex-length of M by 1;
				if F is asshole, assfill 1 small eggs;
				otherwise wombfill 1 small eggs;
	decrease the sex-length of M by 1;
	ruin F.

To compute fuckhole sex of (M - buzzing giant wasp):
	let F be a random fuckhole penetrated by M;
	say "[BigNameDesc of M] keeps thrusting with [his of M] ovipositor! ";
	if a random number between 1 and 2 is 1:
		say "As [NameDesc of M] pushes [his of M] ovipositor into the deepest recesses of your [variable F], you feel [one of]a solid round object[or]another egg[stopping] travel through the organ and exit into your [if F is asshole]belly[otherwise]womb[end if]!";
		if F is asshole, assfill 1 medium eggs;
		otherwise wombfill 1 medium eggs;
	if the reaction of the player > 0:
		say "You submit to the fucking and relax your [variable F] around the ovipositor. This lets another egg travel more easily through the sex organ, bringing [NameDesc of M] closer to finishing.[if the bimbo of the player < 13]You feel very humiliated letting this happen to you almost willingly.[end if]";[NB: humiliation is carried out inside the "Carry Out Submitting" function.]
		if the sex-length of M > 1:
			decrease the sex-length of M by 1;
			if F is asshole, assfill 1 medium eggs;
			otherwise wombfill 1 medium eggs;
	say "[one of][or][or][line break][if the bimbo of the player < 8][line break][first custom style]Fuck fuck fuck, this is bad![otherwise if the bimbo of the player < 13][line break][variable custom style]Oof! This is intense![otherwise][line break][second custom style]Ooh, I can't wait![end if][roman type][line break][or][or][or][or][in random order]";
	decrease the sex-length of M by 1;
	ruin F.

Definition: a giant wasp is willing to let go: decide no.

To compute anal climax of (M - a giant wasp):
	TimesSubmittedUp M by 1;
	AnalCount;
	say "Finally [NameDesc of M] pulls out and leaves you alone.";
	progress quest of wasp-sex-quest;
	bore M.
To compute vaginal climax of (M - a giant wasp):
	TimesSubmittedUp M by 1;
	FuckCount;
	say "Finally [NameDesc of M] pulls out and leaves you alone.";
	progress quest of wasp-sex-quest;
	bore M.

The latex punishment rule of a giant wasp is usually the no latex punishment rule.

The wasp priority attack rules is a rulebook. The priority attack rules of a giant wasp is usually the wasp priority attack rules.

This is the wasp fertilises an egg rule:
	if current-monster is buzzing giant wasp and the fertilisation-cooldown of current-monster is 0:
		repeat with E running through laid medium eggs in the location of the player:
			if the egg-origin of E is giant wasp:
				fertilise E with current-monster;
				rule succeeds.
The wasp fertilises an egg rule is listed last in the wasp priority attack rules.

This is the wasp tends the broodmother rule:
	let M be the current-monster;
	if current-monster is in the location of the player and the thirst of the player > 3 and the number of unfriendly monsters in the location of the player < 1 and the player-class is broodmother:
		say "[BigNameDesc of M] seems to notice you are thirsty and buzzes around you with what almost seems to be concern. [big he of M] rubs [his of M] abdomen, and a strange thick fluid starts flowing out. [big he of M] positions [himself of M] above your mouth and allows it to drip towards your mouth, and in your present state you decide it's your best option. ";
		while the thirst of the player > 1:
			increase the stomach-water of the player by 1;
		rule succeeds;
	otherwise if current-monster is in the location of the player and the orifice soreness of the player > 8 and the number of unfriendly monsters in the location of the player < 1 and the player-class is broodmother:
		heal asshole times 2;
		heal vagina times 2;
		say "[BigNameDesc of M] seems to notice that you are suffering some kind of birthing problems and buzzes around you with what almost seems to be concern. [big he of M] sprays a sticky, sweet fluid at your crotch, which amazingly seems to make you feel a bit better.";
		rule succeeds;
	otherwise if current-monster is in the location of the player and the body soreness of the player > 8 and the number of unfriendly monsters in the location of the player < 1 and the player-class is broodmother:
		BodyHeal 2;
		say "[BigNameDesc of M] seems to notice that you have suffered significant injury and buzzes around you with what almost seems to be concern. [big he of M] sprays a sticky, sweet fluid on your bruises, and they feel slightly better!";
		rule succeeds.
The wasp tends the broodmother rule is listed in the wasp priority attack rules.

To compute the default taunting of (M - a giant wasp):
	say "[BigNameDesc of M] buzzes around you impatiently!".

To compute the dildo stuck taunting of (M - a giant wasp):
	compute the default taunting of M.

The monster convinced rule of a giant wasp is usually the wasp unconvinced rule.
This is the wasp unconvinced rule:
	if presented-orifice is not nothing, say "[BigNameDesc of current-monster] shows no indication of having noticed or understood your action.".

To compute kneeling reaction of (M - a giant wasp):
	say "[BigNameDesc of M] watches you[one of] as [his of M] ovipositor unfurls fully from [his of M] belly[or], flexing [his of M] ovipositor as the wasp hovers closer to you[or], allowing [his of M] ovipositor to bob underneath [his of M] belly as the wasp hovers closer[or], hovering closer as clear lubricant drips from [his of M] ovipositor[at random][if the player is not shameless]. You shiver with shame[end if].";
	strongHumiliate.

To say PullAttempt of (M - a giant wasp) at (C - a clothing):
	say "[BigNameDesc of M] tries to push through your [printed name of C] to try and rip it off!".

To compute (M - a giant wasp) ripping (C - a clothing):
	say "The wasp forcefully penetrates it, creating a hole at the crotch!";
	now C is crotch-ripped.

To compute (M - a giant wasp) destroying (C - a clothing):
	say "It forcefully penetrates it, destroying it completely!";
	destroy C.

To compute (M - a giant wasp) displacing (C - a clothing):
	say "[BigNameDesc of M] uses [his of M] ovipositor as a prehensile limb and pulls the [if C is hobble-skirted]skirt up, exposing your crotch[otherwise if C is trousers]waistband down to your knees[otherwise]crotch section to one side[end if]!";
	displace C.

To compute SelectionFailure of (M - a giant wasp):
	say "[BigNameDesc of M] finds [himself of M] unable to use you how it planned, and buzzes off angrily.";
	bore M.

To say SpitroastPrep of (M - a giant wasp) with (O - a monster) in (F - asshole):
	say "[BigFuckerDesc of M] lands on top of you, displacing your centre of gravity as [his of M] bizarre breeding appendage hangs down between your legs".

To say ThreesomePrep of (M - a giant wasp) with (N - a monster) in (F - asshole):
	if N is intelligent, say "[FuckerDesc of N] flips you over as [FuckerDesc of M] lands on top of you, [his of M] bizarre breeding appendage hanging down between your legs.";
	otherwise say "[BigFuckerDesc of M] drops down on top of [FuckerDesc of N], [his of M] bizarre breeding appendage hanging down between your legs.".

To say FoursomePrep of (M - a giant wasp) with (N - a monster) and (O - a monster) in (F - asshole):
	if N is intelligent, say "[FuckerDesc of N] flips you over as [FuckerDesc of M] lands on top of you, [his of M] bizarre breeding appendage hanging down between your legs.";
	otherwise say "[BigFuckerDesc of M] drops down on top of [FuckerDesc of N], [his of M] bizarre breeding appendage hanging down between your legs.".

To say TwosomePrep of (M - a giant wasp) in (F - asshole):
	say "[BigFuckerDesc of M] lands on top of you with [his of M] bizarre breeding appendage hanging down between your legs.".

To say PenetrationFlav of (M - a giant wasp) in (F - asshole):
	let H be the openness of asshole - the girth of M;
	say "The ovipositor curls up between your asscheeks, immediately finding your sphincter and lubricating it with cool, slippery breeding fluid. You [if the relevant sex addiction of M > 7]coo[otherwise]wince[end if] as the tip enters your [asshole], which is so lubricated that [FuckerDesc of M] has no trouble sliding the whole thing into you, ensuring [his of M] [one of]children[or]spawn[or]progeny[at random] will be planted nice and deep inside your belly. You are being bred by [FuckerDesc of M]!".

To say CondomForceFailFlav of (M - a giant wasp):
	say "[one of]You reach between your legs, grasping for [FuckerDesc of M][']s [DickDesc of M] as you quickly take out a condom. The strange organ actively avoids getting caught in your grip, and eventually you have no choice but to give up.[or]You take out a condom and reach between your legs, awkwardly trying to apply it to [FuckerDesc of M][']s [DickDesc of M]. The strange organ manages to knock your hand out of the way.[at random][if M is not seduced]Looks like [he of M]'s going in bare...[end if]".

To decide which number is the condom resistance of (M - a giant wasp):
	decide on 99.[Default 100% success]

To say CondomRejectFlav of (M - domesticated wasp):
	say "The wasp rider [one of]scoffs[or]snorts[or]rolls [his of M] eyes[at random].[line break][speech style of M]'The big guy doesn't use protection, toots.'[roman type][line break]".

To set up sex length of (M - a giant wasp) in (B - asshole):
	set up sex length 4 of M in B.

To compute damaging attack of (M - a giant wasp):
	if M is dangerous-wasp and a random number between 1 and 2 is 1:
		say "The wasp stings you in the [one of]arm[or]butt[or]neck[or]back[purely at random], and you feel [if wasp-poison-timer < 1]some strength being sapped from your body! You've been poisoned![otherwise]more poison entering your body![end if]";
		increase wasp-poison-timer by 3 * the difficulty of M;
	otherwise if M is honey-wasp and a random number between 1 and 2 is 1:
		say "An alien-looking appendage unfurls from [FuckerDesc of M][']s abdomen, pulsating wildly as it spews sweet-smelling honey across your [one of]arm[or]butt[or]neck[or]back[purely at random]. [one of]It's getting more difficult to move![or]You're having trouble moving![or]It's getting harder to move![or]You're having more trouble moving around![or]It doesn't hurt, but it's getting pretty difficult to move...[then at random]";
		increase wasp-honey-timer by 5 * the difficulty of M;
		if wasp-honey-timer > 80:
			say "[bold type]The honey covering your limbs begins to harden, and within moments it becomes impossible to move at all. [roman type][BigFuckerDesc of M] bumps you gently with [his of M] body, which in your immobile state causes you to fall over.";
			now wasp-honey-timer is 100;
			try kneeling;
			now the stance of the player is 1; [failsafe]
	otherwise:
		say "The wasp stings you in the [one of]arm[or]butt[or]neck[or]back[purely at random]! [one of]It doesn't really hurt but you feel yourself getting tired very quickly...[or]You can feel yourself getting tired![or]It's getting harder to stay on your feet![or]You're having more trouble holding yourself up![or]It doesn't hurt, but you're struggling to stay on your feet...[then at random]";
		FatigueUp (a random number between the difficulty of M and the buckle threshold of the player / 4) / combatSpeed.

Section 2 - Damage

wasp-poison-timer is a number that varies.

A time based rule (this is the wasp poison decay rule):
	if wasp-poison-timer > 0:
		decrease wasp-poison-timer by time-seconds;
		if wasp-poison-timer <= 0:
			say "[bold type]The wasp's poison seems to have run its course and strength returns to your limbs.[roman type][line break]";
			now wasp-poison-timer is 0.

wasp-honey-timer is a number that varies.

An all time based rule (this is the wasp honey decay rule):
	if wasp-honey-timer > 0:
		decrease wasp-honey-timer by time-seconds;
		if wasp-honey-timer <= 0:
			say "[bold type]The wasp's honey seems to have completely dried and you can now move normally again.[roman type][line break]";
			now wasp-honey-timer is 0;
		otherwise if wasp-honey-timer <= 80 and wasp-honey-timer + time-seconds > 80:
			say "[bold type]The wasp's honey seems to have dried enough that you can now move at least a little bit.[roman type][line break]";
		otherwise:
			say "The wasp's honey slightly decays.[roman type][line break]";

This is the honey stuck immobility rule:
	if wasp-honey-timer > 80, rule fails.
The honey stuck immobility rule is listed in the immobility rules.

To say DamageReactHealthy of (M - a giant wasp):
	say "[BigNameDesc of M] buzzes angrily!".

To say DamageReactDamaged of (M - a giant wasp):
	say "[BigNameDesc of M] drops a few inches, buzzing as [he of M] takes the hit!".

To say DamageReactTired of (M - a giant wasp):
	say "[BigNameDesc of M][']s buzzing is getting weaker!".

To say DamageReactWeak of (M - a giant wasp):
	say "[BigNameDesc of M] seems to be struggling to stay in the air!".

To say BanishFleeFlav of (M - a giant wasp):
	say "[BigNameDesc of M] falls to the ground, exhausted. Then suddenly [he of M] attempts to take flight once more, keeping low to the ground as [he of M] buzzes away as quickly as [his of M] injured wings can carry [him of M]!".

Part 6 - Variants

Section 1 - Domesticated wasp

domesticated wasp is a mundane-wasp. The text-shortcut of domesticated wasp is "lwsp". domesticated wasp is intelligent. domesticated wasp is not neuter. Understand "rider", "wasp rider", "fairy" as domesticated wasp.

Definition: domesticated wasp is hatchable: decide no.

To say MediumDesc of (M - domesticated wasp):
	say "wasp rider".

To say FuckerDesc of (M - domesticated wasp):
	say "the domesticated wasp".
To say BigFuckerDesc of (M - domesticated wasp):
	say "The domesticated wasp".

To say MonsterDesc of (M - domesticated wasp):
	say "This giant flying insect has a tiny fairy perched on [his of M] back, controlling [him of M] with a pair of fibrous green reins. Despite [his of M] clearly domesticated nature, it has a huge, nasty-looking stinger, and an even more intimidating ovipositor extending from [his of M] underbelly.".

To set up (M - domesticated wasp):
	reset M;
	now the monstersetup of M is 1;
	if egg laying fetish is 1 and mythical creature fetish is 1:
		now the raw difficulty of M is the starting difficulty of M + 4;
		now the fertilisation-cooldown of M is 200;
		now the health of M is the maxhealth of M;
	otherwise:
		remove M from play.

To say SummoningFlav of (M - domesticated wasp):
	if the location of the player is Woods30, say "You hear someone (or something) moaning intensely from inside the statue, loudly climaxing as a large object, about the size of a football rolls through the stony passage. The surface of the object cracks, and a full-grown wasp emerges from the egg. A red-haired fairy emerges shortly from the passage, and quickly swings a set of green reins over the wasp's head as it lifts off the ground.";
	otherwise say "You hear an egg cracking somewhere close by.".

To say DamageReactHealthy of (M - domesticated wasp):
	say "The wasp's rider yells angrily!".

To say DamageReactDamaged of (M - domesticated wasp):
	say "The wasp drops a few inches, buzzing as it takes the hit!".

To say DamageReactTired of (M - domesticated wasp):
	say "The wasp's buzzing starts growing weaker.".

To say DamageReactWeak of (M - domesticated wasp):
	say "The wasp rider seems to be struggling to keep [his of fairy-witch] mount under control!".

To say TripChanceFlav of (M - domesticated wasp):
	if the last-tripped of M > 4:
		say "[BigNameDesc of M][']s rider [one of]unravels some of the twine hanging off [his of fairy-witch] belt[or]lets off some of the twine on [his of fairy-witch] belt[or]unravels a bit of the twine hanging off [his of fairy-witch] belt[in random order]. [big he of M] is clearly going to try and trip you soon.";
	otherwise if the last-tripped of M > 2:
		say "[BigNameDesc of M] [one of]puts [his of fairy-witch] hand on a length of twine hanging off [his of fairy-witch] belt[or]seems to hold onto the length of twine hanging from [his of fairy-witch] belt[or]puts [his of fairy-witch] thumb on a loop of twine attached to [his of fairy-witch] belt[in random order]! There's a chance [he of M] is planning to trip you up.[if newbie tips is 1 and tutorial is 0][one of][newbie style]This would be a good time to stick to slapping until the NPC makes [his of M] trip attack.[roman type][line break][or][stopping][end if]".

To say MonsterTripAnnounceFlav of (M - domesticated wasp):
	say "[one of]The wasp rider throws a tiny lasso at your feet![or]The wasp rider throws [his of fairy-witch] tiny lasso at your feet[purely at random]".

To say MonsterTrippedFlav of (M - domesticated wasp):
	say "The lasso [one of]catches[or]snags[at random] your ankle, and you [if the player is ankle bound]can't move your legs far enough apart to maintain your balance. You [end if]fall to the ground!".

To say MonsterFailedTripFlav of (M - domesticated wasp):
	say "[one of]You manage to avoid it catching you.[or]Luckily, you're fast enough to avoid it catching you.[at random]".

To compute delay of (M - domesticated wasp):
	say "The wasp rider pulls back on [NameDesc of M][']s reins[line break][speech style of fairy-witch]'[one of]Let's see [him of the player] beg. Heheh.'[or]So, should [he of M] violate you anally or anally?'[or][big he of M]'s about to breed your starfish! Why don't you show it to [him of M]?'[or]Wait. I want to see [him of the player] ask for it.'[or]Show it to [him of M], loser. Show [him of M].'[in random order][roman type][line break]".

To say PrepTaunt of (M - domesticated wasp) in (F - asshole):
	say "[line break][speech style of fairy-witch]'[one of]Here comes the fun part. Get it? [']Part?[']'[or]That's right. [big he of the player]'s all yours!'[or]Get ready loser, it's breeding time.'[or]I'd do it, but it just won't fit. Thanks a lot, loser!'[or]I like to watch.'[at random][roman type][line break]";

To compute (M - a giant wasp) fathering (W - domesticated wasp):
	say "[BigNameDesc of M] swoops down and lands next to the egg. A different phallic appendage protrudes itself from the wasp's underbelly and it drips a few drops of a mostly clear liquid onto the egg. You watch, paralysed with awe and fear, as the white egg changes colour to light brown, doubles in size, and then just as quickly, starts to crack. Within seconds, a familiar looking larva has emerged from the egg. The older wasp is suddenly hit in the side with a pink bolt of energy, and it flees as a tiny fairy with [his of fairy-witch] hair drawn back into a ponytail bursts from the bushes. [big he of fairy-witch] sprinkles the young wasp with a handful of glittering dust as [he of fairy-witch] wraps a pair of fibrous reins around [his of W] head, causing [him of W] to go through the entire metamorphosis a normal wasp goes through in [his of W] youth, but in the span of only a few seconds. The fairy seems too absorbed with [his of fairy-witch] new mount to care about you.";
	now W is in the location of M;
	newbornSetup W;
	now the fertilisation-cooldown of M is 200.

[This is a response to a first time greeting.]
To say FirstResponse of (M - domesticated wasp):
	say "[speech style of fairy-witch]'I'm Oona, the wasp rider. Challenge me if you think you can take me, loser.'[roman type][line break]";

[This is a generic response to a repeat greeting by the player.]
To say RepeatResponse of (M - domesticated wasp):
	if the class of the player is faerie:
		say "[speech style of fairy-witch]'[one of]You're pretty big for a fairy, but I can take you.'[or]Is this what they send to challenge me? A giant?'[or]Hmph. Even a giant is no match for me.'[or]I can take you, easy. Doesn't matter how big you are.[at random][roman type][line break]";
	otherwise if the class of the player is worshipper or the class of the player is succubus:
		say "[speech style of fairy-witch]'[one of]Hey. So is the demon lord a good boss?'[or]So you work for the demon lord? That sounds pretty interesting.'[or]So you work for the demon lord? Do you think you could set me up with an interview?'[at random][roman type][line break]";
	otherwise if the number of worn demonic clothing > 0:
		let D be a random worn demonic clothing;
		say "[speech style of fairy-witch]'[one of]Hey. You look pretty cool in that [ShortDesc of D], I guess.'[or]What's up? I bet you stole that [ShortDesc of D], didn't you. Nice.'[or]What's up? Nice [ShortDesc of D].'[or]Hey. Suuup.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of fairy-witch]'[one of]What's up, loser?'[or]What's up? My wasp can take on anyone.'[or]Hey. Ever think you can take a wasp? You're wrong. Sorry.'[or]Hey, loser.'[at random][roman type][line break]".

To say UnAnnoyedResponse of (M - domesticated wasp):
	say "[speech style of fairy-witch]'[one of]Hahaha! What a pervert!'[or]Do you really like getting fucked by a wasp? Gross!'[at random][roman type][line break]";

To say MildAnnoyedResponse of (M - domesticated wasp):
	say "[speech style of fairy-witch]'[one of]Sorry, but when [he of M] has a need to seed, [he of M] has a need to seed. Or egg. I guess.'[or]But if [he of M] doesn't fuck you, where would [he of M] put all [his of M] eggs? They wouldn't fit in me. Stupid.'[or]Oh come on, it's not like it's going to go on forever.'[or]'Stop being a selfish bitch. [big he of M] has needs too!'[or]Where else do you expect [him of M] to put [his of M] eggs? So stupid...'[or]Maybe you should make your butt less fun to breed!'[at random][roman type][line break]";

To say AnnoyedResponse of (M - domesticated wasp):
	say "[speech style of fairy-witch]'Stop ruining the moment!'[roman type][line break]".

To say PleadRejected of (M - domesticated wasp):
	say "[speech style of fairy-witch]'Never mess with a wasp rider!'[roman type][line break]".

To say InvitationAccepted of (M - domesticated wasp) with (N - a monster):
	say "[speech style of fairy-witch]'[one of]Well, if you insist.'[or]Well, I guess I can't stop [him of M] when you're asking for it like that.'[at random][roman type][line break]".

To say InvitationRejected of (M - domesticated wasp) with (N - a monster):
	say "[speech style of fairy-witch]'We have important training to do. Sorry.'[roman type][line break]".

To say AssistanceRejected of (M - domesticated wasp) with (N - a monster):
	if M is willing to shag and (M is unfriendly or the player is seductive):
		say "[speech style of fairy-witch]'[big he of M] wants to join in too!'[roman type][line break]";
	otherwise:
		say InvitationRejected of M with N.

To say WhereAnswer of (M - domesticated wasp):
	say "[speech style of fairy-witch]'[if the class of the player is faerie][one of]They didn't even tell you that much?!'[or]WOW, way to be a stereotype. Guess size really isn't everything.'[or]Do you even listen to yourself when you talk? You're so dumb!'[at random][otherwise]We're in my domain, the enchanted woods of Bimbacia. Some huge pink human used to rule here, I think.'[end if][roman type][line break]";
	alwayscutshow figure of fairy interact 11 for M.

To say WhoAnswer of (M - domesticated wasp):
	say "[speech style of fairy-witch]'[one of]Oona the wasp rider.'[or]I already told you that, idiot.'[stopping][roman type][line break]";
	alwayscutshow figure of fairy interact 10 for M.

To say StoryAnswer of (M - domesticated wasp):
	say "[speech style of fairy-witch]'[one of]There were always rumours among fairies that wasps could be tamed, but I was the only fairy cool enough to try.'[or]I thought waiting around getting pregnant all the time was dumb, so I decided to become a wasp tamer.'[sticky random][roman type][line break]";
	alwayscutshow figure of fairy interact 8 for M.

To say EscapeAnswer of (M - domesticated wasp):
	if the class of the player is faerie:
		say "[speech style of fairy-witch]'[one of]Weak fairies like you aren't supposed to leave. I think.'[or]I can see why you would want to leave. It's a giant clam-fest around here. Can't help, sorry.'[or]There's a mansion somewhere you could hide in. It's overrated.'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of fairy-witch]'[one of]Why? Are you scared of me? Heheheh...'[or]Don't you remember how you got here? Just go that way.'[or]There's a set of doors somewhere, but behind them everything is all lame and clean. You'd probably fit right in.'[in random order][roman type][line break]";
	alwayscutshow figure of fairy interact 11 for M.

To say AdviceAnswer of (M - domesticated wasp):
	if the class of the player is faerie, say "[speech style of fairy-witch][one of]And give you an advantage? No way!'[or]Like I'd share my secrets with you!'[or]If you tried to ride a wasp you'd crush it. Idiot.'[at random][roman type][line break]";
	otherwise say "[speech style of fairy-witch]'[one of]Demons really love it when you resist them. The more you fight, the bigger the mess you get. It's fun!'[or]If you get bred a lot, you could try building an army.'[or]Many years ago, the princess used a mystical amulet to seal away a demon's power. [big he of ex-princess] [if mythical creature fetish is 0]enchanted a great warrior to watch over[otherwise]created a terrible minotaur to guard[end if] it, but [he of ex-princess] had to confine [him of minotaur], because [he of ex-princess] made [him of minotaur] too powerful to control! Or maybe it was some cool yandere thing. Anyway, [he of minotaur] still has the amulet. It's yours if you can sneak past [him of minotaur]!'[or]You'll get really powerful if you use demonic items, but if you're weak they might end up using you instead.'[in random order][roman type][line break].";
	alwayscutshow figure of fairy interact 12 for M.

To compute perception of (M - domesticated wasp):
	let F be 0;
	let E be 0;
	if the number of worn demonic clothing > 1 or the class of the player is vixen, now F is 1;
	if the medium egg count of belly > 0 or the class of the player is broodmother, now E is 1;
	if M is unfriendly:
		if E is 1:
			say "[BigNameDesc of M] and [his of M] rider seem to notice you![line break][speech style of fairy-witch]'That's [him of the player]! Get [him of the player]!'[roman type][line break] The fairy snaps [his of fairy-witch] reigns as the wasp heads straight for you!";
		otherwise:
			say "[BigNameDesc of M] and [his of M] rider seem to notice you![line break][speech style of fairy-witch]'[big he of the player]'s perfect breeding material! Get [him of the player]!'[roman type][line break] The fairy snaps [his of fairy-witch] reins as the wasp heads straight for you!";
		anger M;
		interest M;
	otherwise if F is 1:
		if E is 1:
			say "[BigNameDesc of M] flies up to you, and [his of M] rider looks you up and down.[line break][speech style of fairy-witch]'Hey. You look pretty cool!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] flies right up to you, and [his of M] rider pulls back sharply on the reins.[line break][speech style of fairy-witch]'You should hang out with me if you need someone to show you the ropes.'[roman type][line break]";
			FavourDown M by 1;
		interest M;
	otherwise if the class of the player is faerie or the class of the player is priestess:
		say "[BigNameDesc of M] flies up to you, and [his of M] rider looks you up and down.[line break][speech style of fairy-witch]'I've got my eye on you. Don't try anything funny, loser.'[roman type][line break]";
		FavourDown M by 2;
		interest M;
	otherwise if E is 1:
		say "[BigNameDesc of M] and [his of M] rider notice you! They lose interest.";
		calm M;
		now M is uninterested;
	otherwise:
		say "[BigNameDesc of M] seems to notice you, and [his of M] rider giggles as [he of M] flies toward you aggressively.";
		interest M;
		anger M.

To compute (M - domesticated wasp) protecting against (X - a monster):
	if X is demoness or the number of worn demonic clothing > 0:
		say "[one of][BigNameDesc of M][']s rider watches, totally enthralled.[or][or][BigNameDesc of M][']s rider pulls out a tiny journal, recording your performance.[or][or][BigNameDesc of M] and [his of M] rider watch your performance, thoroughly entertained.[or][or]Your actions appear to interest [NameDesc of M]'s, who watches with excitement.[cycling]";
	otherwise:
		say "[one of][BigNameDesc of M] watches, seemingly not noticing your situation.[or][BigNameDesc of M] appears not to have noticed what's going on![or][BigNameDesc of M] is looking the other way, and doesn't see your humiliating situation.[or][BigNameDesc of M] seems confused by your actions.[or][BigNameDesc of M] simply watches, waiting. It's a little embarrassing, and you try to tell yourself that what you're doing is perfectly normal, really. Besides, it's not like [NameDesc of M] cares. Right?[cycling]".

To compute SelectionFailure of (M - domesticated wasp):
	say "[BigNameDesc of M] finds itself unable to use you how it planned, but the rider seems to have an idea! ";
	if the player is somehow possessing a penis and the mystical size of penis > min penis size:
		say "[big he of fairy-witch] fires several bolts of pink magic toward your crotch.";
		SpecialPenisDown 1; [#LXorDD]
	otherwise:
		say "[big he of fairy-witch] fires several bolts of red magic toward your ass, which cause your skin to tingle as [his of fairy-witch] magic painfully gapes your [asshole].";
		ruin asshole;
	bore M.

Definition: domesticated wasp is automatically banishable: decide yes.

To compute unique banishment of (M - domesticated wasp):
	if fairy-witch is off-stage:
		set up fairy-witch;
		now fairy-witch is in the location of M;
		now fairy-witch is interested;
		anger fairy-witch;
		now the boredom of fairy-witch is 0;
		now the health of fairy-witch is (the maxhealth of fairy-witch * 2) / 3;
		say "[BigNameDesc of fairy-witch] tumbles from [NameDesc of M][']s back![line break][speech style of fairy-witch]'You just cost me my ride, [bitch]!'[roman type][line break][big he of fairy-witch] looks injured and angry...".

Giant Wasp ends here.
