Deep One by Monster begins here.

deep one is a monster. Understand "deepone" as deep one. deep one is male. The text-shortcut of deep one is "do".

deep one has a number called times-encountered.

Definition: deep one is musky:
	if the refractory-period of it <= 0, decide yes;
	decide no.

Figure of deep one is the file "NPCs/Mansion/deepone1.png".
Figure of family friendly deep one is the file "NPCs/Mansion/deepone2.png".

To decide which figure-name is the monster-image of (M - deep one):
	if diaper quest is 1, decide on figure of family friendly deep one;
	decide on figure of deep one.

To say ShortDesc of (M - deep one):
	say "deep one".

To say MediumDesc of (M - deep one):
	say "deep one".

To say MonsterDesc of (M - deep one):
	say "The creature before you resembles nothing so much as a horrible cross between fish, frog, and [man of M]. [big his of M] grey-blue skin is moist and lightly covered in scales, and [he of M] reeks of the sea. In spite of [his of M] hunched gait, you can tell [he of M] is quite tall and terribly strong. [if diaper quest is 0][big his of M] insane size even extends to the throbbing [DickDesc of M] between [his of M] legs, which is somehow the most human-looking part of [him of M]. [end if][big he of M] has the air of human-level intelligence.".

To say MonsterComment of (M - deep one):
	if diaper quest is 0:
		if the player is pheromonal:
			if the bimbo of the player < 7:
				say "[first custom style][big he of M] stinks so bad I can actually taste it. All the way in the back of my throat, too. That must be why being around [him of M] makes me feel so odd.";
			otherwise if the bimbo of the player < 12:
				say "[variable custom style][big he of M] smells so strong I can actually taste it. All the way in the back of my throat. And my belly, too. Especially there...";
			otherwise:
				say "[second custom style][big he of M] smells so good I can taste it! I can feel it, too. Especially between my legs...";
		otherwise if M is unleashed:
			if the bimbo of the player < 7:
				if the player is gendered male, say "[first custom style]I guess even freaky fish monsters can get pissed off.";
				otherwise say "[first custom style]I never should have angered this creature!";
			otherwise if the bimbo of the player < 12:
				say "[variable custom style]It's even smart enough to get angry at me! Maybe I'm in the wrong here...";
			otherwise:
				say "[second custom style][big his of M] [DickDesc of M] throbs even harder when [he of M]'s mad.";
		otherwise if the bimbo of the player < 7:
			if the player is gendered male, say "[first custom style][one of]I prefer my fish people with sea shells on their tits.[or]So is this thing like a bodyguard or something?[in random order]";
			otherwise say "[first custom style][one of]I get the feeling that it will simply show up again if I send it away.[or]Why is it protecting those cultists?[in random order]";
		otherwise if the bimbo of the player < 12:
			say "[variable custom style][one of]We may be different species, but [his of M] body is in surprisingly good shape, isn't it.[or][big he of M]'s relentless when it comes to protecting those cultists. They must feel really safe.[in random order]";
		otherwise:
			say "[second custom style][one of]Who cares if we aren't the same species? [big he of M]'s sexy![or]I wonder if those cultists keep [him of M] satisfied.[in random order]";
		say "[roman type][line break]".

To decide which number is the starting difficulty of (M - deep one):
	decide on 10.

To set up (M - deep one):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M - the times-encountered of M;
	now the health of M is the maxhealth of M;
	permanently anger M;
	now M is unconcerned.

To compute labour to (M - deep one):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player][BigNameDesc of father][otherwise][BigNameDesc of father] appears almost as if on cue! [big he of M][end if] kneels down on one knee and delivers a grotesque hybrid child, which [he of M] presents to you with a broad, fishy smile[if M is uninterested or M is friendly]. [big he of M] then leaves you to recover from your ordeal[end if].";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment and loss at the same time.";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
			humiliate 300;
	otherwise if M is alive:
		Delay Labour.


Definition: deep one is willing to do oral: decide no.

Definition: deep one is willing to do titfucks: decide no.

Definition: deep one is able to remove cursed plugs: decide yes.

