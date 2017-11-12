Demon Lord Xavier by Monster begins here.

A demon lord is a kind of monster.  A demon lord is usually intelligent.  A demon lord is usually male.  A demon lord is usually raunchy.  A demon lord is usually father material.  A demon lord is usually willing to do anal.  A demon lord is usually willing to do vaginal. A demon lord is poison immune.

The printed name of demon lord is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]Demon Lord Xavier[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".  
Understand "xavier" as demon lord.  There is 1 demon lord.

The description of demon lord is usually "[DemonDesc]".  The text-shortcut of demon lord is "xa".
Figure of demon lord is the file "xavier1.png".

To say DemonDesc:
	if images visible is 1 and diaper quest is 0, display the figure of demon lord;
	say "A giant red humanoid, with a monster's face and large red wings.  He must be literally twice as tall and wide as you.  [if diaper quest is 0]He is completely naked, and as you might expect, his red monster of a [manly-penis] is about twice as large and thick as the average well hung human male.  [end if]You can feel a raw aura of lust and evil emanating from him.".

To decide which number is the girth of (M - a demon lord):
	decide on 9.
	
Definition: a demon lord (called M) is concealment immune: [Can the monster ignore salves of concealment, butt slut, etc.]
	if there is a worn pentagram tattoo, decide yes;
	decide no.

Definition: A demon lord (called M) is willing to shag:
	if the sleep of M is 0 and the scared of M is 0 and the boredom of M < 120, decide yes;
	decide no.

To decide which number is the semen load of (M - a demon lord):
	decide on 15.

To set up (M - a demon lord):
	reset M;
	now the monstersetup of M is 1;
	let C be a random demon codpiece;
	if diaper focus is 1, now M is willing to do oral;
	now the difficulty of M is 12 + (the charge of C * 2);
	now the health of M is the maxhealth of M.

To unseal xavier from (M - a monster):
	if M is in the location of the player:
		say "Before your eyes, the figure of the [M] morphs and shifts, his clothes bursting at the seams and falling apart as he doubles in size.  His skin turns red, and he grows wings and horns.[line break][first custom style]'I AM DEMON LORD XAVIER!  MY POWERS ONCE SEALED AWAY BY THE PRINCESS, I AM WHOLE ONCE AGAIN, DESTINED TO RULE THESE LANDS!'[roman type][line break]";
		if image cutscenes is 1, display figure of xavier cutscene 1;
		say "He is looking upwards, and doesn't seem to be talking to anyone in particular.  You realise this might be a sensible moment to try and make a quick exit...";
	let N be a random demon lord;
	now N is in the location of M;
	set up N;
	finally destroy M.

To say PregGrowth of (M - a demon lord):
	say "Xavier's [child]".

To compute labour to (M - a demon lord):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player][father][otherwise][father] appears almost as if on cue!  He[end if] [if asshole is actually occupied or the player is ass protected]wraps his demonic tail around your neck and chokes you as you give birth to his heir, loosening his grip to let you get a gasp of air whenever you are about to faint[otherwise]thrusts his [manly-penis] violently into your [asshole] as his own spawn is slowly pushing its way out of your womb[end if].  [variable custom style]Holy... fucking... shit...[roman type][line break][the father] senses your anguish, and feeds from it.  [first custom style]'HAHAHA YES, YES, THE ULTIMATE SUBMISSION OF YOUR BODY, I CRAVE IT.  ";
		if watersports fetish is 1 or diaper lover >= 1:
			say "SOIL YOURSELF AS YOU GIVE BIRTH TO [one of]THE FUTURE RULER[or]A FUTURE PRINCE[stopping] OF THIS WORLD!'[roman type][line break]You realise he is completely right, you are wetting yourself.";
			now the bladder of the player is 0;
			UrinePuddleUp 9;
		otherwise:
			say "CUM FOR ME AS YOU GIVE BIRTH TO [one of]THE FUTURE RULER[or]A FUTURE PRINCE[stopping] OF THIS WORLD!'[roman type][line break]You realise he is completely right, you are split seconds away from orgasm.";
			orgasm;
		say "As soon as the red skinned, tailed devil baby has been fully delivered, [the father] takes it into his hands and embraces it.  A moment later, the baby disappears completely.  [one of][first custom style]'I HAVE SENT HIM BACK TO MY HOME REALM TO GROW AND LEARN THE WAYS OF THE DEMON KING[or][stopping][if the player-class is succubus and the father is mating] ONCE AGAIN YOU SERVE ME WELL, MY CONCUBINE[otherwise if the player-class is succubus] YOU HAVE SERVED AS AN ADEQUATE VESSEL FOR MY SEED. YOU WILL SERVE AS MY CONCUBINE, AND ONCE I HAVE RETURNED TO POWER YOU WILL HAVE AN IMPORTANT POSITION IN MY COURT. SQUEALING, ON THE END OF MY COCK! HAHAHA[end if].'[roman type][line break]Without giving you a chance to react, never mind reply, he leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep, unholy fulfilment.  You feel... powerful.";
			StrengthUp 4;
			if the player-class is succubus:
				say "You feel truly fulfilled by playing your part in your Master[']s plans for this world.";
				dignify 6000;
	otherwise if M is alive:
		Delay Labour.

