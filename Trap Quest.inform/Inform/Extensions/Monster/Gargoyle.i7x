Gargoyle by Monster begins here.

gargoyle is a monster. The poison-status of gargoyle is -1. The paralyse-status of gargoyle is -1. The blind-status of gargoyle is -1. gargoyle has a number called guard-level.

Definition: gargoyle is mansion dwelling: decide yes.

Definition: gargoyle is willing to do anal:
	if mythical creature fetish is 1 and diaper quest is 0, decide yes;
	decide no.
Definition: gargoyle is willing to charm snakes if diaper quest is 0.

Definition: gargoyle is willing to masturbate: decide yes.
Definition: gargoyle is penis-virginity taking: decide no.

The text-shortcut of gargoyle is "gy". Understand "stone", "statue", "sentry" as gargoyle.

To say ShortDesc of (M - gargoyle):
	say "[if mythical creature fetish is 1]gargoyle[otherwise]sentry[end if]".

To say MediumDesc of (M - gargoyle):
	say "stone [ShortDesc of M]".

Figure of sleeping gargoyle is the file "NPCs/Mansion/Gargoyle/gargoyle1.png".
Figure of awake gargoyle is the file "NPCs/Mansion/Gargoyle/gargoyle2.png".
Figure of flying gargoyle is the file "NPCs/Mansion/Gargoyle/gargoyle3.png".
Figure of dismounting gargoyle is the file "NPCs/Mansion/Gargoyle/gargoyle4.png".

Figure of gargoyle BJ 1 is the file "NPCs/Mansion/Gargoyle/gargoyle-bj1.png".
Figure of gargoyle BJ 2 is the file "NPCs/Mansion/Gargoyle/gargoyle-bj2.png".
Figure of gargoyle BJ 3 is the file "NPCs/Mansion/Gargoyle/gargoyle-bj3.png".
Figure of gargoyle BJ 4 is the file "NPCs/Mansion/Gargoyle/gargoyle-bj4.png".
Figure of gargoyle BJ 5 is the file "NPCs/Mansion/Gargoyle/gargoyle-bj5.png".
Figure of gargoyle BJ 6 is the file "NPCs/Mansion/Gargoyle/gargoyle-bj6.png".
[Figure of gargoyle cunnilingus 1 is the file "NPCs/Mansion/Gargoyle/gargoyle-cunnilingus1.png".]

To decide which figure-name is the monster-image of (M - gargoyle):
	if M is not dangerous, decide on the friendly-monster-image of M;
	if M is airborne, decide on figure of flying gargoyle;
	decide on figure of dismounting gargoyle.

To decide which figure-name is the friendly-monster-image of (M - gargoyle):
	if the sleep of M <= 0 and M is vigilant, decide on figure of awake gargoyle;
	decide on figure of sleeping gargoyle.

To decide which figure-name is the sex-profile of (M - gargoyle):
	if diaper quest is 0 and M is penetrating penis:
		if the player is possessing a penis, decide on figure of gargoyle BJ 2;
		[decide on figure of gargoyle cunnilingus 1;]
	decide on figure of Missing NPC. [Defaults back to the non-sex stuff.]

To say MonsterDesc of (M - gargoyle):
	if mythical creature fetish is 1:
		say "An eerie stone statue of a [man of M] with a long tail, curved horns and giant bat-like wings. Every inch of [his of M] body is exposed, including [his of M] [if lady fetish < 2]wide hips and expansive, paradoxically soft-looking chest[otherwise]big, but flaccid [manly-penis], and gorgeously chiseled chest[end if]. Although [he of M] is rendered in stone, [if M is unleashed][he of M] certainly isn't acting like it![otherwise if M is vigilant][his of M] bright blue eyes are open, and follow your every movement with beastly keenness, never stopping, not even to blink.[otherwise][his of M] posture gives you the feeling of a beast lying in wait, ready to pounce.[end if]";
	otherwise:
		if diaper quest is 1, say "An eerie stone statue of an angel wearing a thin robe that exposes a lot of [if lady fetish is 2]muscle[otherwise]cleavage[end if]. [run paragraph on]";
		otherwise say "An eerie stone statue of an angel wearing [if lady fetish < 2]an ill-fitting robe, draped open by [his of M] elbows, leaving [his of M] expansive chest completely exposed[otherwise]a thin robe that exposes [his of M] rippling chest muscles[end if]. [run paragraph on]";
		say "[if M is unleashed]Right now, [he of M] isn't acting like much of a statue![otherwise if M is vigilant][big he of M] is motionless, but [his of M] eyes are open, never blinking as [he of M] appraises you silently from atop [his of M] pedestal.[otherwise][big he of M] is resting on one knee and [his of M] head is bowed, as if offering deference to [his of M] master. There's something way too realistic about [him of M].[end if]".

