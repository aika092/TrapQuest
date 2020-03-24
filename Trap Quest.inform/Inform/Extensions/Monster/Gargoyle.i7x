Gargoyle by Monster begins here.

gargoyle is a monster. The poison-status of gargoyle is -1. The paralyze-status of gargoyle is -1. The blind-status of gargoyle is -1. gargoyle has a number called guard-level. The guard-level of gargoyle is 0. gargoyle has a number called satiated. The satiated of a gargoyle is usually 0.

Definition: gargoyle is mansion dwelling: decide yes.

Definition: gargoyle is willing to masturbate: decide yes.

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
	if diaper quest is 0 and M is grabbing the player:
		if the size of penis > 0, decide on figure of gargoyle BJ 2;
		[decide on figure of gargoyle cunnilingus 1;]
	decide on figure of Missing NPC. [Defaults back to the non-sex stuff.]

To say MonsterDesc of (M - gargoyle):
	if mythical creature fetish is 1:
		say "An eerie stone statue of a [man of M] with long, curved horns and giant bat-like wings. Every inch of [his of M] body is exposed, and although rendered in stone, [big he of M] [if M is vigilant]appraises you silently from atop [his of M] pedestal, never moving, not even to blink.[otherwise]gives you the feeling of a beast lying in wait, ready to pounce.[end if]";
	otherwise:
		say "An eerie stone statue of an angel wearing a[if lady fetish < 2]n ill-fitting robe, draped open by [his of M] elbows, leaving [his of M] chest completely exposed[otherwise]a thin robe that exposes [his of M] rippling chest muscles[end if]. [big he of M] is resting on one knee and [his of M] head is bowed, as if offering deference to [his of M] master. [if M is vigilant][big he of M] appraises you silently from atop [his of M] pedestal, never moving, not even to blink.[otherwise]There's something way too realistic about [him of M]. You get the feeling [he of M] might wake up and attack you at any time.[end if]".

To set up (M - gargoyle):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 8;
	now the blue-balls of M is 3;
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
	if the player is soulless or there is a worn wood-dong, decide no;
	if doomed > 2, decide yes;
	if the size of penis >= 5, decide yes;
	if the number of glazed body parts > 2, decide yes;
	if there is held stolen clothing, decide yes;
	if there is worn magic themed clothing, decide yes;
	decide no.

Definition: gargoyle (called M) is objectifying the player:
	if M is not in the location of the player, decide no;
	if the player is very horny, decide yes;
	if penis is lewdly exposed or the player is horny:
		if the size of penis > the satiated of M, decide yes;
		if the class of the player is cowgirl or the class of the player is catgirl, decide yes;
	if the class of the player is faerie or the class of the player is vixen, decide yes;
	if the objectification of M is 1, decide yes;
	if the bimbo of the player >= 20 or the appearance of the player >= 20 or the appearance of the player > the bimbo tolerance of M:
		now the objectification of M is 1;
		decide no.

To compute perception of (M - gargoyle):
	now M is interested;
	now the sleep of M is 0;
	say "You hear a deep rumble, and [NameDesc of M]'s eyes slowly open. [run paragraph on]";
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
	let H be a random worn stolen clothing;
	say "[big his of M] [if mythical creature fetish is 1]slitted [end if]pupils focus [run paragraph on]";
	if the size of penis > the satiated of M:
		say "on your crotch as [he of M] hungrily licks [his of M] lips.";
	otherwise if the class of the player is faerie:
		let W be a random worn butterfly wings;
		say "on your [ShortDesc of W].";
	otherwise if the class of the player is vixen:
		let V be fox ears;
		say "on your [ShortDesc of V].";
	otherwise if the appearance of the player > the bimbo tolerance of M:
		say "on your chest, then your crotch, and then your face.";
	otherwise if the number of glazed body parts > 2:
		let B be a random glazed body part;
		say "on your [ShortDesc of B].";
	otherwise if H is clothing:
		say "on your [ShortDesc of H].";
	otherwise:[If she woke up because the player was horny, due to magic item, or the doom counter, she just stares at you]
		say "on you, and [big he of M] stares at you in silence for several seconds.";
	if M is objectifying the player:
		say " [big his of M] wings unfurl as [he of M] steps down from the pedestal.";
		anger M;
		now M is unleashed;
	otherwise:
		say " [big his of M] eyes continue to follow you as you move around the room.";

