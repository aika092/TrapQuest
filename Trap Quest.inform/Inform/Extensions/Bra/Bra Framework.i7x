Bra Framework by Bra begins here.

A bra is a kind of clothing. bras have a number called support. The support of a bra is usually 1. bras have a number called size. bras have a number called min size. The min size of a bra is usually 2. bras have a number called max size. The max size of a bra is usually 15. A bra is usually top-displacable. The soak-limit of a bra is usually 10.

Definition: a bra (called B) is ingredient:
	if B is product, decide no;
	decide yes.

To decide which number is the crafting key of (B - a bra):
	decide on 26.

A bra is usually average cut. A bra is usually normally-nipple-covering.

The printed name of bra is usually "[TQlink of item described][clothing-title-before][CupDesc of item described][ShortDesc of item described][clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of bra is usually "[TQlink of item described][clothing-title-before][CupDesc of item described][ShortDesc of item described]s[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To say ShortDesc of (B - a bra):
	say "bra".

To say CupDesc of (B - a bra):
	let S be the size of B;
	if diaper quest is 0, say "[BraSize S] cup ".

To compute SelfExamineDesc of (B - a bra):
	let X be the largeness of breasts;
	let B be a random bra worn by the player;
	let Y be the size of B;
	if X < 3 or diaper quest is 1:
		say " that are inside a [selfexaminetitle of B]. ";
	otherwise:
		if Y > X + 2:
			say " that hang freely inside the cups of your [selfexaminetitle of B]. ";
		otherwise if Y > X and Y < X + 3:
			say " that sit loosely inside the cups of your [selfexaminetitle of B]. ";
		otherwise if Y is X:
			say " that sit perfectly inside the cups of your [selfexaminetitle of B]. ";
		otherwise if Y < X and Y > X - 2:
			say " that fit tightly inside the cups of your [selfexaminetitle of B]. ";
		otherwise if Y < X - 1:
			say " that are overflowing out of the cups of your [selfexaminetitle of B]. ".

Report examining bra:
	if the largeness of breasts > 2 and newbie tips is 1, say "Bras [if the number of worn bras is 0]would [end if]reduce the effective weight of your breasts.".

To say selfexaminetitle of (B - a bra):
	say "[ShortDesc of B]".

To decide which number is the initial outrage of (C - a bra):
	decide on 0.

To compute unique summoning of (C - a bra):
	if the largeness of breasts >= the min size of C and the largeness of breasts <= the max size of C, now the size of C is the largeness of breasts.

To decide which object is the unique-upgrade-target of (C - a bra):
	if diaper quest is 1, decide on a random off-stage training bra;
	decide on nothing.

To decide what number is the original price of (C - a bra):
	decide on 3.

To Set Up Bras:
	repeat with B running through bras:
		unless B is immune to change:
			Set up B.

To set up influence of (C - a bra):
	set up random-based influence of C.
	
To uniquely set up (B - a bra):
	Assign size to B;
	if diaper quest is 0:
		if extreme proportions fetish is 0 and the size of B > 11 - max breast size points, now the size of B is a random number between 3 and (11 - max breast size points);
		if extreme proportions fetish is 1 and the size of B > 20 - max breast size points, now the size of B is a random number between 10 and (20 - max breast size points);
	if the size of B < the min size of B, now the size of B is min size of B;
	let R be a random number between 1 and 9;
	if R is 1, now B is suppression;
	if R is 2:
		now B is absorption;
		if diaper quest is 1, now B is maturity;
	if R is 3:
		now B is temptation;
		if diaper quest is 1, now B is respiration;
	if R is 4 and lactation fetish is 1, now B is milk production;
	if (R is 5 or R is 6) and B is fully exposing, now B is protection;
	if R is 3 or R is 4, curse B;

To Assign Size to (B - a bra):
	if diaper quest is 1, now the size of B is 5;
	otherwise now the size of B is a random number between min size of B and max size of B.
	
To compute periodic effect of (B - a bra):
	BraGrow B.

To BraGrow (B - a bra): [Checks if the bra is cursed and if so it tries to grow itself or your breasts.]
	if B is cursed and the player is not top heavy and diaper quest is 0:
		if the size of B > the largeness of breasts and a random number between 1 and (25 + (the magic-modifier of B * 5)) is 1:
			if B is milk production:
				MilkUp 1;
			otherwise:
				say "You feel your breasts grow to try and [if the support of B is 0]further emphasise the uselessness of[otherwise]fill[end if] your [ShortDesc of B]!";
				BustUp 1;
		otherwise if the size of B is the largeness of breasts and the player is not top heavy and the size of B < the max size of B and a random number between 1 and 100 is 1 and the support of B > 1:
			if B is milk production, say "You feel your [ShortDesc of B] grow in size to allow your [BreastDesc] to produce [if the milk volume of breasts > 0]even more [end if][milk]!";
			otherwise say "You feel your [ShortDesc of B] grow in size to allow your [BreastDesc] to fill out even further!";
			increase the size of B by 1;
			
To compute bra strain:
	repeat with B running through worn bras:
		if the size of B < the largeness of breasts + the leniency of B:
			compute bra strain of B;

To compute bra strain of (B - a bra):
	if the size of B < the max size of B and B is cursed milk production bra or B is cursed maternity bra:
		say "Your [ShortDesc of B] grows with your [BreastDesc] to continue to contain them.";
		increase the size of B by 1;
	otherwise:
		BraBurst B.

To BraBurst (B - a bra):
	say "Your [printed name of B] can't take the strain any more, and the clasp at the back snaps. It pings off your body, ruined!";
	repeat with D running through worn overdresses:
		if the top-layer of D > the top-layer of B and a random number between 1 and 10 > 7 and D is not cursed:
			say "As it flies off, it rips through your [printed name of D]. It falls to the ground, ruined.";
			destroy D;
	destroy B.

To decide which number is the leniency of (B - a bra): [the lower F the bigger boobs need to get to burst clothing]
	let F be -2;
	repeat with C running through clothing worn by the player:
		increase F by the leniency-addition of C;
	decide on F.

To restock (C - a bra):
	let B be a random basic loot bra;
	if B is bra, now B is in Standard Item Pen.

This is the setup starting bras rule:
	let C be a random bra;
	repeat with N running from 1 to 4:
		restock C.
The setup starting bras rule is listed in the setup starting items rules.

To Say BraSize (X - a number):
	if X is 2, say "AA";
	if X is 3, say "A";
	if X is 4, say "B";
	if X is 5, say "C";
	if X is 6, say "D";
	if X is 7, say "DD";
	if X is 8, say "E";
	if X is 9, say "F";
	if X is 10, say "G";
	if X is 11, say "GG";
	if X is 12, say "H";
	if X is 13, say "HH";
	if X is 14, say "JJ";
	if X is 15, say "KK".
	
Understand "AA cup" as bra when the size of item described is 2.
Understand "A cup" as bra when the size of item described is 3.
Understand "B cup" as bra when the size of item described is 4.
Understand "C cup" as bra when the size of item described is 5.
Understand "D cup" as bra when the size of item described is 6.
Understand "DD cup" as bra when the size of item described is 7.
Understand "E cup" as bra when the size of item described is 8.
Understand "F cup" as bra when the size of item described is 9.
Understand "G cup" as bra when the size of item described is 10.
Understand "GG cup" as bra when the size of item described is 11.
Understand "H cup" as bra when the size of item described is 12.
Understand "HH cup" as bra when the size of item described is 13.
Understand "JJ cup" as bra when the size of item described is 14.
Understand "KK cup" as bra when the size of item described is 15.

To compute (C - a bra) unique inheriting from (D - a bra):
	now the size of C is the size of D;
	if the largeness of breasts > the size of C, now the size of C is the largeness of breasts;
	if the size of C > the max size of C, now the size of C is the max size of C;
	if the size of C < the min size of C, now the size of C is the min size of C.

This is the remove inappropriate bras rule:
	repeat with B running through fetish bras:
		now B is in Holding Pen;
	repeat with B running through chastity bras:
		now B is in Holding Pen;
	repeat with B running through cupless bras:
		now B is in Holding Pen;
	repeat with B running through ribbon bras:
		now B is in Holding Pen;
	repeat with B running through string bikini tops:
		now B is in Holding Pen.
The remove inappropriate bras rule is listed in the diaper quest fix rules.
	

Part - Wearability

bra wearability rules is a rulebook. The wearability rules of bra is usually bra wearability rules.

This is the bra already worn rule:
	repeat with O running through worn bras:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [ShortDesc of O][end if]!";
		rule fails.
The bra already worn rule is listed in the bra wearability rules.

This is the bra can't fit rule:
	if summoning is 1:
		unless the max size of wearing-target >= 20: [Special case where the bra doesn't care about size]
			if the largeness of breasts < the min size of wearing-target or the largeness of breasts > the max size of wearing-target, rule fails;
	otherwise:
		if the largeness of breasts > (the size of wearing-target + 1):
			say "You can't fit it on, your boobs are too big!";
			rule fails.
The bra can't fit rule is listed in the bra wearability rules.

This is the bra necklace clash rule:
	if wearing-target is neck covering:
		repeat with O running through worn neck covering clothing:
			if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [ShortDesc of O][end if]!";
			rule fails.
The bra necklace clash rule is listed in the bra wearability rules.

Check taking off worn bras:
	if the player is wrist bound, say "You won't be able to successfully get this off whilst your wrists are bound..." instead.

Report wearing a bra:
	if the weight of breasts < 0:
		say "Your breasts ignore the support of the bra and continue to float and attempt to pull you off the ground like helium balloons.";
	otherwise if the weight of breasts is 0:
		say "Your breasts are already weightless and so gain no support from your bra.";
	otherwise if diaper quest is 0:
		if the size of the noun > the largeness of breasts + 2, say "Your breasts hang freely inside the cups.";
		if the size of the noun > the largeness of breasts and the size of the noun < the largeness of breasts + 3, say "Your breasts sit loosely inside the cups.";
		if the size of the noun is the largeness of breasts, say "Your breasts sit perfectly inside the cups.";
		if the size of the noun < the largeness of breasts, say "Your breasts fit tightly inside the cups.";
		if the noun is chastity bra, say "[one of][line break][variable custom style]Wow, this is heavy...[roman type][line break][or][stopping]";
	if the noun is cursed, say "[if the noun is bikini top]You feel the fabric suddenly tighten, and a quick check confirms you can't even get your fingers underneath them. This must be a cursed bra![otherwise]You feel the clasps on the back of the bra lock tightly and a quick check confirms that you can't pull them apart. This must be a cursed bra![end if]".

Include Training Bra by Bra.
Include Wonder Bra by Bra.
Include Exercise Bra by Bra.
Include Fetish Bra by Bra.
Include Maternity Bra by Bra.
Include Chastity Bra by Bra.
Include Bikini Top by Bra.
Include White String Bikini Top by Bra.
Include Red String Bikini Top by Bra.
Include Cow Print Bikini Top by Bra.
Include Purple Bikini Top by Bra.
Include Leopard Print Bikini Top by Bra.
Include Silver Bikini Top by Bra.
Include Cream Bikini Top by Bra.
Include White Bikini Top by Bra.
Include Pink Bikini Top by Bra.
Include Purple String Bikini Top by Bra.
Include Nipple Ring Bikini Top by Bra.
Include Cupless Bra by Bra.
Include Ribbon Bra by Bra.
Include Spike Bra by Bra.
Include Sheer Bra by Bra.
Include Trainee Bra by Bra.
Include Pasties by Bra.

Bra Framework ends here.

