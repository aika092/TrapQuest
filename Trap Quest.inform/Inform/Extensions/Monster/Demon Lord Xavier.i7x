Demon Lord Xavier by Monster begins here.

demon lord is a monster. demon lord is intelligent. demon lord is male. The poison-status of demon lord is -1.

Definition: demon lord (called M) is father material:
	decide yes.

Definition: demon lord (called M) is raunchy:
	decide yes.

Understand "xavier" as demon lord.

The text-shortcut of demon lord is "xa".
Figure of demon lord is the file "NPCs/Bosses/xavier1.png".

To decide which figure-name is the monster-image of (M - demon lord):
	if diaper quest is 1, decide on figure of no-image-yet;
	otherwise decide on figure of demon lord.

To say ShortDesc of (M - demon lord):
	say "demon lord".

To say MediumDesc of (M - demon lord):
	say "Demon Lord Xavier".

To say NameDesc of (M - demon lord):
	say "[input-style]Xavier[roman type]".
	
To say BigNameDesc of (M - demon lord):
	say "[input-style]Xavier[roman type]".

To say MonsterDesc of (M - demon lord):
	say "A giant red humanoid, with a monster's face and large red wings. He must be literally twice as tall and wide as you. [if diaper quest is 0]He is completely naked, and as you might expect, his red monster of a [manly-penis] is about twice as large and thick as the average well hung human male. [end if]You can feel a raw aura of lust and evil emanating from him.".

To decide which number is the girth of (M - demon lord):
	decide on 9.
	
Definition: demon lord (called M) is concealment immune: [Can the monster ignore salves of concealment, butt slut, etc.]
	if there is a worn pentagram tattoo, decide yes;
	decide no.

Definition: demon lord (called M) is willing to shag:
	if the sleep of M is 0 and the scared of M is 0 and the boredom of M < 120, decide yes;
	decide no.

Definition: demon lord (called M) is willing to do oral:
	if diaper focus is 1, decide yes;
	decide no.

Definition: demon lord (called M) is willing to do titfucks:
	decide no.

To decide which number is the semen load of (M - demon lord):
	decide on 15.

To set up (M - demon lord):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 12 + (the charge of demon codpiece * 2);
	now the health of M is the maxhealth of M.

To unseal xavier from (M - a monster):
	if M is in the location of the player:
		say "Before your eyes, the figure of [NameDesc of M] morphs and shifts, his clothes bursting at the seams and falling apart as he doubles in size. His skin turns red, and he grows wings and horns.[line break][first custom style]'I AM DEMON LORD XAVIER!  MY POWERS ONCE SEALED AWAY BY THE PRINCESS, I AM WHOLE ONCE AGAIN, DESTINED TO RULE THESE LANDS!'[roman type][line break]";
		if image cutscenes is 1, display figure of xavier cutscene 1;
		say "He is looking upwards, and doesn't seem to be talking to anyone in particular. You realise this might be a sensible moment to try and make a quick exit...";
	now demon lord is in the location of M;
	set up demon lord;
	finally destroy M.

To say PregGrowth of (M - demon lord):
	say "Xavier's [child]".

To compute labour to (M - demon lord):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player][father][otherwise][father] appears almost as if on cue!  He[end if] [if asshole is actually occupied or the player is ass protected]wraps his demonic tail around your neck and chokes you as you give birth to his heir, loosening his grip to let you get a gasp of air whenever you are about to faint[otherwise]thrusts his [manly-penis] violently into your [asshole] as his own spawn is slowly pushing its way out of your womb[end if]. [line break][variable custom style]Holy... fucking... shit...[roman type][line break][the father] senses your anguish, and feeds from it. [first custom style]'HAHAHA YES, YES, THE ULTIMATE SUBMISSION OF YOUR BODY, I CRAVE IT. ";
		if watersports fetish is 1 or diaper lover >= 1:
			say "SOIL YOURSELF AS YOU GIVE BIRTH TO [one of]THE FUTURE RULER[or]A FUTURE PRINCE[stopping] OF THIS WORLD!'[roman type][line break]You realise he is completely right, you are wetting yourself.";
			now the bladder of the player is 0;
			UrinePuddleUp 9;
		otherwise:
			say "CUM FOR ME AS YOU GIVE BIRTH TO [one of]THE FUTURE RULER[or]A FUTURE PRINCE[stopping] OF THIS WORLD!'[roman type][line break]You realise he is completely right, you are split seconds away from orgasm.";
			orgasm;
		say "As soon as the red skinned, tailed devil baby has been fully delivered, [the father] takes it into his hands and embraces it. A moment later, the baby disappears completely. [one of][line break][first custom style]'I HAVE SENT HIM BACK TO MY HOME REALM TO GROW AND LEARN THE WAYS OF THE DEMON KING[or][stopping][if the player-class is succubus and the father is mating] ONCE AGAIN YOU SERVE ME WELL, MY CONCUBINE[otherwise if the player-class is succubus] YOU HAVE SERVED AS AN ADEQUATE VESSEL FOR MY SEED. YOU WILL SERVE AS MY CONCUBINE, AND ONCE I HAVE RETURNED TO POWER YOU WILL HAVE AN IMPORTANT POSITION IN MY COURT. SQUEALING, ON THE END OF MY COCK! HAHAHA[end if].'[roman type][line break]Without giving you a chance to react, never mind reply, he leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep, unholy fulfilment. You feel... powerful.";
			StrengthUp 4;
			if the player-class is succubus:
				say "You feel truly fulfilled by playing your part in your Master[']s plans for this world.";
				dignify 6000;
	otherwise if M is alive:
		Delay Labour.

Part 1 - Perception

To compute perception of (M - demon lord):
	now M is interested;
	anger M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the pregnancy of the player > 0 and the father is M:
		say "[first custom style]'I WILL SUMMON YOU WHEN MY CHILD IS READY FOR BIRTHING.'[roman type][line break]He seems to lose interest.";
		bore M;
	otherwise if there is a worn messed knickers:
		say "[first custom style]'EVEN TWISTED DEMON LORDS LIKE ME FIND YOUR SOILED CLOTHING DISTURBING. BEGONE FROM MY SIGHT.'[roman type][line break]He seems to lose interest.";
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

To compute DQ perception of (M - demon lord):
	now M is interested;
	anger M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the class of the player is princess:
		say "[first custom style]'PRINCESS!  YOU DARE SHOW YOUR FACE HERE?  YOU WILL SUBMIT TO ME!'[roman type]";
	otherwise:
		say "[first custom style]'YOU!  GET ON YOUR KNEES AND PRESENT YOURSELF BEFORE YOUR [one of]NEW [or][stopping]MASTER.'[roman type][line break]".