To say MonsterComment of (M - gargoyle):
	if the class of the player is vampire spawn:
		if M is unfriendly, say "[variable custom style][one of]Aren't you supposed to be protecting me!?'[or]You're supposed to be on my side![or]I'm supposed to be under [his of M] protection![in random order]";
		otherwise say "[variable custom style][one of]I get the feeling [he of M]'ll protect me.[or]I feel a little safer with [him of M] around.[or]I'm under [his of M] protection. Which is [if the bimbo of the player < 7]one[otherwise]just another[end if] benefit of being a vampire.[in random order]";
	otherwise if the class of the player is vixen or the class of the player is faerie:
		if M is unfriendly, say "[variable custom style][big he of M] doesn't seem to like me. Is it something I'm wearing?";
		otherwise say "[variable custom style]Why do I get the feeling [he of M]s going to attack me?";
	otherwise if diaper quest is 0:
		if the bimbo of the player < 7:
			if the player is gendered male, say "[first custom style][one of][big his of M] [if lady fetish is 2]butt is[otherwise]tits are[end if] fucking rocking![or][big he of M]'s made of stone, but so are THESE GUNS! Heheheh.[or]It's a statue, so it's fine to stare, right?[in random order]";
			otherwise say "[first custom style][one of]How... idealised.[or][if M is guarding]That thing is obviously going to attack me eventually, but how do I hurt it...[otherwise if M is not penetrating a body part]I can bring this thing down![otherwise]This is ridiculous![end if][or][if M is vigilant]It's paying attention to me for some reason.[otherwise]Only Nintendolls would make a statue look that way.[end if][in random order]";
		otherwise if the bimbo of the player < 12:
			say "[variable custom style][one of]What a beautiful statue.[or]It's made of stone, so it's unbeatable, right?[or]It seems like it'd be really heavy.[in random order]";
		otherwise:
			say "[second custom style][one of]What a sexy statue![or]Stone body means stone weight. No way I'm escaping that![or][if M is vigilant]Stare at me more![otherwise]How can I get [his of M] attention...[end if][in random order]";
		say "[roman type][line break]".

To set up (M - gargoyle):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	let R be a random no-roof haunted room;
	unless R is room, now R is Mansion25;
	now M is in R;
	now the health of M is the maxhealth of M;
	now M is guarding.

This is the spawn initial gargoyle rule:
	if gargoyle is off-stage:
		summon gargoyle in the mansion;
		set up gargoyle.
The spawn initial gargoyle rule is listed in the setting up mansion monsters rules.

To compute monstermotion of (M - gargoyle):
	if M is unleashed, compute room leaving of M.

Part 1 - Misc Flavour

To say SummoningFlav of (M - gargoyle):
	say "You hear the flapping of giant stone wings.".

Definition: gargoyle (called M) is vigilant:
	if M is uninterested, decide no;
	if the health of M < the maxhealth of M, decide yes;
	if doomed > 2, decide yes;
	if the player is soulless or there is a worn wood-dong, decide no;[she can't see you if you don't have a soul.]
	if the size of penis >= 5, decide yes;
	if the number of glazed body parts > 2, decide yes;
	if there is museum-stolen currently perceivable thing, decide yes;
	if there is worn magic themed clothing, decide yes;
	decide no.

Definition: gargoyle (called M) is objectifying the player:
	if M is not in the location of the player, decide no;
	if the objectification of M is 1, decide yes;
	if the class of the player is faerie or the class of the player is vixen, decide yes;
	if the player is pheromonal, decide yes;
	if penis is lewdly exposed:
		if the size of penis >= 5 or penis is penis-erect, decide yes;
	if the objectification of M is 1, decide yes;
	if the bimbo of the player >= 20 or the appearance of the player >= 20 or the appearance of the player > the bimbo tolerance of M:
		now the objectification of M is 1;
		decide yes;
	decide no.

To compute sudden objectification of (M - gargoyle):
	say "[NameDesc of M]'s eyes [if mythical creature fetish is 1]dilate[otherwise]widen[end if] as [he of M] suddenly leaps off the pedestal!";

To compute perception of (M - gargoyle):
	now the sleep of M is 0;
	say "You hear a deep rumble, and [NameDesc of M][']s eyes slowly open. [run paragraph on]";
	if M is vigilant:
		compute appearance assessment of M;
	otherwise:
		say "[big his of M] [if mythical creature fetish is 1]slitted [end if]eyes seem to pass over you, and [he of M] returns to [his of M] silent sleep.";
		now M is uninterested;
		now the sleep of M is 30.

[
Essentially, the goal here is to tell the player why the gargoyle woke up, and/or why she is becoming aggressive.
]
To compute appearance assessment of (M - gargoyle):
	let H be a random museum-stolen currently perceivable thing;
	say "[big his of M] [if mythical creature fetish is 1]slitted [end if]pupils focus [run paragraph on]";
	if the size of penis > 5 or penis is penis-erect:
		say "on your crotch as [he of M] hungrily licks [his of M] lips.";
	otherwise if the class of the player is faerie:
		say "on your [if butterfly wings is worn][ShortDesc of butterfly wings][otherwise][ShortDesc of a random worn headgear][end if].";
	otherwise if the class of the player is vixen:
		let V be fox ears;
		say "on your [ShortDesc of V].";
	otherwise if the appearance of the player > the bimbo tolerance of M:
		say "on your chest, then your crotch, and then your face.";
	otherwise if the number of glazed body parts > 2:
		let B be a random glazed body part;
		say "on your [ShortDesc of B].";
	otherwise if H is a thing:
		say "on your [ShortDesc of H].";
	otherwise:[If she woke up because the player was horny, due to magic item, or the doom counter, she just stares at you]
		say "on you, and [big he of M] stares at you in silence for several seconds.";
	if M is objectifying the player or M is unfriendly:
		say "[big his of M] wings unfurl as [he of M] steps down from the pedestal.";
		anger M;
		now M is unleashed;
	otherwise:
		say "[big his of M] eyes continue to follow you as you move around the room.";