To say LongDickDesc of (M - deep one):
	say "[one of]lubricated[or][if full-lady fetish is 1]finned[otherwise]grey[end if][or]slimy[in random order] [DickDesc of M]".

Part 1 - Perception

To compute perception of (M - deep one):
	if the player-class is cultist or the pregnancy of the player > 0 or altar-diaper-link > 0:
		say "[BigNameDesc of M] looks at you, but seems not to be concerned with your presence.";
		now M is unconcerned;
	otherwise:
		say "[BigNameDesc of M] roars in anger! This doesn't look good!";
		now M is unleashed.

To decide which number is the seek roll of (M - deep one):
	if there is an acolyte in the location of the player, decide on 1; [100% success]
	decide on a random number between 0 and 3. [Most monsters have a 75% chance of successfully moving.]

To compute monstermotion of (M - deep one):
	if the number of acolytes in Mansion23 is 0: [return to the altar to defend it]
		if M is not in Mansion23:
			let D be the best route from the location of M to Mansion23 through haunted rooms;
			if D is a direction, try M going D;
			otherwise compute room leaving of M;
	otherwise:
		compute room leaving of M. [This is default wandering if function is left undefined for a specific monster]

To check chase boredom of (M - deep one):
	if the player is not in Mansion23, check default chase boredom of M.

Part 2 - Combat

Section 1 - Attack

