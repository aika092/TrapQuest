Bra Framework by Bra begins here.

A bra is a kind of clothing. bras have a number called support. The support of a bra is usually 1. bras have a number called size. bras have a number called min size. The min size of a bra is usually 2. bras have a number called max size. The max size of a bra is usually 15. A bra is usually top-displacable.

To decide which number is the default-soak-limit of (C - a bra):
	let B be 2;
	if C is fully covering:
		increase B by 6;
	otherwise if C is high cut:
		increase B by 5;
	otherwise if C is average cut:
		increase B by 4;
	otherwise if C is low cut:
		increase B by 3;
	otherwise if C is very low cut:
		increase B by 2;
	otherwise if C is ridiculously low cut:
		increase B by 1;
	if C is not potentially-top-layer-concealing:
		if C is potentially-partially-top-layer-concealing, now B is B / 2;
		otherwise now B is B / 3;
	if B < 1, now B is 1;
	decide on B.

To decide which number is the current support of (B - a bra):
	let S be 0;
	if B is top-placed and B is worn:
		if the largeness of breasts + 2 > the size of B, increase S by the support of B;
		increase S by the magic-modifier of B;
	decide on S.

A bra is usually rare.

Definition: a bra is same-type:
	if theme-share-target is bra and theme-share-target is not bikini top, decide yes;
	decide no.

Definition: a bra is ingredient:
	if it is not product, decide yes;
	decide no.

To decide which number is the crafting key of (B - a bra):
	decide on 26.

A bra is usually average cut. A bra is usually normally-nipple-covering.

The printed name of bra is usually "[clothing-title-before][CupDesc of item described][ShortDesc of item described][clothing-title-after]". The printed plural name of bra is usually "[clothing-title-before][CupDesc of item described][ShortDesc of item described]s[clothing-title-after]".

To say ShortDesc of (B - a bra):
	say "bra".
To say MediumDesc of (B - a bra):
	say selfexaminetitle of B.

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
	let S be the current support of the noun;
	if the largeness of breasts > 1:
		if S > 0:
			say "This [ShortDesc of the noun] is [if S > 2]significantly[otherwise if S is 2]moderately[otherwise]slightly[end if] supporting your breasts.";
		otherwise if the noun is worn:
			say "This [ShortDesc of the noun] is not supporting your breasts[if the largeness of breasts + 2 <= the size of the noun and the support of the noun > 0] because the cups are too big[otherwise if the noun is not top-placed and the support of the noun > 0] because it has been displaced[end if].";
	if the largeness of breasts > 2 and newbie tips is 1, say "[if the current support of the noun > 0]Bras[otherwise if the noun is top-placed]Most bras (but not this one)[otherwise]Most bras (but not when displaced)[end if] [if the number of worn bras is 0]would [end if]reduce the effective weight of your breasts and the amount that your slap damage [if the largeness of breasts >= 6 and the breastskill of the player is 0]is[otherwise]would be[end if] reduced by having large breasts[if the breastskill of the player is 1] if you hadn't learned the skill from the gladiator[end if].".

To say selfexaminetitle of (B - a bra):
	say ShortDesc of B.

To decide which number is the initial outrage of (C - a bra):
	decide on 0.

To compute unique summoning of (C - a bra):
	if the largeness of breasts >= the min size of C and the largeness of breasts <= the max size of C, now the size of C is the largeness of breasts.

To decide which object is the unique-upgrade-target of (C - a bra):
	if diaper quest is 0 and there is a worn demonic wearthing and tongue-bra is off-stage, decide on tongue-bra;
	if diaper quest is 1, decide on a random off-stage training bra;
	decide on nothing.

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
	if R > 6 and B is fully exposing, now B is protection;
	if R is 3 or R is 4, curse B;

To Assign Size to (B - a bra):
	if diaper quest is 1, now the size of B is 5;
	otherwise now the size of B is a random number between min size of B and max size of B.

