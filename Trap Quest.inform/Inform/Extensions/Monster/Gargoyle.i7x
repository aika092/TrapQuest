Gargoyle by Monster begins here.

gargoyle is a monster. gargoyle can be excited. gargoyle is not excited. The poison-status of gargoyle is -1. The paralyze-status of gargoyle is -1. The blind-status of gargoyle is -1. gargoyle has a number called guarding. The guarding of gargoyle is 0.

Definition: gargoyle (called M) is mansion dwelling:
	decide yes.

The text-shortcut of gargoyle is "gy". Understand "stone", "statue", "sentry" as gargoyle.

To say ShortDesc of (M - gargoyle):
	say "[if mythical creature fetish is 1]gargoyle[otherwise]sentry[end if]".

To say MediumDesc of (M - gargoyle):
	say "stone [ShortDesc of M]".

Figure of gargoyle is the file "NPCs/Mansion/gargoyle1.png".

To decide which figure-name is the monster-image of (M - gargoyle):
	decide on figure of gargoyle.

To say MonsterDesc of (M - gargoyle):
	say "An eerie stone statue of [if mythical creature fetish is 1]a woman with long, curved horns and giant bat-like wings. Every inch of her body is exposed, and although rendered in stone, she gives you the feeling of a beast lying in wait, ready to pounce[otherwise]a winged woman wearing an ill-fitting robe, draped open by her elbows, leaving her chest completely exposed. She is resting on one knee and her head is bowed, as if offering deference to her master. There's something way too realistic about her. You get the feeling she might wake up and attack you at any time[end if]. [if M is vigilant]She appraises you silently from atop her pedestal, never moving, not even to blink.[end if]".

To set up (M - gargoyle):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 8;
	now the blue-balls of M is 5;
	let R be a random no-roof haunted room;
	unless R is room, now R is Mansion25;
	now M is in R;
	now the health of M is the maxhealth of M;
	now M is captive.

This is the spawn initial gargoyle rule:
	if gargoyle is off-stage and diaper quest is 0:
		summon gargoyle in the mansion;
		set up gargoyle.
The spawn initial gargoyle rule is listed in the setting up mansion monsters rules.

To compute motion of (M - gargoyle):
	if M is released, compute room leaving of M.

Part 1 - Misc Flavour

To say SummoningFlav of (M - gargoyle):
	say "You hear the flapping of giant stone wings.".

Definition: gargoyle (called M) is vigilant:
	if M is uninterested, decide no;
	if the size of penis >= the blue-balls of M, decide yes;
	if the player is horny, decide yes;
	if the number of glazed body parts > 2 or there is a ghost in the location of the player, decide yes;
	if there is an alive vampiress or doomed > 2, decide yes;
	decide no.

Definition: gargoyle (called M) is objectifying the player:
	if (penis is lewdly exposed or the player is very horny) and the size of penis >= the blue-balls of M, decide yes;
	if the class of the player is vampire spawn, decide no;
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
		if M is objectifying the player and the size of penis > the blue-balls of M:
			say "Her [if mythical creature fetish is 1]slitted[end if] pupils focus in on your crotch, and [he of M] licks [his of M] lips as [he of M] steps down from [his of M] pedestal.";
			anger M;
			now M is released;
		otherwise if M is objectifying the player:
			say "Her [if mythical creature fetish is 1]slitted[end if] pupils focus in on you, and [his of M] wings unfurl as [he of M] steps down from [his of M] pedestal.";
			anger M;
			now M is released;
		otherwise:
			say "Her [if mythical creature fetish is 1]slitted[end if] pupils focus in on you, slowly following you as you move around the room.";
	otherwise:
		say "Her [if mythical creature fetish is 1]slitted[end if] eyes seem to pass over you, and she returns to her silent sleep.";
		now M is uninterested;
		now the sleep of M is 30;

To bore (M - gargoyle):
	now the sleep of M is 50;
	bore M for 100 seconds.

To say SatisfiedFlav of (M - gargoyle):
	say "[BigNameDesc of M] appraises you silently for several long moments, and then returns to sleep.".