Part 2 - Stomp

To compute (M - demon lord) stomping (N - a monster):
	if N is female:
		if M is in the location of the player, say "With a flick of his tail, [NameDesc of M] grabs [NameDesc of N] and pulls her towards him. Remaining fully standing, he lowers her onto his giant erect red [manly-penis] and starts fucking her cunt furiously. She screams in both pleasure and terror as his member almost splits her in two, and very soon he is coming inside her. Her belly visibly bulges before pints of [semen] begin to explode from around the sides of his [manly-penis]. After he has finished, his tail lets go of her waist and she falls to the ground, where she promptly faints.";
		otherwise say "You hear a woman shout out in a mixture of ecstasy and terror from [if N is nearby]nearby![otherwise]somewhere in the hotel![end if]";
		destroy N;
		let L be a random off-stage leftover;
		now L is in the location of M;
		now the leftover-type of L is the leftover-type of N;
	otherwise:
		say "[BigNameDesc of M] is glitching, it doesn't know how to deal with the [N]! Report this bug!".


Part 3 - Combat

Section 1 - Attack

The latex punishment rule of demon lord is usually the no latex punishment rule.

To compute (M - demon lord) receiving (N - a number) damage from (X - a monster):
	say "[AllyDamageFlav of X on M]";
	say "[one of][BigNameDesc of M] seems immune to the attack!  [line break][first custom style]'You fool, your allies cannot harm me!'[roman type][line break][roman type][or][BigNameDesc of M] still seems to be immune to the [X]![stopping]".

To decide which number is the condom resistance of (M - demon lord):
	if pregnancy fetish is 1, decide on 99;
	decide on 2. [He has a latex allergy]

The xavier priority attack rules is a rulebook. The priority attack rules of demon lord is usually the xavier priority attack rules.

[Demon Transformation]
The unique punishment rule of demon lord is usually the demon transformation rule.
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
			say "The demon lord traces his finger around your vagina, burning the shape of a pentagram around it! [line break][first custom style]'THIS HOLE IS FOR MY PERSONAL USE ONLY, CONCUBINE! MY WARD WILL SEE THIS IS SO!'[roman type][line break]Xavier considers the situation for a moment, then seems to decide he'll hammer the point home, as it were!";
			summon T;
			now T is covering vagina.

This is the xavier prioritises defeating others rule:
	if the number of monsters in the location of current-monster > 1: [1 is going to be xavier himself]
		MonsterStomp current-monster;
		rule succeeds.
The xavier prioritises defeating others rule is listed last in the xavier priority attack rules.

The monster fucked taunting rule of demon lord is usually the xavier replaces the monster rule.
This is the xavier replaces the monster rule:
	if diaper quest is 0:
		let M be current-monster;
		let N be a random monster penetrating a fuckhole;
		if there is a monster penetrating asshole, now N is a random monster penetrating asshole; [This is the one who's important to get rid of since this is where we're going.]
		say "[BigNameDesc of M] kicks the [N] out of the way, and takes over!  He sticks his giant [manly-penis] in your [asshole], and starts pounding you mercilessly! Fuck!";
		now the sex-length of M is 2;
		now the chosen-orifice of M is asshole;
		destroy N;
		now M is penetrating asshole;
		ruin asshole.

To compute the orifice choosing of (M - demon lord):
	if pregnancy fetish is 1 and the pregnancy of the player is 0 and vagina is an actual target:
		now the chosen-orifice of M is vagina;
	otherwise:
		if the chosen-orifice of M is nothing or the chosen-orifice of M is not an actual target or a random number between 1 and 3 is 1, now the chosen-orifice of M is a random actual target body part. [If they have already chosen a certain orifice, we only change this 1 in 3 times. This usually give the monster a few attempts to remove underwear, for example. This can be kept the same for any monster that just likes normal sex.]

To compute (M - demon lord) removing (P - an anal beads):
	say "[BigNameDesc of M] glances at your [ShortDesc of P], which disintegrates instantly, leaving your asshole [if the grip of P > 5]to make a lewd 'PLOP' sound as your [asshole]'s sphincter collapses in on the newly emptied space[otherwise]'briefly' empty[end if].";
	now the notch-taken of P is 0;
	now P is not penetrating asshole;
	now P is in the holding pen;
	destroy P.

To say CondomRejectFlav of (M - demon lord):
	say "[speech style of M]'[one of]YOUR PUNY MORTAL CONDOMS WILL NEVER FIT ON ME[or]NOT EVEN A CONDOM CAN PROTECT YOU FROM MY SEED, WENCH[or]I GO BAREBACK IN EVERY HOLE, SLAVE[or]FOOL! I HAVE A LATEX ALLERGY[or][if the class of the player is princess]YOUR PUNY LATEX CANNOT TRICK ME THIS TIME, MORTAL[otherwise]HAHAHAHA! AS IF LATEX COULD CONTAIN MY SEED[end if][at random]!'[roman type] Looks like [he of M][']s going in bare...".

To say CondomAcceptFlav of (M - demon lord):
	if the condom resistance of M > 0, say "[BigNameDesc of M] frowns, but then takes the condom and sheathes [his of M] [manly-penis]. [line break][speech style of M]'[one of]I GUESS I SHOULD USE PROTECTION[or]YOUR PUNY LATEX WILL NOT SCARE ME THIS TIME, MORTAL[at random]!'[roman type][line break]".

To set up sex length of (M - demon lord) in (B - a body part):
	set up sex length (a random number between 2 and 3) of M in B.

To compute unique penetration effect of (M - demon lord) in (B - asshole):
	if the player-class is succubus, dignify 1200.

To compute unique penetration effect of (M - demon lord) in (B - a body part):
	if the player-class is succubus, dignify 800.

To compute vaginal sex of (M - demon lord):
	compute fuckhole sex of M.
	
To compute anal sex of (M - demon lord):
	compute fuckhole sex of M.

To compute fuckhole sex of (M - demon lord):
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
	if F is asshole, ruin asshole;
	otherwise ruin vagina;
	decrease the sex-length of M by 1;
	say "[one of][M sex reaction][or][cycling]".

To compute facial sex of (M - demon lord):
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

To compute post climax effect of (M - demon lord) in (F - vagina):
	if the class of the player is succubus:
		say "You feel fulfilled as [NameDesc of M][']s mighty seed flows into your [vagina]!";
		dignify 900;
	let T be a random xavier's cunt tattoo;
	if there is a worn tattoo and the number of worn crotch tattoos is 0:
		say "With a single finger, [NameDesc of M] burns two words onto your skin, just above your [vagina]. You stare down in disbelief at it - now permanently branded as 'Xavier's Cunt'.";
		summon T;
		say "[speech style of M]'THE ETERNAL BOND IS COMPLETE. YOU'RE MINE NOW.'[roman type][line break]".