Part 1 - Perception

To compute perception of (M - a demon lord):
	now M is interested;
	anger M;
	say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the pregnancy of the player > 0 and the father is M:
		say "[first custom style]'I WILL SUMMON YOU WHEN MY CHILD IS READY FOR BIRTHING.'[roman type][line break]He seems to lose interest.";
		bore M;
	otherwise if there is a worn messed knickers:
		say "[first custom style]'EVEN TWISTED DEMON LORDS LIKE ME FIND YOUR SOILED CLOTHING DISTURBING.  BEGONE FROM MY SIGHT.'[roman type][line break]He seems to lose interest.";
		bore M;
	otherwise if the player is soulless and the player-class is not succubus:
		say "[first custom style]'YOU WILL SERVE AS AN IDEAL VESSEL FOR ONE OF MY SERVANTS! KNEEL AND PREPARE YOURSELF!'[roman type]";
	otherwise if virgin of the player is 1 and the player is female:
		say "[first custom style]'[one of]YOU CANNOT RESIST ME, FOOLISH GIRL!'[or]I WILL BE THE FIRST TO IMPALE YOU ON MY MIGHTY COCK, VIRGIN!'[or]I LOVE CHERRIES!'[or]SUBMIT YOURSELF, GIRL! YOU CANNOT PROTECT YOUR VIRGINITY FROM ME!'[at random][roman type][line break]";
	otherwise if the class of the player is princess:
		say "[first custom style]'[one of]HAHAHA! FOOLISH PRINCESS! YOUR KINGDOM WILL BE MY COCKSLEEVE FOR ETERNITY AND SO WILL YOU!'[or][if pregnancy fetish is 1 and the player is female and the pregnancy of the player is 1]SUBMIT, PRINCESS! YOUR BLOODLINE WILL BE TAINTED WITH MY SEED!'[otherwise]YOU CAN RUN NO LONGER, PRINCESS! I WILL FILL YOU WITH MY TAINTED SEED!'[end if][at random][roman type]";
	otherwise if the player-class is succubus and M is mating and the number of worn pentagram tattoo is 0:
		say "[first custom style]'CONCUBINE! I HAVE PREPARED A GIFT FITTING YOUR STATUS!'[roman type]";
	otherwise:
		say "[first custom style]'YOU!  GET ON YOUR KNEES AND PRESENT [if pregnancy fetish is 1 and the player is female and the pregnancy of the player is 0]YOUR CUNT TO CONCEIVE AND CARRY MY HEIR[otherwise]YOURSELF BEFORE YOUR [one of]NEW [or][stopping]MASTER[end if].'[roman type][line break]";
		if the player-class is succubus and the player is upright:
			say "Your master's voice is too commanding for you to even consider resistance!";
			try kneeling.

To compute DQ perception of (M - a demon lord):
	now M is interested;
	anger M;
	say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the class of the player is princess:
		say "[first custom style]'PRINCESS!  YOU DARE SHOW YOUR FACE HERE?  YOU WILL SUBMIT TO ME!'[roman type]";
	otherwise:
		say "[first custom style]'YOU!  GET ON YOUR KNEES AND PRESENT YOURSELF BEFORE YOUR [one of]NEW [or][stopping]MASTER.'[roman type][line break]".