To bore (M - gargoyle):
	now the sleep of M is 50;
	bore M for 100 seconds.

To say SatisfiedFlav of (M - gargoyle):
	say "[BigNameDesc of M] appraises you silently for several long moments, and then returns to sleep.".

To compute MasturbationReaction of (M - gargoyle):
	if M is awake:
		if M is uninterested:
			say "You hear a deep rumble, and [NameDesc of M]'s eyes slowly open.";
			now M is interested;
		otherwise if M is not airborne:
			say "[BigNameDesc of M] focuses [his of M] eyes on you, and with two beats of [his of M] giant stony wings, soars into the air.";
			now M is airborne;
			anger M;
			now M is unleashed.

To compute delay of (M - gargoyle):
	if the size of penis is 0 and M is not airborne:
		follow the gargoyle flight rule;
	otherwise:
		say "[BigNameDesc of M] simply stares at you silently, as if waiting to see what you do next.".

To say SelectionFrustrated of (M - gargoyle):
	if M is not airborne:
		say "[BigNameDesc of M] seems to look very frustrated, and then gives up.";
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
	if the location of current-monster is not the location of the player:
		now current-monster is not airborne;[the gargoyle will try to chase the player normally instead]
	if current-monster is airborne and the player is not immobile:
		drag to Mansion16 by current-monster;[really just important that you get dropped off near the bedroom.]
		silently try kneeling;
		now current-monster is grabbing the player;
		unless vampiress is alive:
			summon vampiress in the mansion;
			say SummoningFlav of vampiress;
			set up vampiress;
		now vampiress is interested;
		anger vampiress;
		now neighbour finder is in Mansion16;
		now vampiress is in a random next door room;
		now current-monster is not airborne;
		rule succeeds;
	otherwise if current-monster is airborne:[She waits silently until she can carry you off]
		rule succeeds.
The gargoyle dive bomb rule is listed last in the gargoyle priority attack rules.

