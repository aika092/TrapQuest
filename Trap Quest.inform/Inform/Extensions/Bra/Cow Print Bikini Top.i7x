Cow Print Bikini Top by Bra begins here.

A cow print bikini top is a kind of bikini top. Figure of bikini 3 is the file "bikini3.png".  The text-shortcut of cow print bikini top is "cpt".

There is 1 unique cow print bikini top.

To say selfexaminetitle of (B - a cow print bikini top):
	say "modest cow print bikini top".

To decide which figure-name is clothing-image of (C - a cow print bikini top):
	decide on figure of bikini 3.

To say ClothingDesc of (C - a cow print bikini top):
	say "This relatively modest bikini has a cow print.".

To decide which number is the initial outrage of (C - a cow print bikini top):
	decide on 1.
	
To compute periodic effect of (B - a cow print bikini top):
	BraGrow B;
	let K be a random off-stage cow print bikini bottoms;
	if lactation fetish is 1 and a random number between 1 and 250 - (unlucky * 100) is 1 and K is actually summonable:
		say "[bold type]A cow print bikini bottom appears around your loins, matching your [printed name of B]![roman type][line break]";
		now the effect of K is 1;
		summon K cursed.

To BraGrow (B - a cow print bikini top): [Quadruple the standard chance of the bra increasing in size each round.]
	if B is cursed and the player is not top heavy:
		if the size of B > the largeness of breasts and a random number between 1 and (25 + (the magic-modifier of B * 5)) is 1:
			if B is milk production:
				MilkUp 1;
			otherwise:
				say "You feel your breasts grow to try and [if the support of B is 0]further emphasise the uselessness of your [printed name of B]![otherwise]fill your [printed name of B]![end if]";
				BustUp 1;
		otherwise if the size of B is the largeness of breasts and the player is not top heavy and the size of B < the max size of B and a random number between 1 and 25 is 1 and the support of B > 1:
			if B is milk production, say "You feel your [printed name of B] grow in size to allow your [BreastDesc] to produce [if the milk volume of breasts > 0]even more [end if][milk]!";
			otherwise say "You feel your [printed name of B] grow in size to allow your [BreastDesc] to fill out even further!";
			increase the size of B by 1.

To decide which object is the unique-upgrade-target of (C - a cow print bikini top):
	decide on nothing.

To compute (C - a cow print bikini top) unique inheriting from (D - a clothing):
	now C is milk production.

Definition: a cow print bikini top (called C) is untransformable:
	if the player is a cowgirl, decide yes;
	decide no.

Cow Print Bikini Top ends here.
