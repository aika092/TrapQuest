Cow Print Bikini Top by Bra begins here.

cow print bikini top is a bikini top. Figure of bikini 3 is the file "Items/Clothes/Upper/Bras/bikini3.png". The text-shortcut of cow print bikini top is "cpt".

cow print bikini top is unique.


Definition: cow print bikini top is class-relevant:
	if the class of the player is cowgirl, decide yes;
	decide no.

To compute class set up of (B - cow print bikini top):
	now B is milk production;
	now the raw-magic-modifier of B is the largeness of breasts / 4.

To say selfexaminetitle of (B - cow print bikini top):
	say "modest cow print bikini top".

To decide which figure-name is clothing-image of (C - cow print bikini top):
	decide on figure of bikini 3.

To say ClothingDesc of (C - cow print bikini top):
	say "This relatively modest bikini has a cow print.".

To decide which number is the initial outrage of (C - cow print bikini top):
	decide on 1.

Definition: cow print bikini top is cow themed: decide yes.
Definition: cow print bikini top is black themed: decide yes.
Definition: cow print bikini top is white themed: decide yes.
Definition: cow print bikini top is discovered varied: decide no.

To compute periodic effect of (B - cow print bikini top):
	let K be a random off-stage cow print bikini bottoms;
	if lactation fetish is 1 and a random number between 1 and 250 - (unlucky * 100) is 1 and K is actually summonable:
		say "[bold type]A cow print bikini bottom appears around your loins, matching your [ShortDesc of B]![roman type][line break]";
		now the effect of K is 1;
		if the class of the player is cowgirl, summon K;
		otherwise summon K cursed with quest.

To BraGrow (B - cow print bikini top): [Quadruple the standard chance of the bra increasing in size each round.]
	if B is cursed and the player is not top heavy and the stolen-strength of B is 0:
		if the size of B > the largeness of breasts and a random number between 1 and (25 + (the magic-modifier of B * 5)) is 1:
			if B is milk production:
				MilkUp 1;
			otherwise:
				say "You feel your breasts grow to try and [if the support of B is 0]further emphasise the uselessness of your [printed name of B]![otherwise]fill your [printed name of B]![end if]";
				BustUp 1;
		otherwise if the size of B is the largeness of breasts and the player is not top heavy and the size of B < the max size of B and a random number between 1 and 25 is 1:
			if B is milk production, say "You feel your [printed name of B] grow in size to allow your [BreastDesc] to produce [if the milk volume of breasts > 0]even more [end if][milk]!";
			otherwise say "You feel your [printed name of B] grow in size to allow your [BreastDesc] to fill out even further!";
			increase the size of B by 1.

To decide which object is the unique-upgrade-target of (C - cow print bikini top):
	decide on nothing.

To compute (C - cow print bikini top) unique inheriting from (D - a clothing):
	now C is milk production.

Cow Print Bikini Top ends here.