To compute post climax effect of (M - demon lord) in (F - asshole):
	if the player-class is succubus:
		say "You feel fulfilled at satisfying the urges of your Master!";
		dignify 800.

To compute unique climax of (M - demon lord) in (F - a fuckhole):[assumes M is male]
	if image cutscenes is 1, display figure of xavier cutscene 2;
	if M is wrapped, compute wrapped climax of M in F;
	otherwise compute unprotected climax of M in F.

To decide if (M - demon lord) is losing wrapper in (F - a fuckhole):
	if a random number between 11 and (the openness of F) > 6, decide yes;[The demon lord's loads are huge, so he tends to break condoms, but if you're tight it helps hold it together]
	decide no.

To compute condom failure of (M - demon lord) in (F - a fuckhole):
	say CondomFailFlav of M in F;
	now M is unwrapped;[condom comes off in the flavour, so we remove it]
	PussyFill the semen load of M / 2.

To say CondomPieFlav of (M - demon lord) in (F - a fuckhole):
	say "[BigNameDesc of M] [one of]roars with pleasure, stretching the condom like a water balloon with the sheer force of his ejaculation[or]groans in pleasure, ejaculating with such force that the condom immediately begins stretching like a water balloon[or]balloons the condom with his load, roaring with pleasure as the insane force of his ejaculation causes it to stretch[at random]. The latex inches up his length as it struggles to contain his huge load, allowing you to feel every throb of his [manly-penis] that much more intimately than the last as the condom comes closer and closer to coming off completely. By some stroke of [if the semen addiction of the player > 6]bad [end if]luck, [one of]his orgasm dies down just as the condom is about to overflow, and he begins to pull out[or]he starts to pull out just as it's about to overflow[or]it doesn't overflow, and his [semen] stays safely behind a layer of latex as he pulls out[at random]. He seems to lose interest.".

To say CondomFailFlav of (M - demon lord) in (O - a fuckhole):
	say "[BigNameDesc of M] [one of]roars with pleasure, pushing the condom further and further off his [manly-penis] with the sheer force of his ejaculation[or]groans in pleasure, ejaculating with such force that condom is slowly dragged further and further off his [manly-penis][or]balloons the condom with his load, roaring with pleasure as the insane force of his ejaculation pushes it further and further off his [manly-penis][at random]. You feel every throb that much more intimately than the last, [one of]knowing its far too late to escape[or]held too tightly to escape[or]completely pinned under his weight[at random] as a final, powerful spurt forces the condom off completely! He laughs powerfully as [one of]your unprotected [variable O] floods with his [semen], which leaks[or]his load explodes into your [variable O], flooding it with fresh [semen], which leaks[or]his [semen] coats the inside of your [variable O], leaking[at random] out slowly as he pulls out.".

To say CreampieFlav of (M - demon lord) in (O - a fuckhole):[TODO]
	say "[BigNameDesc of M] ejaculates deep inside your [variable O]!";

To compute priestessBlessing of (M - demon lord):
	say "Your stomach flips over and a voice appears in your head: 'You have shamed yourself laying with him, Sister! Do not insult your goddess!'";
		increase the charge of the dungeon altar by 30.

To say StrikingSuccessFlav of (M - demon lord) on (B - a body part):
	say "[BigNameDesc of M] strikes you [TargetName of B] with a large claw!  Ouch!!";

To say StrikingFailureFlav of (M - demon lord) on (B - a body part):
	say "[BigNameDesc of M] tries to scratch you [TargetName of B] with a claw but you dodge quickly. He still manages to land a glancing blow!  Ouch!";
	BodyRuin 1.

To say MouthPenetrationFlav of (M - demon lord):
	say "[BigNameDesc of M] grabs you by your neck and calmly forces your mouth onto his [manly-penis]. Your mouth is forced to stretch almost impossibly wide as he forces his massive demon tool down into your throat. [line break][speech style of M]'[if the player is diaper focused][one of]I HAVE DECIDED TO ALLOW YOU TO REMAIN IN YOUR PADDING, INSTEAD YOUR FACE WILL BE USED AS MY FUCKHOLE.'[or]THAT'S IT, TAKE IT ALL, YOU DIAPERED WEAKLING!'[stopping][otherwise]Yes, that's it, take it all, you whore!'[end if][roman type][line break]".

To say NearingClimaxOral of (M - demon lord):
	say "[speech style of M]'GRAAAAAH!'[roman type][line break][BigNameDesc of M] is about to blow!".

To say SwallowDemand of (M - demon lord):
	say "[speech style of M]'[one of]YOU WILL USE YOUR STOMACH AS MY CUM DUMP[or]YOUR BODY MUST BE USED TO STORE MY SEED[or]MY ROYAL SPERM MUST NOT BE SPILLED[in random order]. SWALLOW, NOW.'[roman type][line break]".

To compute angry punishment of (M - demon lord):
	if the player is diapered:
		say "[speech style of M]'INSOLENT MORTAL!  YOU WOULD DARE DEFY AN ORDER FROM ME?!  YOU WILL REGRET THIS DECISION, I ASSURE YOU.'[roman type][line break][BigNameDesc of M] begins manifesting some kind of energy ball between his hands, which he promptly shoots towards your gut. You bend over in extreme pain!";
		delicateup 2;
		say "It seems like the effect of his magic has not finished, as you feel your ";
		if (diaper lover >= 3 and rectum > 0) or diaper lover >= 4:
			say "large intestine swelling rapidly, as it is filled by something!  You have a pretty good idea what...";
			increase rectum by 20;
			bore M;
			if the incontinence of the player > 5:
				say "A moment later, your sphincter loosens and it begins. ";
				compute messing;
		otherwise:
			say "bladder swelling rapidly, quickly to breaking point, and then past it, as you begin [one of]to wet yourself more than you ever have before, and ever thought possible[or]another impossibly long urination[stopping]!  ";
			increase the bladder of the player by 28;
			now delayed urination is 1;
			bore M;
			try urinating;
	otherwise:
		let T be a random off-stage anal star tattoo;
		if T is actually summonable and there is a worn tattoo and a random number between 1 and 2 is 1:
			say "[speech style of M]'INSOLENT...'[roman type][line break][BigNameDesc of M] stops mid-sentence, grinning as [he of M] shoves you onto your back and forces your legs up over your head. [big he of M] fires a bolt of red energy from his finger, which hits your [asshole] and immediately blossoms into a crimson marking in the shape of a star. [line break][speech style of M]'THIS IS THE MARK OF MORTALS WHO DEFY ME! ONE DAY, YOU WILL REGRET THIS.'[roman type][line break]";
			summon T;
		otherwise:
			say "[speech style of M]'INSOLENT MORTAL!  YOU WOULD DARE DEFY AN ORDER FROM ME?!  YOU WILL REGRET THIS DECISION, I ASSURE YOU.'[roman type][line break][BigNameDesc of M] smacks you with his tail, sending you flying into the nearby wall with a sickening crunch!  The pain is worse than anything you've ever felt before.";
			DelicateUp 4.

