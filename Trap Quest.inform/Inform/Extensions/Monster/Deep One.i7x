Deep One by Monster begins here.

deep one is a monster. The difficulty of deep one is 12. deep one is captive. Understand "deepone" as deep one. deep one is male. The text-shortcut of deep one is "do". 

To say ShortDesc of (M - deep one):
	say "deep one".

deep one can be angered.

Figure of deep one is the file "NPCs/Mansion/deepone1.png".

To decide which figure-name is the monster-image of (M - deep one):
	decide on figure of deep one.
	
To say ShortDesc of (M - deep one):
	say "deep one".
	
To say MediumDesc of (M - deep one):
	say "deep one".

To say MonsterDesc of (M - deep one):
	say "The creature before you resembles nothing so much as a horrible cross between fish, frog, and man. Its grey-blue skin is moist and lightly covered in scales, and it reeks of the sea. In spite of its hunched gait, you can tell it is quite tall and terribly strong. Its size extends to more than just height, the most human part of the creature is the huge, throbbing erection between its legs. It has the air of human-level intelligence.".

To set up (M - deep one):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 10;
	now the health of M is the maxhealth of M;
	anger M.

Definition: deep one (called M) is dangerous:
	if M is interested and M is unfriendly and the sleep of M is 0 and the boredom of M is 0 and the health of M > 0:
		if the scared of M is 0 or M is penetrating a body part:
			decide yes;
	decide no.

To compute labour to (M - deep one):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player][BigNameDesc of father][otherwise][BigNameDesc of father] appears almost as if on cue! He[end if] kneels down on one knee and delivers a grotesque hybrid child, which he presents to you with a broad, fishy smile. He then leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment and loss at the same time.";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
			humiliate 300;
	otherwise if M is alive:
		Delay Labour.

Definition: deep one (called M) is willing to do oral:
	decide no.

Definition: deep one (called M) is willing to do titfucks:
	decide no.

Part 1 - Perception

To compute perception of (M - deep one):
	now M is interested;
	if M is angered:
		say "[BigNameDesc of M] roars in anger! This doesn[']t look good!";
		anger M;
	otherwise if the player-class is cultist or the pregnancy of the player > 0:
		say "[BigNameDesc of M] looks at you, but seems not to be concerned with your presence.";
		calm M;
	otherwise:
		say "[BigNameDesc of M] moves to engage you!";
		anger M.
		
Part 2 - Combat

Section 1 - Attack

To TimesFuckedUp (M - deep one) by (N - a number):
	if M is angered, now M is not angered;
	DirectTimesFuckedUp M by N.

To say CreampieFlav of (M - deep one) in (F - a fuckhole):[TODO]
	say "[BigNameDesc of M] ejaculates deep inside your [variable F]!".
	
Section 2 - Damage

To compute damage of (M - deep one):
	if the health of M > 0:
		if M is uninterested:
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
	say "The creature doesn[']t seem to be affected by its injuries!".

To say DamageReactTired of (M - deep one):
	say "The creature is becoming rather frantic!".

To say DamageReactWeak of (M - deep one):
	say "The creature seems to be having trouble staying on its feet!".

To compute unique death of (M - deep one):
	say "The [noun] shrieks and falls to the ground. ";
	say "Its body decomposes into a foul mist, and quicker than you can react it sinks into your skin! You feel much stronger and tougher!";
	Strengthup 2;
	DelicateDown 4.


Deep One ends here.