To say DragFlav of (M - gargoyle) to (R - a room):
	[if the player is airborne:
		say "[BigNameDesc of M] snatches you out of the air and carries you [if the distance of R > 1]all the way [end if]to the [R]!";
		now the
	otherwise:] [###Selkie wonders why the airborne case is commented out. Incomplete? ###MG There was an idea where certain monsters like the wasp or the gargoyle could interact with the player while they were airborne in the woods.]
	say "[BigNameDesc of M] snatches you off the ground and carries you [if the distance of R > 1]all the way [end if]to the [R]!".

This is the gargoyle vigilance rule:
	let M be current-monster;
	if M is grabbing the player and the guard-level of M is 0:
		if vampiress is penetrating an orifice:[the gargoyle holds you down until her mistress is having sex with you.]
			say "[BigNameDesc of M] releases you and takes off into the sky.";
			dislodge M;
			bore M;
			now M is in a random placed no-roof room;
			while current-monster is in Sky01:
				now current-monster is in a random placed no-roof room;
			now the guard-level of current-monster is 0;
		otherwise:
			say "[BigNameDesc of current-monster] holds you down silently in wait.";
			if the guard-level of current-monster < 5, increase the guard-level of current-monster by 1;
			if the guard-level of current-monster >= 5 and vampiress is not in the location of the player:
				say "You hear high pitched shrieking as dozens of bats fly in through some narrow, high windows, converging in a twisting mass of flapping wings and black fur. Just as suddenly as they appeared, the bats disperse, leaving a [printed name of vampiress] standing in the doorway.";
				now vampiress is in the location of the player;
			if vampiress is uninterested, now vampiress is interested;
		rule succeeds.
The gargoyle vigilance rule is listed last in the gargoyle priority attack rules.

The gargoyle unique punishment rules is a rulebook.
The unique punishment rule of gargoyle is usually the gargoyle unique punishment rules.

This is the gargoyle exclusiveness rule:
	if the number of monsters penetrating an orifice > 0:
		compute the default taunting of current-monster;
		rule succeeds.
The gargoyle exclusiveness rule is listed last in the gargoyle unique punishment rules.

This is the gargoyle flying punishment rule:
	if the size of penis < the satiated of current-monster and the number of worn diapers is 0:
		if current-monster is airborne:
			follow the gargoyle dive bomb rule;
			if the rule succeeded, rule succeeds;
		otherwise:
			follow the gargoyle flight rule;
			if the rule succeeded, rule succeeds.
The gargoyle flying punishment rule is listed last in the gargoyle unique punishment rules.

This is the gargoyle feeding rule:
	let M be current-monster;
	if M is grabbing the player:
		compute blowjob sex of M;
		rule succeeds;
	otherwise if refactoryperiod > 0:
		say "[BigNameDesc of M] seems to get very frustrated and then gives up.";
		now M is guarding;
		now the sleep of M is 50;
		Bore M;
		rule succeeds;
	otherwise if the size of penis > the satiated of M:
		let C be a random worn top level protection clothing;
		if C is clothing and penis is not sex vulnerable:
			say "[BigNameDesc of M] tears off your [printed name of C]!";
			destroy C;
			rule succeeds;
		if there is a worn chastity cage:
			say "[BigNameDesc of M] pries off your [printed name of a random worn chastity cage]!";
			destroy a random worn chastity cage;
			rule succeeds;
		compute blowjob initiation of M;
		rule succeeds.
The gargoyle feeding rule is listed last in the gargoyle unique punishment rules.

To compute blowjob initiation of (M - gargoyle):
	now the guard-level of M is -1;
	say BlowjobInitiationFlav of M;
	now the sex-length of M is 4;
	now M is grabbing the player.
	[now M is penetrating penis.]

To say BlowjobInitiationFlav of (M - gargoyle):
	say "[BigNameDesc of M] [if mythical creature fetish is 1]wraps [his of M] tail around your waist, pinning your arms[otherwise]pins you down face up, holding your arms[end if] to your sides as [he of M] [if the size of penis > 8]wraps [his of M] surprisingly soft breasts around your [ShortDesc of penis] and hungrily pulls the tip into [his of M] mouth[otherwise]wraps [his of M] surprisingly soft lips around your [ShortDesc of penis][end if].[line break]";
	cutshow Figure of gargoyle BJ 1 for M.

To compute blowjob sex of (M - gargoyle):
	let A be 500;
	increase A by the blue-balls of M * 50;
	if penis is pushed over the edge:
		compute blowjob ejaculation of M;
	otherwise if the sex-length of M <= 0:
		compute blowjob climax of M;
	otherwise if the reaction of the player is 0:
		say BlowjobResistanceFlav of M;
		RawUp penis;
		Arouse A / 2 + A / 3;
		decrease the sex-length of M by 1;
	otherwise:
		say BlowjobSubmissionFlav of M;
		RawUp penis;
		Arouse A;
		decrease the sex-length of M by 1;
	unless M is interested:
		BlowGet;
		Calm M;
		now the guard-level of M is 0;
		now M is guarding;
		now the sleep of M is 150.

To say BlowjobSubmissionFlav of (M - gargoyle):
	if the size of penis > 8 and lady fetish < 2:[boobjob!]
		say "[one of][BigNameDesc of M] pumps your [ShortDesc of penis] with [his of M] breasts, grunting ravenously as [his of M] tongue strokes your throbbing length.[or][BigNameDesc of M] drools as [his of M] tongue swirls around your tip, mixing with a bit of your own 'drool' to lubricate the [ShortDesc of penis] sandwiched between [his of M] jiggling breasts.[or][BigNameDesc of M] makes noisy slurping noises as [he of M] works your [ShortDesc of penis], lubricating [his of M] breasts with tiny bits of drool as they skilfully massage your shaft.[or][BigNameDesc of M]'s breasts bump your sack as [he of M] works your [manly-penis], torturing the tip with practised movements of [his of M] tongue and lips.[at random]";
		cutshow Figure of gargoyle BJ 3 for M;
	otherwise if the size of penis > 2:
		say "[one of][BigNameDesc of M] slurps away at your [Shortdesc of penis], teasing your most sensitive parts with [his of M] tongue.[or][BigNameDesc of M] mercilessly pleasures you with [his of M] tongue, wings flapping excitedly as [his of M] lips fervently stroke the base of your [manly-penis].[or][BigNameDesc of M] sucks relentlessly, drool leaking out the side of [his of M] mouth as [he of M] lavishes you with expert stimulation from balls to tip.[or][BigNameDesc of M] hums as [he of M] suckles your [ShortDesc of penis], [if mythical creature fetish is 1]sounding very much like a starved animal in the middle of a meal[otherwise]as if your shaft were the most delicious thing in the entire world[end if].[or][BigNameDesc of M] swirls [his of M] tongue around your tip as [he of M] mercilessly pumps you with [his of M] lips.[at random]";
		if lady fetish < 2, cutshow Figure of gargoyle BJ 4 for M;
	otherwise:[doubt this will come up so it's mostly copypasta]
		say "[one of][BigNameDesc of M] relentlessly teases your [Shortdesc of penis] with [his of M] tongue.[or][BigNameDesc of M] teases your [Shortdesc of penis] with the very tip of [his of M] tongue, as if stimulating a clitoris[or][BigNameDesc of M] pleasures you mercilessly with [his of M] tongue.[in random order]".

To say BlowjobResistanceFlav of (M - gargoyle):
	say BlowjobSubmissionFlav of M.

[
TODO: maybe she stores it for the vampiress to harvest or stores it for herself to use on you when your penis gets too tiny.
]
To compute blowjob ejaculation of (M - gargoyle):
	orgasm quietly;
	say "You can[']t take it any more! Your back arches as your cock fires several thick ropes of [semen] directly into [NameDesc of M]'s mouth, and just as you think you're all tapped out, [one of]an incredibly pleasurable tingle passes through your balls and [his of M] eyes glow bright white[or]once again, you feel that terrible pleasurable feeling in your balls as [his of M] eyes glow bright white[stopping]. Your orgasm starts up again at three times the intensity, visibly ballooning [NameDesc of M]'s cheeks as [he of M] drains strength, energy, and every last drop of [semen] from your helpless body. [big he of M] seems satisfied, and [he of M] climbs off you and silently returns to [his of M] pedestal.";
	StrengthDown 2;
	FatigueUp 20;
	PenisDown 1;
	increase the satiated of M by 1;
	if the blue-balls of M > 2, decrease the blue-balls of M by 2;
	if the size of penis > 8, cutshow Figure of gargoyle BJ 5 for M;
	otherwise cutshow Figure of gargoyle BJ 6 for M;
	Bore M;
	say "As your [ShortDesc of penis] softens, you realise it's far smaller than it was before! [BigNameDesc of M] must have converted a couple inches into an extra meal for [himself of M]! You feel drained!".

To compute blowjob climax of (M - gargoyle):
	say "[line break][BigNameDesc of M] slows down and peers at you silently for a moment before letting go and climbing back onto [his of M] pedestal.";
	increase the blue-balls of M by 1;
	decrease the satiated of M by 2;
	Bore M.

To compute damage of (M - gargoyle):
	if the health of M > 0:
		if the sleep of M > 0:
			say "[BigNameDesc of M] seems completely unperturbed.";
		otherwise if M is guarding or M is uninterested:
			say "[BigNameDesc of M] faces you and slowly steps down from [his of M] pedestal.";
			now M is unleashed;
			anger M;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

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
	say "[BigNameDesc of M] swipes at you, but you manage to dodge it".

To compute unique death of (M - gargoyle):
	say "[BigNameDesc of M] collapses into a pile of dust and rubble.";
	loot M;
	loot M;
	loot M;
	destroy M.

Definition: gargoyle (called M) is damageable:
	if M is asleep, decide no;
	if M is guarding and M is uninterested, decide no.

To compute the default taunting of (M - gargoyle):
	say "[one of][BigNameDesc of M] watches in total silence.[or][BigNameDesc of M] simply watches, waiting. It's a little embarrassing, and you try to tell yourself that what you're doing is perfectly normal, really. Besides, it's not like [NameDesc of M] cares. Right?[cycling]".

To compute (M - gargoyle) protecting against (X - a monster): [Default protection if not defined for the monster]
	if M is unleashed:
		if the class of the player is vampire spawn:
			say "[BigNameDesc of M] smacks [NameDesc of X] with a stony fist!";
		otherwise if X is vampiress and M is not unfriendly:
			say "[BigNameDesc of M]'s eyes flash bright red, and [he of M] leaps between you and [NameDesc of X].";
			anger M;
		otherwise:
			compute the default taunting of M;
	otherwise if M is vigilant:
		if X is vampiress:
			say "[BigNameDesc of M]'s eyes flash bright red, and [he of M] leaps between you and [NameDesc of X].";
			anger M;
			now M is unleashed;
		otherwise if the class of the player is vampire spawn:
			say "[BigNameDesc of M]'s eyes flash bright red, and [he of M] leaps between you and [NameDesc of X].";
			calm M;
			now M is unleashed;
		otherwise:
			compute the default taunting of M.

Gargoyle ends here.