Section 2 - DQ

To compute diaper mess reaction of (M - demon lord):
	say "[BigNameDesc of M] watches you with glee. [line break][speech style of M]'BWAHAHAHAHA!  I HAVE SEEN WEAK MORTALS IN MY TIME, BUT YOU ARE TRULY THE MOST PATHETIC LIVING CREATURE TO EVER ENTER THESE WALLS[one of]!  TO NOT BE ABLE TO CONTROL SOMETHING SO BASIC... THIS IS A FATE WORSE THAN DEATH[or][stopping].'[roman type][line break]";
	humiliate 400.

Definition: demon lord (called M) is willing to spank:
	decide yes.

Definition: demon lord (called M) is willing to spank gently:
	decide no.

To decide which number is the spank strength of (M - demon lord):
	decide on 4.

To say SpankingMercyRejectionFlav of (M - demon lord):
	say "[speech style of M]'I DO NOT DO MERCY.'[roman type][line break][BigNameDesc of M] ignores your pleas.".

To say SpankingStartFlav of (M - demon lord):
	say "[BigNameDesc of M] picks you up off of the ground with his tail!  You're suspended in mid-air, there's no way you can get away now!".

To say SpankingDeclarationFlav of (M - demon lord):
	say "[speech style of M]'HOW SHALL I TORTURE YOU...'[roman type][line break]".

To say SpankingAfterFlav of (M - demon lord):
	say "After this [he of M] seems satisfied, and mercilessly drops you to the ground.".

To say DiaperReaction of (M - demon lord):
	say "[BigNameDesc of M] laughs, with a deep booming tone.[line break][speech style of M]'[one of]YES, I SEE YOU ARE LEARNING YOUR TRUE ROLE AS A PATHETIC DIAPERED MORTAL[or]YOU ARE SO PATHETIC THAT YOU CANNOT EVEN WAIT TO BE ALONE BEFORE SOILING YOUR OWN GARMENTS[at random]!'[roman type][line break]".

To compute diaper mess reaction of (M - demon lord):
	if diaper quest is 1:
		say DiaperReaction of M;
	otherwise:
		say "[BigNameDesc of M] looks at you with pure digust in his eyes.[line break][speech style of M]'I DID NOT THINK THAT EVEN HUMANS WOULD DEBASE THEMSELVES TO SUCH DISGUSTING LEVELS[if M is uninterested].  GET OUT OF MY SIGHT[end if].'[roman type][line break]";
	humiliate 200.


Section 3 - Nightmares

xavier-nightmare is a kind of diaper punishment. The priority of a xavier-nightmare is 5.

Definition: a xavier-nightmare (called P) is appropriate:
	if current-monster is not demon lord, decide no;
	decide yes.

To say DemonNightmareStartFlav:
	say "[BigNameDesc of current-monster] waves his hands and red light shoots up from the ground all around you, obscuring your vision. Suddenly, you hear a voice in your head. [line break][first custom style]'TODAY YOU WILL BE A SERVANT FOR MY FAMILY.'[roman type][line break]And then the red lights disappear, and [one of]you find yourself on your knees in front of a huge castle. A blood red sky evidences that you are now in the demon realm[or]you are once again at the entrance to Xavier's castle[stopping]. Two demons clad in heavy rusting platemail take you by the arms and drag you inside.";

Section - DQ Nightmare

xavier-nightmare-diaper is a xavier-nightmare.

The priority of xavier-nightmare-diaper is 5.

xavier-diaper-link is a number that varies.