To bore (M - gargoyle):
	now the sleep of M is 50;
	now M is guarding;
	bore M for 100 seconds.

To say SatisfiedFlav of (M - gargoyle):
	say "[BigNameDesc of M] appraises you silently for several long moments, and then returns to sleep.".

To compute MasturbationReaction of (M - gargoyle):
	if M is awake:
		if M is uninterested:
			say "You hear a deep rumble, and [NameDesc of M][']s eyes slowly open.";
			now M is interested;
		otherwise if M is not airborne:
			say "[BigNameDesc of M] focuses [his of M] eyes on you, and with two beats of [his of M] giant stony wings, soars into the air.";
			now M is airborne;
			anger M;
			now M is unleashed.

To compute delay of (M - gargoyle):
	if the player is not possessing a penis and M is not airborne:
		follow the gargoyle flight rule;
	otherwise:
		say "[BigNameDesc of M] simply stares at you silently, as if waiting to see what you do next.".

To compute SelectionFrustrated of (M - gargoyle):
	if M is not airborne:
		if mythical creature fetish is 1, say "[BigNameDesc of M] seems to look very frustrated, and then gives up.";
		otherwise say "[BigNameDesc of M] looks satisfied, and gives up.";
		bore M;
	otherwise:
		say "[BigNameDesc of M] circles around above you, waiting for an opportunity to swoop in.".

Part 2 - Combat

The gargoyle priority attack rules is a rulebook. The priority attack rules of gargoyle is usually the gargoyle priority attack rules.

This is the gargoyle flight rule:
	if current-monster is not airborne:
		say "[BigNameDesc of current-monster] focuses [his of current-monster] eyes on you, and with two beats of [his of current-monster] giant stony wings, soars into the air.";
		now current-monster is airborne;
		anger current-monster;
		unless current-monster is unleashed, now current-monster is unleashed;
	rule succeeds.

This is the gargoyle dive bomb rule:
	let M be current-monster;
	if the location of M is not the location of the player:
		now current-monster is not airborne;[the gargoyle will try to chase the player normally instead]
	if M is airborne and the player is not at least partially immobile:
		say "[BigNameDesc of M] dives down from above, arms and legs outstretched as [he of M] tries to capture you!";
		if (the player is upright and the accuracy roll of M * 2 > the dexterity of the player) or (the player is prone and the accuracy roll of M > the dexterity of the player):
			drag to Mansion16 by M;[really just important that you get dropped off near the bedroom.]
			now the stance of the player is 1;
			let A be a random worn ankle-bound clothing;
			say "[BigFuckerDesc of M] adjusts [his of M] grip as [he of M] touches down, slipping [his of M] arms under your knees and [if A is clothing]folding your thighs against your torso[otherwise]forcing your thighs up on either side of your body[end if] as [he of M] locks [his of M] hands behind your neck. You're too exhausted from the flight to fight back, and within moments [his of M] body has reverted to motionless stone, trapping you in an incredibly compromising full nelson.";
			now M is grabbing the player;
			unless vampiress is alive:
				summon vampiress in the mansion;
				say SummoningFlav of vampiress;
				set up vampiress;
			now vampiress is interested;
			anger vampiress;
			now neighbour finder is Mansion16;
			now vampiress is in a random next door room;
			now M is not airborne;
			now the guard-level of M is 4;
		otherwise:
			if the player is prone, say "Luckily, your prone position is low to the ground, and [he of M] misses you by several inches. You hear a rumble as [he of M] slams into the ground behind you, and look over to see flecks of rock falling off [his of M] body.";
			otherwise say "You duck just in time, and [FuckerDesc of M] slams into the ground right behind you. You look over to see flecks of rock falling off [his of M] body.";
			now M is not airborne;
			decrease the health of M by 2;[She takes some damage every time she fails.]
			if the health of M < 0, now the health of M is 1;
		rule succeeds;
	otherwise if current-monster is airborne:[She waits silently until she can carry you off]
		rule succeeds.
The gargoyle dive bomb rule is listed last in the gargoyle priority attack rules.

To say DragFlav of (M - gargoyle) to (R - a room):
	[if the player is airborne:
		say "[BigNameDesc of M] snatches you out of the air and carries you [if the distance of R > 1]all the way [end if]to the [R]!";
		now the
	otherwise:] [Selkie wonders why the airborne case is commented out. Incomplete? MG There was an idea where certain monsters like the wasp or the gargoyle could interact with the player while they were airborne in the woods.]
	say "[BigFuckerDesc of M] snatches you off the ground and carries you [if the distance of R > 1]all the way [end if]to the [R]!".