Part 2 - Stomp

[To XavierStomp (M - a monster):
	say "Xavier is glitching, he doesn't know how to deal with the [M].  Report the bug please!";]

To compute (M - a demon lord) stomping (N - a monster):
	if N is female:
		if M is in the location of the player, say "With a flick of his tail, [M] grabs the [N] and pulls her towards him.  Remaining fully standing, he lowers her onto his giant erect red [manly-penis] and starts fucking her cunt furiously.  She screams in both pleasure and terror as his member almost splits her in two, and very soon he is coming inside her.  Her belly visibly bulges before pints of [semen] begin to explode from around the sides of his [manly-penis].  After he has finished, his tail lets go of her waist and she falls to the ground, where she promptly faints.";
		otherwise say "You hear a woman shout out in a mixture of ecstasy and terror from [if N is nearby]nearby![otherwise]somewhere in the hotel![end if]";
		destroy N;
		let L be a random off-stage leftover;
		now L is in the location of M;
		now the leftover-type of L is the leftover-type of N;
	otherwise:
		say "The [M] is glitching, it doesn't know how to deal with the [N]! Report this bug!".


Part 3 - Combat

Section 1 - Attack

The latex punishment rule of a demon lord is usually the no latex punishment rule.

To compute (M - a demon lord) receiving (N - a number) damage from (X - a monster):
	say "[AllyDamageFlav of X on M]";
	say "[one of]The [M] seems immune to the attack!  [first custom style]'You fool, your allies cannot harm me!'[roman type][line break][roman type][or]The [M] still seems to be immune to the [X]![stopping]".

To decide which number is the condom resistance of (M - a demon lord):
	if pregnancy fetish is 1, decide on 99;
	decide on 2. [He has a latex allergy]

The xavier priority attack rules is a rulebook.  The priority attack rules of a demon lord is usually the xavier priority attack rules.

[Demon Transformation]
The unique punishment rule of a demon lord is usually the demon transformation rule.
This is the demon transformation rule:
	let M be current-monster;
	if the player is soulless and the player-class is not the succubus:
		let L be a random off-stage demon horns;
		let K be a random off-stage soulstone;
		say "The demon lord pulls out a strange swirling gem and roughly grabs you, holding you in place. He then suddenly plunges the stone between your breasts, and you are overcome with a mixture of agony and ecstasy as a pair of horns pushes out of your head![line break][first custom style]'NOW YOU SERVE ME, SLAVE! BLOAT YOURSELF WITH THE SOULS OF THESE FOOLS AND PREPARE TO RENDER YOURSELF UNTO ME AT MY WHIM!'";
		repeat with B running through worn headgear:
			say " Your new horns tear off your [printed name of B]!";
			destroy B;
		repeat with C running through worn neck covering clothing:
			say " The [printed name of K] shatters your [printed name of C]!";
			destroy C;
		summon L;
		summon K;
		now the souled-humiliation of the player is the humiliation of the player;
		now the humiliation of the player is 0;
		bore M;
		rule succeeds;
	otherwise if the player-class is the succubus and M is mating and the number of worn pentagram tattoos is 0:
		let T be a random off-stage pentagram tattoo;
		if T is tattoo:[TODO: think of tattoo alternative here]
			say "The demon lord traces his finger around your vagina, burning the shape of a pentagram around it! [first custom style]'THIS HOLE IS FOR MY PERSONAL USE ONLY, CONCUBINE! MY WARD WILL SEE THIS IS SO!'[roman type] Xavier considers the situation for a moment, then seems to decide he'll hammer the point home, as it were!";
			summon T;
			now T is covering vagina.

This is the xavier prioritises defeating others rule:
	if the number of monsters in the location of current-monster > 1: [1 is going to be xavier himself]
		MonsterStomp current-monster;
		rule succeeds.
The xavier prioritises defeating others rule is listed last in the xavier priority attack rules.

The monster fucked taunting rule of a demon lord is usually the xavier replaces the monster rule.
This is the xavier replaces the monster rule:
	if diaper quest is 0:
		let M be current-monster;
		let N be a random monster penetrating a fuckhole;
		if there is a monster penetrating asshole, now N is a random monster penetrating asshole; [This is the one who's important to get rid of since this is where we're going.]
		say "The [M] kicks the [N] out of the way, and takes over!  He sticks his giant [manly-penis] in your [asshole], and starts pounding you mercilessly! Fuck!";
		now the sex-length of M is 2;
		now the chosen-orifice of M is asshole;
		destroy N;
		now M is penetrating asshole;
		AssRuin 1.