To compute punishment of (P - xavier-nightmare-diaper):
	now the priority of P is 0; [can only happen once]
	let M be current-monster;
	let K be a random worn knickers;
	let T be a random demon link mark;
	let D be a random demon diaper;
	say "[DemonNightmareStartFlav]";
	say "[second custom style]'Well aren't you a scrumptious one.'[roman type][line break]You find yourself alone kneeling in front of a seven foot high lady demon in a luxurious castle bedroom. Her curvaceous figure and powerful limbs are matched by a deep, confident and yet still very feminine voice. Her only item of clothing is a chunky diaper with a red pentagram printed on the front. It looks completely unused. [line break][second custom style]'Excellent, a vacancy just opened up. I have the perfect role for you[if K is clothing]. Now remove that undergarment[end if].'[roman type][line break]";
	if K is clothing:
		say "She points to your [ShortDesc of K], and before you can even react, a huge slice appears all the way across it, and it falls from your body in tatters.";
		if K is messed: [need to check before we destroy and reset it]
			destroy K;
			say "She looks at your messy bottom with disgust. [line break][second custom style]'Ugh. GUARDS!  Take her for cleansing.'[roman type][line break]The armoured demons reappear at the doorway and lift you into the air between them, before taking you down the hall to where you can hear the sound of rushing water. Through another door you find yourself face to face with a gushing waterfall which comes out of a hole in the ceiling and then disappears through a grate in the ground. Maybe the castle was built around this natural water feature, or maybe it's more complicated than that, it's unclear. Either way you are dunked unceremoniously into the powerful jet and shaken around until your bottom is all clean, and then you are wordlessly brought back to your new 'employer'.";
		otherwise:
			destroy K;
	say "[second custom style]'Okay now here, put this on.'[roman type][line break]Again before you can really choose whether to accept, it's just happening. A big thick pink diaper is rocketing across the room towards your nether regions, and before you can say 'Hmm I'm not sure if I'm completely comfortable with where this is going' it is forcing your feet through its legholes. You look down and see it too has a big pentagram etched in the front. You start to feel rather nervous, and this feeling is exacerbated by her next words.[line break][second custom style]'Let us begin the ritual.'[roman type][line break]Words of trepidation choke up in your throat due to the size and sheer aura of dominance surrounding the demoness. She guides you gently but firmly over to a pentagram on the floor in the centre of her bedroom. As she takes both your hands in hers the pentagram's lines immediately start shining with a brilliant purple glow.[line break][second custom style]'Repeat after me. [']I, [NameBimbo]['],'[line break][variable custom style]'I, [NameBimbo]...'[roman type]Something inside you is entranced by her magnificence and anyway you can't see any other reasonable course of action. It feels like she could probably crush you with a small flick of her tail.[line break][second custom style]'Consent to serve...'[line break][variable custom style]'Consent to serve...'[line break][second custom style]'My body and padding shall be hers...'[line break][variable custom style]'My body and padding shall be hers...'  Wait, what am I getting myself into?[line break][second custom style]'In her time of need...'[line break][variable custom style]'In her time of need...'[line break][second custom style]'Wherever I may be.'[line break][variable custom style]'Wherever I may be.'[roman type][line break]The glowing begins to fade.";
	summon D;
	if there is a worn tattoo and the number of worn crotch tattoos is 0:
		summon T;
		say "A sharp sting over your crotch lets you know you suddenly have a new tattoo!  You can't see it but you can sense you have a pentagram permanently marked above your crotch. ";
	now xavier-diaper-link is 1;
	say "You feel a weird pang behind your [genitals]. Like it's not completely yours any more.[line break][second custom style]'Now follow me. And remember, potty [if the player is male and the bimbo of the player < 10]boys[otherwise]girls[end if] are supposed to be seen, not heard.'[roman type][line break]You are led from the bedroom throughout the castle, accompanying your Mistress on her queenly duties, including inspecting the troops, settling disputes amongst the common demons, and eating dinner with some demon knights. During this whole time you stay silent with your head down, standing two paces behind her, to her left side. At dinner you are seated next to her, but you are so small compared to her and the other demons that you might as well be a child, feeling a little lost in the adult- that is, the demon-sized chair. Your feet don't even touch the floor, meaning all your weight is on your thick padding. Towards the end of the meal, you notice your Lady arch her back and sigh gently. None of the other demons show that they noticed, if indeed any did. At the same time you feel the weirdest sensation - [if diaper lover >= 3]your sphincter opens wide to allow a thick soft log to exit. At the same time [end if]urine squirts out of your urethra, even though you can feel you're not pushing and nothing is exiting your bladder. It's like a ghost is sitting in your exact position, with his or her pee[if diaper lover >= 3] and poop[end if] materialising as it emerges!  The hissing and crinkling sounds fill the hall, making your face turn red. You understand what is happening - the Demon Queen is going to the toilet, but it's appearing in your diaper instead of hers!  And since she's so much bigger than you, she has a [italic type]lot[roman type] of waste to get out of her system. Your padding bulges from beneath you, visibly pushing you an inch higher up off of the chair.";
	say "[second custom style]'Really now, how disgusting!'[roman type][line break]Your Mistress chides you in a fake offended tone. [line break][second custom style]'Using your diaper at the dinner table. Really now!  Get out of here [if diaper lover >= 3]before you stink the whole room up[otherwise]now[end if]!  Get a change and then return to my chambers. I'll punish you later.'[roman type][line break]With face and ears as red as hers and a full [if diaper lover >= 3]and [end if]soggy nappy you sulkily waddle your way out of the room, studying the ground intensely as you do. You are halfway through the castle back to the waterfall when you hear a gurgling sound coming from below. Moments later your diaper is completely dry and clean!  [line break][variable custom style]Wow, that's... magic.[roman type][line break]You wait for the Queen to return to her bedroom, which takes hours. During this time you end up testing your diaper yourself, and find that after a [if diaper lover is 3]few moments[otherwise]minute or so[end if] it cleans itself in the same way. Finally, your Mistress returns.[line break][second custom style]'Excellent job, pet. You'll make a good potty servant. It's a shame you'll have to do it from afar for now though. I can feel that Xavier's magic is fading. Soon you will return to the mortal realm... for now. However, you are now eternally bonded to me, until the day I sever the connection or you die. So I'm sure you'll never forget me.'[roman type][line break]She and her world start to fade away.[line break][second custom style]'If I were you, I would try and keep hold of that diaper for as long as possible...'[roman type][line break]";
	say "You find yourself on the ground back in front of [NameDesc of M]. You feel just as exhausted as you did in the moment of your defeat.";
	say "[speech style of M]'YOU ARE FORTUNATE I AM RECOVERING MY STRENGTH AND CAN ONLY KEEP YOU THERE FOR 12 HOURS AT A TIME... IN THE FUTURE IT WILL BE LONGER!  HA HA HA!  UNTIL NEXT TIME, CHILD.'[roman type][line break]";
	satisfy M.
		



xavier-nightmare-gag is a xavier-nightmare.

Definition: xavier-nightmare-gag (called P) is appropriate:
	if current-monster is not demon lord, decide no;
	if the player is not a january 2018 diaper donator, decide no;
	decide yes.

The priority of xavier-nightmare-gag is 4.

xavier-throat-link is a number that varies.

Figure of cutscene-xavier-nightmare-gag-clean is the file "Special/Cutscene/cutscene-xavier-nightmare-gag1.png".
Figure of cutscene-xavier-nightmare-gag-wet is the file "Special/Cutscene/cutscene-xavier-nightmare-gag2.png".