This is the gargoyle lockdown rule:
	let M be current-monster;
	if M is grabbing the player and the guard-level of M > 0:
		decrease the guard-level of M by 1;
		if the guard-level of M < 1:
			say "The stony [if lady fetish is 2]muscles pressing against your back slowly reverts to being made of warm skin[otherwise]breasts squeezed up against your back slowly revert to being made up of warm skin[end if], and you finally feel movement behind you as [NameDesc of M] releases you from [his of M] grip. A moment later, you hear a gust of wind as [if the location of M is no-roof][he of M] takes off into the sky[otherwise][his of M] wings carry [him of M] from the room.[end if]";
			compute gargoylePerchReset;
			now the guard-level of M is 0;
		otherwise:
			say "[one of][BigNameDesc of M] remains utterly motionless as [he of M] holds you in [his of M] grip.[or][BigNameDesc of M]'s stony body shows no sign of movement as [he of M] holds you in [his of M] grip.[or][BigNameDesc of M] is utterly motionless as [he of M] maintains [his of M] grip.[or][BigNameDesc of M] waits silently as [he of M] holds [his of M] grip.[in random order]";
		if the location of the player is Mansion16 and vampiress is not in the location of the player:[The master bedroom]
			say "You hear high pitched shrieking as dozens of bats fly in through some narrow, high windows, converging in a twisting mass of flapping wings and black fur. Just as suddenly as they appeared, the bats disperse, leaving a [printed name of vampiress] standing in the doorway.";[TODO: improve]
			now vampiress is in the location of the player;
			if vampiress is uninterested, now vampiress is interested;
		rule succeeds.
The gargoyle lockdown rule is listed last in the gargoyle priority attack rules.

The gargoyle unique punishment rules is a rulebook.
The unique punishment rule of gargoyle is usually the gargoyle unique punishment rules.

To compute gargoylePerchReset:
	let M be gargoyle;
	dislodge M;
	bore M;
	now M is in a random placed no-roof room;
	while M is in Sky01 or M is in the location of the player:
		now M is in a random placed no-roof room.

This is the gargoyle exclusiveness rule:
	if the number of monsters penetrating an orifice > 0:
		compute the default taunting of current-monster;
		rule succeeds.
The gargoyle exclusiveness rule is listed last in the gargoyle unique punishment rules.

This is the gargoyle flying punishment rule:
	let M be gargoyle;
	if M is airborne:
		follow the gargoyle dive bomb rule;
		if the rule succeeded, rule succeeds;
	otherwise if the health of M < (the maxhealth of M / 2) and the difficulty of M - the starting difficulty of M > 1 and the number of worn diapers is 0 and the health of M > 5:
		follow the gargoyle flight rule;
		if the rule succeeded, rule succeeds.
The gargoyle flying punishment rule is listed last in the gargoyle unique punishment rules.

