Deep One by Monster begins here.

A deep one is a kind of monster. A deep one is usually male. [A deep one is usually intelligent. ]There is 1 deep one. A deep one is usually willing to do vaginal. A deep one is usually willing to do anal. The difficulty of a deep one is usually 12. A deep one is usually captive. A deep one is usually father material. Understand "deepone" as deep one.

The printed name of a deep one is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]deep one[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The description of a deep one is usually "[DeepOneDesc]".  The text-shortcut of deep one is "do". 

A deep one has a number called angered. The angered of a deep one is usually 0.

Figure of deep one is the file "deepone1.png".

To say DeepOneDesc:
	if images visible is 1, display figure of deep one;
	say "The creature before you resembles nothing so much as a horrible cross between fish, frog, and man. Its grey-blue skin is moist and lightly covered in scales, and it reeks of the sea. In spite of its hunched gait, you can tell it is quite tall and terribly strong. Its size extends to more than just height, the most human part of the creature is the huge, throbbing erection between its legs. It actually has the air of intelligence, but you're not sure how you could communicate with it.".

To set up (M - a deep one):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 10;
	now the health of M is the maxhealth of M;
	anger M.

Definition: a deep one (called M) is dangerous:
	if M is interested and M is unfriendly and the sleep of M is 0 and the boredom of M is 0 and the health of M > 0:
		if the scared of M is 0 or M is penetrating a body part:
			decide yes;
	decide no.

To compute labour to (M - a deep one):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue!  He[end if] kneels down on one knee and delivers a grotesque hybrid child, which he presents to you with a broad, fishy smile. He then leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment and loss at the same time.";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
			humiliate 300;
	otherwise if M is alive:
		Delay Labour.

Part 1 - Perception

To compute perception of (M - a deep one):
	now M is interested;
	if the angered of M is 1:
		say "The [M] roars in anger! This doesn[']t look good!";
		anger M;
	otherwise if the player-class is cultist or the pregnancy of the player > 0:
		say "The [M] looks at you, but seems not to be concerned with your presence.";
		calm M;
	otherwise:
		say "The [M] moves to engage you!";
		anger M.
		
Part 2 - Combat

Section 1 - Attack

To compute (M - a deep one) entering asshole:
	if M is friendly-fucking or presented-orifice is asshole, say "[FriendlyAssholePenetrationFlav of M]";
	otherwise say "[AssholePenetrationFlav of M]";
	now the sex-length of M is a random number between 2 and 3;
	now M is penetrating asshole;
	AssRuin 1.

To compute (M - a deep one) entering vagina:
	say "[VaginaPenetrationFlav of M]";
	now the sex-length of M is a random number between 2 and 3;
	now M is penetrating vagina;
	PussyRuin 1.
		
To compute vaginal climax of (M - a deep one):
	TimesFuckedUp M by 1;
	say "The [M] ejaculates deep inside your [vagina]!";
	WombFill the semen load of M;
	now M is not penetrating vagina;
	if the angered of M > 0:
		now the angered of M is 0;
	bore M.

To compute anal climax of (M - a deep one):
	TimesFuckedUp M by 1;
	say "The [M] ejaculates deep inside your [asshole]!";
	AssFill the semen load of M;
	now M is not penetrating asshole;
	if the angered of M > 0:
		now the angered of M is 0;
	bore M.
	
Section 2 - Damage

To compute damage of (M - a deep one):
	if the health of M > 0:
		if M is uninterested:
			say "The creature shrieks in rage!";
			now M is interested;
			anger M;
		otherwise:
			say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a deep one):
	if N > (the maxhealth of M / 4) * 3:
		say "The creature seems uninjured!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "The creature doesn[']t seem to be affected by its injuries!";
	otherwise if N > (the maxhealth of M / 4):
		say "The creature is becoming rather frantic!";
	otherwise:
		say "The creature seems to be having trouble staying on its feet!".
		
To compute unique death of (M - a deep one):
	say "The [noun] shrieks and falls to the ground.  ";
	say "Its body decomposes into a foul mist, and quicker than you can react it sinks into your skin! You feel much stronger and tougher!";
	Strengthup 2;
	DelicateDown 4.


Deep One ends here.