To compute punishment of (P - xavier-nightmare-gag):
	now the priority of P is 0; [can only happen once]
	let M be current-monster;
	let K be a random worn knickers;
	let D be a random plain diaper;
	say "[DemonNightmareStartFlav]";
	say "[second custom style]'Ooh yes, she's perfect!'[roman type][line break]You find yourself alone kneeling in front of a six foot high female demon in a large posh garden. Her tall, powerful figure is contrasted by a high-pitched feminine voice. She is clutching a large diapered doll with a curiously life-like expression. The garden itself is extremely large and well-kept, the sort of thing you would expect to see at only the grandest of estates. This demon is rich.[line break][second custom style]'Thank you Daddy! She'll fit right in place!'[line break][variable custom style]Is she calling Xavier 'Daddy'? That probably means this is his daughter.[roman type][line break]";
	if K is clothing and K is not an unmessed dry plain diaper and K is not a demon diaper:
		say "[if K is diaper and the DQBulk of K < 7][second custom style]'That's not near big enough!'[roman type][line break][end if]She points to your [ShortDesc of K], and before you can even react, a huge slice appears all the way across it, and it falls from your body in tatters.";
		if K is messed: [need to check before we destroy and reset it]
			destroy K;
			say "She looks at your messy bottom with disgust. [line break][second custom style]'Yuck. HEY, GUARDS! Do something about this please.'[roman type][line break]Two armoured demons appear and lift you into the air between them, before taking you deeper into the garden to where you can hear the sound of rushing water. Past another hedge you find yourself face to face with a gushing fountain. You are dunked unceremoniously into the powerful jet and shaken around until your bottom is all clean, and then you are wordlessly brought back to your new 'employer'.";
		otherwise:
			destroy K;
	if K is not worn:
		say "[second custom style]'Okay now it's time to diaper my new water feature!'[line break][variable custom style]Did she say 'water feature'?![roman type][line break]You are too busy thinking about what she just said that you barely even reguster the big thick disposable diaper rocketing across the room towards your nether regions and taping itself shut aroudn you. This one does not have a big pentagram etched in the front, but is probably twice as bulky.";
		summon D;
		now K is D;
	clean K;
	now the urine-soak of K is the soak-limit of K;
	now xavier-throat-link is 1;
	say "Your mouth is forced open and a metal ring gag is forced inside. You [if the player is feeling submissive]remain obediently silent and allow it to happen[otherwise]try to complain but your words are now unintelligable.[line break][variable custom style]'[muffled sounds][roman type][line break][end if]";
	if ring gag is actually summonable, summon ring gag cursed;
	say "You feel a weird pang in your throat, like the gag is performing some kind of magical redesign of your gullet. You squirm nervously.[line break][second custom style]'Yay, I think it's working! My brother is a genius.'[roman type][line break]That does little to settle your stomach, but it doesn't matter what you think. The muscular girl-demon leads you to a place where a thin stone slab sits on the ground, like there's something missing that is supposed to be on top of it. You realise that's probably supposed to be you. Your new owner confirms your suspicions.[line break][second custom style]'Go on then, get up there, slave!'[roman type][line break]After a moment of hesitation you stand in place, and turn to face her. Nothing happens.[line break][second custom style]'Hold your arms out to the side, obviously!'[roman type][line break]That was hardly obvious, but now that you've been given the instruction, you quickly do as you are told. And as your arms reach horizontal, the ground begins to shake. Two stone pillars begin to emerge from the ground either side of you, underneath your hands. You expect your hands to be knocked out of the way but instead the pillars phase straight through them. Your immediate reaction is to pull your hands back but they're now completely stuck, sealed inside the concrete! As you struggle to move your arms, a thin plank of stone emerges from each pillar at neck height, connecting around your neck and welding themselves together perfectly. You now can't move your arms or your neck!";
	say "[second custom style]'Oopsie! Looks like you're stuck!'[roman type][line break]Your captor teases you as she turns to adjust something behind her. As she walks away from it you can see what it is - some kind of water jet! And now she appears to be turning a valve...![line break][second custom style]'Ready, aim fire!'[roman type][line break]A powerful blast of water shoots in an arc from the jet, right into your open mouth. You have no choice but to begin drinking, to avoid choking![line break][second custom style]'Congratulations, you are now a water feature! I'll come and change you whenever I remember.'[roman type][line break]And just like that, you are left alone.";
	if image cutscenes is 1:
		display figure of cutscene-xavier-nightmare-gag-clean;
		say "[italic type]Art by Hyro[roman type][line break]";
	say "As you drink, something weird happens. You feel the liquid travelling down your throat, and then it just hits your bladder instantly. [if the player is incontinent]Due to your incontinence you are powerless to prevent yourself from peeing immediately[otherwise]It's not long at all until you are bursting and so you are soon forced to wet your diaper[end if]. Thankfully your diaper is so giant that there's still a lot of dry padding left. For now. You reflect on what just happened - it seems like your stomach is now directly connected to your bladder, in some kind of magic fashion. Everything you drink - and there's a lot - is going straight into your bladder. And since you're being forced to drink such a lot, it's all coming out pretty immediately too. You're essentially stuck in a permanent state of both drinking and peeing, which means that your diaper is gradually getting heavier and heavier. No matter how big it is, it's got to get full at some point, right?![line break]But no matter how much you pee, it doesn't seem to leak. And you keep on peeing. The demon plane's sun moves across the sky and you have nothing to do but drink and wee, drink and wee.[line break][italic type]Glug glug glug[line break]Hsssssss[roman type][line break]Eventually it gets to the point where it feels like to not be peeing. It just feels normal to be permanently peeing. It's like it's your natural state. And still time moves forward. Day turns to night, and night to day. It must be nearly 24 hours since you were imprisoned here. With nothing to stimulate your attention, time slowly begins to lose meaning. All you know is drinking and wetting. Your diaper feels so heavy that it's like it's made of lead. Another day passes, and then another night. Xavier's daughter is nowhere to be seen. Will nobody come to release you? Why do you not feel hungry, or tired? Are those just weird quirks of this infernal dimension, or is it some magic effect that has been specifically applied to you? Does it matter? But you have nothing better to occupy your mind than questions like this.";
	if image cutscenes is 1, display figure of cutscene-xavier-nightmare-gag-wet;
	say "On the third day, Xavier's daughter does finally return. You are so happy just to see another face that you gurgle with glee.[line break][second custom style]'Hey there little miss soggy bottom, how are you settling in? From what I understand, the first thousand years are going to be the worst. After that you get used to it.'[roman type][line break]That makes your eyes widen with horror.[variable custom style]'[muffled sounds][line break][second custom style]'Yeah I thought you might say something like that. Well, too bad, you're mine now.'[roman type][line break]Just at that moment, the demon girl's form seems to begin to shimmer. No wait, the whole world is shimmering! Every second it's fading more and more.[line break][second custom style]'Yeah, only kidding, Daddy says you have to go back now. So I just came to say goodbye and to thank you for being such a good water feature. But I hope you come and play again soon!'[roman type][line break]You manage to sound one final gurgle of relief before she completely disappears from view.";
	say "You find yourself on the ground back in front of [NameDesc of M]. You feel just as exhausted as you did in the moment of your defeat.";
	say "[speech style of M]'I GUESS YOU ARE VERY LUCKY THAT DUE TO MY WEAKENED FORM I HAD TO EVENTUALLY BRING YOU BACK! MAYBE NEXT TIME WE MEET, MY POWERS WILL HAVE FULLY RETURNED AND I CAN KEEP YOU AS MY DAUGHTER'S STATUE FOREVER! HA HA HA! UNTIL NEXT TIME, CHILD.'[roman type][line break]";
	satisfy M;
	say "[variable custom style]Did that all just happen in my head? It doesn't feel like three days have past... but who knows in this place! One thing's for sure, I'm still in this giant soaked diaper. And my throat still feels... weird...[roman type][line break]".
		

xavier-nightmare-belt is a xavier-nightmare.

Definition: xavier-nightmare-belt (called P) is appropriate:
	if current-monster is not demon lord, decide no;
	if the player is not a january 2018 diaper donator, decide no;
	decide yes.

