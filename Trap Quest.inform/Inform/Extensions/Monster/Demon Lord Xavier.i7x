Demon Lord Xavier by Monster begins here.

demon lord is a monster. demon lord is intelligent. demon lord is male. The poison-status of demon lord is -1.

Definition: demon lord is father material: decide yes.
Definition: demon lord is raunchy: decide yes.
Definition: demon lord is willing to have time out: decide no.

Understand "xavier" as demon lord.

The text-shortcut of demon lord is "xa".

Figure of Demon Lady is the file "NPCs/Bosses/Xavier/xavier3.png".
Figure of Xavier Cutscene 1 is the file "NPCs/Bosses/Xavier/cutscene-xavier-event1.png".
Figure of Demon Lord Interested is the file "NPCs/Bosses/Xavier/cutscene-xavier-interact1.jpg".

To decide which figure-name is the monster-image of (M - demon lord):
	if lady fetish is 1, decide on figure of demon lady;
	if M is interested, decide on figure of demon lord interested;
	decide on figure of demon lord.

To say ShortDesc of (M - demon lord):
	say "demon lord".

To say MediumDesc of (M - demon lord):
	say "Demon Lord Xavier".

To say NameDesc of (M - demon lord):
	say "[input-style]Xavier[roman type]".
To say BigNameDesc of (M - demon lord):
	say "[input-style]Xavier[roman type]".
To say FuckerDesc of (M - demon lord):
	say "Xavier".
To say BigFuckerDesc of (M - demon lord):
	say "Xavier".

To say MonsterDesc of (M - demon lord):
	say "A giant red humanoid, with a monster's face and large red wings. [big he of M] must be literally twice as tall and wide as you. [run paragraph on]";
	if diaper quest is 0:
		say "[big he of M] is completely naked, and as you might expect, [his of M] red monster of a [DickDesc of M] is about twice as large and thick as the average well hung human male. [if M is wrapped]A latex condom is covering the entirety of [his of M] shaft, and seems to be massively inhibiting [his of M] evil aura.[otherwise]You can feel a raw aura of lust and evil emanating from [him of M].[end if]";
		say DamageableDesc of M;
	otherwise:
		say "[big he of M] looks incredibly scary.";

To say MonsterComment of (M - demon lord):
	if diaper quest is 0:
		if the class of the player is worshipper:
			if the bimbo of the player < 7:
				say "[variable custom style][one of]My lord... and master?[or]This aura... [he of M]'s invincible! I can't lay a finger on [him of M]![or][big he of M]'s going to take over the world! What have I done![in random order]";
			otherwise if the bimbo of the player < 12:
				say "[variable custom style][one of]My lord and master.[or]This aura... makes me feel hot.[or]I released [him of M], so... I'm unexpectedly an awesome person, right?[in random order]";
			otherwise:
				say "[variable custom style][one of]My one and only lord and master.[or]This aura... that [DickDesc of M].... [he of M]'s ALL POWERFUL![or]I released [him of M]. Now I get to [']release['] [him of M]![in random order]";
		otherwise if the class of the player is priestess:
			if M is penetrating a body part:
				let X be the remainder after dividing the heirs-count of M by 10;[used to determine number suffixes.]
				increase X by 1;
				if M is mating, say "A solemn voice sounds in your head. [second custom style]'Defiled Sister, [one of]you must find the strength to oppose [him of M]. The [X][if the heirs-count of M > 10 and the heirs-count of M < 20]th[otherwise if X is 1]st[otherwise if X is 2]nd[otherwise if X is 0]rd[otherwise]th[end if] prince must not be born!'[or]you will have another chance. Go, and escape from the hotel. Do not lose heart!'[in random order]";
				otherwise say "A frantic voice sounds in your head.[second custom style]'Tenacious Sister, [if the player is able to get pregnant]you must not receive [his of M] seed. [big he of M] cannot be allowed an heir! Escape, sister! Hurry!'[otherwise]your holy power cannot fully protect you here! You must escape!'[end if]";
			otherwise:
				if M is mating, say "A calm voice sounds in your head. [second custom style]'Defiled Sister, [one of]the heir is not yet king. There is still time...'[or]you are the only one who can stop [him of M]. Do not lose heart.'[or]you know what will happen if [he of M] captures you. You cannot let that happen.'[or]the violation of your sacred womb will never remove your holy power. You can still defeat [him of M].'[in random order]";
				otherwise say "A worried voice sounds in your head.[second custom style]'Heroic Sister, [one of]you must defeat [him of M]. [big he of M] must not be allowed to walk this plane!'[or]you must use your holy power to banish [him of M] once and for all!'[or][if the player is able to get pregnant and M is not mating]you must not let [him of M] capture you. [big he of M] cannot be allowed to make an heir!'[otherwise]you must not let [him of M] capture you. Your holy power will protect you from many things, but not the demon king.'[end if][or][he of M] cannot be allowed to regain [his of M] former power! You must stop [him of M] NOW!'[in random order]";
		otherwise if the bimbo of the player < 7:
			if the player is gendered male, say "[first custom style][one of][big his of M] [DickDesc of M] is wider than my arm... [if M is penetrating asshole]I'm getting stretched out, dude![otherwise]this is BULLSHIT![end if][or][big he of M] looks really tough.[or]Huge [DickDesc of M], insane muscles... does [he of M] have any weaknesses?[in random order]";
			otherwise say "[first custom style][one of]Those muscles don't seem to be for show. Well, at least not completely.[or][if M is penetrating a body part][big he of M]'s splitting me in half![otherwise]What IS that?! It couldn't be a [DickDesc of M], could it? I-it’s far too big![end if][or]Can I even harm [him of M]?[or][big he of M] must have a weakness.[in random order]";
		otherwise if the bimbo of the player < 12:
			say "[variable custom style][one of][if M is penetrating a body part]So. BIG.[otherwise]I'm not staring at [his of M] huge [DickDesc of M]. I'm definitely not curious...'[end if][or]So this is a demon lord...[or]Even if I do find [his of M] weakness, it's not like [he of M]'d lose.[in random order]";
		otherwise:
			say "[second custom style][one of][if M is penetrating a body part]One word. SO FUCKING BIG![otherwise]I can't wait to get that monster inside me.[end if][or]So not only is [he of M] really muscular, [he of M]'s also a demon lord. What a hard worker![or]I have to find [his of M] weakness. That'll really piss [him of M] off![in random order]";
		say "[roman type][line break]".

To decide which number is the girth of (M - demon lord):
	decide on 8.

Definition: demon lord is concealment immune: decide yes.
Definition: demon lord is scarable: decide no.

Definition: demon lord (called M) is willing to shag:
	if M is awake and the boredom of M < 120, decide yes;
	decide no.

Definition: demon lord is infernal: decide yes.

Definition: demon lord is willing to do oral:
	if diaper focus is 1, decide yes;
	decide no.

Definition: demon lord is willing to do titfucks: decide no.

To decide which number is the base semen load of (M - demon lord):
	decide on 15.

To set up (M - demon lord):
	reset M;
	now the monstersetup of M is 1;
	add infernal gem to the banishItems of M, if absent;
	now the raw difficulty of M is the starting difficulty of M + the charge of demon codpiece;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - demon lord):
	decide on 18.

To reseal xavier from (M - a monster):
	now mechanic is in the location of M;
	now mechanic is summon-available;
	set up mechanic;
	now the raw difficulty of mechanic is the difficulty of M;
	if M is carrying mystical amulet:
		now mystical amulet is in the location of M;
		now the power-stolen of mechanic is 1;
	finally destroy M;
	now M is permanently banished.

To unseal xavier from (M - a monster):
	now demon lord is in the location of M;
	set up demon lord;
	let Dbonus be the difficulty of M - the starting difficulty of M;
	if Dbonus > 0, increase the raw difficulty of demon lord by Dbonus;[So the demon lord doesn't lose difficulty when unsealed]
	let O be a random body part penetrated by M;
	if M is in the location of the player:
		say "You feel a burst of heat as the figure of [NameDesc of M] morphs and shifts, clothes bursting at the seams and falling apart as [he of M] doubles in size. [big his of M] skin turns red, and [he of M] grows wings and horns.[line break][first custom style]'I AM DEMON LORD XAVIER! MY POWERS ONCE SEALED AWAY BY THE PRINCESS, I AM WHOLE ONCE AGAIN, DESTINED TO RULE THESE LANDS!'[roman type][line break]";
		cutshow figure of xavier cutscene 1 for demon lord;
		FearUp 15;
		if O is body part:
			say "[big his of M] [DickDesc of M] grows most of all, utterly filling your [variable O] with its huge girth as [he of M] fucks you with renewed enthusiasm.";
			now demon lord is penetrating O;
			now the sex-length of demon lord is 5;
			now demon lord is interested;
		otherwise:
			say "[big he of M] is looking upwards, and doesn't seem to be talking to anyone in particular. You realise this might be a sensible moment to try and make a quick exit...";
		progress quest of insanity-quest;
	otherwise:
		say "You feel a burst of heat, and something [b]very powerful[/b] shakes the Earth.";
	if bride-consort is M, now bride-consort is demon lord;
	if M is carrying mystical amulet, now demon lord is carrying mystical amulet;
	finally destroy M;
	now M is permanently banished.

To say PregGrowth of (M - demon lord):
	say "Xavier's [child]".

demon lord has a number called heirs-count.

To compute labour to (M - demon lord):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player][father][otherwise][father] appears almost as if on cue! [big he of M][end if] [if asshole is actually occupied or the player is ass protected]wraps [his of M] demonic tail around your neck and chokes you as you give birth to [his of M] [one of]heir[or]prince[stopping], loosening [his of M] grip to let you get a gasp of air whenever you are about to faint[otherwise]thrusts [his of M] [DickDesc of M] violently into your [asshole] as [his of M] own spawn is slowly pushing its way out of your womb[end if].[line break][variable custom style]Holy... fucking... shit...[roman type][line break][the father] senses your anguish, and feeds from it.[line break][first custom style]'HAHAHA YES, YES, THE ULTIMATE SUBMISSION OF YOUR BODY, I CRAVE IT. ";
		if watersports fetish is 1 or diaper lover >= 1:
			say "SOIL YOURSELF AS YOU GIVE BIRTH TO [one of]THE FUTURE RULER[or]A FUTURE PRINCE[stopping] OF THIS WORLD!'[roman type][line break]You realise [he of M] is completely right, you are wetting yourself.";
			now the bladder of the player is 0;
			UrinePuddleUp 9;
		otherwise:
			say "CUM FOR ME AS YOU GIVE BIRTH TO [one of]THE FUTURE RULER[or]A FUTURE PRINCE[stopping] OF THIS WORLD!'[roman type][line break]You realise [he of M] is completely right, you are split seconds away from orgasm.";
			orgasm;
		say "As soon as the red skinned, tailed devil baby has been fully delivered, [the father] takes it into [his of M] hands and embraces it. A moment later, the baby disappears completely. [one of][line break][first custom style]'I HAVE SENT HIM BACK TO MY HOME REALM TO GROW AND LEARN THE WAYS OF THE DEMON KING[or][stopping][if the player-class is succubus and the father is mating] ONCE AGAIN YOU SERVE ME WELL, MY CONCUBINE[otherwise if the player-class is succubus] YOU HAVE SERVED AS AN ADEQUATE VESSEL FOR MY SEED. YOU WILL SERVE AS MY CONCUBINE, AND ONCE I HAVE RETURNED TO POWER YOU WILL HAVE AN IMPORTANT POSITION IN MY COURT. SQUEALING, ON THE END OF MY COCK! HAHAHA[end if].'[roman type][line break]Without giving you a chance to react, never mind reply, [he of M] leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep, unholy fulfilment. You feel... powerful.";
			StrengthUp 4;
			if the player-class is succubus:
				say "You feel truly fulfilled by playing your part in your Master's plans for this world.";
				dignify 6000;
		increase the heirs-count of M by 1;
	otherwise if M is alive:
		Delay Labour.