To compute the orifice choosing of (M - a demon lord):
	if pregnancy fetish is 1 and the pregnancy of the player is 0 and vagina is an actual target:
		now the chosen-orifice of M is vagina;
	otherwise:
		if the chosen-orifice of M is nothing or the chosen-orifice of M is not an actual target or a random number between 1 and 3 is 1, now the chosen-orifice of M is a random actual target body part. [If they have already chosen a certain orifice, we only change this 1 in 3 times.  This usually give the monster a few attempts to remove underwear, for example.  This can be kept the same for any monster that just likes normal sex.]

To compute (M - a demon lord) removing (P - an anal beads):
	say "The [M] glances at your [printed name of P], which disintegrates instantly, leaving your asshole [if the grip of P > 5]to make a lewd 'PLOP' sound as your [asshole]'s sphincter collapses in on the newly emptied space[otherwise]'briefly' empty[end if].";
	now the notch-taken of P is 0;
	now P is not penetrating asshole;
	now P is in the holding pen;
	destroy P.

To say CondomRejectFlav of (M - a demon lord):
	say "[speech style of M]'[one of]YOUR PUNY MORTAL CONDOMS WILL NEVER FIT ON ME[or]NOT EVEN A CONDOM CAN PROTECT YOU FROM MY SEED, WENCH[or]I GO BAREBACK IN EVERY HOLE, SLAVE[or]FOOL! I HAVE A LATEX ALLERGY[or][if the class of the player is princess]YOUR PUNY LATEX CANNOT TRICK ME THIS TIME, MORTAL[otherwise]HAHAHAHA! AS IF LATEX COULD CONTAIN MY SEED[end if][at random]!'[roman type] Looks like [he of M][']s going in bare...".
[Selkie: changed WILL TRICK ME to CANNOT TRICK ME since the text says he’s going in bare back.]

To say CondomAcceptFlav of (M - a demon lord):
	if the condom resistance of M > 0, say "The [M] frowns, but then takes the condom and sheathes [his of M] [manly-penis]. [speech style of M][one of]I GUESS I SHOULD USE PROTECTION[or]YOUR PUNY LATEX WILL NOT SCARE ME THIS TIME, MORTAL[at random]![roman type][line break]".

To compute (M - a demon lord) entering asshole:
	say "[AssholePenetrationFlav of M]";
	now the sex-length of M is a random number between 2 and 3;
	now M is penetrating asshole;
	if the player-class is succubus:
		dignify 1200;
	AssRuin 1.

To compute (M - a demon lord) entering vagina:
	say "[VaginaPenetrationFlav of M]";
	now the sex-length of M is a random number between 2 and 3;
	now M is penetrating vagina;
	if the player-class is succubus:
		dignify 800;
	PussyRuin 1.

To compute (M - a demon lord) entering mouth:
	say "[MouthPenetrationFlav of M]";
	now the sex-length of M is a random number between 2 and 3;
	if the player-class is succubus:
		dignify 800;
	now M is penetrating face.

To compute vaginal sex of (M - a demon lord):
	compute fuckhole sex of M.
	
To compute anal sex of (M - a demon lord):
	compute fuckhole sex of M.

