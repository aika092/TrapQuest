Deep One by Monster begins here.

deep one is a monster. Understand "deepone" as deep one. deep one is male. The text-shortcut of deep one is "do".

deep one can be angered.

Definition: deep one is musky: decide yes.

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
	say "The creature before you resembles nothing so much as a horrible cross between fish, frog, and [man of M]. [big his of M] grey-blue skin is moist and lightly covered in scales, and [he of M] reeks of the sea. In spite of [his of M] hunched gait, you can tell [he of M] is quite tall and terribly strong. [if diaper quest is 0][big his of M] size extends to more than just height, the most human part of the creature is the huge, throbbing [DickDesc of M] between [his of M] legs. [end if][he of M] has the air of human-level intelligence.".

To set up (M - deep one):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is 10;
	now the health of M is the maxhealth of M;
	anger M.

To compute labour to (M - deep one):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player][BigNameDesc of father][otherwise][BigNameDesc of father] appears almost as if on cue! [big he of M][end if] kneels down on one knee and delivers a grotesque hybrid child, which [he of M] presents to you with a broad, fishy smile. [big he of M] then leaves you to recover from your ordeal.";
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

To compute monstermotion of (M - deep one):
	do nothing.

To compute (M - deep one) seeking (D - a direction):
	do nothing.

Part 1 - Perception

Definition: deep one is objectifying the player:
	if deep one is angered, decide yes;
	if the player-class is cultist or the pregnancy of the player > 0 or altar-diaper-link > 0, decide no;
	decide yes.

To compute perception of (M - deep one):
	now M is interested;
	if M is angered:
		say "[BigNameDesc of M] roars in anger! This doesn't look good!";
	otherwise if M is not objectifying the player:
		say "[BigNameDesc of M] looks at you, but seems not to be concerned with your presence.";
		calm M;
	otherwise:
		say "[BigNameDesc of M] moves to engage you!";
		anger M.

Part 2 - Combat

Section 1 - Attack

To TimesSubmittedUp (M - deep one) by (N - a number):
	if M is angered, now M is not angered;
	DirectTimesSubmittedUp M by N.

To decide if (M - deep one) is willing to creampie (F - vagina):
	if the pregnancy of the player is 1:
		if the father is tentacle monster or the father is vine or the father is creampie pole trap, decide no;
		if the class of the player is cultist:
			if the reaction of the player is not 1, decide no;[he may be ugly, but he's a good listener]
		decide yes;
	otherwise:
		if the player is pheromonal, decide yes;
		if the class of the player is cultist:
			if the reaction of the player is not 1, decide no;
		if a random number between 1 and 4 is 1, decide yes;
	decide no.

To decide if (M - deep one) is willing to creampie (F - asshole):
	if the class of the player is cultist:
		if the reaction of the player is not 1, decide no;
	decide yes.

To say CreampieFlav of (M - deep one) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] makes a deep, guttural noise, slamming [his of M] [DickDesc of M] home as [he of M] fills your [variable F] with [semen]![or]A deep, guttural noise comes from [NameDesc of M][']s throat as [he of M] ejaculates deep inside your [variable F].[or]You hear a deep, guttural noise from behind you as [NameDesc of M] ejaculates, filling your [variable F] with [semen].[or][BigNameDesc of M] tightens [his of M] grip, emitting a deep, guttural noise as [his of M] [semen] explodes into your [variable F]![at random] [run paragraph on]";
	if the pregnancy of the player is 1 and the father is not deep one:
		if (the father is musky and a random number between 1 and 6 is 1) or (the father is not musky and a random number between 1 and 3 is 1):
			say "An odd tingling feeling spreads through your belly, and you sense [PregGrowth of the father] inside of you transforming into...something else.";
			now the father is deep one;
		otherwise:
			say "An odd tingling feeling spreads through your belly, but...it seems to pass.";
	otherwise:
		say "[if the player is not ashamed]Fear pierces your body as you suddenly answer [his of M] call, croaking like some demented frog[otherwise if the player is not shameless]Confusion and disbelief assault your mind as you suddenly answer [his of M] call, croaking like a frog[otherwise]You immediately answer with a call of your own, croaking like an obedient little mate[end if] as [he of M] slowly pulls out and returns to [his of M] feet.";

To say MessyPullOutFlav of (M - deep one) in (F - a fuckhole):
	say "[one of][BigNamedesc of M] suddenly pulls out, spraying your [variable F] with [semen].[or][BigNameDesc of M] suddenly decides to pull out, spraying your [variable F] with fresh [semen].[or][BigNameDesc of M] suddenly decides not to creampie you, allowing [his of M] load to spray out all over your [variable F].[at random]".

To say PullOutFlav of (M - deep one) in (F - a fuckhole):
	say "[one of][BigNamedesc of M] suddenly pulls out, spraying [his of M] [semen] all over the floor.[or][BigNameDesc of M] suddenly decides to pull out, allowing [his of M] [semen] to shoot out on the floor.[or][BigNameDesc of M] suddenly decides not to pull out, allowing [his of M] load to shoot out on the floor.[at random]".

To say CondomPieFlav of (M - deep one) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] makes a deep, guttural noise, slamming [his of M] [DickDesc of M] home as [he of M] fills the condom with [semen].[or]A deep, guttural noise comes from [NameDesc of M][']s throat as [he of M] ejaculates into the condom![or]You hear a deep, guttural noise from behind you as [NameDesc of M] ejaculates, filling the condom with fresh [semen].[or][BigNameDesc of M] tightens [his of M] grip, emitting a deep, guttural noise as [his of M] [semen] slowly fills the condom.[at random] [if the player is not ashamed]Fear pierces your body as you suddenly answer [his of M] call, croaking like some demented frog[otherwise if the player is not shameless]Confusion and disbelief assault your mind as you suddenly answer [his of M] call, croaking like a frog[otherwise]You immediately answer with a call of your own, croaking like an obedient little mate[end if] as [he of M] pulls out and returns to [his of M] feet.";

Section 2 - DQ

Definition: deep one is willing to deliver enemas: decide yes.

To say EnemaStartFlav of (M - deep one):
	say "[BigNameDesc of M] opens [his of M] mouth wide. Inside, you can see that [his of M] grotesque tongue is actually more of a hollow tube. Without a moment's hesitation, [he of M] begins to push this powerful tube-muscle into your unprotected [asshole]!".

To say EnemaFlav of (M - deep one):
	say "[BigNameDesc of M] [one of]makes a weird gurgling sound[or]makes a low humming sound[or]makes a clicking sound[in random order] as water pumps [one of]into your belly[or]up your anal passage[or]into you[at random] from [one of]inside [his of M] body[or][his of M] alien tongue[at random].".

To say EnemaAftermath of (M - deep one):
	say "[BigNameDesc of M] pulls [his of M] tube-like tongue from your [asshole] with a noisy slurp, and then [he of M] releases you.".

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
	say "The creature doesn't seem to be affected by its injuries!".

To say DamageReactTired of (M - deep one):
	say "The creature seems to be having second thoughts!".

To say DamageReactWeak of (M - deep one):
	say "The creature is becoming rather frantic!".

To say BanishFleeFlav of (M - deep one):
	say "[BigNameDesc of M] shrieks and retreats into the darkness!".

To compute domination interference of (M - a deep one) for (N - a monster):
	if N is acolyte:
		say "[BigNameDesc of M] gets between you and [NameDesc of N]! Looks like you're going to have to deal with [him of M] first!";
		now player-fucking is DOMINANT-FAILURE;
	otherwise if M is interested:
		say "[BigNameDesc of M] pauses, waiting to see what happens next.".

Deep One ends here.