To compute monstermotion of (M - demon lord):
	unless ex-princess is guarding and ex-princess is in the location of M:
		let W be 0;
		let N be a random off-stage robochef;
		repeat with L running through leftovers in the location of M:
			if the leftover-type of L is 117 or the leftover-type of L is 118 or the leftover-type of L is 119 or the leftover-type of L is 127:
				now W is 1;
		if W is 1:[he can't repair anything without his wrench]
			let D be the difficulty of M - the starting difficulty of M;
			if D < 0, now D is 0;
			increase D by times-submitted of M;
			let O be a random leftover in the location of M;
			if the leftover-type of O is 117:
				now N is a random off-stage robobellboy;
				if N is monster:
					set up N;
					DifficultyUp N by D;
			otherwise if the leftover-type of O is 118:
				now N is a random off-stage robobutler;
				if N is monster:
					set up N;
					DifficultyUp N by D;
			otherwise if the leftover-type of O is 127:
				now N is a random off-stage robomaid;
				if N is monster:
					set up N;
					DifficultyUp N by D;
			otherwise if N is monster:
				set up N;
				DifficultyUp N by D;
			if N is monster:
				now N is in the location of M;
				distract N;
				if M is in the location of the player, say " [BigNameDesc of M] points at the pile and blasts it with lightning.[line break][speech style of M]'[one of]ARISE, SERVANT!'[or]RISE AND CONTINUE SERVING ME!'[or]STOP PRETENDING TO BE BROKEN. IT'S EMBARRASSING FOR ALL OF US.'[or]GET BACK TO WORK.'[in random order][roman type][line break]The broken parts, as if spurred on by [his of M] command, float off the ground and reassemble themselves with blistering speed. Within moments, a brand new [ShortDesc of N] is sitting in front of [him of M].";
				otherwise say "You hear a thunderclap, followed by the sound of gears turning somewhere else in the hotel.";
			destroy O;
		otherwise:
			compute room leaving of M.

To compute the default taunting of (M - demon lord):
	if nursery crib is grabbing the player and player-currently-resting is 0:
		say "[speech style of M]'NAPTIME IS OVER, SLUT!'[roman type][line break][BigNameDesc of M] unlocks the crib and roughly yanks you out.";
		dislodge nursery crib;
	otherwise:
		say "[BigNameDesc of M] growls with impatience.".

Part 1 - Perception

To compute perception of (M - demon lord):
	anger M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the pregnancy of the player > 0 and the pregnancy of the player < 3 and the father is M:
		say "[first custom style]'I WILL SUMMON YOU WHEN MY CHILD IS READY FOR BIRTHING.'[roman type][line break][big he of M] seems to lose interest.";
		bore M;
	otherwise if there is a worn messed knickers:
		say "[first custom style]'EVEN TWISTED DEMON LORDS LIKE ME FIND YOUR SOILED CLOTHING DISTURBING. BEGONE FROM MY SIGHT.'[roman type][line break][big he of M] seems to lose interest.";
		bore M;
		if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
	otherwise if the player is soulless and the player-class is not succubus:
		say "[first custom style]'YOU WILL SERVE AS AN IDEAL VESSEL FOR ONE OF MY SERVANTS! KNEEL AND PREPARE YOURSELF!'[roman type][line break]";
	otherwise if ex-princess is unconcerned and ex-princess is alive and the number of monsters in the location of the player is 1 and ex-princess is not wearing golden-phallus and the player is the donator:
		commence final battle;
	otherwise if vaginalvirgin of the player is 1 and the player is possessing a vagina:
		say "[first custom style]'[one of]YOU CANNOT RESIST ME, FOOLISH [caps boy of the player]!'[or]I WILL BE THE FIRST TO IMPALE YOU ON MY MIGHTY COCK, VIRGIN!'[or]I LOVE CHERRIES!'[or]SUBMIT YOURSELF, [caps boy of the player]! YOU CANNOT PROTECT YOUR VIRGINITY FROM ME!'[at random][roman type][line break]";
	otherwise if the class of the player is princess:
		say "[first custom style]'[one of]HAHAHA! FOOLISH PRINCESS! YOUR KINGDOM WILL BE MY COCKSLEEVE FOR ETERNITY AND SO WILL YOU!'[or][if pregnancy fetish is 1 and the player is possessing a vagina and the pregnancy of the player is 1]SUBMIT, PRINCESS! YOUR BLOODLINE WILL BE TAINTED WITH MY SEED!'[otherwise]YOU CAN RUN NO LONGER, PRINCESS! I WILL FILL YOU WITH MY TAINTED SEED!'[end if][at random][roman type][line break]";
	otherwise if the player-class is succubus and M is mating and pentagram tattoo is not worn:
		say "[first custom style]'CONCUBINE! I HAVE PREPARED A GIFT FITTING YOUR STATUS!'[roman type][line break]";
	otherwise:
		say "[first custom style]'YOU! GET ON YOUR KNEES AND PRESENT [if pregnancy fetish is 1 and the player is possessing a vagina and the pregnancy of the player is 0]YOUR [caps cunt] TO CONCEIVE AND CARRY MY HEIR[otherwise]YOURSELF BEFORE YOUR [one of]NEW [or][stopping]MASTER[end if].'[roman type][line break]";
		if the class of the player is succubus or the class of the player is worshipper and the player is upright:
			say "Your master's voice is too commanding for you to even consider resistance!";
			try kneeling.

To compute DQ perception of (M - demon lord):
	anger M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if ex-princess is unconcerned and ex-princess is alive and the number of monsters in the location of the player is 1 and ex-princess is not wearing golden-phallus and the player is the donator:
		commence final battle;
	otherwise if the class of the player is princess:
		say "[first custom style]'PRINCESS! YOU DARE SHOW YOUR FACE HERE? YOU WILL SUBMIT TO ME!'[roman type][line break]";
	otherwise:
		say "[first custom style]'YOU! GET ON YOUR KNEES AND PRESENT YOURSELF BEFORE YOUR [one of]NEW [or][stopping]MASTER.'[roman type][line break]".

To compute bride perception of (M - demon lord):
	if the pregnancy of the player > 0 and the pregnancy of the player < 3 and the father is M:
		say "[first custom style]'I WILL SUMMON YOU WHEN MY CHILD IS READY FOR BIRTHING.'[roman type][line break][big he of M] seems to lose interest.";
		bore M;
	otherwise if the refractory-period of bride-consort >= 0:
		say "[first custom style]'BEGONE, MY CUMDUMP BRIDE, I HAVE NO NEED OF YOUR HOLES AT THIS MOMENT.'[roman type][line break][big he of M] seems to lose interest.";
		bore M;
	otherwise:
		say "[BigNameDesc of M] notices you.[line break][speech style of M]'HAHAHA, THERE YOU ARE, MY CUMDUMP BRIDE[one of]! YOU MAY NOT REALISE THIS, BUT I CONTROLLED YOUR IMPULSES AND MADE YOU SEEK ME OUT WITHOUT YOUR EVEN KNOWING IT[or][stopping]! NOW PRESENT YOURSELF TO ME!'[roman type][line break]";
		now auto is 1;
		if vagina is actually presentable:
			say "Without a second thought, you crawl towards [NameDesc of M].";
			calm M;
			try direct-presenting vagina to M;
		otherwise:
			say "You feel a compulsion to drop to your knees and present your [vagina] to [NameDesc of M], but for some reason, your body can't work out how to do it right now.";
		if M is not penetrating a body part:
			say "[BigNameDesc of M] growls.[line break][first custom style]'FINE! I'LL DO IT MYSELF.'[roman type][line break]";
			anger M;
		now auto is 0.

Part 2 - Stomp

To compute (M - demon lord) stomping (N - a monster):
	if N is female and N is not neuter:
		if M is in the location of the player, say "With a flick of [his of M] tail, [NameDesc of M] grabs [NameDesc of N] and pulls [him of N] towards [him of M]. Remaining fully standing, [he of M] lowers [him of N] onto [his of M] giant erect red [DickDesc of M] and starts fucking [his of N] [HoleDesc of N] furiously. [big he of N] screams in both pleasure and terror as [his of M] member almost splits [him of N] in two, and very soon [he of M] is coming inside [him of N]. [big his of N] belly visibly bulges before pints of [semen] begin to explode from around the sides of [his of M] [DickDesc of M]. After [he of M] has finished, [his of M] tail lets go of [his of N] waist and [he of N] falls to the ground, where [he of N] promptly faints.";
		otherwise say "You hear a [man of N] shout out in a mixture of ecstasy and terror from [if N is nearby]nearby![otherwise]somewhere in the hotel![end if]";
		destroy N;
		let L be a random off-stage leftover;
		now L is in the location of M;
		now the leftover-type of L is the leftover-type of N;
	otherwise:
		say "[BigNameDesc of M] is glitching, it doesn't know how to deal with [NameDesc of N]! Report this bug!".

To compute (M - demon lord) stomping (N - ex-princess):
	if N is guarding:
		compute final battle;
	otherwise if N is unleashed and N is uninterested:
		say "[speech style of M]'PRINCESS! ASSIST ME!'[roman type][line break][BigNameDesc of M] roars.";
		check guaranteed perception of N.

Part 3 - Combat

Section 1 - Attack

The latex punishment rule of demon lord is usually the no latex punishment rule.

To compute (M - demon lord) receiving (N - a number) damage from (X - a monster):
	say AllyDamageFlav of X on M;
	say "[one of][BigNameDesc of M] seems immune to the attack![line break][first custom style]'You fool, your allies cannot harm me!'[roman type][line break][roman type][or][BigNameDesc of M] still seems to be immune to the [X]![stopping]".

To decide which number is the condom resistance of (M - demon lord):
	decide on 99. [He has a latex allergy]

The xavier priority attack rules is a rulebook. The priority attack rules of demon lord is usually the xavier priority attack rules.

[Demon Transformation]
The unique punishment rule of demon lord is usually the demon final-battle-or-transformation rule.
This is the demon final-battle-or-transformation rule:
	let M be current-monster;
	if ex-princess is in the location of M and ex-princess is guarding:
		compute final battle; [probably won't ever happen because the stomp code should catch the princess, but just in case...]
	otherwise if the player is soulless and the player-class is not the succubus:
		say "The demon lord pulls out a strange swirling gem and roughly grabs you, holding you in place. [big he of M] then suddenly plunges the stone between your breasts, and you are overcome with a mixture of agony and ecstasy as a pair of horns pushes out of your head![line break][first custom style]'NOW YOU SERVE ME, SLAVE! BLOAT YOURSELF WITH THE SOULS OF THESE FOOLS AND PREPARE TO RENDER YOURSELF UNTO ME AT MY WHIM!'";
		compute succubus transformation;
		bore M;
		rule succeeds;
	otherwise if the player-class is the succubus and M is mating and pentagram tattoo is not worn:
		say "The demon lord traces [his of M] finger around your vagina, burning the shape of a pentagram around it![line break][first custom style]'THIS HOLE IS FOR MY PERSONAL USE ONLY, CONCUBINE! MY WARD WILL SEE THIS IS SO!'[roman type][line break]Xavier considers the situation for a moment, then seems to decide [he of M]'ll hammer the point home, as it were!";
		summon pentagram tattoo.

This is the xavier prioritises defeating others rule:
	let A be the number of undefeated awake monsters in the location of current-monster - the number of undefeated awake infernal monsters in the location of current-monster; [he should ignore demonic monsters like imps]
	if A > 0:
		MonsterStomp current-monster;
		rule succeeds.
The xavier prioritises defeating others rule is listed last in the xavier priority attack rules.

To MonsterStomp (M - demon lord):
	let stomped be 0;
	repeat with N running through undefeated awake monsters in the location of M:
		if stomped is 0 and N is not infernal and N is not penetrating a body part and N is not grabbing the player:
			compute M stomping N;
			now stomped is 1.

The monster fucked taunting rule of demon lord is usually the xavier replaces the monster rule.
This is the xavier replaces the monster rule:
	if diaper quest is 0:
		let M be current-monster;
		let N be a random monster penetrating asshole;[This is the one who's important to get rid of since this is where we're going.]
		if N is monster:
			say "[BigNameDesc of M] kicks the [N] out of the way, and takes over! [big he of M] sticks [his of M] giant [DickDesc of M] in your [asshole], and starts pounding you mercilessly! Fuck!";
			now the sex-length of M is 2;
			now the chosen-orifice of M is asshole;
			destroy N;[TODO: update]
			now M is penetrating asshole;
			ruin asshole.

To compute the orifice choosing of (M - demon lord):
	if pregnancy fetish is 1 and the pregnancy of the player is 0 and vagina is an actual target:
		now the chosen-orifice of M is vagina;
	otherwise:
		if the chosen-orifice of M is nothing or the chosen-orifice of M is not an actual target or a random number between 1 and 3 is 1, now the chosen-orifice of M is a random actual target body part. [If they have already chosen a certain orifice, we only change this 1 in 3 times. This usually give the monster a few attempts to remove underwear, for example. This can be kept the same for any monster that just likes normal sex.]

To compute (M - demon lord) removing (P - an anal beads):
	say "[BigNameDesc of M] glances at your [ShortDesc of P], which disintegrates instantly, leaving your asshole [if the grip of P > 5]to make a lewd 'PLOP' sound as your [asshole]'s sphincter collapses in on the newly emptied space[otherwise]'briefly' empty[end if].";
	destroy P.

To say CondomRejectFlav of (M - demon lord):
	say "[speech style of M]'[one of]FOOL! I HAVE A LATEX ALLERGY[or]NO! IT DOESN'T FEEL AS GOOD[or]I GO BAREBACK IN EVERY HOLE, MORTAL[or]FOOLISH MORTAL! I AM TOO BIG FOR CONDOMS[then at random]!'[roman type][line break]";
	if the player is able to use manual dexterity:
		say "You might be able to force [him of M] to wear a condom, but there might be consequences if you fail. Do you try anyway?";
		if the player is reverse bimbo consenting:
			let D be (the dexterity of the player) / (3 - (the trophy-mode of condom-trophy * 2));
			if the class of the player is fertility goddess, decrease D by 3;
			if the class of the player is worshipper, now D is 0;[worshipper always fails]
			let R be a random number between -1 and D;
			if R < 2:
				say CondomForceSuccessFlav of M;
				now M is wrapped;
				now M is seduction-refused;[makes him damageable and kicks you out of the seduction scene.]
			otherwise:
				say CondomForceFailFlav of M;
				consider angry punishment of M;
	otherwise:
		say "Looks like [he of M]'s going in bare...".

To say CondomForceSuccessFlav of (M - demon lord):
	if chosen-orifice of M is face:
		say "You take out a condom, and before [NameDesc of M] can react, [if the bimbo of the player > 10 and face is not actually occupied]use your mouth to slowly roll it down [his of M] length[otherwise]quickly roll it down [his of M] length[end if], making [one of]sure the rubber is in intimate contact with every inch of the[or]every bump and vein glisten as you stretch and smooth the rubber over [his of M][at random] tool.[line break][speech style of M]'[one of]A CONDOM?! NO! [or]I FELL FOR IT AGAIN?! [stopping]NOOOOOO!'[roman type][line break]";
	otherwise:
		say "You take out a condom and before [NameDesc of M] can react, you grab [his of M] [DickDesc of M] and quickly roll a condom down [his of M] huge length.[line break][speech style of M]'[one of]NO! MY POWERS ARE-! [or]AGAIN?! HOW DOES THIS KEEP HAPPENING?! [stopping]NOOOOOOO!'[roman type][line break]";
	say " [big he of M] groans as if in great pain, and staggers away from you as the condom glows with brilliant light! [big his of M] powerful aura is gone! This is your chance!".

To say CondomForceFailFlav of (M - demon lord):
	say "You take out a condom, but [he of M] reacts immediately, grabbing your wrist and using a bolt of lightning to turn the condom to ash.".

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
		say "[speech style of M][one of]HAHAHA! I WILL HURT YOU ANYWAY![or]HAHAHA! SCREAM FOR ME![or]In that case... I WILL FUCK YOU HARDER![or]NO! HAHAHA![or]YES! BEG FOR MERCY![or]YOU SCREAM LIKE MY FIRST WIFE! HAHAHA![at random][roman type]";
	otherwise:
		say "[speech style of M]'[one of]YES! YES!'[or][if the player is gendered male]HAHAHA! SAY YOU LIKE IT, [caps boy of the player]!'[otherwise]HAHAHA! DO YOU LIKE IT, [caps boy of the player]?'[end if][or][if pregnancy fetish is 1 and F is asshole]ANY HOLE CAN BE BRED MY ME!'[otherwise if pregnancy fetish is 1]HOW DOES IT FEEL TO BE BRED IN MY FAVOURITE HOLE?'[otherwise]HOW DOES IT FEEL TO FUCK A KING, MORTAL!'[end if][or]HAHAHA!'[or]EXPERIENCE FIRE, COCKSLEEVE!'[or]EVEN THE TIGHTEST HOLES WILL SUBMIT TO ME!'[or]POWER! POOWEEER!'[or][if the reaction of the player is 0]SQUIRMING MAKES YOU TIGHTER!'[otherwise]YES! SUBMIT TO ME!'[end if][or]HAHAHA! I SHOULD MAKE YOU A [if the player is gendered male]DUKE[otherwise]DUCHESS[end if]!'[or]FEEL MY POWER!'[or]EXPERIENCE MY POWER!'[or]HAHAHA! POWEEEERRRR!'[or]MY COCK HAS LEVELLED MOUNTAINS!'[or]YES, COCKSLEEVE! [if the reaction of the player is 0]SQUIRM!'[otherwise]SUBMIT TO ME!'[end if][at random][roman type][line break]";
	if the reaction of the player > 0:
		compute sexSubmit of M in F;
		if the reaction of the player is 2:
			ruin F;
			if a random number between 1 and 2 is 1, decrease the sex-length of M by 1;
	otherwise:
		compute sexResist of M in F;
	unless the class of the player is living sex doll, ruin F;
	decrease the sex-length of M by 1;
	say "[one of][M sex reaction][or][cycling]".

To compute facial sex of (M - demon lord):
	if the player-class is succubus:
		say "You feel fulfilled in serving your true Master!";
		dignify 800;
	compute default facial sex of M.

To compute post climax effect of (M - demon lord) in (F - vagina):
	if the class of the player is succubus:
		say "You feel fulfilled as [NameDesc of M][']s mighty seed flows into your [vagina]!";
		dignify 900;
	if there is a worn tattoo and the number of worn crotch tattoos is 0:
		say "With a single finger, [NameDesc of M] burns two words onto your skin, just above your [vagina]. You stare down in disbelief at it - now permanently branded as 'Xavier's Cunt'.";
		summon xavier's cunt tattoo;
		say "[speech style of M]'THE ETERNAL BOND IS COMPLETE. YOU'RE MINE NOW.'[roman type][line break]".

To compute post climax effect of (M - demon lord) in (F - asshole):
	if the player-class is succubus:
		say "You feel fulfilled at satisfying the urges of your Master!";
		dignify 800.

To compute unique climax of (M - demon lord) in (F - a fuckhole):[assumes M is male]
	cutshow figure of xavier cutscene 2 for M;
	if M is wrapped, compute wrapped climax of M in F;
	otherwise compute unprotected climax of M in F.

To decide if (M - demon lord) is losing wrapper in (F - a fuckhole):
	if the girth of M >= the openness of F:[being tight increases your chances of escaping!]
		if the player is getting lucky, decide no;
	otherwise:
		if the player is getting very lucky, decide no;
	decide yes.

To compute condom failure of (M - demon lord) in (F - a fuckhole):
	say CondomFailFlav of M in F;
	now M is unwrapped;
	compute M finishing in F;
	say CreampieReactionFlav to M in F.

To say CondomPieFlav of (M - demon lord) in (F - a fuckhole):
	say GotLuckyFlav;
	say "[BigNameDesc of M] [one of]roars with pleasure, stretching the condom like a water balloon with the sheer force of [his of M] ejaculation[or]groans in pleasure, ejaculating with such force that the condom immediately begins stretching like a water balloon[or]balloons the condom with [his of M] load, roaring with pleasure as the insane force of [his of M] ejaculation causes it to stretch[at random]. The latex inches up [his of M] length as it struggles to contain [his of M] huge load, allowing you to feel every throb of [his of M] [DickDesc of M] that much more intimately than the last as the condom comes closer and closer to coming off completely. By some stroke of [if the semen addiction of the player > 6]bad [end if]luck, [one of][his of M] orgasm dies down just as the condom is about to overflow, and [he of M] begins to pull out[or][he of M] starts to pull out just as it's about to overflow[or]it doesn't overflow, and [his of M] [semen] stays safely behind a layer of latex as [he of M] pulls out[at random]. [big he of M] seems to lose interest.".

To say CondomFailFlav of (M - demon lord) in (O - a fuckhole):
	say "[BigNameDesc of M] [one of]roars with pleasure, stretching the condom like a water balloon with the sheer force of [his of M] ejaculation[or]groans in pleasure, ejaculating with such force that the condom immediately begins stretching like a water balloon[or]balloons the condom with [his of M] load, roaring with pleasure as the insane force of [his of M] ejaculation causes it to stretch[at random]. The latex inches up [his of M] length as it struggles to contain [his of M] huge load, allowing you to feel every throb of [his of M] [DickDesc of M] that much more intimately than the last as the latex comes closer and closer to coming off completely. You [if the semen addiction of the player > 8]coo[otherwise]whimper[end if], [one of]knowing it's far too late to escape[or]held far too tightly to escape[or]completely pinned under [his of M] weight[at random] as a final, powerful spurt forces the condom off completely! [big he of M] laughs powerfully as the impossibly stretched prophylactic floods your [variable O] in reverse, coating every inch of your inner walls and sending the rest cascading down the sides of your legs.".

To decide if (M - demon lord) is willing to creampie (F - a fuckhole):
	let W be a random number between the weight of the player and 0;
	increase W by the difficulty of M;
	if the reaction of the player is 0 or the class of the player is priestess, decrease W by 5;
	if W > 10, decide yes;
	if the number of live things penetrating a body part > 0, decide yes;[can't go flying if there are other people helping to hold you in place]
	decide no.

To say CreampieFlav of (M - demon lord) in (O - a fuckhole):
	say "[one of][BigNameDesc of M] roars with pleasure as [his of M] [DickDesc of M] spasms powerfully, literally flooding your [variable O] with a huge explosion of [semen]! The force of it is immense, and it's only thanks to [his of M] iron-tight grip that you don't go flying across the room.[or][BigNameDesc of M] ejaculates with incredible force, instantly filling your [variable O] with [semen]. You feel yourself lifting off slightly as [his of M] orgasm continues, but [his of M] iron-tight grip forces you to thoroughly endure the entire thing.[or][BigNameDesc of M][']s [DickDesc of M] spasms as it fills your [variable O] with just one spurt of [semen], ejaculating with such force that you can literally feel yourself lifting off. Just as you think you're about to go flying across the room, [he of M] tightens [his of M] grip, keeping you firmly in place as [he of M] fills you with [his of M] titanic load.[at random] Your belly bulges obscenely as the torrent finally weakens, and [he of M] slowly pulls out.".

To compute (M - demon lord) messily pulling out of (F - a fuckhole):
	get messy pull out image of M in F;
	say MessyPullOutFlav of M in F;
	let X be the semen load of M / 3;
	if F is asshole, AssFill X;
	otherwise PussyFill X;
	AnnouncedSquirt semen on thighs by the semen load of M / 3;
	SemenPuddleUp X.

To compute (M - demon lord) cleanly pulling out of (F - a fuckhole):
	get clean pull out image of M in F;
	say PullOutFlav of M in F;
	let X be the semen load of M / 3;
	if F is asshole, AssFill X;
	otherwise PussyFill X;
	SemenPuddleUp X * 2.

To say PullOutFlav of (M - demon lord) in (O - a fuckhole):
	say "[one of][BigNameDesc of M] roars with pleasure as [his of M] [DickDesc of M] spasms powerfully, literally flooding your [variable O] with a huge explosion of [semen]! The force of it is so immense that it literally forces you up and off [his of M] shaft, sending you flying across the room![or][BigNameDesc of M] ejaculates with incredible force, instantly filling your [variable O] with [semen]. You feel yourself lifting off as [his of M] orgasm continues, and with one last powerful spurt you go flying across the room![or][BigNameDesc of M][']s [DickDesc of M] spasms as it fills your [variable O] with just one spurt of [semen], ejaculating with such force that you can literally feel yourself lifting off. All it takes is one last powerful spurt to send you flying across the room![at random] You smack into the opposite wall, [semen] gushing out of your gaping hole as [NameDesc of M] gets to [his of M] feet.".

To say MessyPullOutFlav of (M - demon lord) in (O - a fuckhole):
	say "[one of][BigNameDesc of M] roars with pleasure as [his of M] [DickDesc of M] spasms powerfully, literally flooding your [variable O] with a huge explosion of [semen]! The force of it is so immense that it literally lifts you up and off [his of M] shaft, sending you flying across the room![or][BigNameDesc of M] ejaculates with incredible force, instantly filling your [variable O] with [semen]. You feel yourself lifting off as [his of M] orgasm continues, and with one last powerful spurt you go flying across the room![or][BigNameDesc of M][']s [DickDesc of M] spasms as it fills your [variable O] with just one spurt of [semen], ejaculating with such force that you can literally feel yourself lifting off. All it takes is one last powerful spurt to send you flying across the room![at random] You smack into the opposite wall, [semen] cascading down your legs as [NameDesc of M] gets to [his of M] feet.".

To say StrikingSuccessFlav of (M - demon lord) on (B - a body part):
	say "[BigNameDesc of M] strikes you [TargetName of B] with a large claw! Ouch!!";

To say StrikingFailureFlav of (M - demon lord) on (B - a body part):
	if M is wrapped:
		say "You barely dodge [NameDesc of M]'s claw swipe!";
	otherwise:
		say "You almost dodge [NameDesc of M]'s claw swipe, but [he of M] still hits you with a glancing blow. Ouch!";
		BodyRuin 1.

To compute (M - demon lord) hurting (B - a body part):
	if M is unwrapped, BodyRuin 2;
	otherwise BodyRuin 1.

To compute (M - demon lord) hurting (B - breasts):
	if M is unwrapped, BodyRuin 3;
	otherwise BodyRuin 2.

To compute (M - demon lord) hurting (B - face):
	if M is unwrapped, BodyRuin 3;
	otherwise BodyRuin 2.

To say MouthPenetrationFlav of (M - demon lord):
	say "[BigNameDesc of M] grabs you by your neck and calmly forces your mouth onto [his of M] [DickDesc of M]. Your mouth is forced to stretch almost impossibly wide as [he of M] forces [his of M] massive demon tool down into your throat.[line break][speech style of M]'[if the player is diaper focused][one of]I HAVE DECIDED TO ALLOW YOU TO REMAIN IN YOUR PADDING, INSTEAD YOUR FACE WILL BE USED AS MY FUCKHOLE.'[or]THAT'S IT, TAKE IT ALL, YOU DIAPERED WEAKLING!'[stopping][otherwise]YES, YES! TAKE IT ALL YOU MORTAL WHORE!'[end if][roman type][line break]".

To say NearingClimaxOral of (M - demon lord):
	say "[speech style of M]'GRAAAAAH!'[roman type][line break][BigNameDesc of M] is about to blow!".

To say SwallowDemand of (M - demon lord):
	say "[speech style of M]'[one of]YOU WILL USE YOUR STOMACH AS MY CUM DUMP[or]YOUR BODY MUST BE USED TO STORE MY SEED[or]MY ROYAL SPERM MUST NOT BE SPILLED[in random order]. SWALLOW, NOW.'[roman type][line break]".

To compute angry punishment of (M - demon lord):
	if the player is diapered:
		say "[speech style of M]'INSOLENT MORTAL! YOU WOULD DARE DEFY AN ORDER FROM ME?! YOU WILL REGRET THIS DECISION, I ASSURE YOU.'[roman type][line break][BigNameDesc of M] begins manifesting some kind of energy ball between [his of M] hands, which [he of M] promptly shoots towards your gut. You bend over in extreme pain!";
		PainUp 40;
		say "It seems like the effect of [his of M] magic has not finished, as you feel your ";
		if (diaper messing >= 3 and rectum > 0) or diaper messing >= 4:
			say "large intestine swelling rapidly, as it is filled by something! You have a pretty good idea what...";
			increase rectum by 20;
			bore M;
			if the player is rectum incontinent and asshole is not actually occupied:
				say "A moment later, your sphincter loosens and it begins. ";
				compute partial messing;
		otherwise:
			say "bladder swelling rapidly, quickly to breaking point, and then past it, as you begin [one of]to wet yourself more than you ever have before, and ever thought possible[or]another impossibly long urination[stopping]! ";
			increase the bladder of the player by 28;
			now delayed urination is 1;
			bore M;
			try urinating;
	otherwise:
		let T be a random off-stage anal star tattoo;
		if T is actually summonable and there is a worn tattoo and a random number between 1 and 2 is 1:
			say "[speech style of M]'INSOLENT...'[roman type][line break][BigNameDesc of M] stops mid-sentence, grinning as [he of M] shoves you onto your back and forces your legs up over your head. [big he of M] fires a bolt of red energy from [his of M] finger, which hits your [asshole] and immediately blossoms into a crimson marking in the shape of a star.[line break][speech style of M]'THIS IS THE MARK OF MORTALS WHO DEFY ME! ONE DAY, YOU WILL REGRET THIS.'[roman type][line break]";
			summon T;
		otherwise:
			say "[speech style of M]'INSOLENT MORTAL! YOU WOULD DARE DEFY AN ORDER FROM ME?! YOU WILL REGRET THIS DECISION, I ASSURE YOU.'[roman type][line break][BigNameDesc of M] smacks you with [his of M] tail, sending you flying into the nearby wall with a sickening crunch! The pain is worse than anything you've ever felt before.";
			PainUp 40.

Definition: demon lord is willing to let go: decide no.
To say FriendlySexReleaseRefusalSpeech of (M - demon lord):
	say "[speech style of M]'HAHAHA, YOU MISUNDERSTAND THE TERMS OF OUR BOND!'[roman type][line break]".

Section 2 - DQ

Definition: demon lord is willing to spank: decide yes.

Definition: demon lord is willing to spank gently: decide no.

To decide which number is the spank strength of (M - demon lord):
	decide on 4.

To say SpankingMercyRejectionFlav of (M - demon lord):
	say "[speech style of M]'I DO NOT DO MERCY.'[roman type][line break][BigNameDesc of M] ignores your pleas.".

To say SpankingStartFlav of (M - demon lord):
	say "[BigNameDesc of M][one of][']s eyes glow a fearsome red, but before you could stare at them too long you begin to levitate into the air.[or] picks you up off of the ground with [his of M] tail! You're suspended in mid-air, there's no way you can get away now![cycling]".

To say SpankingFlav of (M - demon lord):
	say "[one of]A series of stinging hot flashes smack into your tender behind in an inconsistent rhythm so you can't brace for the visceral impacts[or][BigNameDesc of M] delivers several powerful blows to your [buttcheeks][stopping]!".

To say SpankingDeclarationFlav of (M - demon lord):
	say "[speech style of M]'HOW SHALL I TORTURE YOU...'[roman type][line break]".

To say SpankingAfterFlav of (M - demon lord):
	say "After this [he of M] seems satisfied, and mercilessly drops you to the ground.".

To say DQSpankResistReactionFlav of (M - demon lord):
	say "[BigNameDesc of M] [one of]grins[or]looks bemused[at random].[line break][speech style of M]'[one of]Surely a weak little lamb like you knows better than to try that.'[or]Really now? How precious... this is a resistance even a baby slave would giggle at!'[or]Keep this going and I won't stop until you call me [daddytitle of M]!'[or]You know what would complete this picture? Squeak, yes squeak for me little thing.'[or]Come now, all you're doing is exciting me.'[in random order][roman type][line break]".

To say DiaperReaction of (M - demon lord):
	say "[BigNameDesc of M] laughs, with a deep booming tone.[line break][speech style of M]'[one of]YES, I SEE YOU ARE LEARNING YOUR TRUE ROLE AS A PATHETIC DIAPERED MORTAL[or]YOU ARE SO PATHETIC THAT YOU CANNOT EVEN WAIT TO BE ALONE BEFORE SOILING YOUR OWN GARMENTS[at random]!'[roman type][line break]".

To compute diaper mess reaction of (M - demon lord):
	if diaper quest is 1:
		say "[BigNameDesc of M] watches you with glee.[line break][speech style of M]'BWAHAHAHAHA! I HAVE SEEN WEAK MORTALS IN MY TIME, BUT YOU ARE TRULY THE MOST PATHETIC LIVING CREATURE TO EVER ENTER THESE HALLS[one of]! TO BE UNABLE TO CONTROL SOMETHING SO BASIC... THIS IS A FATE WORSE THAN DEATH[or][stopping].'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] looks at you with pure disgust in [his of M] eyes.[line break][speech style of M]'I DID NOT THINK THAT EVEN HUMANS WOULD DEBASE THEMSELVES TO SUCH DISGUSTING LEVELS[if M is uninterested]. GET OUT OF MY SIGHT[end if].'[roman type][line break]";
	if voluntarySquatting is 1, say obsceneHumiliateReflect;
	otherwise say severeHumiliateReflect.

Section 3 - Nightmares

xavier-nightmare is a kind of diaper punishment. The priority of a xavier-nightmare is 5.

Definition: a xavier-nightmare (called P) is appropriate:
	if current-monster is not demon lord, decide no;
	decide yes.

To say DemonNightmareStartFlav:
	say "[BigNameDesc of current-monster] waves [his of current-monster] hands and red light shoots up from the ground all around you, obscuring your vision. Suddenly, you hear a voice in your head.[line break][first custom style]'TODAY YOU WILL BE A SERVANT FOR MY FAMILY.'[roman type][line break]And then the red lights disappear, and [one of]you find yourself on your knees in front of a huge castle. A blood red sky evidences that you are now in the demon realm[or]you are once again at the entrance to Xavier's castle[stopping]. Two demons clad in heavy rusting platemail take you by the arms and drag you inside.";

Section - DQ Nightmare

xavier-nightmare-diaper is a xavier-nightmare.

The priority of xavier-nightmare-diaper is 5.

xavier-diaper-link is a number that varies.

To compute punishment of (P - xavier-nightmare-diaper):
	now the priority of P is 0; [can only happen once]
	let M be current-monster;
	let K be a random worn knickers;
	say "[DemonNightmareStartFlav]";
	say "[second custom style]'Well aren't you a scrumptious one.'[roman type][line break]You find yourself alone kneeling in front of a seven foot high lady demon in a luxurious castle bedroom. Her curvaceous figure and powerful limbs are matched by a deep, confident and yet still very feminine voice. Her only item of clothing is a chunky diaper with a red pentagram printed on the front. It looks completely unused.[line break][second custom style]'Excellent, a vacancy just opened up. I have the perfect role for you[if K is clothing]. Now remove that undergarment[end if].'[roman type][line break]";
	if K is clothing:
		say "She points to your [ShortDesc of K], and before you can even react, a huge slice appears all the way across it, and it falls from your body in tatters.";
		if K is messed: [need to check before we destroy and reset it]
			if K is perceived unmessed, say "She looks at your bottom with disgust, and you realise it's messy - you must have gone number two without even feeling it.";
			otherwise say "She looks at your messy bottom with disgust.";
			destroy K;
			say "[second custom style]'Ugh. GUARDS! Take [him of the player] for cleansing.'[roman type][line break]The armoured demons reappear at the doorway and lift you into the air between them, before taking you down the hall to where you can hear the sound of rushing water. Through another door you find yourself face to face with a gushing waterfall which comes out of a hole in the ceiling and then disappears through a grate in the ground. Maybe the castle was built around this natural water feature, or maybe it's more complicated than that, it's unclear. Either way you are dunked unceremoniously into the powerful jet and shaken around until your bottom is all clean, and then you are wordlessly brought back to your new 'employer'.";
		otherwise:
			destroy K;
	say "[second custom style]'Okay now here, put this on.'[roman type][line break]Again before you can really choose whether to accept, it's just happening. A big thick pink diaper is rocketing across the room towards your nether regions, and before you can say 'Hmm I'm not sure if I'm completely comfortable with where this is going' it is forcing your feet through its leg-holes. You look down and see it too has a big pentagram etched in the front. You start to feel rather nervous, and this feeling is exacerbated by her next words.[line break][second custom style]'Let us begin the ritual.'[roman type][line break]Words of trepidation choke up in your throat due to the size and sheer aura of dominance surrounding the demoness. She guides you gently but firmly over to a pentagram on the floor in the centre of her bedroom. As she takes both your hands in hers the pentagram's lines immediately start shining with a brilliant purple glow.[line break][second custom style]'Repeat after me. [']I, [NameBimbo]['],'[line break][variable custom style]'I, [NameBimbo]...'[roman type][line break]Something inside you is entranced by her magnificence and anyway you can't see any other reasonable course of action. It feels like she could probably crush you with a small flick of her tail.[line break][second custom style]'Consent to serve...'[line break][variable custom style]'Consent to serve...'[line break][second custom style]'My body and padding shall be hers...'[line break][variable custom style]'My body and padding shall be hers...' Wait, what am I getting myself into?[line break][second custom style]'In her time of need...'[line break][variable custom style]'In her time of need...'[line break][second custom style]'Wherever I may be.'[line break][variable custom style]'Wherever I may be.'[roman type][line break]The glowing begins to fade.";
	summon demon-diaper;
	if there is a worn tattoo and the number of worn crotch tattoos is 0:
		summon demon link mark;
		say "A sharp sting over your crotch lets you know you suddenly have a new tattoo! You can't see it but you can sense you have a pentagram permanently marked above your crotch. ";
	now xavier-diaper-link is 1;
	say "You feel a weird pang behind your [genitals]. Like it's not completely yours any more.[line break][second custom style]'Now follow me. And remember, potty [boy of the player]s are supposed to be seen, not heard.'[roman type][line break]";
	if diaper messing < 3, cutshow figure of cutscene-xavier-nightmare-diaper-clean;
	say "You are led from the bedroom throughout the castle, accompanying your Mistress on her queenly duties, including inspecting the troops, settling disputes amongst the common demons, and eating dinner with some demon knights. During this whole time you stay silent with your head down, standing two paces behind her, to her left side. At dinner you are seated next to her, but you are so small compared to her and the other demons that you might as well be a child, feeling a little lost in the adult- that is, the demon-sized chair. Your feet don't even touch the floor, meaning all your weight is on your thick padding. Towards the end of the meal, you notice your Lady arch her back and sigh gently. None of the other demons show that they noticed, if indeed any did. At the same time you feel the weirdest sensation - [if diaper messing >= 3]your sphincter opens wide to allow a thick soft log to exit. At the same time [end if]urine squirts out of your urethra, even though you can feel you're not pushing and nothing is exiting your bladder. It's like a ghost is sitting in your exact position, with his or her pee[if diaper messing >= 3] and poop[end if] materialising as it emerges! The hissing and crinkling sounds fill the hall, making your face turn red. You understand what is happening - the Demon Queen is going to the toilet, but it's appearing in your diaper instead of hers! And since she's so much bigger than you, she has a [italic type]lot[roman type] of waste to get out of her system. Your padding bulges from beneath you, visibly pushing you an inch higher up off of the chair.";
	if diaper messing >= 3, cutshow figure of cutscene-xavier-nightmare-diaper-messy;
	say "[second custom style]'Really now, how disgusting!'[roman type][line break]Your Mistress chides you in a fake offended tone.[line break][second custom style]'Using your diaper at the dinner table. Really now! Get out of here [if diaper messing >= 3]before you stink the whole room up[otherwise]now[end if]! Get a change and then return to my chambers. I'll punish you later.'[roman type][line break]With face and ears as red as hers and a full [if diaper messing >= 3]and [end if]soggy nappy you sulkily waddle your way out of the room, studying the ground intensely as you do. You are halfway through the castle back to the waterfall when you hear a gurgling sound coming from below. Moments later your diaper is completely dry and clean![line break][variable custom style]Wow, that's... magic.[roman type][line break]You wait for the Queen to return to her bedroom, which takes hours. During this time you end up testing your diaper yourself, and find that after a [if diaper messing is 3]few moments[otherwise]minute or so[end if] it cleans itself in the same way. Finally, your Mistress returns.[line break][second custom style]'Excellent job, pet. You'll make a good potty servant. It's a shame you'll have to do it from afar for now though. I can feel that Xavier's magic is fading. Soon you will return to the mortal realm... for now. However, you are now eternally bonded to me, until the day I sever the connection or you die. So I'm sure you'll never forget me.'[roman type][line break]She and her world start to fade away.[line break][second custom style]'If I were you, I would try and keep hold of that diaper for as long as possible...'[roman type][line break]";
	say "You find yourself on the ground back in front of [NameDesc of M]. You feel just as exhausted as you did in the moment of your defeat.";
	say "[speech style of M]'YOU ARE FORTUNATE I AM RECOVERING MY STRENGTH AND CAN ONLY KEEP YOU THERE FOR A SHORT WHILE AT A TIME... IN THE FUTURE IT WILL BE LONGER! HA HA HA! UNTIL NEXT TIME, CHILD.'[roman type][line break]";
	satisfy M.

xavier-nightmare-gag is a xavier-nightmare.

Definition: xavier-nightmare-gag is appropriate:
	if current-monster is demon lord, decide yes;
	decide no.

The priority of xavier-nightmare-gag is 5.

xavier-throat-link is a number that varies.

To compute punishment of (P - xavier-nightmare-gag):
	now the priority of P is 0; [can only happen once]
	let M be current-monster;
	let K be a random worn knickers;
	say "[DemonNightmareStartFlav]";
	say "[second custom style]'Ooh yes, [he of the player][']s perfect!'[roman type][line break]You find yourself alone kneeling in front of a six foot high female demon in a large posh garden. Her tall, powerful figure is contrasted by a high-pitched feminine voice. She is clutching a large diapered doll with a curiously life-like expression. The garden itself is extremely large and well-kept, the sort of thing you would expect to see at only the grandest of estates. This demon is rich.[line break][second custom style]'Thank you [daddytitle of M]! [big he of the player][']ll fit right in place!'[line break][variable custom style]Is she calling Xavier '[daddytitle of M]'? That probably means this is [his of M] daughter.[roman type][line break]";
	if K is clothing and K is not an unmessed dry massive diaper and K is not demon-diaper:
		say "[if K is diaper and the DQBulk of K < 7][second custom style]'That's not near big enough!'[roman type][line break][end if]She points to your [ShortDesc of K], and before you can even react, a huge slice appears all the way across it, and it falls from your body in tatters.";
		if K is messed: [need to check before we destroy and reset it]
			if K is perceived unmessed, say "She looks at your bottom with disgust, and you realise it's messy - you must have gone number two without even feeling it.";
			otherwise say "She looks at your messy bottom with disgust.";
			destroy K;
			say "[line break][second custom style]'Yuck. HEY, GUARDS! Do something about this [please].'[roman type][line break]Two armoured demons appear and lift you into the air between them, before taking you deeper into the garden to where you can hear the sound of rushing water. Past another hedge you find yourself face to face with a gushing fountain. You are dunked unceremoniously into the powerful jet and shaken around until your bottom is all clean, and then you are wordlessly brought back to your new 'employer'.";
		otherwise:
			destroy K;
	if K is not worn:
		say "[second custom style]'Okay now it's time to diaper my new water feature!'[line break][variable custom style]Did she say 'water feature'?![roman type][line break]You are too busy thinking about what she just said that you barely even register the big thick disposable diaper rocketing across the room towards your nether regions and taping itself shut around you[if xavier-diaper-link > 0]. This one does not have a big pentagram etched in the front, but is probably twice as bulky[end if].";
		summon plain-massive-diaper;
		now K is plain-massive-diaper;
	clean K;
	UrineSoakUp K by the soak-limit of K;
	now xavier-throat-link is 1;
	say "Your mouth is forced open and a metal ring gag is worked inside. You [if the player is feeling submissive]remain obediently silent and allow it to happen[otherwise]try to complain but your words are now unintelligible.[line break][variable custom style][muffled sounds][roman type][line break][end if]";
	if ring gag is actually summonable, summon ring gag locked;
	say "You feel a weird pang in your throat, like the gag is performing some kind of magical redesign of your gullet. You squirm nervously.[line break][second custom style]'Yay, I think it's working! My brother is a genius.'[roman type][line break]That does little to settle your stomach, but it doesn't matter what you think. The muscular girl-demon leads you to a place where a thin stone slab sits on the ground, like there's something missing that is supposed to be on top of it. You realise that's probably supposed to be you. Your new owner confirms your suspicions.[line break][second custom style]'Go on then, get up there, slave!'[roman type][line break]After a moment of hesitation you stand in place, and turn to face her. Nothing happens.[line break][second custom style]'Hold your arms out to the side, obviously!'[roman type][line break]That was hardly obvious, but now that you've been given the instruction, you quickly do as you are told. And as your arms reach horizontal, the ground begins to shake. Two stone pillars begin to emerge from the ground either side of you, underneath your hands. You expect your hands to be knocked out of the way but instead the pillars phase straight through them. Your immediate reaction is to pull your hands back but they're now completely stuck, sealed inside the concrete! As you struggle to move your arms, a thin plank of stone emerges from each pillar at neck height, connecting around your neck and welding themselves together perfectly. You now can't move your arms or your neck!";
	say "[second custom style]'Oopsie! Looks like you're stuck!'[roman type][line break]Your captor teases you as she turns to adjust something behind her. As she walks away from it you can see what it is - some kind of water jet! And now she appears to be turning a valve...![line break][second custom style]'Ready, aim fire!'[roman type][line break]A powerful blast of water shoots in an arc from the jet, right into your open mouth. You have no choice but to begin drinking, to avoid choking![line break][second custom style]'Congratulations, you are now a water feature! I'll come and change you whenever I remember.'[roman type][line break]And just like that, you are left alone.";
	appropriate-cutscene-display figure of cutscene-xavier-nightmare-gag-clean;
	say "As you drink, something weird happens. You feel the liquid travelling down your throat, and then it just hits your bladder instantly. [if the player is bladder incontinent]Due to your incontinence you are powerless to prevent yourself from peeing immediately[otherwise]It's not long at all until you are bursting and so you are soon forced to wet your diaper[end if]. Thankfully your diaper is so giant that there's still a lot of dry padding left. For now. You reflect on what just happened - it seems like your stomach is now directly connected to your bladder, in some kind of magic fashion. Everything you drink - and there's a lot - is going straight into your bladder. And since you're being forced to drink such a lot, it's all coming out pretty immediately too. You're essentially stuck in a permanent state of both drinking and peeing, which means that your diaper is gradually getting heavier and heavier. No matter how big it is, it's got to get full at some point, right?![line break]But no matter how much you pee, it doesn't seem to leak. And you keep on peeing. The demon plane's sun moves across the sky and you have nothing to do but drink and wee, drink and wee.[line break][italic type]Glug glug glug[line break]Hsssssss[roman type][line break]Eventually it gets to the point where you can't really remember what it feels like to not be peeing. It just feels normal to be permanently urinating. It's like it's your natural state. And still time moves forward. Day turns to night, and night to day. It must be nearly 24 hours since you were imprisoned here. With nothing to stimulate your attention, time slowly begins to lose meaning. All you know is drinking and wetting. Your diaper feels so heavy that it's like it's made of lead. Another day passes, and then another night. Xavier's daughter is nowhere to be seen. Will nobody come to release you? Why do you not feel hungry, or tired? Are those just weird quirks of this infernal dimension, or is it some magic effect that has been specifically applied to you? Does it matter? But you have nothing better to occupy your mind than questions like this.";
	appropriate-cutscene-display figure of cutscene-xavier-nightmare-gag-wet;
	say "On the third day, Xavier's daughter does finally return. You are so happy just to see another face that you gurgle with glee.[line break][second custom style]'Hey there little miss soggy bottom, how are you settling in? From what I understand, the first thousand years are going to be the worst. After that you get used to it.'[roman type][line break]That makes your eyes widen with horror.[variable custom style][muffled sounds][line break][second custom style]'Yeah I thought you might say something like that. Well, too bad, you're mine now.'[roman type][line break]Just at that moment, the demon girl's form seems to begin to shimmer. No wait, the whole world is shimmering! Every second it's fading more and more.[line break][second custom style]'Yeah, only kidding, [daddytitle of M] says you have to go back now. So I just came to say goodbye and to thank you for being such a good water feature. But I hope you come and play again soon!'[roman type][line break]You manage to sound one final gurgle of relief before she completely disappears from view.";
	say "You find yourself on the ground back in front of [NameDesc of M]. You feel just as exhausted as you did in the moment of your defeat.";
	say "[speech style of M]'I GUESS YOU ARE VERY LUCKY THAT DUE TO MY WEAKENED FORM I HAD TO EVENTUALLY BRING YOU BACK! MAYBE NEXT TIME WE MEET, MY POWERS WILL HAVE FULLY RETURNED AND I CAN KEEP YOU AS MY DAUGHTER'S STATUE FOREVER! HA HA HA! UNTIL NEXT TIME, CHILD.'[roman type][line break]";
	satisfy M;
	say "[variable custom style]Did that all just happen in my head? It doesn't feel like three days have past... but who knows in this place! One thing's for sure, I'm still in this giant soaked diaper. And my throat still feels... weird...[roman type][line break]".

xavier-nightmare-belt is a xavier-nightmare.

Definition: xavier-nightmare-belt is appropriate:
	if current-monster is demon lord, decide yes;
	decide no.

The priority of xavier-nightmare-belt is 5.

xavier-belt-link is a number that varies.

To compute punishment of (P - xavier-nightmare-belt):
	now the priority of P is 0; [can only happen once]
	let M be current-monster;
	let K be a random worn knickers;
	let R be a random worn diaper;
	if K is diaper, now K is the player;
	let D be a random eligible diaper;
	let BL be a random worn belt;
	say "[DemonNightmareStartFlav]";
	say "[first custom style]'Yes, this one will do.'[roman type][line break]The guards are holding you down on your knees in front of a male demon. Even though he is six feet tall you can tell he is rather young for a demon. Rather than the shining metal you've seen all the other males wearing, this demon has a modest (but still high quality) brown leather robe and sandals. He's also wearing glasses. You didn't even know demons could have problems with their eyesight - but then you don't know much about demons at all.[line break][first custom style]'It will be the perfect guinea pig for my latest invention. Send my thanks to my [fathertext of M].'[line break][variable custom style]Ah. So he's Xavier's son.[line break][first custom style]'[big please], sit at the table[if K is clothing]. But first, you won't be needing that[end if].'[roman type][line break]";
	if K is clothing:
		say "He snaps his fingers and your [ShortDesc of K] vanishes[if K is perceived messed], along with all the mess[end if]!";
		destroy K;
	if there is a worn messed diaper:
		if there is a worn perceived messed diaper, say "He snaps his fingers and all the mess disappears from your [ShortDesc of R]!";
		MessSet R to 0;
		now the foreign-mess of R is 0;
	if there is a worn diaper:
		say "[first custom style]'Okay now here, put this on.'[roman type][line break][if xavier-diaper-link is 1]Just like with his mother, the[otherwise]The[end if] young demon uses a flick of his finger to summon something - ";
	otherwise:
		summon D;
		say "[first custom style]'Okay now. Here, put these on.'[roman type][line break][if xavier-diaper-link is 1]Just like with his mother, the[otherwise]The[end if] young demon uses a flick of his finger to send a big thick disposable diaper rocketing across the room towards your nether regions, wrapping itself around your loins and taping itself shut. But that's not all - ";
	say "a belt comes whizzing at you from one corner of the room and locks itself around your waist[if BL is belt], destroying your [ShortDesc of BL] as it does[end if]. It has a strange symbol made out of hexagons on the front, and you feel something magic radiate inside of you. You watch in [horror the diaper addiction of the player] as you feel the contents of your bladder [if diaper messing >= 3]and rectum [end if]multiply rapidly in size, making your belly expand and round out. You look like you're six or seven months pregnant.";
	if BL is belt, destroy BL;
	summon demon belt;
	now xavier-belt-link is 2;
	if there is a worn tattoo and the number of worn belly-tattoos is 0:
		summon demon belly mark;
		say "A tingling feeling over your belly lets you know you also have a new tattoo! You can't see it but you can sense you have a pentagram permanently marked around your belly button.";
	say "[first custom style]'Okay, now your job is to try and finish this. And you'd better try your hardest - if you can't get through it all in twenty minutes, you'll spend the rest of your time here strapped to an automatic spanking machine.'[roman type][line break]You frown, still confused. In front of you is a bowl of runny green soup[if diaper messing >= 3] and a small loaf of crusty bread[end if]. Even though you're feeling very full, surely it won't take you longer than a few minutes to finish the [if diaper messing >= 3]meal[otherwise]liquid snack[end if]. You sit down, wincing as your belly [if diaper messing >= 3]growls angrily[otherwise]sloshes loudly[end if] as you move. You pick up your first spoonful of the soup and bring it to your lips, pleasantly surprised by the healthy taste of peas and mint. You swallow it without a problem[if diaper messing >= 3], quickly following it up with a bite of the bread[end if].[line break][bold type]GRUMBLE[roman type][line break]As soon as it makes its way to your stomach, you feel the magic of your new belt at work. ";
	if diaper messing < 3, appropriate-cutscene-display figure of cutscene-xavier-nightmare-belt-clean;
	say "The matter inside you doubles, triples, quadruples in volume, and keeps going! Your belly bulges and swells and expands, making you look like you're eight months pregnant. The pressure on your bladder[if diaper messing >= 3] and bowels[end if] is now immediately too much - you instantly wet[if diaper messing >= 3] and mess[end if] yourself, beginning to fill your [if D is worn]new [end if]diaper with your shame. By the time your belly has visibly deflated a bit and you are able to regain control of your body, your diaper is already feeling rather soggy and full.";
	if diaper messing >= 3, appropriate-cutscene-display figure of cutscene-xavier-nightmare-belt-messy;
	[TODO add some sort of choice to make, so that these images definitely appear]
	say "The true nature of your predicament dawns on you. Whatever you consume will now multiply in quantity many times as it reaches your stomach - and you somehow know this new enchantment is irreversibly permanent. Your short term problem becomes abundantly clear - you effectively have eight to ten servings in front of you to somehow force down. Each spoonful is essentially a whole meal![paragraph break]";
	say "The effects of the next spoonful is just as bad as the first. As soon as the soup hits your stomach, you find yourself immediately peeing[if diaper messing >= 3] and pooping[end if], filling the room with more hissing and crinkling and driving you wild with [if the diaper addiction of the player > 13]arousal[otherwise]shame[end if]. This time you find yourself allowing your body to continue excavating itself, emptying your entire [if diaper messing >= 3]belly[otherwise]bladder[end if] load into your now overly full nappy. The demon prince gives a childish snigger before snapping his fingers, causing your diaper to become completely dry once again.";
	say "[first custom style]'Poor baby can't hold her [if diaper messing >= 3]bottom back[otherwise]tinkles[end if] at all! You're going to go through a LOT of diapers from now on, aren't you?'[roman type][line break]You can't deny it - that seems like an inevitable truth.[line break][first custom style]'Did I tell you to stop? Keep going.'[roman type][line break]You sigh and submissively return to slurping down spoonfuls of soup[if diaper messing >= 3] in between bites of bread[end if]. Each mouthful turns very quickly into another soiling session, meaning you spend the next ten minutes in an almost permanent state of using your diaper, with it getting magically cleaned every time it reaches the brink of overflowing. When you are close to the end of your magic mega meal, the prince interrupts you once more.[line break][first custom style]'Okay, this has been fun. The invention has been a complete success. For our final little test, I want you to hold it all in until the end, now.'[roman type][line break]You groan but comply, feeling your belly strain and grow to sizes impossible from just [if diaper messing >= 3]drink[otherwise]food[end if] in the real world. But finally you are done! And just as well - you're going to burst any second. He laughs vindictively.[line break][first custom style]'I think I'll leave this one for my [fathertext of M] to witness.'[roman type][line break]He snaps his fingers one final time and his world quickly disappears.[line break]";
	if diaper messing >= 3, now rectum is 30;
	now the bladder of the player is 40;
	say "You find yourself on the ground back in front of [NameDesc of M]. You feel just as exhausted as you did in the moment of your defeat, but you are now also impossibly full of [if diaper messing >= 3]food and [end if]drink. You look up at [NameDesc of M] and lock eyes just as it begins.";
	if diaper messing >= 3 and asshole is not actually occupied:
		compute partial messing;
	otherwise:
		now delayed urination is 1;
		try urinating;
	if M is interested, satisfy M.

Section 4 - Final Battle

Check seducing demon lord when ex-princess is guarding and ex-princess is in the location:
	say "[big he of demon lord] is a bit preoccupied with battling [NameDesc of ex-princess]!" instead.

A final-battle-object is a kind of object. A final-battle-object has a number called uses.
Definition: a final-battle-object is eligible:
	if the uses of it is 0, decide yes;
	decide no.
Definition: a final-battle-object is appropriate: decide yes.

final-battle-magic-clash is a final-battle-object.
Definition: final-battle-magic-clash is appropriate: decide no.

current-final-battle-object is an object that varies.

To compute princess attack before (F - a final-battle-object):
	say "[speech style of ex-princess]'I [if diaper quest is 1][one of]am a pathetic little pisspot[or]deserve to be degraded[or]need thicker padding or I'm gonna leak[or]cum when I wet myself[or]am a naughty little minx in need of a good hard spanking[in random order][otherwise][one of]was born to be bred[or]deserve to drink nothing but cum[or]am a pathetic little fuckpuppet[or]need a good rough fisting[or]want my holes to be wrecked beyond recognition[in random order][end if]!'[roman type][line break]After shouting the incantation, [NameDesc of ex-princess] [one of]blasts [NameDesc of demon lord] with a ray of freezing cold[or]pierces [NameDesc of demon lord] with a beam of holy energy[or]conjures an explosive blast right underneath [NameDesc of demon lord][']s feet[or]summons a tornado around [NameDesc of demon lord], ripping shreds out of [his of demon lord] skin[or]manifests a minuscule singularity, warping spacetime near [NameDesc of demon lord] and rending [his of demon lord] flesh[in random order]! [BigNameDesc of demon lord] roars in pain.";
	decrease the health of demon lord by the maxhealth of demon lord / 8;
	if the health of demon lord > 0, say "[speech style of demon lord]'[one of]I'LL GET YOU FOR THAT[or]FUCK YOU, YOU VILE [if diaper quest is 1]THING[otherwise]WHORE[end if][or]I WILL MAKE YOU REGRET THIS[in random order]!'[roman type][line break]".
To commence (F - a final-battle-object):
	say "ERROR: a final battle object is missing its commencement function!".
To execute (F - a final-battle-object):
	say "[BigNameDesc of demon lord] and [NameDesc of ex-princess] fire magical energy blasts at each other! They both expend a significant amount of magical energy, and both of them take some damage.";
	decrease the health of demon lord by the maxhealth of demon lord / 8;
	decrease the health of ex-princess by the maxhealth of ex-princess / 8.

final-battle-wand-curse is a final-battle-object.
Definition: final-battle-wand-curse is appropriate: decide no.
To execute (F - final-battle-wand-curse):
	decrease the health of ex-princess by the maxhealth of ex-princess / 12;
	say "[BigNameDesc of demon lord] is busy using one hand to maintain [his of demon lord] curse on [NameDesc of ex-princess][']s wand.[paragraph break][BigNameDesc of ex-princess] can't stop masturbating [himself of ex-princess] with [his of ex-princess] wand! [one of][big he of ex-princess] tries to speak to you in between lewd moans.[line break][speech style of ex-princess]'C-can't fight like this... [NameBimbo]... I need your help!'[roman type][line break][or][line break][speech style of ex-princess]'[one of]Cumming[or]Can't stop cumming[or]Another one! Fuck[then at random]!'[roman type][line break][BigNameDesc of ex-princess] [one of]quivers as [he of ex-princess] cums[or]shivers with bliss[or]shakes all over[or][if diaper quest is 1]audibly squirts into [his of ex-princess] diaper[otherwise]squirts, soaking [his of ex-princess] panties[end if][stopping].[stopping][line break][if the health of ex-princess > 0]You can [bold type]pull[roman type] [him of ex-princess] to help [him of ex-princess] out[one of] of this tricky situation[or][stopping].[end if]".
Check pulling ex-princess when ex-princess is guarding and current-final-battle-object is final-battle-wand-curse:
	if the player is immobile, say "You're a bit tied up right now!" instead;
	let E be a random worn hand ready clothing;
	if E is clothing and E is not cursed and E is not locked, say "You'll need to drop [NameDesc of E] first, so that you have a free hand." instead;
	allocate 6 seconds;
	say "You run over to [NameDesc of ex-princess] and try to yank the wand out of [his of ex-princess] hand!";
	if E is clothing:
		say "Your [E] drops to the ground, and your hand clasps around [NameDesc of royal scepter]!";
		now E is in the location of the player;
	summon royal scepter uncursed;
	now royal scepter is cursed;
	now the quest of royal scepter is cursed-orgasm-quest;
	say "Instantly [NameDesc of ex-princess] is able to release the wand and return to battling [NameDesc of demon lord]. But now you find yourself in the same position as [NameDesc of ex-princess], forced to masturbate yourself with the wand!";
	now current-final-battle-object is final-battle-magic-clash; [this object has concluded]
	now another-turn is 1;
	now another-turn-stored-action is masturbating;
	do nothing instead.

Check masturbating when royal scepter is worn cursed clothing:
	if the quest of royal scepter is cursed-orgasm-quest:
		allocate 6 seconds;
		say "You can't stop yourself from bringing [NameDesc of royal scepter] to your [genitals]! The powerful magic buzzing sends you straight into a powerful climax.";
		if the player is possessing a vagina:
			trigger shameful orgasm of vagina;
		otherwise if the player is possessing a penis:
			trigger shameful orgasm of penis;
		progress quest of cursed-orgasm-quest.

final-battle-stunned is a final-battle-object.
Definition: final-battle-stunned is appropriate: decide no.
To execute (F - final-battle-stunned):
	say "For a moment, [NameDesc of ex-princess] is too exhausted to move. [BigNameDesc of demon lord] takes the opportunity to leap forward and slash at [NameDesc of ex-princess] with [his of demon lord] tail. [BigNameDesc of ex-princess] shrieks in pain as [he of ex-princess] is slashed by the sharp spike at the tip!";
	decrease the health of ex-princess by the maxhealth of ex-princess / 8;
	now current-final-battle-object is final-battle-magic-clash. [this object has concluded]

final-battle-imp-piss is a final-battle-object. final-battle-imp-piss has a number called suffocation.
Definition: final-battle-imp-piss is appropriate:
	if watersports fetish is 1, decide yes;
	decide no.
To commence (F - final-battle-imp-piss):
	say "[BigNameDesc of demon lord] raises a hand to the sky, extends a finger, and makes a circular motion. A portal opens in the air above [NameDesc of ex-princess][']s head! Suddenly, four magical golden chains shoot out of the portal and clank into place just above [NameDesc of ex-princess][']s golden hair, connected to... a small glass box?! [NameDesc of ex-princess][']s head is now encased in a transparent box, open at the top. The box is fixed in place by the chains and so [he of ex-princess] can't move from the spot.[line break][speech style of demon lord]'Oooh, lookie here!'[roman type][line break]An imp is peeking [his of a random imp] head through the portal, and is soon joined by several more.[line break][speech style of demon lord]'A human toilet, just for us!'[roman type][line break]Another snickers, as they all whip out their [manly-penis]s.[line break][speech style of ex-princess]'Don't you dare... glaaargh!'[roman type][line break][BigNameDesc of ex-princess][']s words are turned into a panicked gargle as several streams of hot infernal [urine] spray onto [his of ex-princess] hair and face. The box begins to fill up, from the bottom.[line break][speech style of demon lord]'I WONDER, PRINCESS, CAN I KEEP THIS PORTAL STABLE FOR LONG ENOUGH THAT YOU DROWN IN IMP PISS? ONLY ONE WAY TO FIND OUT! HAHAHA!'[roman type][line break][BigNameDesc of demon lord][']s mocking call makes the situation clear enough. At some point [his of demon lord] portal will disappear and then [NameDesc of ex-princess] will be saved. But if [he of demon lord] can hold it open for long enough, then [NameDesc of ex-princess] will drown in the [urine]. Perhaps [he of ex-princess] can buy [himself of ex-princess] some time if [he of ex-princess] drinks some.[paragraph break]Or if you drink some...";
	execute F.
To execute (F - final-battle-imp-piss):
	say "[BigNameDesc of demon lord] is busy focusing on maintaining [his of demon lord] portal. Meanwhile, [urine] rains down from the crowd of imps above, filling [NameDesc of ex-princess][']s box.[line break]The box is currently full up to [his of ex-princess] [if the uses of F is 1]chin[otherwise if the uses of F is 2]mouth[otherwise if the uses of F is 3]nose[otherwise if the uses of F is 4]eyes[otherwise if the uses of F is 5]forehead[otherwise]hair[end if][if the uses of F >= 3] - [bold type][he of ex-princess] can't breathe![roman type][line break][otherwise]. [end if][if the uses of F > 1][BigNameDesc of ex-princess] [one of]tries to swallow as much as [he of ex-princess] can, but it's still coming in faster than [he of ex-princess] can drink it![or]keeps trying to drink as much as [he of ex-princess] can.[stopping][otherwise][line break][end if]";
	if the uses of F is 1:
		say "[speech style of ex-princess]'Oh god... [NameBimbo], is there any way you could find it within yourself to help me do this?'[roman type][line break][BigNameDesc of ex-princess] manifests a long bendy straw which leads from the pissbox down to you. This way, you can help suck the piss out of the box and keep the level low.";
		now player-numerical-response is 0;
	otherwise:
		if the player is immobile or the player is flying or another-turn is 1:
			now player-numerical-response is 0;
		otherwise:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "suck [urine] through the straw, spitting as you go (slower)";
			set numerical response 2 to "suck [urine] through the straw, swallowing as you go (faster)";
			set numerical response 0 to "do something else";
			compute multiple choice question;
		if player-numerical-response is 1:
			say "You take the straw and suck up a big mouthful of [urine]. Pulling back, you spit it out onto the floor.";
			UrinePuddleUp 4;
			if a random number between 1 and 2 is 1, decrease the uses of F by 1;
			if a random number between 1 and 20 > the raw urine taste addiction of the player, compute slightly addictive tasting of urine;
			now another-turn is 1;
		otherwise if player-numerical-response is 2:
			say "You take the straw and suck up two big mouthfuls of [urine], gulping down each as soon as your mouth is full.";
			StomachUrineUp 6;
			decrease the uses of F by 1;
			if the uses of F > a random number between 1 and 5, decrease the uses of F by 1;
			if a random number between 1 and 20 > the raw urine taste addiction of the player, compute addictive tasting of urine;
			now another-turn is 1;
	if the uses of F < 3:
		say "[if player-numerical-response > 0]Thanks to your help, [NameDesc of ex-princess][otherwise][BigNameDesc of ex-princess][end if] can breathe normally this turn!";
		if the suffocation of F > 0, decrease the suffocation of F by 1;
	otherwise:
		if player-numerical-response > 0, say "[BigNameDesc of ex-princess] is still forced to hold [his of ex-princess] breath!";
		increase the suffocation of F by 1;
		if the suffocation of F >= (the health of ex-princess * 10) / the maxhealth of ex-princess:
			say "All of a sudden, you see a torrent of bubbles explode from [NameDesc of ex-princess][']s mouth - [he of ex-princess] has lost consciousness!";
			now the health of ex-princess is -100;
	if the health of ex-princess <= 0 or a random number between 1 and 5 is 1:
		say "[bold type]The portal shimmers, and then instantly vanishes! [roman type]The box and chains disappear, and the remaining [urine] cascades downwards over [NameDesc of ex-princess][']s body. [if the health of ex-princess < 0][big he of ex-princess] collapses to the ground[otherwise]coughs and splutters and spits up [urine]. [BigNameDesc of demon lord] snarls.[line break][speech style of demon lord]'YOU SURVIVED?!'[roman type][line break][end if]";
		now current-final-battle-object is final-battle-magic-clash. [this object has concluded]


final-battle-pit is a final-battle-object.
To commence (F - final-battle-pit):
	say "[BigNameDesc of demon lord] places both hands flat on the ground. In the next moment, the ground under [NameDesc of ex-princess][']s feet disappears! Just as [he of ex-princess] starts to fall, [he of ex-princess] manages to conjure a golden rope connected to the ceiling, which [he of ex-princess] clings onto for dear life. Well, not so much dear life, as dear sanity. Beneath [him of ex-princess] is the biggest, deepest pit full of [if diaper quest is 0][semen][otherwise if diaper messing >= 7]used messy diapers[otherwise]used diapers[end if] in the world.[line break][speech style of demon lord]'NICE SAVE, BUT YOU CAN'T HOLD ON FOREVER! THE PIT WILL REMAIN UNTIL MY HANDS MOVE OR UNTIL SOMEONE FALLS IN! HAHAHA!'[roman type][line break][speech style of ex-princess]'Fuck. ...[NameBimbo]! [big please] help me!'[roman type][line break]";
	execute F.
To execute (F - final-battle-pit):
	say "[BigNameDesc of demon lord] is keeping the magic pit of [if diaper quest is 0][semen][otherwise]diapers[end if] open by keeping both of [his of demon lord] hands pressed to the ground. [BigNameDesc of ex-princess] is clinging onto [his of ex-princess] golden rope for dear life, and there's no telling how long [he of ex-princess] can hold on for!";
	if the player is immobile or the player is flying or another-turn is 1:
		now player-numerical-response is 0;
	otherwise:
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "try to pull one of [NameDesc of demon lord][']s hands off of the ground (difficult strength check)";
		set numerical response 2 to "jump into the pit, sacrificing yourself";
		set numerical response 0 to "do something else";
		compute multiple choice question;
	if player-numerical-response is 1:
		say "You grab hold of one of [NameDesc of demon lord][']s arms and pull with all your might!";
		let R be a random number between 5 and (100 - (10 * the uses of F));
		if debuginfo > 0, say "[input-style]Xavier focus check: RNG(5~[100 - (10 * the uses of F)]) = [R] | [strength of the player].5[roman type][line break]";
		if the strength of the player >= R:
			say "Amazingly, you actually manage to make [his of demon lord] huge arm move a fraction of an inch! Still, this is enough to break [his of demon lord] connection to [his of demon lord] spell. The pit disappears, and [NameDesc of ex-princess] can step onto the ground safely![line break][speech style of demon lord]'NO! CURSE YOU! HOW DARE YOU-'[roman type][line break]";
			now current-final-battle-object is final-battle-magic-clash; [this object has concluded]
		otherwise:
			say "[BigNameDesc of demon lord] laughs at you.[line break][speech style of demon lord]'[one of]IS THIS REALLY YOUR LAST HOPE, PRINCESS? THIS WEAKLING?!'[or]FOOL, YOUR STRENGTH IS NO MATCH FOR MINE!'[or]YOUR SIDEKICK IS A TENACIOUS ONE, I'LL GIVE [caps him of the player] THAT!'[or]PITIFUL!'[stopping][roman type][line break]";
		now another-turn is 1;
	otherwise if player-numerical-response is 2:
		say "You close your eyes, pinch your nose, and leap.[line break][speech style of demon lord]'NO! WHAT A WASTE OF A POWERFUL SPELL!'[roman type][line break]The hotel's floor, or rather the pit's ceiling, closes up behind you. You plunge into the impossibly large mass of [if diaper quest is 0][semen][otherwise]diapers[end if] and are immediately engulfed. There's nothing but [if diaper quest is 0][semen][otherwise if diaper messing >= 7]shit-filled diapers[otherwise][urine]-soaked plastic[end if] in every direction. ";
		if the player is air breathing vulnerable:
			say "Your senses are overwhelmed, and you feel yourself begin to suffocate.";
			let G be 2; [room stinks of cum]
			if diaper quest is 1:
				if diaper messing >= 7, now G is messyDiaperFacesitGrossnessLevel;
				otherwise now G is wetDiaperFacesitGrossnessLevel;
			SmellGrossOut G;
		if diaper quest is 1:
			DelicateUp 1;
		otherwise:
			SemenAddictUp 1;
		now current-final-battle-object is final-battle-magic-clash; [this object has concluded]
		now another-turn is 1;
		now another-turn-flavour is "And then suddenly, you're falling again, and after half a second you land with a thud back in the [location of the player].[roman type] Perhaps after [NameDesc of demon lord] stopped focusing on keeping the pit in existence, the pocket dimension began to deteriorate until you were spat back out into the [']real world[']?";
	if current-final-battle-object is F:
		let R be a random number between 1 and 10;
		if debuginfo > 0, say "[input-style]Princess holding check: d10 ([R]) | [uses of F - 1].5[roman type][line break]";
		if a random number between 1 and 10 < the uses of F:
			say "[speech style of ex-princess]'No...'[roman type][line break][BigNameDesc of ex-princess][']s grip fails and [he of ex-princess] falls into the pit, disappearing instantly into the depths of the [if diaper quest is 0][semen][otherwise if diaper messing >= 7]shit-filled diapers[otherwise][urine]-soaked plastic[end if].[line break][if the player is able to speak][variable custom style]'No!'[roman type][line break][end if]The reality of [NameDesc of ex-princess][']s fate is too much for you. With strength you didn't know you had, you grab hold of one of [NameDesc of demon lord][']s arms and pull with all your might! Either because [he of demon lord] was too distracted by [his of demon lord] moment of triumph, or because you have dug so deep, you manage to move [his of demon lord] hand and break [his of demon lord] magic connection! The pit suddenly disappears, and [NameDesc of ex-princess] reappears on the floor of the hotel room, gasping for air!";
			decrease the health of ex-princess by the maxhealth of ex-princess / 3;
			now current-final-battle-object is final-battle-magic-clash. [this object has concluded]


final-battle-food is a final-battle-object.
To commence (F - final-battle-food):
	say "[BigNameDesc of demon lord] points a hand towards the doorway, and then swings it round to [his of demon lord] front, pointing it directly at [NameDesc of ex-princess]. A few seconds later, several pieces of dessert, and two huge [if diaper quest is 1]baby [end if]bottles of [milk] come flying towards [him of ex-princess]. [NameDesc of ex-princess] manages to catch the two bottles with [his of ex-princess] hands, and prevent them being able to get any closer, but the food is all heading straight for [his of ex-princess] face, clearly intent on force-feeding itself to [him of ex-princess]![line break][speech style of demon lord]'EVERY MOUTHFUL IS LACED WITH A STRONG APHRODISIAC! ENJOY! HAHAHA!'[roman type][line break]";
	execute F.
To execute (F - final-battle-food):
	say "[speech style of demon lord]'AND TAKE THIS!'[roman type][line break][BigNameDesc of demon lord] shoots a red bolt of electricity at [NameDesc of ex-princess], intent on painfully shocking [him of ex-princess]!";
	if the player is immobile or the player is flying or another-turn is 1:
		now player-numerical-response is 0;
	otherwise:
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "step in front of the electric bolt";
		set numerical response 2 to "eat one of the foods so [NameDesc of ex-princess] doesn't have to";
		set numerical response 0 to "do something else";
		compute multiple choice question;
	if player-numerical-response is 1:
		say "You step in front of the red bolt, taking the hit for [NameDesc of ex-princess]. The electric shock wracks your body with pain!";
		BodyRuin 1;
		PainUp 10;
		now another-turn is 1;
		now another-turn-flavour is "It takes you a few moments to recover from the shock.";
	otherwise:
		say "[BigNameDesc of ex-princess] is momentarily engulfed by painful red electricity. [big he of ex-princess] screams in pain!";
		decrease the health of ex-princess by the maxhealth of ex-princess / 10;
	if the health of ex-princess > 0:
		if player-numerical-response is 2:
			say "You take one of the poisoned desserts and force it into your mouth, swallowing it as quickly as you can! Immediately you can feel the toxin taking effect, sending your arousal skyrocketing...";
			StomachFoodUp 1;
			Arouse 3000;
			increase the uses of F by 1;
			now another-turn is 1;
		if the uses of F < 5, say "[BigNameDesc of ex-princess] is forced to eat one of the desserts. After [he of ex-princess] gulps it down, you hear [him of ex-princess] let out a lewd moan... it sounds like [he of ex-princess] is yearning for some attention down below, but [he of ex-princess] is fighting the urge to touch [himself of ex-princess] as best as [he of ex-princess] can.";
	if the uses of F >= 5:
		say "Finally finished being force-fed the food, [NameDesc of ex-princess] is able to focus on the milk bottles. [big he of ex-princess] pulls them to [his of ex-princess] chest and squeezes them tightly with all [his of ex-princess] might, causing the [milk] to erupt from the tips like two fountains. Soon the bottles are empty, and they fall to the ground, inert.";
		now current-final-battle-object is final-battle-magic-clash. [this object has concluded]


final-battle-plug is a final-battle-object.
To commence (F - final-battle-plug):
	say "[BigNameDesc of demon lord] clicks [his of demon lord] fingers, and [NameDesc of ex-princess][']s [if diaper quest is 1]diaper falls[otherwise]pair of white panties fall[end if] to the ground.[line break][speech style of ex-princess]'What are you...'[roman type][line break][BigNameDesc of ex-princess] begins to ask, but then the question starts to answer itself. A huge spiralling purple plug[if diaper messing >= 3], somewhat reminiscent of a huge piece of poop,[end if] appears underneath [him of ex-princess] with a magic glow about it. At the same time, a magic glow appears around [his of ex-princess] loins.[line break][speech style of ex-princess]'Oh god, I can feel the curse from here... Oh no...'[roman type][line break]Seemingly outside of [his of ex-princess] control, [NameDesc of ex-princess] begins to pick up the plug, and move it towards [his of ex-princess] asshole.[line break][speech style of demon lord]'HAHAHA! THAT'S RIGHT! THIS SPECIAL PLUG WILL SEVERELY WEAKEN THE WEARER, BOTH INSIDE AND OUT! BUT GOOD LUCK FIGHTING AGAINST YOUR HAND. AS LONG AS YOU CAN SEE IT, YOU WILL STRUGGLE TO RESIST IT!'[roman type][line break]";
	execute F.
To execute (F - final-battle-plug):
	if the uses of F < a random number between 2 and 3:
		say "[speech style of ex-princess]'N-no!'[roman type][line break][BigNameDesc of ex-princess] is doing [his of ex-princess] best to resist the magic forcing [him of ex-princess] to put in the plug, but [he of ex-princess] won't last long...";
	otherwise:
		say "[speech style of ex-princess]'Gaaah!'[roman type][line break][BigNameDesc of ex-princess] makes an exasperated noise of despair as [he of ex-princess] shoves the huge plug inside [his of ex-princess] asshole, and then replaces [his of ex-princess] [if diaper quest is 1]diaper[otherwise]panties[end if] over the top. You can't see it, but you know it's there, and it's making [him of ex-princess] significantly weaker. It's probably massively distracting, too.";
		now current-final-battle-object is final-battle-stunned; [this object has concluded with a stun on the princess]
	say "[speech style of demon lord]'AND TAKE THIS!'[roman type][line break][BigNameDesc of demon lord] shoots a red bolt of electricity at [NameDesc of ex-princess], intent on painfully shocking [him of ex-princess]!";
	if the player is immobile or the player is flying or another-turn is 1:
		now player-numerical-response is 0;
	otherwise:
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "step in front of the electric bolt";
		if current-final-battle-object is F and asshole is not actually occupied and the number of ass covering actually unavoidable clothing is 0, set numerical response 2 to "wear the plug so [NameDesc of ex-princess] doesn't have to";
		set numerical response 0 to "do something else";
		compute multiple choice question;
	if player-numerical-response is 1:
		say "You step in front of the red bolt, taking the hit for [NameDesc of ex-princess]. The electric shock wracks your body with pain!";
		BodyRuin 1;
		PainUp 10;
		now another-turn is 1;
		now another-turn-flavour is "It takes you a few moments to recover from the shock.";
	otherwise:
		say "[BigNameDesc of ex-princess] is momentarily engulfed by painful red electricity. [big he of ex-princess] screams in pain!";
		decrease the health of ex-princess by the maxhealth of ex-princess / 10;
	if the health of ex-princess > 0 and player-numerical-response is 2:
		say "You snatch the plug out of [NameDesc of ex-princess][']s hand, and before anyone can object, you force it up into your own [asshole].";
		let P be a random prostate massager plug;
		summon P cursed with quest;
		now P is strength-influencing;
		now the raw-magic-modifier of P is -4;
		now the size of P is 7;
		force immediate inventory-focus redraw;
		compute insertionRuin of P into asshole;
		say "[speech style of ex-princess]'[NameBimbo]! You... You didn't have to do that...'[roman type][line break]Despite what [he of ex-princess] is saying, you can tell that [he of ex-princess] is extremely grateful.";
		now current-final-battle-object is final-battle-magic-clash; [this object has concluded]
		now another-turn is 1.


final-battle-inflation is a final-battle-object.
Definition: final-battle-inflation is appropriate:
	if diaper quest is 1 or inflation fetish is 1, decide yes;
	decide no.
To commence (F - final-battle-inflation):
	say "[BigNameDesc of demon lord] puts [his of demon lord] fingers to [his of demon lord] forehead, and shoots a beam of magical energy at [NameDesc of ex-princess][']s [if diaper quest is 1]diaper[otherwise]hips[end if]![line break][speech style of ex-princess]'What are you...'[roman type][line break][BigNameDesc of ex-princess] begins to ask, but then the question starts to answer itself. Her [if diaper quest is 1]diaper[otherwise]hips[end if] begin to inflate, ballooning rapidly in size with some kind of lighter-than-air gas. How do you know it's lighter than air? Because [NameDesc of ex-princess][']s [if diaper quest is 1]diaper[otherwise]ass cheeks[end if] have begun to lift [him of ex-princess] up in the air like a helium balloon, turning [him of ex-princess] upside down in the process.[line break][speech style of ex-princess]'Woah woah woah!'[roman type][line break]Soon only [NameDesc of ex-princess][']s dangling hair is touching the ground. In this position, [he of ex-princess] is very vulnerable. [BigNameDesc of demon lord] begins to walk towards [NameDesc of ex-princess], clearly planning to do some up-close-and-personal damage.";
	if diaper quest is 1, alwayscutshow Figure of princess final battle inflation for ex-princess;
	if the player is immobile or the player is flying or another-turn is 1:
		now player-numerical-response is 0;
	otherwise:
		reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
		set numerical response 1 to "step in front of the magic beam";
		if current-final-battle-object is F and asshole is not actually occupied and the number of ass covering actually unavoidable clothing is 0, set numerical response 2 to "try and grab [NameDesc of ex-princess] and help ground [him of ex-princess]";
		set numerical response 0 to "do something else";
		compute multiple choice question;
	if player-numerical-response is 1:
		say "You step in front of the beam, taking the full force of the inflation blast. ";
		if diaper quest is 1:
			let K be a random worn knickers;
			if K is waddle diaper:
				say "Nothing seems to happen! Hooray!";
			otherwise:
				let W be a random off-stage waddle diaper;
				if W is nothing, now W is pink-waddle-diaper;
				if K is knickers:
					transform K into W;
				otherwise:
					summon W cursed with quest;
		otherwise:
			say "Your entire body balloons outwards as you are filled with a lighter-than-air gas!";
			BustInflate 10;
			AssInflate 10;
			Assfill 20 air;
	if player-numerical-response is 2:
		say "You grab [NameDesc of ex-princess], adding your weight to [hers of ex-princess].";
		if the player is getting unlucky:
			say "Unfortunately, [his of ex-princess] weight is distributed even more unevenly than you anticipated, and as [he of ex-princess] spins in the air, you lose your grip! [GotUnluckyFlav]";
			now player-numerical-response is 0;
	if player-numerical-response is 0:
		say "[BigNameDesc of demon lord] connects with a powerful shoulder barge, right into [NameDesc of ex-princess][']s upside-down upper body. [big he of ex-princess] is sent spinning and flying wildly, and [he of ex-princess] ends up smacking [his of ex-princess] head painfully against the ceiling. Then, with a loud rubber whining sound, [he of ex-princess] rapidly deflates. Suddenly significantly heavier than air, [he of ex-princess] returns to the ground with another painful thud.";
		decrease the health of ex-princess by the maxhealth of ex-princess / 4;
	otherwise:
		say "Most of [his of ex-princess] body is pulled to the ground, and [NameDesc of demon lord][']s running shoulder barge only grazes [him of ex-princess], doing minimal damage.";
		decrease the health of ex-princess by the maxhealth of ex-princess / 20;
	now current-final-battle-object is final-battle-magic-clash. [this object has concluded]


final-battle-harness is a final-battle-object.
Definition: final-battle-harness is appropriate:
	if diaper lover is 1 and purple-baby-reins is not worn, decide yes;
	decide no.
To commence (F - final-battle-harness):
	say "[BigNameDesc of demon lord] makes an intricate hand motion. A set of purple straps manifests itself in front of [him of demon lord], and then begins to fly towards [NameDesc of ex-princess][line break][speech style of ex-princess]'Oh shit!'[roman type][line break][BigNameDesc of ex-princess] tries to flee around the room, but the straps keep following [him of ex-princess]![paragraph break]...You could probably jump in front of the straps['] path, and block them, if you wanted to...[line break]...Do you want to?";
	if the player is consenting:
		let O be a random worn overdress;
		if O is clothing:
			say "As you jump in front of the purple straps, and they touch your skin, your [O] bursts into purple flames and disappears!";
			destroy O;
		summon purple-baby-reins locked;
		say "Moments later, the straps have wrapped themselves around your body, and a padlock has slotted into place. You are now wearing a [purple-baby-reins]!";
		now current-final-battle-object is final-battle-magic-clash; [this object has concluded]
	otherwise:
		say "Eventually, the straps catch up to [NameDesc of ex-princess]. As they touch [him of ex-princess], [his of ex-princess] royal dress bursts into purple flames and disappears! Moments later, the straps have wrapped themselves around [his of ex-princess] body, and a padlock has slotted into place. [big he of ex-princess] is now wearing a set of purple baby reins!";
		execute F.
To execute (F - final-battle-harness):
	say "[BigNameDesc of demon lord] laughs as [he of demon lord] makes another intricate hand gesture.[line break][speech style of demon lord]'[one of]UNLIMITED... POWER[or]SQUIRM[or]FEEL THE PAIN[cycling]!'[roman type][line break][BigNameDesc of ex-princess][']s new purple baby reins light up with yellow electricity. [big he of ex-princess] [one of]squeals[or]screams[or]wails[stopping] in pain!";
	decrease the health of ex-princess by the maxhealth of ex-princess / 12;
	if the uses of F >= 3:
		say "[speech style of ex-princess]'I call upon the power of [if diaper quest is 1]pee-pee[otherwise][pussy][end if]!'[roman type][line break][BigNameDesc of ex-princess] shouts the incantation for a spell that rips the reins from [his of ex-princess] body, and replaces it with a copy of [his of ex-princess] usual royal dress. After using this spell, [he of ex-princess] looks very fatigued.[line break][speech style of ex-princess]'What a... waste... of magic...'[roman type][line break]";
		now current-final-battle-object is final-battle-stunned. [this object has concluded with a STUN]


final-battle-scan is a final-battle-object. final-battle-scan can be pose-swapped.
Definition: final-battle-scan is appropriate:
	if diaper lover is 1, decide yes;
	decide no.
To commence (F - final-battle-scan):
	say "[BigNameDesc of demon lord] makes for one wall and slams a hidden button. There's a loud whirring, and then a football-sized metal sphere flies into the room, before speaking in a robotic voice.[line break][first custom style]'SPREAD LEGS SQUATTING PEACE SIGN SMILE POSE ENFORCEMENT ROUTINE INITIATED. PARTY BALL WILL RELEASE PUNISHMENT HIGH-POWERED CONCUSSIVE ENERGY BLAST UNLESS POSE IS DETECTED IN FIVE... FOUR... THREE...[line break][speech style of ex-princess]'No!'[roman type][line break][BigNameDesc of ex-princess] interrupts the bizarre machine by adopting the pose it seems to be demanding - [he of ex-princess] spreads [his of ex-princess] legs, squats down low, raises [his of ex-princess] hands in two peace signs, and puts on a forced smile. [big he of ex-princess] looks absolutely ridiculous - which is likely the point, you suppose - and is also rendered unable to speak or move while [he of ex-princess] holds the pose... leaving [him of ex-princess] completely vulnerable to [NameDesc of demon lord][']s next attacks. Meanwhile, the robot-drone-thing begins making robotic laughter sounds and taking flash photos of [NameDesc of ex-princess], presumably immediately uploading these to several sites on the Internet.[paragraph break]...It seems likely that the robot will only do its nasty energy blast thing if it can't find anyone in the room in that humiliating pose. You could probably assume the pose yourself, and by doing so free up [NameDesc of ex-princess] to keep fighting. But it would be so humiliating... and what if the images really did end up on the Internet?!";
	execute F.
To execute (F - final-battle-scan):
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	set numerical response 1 to "[if F is not pose-swapped]force [NameDesc of ex-princess] to maintain the pose[otherwise]stop holding the pose[end if]";
	set numerical response 2 to "[if F is not pose-swapped]take over[otherwise]keep[end if] holding the humiliating pose";
	compute multiple choice question;
	if player-numerical-response is 1:
		if F is not pose-swapped:
			say "[BigNameDesc of demon lord] laughs as [he of demon lord] makes another intricate hand gesture.[line break][speech style of demon lord]'[one of]YOU'RE AT MY MERCY NOW[or]BURN[stopping]!'[roman type][line break][BigNameDesc of ex-princess][']s body lights up with infernal green fire. [big he of ex-princess] [one of]squeals[or]screams[or]wails[stopping] in pain!";
			decrease the health of ex-princess by the maxhealth of ex-princess / 12;
		otherwise:
			say "As soon as you even stop smiling, the metal sphere immediately reacts.[line break][first custom style]'DETONATE.'[roman type][line break]The device turns bright white, essentially turning into some sort of giant flash-bang. Before you know what's hit you, you're unable to see, hear or even think properly. And when you do begin to regain your vision, you see that [NameDesc of ex-princess] got caught even more off-guard than you: she's still completely disorientated.";
			decrease the health of ex-princess by the maxhealth of ex-princess / 12;
			now current-final-battle-object is final-battle-stunned; [this object has concluded with a STUN]
	otherwise:
		if F is not pose-swapped:
			say "You assume the position, spreading your legs, squatting low, holding up peace signs and forcing a smile. Instantly, [NameDesc of ex-princess] leaps back into action, able to bat away [NameDesc of demon lord][']s attempt at offensive spells.";
			now F is pose-swapped;
		otherwise:
			say "You hold the ridiculous peace-sign squat pose, turning more red with every passing second. [BigNameDesc of ex-princess] and [NameDesc of demon lord] are locked in an even battle of offensive and defensive spellcasts[one of], while you just squat and grin like some insipid anime influencer for the damned sphere robot[or], while you just squat while the big brave hero takes on the Boss-level threat[or], and all you can do, as far as anyone who'll see these damned photos it's taking is concerned, will be that you're just focused on getting social media [']Likes['] instead of actually helping[or], your thigh muscles burning, your fixed grin somehow making you even more focused on how ridiculous your stupid twin Peace signs must be making you look[in random order].";
		let T be "In your deep squatting position, your body feels twice as desperate to go let loose, and";
		check sudden expulsion with reason T;
		say "The hovering sphere plays a robotic laughing track while taking several flash photos of you. Little sound effects sound exactly like the sound your phone makes when you upload a file to the Internet.";
		let RPT be "holding an extremely low squat while smiling and holding up peace signs";
		let RPS be 4;
		if player-just-leaked is true or delayed urination is 1:
			now RPT is "[RPT] while peeing yourself";
			increase RPS by 2;
		if player-just-enema-leaked is true:
			now RPT is "[RPT] while squirting liquid out your butthole";
			increase RPS by 3;
		if hasMessedNow is true:
			now RPT is "[RPT] while visibly messing yourself";
			increase RPS by 4;
		compute digital reputation damage RPT strength RPS quality 2;
		compute digital reputation damage RPT strength RPS quality 2;
	if the uses of F >= 3:
		say "[first custom style]'BATTERY LOW... RETURNING TO DOCKING STATION.'[roman type][line break]Just as quickly and efficiently as it had arrived, the robot-drone-sphere-thing flies away, leaving you all alone and removing the threat of its energy detonation attack.[line break][variable custom style]Phew![roman type][line break]";
		now current-final-battle-object is final-battle-magic-clash. [this object has concluded]


final-battle-sword is a final-battle-object.
Definition: final-battle-sword is appropriate:
	if diaper lover is 0, decide yes;
	decide no.
To commence (F - final-battle-sword):
	say "[speech style of demon lord]'TIME TO GET SERIOUS. WITH MY SWORD OF POWER, NO MORTAL CAN HOPE TO BEST ME. COME FORTH, MY HYPER WEAPON!'[roman type][line break][BigNameDesc of demon lord] stretches a hand out in front of him, as if expecting a sword to appear. But instead, a sword hilt begins to emerge from in front of [NameDesc of ex-princess].[line break][speech style of demon lord]'WAIT, NO!'[roman type][line break][big he of demon lord] yells in panic, and out of instinct, seeing [his of ex-princess] opportunity, [NameDesc of ex-princess] grabs at it, and [']unsheaths['] it from the portal from which it is emerging.[paragraph break][BigNameDesc of demon lord][']s expression immediately changes to one of triumphant glee.[line break][speech style of demon lord]'MY MY, PRINCESS, I DIDN'T KNOW YOU WANTED TO HANDLE MY SWORD!'[roman type][line break][BigNameDesc of ex-princess] curses.[line break][speech style of ex-princess]'It was a trap?'[line break][speech style of demon lord]'OF COURSE!'[roman type][line break][big he of demon lord] cackles, as the answer is confirmed anyway by one look at the [']sword[']. It's actually a sword hilt with a portal at the end, out of which has emerged a huge throbbing red [manly-penis]. A matching portal is visible at [NameDesc of demon lord][']s groin, where [his of demon lord] genitals should be.[roman type][line break][BigNameDesc of ex-princess] begins to speak.[line break][speech style of ex-princess]'What foul magic is thi-'[roman type][line break]But before [he of ex-princess] can finish, the red monster-cock has taken on a life of its own, and moving like a tentacle, started to force itself between [NameDesc of ex-princess][']s lips.[line break][speech style of demon lord]'YES, YES, IN A MOMENT YOU'LL BE CHOKING ON MY COCK, YOU WORTHLESS WHORE! I'M GOING TO PUMP YOUR STOMACH FULL OF CUM UNTIL YOU BURST!'[roman type][paragraph break]It seems unlikely, but possible, that [NameDesc of ex-princess] will manage to save [himself of ex-princess] from the fate of being pumped painfully full of [NameDesc of demon lord][']s [semen]. [bold type]If you have a free dominant hand, you could try and take the penis-sword from [him of ex-princess], but then you'd probably be left dealing with the giant magic demon [manly-penis] yourself.[roman type][line break]";
	blandify and reveal demon broadsword;
	now demon broadsword is in the location of the player;
	now demon broadsword is dildoed;
	now demon broadsword is cursed;
	now the arousal of demon broadsword is 999999.
To execute (F - final-battle-sword):
	if demon broadsword is on-stage and demon broadsword is not held:
		if the uses of F is 2 and the player is getting lucky: [only possible on the second turn (no execute function called on the first turn)]
			say "With an incredible display of strength, [NameDesc of ex-princess] rips [NameDesc of demon broadsword] from [his of ex-princess] mouth, and slams it to the ground. [GotLuckyFlav][line break][BigNameDesc of demon lord] roars in pain, and a moment later, [his of demon lord] [DickDesc of demon lord] is back where you expect it, at [his of demon lord] crotch. The sword is nowhere to be seen.";
			destroy demon broadsword;
			decrease the health of demon lord by the maxhealth of demon lord / 6;
			now current-final-battle-object is final-battle-magic-clash; [this object has concluded]
		otherwise:
			say "[speech style of ex-princess]'GLURK! GLURK! GLURK!'[roman type][line break]There's nothing [NameDesc of ex-princess] can do but continue to choke and gag on [NameDesc of demon lord][']s [DickDesc of demon lord] as it destroys [his of ex-princess] throat.[paragraph break][BigNameDesc of demon lord][']s [manly-penis] [one of]erupts[or]continues to ejaculate[stopping], [one of]pumping[or]forcing[or]spewing[at random] [one of]liters[or]pints[or]gallons[stopping] of [semen] down into the poor princess[']s [one of]bloated[or]rapidly ballooning[stopping] stomach.";
			say "[speech style of demon lord]'[one of]YES! YES! YES[or]MY ARCH-NEMESIS IS DROWNING IN MY SEED! HAHAHA[or]DRINK IT ALL, WHORE[or]ENJOY THE TASTE OF DEMON SEED[or]YES, TAKE IT ALL DOWN[then at random]!'[roman type][line break][one of][BigNameDesc of demon lord] is enjoying the experience too much to do anything else at the same time.[or][stopping]";
			if the uses of F is 2, decrease the health of ex-princess by the maxhealth of ex-princess / 6;
			otherwise decrease the health of ex-princess by the maxhealth of ex-princess / 24;
	if demon broadsword is off-stage or demon broadsword is held or the uses of F > a random number between 3 and 7: [scene ending]
		now current-final-battle-object is final-battle-magic-clash; [this object has concluded]
		if demon broadsword is on-stage and demon broadsword is not held: [player did not take the sword]
			now current-final-battle-object is final-battle-stunned; [this object has concluded with a stun on the princess]
			say "Finally, with a resounding roar, [NameDesc of demon lord] thrusts [his of demon lord] hips forward, causing the sword to surge down [NameDesc of ex-princess][']s throat, cutting off [his of ex-princess] air supply. [big he of ex-princess] crumples to the floor, gagging desperately around the extremely thick shaft of the demonic cock.[paragraph break]Moments later, [NameDesc of demon lord], apparently now finally finished ejaculating, lets out a satisfied sigh. [BigNameDesc of demon broadsword] disappears, and [his of demon lord] [DickDesc of demon lord] reappears where you'd expect, in front of [his of demon lord] loins.";
		if the uses of F > 2:
			say "Now that [his of ex-princess] throat and mouth is finally unblocked, a volcanic eruption of infernal [semen] surges forth from [NameDesc of ex-princess][']s lips. By the time [his of ex-princess] stomach has finished purging itself, the entire floor of the room has become a sea of thick spooge.";
			SemenPuddleUp 50.


final-battle-facehugger is a final-battle-object.
Definition: final-battle-facehugger is appropriate:
	if diaper lover is 1, decide yes;
	decide no.
To commence (F - final-battle-facehugger):
	say "[BigNameDesc of demon lord] sends another red lightning bolt towards [NameDesc of ex-princess], and it hits [him of ex-princess] right on the front of [his of ex-princess] diaper.[line break][speech style of ex-princess]'Hah!'[roman type][line break][BigNameDesc of ex-princess] exclaims triumphantly - clearly that attack did no damage to [him of ex-princess] at all. But [NameDesc of demon lord] doesn't look frustrated - [he of demon lord] looks happy.[line break][speech style of demon lord]'SOMEONE'S HAVING A LITTLE ACCIDENT!'[roman type][line break]You look at [NameDesc of ex-princess][']s crotch, and realise that [he of demon lord][']s right - there's a rapidly growing yellow patch.[line break][speech style of ex-princess]'What the hell?!'[roman type][line break][BigNameDesc of ex-princess] sounds shocked - it's clear that [he of ex-princess] can't feel [himself of ex-princess] urinating at all.[line break][speech style of demon lord]'LET ME HELP YOU WITH THAT!'[roman type][line break]With a flick of [his of demon lord] wrist, [NameDesc of ex-princess][']s soggy diaper drops to the ground between [his of ex-princess] feet with a wet thud. For a brief moment, [he of ex-princess] is completely bottomless, and you can see everything. [big he of ex-princess] doesn't seem to care, though. In fact [he of ex-princess] looks elated.[line break][speech style of ex-princess]'I'm... I'm free? I'm free of the diaper curse?!'[roman type][line break]But before [he of ex-princess] has even finished speaking, an identical clean diaper has materialised over [his of ex-princess] crotch. [BigNameDesc of ex-princess] looks crestfallen.[line break][speech style of ex-princess]'No, of course not. What's the meaning of this?!'[roman type][line break][BigNameDesc of ex-princess] demands of [NameDesc of demon lord]. [BigNameDesc of demon lord] just shrugs.[line break][speech style of demon lord]'THERE'S CLEARLY A POWERFUL CURSE KEEPING YOU DIAPERED, BUT THAT'S NOTHING TO DO WITH ME.'[roman type][line break]";
	say "The brief pause in action is suddenly ended as [NameDesc of ex-princess][']s old soggy diaper has leaped to life, and surged through the air towards [his of ex-princess] face, apparently attempting to engulf [NameDesc of ex-princess][']s head.[line break][speech style of ex-princess]'EEK!'[roman type][line break][big he of ex-princess][']s managed to get one hand between [his of ex-princess] face and the nasty [urine]-soaked padding, and is now locked in a struggle with [his of ex-princess] old diaper, as it tries to force its way past [his of ex-princess] arm and lock onto [his of ex-princess] face.[line break][speech style of demon lord]'*THAT* WAS MY DOING.'[roman type][line break][BigNameDesc of demon lord] chuckles cruelly. You can see that [he of demon lord] is focusing all [his of demon lord] energy on magically controlling the diaper, and trying to get it past [NameDesc of ex-princess][']s arm.[paragraph break][bold type]This seems dangerous[roman type] - it's possible that [NameDesc of ex-princess] can deal with this [himself of ex-princess], but if [he of ex-princess] fails, that diaper may never come off. [bold type]It could cause [him of ex-princess] to lose this battle right here and now.[roman type] If you don't want to risk that, you could probably help by [bold type]pull[roman type]ing... but once [NameDesc of ex-princess] is safe... Whose face is the nasty soggy diaper going to go for next?!".
To execute (F - final-battle-facehugger):
	if the player is getting unlucky:
		say "[BigNameDesc of ex-princess] attempts to wrestle the diaper away with all [his of ex-princess] strength, but it's not enough. [big he of ex-princess] loses [his of ex-princess] grip on the diaper for just a sliver of a moment, and that's all the opportunity it needs to slip past and fully latch onto [his of ex-princess] face. [GotUnluckyFlav]You can hear [his of ex-princess] panicked moans from underneath the [urine]-soaked padding as [he of ex-princess] struggles to breathe. And now that [he of ex-princess] can't see, [he of ex-princess] can't fight. It's trivial for [NameDesc of demon lord] to strike [NameDesc of ex-princess] with powerful demonic lightning until [he of ex-princess] is on the brink of defeat. It's only after [NameDesc of ex-princess] is barely able to move that the facehugging diaper releases, and falls to the ground, inert.";
		now the health of ex-princess is 0;
	otherwise:
		say "[BigNameDesc of ex-princess] attempts to wrestle the diaper away with all [his of ex-princess] strength... And thankfully manages to do so. Pinning it against one wall, [he of ex-princess] presses both palms into the padding.[line break][speech style of ex-princess]'I love the hot wet embrace of a freshly used diaper!'[roman type][line break]An ironic incantation, considering the situation, but nonetheless, [NameDesc of ex-princess] successfully summons the fire necessary to incinerate the diaper, leaving nothing behind but the aroma of lightly roasted [urine].";
	now current-final-battle-object is final-battle-magic-clash. [this object has concluded]
Check pulling ex-princess when ex-princess is guarding and current-final-battle-object is final-battle-facehugger:
	if the player is immobile, say "You're a bit tied up right now!" instead;
	allocate 6 seconds;
	say "You run over to [NameDesc of ex-princess] and try to yank the diaper away from [his of ex-princess] head! You succeed, but end up stumbling backwards, clattering to the ground, with the diaper still in your hands, wrestling to get free.[line break][speech style of demon lord]'BAH!'[roman type][line break][BigNameDesc of demon lord] spins a finger around, and the diaper changes target, heading for your own face! Without [NameDesc of ex-princess][']s magical strength and skill, you can't summon more than a few seconds of resistance before the magic soiled diaper manages to burst out of your grip and engulf your face!";
	now current-final-battle-object is final-battle-magic-clash; [this object has concluded]
	now the player is in DiaperFacehuggerBlindfolded;
	do nothing instead.
A time based rule (this is the final battle diaper facehugger engulf rule):
	if the player is in DiaperFacehuggerBlindfolded:
		if ex-princess is guarding and the uses of final-battle-facehugger < a random number between 3 and 5:
			say "The wet padding soaked with [NameDesc of ex-princess][']s [urine] presses tightly against your face[one of]. You can barely breathe at all through the saturated padding[or]. Despite your best attempts to resist, you can't pull it off[or][stopping].";
			SlowGrossOut messyDiaperFacesitGrossnessLevel; [the face is on the inside of the piss soaked padding - approximately as bad as being on the outside of messed padding]
			increase the uses of final-battle-facehugger by 1;
			if the health of demon lord > 3, decrease the health of demon lord by 3;
		otherwise:
			say "Finally, the diaper seems to use the last of its magical energy, and becomes inert. It drops off your face, and you can see and breathe again[if ex-princess is guarding]. It seems like [NameDesc of ex-princess] and [NameDesc of demon lord] have exchanged further blows since you were last able to see them[end if].";
			now the player is in the location of demon lord.
This is the facehugger prevents breathing rule:
	if the player is in DiaperFacehuggerBlindfolded, decide yes;
	decide no.
The facehugger prevents breathing rule is listed in the breathing blocking rules.



final-battle-final-chance is a final-battle-object.
Definition: final-battle-final-chance is appropriate: decide no. [only appears as a special case at the end]
To commence (F - final-battle-final-chance):
	if diaper quest is 1:
		say "[BigNameDesc of ex-princess][']s knees buckle and [he of ex-princess] collapses down onto the ground. [BigNameDesc of demon lord] laughs in triumph.[line break][speech style of demon lord]'YES, YES! YOU CAN FEEL IT, CAN'T YOU? THE HOPELESSNESS OF YOUR STRUGGLE! MY VICTORY IS MOMENTS AWAY!'[line break][speech style of ex-princess]'Fuck... you...'[roman type][line break]That's all [NameDesc of ex-princess] can manage to say in between gasps for air.[line break][speech style of demon lord]'HAHAHA! IN THAT CASE, I SHALL SHOW YOU NO MERCY. LET ME INTRODUCE YOU TO YOUR REPLACEMENT...'[roman type][line break][BigNameDesc of demon lord] makes a motion as if grabbing an invisible rope in front of [him of demon lord] and yanking it towards [his of demon lord] chest. As [he of demon lord] does so, an ethereal copy of [NameDesc of ex-princess] gets [']pulled['] out of [his of ex-princess] body. This hazy, translucent figure then shifts in colour, [his of ex-princess] clothes becoming darker and more sinister. At the same time, [he of ex-princess] becomes corporeal. There's now a clone of [NameDesc of ex-princess] standing over [him of ex-princess]![paragraph break]";
		say "[speech style of ex-princess]'What the... Wait, no!'[roman type][line break][BigNameDesc of ex-princess] interrupts [himself of ex-princess] because [his of ex-princess] [']evil clone['] has just started to lower [his of ex-princess] diapered rump onto [NameDesc of ex-princess][']s face.[line break][speech style of ex-princess]'MMMMMPH!'[line break][speech style of demon lord]'HAHAHA! YES! WHAT A PERFECT WAY TO GO! GOODNIGHT, PRINCESS! YOU SHALL NEVER AWAKEN FROM THIS SLUMBER! AS SOON AS YOU LOSE CONSCIOUSNESS, YOU SHALL DISAPPEAR, PERMANENTLY REPLACED BY YOUR MUCH MORE DELIGHTFUL CLONE! BWAHAHAHAHA!'[roman type][line break]This is certainly not an empty threat. You literally only have one chance left. Defeat [NameDesc of demon lord] yourself, in this very moment, or lose [NameDesc of ex-princess] forever.";
	otherwise:
		say "[BigNameDesc of ex-princess] tries to dodge another red demonic zap erupting from [NameDesc of demon lord][']s finger, but [he of ex-princess] is too injured, and [he of ex-princess] moves too slowly. The magic blast hits [NameDesc of ex-princess][']s dress, which immediately transforms into a too-tight and very skimpy pink bikini. [BigNameDesc of demon lord] laughs in triumph.[line break][speech style of demon lord]'YES, YES! FINALLY, MY ULTIMATE ABILITY HAS LANDED TRUE. MY VICTORY IS MOMENTS AWAY!'[line break][speech style of ex-princess]'What... have you...'[roman type][line break]And then, before saying anything else, [NameDesc of ex-princess] squeaks with dismay as [his of ex-princess] breasts and ass begin to rumble... and expand.[line break][speech style of demon lord]'HAHAHA! TRY NOT TO FALL OVER, PRINCESS, BECAUSE AS SOON AS YOU DO, YOU WILL BE AT MY MERCY!'[line break][speech style of ex-princess]'What the... Wait, [please], no!'[roman type][line break][BigNameDesc of ex-princess] is panicking, and seems unable to focus enough to cast any spells of [his of ex-princess] own. This would appear to be it. Within moments, [NameDesc of ex-princess] will have been defeated. You literally only have one chance left. Defeat [NameDesc of demon lord] yourself, right now, or lose [NameDesc of ex-princess] forever.".
To execute (F - final-battle-final-chance):
	if the uses of F > 3:
		if diaper quest is 1, say "[BigNameDesc of ex-princess][']s wriggling becomes even more frantic for a few seconds, and then stops altogether. [big he of ex-princess] has passed out. And then, just as [NameDesc of demon lord] had promised, [his of ex-princess] body begins to fade away. It turns ethereal and see-through, and then is somehow sucked inside the diaper of [his of ex-princess] dark clone. The diaper becomes clean and dry again, but also [NameDesc of ex-princess] is no more. Only [his of ex-princess] evil clone remains.'";
		otherwise say "[BigNameDesc of ex-princess] topples as [his of ex-princess] centre of gravity continues to shift outward... and then [he of ex-princess] face-plants onto the ground. [big he of ex-princess] won't be able to dodge anything at all, now...";
		if extreme proportions fetish is 1, cutshow Figure of dark princess final battle defeat 6;
		now the health of ex-princess is -9999;
	otherwise if the uses of F is 3:
		if diaper quest is 1, say "[BigNameDesc of ex-princess][']s clone shifts [his of ex-princess] weight until [NameDesc of ex-princess][']s face is entirely engulfed by [his of ex-princess] giant used diaper. [BigNameDesc of ex-princess] now can't breathe at all, and it won't be long before [he of ex-princess] faints.";
		otherwise say "[BigNameDesc of ex-princess][']s body has now grown to ridiculous, improbable proportions, like nothing you would ever see in real life! You can see [him of ex-princess] beginning to lose [his of ex-princess] balance. Uh-oh...";
	otherwise if the uses of F is 2:
		if diaper quest is 1, say "[BigNameDesc of ex-princess][']s clone lets out an evil, high-pitched cackle and simultaneously lets out [if diaper messing >= 7]an inhumanly large load[otherwise]a long river of [urine][end if] into [his of ex-princess] diaper. [BigNameDesc of ex-princess] wails in distress, but there's nothing [he of ex-princess] can do to escape, or to prevent [himself of ex-princess] from having to breathe in through the soiled padding.";
		otherwise say "[BigNameDesc of ex-princess][']s tits, ass and thighs continue to grow. [if extreme proportions fetish is 1]The bikini bursts off, in tatters, unable to take the strain any more! But [his of ex-princess] body keeps growing all the same...[otherwise][big his of ex-princess] tiny pink bikini begins to look more and more ridiculously impractical. [BigNameDesc of ex-princess] hugs [his of ex-princess] chest, begging it not to grow any further, but [his of ex-princess] efforts are obviously in vain.[end if]";
	otherwise:
		say "BUG - Aika wasn't expecting there to be any execution of this final battle object at this point.".


To commence final battle:
	repeat with F running through final-battle-objects:
		now the uses of F is 0;
	now current-final-battle-object is final-battle-wand-curse;
	now ex-princess is in the location of the player;
	now ex-princess is guarding;
	if the times-met of ex-princess < 2, now the times-met of ex-princess is 2;
	now ex-princess is interested;
	now the health of ex-princess is the maxhealth of ex-princess;
	now flaming-wall is in the location of the player;
	anger demon lord;
	say "[BigNameDesc of demon lord] looks straight past you, to the person standing behind you.[line break][speech style of ex-princess]'Xavier.'[roman type][line break][BigNameDesc of ex-princess] is there, brandishing [his of ex-princess] wand. [BigNameDesc of demon lord] laughs, [his of demon lord] booming voice echoing throughout the entire hotel.[line break][speech style of demon lord]'PRINCESS! LONG HAVE I WAITED FOR THIS DAY. THE DAY I GET MY REVENGE!'[roman type][line break][BigNameDesc of demon lord] clicks [his of demon lord] fingers and a ring of fire appears around the three of you. Meanwhile, [NameDesc of ex-princess] wastes no time in beginning the incantation for [his of ex-princess] first spell.[line break][speech style of ex-princess]'I love to cum my brains out!'[roman type][line break]Several arcs of bright blue lightning shoot across the air towards [NameDesc of demon lord].[line break][speech style of demon lord]'OH, HOW APPROPRIATE!'[roman type][line break][BigNameDesc of demon lord] somehow catches the lightning in [his of demon lord] hand, and sends demonic energy back through the current and into [NameDesc of ex-princess][']s wand. Immediately you see a dark cloud forming around it as the curse takes hold.[line break][speech style of ex-princess]'Shit!'[roman type][line break]You see [NameDesc of ex-princess] move to drop [his of ex-princess] wand, but it's too late. It is glued to [his of ex-princess] hand now, and has taken on a life of its own, forcing [NameDesc of ex-princess] to press it against [his of ex-princess] own crotch and masturbate [himself of ex-princess] with powerful vibrations.[paragraph break]Meanwhile, you are still standing there, in the middle of this fight between giants, completely ignored.";

To compute final battle:
	if the player is the donator:
		if current-final-battle-object is final-battle-magic-clash:
			let F be a random eligible appropriate final-battle-object;
			if F is final-battle-object:
				now current-final-battle-object is F;
				compute princess attack before current-final-battle-object;
				if the health of demon lord > 0:
					increase the uses of current-final-battle-object by 1;
					commence current-final-battle-object;
			otherwise:
				increase the uses of current-final-battle-object by 1;
				execute current-final-battle-object;
		otherwise:
			increase the uses of current-final-battle-object by 1;
			execute current-final-battle-object;
		if the health of demon lord <= 0 and the health of demon lord < the health of ex-princess:
			if the health of ex-princess <= 0, now the health of ex-princess is 1;
			say "[BigNameDesc of demon lord][']s strength falters, and [he of demon lord] falls down onto one knee.[line break][speech style of ex-princess]'It's curtains for you, Xavier. Lacy, gently wafting curtains...'[line break][speech style of demon lord]'NO! NOT AGAIN! I CAN'T HAVE BEEN DEFEATED AGAIN!'[roman type][line break][BigNameDesc of ex-princess] summons [his of ex-princess] royal scepter back to [his of ex-princess] hand.[line break][speech style of ex-princess]'I hold my scepter, I hold the key! You are the Devil, but I love the D! I love the D, I love the D, I love the D, I love the D, I love the D, I love the D, I love the D, I love the D...'[roman type][line break][BigNameDesc of ex-princess] begins shooting [NameDesc of demon lord] with magical blast after magical blast.[line break][speech style of ex-princess]'I love the D, I love the D, I love the D, I love the D, I love the D, I love the D, I love the D, I love the D!'[roman type][line break]That last blast severs one of [NameDesc of demon lord][']s horns.[line break][speech style of demon lord]'OW FUCK! MY FUCKING HORN!'[roman type][line break][BigNameDesc of ex-princess] ignores [him of demon lord], and has already begin to cast [his of ex-princess] final banishing spell.[line break][speech style of ex-princess]'From whence you came, you shall remain, until you are complete again!'[line break][speech style of demon lord]'NOOOOOOOOOOOOOOOOOOOOOOOO! FUCK YOU, PRINCESS, AND FUCK YOU, [NameBimbo in upper case]! I'LL GET YOU, NINTENACIOUS DOLLS...'[roman type][line break][BigNameDesc of demon lord][']s screams gradually fade away to nothingness as [he of demon lord] disappears from this plane.";
			cutshow Figure of princess final battle victory;
			compute banishment of demon lord;
			[if there is a barrier in the location of the player, say "The walls of flame surrounding you all suddenly die out.";
			repeat with B running through barriers in the location of the player:
				destroy B;]
		otherwise if the health of ex-princess <= 0:
			if the health of demon lord > 0 and the health of ex-princess > -999:
				now the health of ex-princess is 1;
				now current-final-battle-object is final-battle-final-chance;
				increase the uses of current-final-battle-object by 1;
				commence current-final-battle-object;
			otherwise:
				unless diaper quest is 1 and current-final-battle-object is final-battle-final-chance, say "[if the health of ex-princess > -100][speech style of ex-princess]'No... This can't... Aaah!'[roman type][line break][end if]A final blast of red magic from [NameDesc of demon lord] engulfs [NameDesc of ex-princess], and [he of ex-princess] collapses to the ground in agony. When [he of ex-princess] rises, [he of ex-princess] is... different.";
				compute final battle loss;
				try examining ex-princess;
				say "[speech style of demon lord]'BWAHAHAHAHA! I DID IT! I DEFEATED THE BITCH! PRINCESS, WHO IS YOUR MASTER?'[roman type][line break][BigNameDesc of ex-princess] replies immediately, in a high pitched and yet somehow equally sinister voice.[line break][speech style of ex-princess]'You are, my lord!'[line break][speech style of demon lord]'GOOD, GOOD! AND WHAT DOES A LOYAL PET DO FOR [caps his of ex-princess] MASTER?'[line break][speech style of ex-princess]'Break [his of demon lord] enemies!'[line break][speech style of demon lord]'GOOD ANSWER! THEN WHY DON'T YOU START WITH THE SLUT WHO BROUGHT YOU HERE IN THE FIRST PLACE?'[roman type][line break][BigNameDesc of demon lord] gestures towards you.";
				check guaranteed perception of ex-princess;
				say "[speech style of demon lord]'I SHALL LEAVE YOU TO BECOME ACQUAINTED WITH YOUR NEW PRINCESS! BWAHAHAHAHA!!!'[roman type][line break]";
				satisfy demon lord;
				if there is a barrier in the location of the player, say "The walls of flame surrounding you all suddenly die out.";
				repeat with B running through barriers in the location of the player:
					destroy B;
				compute mandatory room leaving of demon lord.

An all time based rule (this is the final battle keeps going rule):
	if ex-princess is guarding and ex-princess is alive and ex-princess is not in the location of the player and ex-princess is in the location of demon lord:
		decrease the health of ex-princess by 2;
		if the health of ex-princess <= 0:
			say "[bold type]A flash of red light fills the [playerRegion]. [roman type]You hear [NameDesc of ex-princess] cry out in terror, and then... [his of ex-princess] cry sounds like it's turning into manic laughter. And then you hear [NameDesc of demon lord][']s laughter joining [hers of ex-princess]. Uh-oh. That doesn't sound good.";
			compute final battle loss;
			if the player is in DiaperFacehuggerBlindfolded:
				say "The diaper drops to the ground, inert.";
				now the player is in the location of demon lord;
			deinterest demon lord.

To compute final battle loss:
	now ex-princess is unleashed;
	now ex-princess is unintelligent;
	if futanari fetish > 0 and diaper quest is 0, now ex-princess is male;
	deinterest ex-princess;
	now the arousal of demon broadsword is 0;
	now the health of ex-princess is the maxhealth of ex-princess.

To compute final battle victory cleanup:
	now royal scepter is carried by ex-princess;
	if ex-princess is in the location of the player, say "[BigNameDesc of ex-princess] turns to you.[line break][speech style of ex-princess]'Thank you for your help, with all my heart. I could not have defeated [him of demon lord] without you. I shall see you back in my Dungeon.'[roman type][line break][BigNameDesc of ex-princess] raises [his of ex-princess] wand.[line break][speech style of ex-princess]'I love it up the bum!'[roman type][line break]And with that incantation, [he of ex-princess] disappears.";
	now the arousal of demon broadsword is 0;
	now ex-princess is unconcerned;
	now ex-princess is in Dungeon11.

Section 5 - Damage

Definition: demon lord (called M) is damageable:
	if M is wrapped, decide yes;[he has a latex allergy!]
	if current-final-battle-object is final-battle-final-chance and ex-princess is in the location of M, decide yes; [last few turns of final battle]
	if attack-type is 1:
		let S be a random worn slap ready equippable;
		if S is magic themed equippable or S is purity equippable, decide yes;
	if attack-type is 3 and dildo-heels is worn, decide yes;
	if attack-type > 3, decide yes;
	if the class of the player is priestess or the class of the player is virgin warrior or the class of the player is fertility goddess or the class of the player is cultist or there is a worn demonic wearthing, decide yes;
	decide no.

To say DamageableDesc of (M - demon lord):
	say "[line break][if M is carrying mystical amulet]There is a mystical amulet around [his of M] neck. [otherwise]There is an evil-looking gemstone embedded in [his of M] chest. [end if][run paragraph on]";
	if M is wrapped:
		say "It seems to be resonating with the condom!";
	otherwise if current-final-battle-object is final-battle-final-chance and ex-princess is in the location of M:
		say "It seems to be resonating with [NameDesc of ex-princess]!";
	otherwise if the class of the player is priestess or the class of the player is cultist or the class of the player is fertility goddess or the class of the player is virgin warrior:
		let H be a random worn headgear;
		if H is clothing, say "It seems to be resonating with your [ShortDesc of H]!";
	otherwise if there is a worn zap ready equippable:
		let Z be a random worn zap ready equippable;
		if Z is clothing, say "It seems to be resonating with your [ShortDesc of Z]!";
	otherwise:
		let D be a random worn demonic wearthing;
		if D is nothing, now D is a random worn slap ready purity equippable;
		if D is nothing, now D is a random worn slap ready magic themed equippable;
		if D is nothing and D is worn, now D is dildo-heels;
		if D is nothing and the number of held combat-bomb bombs > 0, now D is a random held combat-bomb bomb;
		unless D is nothing, say "It seems to be resonating with your [ShortDesc of D]!";

To decide which number is the damage modifier of (M - demon lord):
	decide on the number of worn demonic wearthings.

To say damage-flavour of (N - a number) on (M - demon lord):
	if N is 0 and M is not damageable:
		say "[M] appears to be completely immune to your attack! [one of]Maybe only certain items can hurt [him of M]?[or][or]It looks like it's impossible for you to win this fight right now.[or][cycling]";
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
		say "POW! Your attack is accompanied by a loud sound. An almost impossibly strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!".

To say CombatProvokedReaction of (M - demon lord):
	say "[BigNameDesc of M] turns to face you with a terrifying roar!".

To say DamageReactHealthy of (M - demon lord):
	say "[BigNameDesc of M] laughs at you mockingly!";

To say DamageReactDamaged of (M - demon lord):
	say "[BigNameDesc of M] growls angrily[one of]![line break][speech style of M]'ARGH! [if M is wrapped]JUST WAIT UNTIL I GET OUT OF THIS THING!'[otherwise]HOW CAN YOU HARM ME?!'[end if][roman type][line break][or]![stopping]";

To say DamageReactTired of (M - demon lord):
	say "[BigNameDesc of M] recoils in pain[one of]![line break][speech style of M]'I WILL NOT BE DEFEATED!'[roman type][line break][or]![stopping]".

To say DamageReactWeak of (M - demon lord):
	say "[BigNameDesc of M] cringes in pain[one of]![line break][speech style of M]'I CAN'T BE DEFEATED! NOOOOO!'[roman type][line break][or]![stopping]".

Definition: demon lord is wenchy:
	if the player is the donator, decide yes;
	decide no.

Definition: demon lord is automatically banishable:
	if demon lord is wenchy and demon lord is wrapped and the divinationskill of the player is 1 and the magic power of the player > 2, decide no;
	decide yes.

To say DefeatBrink of (M - demon lord):
	say "Thanks to what you learned from [NameDesc of witch], you can sense [NameDesc of M]'s power converging [if M is carrying mystical amulet]on [his of M] amulet. [otherwise]the stone in [his of M] chest. [end if]If you use up some of your magic, you might be able to interfere long enough to trap [him of M] in a human form.";

To say BanishDesc of (M - demon lord):
	say "Don't interfere.".
To compute forced banishment of (M - a demon lord):
	compute automatic banishment of M.

To say BanishFleeFlav of (M - demon lord):
	if M is carrying mystical amulet, say "[first custom style]'NOOOO! HOW CAN THIS BEEEEeeeee....'[roman type][line break][BigNameDesc of M] screams as [his of M] entire body is slowly but surely sucked into the amulet around [his of M] neck! The amulet hangs in the air for a split second before it explodes, nothing remaining of the demon lord except the giant red stone that clatters to your feet. You have won!";
	otherwise say "[first custom style]'NOOOO! HOW CAN THIS BEEEEeeeee....'[roman type][line break][BigNameDesc of M] screams as a giant red gem appears in [his of M] chest, slowly but surely sucking in [his of M] body until nothing remains. The gem hangs in the air for a second before clattering harmlessly to your feet. You have won!";
	if M is carrying mystical amulet, only destroy mystical amulet.

To compute unique banishment of (M - demon lord):
	if gladiatorcurse is 1, uncurse gladiators;
	if ex-princess is in the location of M:
		if current-final-battle-object is final-battle-final-chance, say "[if diaper quest is 1]The dark clone of [NameDesc of ex-princess] turns ethereal again, and gets sucked back into [his of ex-princess] original. [BigNameDesc of ex-princess] is whole[otherwise][BigNameDesc of ex-princess][']s body parts begin to shrink. Seconds later, [he of ex-princess] is normal sized[end if] once more!";
		compute final battle victory cleanup;
	let X be a random off-stage plentiful bracelet;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [ShortDesc of M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X;
	unless infernal gem is held:
		now infernal gem is in the location of the player;
		increase the loot dropped of M by 1;
		compute autotaking infernal gem;
	if security interface is not authenticated, say "[variable custom style]I wonder if this gem contains any traces of the DNA that the security interface needs to authenticate its control panel...[roman type][line break]";
	now M is bossdefeated.

To say PenisFuckDesc of (M - demon lord):
	say "Seal [him of M] with your [PenisFucker].".

To say VaginaRideDesc of (M - demon lord):
	say "Seal [him of M] with your [vagina].".

To say AssRideDesc of (M - demon lord):
	say "Seal [him of M] with your [asshole].".

Definition: demon lord is piss-fuckable:[Too rare for me to want to deal with.]
	decide no.

To decide which number is the dominationtype of (M - demon lord) using (F - a body part):
	if F is a fuckhole, decide on FUCK-RIDE;
	decide on FUCK-BLOWJOB.

[If the demon lord gets the upper hand, he gets away. If the demon lord doesn't get the upper hand, he is sealed into his mechanic form.]
To blowjob dominate (M - demon lord):
	let S be sexual-penis-length;
	say "You put one hand on [NameDesc of M]'s [if M is carrying mystical amulet]amulet[otherwise]chest[end if], using your own magic to temporarily stabilize [his of M] energy as your other hand [if S < 4]eagerly tugs[otherwise if S < 9]pumps[otherwise]strokes[end if] your [if penis is not penis-erect]hardening [end if][SexDesc of penis]. [big he of M] doesn't seem to notice anything has changed, and falls to the ground while screaming at the top of [his of M] lungs.";
	if S > 8:
		say "[line break][speech style of M]'NO! IMPOSSIBLE! IM-IMPO-!'[roman type][line break]You snap [him of M] out of it with a well-timed cock slap, which also stuns [him of M] for a few seconds, but it isn't anything that another imprint on the other side of [his of M] face can't solve. [big he of M] seems to realise you are [his of M] only chance to hold onto [his of M] strength, and [he of M] dives onto you, [his of M] unnaturally long tongue slithering around and around your [SexShaft] as [he of M] begins to slurp your power out through your [sexual-player-penis]!";
		let R be the semi-dominance roll for M;
		if R < 0:[xavier gets a power refill]
			if debugmode > 0, say "[bold type]FAILED![roman type][line break]";
			say "You instantly realise the way [he of M]'s draining you won't seal [him of M] so much as 'make [him of M] stronger', and you force [him of M] down in hopes of taking back control. [big he of M] giant body enables [him of M] to throat you with far less trouble than a mortal [man of M], and although you briefly gain the upper hand, you're unable to start sealing [him of M] before [he of M] adapts. [big he of M] leers at you as [his of M] crimson lips meet your [if the player is possessing a scrotum]balls[otherwise]base[end if], sucking out your magic faster and faster no matter how hard you fuck [his of M] face. You know you can't win, but you won't let yourself lose, holding onto your resistance until the moment your [load], along with the last of your magic, disappears down [his of M] gullet.";
			now player-fucking is DOMINANT-NEUTRAL;
			increase the magic-fatigue of the player by the magic power of the player;
			say AfterDominationComment 0 of M;
		otherwise:
			if debugmode > 0, say "[bold type]PASSED![roman type][line break]";
			say "You instantly realise the way [he of M]'s draining you won't seal [him of M] so much as 'make [him of M] stronger', and you force [him of M] down in hopes of taking back control. [big his of M] giant body enables [him of M] to throat you with far less trouble than a mortal [man of M], but you gain the upper hand just long enough to start sealing [him of M] before [he of M] can adapt. You feel [his of M] throat tightening as [his of M] body begins to shrink, and [he of M] glares at you furiously as [his of M] inhuman strength fades from [his of M] limbs. The struggle for control turns into a battle between [him of M] and [his of M] gag reflex, which you gladly assist [him of M] with. You complete the 'sealing ritual' by snatching [if M is carrying mystical amulet]the amulet around [his of M] neck[otherwise]a newly formed gemstone in [his of M] chest[end if], punctuating [his of M] wail of despair with a [load] down [his of M] throat.";
			increase the magic-fatigue of the player by 2;
			ultraDignify;
			now player-fucking is DOMINANT-SUPER;
			say AfterDominationComment 1 of M;
		BlowGet;
		orgasm;
	otherwise if sexual-penis-length > 3:
		say "[line break][speech style of M]'NO! IMPOSSIBLE! I-IMPOSSIBLE! NO! NOO-'[roman type][line break]You snap [him of M] out of it with a slap, which seems to stun [him of M] for a few seconds, but poking [his of M] cheek with your junk eventually catches [his of M] attention. [big he of M] seems to realise you are [his of M] only chance to hold onto [his of M] strength, and [he of M] dives onto you, [his of M] unnaturally long tongue slithering around and around your [SexShaft] as [he of M] begins to slurp your power out through your [sexual-player-penis]!";
		let R be the semi-dominance roll for M;
		if R < 0:
			if debugmode > 0, say "[bold type]FAILED![roman type][line break]";
			say "A few moments pass before you realise the way [he of M]'s draining you won't seal [him of M] so much as 'make [him of M] stronger', and you try to push [him of M] away. You're partially successful at first, but [his of M] tongue's [']grip['] ensures that no matter how hard you try to resist, your [sexual-player-penis] is always dragged right back into [his of M] mouth. [big he of M] swallows a little bit more of your length each time, and when [his of M] lips finally meet your [if the player is possessing a scrotum]balls[otherwise]base[end if], you can't get [him of M] to move at all. [big he of M] leers at you when you finally give up, and you feel your magic being sucked out faster and faster as [he of M] bobs [his of M] head up and down your [SexShaft]. You are forced to moan underneath [him of M] as both [semen] and magic power are wrung out of you over and over and over again until ALL of your reserves are completely spent.";
			increase the magic-fatigue of the player by the magic power of the player;
			now player-fucking is DOMINANT-SHAMEFUL;
			say AfterDominationComment 0 of M;
		otherwise:
			if debugmode > 0, say "[bold type]PASSED![roman type][line break]";[TODO: better]
			say "A few moments pass before you realise the way [he of M]'s draining you won't seal [him of M] so much as 'make [him of M] stronger', and you try to stop [him of M]. You're only partially successful at first, thanks to [his of M] bizarre tongue [']grip,['] but after several attempts you're able to grab [him of M] securely enough to start sealing [him of M] properly. It's almost impossible to maintain the upper hand at first, but it gets easier once [his of M] giant body slowly begins to shrink. [big his of M] struggling continues even as [his of M] wings fold into [his of M] back, and you lose control as [his of M] horns are receding into [his of M] forehead. [big he of M] pulls off just as you go over the edge, receiving your [load] all over [his of M] face and chest as [his of M] skin tone fades from red to just 'pink'. You snatch [if M is carrying mystical amulet]the amulet around [his of M] neck[otherwise]a newly formed gemstone in [his of M] chest[end if] before [he of M] has a chance to put up a fight.";
			increase the magic-fatigue of the player by 2;
			now player-fucking is DOMINANT-SUPER;
			say AfterDominationComment 1 of M;
			obsceneDignify;
		BlowGet;
		orgasm;
	otherwise:[xavier steals the player's energy and uses it to summon a succubus partner for himself.]
		say "[line break][speech style of M]'NO! IMPOSSIBLE! I-IMPOSSIBLE! NO! NOOOOO! N...? WHAT ARE YOU DOING?'[roman type][line break][big he of M] turns to you as you hit [him of M] with the last of a series of weak slaps. You were intending to snap [him of M] out of it without hurting [him of M], but your efforts apparently registered so little that [he of M] didn't notice until you were exhausted! [big he of M] picks you up in one of [his of M] giant claws, smirking at the teensy excuse for an erection standing between your legs. You can't do anything to resist as an unnaturally long and red tongue shoots out of [his of M] mouth, winding around your [sexual-player-penis] and wringing orgasm, dignity, and then every last drop of magic out of you within seconds. [big his of M] energy stabilises as [he of M] swallows your [load] and unceremoniously tosses your slack body to the ground.";
		increase the magic-fatigue of the player by the magic power of the player;
		now player-fucking is DOMINANT-SHAMEFUL;
		moderateHumiliate;
		say AfterDominationComment 2 of M;
		BlowGet;
		orgasm.

To ride dominate (M - demon lord):
	increase the magic-fatigue of the player by 2;
	let F be player-fucker;
	let diff be the openness of F - the girth of M;[+2 to -8]
	let A be anal sex addiction of the player;
	if F is vagina, now A is vaginal sex addiction of the player;
	say "You put both hands on [NameDesc of M]'s [if lady fetish is 1]buxom[otherwise]broad[end if] chest, using your magical energy to slow down the collapse of [his of M] own. [big he of M] ceases [his of M] unstable teetering and looks down at you with a triumphant smirk.[line break][speech style of M]'HAHAHA. THOUGH YOU HAVE ACCEPTED THE INEVITABLE, YOU WILL STILL BE PUNISHED FOR YOUR INSOLENCE. YOUR [if F is asshole]ANUS[otherwise]CLUNGE[end if] WILL BEAR THE BURDEN OF YOUR TRANSGRESSIONS!'[roman type][line break]Ignoring [him of M], you push [him of M] to the ground and carefully sit down on the end of [his of M] [DickDesc of M]. [if A <= 3]Apprehension nags[otherwise if A <= 6]A faint feeling of anticipation fills[otherwise]A strong feeling of anticipation grips[end if] you as [his of M] [cockhead of M] pushes [if F is asshole]into your sphincter[otherwise]up between your folds[end if], [if diff <= -6]and lingering there[otherwise if diff <= -3]only [italic type]barely[roman type] entering you[otherwise if diff <= 0]entering you no deeper than a centimetre[otherwise]entering you no deeper than an inch[end if] without going any further. Bearing down on it with your full weight eventually [if diff <= -6]forces your [variable F] to accept an [italic type]entire centimetre[roman type][otherwise if diff <= -3]forces your [variable F] to accept an entire [italic type]inch[otherwise if diff <= 0]allows your [variable F] to accept a generous inch [italic type]and a half[otherwise]allows your [variable F] to accept the entire [italic type]head[end if][roman type].[line break][speech style of M]'FOOL. I AM INVINCIBLE. SOON, YOU WILL BEG ME FOR MERCY.'[roman type][line break]";
	let R be the semi-dominance roll for M;
	if R >= 0:[passed]
		say "The sheer confidence in [his of M] voice is grating, but you know [he of M] won't be able to sing that tune forever. Soon enough, the flow of [his of M] energy changes, and [his of M] once giant body begins to shrink bit by bit. It happens slowly at first, and you mostly notice it as [his of M] [DickDesc of M] becoming less snug inside your [variable F], but the more of [him of M] you take, the faster [his of M] power drains, and the louder [he of M] screams.[line break][speech style of M]'W-WAIT! I DIDN'T MEAN IT. YOUR HOLE WILL BE FINE! SPAAAAARE MEEEEEE!'[roman type][line break]The last of [his of M] power is sucked into [if M is carrying mystical amulet]the amulet around [his of M] neck. [otherwise]the gem in [his of M] chest. [end if] Big, fat tears leak from [his of M] eyes as [his of M] newly mortal [DickDesc of M] twitches inside you. Do you take pity on [him of M] and let him cum?";
		if the player is bimbo consenting:[]
			say "You aren't so heartless as to [if the bimbo of the player < 9]leave [him of M] be. [otherwise]let a hard cock go to waste. [end if]Compared to [his of M] 'unsealed' state, [his of M] [DickDesc of M] is a [if diff <= -3]walk in the park to deal with, although it's still[otherwise]bit of a disappointment, but at least it's[end if] above average. The sense of accomplishment from defeating the mighty demon lord serves as an aphrodisiac, and you cum just in time for [him of M] to fill the condom with [his of M] load. You snatch the [if M is carrying mystical amulet]amulet[otherwise]gemstone[end if] off [his of M] chest as you climb off.";
			obsceneDignify;
			say AfterDominationComment 3 of M;
			reseal xavier from M;
			orgasm mechanic;
			calm mechanic;
		otherwise: [no creampie no orgasm.]
			say "You pause just long enough to make sure [he of M] won't cum before finishing yourself off, sighing in exaggerated satisfaction as [if the player is possessing a penis]you shoot your load across [his of M] tummy. [otherwise if the player is possessing a vagina]you squirt clear fluid across [his of M] stomach. [otherwise]pleasure ripples through your body. [end if][big he of M] weakly reaches for the [if M is carrying mystical amulet]amulet[otherwise]gemstone[end if], but you snatch that away, just like [his of M] chance to cum.";
			ultraDignify;
			say AfterDominationComment 5 of M;
			reseal xavier from M;
			SilentlyDifficultyUp mechanic by 5;
		orgasm;
		now player-fucking is DOMINANT-SUPER;
	otherwise:[failed]
		say "The sheer confidence in [his of M] voice shakes you more than you care to admit, and you[if the player is able to speak] shout.[line break][variable custom style]'S-Shut up!'[roman type][line break][otherwise]throw [him of M] a sharp look. [end if][big he of M] responds with a hearty laugh, which erodes your composure even further. You will yourself to keep going, but... [he of M]'s right. You can't win. You will never win. Not against the mighty Demon [if lady fetish is 1]Queen[otherwise]King[end if].[line break][speech style of M]'DESTROY THE CONDOM.'[roman type][line break]No longer deluded enough to disobey, you climb off [him of M] and tear away the one thing keeping [him of M] in check. [big his of M] unbound energy washes over you as [he of M] grabs you by the waist and impales you on [his of M] [DickDesc of M]. In a fraction of the time [if diff <= -6]it took you to barely take a centimetre by yourself, [he of M] buries half a dozen thick, throbbing inches of[otherwise if diff <= -3]it took you to take a few centimetres by yourself, [he of M] buries nearly a dozen thick, throbbing inches of[otherwise if diff <= 0]it took you to take two inches by yourself, [he of M] buries more than a foot of thick, throbbing[otherwise]it took you to take a few inches by yourself, [he of M] buries [his of M] entire thick, throbbing[end if] [DickDesc of M] up your [variable F]. With [his of M] assistance... erm, leadership... erm, complete and utter dominion without any room to resist, you are allowed to enjoy the unique feeling of being used like [his of M] own personal cocksleeve, right up until the moment your [if F is asshole]belly[otherwise]womb[end if] is flooded with [his of M] [semen].";
		strongHumiliate;
		if F is vagina, vaginally orgasm shamefully;
		otherwise anally orgasm shamefully;
		if F is vagina, PussyFill the semen load of M;
		otherwise AssFill the semen load of M;
		now player-fucking is DOMINANT-SHAMEFUL;
		say AfterDominationComment 4 of M;
	if F is vagina, FuckGet;
	otherwise AnalGet.

To compute successful dominance of (M - demon lord):
	if player-fucking is DOMINANT-SUPER and M is alive:
		reseal xavier from M;
	if M is alive:[the only way he's still 'alive' is if he turned the tables.]
		if player-fucking is DOMINANT-SHAMEFUL:
			TimesSubmittedUp M by 1;
			say "[line break]You never should have challenged [him of M]..[line break]";
		otherwise:
			say "[line break]It was going ok for awhile...[line break]";
	otherwise:
		let A be mystical amulet;
		unless M is carrying mystical amulet, now A is infernal gem;
		now A is held by the player;
		DominateUp M;
		DominateUp mechanic;
		now M is bossdefeated.

To replace (M - demon lord) after domination:
	if M is alive:
		regionally place M;
		bore M;
	otherwise:
		regionally place mechanic;
		bore mechanic.

To say AfterDominationComment (N - a number) of (M - demon lord):
	if N is 0:
		say "[speech style of M]'THANK YOU FOR THE PICK-ME-UP. I WILL BE BACK SOON TO DESTROY YOU.'[roman type][line break]";
	otherwise if N is 1:
		say "[speech style of M]'Don't think I'll forget this! One day, I'll get my revenge![roman type][line break]";
	otherwise if N is 2:
		say "[speech style of M]'DO NOT BE EMBARRASSED. THIS HAPPENS TO [if the player is gendered male]SISSIES[otherwise]SLUTS[end if] ALL THE TIME. SHORTLY, I SHOW YOU SOMETHING ELSE THAT HAPPENS TO THEM ALL THE TIME.'[roman type][line break]";
	otherwise if N is 3:
		say "[speech style of M]'My power... my power...'[roman type][line break]";
	otherwise if N is 4:
		say "[speech style of M]'I AM GLAD YOU CAME TO YOUR SENSES. AS REWARD, I WILL COME BACK TO DESTROY YOU LATER.[roman type][line break]";
	otherwise:
		say "[speech style of M]'At least let me finish-!'[roman type][line break]".

Part 4 - Conversation

To say IdentifiablePosterReactionFlav of (M - demon lord):
	say "[BigNameDesc of M] looks at you, then at the banner, then back to you. Upon realising that it is you, [he of M] puts [his of M] hands on [his of M] hips and laughs loudly it shakes the pictures on the walls!".

To say UnidentifiablePosterReactionFlav of (M - demon lord) with (P - a poster):
	say "[BigNameDesc of M] looks at the banner with a big grin on [his of M] face. [big he of M] doesn't seem to realise it is you, but is clearly enjoying looking at it.".

Section 1 - Greeting

To say FirstResponse of (M - demon lord):
	say "[first custom style]'SILENCE, MORTAL!'[roman type][line break]".

To say RepeatResponse of (M - demon lord):
	say FirstResponse of M.

To say NonEnthusiasmResponse of (M - demon lord):
	if the class of the player is princess:
		say "[first custom style]'[one of]HAHAHA! THIS IS MY REVENGE, PRINCESS!'[or]LOUDER! ALL OF BIMBACIA MUST KNOW OF YOUR SERVITUDE!'[or]YOUR PUNISHMENT IS ONLY BEGINNING, DEAR PRINCESS!'[or]YOU HAVE ONLY YOURSELF TO BLAME, PRINCESS!'[at random][roman type][line break][BigNameDesc of M] slaps you harshly across the ass.";
		PainUp 10;
	otherwise:
		say "[first custom style]'[one of]HAHA, YES, MORTAL! SQUIRM!'[or]HAHAHA! LOUDER! LOUDER!'[or]LOUDER, MORTAL! LOUDER!'[at random][roman type][line break]";
	if the sex-length of M > 2 and a random number between 1 and 2 is 1, decrease the sex-length of M by 1.

To say EnthusiasmResponse of (M - demon lord):
	if a random number between 1 and 2 is 1, increase the sex-length of M by 1;
	if the class of the player is succubus:
		say "[first custom style]'[one of]HAHAHAHAHA!'[or]HAHAHA!'[or]HAHAHAHAHAHAHAHAHAHA!'[at random][roman type][line break]";
	otherwise if M is buddy:
		say UnAnnoyedResponse of M;
	otherwise if M is friendly:
		say AnnoyedResponse of M;
	otherwise:
		compute annoyed punishment of M.

To say UnAnnoyedResponse of (M - demon lord):
	say "[first custom style]'SILENCE, MORTAL!'[roman type][line break]".

To say MildAnnoyedResponse of (M - demon lord):
	say "[first custom style]'REALLY, MORTAL. SILENCE.'[roman type][line break]".

To say AnnoyedResponse of (M - demon lord):
	say "[first custom style]'YOU TRY MY PATIENCE!'[roman type][line break]".

To compute annoyed punishment of (M - demon lord):
	let B be a random off-stage huge ballgag;
	if B is not actually summonable or B is not fetish appropriate, now B is a random off-stage fetish appropriate gag;
	if B is actually summonable:
		say "[speech style of M]'ENOUGH!'[roman type][line break]Lightning explodes from the tip of [NameDesc of M][']s finger, wracking your body with pain as a [printed name of B] forces your jaws apart.";
		summon B locked;
	otherwise:
		say "[speech style of M]'ENOUGH!'[roman type][line break]Lightning explodes from the tip of [NameDesc of M][']s finger, wracking your body with horrible pain.";
	PainUp 30.

To say InvitationAccepted of (M - demon lord) with (N - a monster):
	say "[speech style of M]'[one of]OF COURSE!'[or]THAT'S WHY YOU ARE HERE.'[at random][roman type][line break]".

To say InvitationRejected of (M - demon lord) with (N - a monster):
	say "[speech style of M]'NO THANK YOU.'[roman type][line break]".

To say AssistanceRejected of (M - demon lord) with (N - a monster):
	say "[speech style of M]'HELP ME FIRST.'[roman type][line break]".

To say AttentionExceeded of (M - demon lord) with (N - a monster):
	say "[speech style of M]'GET READY, I'M GOING IN!'[roman type][line break]".

To say AttentionAccepted of (M - demon lord) with (N - a monster):
	say "[speech style of M]'ENJOY YOURSELF, MORTAL.'[roman type][line break]".

To say TauntRejected of (M - demon lord):
	say "[first custom style]'[one of]HAHAHAHAHA!'[or]HAHAHA!'[or]HAHAHAHAHAHAHAHAHAHA!'[at random][roman type][line break][BigNameDesc of M] looks delighted!".

To say PleadRejected of (M - demon lord):
	say "[speech style of M]'NO THANK YOU.'[roman type][line break]".

To say VanityAccepted of (M - demon lord):
	say "[speech style of M]'OK.'[roman type][line break]".

To say VanityAnnoyed of (M - demon lord):
	say "[speech style of M]'[one of]I TIRE OF THIS GAME.'[or]I AM LOSING INTEREST'[at random][roman type][line break]".

To say VanityRejected of (M - demon lord):
	if M is unfriendly, say "[speech style of M]'ENOUGH. GET ON YOUR KNEES.'[roman type][line break]";
	otherwise say "[speech style of M]'I HAVE LOST INTEREST.'[roman type][line break]".

Section 2 - Questioning

To say WhereAnswer of (M - demon lord):
	say "[first custom style]'MY NEW DOMAIN! HAHAHA!'[roman type][line break]".

To say WhoAnswer of (M - demon lord):
	say "[first custom style]'I AM DEMON LORD XAVIER, ONE OF THE FOUR ELITE DARK LORDS! BWAHAHA!'[roman type][line break]".

To say StoryAnswer of (M - demon lord):
	say "[first custom style]'THAT'S COPYRIGHTED - I MEAN NONE OF YOUR BUSINESS!'[roman type][line break]".

To say EscapeAnswer of (M - demon lord):
	say "[first custom style]'THERE IS NO ESCAPE FOR YOU NOW, LITTLE ONE! YOU WILL SERVE AS MY SLAVE[if the class of the player is not succubus] OR DIE TRYING TO ESCAPE!'[otherwise]!'[end if][roman type][line break]".

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