To compute fuckhole sex of (M - a demon lord):
	let F be a random fuckhole penetrated by M;
	if the class of the player is succubus:
		say "You feel fulfilled in serving your true Master!";
		dignify 800;
	otherwise if the reaction of the player is 2:
		say "[speech style of M][one of]HAHAHA! I WILL HURT YOU ANYWAY![or]HAHAHA! SCREAM FOR ME![or]In that case...I WILL FUCK YOU HARDER![or]NO! HAHAHA![or]YES! BEG FOR MERCY![or]YOU SCREAM LIKE MY FIRST WIFE! HAHAHA![at random][roman type]";
	otherwise:
		say "[speech style of M]'[one of]YES! YES!'[or][if the player is male]HAHAHA! SAY YOU LIKE IT, BOY!'[otherwise]HAHAHA! DO YOU LIKE IT, GIRL?'[end if][or][if pregnancy fetish is 1 and F is asshole]ANY HOLE CAN BE BRED MY ME!'[otherwise if pregnancy fetish is 1]HOW DOES IT FEEL TO BE BRED IN MY FAVOURITE HOLE?'[otherwise]HOW DOES IT FEEL TO FUCK A KING, MORTAL!'[end if][or]HAHAHA!'[or]EXPERIENCE FIRE, COCKSLEEVE!'[or]EVEN THE TIGHTEST HOLES WILL SUBMIT TO ME!'[or]POWER! POOWEEER!'[or][if the reaction of the player is 0]SQUIRMING MAKES YOU TIGHTER!'[otherwise]YES! SUBMIT TO ME!'[end if][or]HAHAHA! I SHOULD MAKE YOU A [if the player is male]DUKE[otherwise]DUCHESS[end if]!'[or]FEEL MY POWER!'[or]EXPERIENCE MY POWER!'[or]HAHAHA! POWEEEERRRR!'[or]MY COCK HAS LEVELED MOUNTAINS!'[or]YES, COCKSLEEVE! [if the reaction of the player is 0]SQUIRM!'[otherwise]SUBMIT TO ME!'[end if][at random][roman type][line break]";
	if the reaction of the player is 1:
		say "[one of][M submission sex 1][or][M submission sex 2][or][M submission sex 3][or][M submission sex 4][or][M submission sex 5][or][M submission sex 6][at random]";
	otherwise:
		say "[one of][M rough sex 1][or][M rough sex 2][or][M rough sex 3][or][M rough sex 4][or][M rough sex 5][at random]";
	if F is asshole, AssRuin 1;
	otherwise PussyRuin 1;
	decrease the sex-length of M by 1;
	say "[one of][M sex reaction][or][cycling]".

To compute facial sex of (M - a demon lord):
	if the player-class is succubus:
		say "You feel fulfilled in serving your true Master!";
		dignify 800;
	if the oral sex addiction of the player > 6, arouse 200;
	if the sex-length of M is 1:
		say NearingClimaxOral of M;
		decrease the sex-length of M by 1;
	otherwise:
		if the reaction of the player is 0:
			say OralResisting of M;
			say OralResistingResponse of M;
			if a random number between 1 and 2 is 1 or the lips of face > 2, decrease the sex-length of M by 1;
		otherwise:
			say OralSubmissionResponse of M;
			decrease the sex-length of M by 1.