To compute damaging attack of (M - deep one):
	if a random number between 1 and 5 is 1 and the player is the donator:[Or whatever is the most recent]
		let R be a random number between 1 and 2;
		if R is 1:
			compute stunning attack of M;
		otherwise if R is 2:
			compute summoning attack of M;
		otherwise:[remnant of a more complicated setup, but it's here just in case]
			compute striking attack of M;
	otherwise:
		compute striking attack of M.

[arousal + humiliation. At doomed > 5, stuns.]
To compute stunning attack of (M - deep one):
	say "[BigNameDesc of M] emits a guttural croak that literally rumbles your surroundings.";
	if the intelligence roll of M >= the intelligence of the player:
		say "It takes you a second too long to realize that 'you' are included in 'your surroundings', and powerful vibrations travel up your legs [if doomed >= 5]temporarily stopping your movement and making your crotch [otherwise]and cause your crotch to [end if]explode with sensation!";
		if doomed >= 5:
			now another-turn-flavour is the substituted form of "Your legs are still trembling!";
			now another-turn is 1;
		stimulate vagina from M;
		moderateHumiliate;
	otherwise:
		say "Luckily, you're smart enough to realize that 'you' are included in 'your surroundings' and quickly create some distance before you start rumbling too.".

[Applies glue to a random piece of clothing. Was clunky to implement, and made the deep one a little too complicated.]
[To compute grabbing attack of (M - deep one):
	say "[BigNameDesc of M] makes a horrible noise as it spits out a glob of slime! [run paragraph on]";
	let B be the painful-part of M;
	if the accuracy roll of M >= the dexterity of the player:
		say "The slimeball hits you [TargetName of B], splattering sticky slime everywhere!";
		let C be a random worn removable cursable gluable wearthings;
		if C is clothing and C is not glued:
			say "Some of the slime lands on your [ShortDesc of C], causing it to adhere to you like glue!";
			gluify C;
			force clothing-focus redraw;
	otherwise:
		say "You narrowly avoid being hit.";]

To compute summoning attack of (M - deep one):
	say "[BigNameDesc of M] makes a sharp noise and points a finned finger right at you.";
	if the intelligence roll of M >= the intelligence of the player:
		say "You have no clue what's about to happen, and aren't prepared when you are suddenly struck by a bolt of pink lightning! You feel terribly tired and yet also horny at the same time!";
		FatigueUp the difficulty of M + (doomed * 2);
		stimulate vagina from herald;
	otherwise:
		if doomed >= 5 or the accuracy roll of M >= the dexterity of the player:
			if doomed >= 5, say "You know something is about to happen, but before you can react, you are suddenly struck by a bolt of pink lightning! ";
			otherwise say "You immediately realize that something is about to happen, but you're still unprepared to be struck by a bolt of pink lightning! You feel terribly tired and yet also horny at the same time!";
			FatigueUp (doomed * 2);
			stimulate vagina from herald;
		otherwise:
			say "You immediately realize that something is about to happen, and dodge out of the way just in time to avoid being struck by a bolt of pink lightning.".


To TimesSubmittedUp (M - deep one) by (N - a number):
	increase the times-encountered of M by 1;
	DirectTimesSubmittedUp M by N.

To decide if (M - deep one) is willing to creampie (F - vagina):
	if the pregnancy of the player is 1:
		if the father is tentacle monster or the father is vine or the father is creampie pole trap, decide no;
		if the class of the player is cultist:
			if the reaction of the player is not 1, decide no;[he may be ugly, but he's a good listener]
		decide yes;
	otherwise:
		if the player is pheromonal or the player is a pussy slut, decide yes;
		if the class of the player is cultist:
			if the reaction of the player is not 1, decide no;
		if a random number between 1 and 4 is 1, decide yes;
	decide no.

To decide if (M - deep one) is willing to creampie (F - asshole):
	if the class of the player is cultist:
		if the reaction of the player is not 1 and the player is not a butt slut, decide no;
	decide yes.

To say sexDumbFlav of (M - deep one) in (F - a fuckhole):
	say "[one of]Droplets of viscous slime hit your back as [FuckerDesc of M] pounds your [variable F]![or][BigFuckerDesc of M] continues to plow your [variable F].[or][BigFuckerDesc of M]'s fishy stench assaults your sinuses as [his of M] [LongDickDesc of M] assaults your [variable F]![or][BigFuckerDesc of M]'s [LongDickDesc of M] slides in and out of your [variable F]![or][BigFuckerDesc of M] emits horrible noises as [he of M] roughly pounds away at your [variable F]![or]Horrifying croaks rumble from [FuckerDesc of M]'s throat as [his of M] [LongDickDesc of M] slams in and out of your [variable F].[in random order]".

To say CreampieFlav of (M - deep one) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] makes a deep, guttural noise, slamming [his of M] [DickDesc of M] home as [he of M] fills your [variable F] with [semen]![or]A deep, guttural noise comes from [NameDesc of M][']s throat as [he of M] ejaculates deep inside your [variable F].[or]You hear a deep, guttural noise from behind you as [NameDesc of M] ejaculates, filling your [variable F] with [semen].[or][BigNameDesc of M] tightens [his of M] grip, emitting a deep, guttural noise as [his of M] [semen] explodes into your [variable F]![at random] [run paragraph on]";
	if the pregnancy of the player is 1 and the father is not deep one:
		if (the father is musky and a random number between 1 and 6 is 1) or (the father is not musky and a random number between 1 and 3 is 1): [musky npcs have tougher pregnancies, or something]
			say "An odd tingling feeling spreads through your belly, and you sense [PregGrowth of the father] inside of you transforming into...something else.";
			now the father is deep one;
		otherwise:
			say "An odd tingling feeling spreads through your belly, but... it seems to pass.";
	otherwise:
		say "[if the player is not ashamed]Fear pierces your body as you suddenly answer [his of M] call, croaking like some demented frog[otherwise if the player is not shameless]Confusion and disbelief assault your mind as you suddenly answer [his of M] call, croaking like a frog[otherwise]You immediately answer with a call of your own, croaking like an obedient little mate[end if] as [he of M] slowly pulls out and returns to [his of M] feet.";
		severeHumiliate.

To say MessyPullOutFlav of (M - deep one) in (F - a fuckhole):
	if bukkake fetish is 1, say "[one of][BigNameDesc of M] suddenly pulls out, spraying your [AssDesc] with [semen].[or][BigNameDesc of M] suddenly decides to pull out, spraying your [AssDesc] with fresh [semen].[or][BigNameDesc of M] suddenly decides not to creampie you, allowing [his of M] load to spray out all over your [AssDesc].[in random order]";
	otherwise say "[one of][BigNameDesc of M] suddenly pulls out, spraying your [variable F] with [semen].[or][BigNameDesc of M] suddenly decides to pull out, spraying your [variable F] with fresh [semen].[or][BigNameDesc of M] suddenly decides not to creampie you, allowing [his of M] load to spray out all over your [variable F].[in random order]".

To say PullOutFlav of (M - deep one) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] suddenly pulls out, spraying [his of M] [semen] all over the floor.[or][BigNameDesc of M] suddenly decides to pull out, allowing [his of M] [semen] to shoot out on the floor.[or][BigNameDesc of M] suddenly decides to pull out, allowing [his of M] load to shoot out on the floor.[in random order]".

To say CondomPieFlav of (M - deep one) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] makes a deep, guttural noise, slamming [his of M] [DickDesc of M] home as [he of M] fills the condom with [semen].[or]A deep, guttural noise comes from [NameDesc of M][']s throat as [he of M] ejaculates into the condom![or]You hear a deep, guttural noise from behind you as [NameDesc of M] ejaculates, filling the condom with fresh [semen].[or][BigNameDesc of M] tightens [his of M] grip, emitting a deep, guttural noise as [his of M] [semen] slowly fills the condom.[in random order] [if the player is not ashamed]Fear pierces your body as you suddenly answer [his of M] call, croaking like some demented frog[otherwise if the player is not shameless]Confusion and disbelief assault your mind as you suddenly answer [his of M] call, croaking like a frog[otherwise]You immediately answer with a call of your own, croaking like an obedient little mate[end if] as [he of M] pulls out and returns to [his of M] feet.";

Section 2 - DQ

Definition: deep one is willing to deliver enemas: decide yes.

To say EnemaStartFlav of (M - deep one):
	say "[BigNameDesc of M] opens [his of M] mouth wide. Inside, you can see that [his of M] grotesque tongue is actually more of a hollow tube. Without a moment's hesitation, [he of M] begins to push this powerful tube-muscle into your unprotected [asshole]!".

To say EnemaFlav of (M - deep one):
	say "[BigNameDesc of M] [one of]makes a weird gurgling sound[or]makes a low humming sound[or]makes a clicking sound[in random order] as water pumps [one of]into your belly[or]up your anal passage[or]into you[at random] from [one of]inside [his of M] body[or][his of M] alien tongue[at random].".

To say EnemaAftermath of (M - deep one):
	say "[BigNameDesc of M] pulls [his of M] tube-like tongue from your [asshole] with a noisy slurp, and then [he of M] releases you.";
	TimesSubmittedUp M by 1.

To decide which number is the enema quarts of (M - deep one):
	decide on a random number between 2 and 3.

Definition: deep one is willing to confiscate: decide yes.

Definition: deep one (called M) is eager to confiscate:
	if M is able to confiscate, decide yes;
	decide no.

Section 3 - Damage

To say CombatProvokedReaction of (M - deep one):
		say "The creature shrieks in rage!".

To say DamageReactHealthy of (M - deep one):
	say "The creature seems uninjured!".

To say DamageReactDamaged of (M - deep one):
	say "The creature doesn't seem to be affected by [his of M] injuries!".

To say DamageReactTired of (M - deep one):
	say "The creature seems to be having second thoughts!".

To say DamageReactWeak of (M - deep one):
	say "The creature is becoming rather frantic!".

To say BanishFleeFlav of (M - deep one):
	say "[BigNameDesc of M] shrieks and retreats into the darkness!".

To compute unique banishment of (M - deep one):
	increase the times-encountered of M by 1.


To bore (M - deep one) for (N - a number) seconds:
	dislodge M;
	compute common boredom of M for N seconds;
	now M is uninterested;
	now the boredom of M is N;
	now the raw difficulty of M is the starting difficulty of M - the times-encountered of M.

To compute domination interference of (M - a deep one) for (N - a monster):
	if N is acolyte:
		say "[BigNameDesc of M] gets between you and [NameDesc of N]! Looks like you're going to have to deal with [him of M] first!";
		now player-fucking is DOMINANT-FAILURE;
		anger M;
	otherwise if M is interested:
		say "[BigNameDesc of M] pauses, waiting to see what happens next.".

Deep One ends here.
