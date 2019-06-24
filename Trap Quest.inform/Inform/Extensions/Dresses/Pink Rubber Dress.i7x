Pink Rubber Dress by Dresses begins here.

A pink rubber dress is a kind of overdress. A pink rubber dress is usually unique. A pink rubber dress is usually low cut. A pink rubber dress is usually latex. A pink rubber dress is usually short.  A pink rubber dress has a number called charge.

There is 1 pink rubber dress.

The printed name of pink rubber dress is usually "[clothing-title-before]pink rubber dress[clothing-title-after]". The text-shortcut of pink rubber dress is "prd".

Figure of pink rubber dress is the file "Items/Clothes/Upper/Latex/rubberdress1.png".

To decide which figure-name is clothing-image of (C - a pink rubber dress):
	decide on figure of pink rubber dress.

To say ClothingDesc of (C - a pink rubber dress):
	say "This tight fitting pink dress is made of rubber and [if C is worn and the largeness of breasts > 6]stretches lewdly over your [BreastDesc], proudly displaying[otherwise]displays[end if] the words 'PLASTIC IS FANTASTIC' across [if C is worn]your[otherwise]the[end if] chest.".

To compute periodic effect of (R - a pink rubber dress):
	increase the charge of R by 1;
	if the charge of R > 100 / (unlucky + 1):
		now the charge of R is 0;
		if a random number between 1 and 2 is 1 and the player is not top heavy and the silicone volume of breasts < 20:
			say "[if the silicone volume of breasts is 0][bold type]You feel and hear your tits expanding like stretchy rubber until they are [BreastDesc]![roman type] Touching and feeling them, you can definitely feel tight, less squishy areas below the nipple. Somehow, your new dress has summoned breast implants inside of your boobs![otherwise]You feel your breast implants slightly increase in size.[end if]";
			BustImplantsUp 1 + extreme proportions fetish;
		otherwise if the total weighty volume of hips < max ass size and the silicone volume of hips > 0:
			say "You feel your ass implants slightly increase in size.";
			AssImplantsUp 1 + extreme proportions fetish.

To compute SelfExamineDesc of (C - a pink rubber dress):
	say "You are wearing a [ShortDesc of C]. ".

To say ShortDesc of (C - a pink rubber dress):
	say "rubber minidress".

To say MediumDesc of (C - a pink rubber dress):
	say "'PLASTIC IS FANTASTIC' minidress".

To decide which number is the initial outrage of (C - a pink rubber dress):
	decide on 5.

To decide which object is the unique-upgrade-target of (C - a pink rubber dress):
	decide on C.

Definition: a pink rubber dress is upgradable if the player is not top heavy.
Definition: a pink rubber dress is transformation-protected if it is not upgradable.
Definition: a pink rubber dress is disintegration-protected: decide yes.
Definition: a pink rubber dress is loop-safe-upgradable: decide yes.
Definition: a pink rubber dress is transformation-theme-blockable: decide no. [It doesn't care about the theme it shares with other items.]

To transform (C - a pink rubber dress):
	say "Your silicone implants grow [one of]a small amount[or]some more[stopping]!";
	BustImplantsUp 1.

To set up influence of (C - a pink rubber dress):
	set up sex-based influence of C.

Definition: a pink rubber dress is pink themed: decide yes.

Pink Rubber Dress ends here.