To compute MasturbationReaction of (M - gargoyle):
	if the sleep of M < 1:
		if M is uninterested:
			say "You hear a deep rumble, and [NameDesc of M]'s eyes slowly open.";
			now M is interested;
		otherwise if M is not airborne:
			say "[BigNameDesc of M] focuses [his of M] eyes on you, and with two beats of [his of M] giant stony wings, soars into the air.";
			now M is airborne;
			anger M;
			now M is released.

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
		unless current-monster is released, now current-monster is released;
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
			say "[SummoningFlav of vampiress]";
			set up vampiress;
			now vampiress is interested;
		anger vampiress;
		now current-monster is not airborne;
		rule succeeds;
	otherwise if current-monster is airborne:[She waits silently until she can carry you off]
		rule succeeds.
The gargoyle dive bomb rule is listed last in the gargoyle priority attack rules.

To say DragFlav of (M - gargoyle) to (R - a room):
	[if the player is airborne:
		say "[BigNameDesc of M] snatches you out of the air and carries you [if the distance of R > 1]all the way [end if]to the [R]!";
		now the 
	otherwise:] [###Selkie wonders why the airborne case is commented out. Incomplete?]
	say "[BigNameDesc of M] snatches you off the ground and carries you [if the distance of R > 1]all the way [end if]to the [R]!".

This is the gargoyle air lifting rule:
	if current-monster is grabbing the player and current-monster is doing nothing special:
		if vampiress is penetrating an orifice:[the gargoyle holds you down until her mistress is having sex with you.]
			say "[BigNameDesc of current-monster] releases you and takes off into the sky.";
			now current-monster is not grabbing the player;
			bore current-monster;
			now current-monster is in a random placed no-roof room;
			while current-monster is in Sky01:
				now current-monster is in a random placed no-roof room;
			now the guarding of current-monster is 0;
		otherwise:
			say "[BigNameDesc of current-monster] holds you down silently in wait.";
			if the guarding of current-monster < 5, increase the guarding of current-monster by 1;
			if the guarding of current-monster > 5 and vampiress is not in the location of the player:
				say "You hear high pitched shrieking as dozens of bats fly in through some narrow, high windows, converging in a twisting mass of flapping wings and black fur. Just as suddenly as they appeared, the bats disperse, leaving a [printed name of vampiress] standing in the doorway.";
				now vampiress is in the location of the player;
			if vampiress is uninterested, now vampiress is interested;
		rule succeeds.
The gargoyle air lifting rule is listed last in the gargoyle priority attack rules.

The gargoyle unique punishment rules is a rulebook.
The unique punishment rule of gargoyle is usually the gargoyle unique punishment rules.

This is the gargoyle exclusiveness rule:
	if the number of monsters penetrating an orifice > 0:
		compute the default taunting of current-monster;
		rule succeeds.
The gargoyle exclusiveness rule is listed last in the gargoyle unique punishment rules.

This is the gargoyle flying punishment rule:
	if the size of penis < the blue-balls of current-monster and the number of worn diapers is 0:
		if current-monster is airborne:
			follow the gargoyle dive bomb rule;
			if the rule succeeded, rule succeeds;
		otherwise:
			follow the gargoyle flight rule;
			if the rule succeeded, rule succeeds.
The gargoyle flying punishment rule is listed last in the gargoyle unique punishment rules.

This is the gargoyle feeding rule:
	if there is a worn diaper:[TODO: someone else is probably a better fit to write this particular section. Should be disabled for diaper quest until that's done]
		now the sex-length of current-monster is a random number between 3 and 4;
		compute masturbation of current-monster;
		rule succeeds;
	if the size of penis >= the blue-balls of current-monster:
		let C be a random worn top level protection clothing;
		if C is clothing and penis is not sex vulnerable:
			say "[BigNameDesc of current-monster] tears off your [printed name of C]!";
			destroy C;
			rule succeeds;
		if there is a worn chastity cage:
			say "[BigNameDesc of current-monster] pries off your [printed name of a random worn chastity cage]!";
			destroy a random worn chastity cage;
			rule succeeds;
		now the sex-length of current-monster is a random number between 3 and the size of penis / 2;
		compute masturbation of current-monster;
		rule succeeds.
The gargoyle feeding rule is listed last in the gargoyle unique punishment rules.

To compute masturbation of (M - gargoyle):
	if M is not masturbating the player:
		now M is grabbing the player;
		now M is masturbating the player;	
		say "[MasturbationStartFlav of M]";
	if the latex-transformation of the player > 3:
		say "You hardly feel anything thanks to your rubbery genitals.";
	otherwise if the sex-length of M > 0:
		say "[line break][MasturbationFlav of M]";
		if the player is male and male orgasm chance <= 0 + the sex-length of M:
			now the sex-length of M is 0;
			say "[line break][MasturbationDeclarationFlav of M]";
			now player-fucking is 1;
			orgasm;
			now player-fucking is 0;
			now refactoryperiod is 3;
		otherwise if the player is female:
			ruin vagina;
		arouse (the difficulty of M + the size of penis) * 35;
		if there is worn vagina plugging clothing and the player is female:
			let K be a random worn vagina plugging clothing;
			say "The plug[if K is vagina plugging]s[end if] inside of you send pleasurable sensations deep into your [vagina].";
			ruin vagina;
		let D be a random worn messed diaper;
		if D is diaper:
			say "[one of]The gross squishiness of your messy diaper being spanked makes you cringe and shudder as it oozes around your loins.[or][or][cycling]";
			humiliate 150;
			DelicateUp 1;
		if refactoryperiod > 0, now the sex-length of M is 0;
	if the sex-length of M <= 0:
		if refactoryperiod > 0:
			say "[MasturbationAfterFlav of M]";
			if the player is male and the number of worn diapers is 0:[TODO: maybe she stores it for the vampiress to harvest or stores it for herself to use on you when your penis gets too tiny.]
				say "As your [ShortDesc of penis] softens, you realize it's far smaller than it was before! [BigNameDesc of M] must have converted a couple inches into an extra meal for [him of M]self! You feel drained!";
				decrease the blue-balls of M by 2;
				StrengthDown 2;
				FatigueUp 20;
				if the size of penis > 2, PenisDown 2;
				otherwise PenisDown 1;
			say "[MasturbationAftermath of M]";
		otherwise:
			say "[line break][BigNameDesc of M] slows down and peers at you silently for a moment before letting go and climbing back onto her pedestal.";
			DifficultyUp M by a random number between 2 and 3;
		now M is captive;
		now the sleep of M is 150;
		now M is not grabbing the player;
		now M is doing nothing special;
		bore M;
	decrease the sex-length of M by 1.

To say MasturbationStartFlav of (M - gargoyle):
	say "[BigNameDesc of M] [if mythical creature fetish is 1]wraps [his of M] tail around your waist, pinning your arms[otherwise]pins you down face up, holding your arms[end if] to your sides as [he of M] [if there is a worn diaper]places [his of M] hand over the crotch of your diaper[otherwise if the size of penis > 8]wraps [his of M] surprisingly soft breasts around your [ShortDesc of penis] and hungrily pulls the tip into [his of M] mouth[otherwise]wraps [his of M] surprisingly soft lips around your [ShortDesc of penis][end if].[line break]".

To say MasturbationFlav of (M - gargoyle):
	say "[if there is a worn diaper][DiaperMasturbationFlav of M][otherwise if the player is female][BigNameDesc of M] rubs your [vagina] fervently![otherwise if the size of penis > 8][OralSubmissionResponse of M][otherwise][OralResistingResponse of M][end if]".

To say OralSubmissionResponse of (M - gargoyle):[boobjob!]
	say "[one of][BigNameDesc of M] pumps your [ShortDesc of penis] with [his of M] breasts, grunting ravenously as [his of M] tongue strokes your throbbing length.[or][BigNameDesc of M] drools as [his of M] tongue swirls around your tip, mixing with a bit of your own 'drool' to lubricate the [ShortDesc of penis] sandwiched between [his of M] jiggling breasts.[or][BigNameDesc of M] makes noisy slurping noises as [he of M] works your [ShortDesc of penis], lubricating [his of M] breasts with tiny bits of drool as they skilfully massage your shaft.[or][BigNameDesc of M]'s breasts bump your sack as [he of M] works your [manly-penis], torturing the tip with practised movements of her tongue and lips.[at random]".

To say OralResistingResponse of (M - gargoyle):[not boobjob]
	if the size of penis > 2:
		say "[one of][BigNameDesc of M] slurps away at your [Shortdesc of penis], teasing your most sensitive parts with her tongue.[or][BigNameDesc of M] mercilessly pleasures you with [his of M] tongue, wings flapping excitedly as [his of M] lips fervently stroke the base of your [manly-penis].[or][BigNameDesc of M] sucks relentlessly, drool leaking out the side of [his of M] mouth as [he of M] lavishes you with expert stimulation from balls to tip.[or][BigNameDesc of M] hums as [he of M] suckles your [ShortDesc of penis], [if mythical creature fetish is 1]sounding very much like a starved animal in the middle of a meal[otherwise]as if your shaft were the most delicious thing in the entire world[end if].[or][BigNameDesc of M] swirls her tongue around your tip as she mercilessly pumps you with [his of M] lips.[at random]";
	otherwise:[doubt this will come up so it's mostly copypasta]
		say "[one of][BigNameDesc of M] relentlessly teases your [Shortdesc of penis] with her tongue.[or][BigNameDesc of M] teases your [Shortdesc of penis] with the very tip of her tongue, as if stimulating a clitoris[or][BigNameDesc of M] pleasures you mercilessly with her tongue.[in random order]".

To say MasturbationDeclarationFlav of (M - gargoyle):
	if there is a worn diaper, say "You can[']t take it anymore! Your back arches as [if the player is female]your [vagina] squirts into your diaper[otherwise]your [ShortDesc of penis] shoots several ropes of [semen] into your diaper[end if], which immediately absorbs your naughty pay-off.'";
	otherwise say "You can[']t take it anymore! Your back arches as your cock fires several thick ropes of [semen] directly into [NameDesc of M]'s mouth, and just as you think you're all tapped out, [one of]an incredibly pleasurable tingle passes through your balls and [his of M] eyes glow bright white[or]once again, you feel that terrible pleasurable feeling in your balls as [his of M] eyes glow bright white[stopping]. Your orgasm starts up again at three times the intensity, visibly ballooning [NameDesc of M]'s cheeks as [he of M] drains strength, energy, and every last drop of [semen] from your helpless body.".

To say MasturbationAfterFlav of (M - gargoyle):
	say "She seems satisfied, and [he of M] climbs off you and silently returns to [his of M] pedestal.";

To compute damage of (M - gargoyle):
	if the health of M > 0:
		if M is uninterested:
			say "[BigNameDesc of M] seems completely unperturbed.";
		otherwise if M is captive:
			say "[BigNameDesc of M] faces you and slowly steps down from her pedestal.";
			now M is released;
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
	say "[BigNameDesc of M] collapses into a pile of dust and rumble.";
	loot M;
	loot M;
	loot M;
	destroy M.

Definition: gargoyle (called M) is damageable:
	if the sleep of M > 0, decide no;
	if M is captive and M is uninterested, decide no.

To compute the default taunting of (M - gargoyle):
	say "[one of][BigNameDesc of M] watches in total silence.[or][BigNameDesc of M] simply watches, waiting. It's a little embarrassing, and you try to tell yourself that what you're doing is perfectly normal, really. Besides, it's not like [NameDesc of M] cares. Right?[cycling]". 

To compute (M - gargoyle) protecting against (X - a monster): [Default protection if not defined for the monster]
	if M is vigilant:[TODO: gargoyle protects player she recently "fed" from]
		say "[BigNameDesc of M]'s eyes flash bright red, and she steps down from her pedestal.";
		anger M;
	otherwise:
		compute the default taunting of M;


Gargoyle ends here.