To compute damaging attack of (M - a gargoyle):
	if the difficulty of M > the starting difficulty of M and a random number between 1 and 5 is 1:
		compute shredding attack of M;
	otherwise:
		let X be the number of unfriendly monsters in the location of the player;
		let A be the number of worn ankle-bound clothing;[she can't do her grab if your ankles are locked together.]
		let S be the number of worn crotch-in-place short or longer clothing;[she also can't do her grab if you're wearing an undisplaced skirt.]
		if X > 1 and the difficulty of M > (the starting difficulty of M + 1) and the health of M < (the maxhealth of M / 2) and A + S is 0 and a random number between 1 and 5 is 1:
			compute grabbing attack of M;
		otherwise:
			compute striking attack of M.

To compute shredding attack of (M - a gargoyle):
	let B be the painful-part of M;
	if the accuracy roll of M > the dexterity of the player:
		if B is exposed:
			say "[BigNameDesc of M] scratches you [TargetName of B], leaving painful marks on your skin!";
			compute M hurting B;
			PainUp 1;
		otherwise:
			let C be the concealer of B;
			if C is clothing:
				say "[BigNameDesc of M] scratches you [TargetName of B], but that isn't all!";
				compute M hurting B;
				compute M attacking C;[Can potentially destroy the clothing.]
			otherwise:[Shouldn't happen]
				say "[BigNameDesc of M] scratches you [TargetName of B]!";
				compute M hurting B;
	otherwise:
		say "[BigNameDesc of M] tries to scratch you, but you avoid it!".

[
The minotaur does something similar to you over several turns that the gargoyle does in 1, but I think is probably ok for the gargoyle to do because:
- she is a third level npc, not a first level npc (even if that npc is a boss)
- she can't do this until she gains at least 3 difficulty, which means she has to blow the player and make them cum at least 3 times first.
- she isn't directly fucking you.
- she loses some health and potentially leaves the fight if she fails.
- Even if she succeeds, she will definitely go somewhere else after she's done holding you down.
- this is prevented with certain clothing, which are more specific than the requirements for avoiding the minotaur's version, but she isn't specifically checking for exposed orifices, which means the player may still have a lifeline.
]
To compute grabbing attack of (M - a gargoyle):
	say "[BigNameDesc of M]'s wings flap powerfully a [he of M] leaps over your head and slams heavily to the ground behind you.";
	decrease the health of M by 5;
	if the health of M < 1, now the health of M is 1;[damages her slightly.]
	if the accuracy roll of M > the dexterity of the player:[She puts you in a full nelson]
		say "You feel [his of M] [if lady fetish is 2]muscular torso[otherwise]soft breasts[end if] press against your back as [he of M] grabs your legs behind the knee. [big he of M]'s trying to lift you!";
		if the tripping roll of M >= the dexterity of the player:
			say "[BigNameDesc of M] forcibly folds your legs up on either side of your body as [he of M] lifts you off the ground. After a moment, [he of M] locks [his of M] hands behind your head and slowly begins to turn back into stone.";
			now the stance of the player is 1;
			if the strength roll of M > the strength of the player:
				say "You struggle fiercely, but your freedom of movement only grows smaller by the second. It isn't long before [his of M] body has hardened completely, locking you into a ridiculously compromising full nelson position with your knees around your ears.";
				now M is grabbing the player;
				now the guard-level of M is 3;[lasts until this number is below 0]
			otherwise:
				say "You struggle fiercely, managing to break free and fall to the ground before [he of M] hardens [his of M] body fully. It seems to be too late for [him of M], however, and [he of M] closes [his of M] eyes as [his of M] body fully returns to stone.";
				Bore M;
				now M is guarding;
				now the sleep of M is 30;
		otherwise:
			say "Luckily, you manage to stay on your feet.";
	otherwise:
		say "You feel [his of M] [if lady fetish is 2]muscular torso[otherwise]soft breasts[end if] press up against your back, and quickly jump away from [him of M] before [he of M] latches on.".

To say ErectionDemand of (M - gargoyle):
	say "[BigNameDesc of M][']s wings flap excitedly as [his of M] eyes eagerly focus on your crotch, and you get the sense that [he of M]'s waiting for you to get hard.".

To say ErectionPenetrationFlav of (M - gargoyle):
	if lady fetish is 2, say "[BigFuckerDesc of M][']s features light up with delight as [if penis is not penis-erect]your [ShortDesc of penis] stirs to life, and [end if][he of M] [if mythical creature fetish is 1]wraps [his of M] tail around your waist,[otherwise]pins you down face up,[end if] holding you down as [he of M] [if the size of penis > 8]wraps [his of M] hands around your [ShortDesc of penis] and hungrily pulls the tip into [his of M] mouth[otherwise]wraps [his of M] surprisingly soft lips around your [ShortDesc of penis][end if].[line break]";
	otherwise say "[BigNameDesc of M][']s features light up with delight as [if penis is not penis-erect]your [ShortDesc of penis] stirs to life, and [end if][he of M] [if mythical creature fetish is 1]wraps [his of M] tail around your waist,[otherwise]pins you down face up,[end if] holding you down as [he of M] [if the size of penis > 8]wraps [his of M] surprisingly soft breasts around your [ShortDesc of penis] and hungrily pulls the tip into [his of M] mouth[otherwise]wraps [his of M] surprisingly soft lips around your [ShortDesc of penis][end if].[line break]";
	cutshow Figure of gargoyle BJ 1 for M.

To set up sex length of (M - gargoyle) in (F - penis):
	set up sex length 4 of M in F.

To compute unique penetration effect of (M - gargoyle) in (F - penis):
	now the guard-level of M is -1.

To compute unerect taunting of (M - gargoyle):
	if mythical creature fetish is 1:
		say "[big his of M] features scrunch in frustration as your [player-penis] remains completely soft, but rather than lose interest, [he of M] simply shifts [his of M] attention... to your [asshole].";
		now the chosen-orifice of M is asshole;
	otherwise:
		say "[big his of M] features fall in frustration as your [player-penis] remains completely soft, and you feel a powerful wave of shame as [he of M] dejectedly loses interest.";
		Bore M;
		now M is guarding;
		now the sleep of M is 150;
		strongHumiliate.

To say ErectionNearingClimaxFlav of (M - gargoyle):
	if the size of penis > 2:
		say "[BigNameDesc of M][']s slurps seem to be rapidly losing enthusiasm. [big he of M] must be getting bored...";
	otherwise:
		say "The movements of [NameDesc of M][']s tongue seem to be rapidly slowing down. [big he of M] must be getting bored...".

To say ErectionForceFlav of (M - gargoyle):
	say ErectionUseFlav of M.

To say ErectionUseFlav of (M - gargoyle):
	if the size of penis > 8 and lady fetish < 2:[boobjob!]
		say "[one of][BigNameDesc of M] pumps your [ShortDesc of penis] with [his of M] breasts, grunting ravenously as [his of M] tongue strokes your throbbing length.[or][BigNameDesc of M] drools as [his of M] tongue swirls around your tip, mixing with a bit of your own 'drool' to lubricate the [ShortDesc of penis] sandwiched between [his of M] jiggling breasts.[or][BigNameDesc of M] makes noisy slurping noises as [he of M] works your [ShortDesc of penis], lubricating [his of M] breasts with tiny bits of drool as they skilfully massage your shaft.[or][BigNameDesc of M][']s breasts [if the player is possessing a scrotum]bump your sack[otherwise]encircle your shaft[end if] as [he of M] works your [manly-penis], torturing the tip with practised movements of [his of M] tongue and lips.[at random]";
		cutshow Figure of gargoyle BJ 3 for M;
	otherwise if the size of penis > 2:
		say "[one of][BigNameDesc of M] slurps away at your [ShortDesc of penis], teasing your most sensitive parts with [his of M] tongue.[or][BigNameDesc of M] mercilessly pleasures you with [his of M] tongue, wings flapping excitedly as [his of M] lips fervently stroke the base of your [manly-penis].[or][BigNameDesc of M] sucks relentlessly, drool leaking out the side of [his of M] mouth as [he of M] lavishes you with expert stimulation from [if the player is possessing a scrotum]balls[otherwise]base[end if] to tip.[or][BigNameDesc of M] hums as [he of M] suckles your [ShortDesc of penis], [if mythical creature fetish is 1]sounding very much like a starved animal in the middle of a meal[otherwise]as if your shaft were the most delicious thing in the entire world[end if].[or][BigNameDesc of M] swirls [his of M] tongue around your tip as [he of M] mercilessly pumps you with [his of M] lips.[at random]";
		if lady fetish < 2, cutshow Figure of gargoyle BJ 4 for M;
	otherwise:[doubt this will come up so it's mostly copypasta]
		say "[one of][BigNameDesc of M] relentlessly teases your [ShortDesc of penis] with [his of M] tongue.[or][BigNameDesc of M] teases your [ShortDesc of penis] with the very tip of [his of M] tongue, as if stimulating a clitoris[or][BigNameDesc of M] pleasures you mercilessly with [his of M] tongue.[in random order]".

[
TODO: maybe she stores it for the vampiress to harvest or stores it for herself to use on you when your penis gets too tiny.
]
To compute erection orgasm of (M - gargoyle):
	say "You can't take it anymore! Your back arches as your [player-penis] fires several thick ropes of [semen] directly into [NameDesc of M][']s mouth, and just as you think you're all tapped out, [one of]an incredibly pleasurable tingle passes through your [if the player is possessing a scrotum]balls[otherwise]shaft[end if] and [his of M] eyes glow bright white[or]once again, you feel that terrible pleasurable feeling in your [if the player is possessing a scrotum]balls[otherwise]shaft[end if] as [his of M] eyes glow bright white[stopping]. Your orgasm starts up again at three times the intensity, visibly ballooning [NameDesc of M][']s cheeks as [he of M] drains strength, energy, and every last drop of [semen] from your helpless body.";
	StrengthDown 2;
	FatigueUp 20;
	PenisDown 1;
	SilentlyDifficultyUp M by 1;
	if the size of penis > 8, cutshow Figure of gargoyle BJ 5 for M;
	otherwise cutshow Figure of gargoyle BJ 6 for M;
	now penis is not penis-erect.[we must do this, because we don't handle erection loss normally while we're penetrating a monster]

To say ErectionLostFlav of (M - gargoyle):
	say "[big he of M] seems satisfied, and [he of M] climbs off you and silently returns to [his of M] pedestal. As your [ShortDesc of penis] softens, you realise it's far smaller than it was before! [BigNameDesc of M] must have converted a couple inches into an extra meal for [himself of M]!";
	Bore M;
	compute post climax effect of M in penis;

To say ErectionClimaxFlav of (M - gargoyle):
	if refractoryperiod > 0:
		say ErectionLostFlav of M;
	otherwise:
		say "[line break][BigNameDesc of M] slows down and peers at you in disappointment before letting go and climbing back onto [his of M] pedestal.";
		FavourDown M by 2;
		Bore M.

To compute post climax effect of (M - gargoyle) in (F - penis):
	now the sex-length of M is 0;
	BlowGet;
	Calm M;
	FavourUp M by 1;
	now the guard-level of M is 0;
	now M is guarding;
	compute M sleeping 150 after sex.

To say FriendlyAssholePenetrationFlav of (M - gargoyle):
	say AssholePenetrationFlav of M.

To say AssholePenetrationFlav of (M - gargoyle):
	let OF be the openness of asshole - the girth of M;
	say "[BigNameDesc of M] jumps on top of you, [his of M] [if lady fetish is 2]muscular torso[otherwise]huge breasts[end if] pressing against your body as [his of M] scaly tail slithers between your legs.";
	now the tail-depth of M is 0;
	now M is penetrating asshole;
	if the class of the player is living sex doll:
		now the tail-depth of M is 5;
		say "You feel its bumpy surface slide along your taint, finding your gaping rubber sphincter as [he of M] secures [his of M] grip. Your [asshole] emits a cartoonish squeaking noise as [his of M] tail slides right in, pushing deep, deep into your rubberised colon and beginning to thrust.";
	otherwise:
		[decide on a starting value for tail-depth]
		now the tail-depth of M is a random number between 0 and (the openness of asshole / 2);
		say "You feel its bumpy surface slide along your taint and between your [AssDesc] as [he of M] adjusts [his of M] grip, pinning you down securely as [if the tail-depth of M is 0]the end of [his of M] tail begins to press against your sphincter[otherwise if the tail-depth of M is 1]the end of [his of M] tail finds your [asshole], briefly pressing against your sphincter before it stretches out to let the first inch slide in[otherwise if the tail-depth of M is 2]a few inches of tail slowly burrow their way into your [asshole][otherwise if the tail-depth of M is 3]several inches of tail forcefully bury their way up your [asshole][otherwise if the tail-depth of M is 4][his of M] tail slides through your sphincter, burying at least a foot of itself up your [asshole][otherwise][his of M] tail slides right into your [asshole] and continues well into your colon[end if]. [if the tail-depth of M is 0][big he of M] glances down at you as [he of M] slowly ramps up the pressure.[otherwise][big he of M] glances down at you as [his of M] tail begins to thrust.[end if]";[varies based on depth]
		ruin asshole times 1 + (the girth of M / 2);

gargoyle has a number called tail-depth.

To decide which number is the girth of (M - a gargoyle):
	let F be a random fuckhole penetrated by M;
	if F is fuckhole:
		let T be the tail-depth of M;
		if T is 0, decide on 1;
		if T is 1, decide on 2;
		decide on T * 2;
	decide on 0.

To compute anal sex of (M - gargoyle):
	let L be a random number between (the openness of asshole / 2) and the openness of asshole + 1;
	if there is a lubricant covering asshole, increase L by 2;
	if the reaction of the player is 0, decrease L by 1;
	if the tail-depth of M is 0:
		say "[one of]The tip of [FuckerDesc of M]'s tail continues to press against your tight sphincter[or][BigFuckerDesc of M] continues to push the tip of [his of M] tail against your sphincter.[or][BigFuckerDesc of M] stares at you curiously as [he of M] continues trying to force open your sphincter with [his of M] tail.[or][BigFuckerDesc of M] gives you a curious look as [his of M] tail continues pressing against your tight sphincter.[in random order]";
		if L > the girth of M:
			let N be a random number between 1 and 2;
			if the openness of asshole is 1, now N is 1;
			increase the tail-depth of M by N;
			say "Slowly, you feel yourself beginning to stretch. [if N is 1]It's only a little, but that's just enough to let the very end of [his of M] tail finally slip in. [big he of M] doesn't miss [his of M] chance, amping up the pressure until a full inch of [his of M] tail is buried in your [asshole][otherwise]It's only a little at first, but [he of M] amps up the pressure, and bit by bit, your [asshole] opens up to accept the first few inches of [his of M] tail[end if]. [big he of M] tightens [his of M] grip as [he of M] gently begins to thrust.";
	otherwise if the tail-depth of M is 1:
		say "[one of][BigFuckerDesc of M] stares at you curiously as the tip of [his of M] tail slips in and out of your [asshole].[or]The tip of [FuckerDesc of M]'s tail continues to slide in and out of your [asshole].[or][BigFuckerDesc of M]'s tail teases your sphincter as it slides in and out of your [asshole].[in random order]";
		if L > the girth of M:
			let N be a random number between 1 and 2;
			increase the tail-depth of M by N;
			say "Each time [his of M] tail enters you, you feel it reaching just a little bit deeper. [if N is 1]It isn't long before [he of M] stops pulling out after each thrust, fucking you with a couple inches at a time.[otherwise]It isn't long before [he of M] stops teasing you and starts speeding up, vigorously fucking you with several thick inches at a time.[end if]";
	otherwise if the tail-depth of M is 2:
		say "[one of][BigFuckerDesc of M] stares at you curiously as [he of M] slowly fucks you with the tip of [his of M] tail.[or]The tip of [FuckerDesc of M]'s tail continues to slowly thrust into you.[or][BigFuckerDesc of M]'s face scrunches up with effort as [he of M] slowly fucks you with the end of [his of M] tail.[in random order]";
		if L > the girth of M:
			let N be a random number between 1 and 2;
			increase the tail-depth of M by N;
			say "[big he of M] speeds up little by little, [if N is 1]pushing a few more inches up your [asshole] as [he of M] begins to fuck you for real.[otherwise][his of M] tail thoroughly filling up your [asshole] as [he of M] begins to fuck you for real.[end if]";
	otherwise if the tail-depth of M is 3:
		say "[one of][BigFuckerDesc of M] vigorously pumps [his of M] tail in and out of your [asshole].[or][BigFuckerDesc of M] continues to plow your [asshole] with [his of M] powerful tail.[or]The tip of [FuckerDesc of M]'s tail [if the player is sexed male]taps your prostate[otherwise]teases you from the inside[end if] as [he of M] thrusts in and out of your [asshole].[in random order]";
		if L > the girth of M:
			let N be a random number between 1 and 2;
			increase the tail-depth of M by N;
			say "More and more of [his of M] tail enters you with every thrust, [if N is 1]slowly but surely filling up your [asshole] completely,[otherwise]and even when the pounding stops going deeper, it still gets harder. Way harder.[end if]";
	otherwise if the tail-depth of M is 4:
		say "[one of]You can feel [FuckerDesc of M]'s tail reaching deep into your [asshole] as [he of M] pounds you with powerful thrusts.[or][BigFuckerDesc of M]'s tail continues to plow your [asshole] with deep thrusts.[or][BigFuckerDesc of M]'s tail [if the player is sexed male]massages your prostate[otherwise]strokes you from the inside[end if] as [he of M] thrusts it in and out of your [asshole].[or][BigFuckerDesc of M]'s tail [if the player is sexed male]rubs against your prostate[otherwise]strokes you from the inside[end if] as [he of M] pumps it in and out of your [asshole].[in random order]";
		if L > the girth of M:
			now the tail-depth of M is 5;
			say "[big his of M] tail finally stops pushing deeper, but continues to pound you harder and harder. [big he of M]'s really enjoying [himself of M] now!";
	otherwise:
		if the class of the player is living sex doll, compute sexSexDoll of M in asshole;
		otherwise say sexDumbFlav of M in asshole;
	unless the class of the player is living sex doll, ruin asshole times 1 + (the girth of M / 2);
	decrease the sex-length of M by 1;
	say "[one of][M sex reaction][or][cycling]".

To say sexDollFlav of (M - gargoyle) in (F - asshole):
	say "[one of]Your [asshole] squeals like a stuck piglet as [FuckerDesc of M] fucks you with [his of M] tail[or]Your [asshole] squeaks ridiculously as [FuckerDesc of M] fucks you with [his of M] tail.[or][BigFuckerDesc of M] produces faint squeaking noises as [he of M] pumps [his of M] tail in and out of your rubberised [asshole].[in random order]".

To say sexDumbFlav of (M - gargoyle) in (F - asshole):
	say "[one of][BigFuckerDesc of M] fiercely slams [his of M] tail in and out of your [asshole]![or][BigFuckerDesc of M]'s tail [if the player is sexed male]mercilessly tortures your prostate[otherwise]grinds against your inner walls[end if] as [he of M] slams it in and out of your [asshole]![or][if lady fetish is 2][BigFuckerDesc of M]'s muscles ripple[otherwise][BigFuckerDesc of M]'s breasts jiggle[end if] as [he of M] slams [his of M] tail in and out of your [asshole]![in random order]".

To say sexDumbNearingClimax of (M - gargoyle) in (F - asshole):
	say "[BigFuckerDesc of M] seems to be slowing down... Is [he of M] getting bored?".

To compute unique climax of (M - gargoyle) in (F - asshole):
	if the tail-depth of M is 0:
		say "[BigFuckerDesc of M] climbs off you, using [his of M] tail to deliver a final swat to your ass.";
	otherwise:
		say "[BigFuckerDesc of M] climbs off you, slowly removing [his of M] tail from your ass.";
	FavourUp M;
	Bore M.

To compute damage reaction of (M - gargoyle):
	if the sleep of M > 0:
		say "[BigNameDesc of M] seems completely unperturbed.";
	otherwise if M is guarding or M is uninterested:
		say CombatProvokedReaction of M;
		now M is unleashed;
		anger M;
	otherwise:
		say DamageReaction (the health of M) of M.

To say CombatProvokedReaction of (M - gargoyle):
	say "[BigNameDesc of M] faces you and slowly steps down from [his of M] pedestal.";

To say DamageReactHealthy of (M - gargoyle):
	say "[BigNameDesc of M] seems completely unaffected by your attack!".

To say DamageReactDamaged of (M - gargoyle):
	say "[BigNameDesc of M] blinks, as if surprised by the force of your attack!".

To say DamageReactTired of (M - gargoyle):
	say "[one of][BigNameDesc of M] emits a weird crunching noise[or]Tiny cracks spread across [his of M] stony skin[at random]!".

To say DamageReactWeak of (M - gargoyle):
	say "The hit seems to dislodge several pieces of loose rock!".

To say StrikingSuccessFlav of (M - gargoyle) on (B - a body part):
	say "[BigNameDesc of M] smacks you with a stony fist!".

To say StrikingFailureFlav of (M - gargoyle) on (B - a body part):
	say "[BigNameDesc of M] swipes at you, but you manage to dodge it.".

To say BanishFleeFlav of (M - gargoyle):
	say "[BigNameDesc of M] collapses into a pile of dust and rubble.".

Definition: gargoyle (called M) is damageable:
	if M is asleep, decide no;
	if M is guarding and M is uninterested, decide no;
	decide yes.

To compute the default taunting of (M - gargoyle):
	say "[one of][BigNameDesc of M] watches in total silence.[or][BigNameDesc of M] simply watches, waiting. It's a little embarrassing, and you try to tell yourself that what you're doing is perfectly normal, really. Besides, it's not like [NameDesc of M] cares. Right?[cycling]".

To compute (M - gargoyle) protecting against (X - a monster):
	if M is unleashed:
		if X is vampiress and M is not unfriendly:
			say "[BigNameDesc of M][']s eyes flash bright red, and [he of M] leaps between you and [NameDesc of X].";
			anger M;
		otherwise if the class of the player is vampire spawn:
			say "[BigNameDesc of M] smacks [NameDesc of X] with a stony fist!";
			compute X receiving 1 damage from M;
		otherwise:
			compute the default taunting of M;
	otherwise if M is vigilant:
		if X is vampiress:
			say "[BigNameDesc of M][']s eyes flash bright red, and [he of M] leaps between you and [NameDesc of X].";
			anger M;
			now M is unleashed;
		otherwise if the class of the player is vampire spawn:
			say "[BigNameDesc of M][']s eyes flash bright red, and [he of M] leaps between you and [NameDesc of X].";
			calm M;
			now M is unleashed;
		otherwise:
			compute the default taunting of M.

Gargoyle ends here.
