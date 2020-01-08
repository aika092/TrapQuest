Deep One by Monster begins here.

deep one is a monster. The difficulty of deep one is 12. Understand "deepone" as deep one. deep one is male. The text-shortcut of deep one is "do".

deep one can be angered.

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
	now the difficulty of M is 10;
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

To say CreampieFlav of (M - deep one) in (F - a fuckhole):[TODO]
	say "[BigNameDesc of M] ejaculates deep inside your [variable F]!".

To say CondomPieFlav of (M - deep one) in (F - a fuckhole):
	say "[BigNameDesc of M] ejaculates into the condom.";

To decide if (M - deep one) is willing to creampie (F - a fuckhole):
	if F is vagina:
		if pregnancy fetish is 1 and the pregnancy of the player > 0, decide yes;
	let X be (the number of worn swimming themed wearthing) * 5;
	if there is a lubricant covering F, increase X by 2;
	if a random number between -2 and X > -1, decide yes;
	decide no.

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

To compute damage of (M - deep one):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "The creature shrieks in rage!";
			now M is interested;
			anger M;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReactHealthy of (M - deep one):
	say "The creature seems uninjured!".

To say DamageReactDamaged of (M - deep one):
	say "The creature doesn't seem to be affected by [his of M] injuries!".

To say DamageReactTired of (M - deep one):
	say "The creature is becoming rather frantic!".

To say DamageReactWeak of (M - deep one):
	say "The creature seems to be having trouble staying on [his of M] feet!".

To compute unique death of (M - deep one):
	say "[BigNameDesc of M] shrieks and falls to the ground. [big his of M] body decomposes into a foul mist, and quicker than you can react it sinks into your skin! You feel much stronger and tougher!";
	Strengthup 2;
	DelicateDown 2.

To compute domination interference of (M - a deep one) for (N - a monster):
	if N is acolyte:
		say "[BigNameDesc of M] gets between you and [NameDesc of N]! Looks like you're going to have to deal with [him of M] first!";
		now player-fucking is DOMINANT-FAILURE;
	otherwise if M is interested:
		say "[BigNameDesc of M] pauses, waiting to see what happens next.".

Deep One ends here.