To compute vaginal climax of (M - a demon lord):
	TimesFuckedUp M by 1;
	if M is wrapped and a random number between 11 and the openness of vagina > 10:
		say PullOutFlav of M;
		now M is unwrapped;
		WombFill the semen load of M / 2;
	otherwise if M is wrapped:[The demon lord's loads are huge, so he tends to break condoms, but if your tight you can help hold it together.]
		say CondomPieFlav of M;
		WombFill the semen load of M;
		Bore M;
	otherwise:
		say CreampieFlav of M;
		WombFill the semen load of M;
	if image cutscenes is 1, display figure of xavier cutscene 2;
	if M is unwrapped:
		WombFill the semen load of M;
		if the class of the player is succubus:
			say "You feel fulfilled as [M][']s mighty seed flows into your [vagina]!";
			dignify 800;
		let T be a random xavier's cunt tattoo;
		if there is a worn tattoo and the number of worn crotch tattoos is 0:
			say "With a single finger, [M] burns two words onto your skin, just above your [vagina].  It is now permanently branded as 'Xavier's Cunt'.";
			summon T;
			say "[speech style of M]'THE ETERNAL BOND IS COMPLETE.  YOU'RE MINE NOW.'[roman type][line break]";
	now M is not penetrating vagina;
	if M is interested, satisfy M.

To say CondomPieFlav of (M - a demon lord):
	say "The [M] [one of]roars with pleasure, stretching the condom like a water balloon with the sheer force of his ejaculation[or]groans in pleasure, ejaculating with such force that the condom immediately begins stretching like a water balloon[or]balloons the condom with his load, roaring with pleasure as the insane force of his ejaculation causes it to stretch[at random]. The latex inches up his length as it struggles to contain his huge load, allowing you to feel every throb of his [manly-penis] that much more intimately than the last as the condom comes closer and closer to coming off completely. By some stroke of [if the semen addiction of the player > 6]bad [end if]luck, [one of]his orgasm dies down just as the condom is about to overflow, and he begins to pull out[or]he starts to pull out just as it's about to overflow[or]it doesn't overflow, and his [semen] stays safely behind a layer of latex as he pulls out[at random]. He seems to lose interest.".

To say PullOutFlav of (M - a demon lord):
	let O be a random orifice penetrated by M;
	say "The [M] [one of]roars with pleasure, pushing the condom further and further off his [manly-penis] with the sheer force of his ejaculation[or]groans in pleasure, ejaculating with such force that condom is slowly dragged further and further off his [manly-penis][or]balloons the condom with his load, roaring with pleasure as the insane force of his ejaculation pushes it further and further off his [manly-penis][at random]. You feel every throb that much more intimately than the last, [one of]knowing its far too late to escape[or]held too tightly to escape[or]completely pinned under his weight[at random] as a final, powerful spurt forces the condom off completely! He laughs powerfully as [one of]your unprotected [variable O] floods with his [semen], which leaks[or]his load explodes into your [variable O], flooding it with fresh [semen], which leaks[or]his [semen] coats the inside of your [variable O], leaking[at random] out slowly as he pulls out.".

To say CreampieFlav of (M - a demon lord):[TODO]
	let O be a random orifice penetrated by M;
	say "The [M] ejaculates deep inside your [variable O]!";

To compute anal climax of (M - a demon lord):
	TimesFuckedUp M by 1;
	if M is male:
		if M is wrapped, say CondomPieFlav of M;
		otherwise say CreampieFlav of M;
		AssFill the semen load of M;
	if M is interested:
		satisfy M;
	if the player-class is succubus:
		say "You feel fulfilled at satisfying the urges of your Master!";
		dignify 800;
	if image cutscenes is 1, display figure of xavier cutscene 2;
	now M is not penetrating asshole.

To orgasm (M - a demon lord):
	if the class of the player is priestess and (the virgin of the player is 0 or the player is male):
		say "Your stomach flips over and a voice appears in your head: 'You have shamed yourself laying with him, Sister! Do not insult your goddess!'";
		increase the charge of the dungeon altar by 30;
	if the class of the player is princess, follow the betrothal rule.

To say StrikingSuccessFlav of (M - a demon lord) on (B - a body part):
	say "The [M] strikes you [TargetName of B] with a large claw!  Ouch!!";

To say StrikingFailureFlav of (M - a demon lord) on (B - a body part):
	say "The [M] tries to scratch you [TargetName of B] with a claw but you dodge quickly.  He still manages to land a glancing blow!  Ouch!";
	BodyRuin 1.

To say MouthPenetrationFlav of (M - a demon lord):
	say "[M] grabs you by your neck and calmly forces your mouth onto his [manly-penis].  Your mouth is forced to stretch almost impossibly wide as he forces his massive demon tool down into your throat.  [speech style of M]'[if the player is diaper focused][one of]I HAVE DECIDED TO ALLOW YOU TO REMAIN IN YOUR PADDING, INSTEAD YOUR FACE WILL BE USED AS MY FUCKHOLE.'[or]THAT'S IT, TAKE IT ALL, YOU DIAPERED WEAKLING!'[stopping][otherwise]Yes, that's it, take it all, you whore!'[end if][roman type][line break]".

To say NearingClimaxOral of (M - a demon lord):
	say "[speech style of M]'GRAAAAAH!'[roman type][line break]  The [M] is about to blow!".

To say SwallowDemand of (M - a demon lord):
	say "[speech style of M]'[one of]YOU WILL USE YOUR STOMACH AS MY CUM DUMP[or]YOUR BODY MUST BE USED TO STORE MY SEED[or]MY ROYAL SPERM MUST NOT BE SPILLED[in random order].  SWALLOW, NOW.'[roman type][line break]".

To compute angry punishment of (M - a demon lord):
	if the player is diapered:
		say "[speech style of M]'INSOLENT MORTAL!  YOU WOULD DARE DEFY AN ORDER FROM ME?!  YOU WILL REGRET THIS DECISION, I ASSURE YOU.'[roman type][line break]The [M] begins manifesting some kind of energy ball between his hands, which he promptly shoots towards your gut.  You bend over in extreme pain!";
		delicateup 2;
		say "It seems like the effect of his magic has not finished, as you feel your ";
		if (diaper lover >= 3 and rectum > 0) or diaper lover >= 4:
			say "large intestine swelling rapidly, as it is filled by something!  You have a pretty good idea what...";
			increase rectum by 20;
			bore M;
			if the incontinence of the player > 5:
				say "A moment later, your sphincter loosens and it begins.  ";
				compute messing;
		otherwise:
			say "bladder swelling rapidly, quickly to breaking point, and then past it, as you begin [one of]to wet yourself more than you ever have before, and ever thought possible[or]another impossibly long urination[stopping]!  ";
			increase the bladder of the player by 28;
			now delayed urination is 1;
			bore M;
			try urinating;
	otherwise:
		say "[speech style of M]'INSOLENT MORTAL!  YOU WOULD DARE DEFY AN ORDER FROM ME?!  YOU WILL REGRET THIS DECISION, I ASSURE YOU.'[roman type][line break]The [M] smacks you with his tail, sending you flying into the nearby wall with a sickening crunch!  The pain is worse than anything you've ever felt before.";
		DelicateUp 4.

Section 2 - DQ

To compute diaper mess reaction of (M - a demon lord):
	say "The [M] watches you with glee.  [speech style of M]'BWAHAHAHAHA!  I HAVE SEEN WEAK MORTALS IN MY TIME, BUT YOU ARE TRULY THE MOST PATHETIC LIVING CREATURE TO EVER ENTER THESE WALLS[one of]!  TO NOT BE ABLE TO CONTROL SOMETHING SO BASIC... THIS IS A FATE WORSE THAN DEATH[or][stopping].'[roman type][line break]";
	humiliate 400.

Definition: a demon lord (called M) is willing to spank:
	decide yes.

Definition: a demon lord (called M) is willing to spank gently:
	decide no.

To decide which number is the spank strength of (M - a demon lord):
	decide on 4.

To say SpankingMercyRejectionFlav of (M - a demon lord):
	say "[speech style of M]'I DO NOT DO MERCY.'[roman type]  The [M] ignores your pleas.".

To say SpankingStartFlav of (M - a demon lord):
	say "The [M] picks you up off of the ground with his tail!  You're suspended in mid-air, there's no way you can get away now!".

To say SpankingDeclarationFlav of (M - a demon lord):
	say "[speech style of M]'HOW SHALL I TORTURE YOU...'[roman type]  ".

To say SpankingAfterFlav of (M - a demon lord):
	say "After this [he of M] seems satisfied, and mercilessly drops you to the ground.".


Section 3 - Damage

Definition: a demon lord (called M) is damageable:
	if attack-type is 1 and there is a worn sword of purity or there is a worn magic wand or there is a worn whip of domination, decide yes;
	if attack-type is 3 and there is a worn dildo heels, decide yes;
	if the class of the player is princess or the class of the player is priestess or the class of the player is virgin warrior or the class of the player is fertility goddess or there is a worn demon tattoo, decide yes;
	decide no.

To decide which number is the damage modifier of (M - a demon lord):
	[Xavier can only be harmed by the above means.]
	if M is not damageable, decide on (attack-damage * -1).

To say damage-flavour of (N - a number) on (M - a demon lord):
	if N is 0 and M is not damageable:
		say "[M] appears to be completely immune to your attack!  [one of]Maybe only certain items can hurt him?[or][or]It looks like it's impossible for you to win this fight right now.[or][cycling]";
	otherwise if N is 0:
		say "That didn't feel like it did anything at all.";
	otherwise if N is 1:
		say "That felt extremely weak, you doubt it hurt much at all.";
	otherwise if N is 2:
		say "That felt quite weak, but hopefully it hurt a bit.";
	otherwise if N < 5:
		say "The [M] definitely felt that.  A respectable hit!";
	otherwise if N < 7:
		say "The [M] visibly recoils from the hit.  A [if critical is 1][bold type]critical hit[roman type][otherwise]strong hit[end if]!";
	otherwise if N < 9:
		say "Wow, you felt that connect with incredible force.  A super strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";
	otherwise:
		say "POW!  Your attack is accompanied by a loud sound.  An almost impossibly strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!".

To compute damage of (M - a demon lord):
	if the health of M > 0:
		if M is uninterested:
			say "[M] turns to face you with a terrifying roar!";
			now M is interested;
			anger M;
		otherwise:
			if the health of M >= the maxhealth of M:
				say "[M] laughs at you mockingly!";
			otherwise if the health of M > the maxhealth of M / 2:
				say "[M] growls angrily[one of]!  [first custom style]'ARGH!  HOW CAN YOU HARM ME?!'[roman type][line break][or]![stopping]";
			otherwise:
				say "[M] recoils in pain[one of]!  [first custom style]'I WILL NOT BE DEFEATED!'[roman type][line break][or]![stopping]";
	otherwise:
		compute death of M.

To compute unique death of (M - a demon lord):
	say "[first custom style]'NOOOO!  HOW CAN THIS BE?'[roman type][line break]A tiny red gem appears below [M]'s feet, and his body is slowly but surely sucked into the stone, until nothing remains.  You have won!";
	loot M;
	if gladiatorcurse is 1, uncurse gladiators;
	let X be a random off-stage plentiful bracelet;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X;
	let G be a random off-stage infernal gem;
	if G is infernal gem, now G is in the location of the player;
	compute autotaking G.


Part 4 - Conversation

To IdentifiablePosterReaction of (M - a demon lord):
	say "The [M] looks at you, then at the banner, then back to you.  Upon realising that it is you, he puts his hands on his hips and laughs loudly.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a demon lord):
	say "The [M] looks at the banner with a big grin on his face.  He doesn't seem to realise it is you, but is clearly enjoying looking at it.";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Section 1 - Greeting

To say FirstResponse of (M - a demon lord):
	say "[first custom style]'SILENCE, MORTAL!'[roman type][line break]".

To say RepeatResponse of (M - a demon lord):
	say FirstResponse of M.

To say UnfriendlyResponse of (M - a demon lord):
	say FirstResponse of M.

To say DominantResponse of (M - a demon lord):
	say FirstResponse of M.

To say midDominanceResponse of (M - a demon lord):
	say FirstResponse of M.
		
To say AsDominantResponse of (M - a demon lord):
	say "[first custom style]'HAHAHA! TAKE IT!'[roman type][line break]".

Section 2 - Questioning

To say WhereAnswer of (M - a demon lord):
	say "[first custom style]'MY NEW DOMAIN! HAHAHA!'[roman type][line break]".

To say WhoAnswer of (M - a demon lord):
	say "[first custom style]'I AM DEMON LORD XAVIER, ONE OF THE FOUR ELITE DARK LORDS! BWAHAHA!'[roman type][line break]".
		
To say StoryAnswer of (M - a demon lord):
	say "[first custom style]'THAT'S COPYRIGHTED - I MEAN NONE OF YOUR BUSINESS!'[roman type][line break]".

To say EscapeAnswer of (M - a demon lord):
	say "[first custom style]'THERE IS NO ESCAPE FOR YOU NOW, LITTLE ONE!  YOU WILL SERVE AS MY SLAVE[if the class of the player is not succubus] OR DIE TRYING TO ESCAPE!'[otherwise]!'[end if][roman type][line break]".

To say AdviceAnswer of (M - a demon lord):
	say "[first custom style]'STAY LOOSE AND LET IT HAPPEN!'[roman type][line break]".

To compute teaching of (M - a demon lord):
	say "[first custom style]'I CAN TEACH YOU HOW TO TAKE DEMON COCK.'[roman type][line break]".

Section 3 - Drink Requesting

To compute unfriendly drink of (M - a demon lord):
	say "[first custom style]'YOUR MORTAL REQUIREMENTS ARE NO CONCERN OF MINE!'[roman type][line break]".

Part 5 - Trading

To decide which number is the bartering value of (T - a thing) for (M - a demon lord):
	decide on 0.

To say MonsterOfferRejectFlav of (M - a demon lord) to (T - a thing):
	say "[first custom style]'I CARE NOT FOR YOUR MORTAL TRINKETS!'[roman type][line break]".



Demon Lord Xavier ends here.