To compute found size of (B - a bra):
	if the max size of B >= 20:
		now the size of B is 20;
	otherwise:
		if the size of B < the largeness of breasts + 2, now the size of B is the largeness of breasts + (a random number between 0 and 2); [We want it to be at least big enough for the player to wear right now]
		if the size of B > max breast size and max breast size >= min size of B, now the size of B is max breast size; [No point having it larger than max breast size]
		if the size of B > the max size of B, now the size of B is the max size of B. [Can't be larger than its limit]

Report going: [Let's make sure that all bras are a sensible size when encountered in containers.]
	repeat with C running through containers in the location of the player:
		repeat with B running through bras in C:
			compute found size of B;
	if the player is in School06: [Room below junk room]
		repeat with B running through bras in School15: [Junk room]
			compute found size of B.

To compute bra strain:
	repeat with B running through worn bras:
		if the size of B + the leniency of B < the largeness of breasts:
			compute bra strain of B.

To compute bra strain of (B - a bra):
	if the size of B < the max size of B and B is blessed:
		say "Your [ShortDesc of B] grows with your [BreastDesc] to continue to contain them.";
		increase the size of B by 1;
	otherwise:
		BraBurst B.

To BraBurst (B - a bra):
	say "Your [printed name of B] can't take the strain any more, and the clasp at the back snaps. It pings off your body, ruined!";
	destroy B.

To decide which number is the leniency of (B - a bra): [the higher F the bigger boobs need to get to burst clothing]
	let F be 4;
	repeat with C running through worn clothing:
		increase F by the leniency-addition of C;
	decide on F.

To restock (C - a bra):
	let B be a random basic loot bra;
	if B is bra:
		repeat with L running through Standard Item Pen:
			if L is bra, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting bras rule:
	let C be a random bra;
	repeat with N running from 1 to 1:
		restock C.
The setup starting bras rule is listed in the setup starting items rules.

To say BraSize (X - a number):
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

bra removability rules is a rulebook. The removability rules of bra is usually bra removability rules.

This is the bra already worn rule:
	repeat with O running through worn bras:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [ShortDesc of O][end if]!";
		rule fails.
The bra already worn rule is listed in the bra wearability rules.

This is the bra can't fit rule:
	unless the max size of wearing-target >= 20: [Special case where the bra doesn't care about size]
		if summoning is 1:
			if the largeness of breasts < the min size of wearing-target or the largeness of breasts > the max size of wearing-target, rule fails;
		otherwise:
			if the largeness of breasts > (the size of wearing-target + the leniency of wearing-target):
				say "You can't fit it on, your boobs are too big!";
				rule fails.
The bra can't fit rule is listed in the bra wearability rules.

This is the bra necklace clash rule:
	if wearing-target is neck covering:
		repeat with O running through worn neck covering clothing:
			if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [ShortDesc of O][end if]!";
			rule fails.
The bra necklace clash rule is listed in the bra wearability rules.

This is the bra dress clash rule:
	if summoning is 0:
		repeat with B running through worn breast covering clothing:
			if autowear is false, say "You can't wear that over your [ShortDesc of B][if B is not bra], it should go underneath[end if].";
			rule fails.
The bra dress clash rule is listed in the bra wearability rules.

Report wearing a bra:
	if the weight of breasts < 0 and the support of the noun > 0:
		say "Your breasts ignore the support of the [ShortDesc of the noun] and continue to float and attempt to pull you off the ground like helium balloons.";
	otherwise if the weight of breasts is 0 and the support of the noun > 0:
		if the largeness of breasts > 1, say "Your breasts are already weightless and so gain no support from your [ShortDesc of the noun].";
	otherwise if diaper quest is 0 and the min size of the noun < 20 and the max size of the noun < 20:
		if the size of the noun > the largeness of breasts + 2, say "Your breasts hang freely inside the cups.";
		if the size of the noun > the largeness of breasts and the size of the noun < the largeness of breasts + 3, say "Your breasts sit loosely inside the cups.";
		if the size of the noun is the largeness of breasts, say "Your breasts sit perfectly inside the cups.";
		if the size of the noun < the largeness of breasts, say "Your breasts fit tightly inside the cups.";
		if the noun is chastity bra, say "[one of][line break][variable custom style]Wow, this is heavy...[roman type][line break][or][stopping]";
	if the noun is cursed:
		say "[if the noun is bikini top]You feel the fabric suddenly tighten, and a quick check confirms you can't even get your fingers underneath them. This must be a cursed bikini top![otherwise]You feel the clasps on the back of the bra lock tightly and a quick check confirms that you can't pull them apart. This must be a cursed bra![end if]";
		now the noun is identified;
		now the noun is sure;
		BraGrow the noun.

To BraGrow (B - a bra): [Checks if the bra is cursed and if so it tries to grow itself or your breasts.]
	if diaper quest is 0 and the player is not top heavy and the player is not a flatchested trap and the stolen-strength of B is 0:
		let LB be the largeness of breasts;
		if the size of B < the max size of B and the size of B <= LB:
			say "The [printed name of B] grows into a ";
			increase the size of B by 1;
			say "[printed name of B]!";
		if the size of B > LB or the support of B is 0:
			say "You feel your breasts grow to try and [if the support of B is 0]further emphasise the uselessness of[otherwise]fill[end if] your [ShortDesc of B]!";
			let FB be the flesh volume of breasts;
			let keep-going be 1;
			while keep-going is 1:
				BustUp 1;
				if the flesh volume of breasts <= FB or the largeness of breasts > LB, now keep-going is 0;
				otherwise now FB is the flesh volume of breasts.

A bikini top is a kind of bra. A bikini top is usually nylon. A bikini top is usually optional-top-displacable. A bikini top is usually plentiful. A bikini top is usually low cut. A bikini top is usually erect-nipple-exposing. Understand "bikini", "top" as bikini top.

The text-shortcut of bikini top is "bt".

Definition: a bikini top is same-type:
	if theme-share-target is bikini top or (theme-share-target is bra and there is worn bikini bottoms), decide yes;
	decide no.

The min size of a bikini top is usually 2. The max size of a bikini top is usually 15. The support of a bikini top is usually 1.

A string bikini top is a kind of bikini top. The min size of a string bikini top is usually 20. The max size of a string bikini top is usually 20. A string bikini top is usually ridiculously low cut. A string bikini top is usually transformation-rare. [Essentially a string bikini top comes in one size fits all]

Definition: a string bikini top is uncovered themed: decide yes.
Definition: a string bikini top is swimming themed: decide yes.

To say CupDesc of (C - a string bikini top):
	say "".

To compute unique summoning of (C - a bikini top):
	if the largeness of breasts >= the min size of C and the largeness of breasts <= the max size of C, now the size of C is the largeness of breasts;
	if C is cursed and lactation fetish is 1, now C is milk production.

Carry out wearing bikini top:
	if the noun is cursed and lactation fetish is 1, now the noun is milk production.

To decide which number is the initial outrage of (C - a bikini top):
	decide on 2.

To say ShortDesc of (B - a bikini top):
	say "bikini top".

To decide which object is the unique-upgrade-target of (C - a bikini top):
	if the lactation rate of the player > a random number between 0 and 4, decide on a random off-stage cow print bikini top;
	decide on nothing.

Bra Framework ends here.