The priority of xavier-nightmare-belt is 3.

xavier-belt-link is a number that varies.

Figure of cutscene-xavier-nightmare-belt-clean is the file "Special/Cutscene/cutscene-xavier-nightmare-belt1.png".
Figure of cutscene-xavier-nightmare-belt-messy is the file "Special/Cutscene/cutscene-xavier-nightmare-belt2.png".

To compute punishment of (P - xavier-nightmare-belt):
	now the priority of P is 0; [can only happen once]
	let M be current-monster;
	let K be a random worn knickers;
	if K is diaper, now K is nothing;
	let T be a random demon belly mark;
	let D be a random eligible diaper;
	let BL be a random worn belt;
	say "[DemonNightmareStartFlav]";
	say "[first custom style]'Yes, this one will do.'[roman type][line break]The guards are holding you down on your knees in front of a male demon. Even though he is six feet tall you can tell he is rather young for a demon. Rather than the shining metal you've seen all the other males wearing, this demon has a modest (but still high quality) brown leather robe and sandals. He's also wearing glasses. You didn't even know demons could have problems with their eyesight - but then you don't know much about demons at all.[line break][first custom style]'It will be the perfect guinea pig for my latest invention. Send my thanks to my father.'[line break][variable custom style]Ah. So he's Xavier's son.[line break][first custom style]'Please, sit at the table[if K is clothing]. But first, you won't be needing that[end if].'[roman type][line break]";
	if K is clothing:
		say "He snaps his fingers and your [ShortDesc of K] vanishes[if K is messed], along with all the mess[end if]!";
		destroy K;
	if there is a worn messed diaper:
		say "He snaps his fingers and all the mess disappears from your [ShortDesc of a random worn diaper]!";
		now the mess of a random worn diaper is 0;
	if there is a worn diaper:
		say "[first custom style]'Okay now here, put this on.'[roman type][line break]Just like with his mother, the young demon uses a flick of his finger to summon something - ";
	otherwise:
		summon D;
		say "[first custom style]'Okay now. Here, put these on.'[roman type][line break]Just like with his mother, the young demon uses a flick of his finger to send a big thick disposable diaper rocketing across the room towards your nether regions, wrapping itself around your loins and taping itself shut. But that's not all - ";
	say "a belt comes whizzing at you from one corner of the room and locks itself around your waist[if BL is belt], destroying your [ShortDesc of BL] as it does[end if]. It has a strange symbol made out of hexagons on the front, and you feel something magic radiate inside of you. You watch in [horror the diaper addiction of the player] as you feel the contents of your bladder [if diaper lover >= 3]and rectum [end if]multiply rapidly in size, making your belly expand and round out. You look like you're six or seven months pregnant.";
	if BL is belt, destroy BL;
	summon demon belt cursed;
	now xavier-belt-link is 1;
	if there is a worn tattoo and the number of worn belly tattoos is 0:
		summon T;
		say "A tingling feeling over your belly lets you know you also have a new tattoo!  You can't see it but you can sense you have a pentagram permanently marked around your belly button.";
	say "[first custom style]'Okay, now your job is to try and finish this. And you'd better try your hardest - if you can't get through it all in twenty minutes, you'll spend the rest of your time here strapped to an automatic spanking machine.'[roman type][line break]You frown, still confused. In front of you is a bowl of runny green soup[if diaper lover >= 3] and a small loaf of crusty bread[end if]. Even though you're feeling very full, surely it won't take you longer than a few minutes to finish the [if diaper lover >= 3]meal[otherwise]liquid snack[end if]. You sit down, wincing as your belly [if diaper lover >= 3]growls angrily[otherwise]sloshes loudly[end if] as you move. You pick up your first spoonful of the soup and bring it to your lips, pleasantly surprised by the healthy taste of peas and mint. You swallow it without a problem[if diaper lover >= 3], quickly following it up with a bite of the bread[end if].[line break][bold type]GRUMBLE[roman type][line break]As soon as it makes its way to your stomach, you feel the magic of your new belt at work. ";
	if diaper lover < 3 and images visible is 1, display figure of cutscene-xavier-nightmare-belt-clean;
	say "The matter inside you doubles, triples, quadruples in volume, and keeps going!  Your belly bulges and swells and expands, making you look like you're eight months pregnant. The pressure on your bladder[if diaper lover >= 3] and bowels[end if] is now immediately too much - you instantly wet[if diaper lover >= 3] and mess[end if] yourself, beginning to fill your [if D is worn]new [end if]diaper with your shame. By the time your belly has visibly deflated a bit and you are able to regain control of your body, your diaper is already feeling rather soggy and full.";
	if diaper lover >= 3 and images visible is 1, display figure of cutscene-xavier-nightmare-belt-messy;
	say "The true nature of your predicament dawns on you. Whatever you consume will now multiply in quantity many times as it reaches your stomach - and you somehow know this new enchantment is irreversibly permanent. Your short term problem becomes abundantly clear - you effectively have eight to ten servings in front of you to somehow force down. Each spoonful is essentially a whole meal![paragraph break]";
	say "The effects of the next spoonful is just as bad as the first. As soon as the soup hits your stomach, you find yourself immediately peeing[if diaper lover >= 3] and pooping[end if], filling the room with more hissing and crinkling and driving you wild with [if the diaper addiction of the player > 13]arousal[otherwise]shame[end if]. This time you find yourself allowing your body to continue excavating itself, emptying your entire [if diaper lover >= 3]belly[otherwise]bladder[end if] load into your now overly full nappy. The demon prince gives a childish snigger before snapping his fingers, causing your diaper to become completely dry once again.";
	say "[first custom style]'Poor baby can't hold her [if diaper lover >= 3]bottom back[otherwise]tinkles[end if] at all!  You're going to go through a LOT of diapers from now on, aren't you?'[roman type][line break]You can't deny it - that seems like an inevitable truth.[line break][first custom style]'Did I tell you to stop?  Keep going.'[roman type][line break]You sigh and submissively return to slurping down spoonfuls of soup[if diaper lover >= 3] in between bites of bread[end if]. Each mouthful turns very quickly into another soiling session, meaning you spend the next ten minutes in an almost permanent state of using your diaper, with it getting magically cleaned every time it reaches the brink of overflowing. When you are close to the end of your magic mega meal, the prince interrupts you once more.[line break][first custom style]'Okay, this has been fun. The invention has been a complete success. For our final little test, I want you to hold it all in until the end, now.'[roman type][line break]You groan but comply, feeling your belly strain and grow to sizes impossible from just [if diaper lover >= 3]drink[otherwise]food[end if] in the real world. But finally you are done!  And just as well - you're going to burst any second. He laughs vindictively.[line break][first custom style]'I think I'll leave this one for my father to witness.'[roman type][line break]He snaps his fingers one final time and his world quickly disappears.[line break]";
	if diaper lover >= 3, now rectum is 30;
	now the bladder of the player is 40;
	say "You find yourself on the ground back in front of [NameDesc of M]. You feel just as exhausted as you did in the moment of your defeat, but you are now also impossibly full of [if diaper lover >= 3]food and [end if]drink. You look up at [NameDesc of M] and lock eyes just as it begins.";
	if diaper lover >= 3:
		compute messing;
	otherwise:
		now delayed urination is 1;
		try urinating;
	if M is interested, satisfy M.
		


Section 4 - Damage

Definition: demon lord (called M) is damageable:
	if attack-type is 1 and there is a worn sword of purity or there is a worn magic wand or there is a worn whip of domination, decide yes;
	if attack-type is 3 and there is a worn dildo heels, decide yes;
	if the class of the player is princess or the class of the player is priestess or the class of the player is virgin warrior or the class of the player is fertility goddess or there is a worn demonic wearthing, decide yes;
	decide no.

To decide which number is the damage modifier of (M - demon lord):
	[Xavier can only be harmed by the above means.]
	if M is not damageable, decide on (attack-damage * -1);
	otherwise decide on attack-damage + the number of worn demonic wearthings.

To say damage-flavour of (N - a number) on (M - demon lord):
	if N is 0 and M is not damageable:
		say "[M] appears to be completely immune to your attack!  [one of]Maybe only certain items can hurt him?[or][or]It looks like it's impossible for you to win this fight right now.[or][cycling]";
	otherwise if N is 0:
		say "That didn't feel like it did anything at all.";
	otherwise if N is 1:
		say "That felt extremely weak, you doubt it hurt much at all.";
	otherwise if N is 2:
		say "That felt quite weak, but hopefully it hurt a bit.";
	otherwise if N < 5:
		say "[BigNameDesc of M] definitely felt that. A respectable hit!";
	otherwise if N < 7:
		say "[BigNameDesc of M] visibly recoils from the hit. A [if critical is 1][bold type]critical hit[roman type][otherwise]strong hit[end if]!";
	otherwise if N < 9:
		say "Wow, you felt that connect with incredible force. A super strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";
	otherwise:
		say "POW!  Your attack is accompanied by a loud sound. An almost impossibly strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!".

To compute damage of (M - demon lord):
	if the health of M > 0:
		if M is uninterested:
			say "[BigNameDesc of M] turns to face you with a terrifying roar!";
			now M is interested;
			anger M;
		otherwise:
			if the health of M >= the maxhealth of M:
				say "[BigNameDesc of M] laughs at you mockingly!";
			otherwise if the health of M > the maxhealth of M / 2:
				say "[BigNameDesc of M] growls angrily[one of]!  [line break][first custom style]'ARGH!  HOW CAN YOU HARM ME?!'[roman type][line break][or]![stopping]";
			otherwise:
				say "[BigNameDesc of M] recoils in pain[one of]!  [line break][first custom style]'I WILL NOT BE DEFEATED!'[roman type][line break][or]![stopping]";
	otherwise:
		compute death of M.

To compute unique death of (M - demon lord):
	say "[first custom style]'NOOOO!  HOW CAN THIS BE?'[roman type][line break]A tiny red gem appears below [NameDesc of M][']s feet, and his body is slowly but surely sucked into the stone, until nothing remains. You have won!";
	loot M;
	if gladiatorcurse is 1, uncurse gladiators;
	let X be a random off-stage plentiful bracelet;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [ShortDesc of M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X;
	let G be a random off-stage infernal gem;
	if G is infernal gem, now G is in the location of the player;
	compute autotaking G.


Part 4 - Conversation

To IdentifiablePosterReaction of (M - demon lord):
	say "[BigNameDesc of M] looks at you, then at the banner, then back to you. Upon realising that it is you, he puts his hands on his hips and laughs loudly.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - demon lord):
	say "[BigNameDesc of M] looks at the banner with a big grin on his face. He doesn't seem to realise it is you, but is clearly enjoying looking at it.";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Section 1 - Greeting

To say FirstResponse of (M - demon lord):
	say "[first custom style]'SILENCE, MORTAL!'[roman type][line break]".

To say RepeatResponse of (M - demon lord):
	say FirstResponse of M.

To say UnfriendlyResponse of (M - demon lord):
	say FirstResponse of M.

To say DominantResponse of (M - demon lord):
	say FirstResponse of M.

To say midDominanceResponse of (M - demon lord):
	say FirstResponse of M.
		
To say AsDominantResponse of (M - demon lord):
	say "[first custom style]'HAHAHA! TAKE IT!'[roman type][line break]".

Section 2 - Questioning

To say WhereAnswer of (M - demon lord):
	say "[first custom style]'MY NEW DOMAIN! HAHAHA!'[roman type][line break]".

To say WhoAnswer of (M - demon lord):
	say "[first custom style]'I AM DEMON LORD XAVIER, ONE OF THE FOUR ELITE DARK LORDS! BWAHAHA!'[roman type][line break]".
		
To say StoryAnswer of (M - demon lord):
	say "[first custom style]'THAT'S COPYRIGHTED - I MEAN NONE OF YOUR BUSINESS!'[roman type][line break]".

To say EscapeAnswer of (M - demon lord):
	say "[first custom style]'THERE IS NO ESCAPE FOR YOU NOW, LITTLE ONE!  YOU WILL SERVE AS MY SLAVE[if the class of the player is not succubus] OR DIE TRYING TO ESCAPE!'[otherwise]!'[end if][roman type][line break]".

To say AdviceAnswer of (M - demon lord):
	say "[first custom style]'STAY LOOSE AND LET IT HAPPEN!'[roman type][line break]".

To compute teaching of (M - demon lord):
	say "[first custom style]'I CAN TEACH YOU HOW TO TAKE DEMON COCK.'[roman type][line break]".

Section 3 - Drink Requesting

To compute unfriendly drink of (M - demon lord):
	say "[first custom style]'YOUR MORTAL REQUIREMENTS ARE NO CONCERN OF MINE!'[roman type][line break]".

Part 5 - Trading

To decide which number is the bartering value of (T - a thing) for (M - demon lord):
	decide on 0.

To say MonsterOfferRejectFlav of (M - demon lord) to (T - a thing):
	say "[first custom style]'I CARE NOT FOR YOUR MORTAL TRINKETS!'[roman type][line break]".



Demon Lord Xavier ends here.

