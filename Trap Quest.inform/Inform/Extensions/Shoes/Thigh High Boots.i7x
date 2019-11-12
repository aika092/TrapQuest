Thigh High Boots by Shoes begins here.


A thigh high boots is a kind of boots. The printed name of thigh high boots is usually "[clothing-title-before]pair of [clothing-material of item described] [heel-height of the item described] inch thigh high boots[clothing-title-after]".  The printed plural name of thigh high boots is usually "[TQlink of item described][item style]pairs of [clothing-title-before][clothing-material of item described] [heel-height of the item described] inch thigh high boots[clothing-title-after]".  The text-shortcut of thigh high boots is "thb".

Definition: a thigh high boots is fluid immune: decide yes.
Definition: a thigh high boots is black themed: decide yes.

There is 1 latex thigh high boots. There is 1 leather thigh high boots.

To decide which number is the unique outrage of (C - a thigh high boots):
	decide on 1.

To decide which figure-name is the clothing-image of (H - a thigh high boots):
	if H is latex, decide on the figure of latex thigh boots;
	decide on the figure of leather thigh boots.

To say ClothingDesc of (H - a thigh high boots):
	say "A pair of [heel-height of H] inch black [if H is leather]leather[otherwise if H is latex]latex[end if] thigh high boots with a strong stiletto heel.";
	say "[SteadinessDesc of H]".

To say UniqueShortDesc of (H - a thigh high boots):
	say "thigh high boots".

Figure of latex thigh boots is the file "Items/Clothes/Lower/Feet/Boots/thighboots1.png".
Figure of leather thigh boots is the file "Items/Clothes/Lower/Feet/Boots/thighboots2.png".

To uniquely set up (C - a thigh high boots):
	if C is latex, now the text-shortcut of C is "lth";
	let R be a random number between 1 and 8;
	if C is cursed:
		if R <= 2:
			now C is posture training;
		otherwise if R <= 4:
			now C is stumbling;
	otherwise:
		if R is 1, now C is speed;
		if R is 2, now C is kicking;
	set up heel length of C.

A WC thigh high boots is a kind of thigh high boots. There is 1 unique WC thigh high boots. A WC thigh high boots is usually latex. Figure of WC thigh high boots is the file "Items/Clothes/Lower/Feet/Boots/WcLatexBoot.png". WC thigh high boots has a number called powerup.

To decide which figure-name is the clothing-image of (H - a WC thigh high boots):
	decide on figure of WC thigh high boots.

To say ClothingDesc of (H - a WC thigh high boots):
	say "A pair of [heel-height of H] inch white latex thigh high boots with a strong stiletto heel.";
	say "[SteadinessDesc of H]".

To say UniqueShortDesc of (H - a WC thigh high boots):
	say "human toilet thigh high boots".

To uniquely set up (C - a WC thigh high boots):
	now C is stumbling;
	set up heel length of C.

To set up influence of (C - a WC thigh high boots):
	now C is urine-taste-addiction-influencing.

Definition: a WC thigh high boots is toilet themed: decide yes.
Definition: a WC thigh high boots is black themed: decide no.
Definition: a WC thigh high boots is white themed: decide yes.

Report kicking when there are worn WC thigh high boots:
	let C be a random WC thigh high boots;
	if C is kicking:
		if the powerup of C < 20 and (a random number between 1 and powerup of C) + (a random number between 1 and powerup of C) <= 2:
			say "[bold type]You feel the kicking enchantment leave your [ShortDesc of C] and the stumbling enchantment return. It looks like it's decided you've been shirking your toilet duties![roman type][line break]";
			now C is stumbling;
			now the powerup of C is 0;
		otherwise:
			decrease the powerup of C by 1.



black-latex-boots is a boots. black-latex-boots is latex. The printed name of black-latex-boots is "[clothing-title-before]pair of black latex [heel-height of the item described] inch knee high boots[clothing-title-after]".The text-shortcut of black-latex-boots is "lkhb".

Figure of black latex boots is the file "Items/Clothes/Lower/Feet/Boots/latexboots1.png".

Definition: black-latex-boots is fluid immune: decide yes.
Definition: black-latex-boots is black themed: decide yes.

To decide which number is the unique outrage of (C - black-latex-boots):
	decide on 2.

To decide which figure-name is the clothing-image of (H - black-latex-boots):
	decide on figure of black latex boots.

To say ClothingDesc of (H - black-latex-boots):
	say "This pair of knee-high black latex boots laces up at the front and has a [heel-height of H] inch platform heel.";
	say "[SteadinessDesc of H]".

To say UniqueShortDesc of (H - black-latex-boots):
	say "black latex knee high boots".


Thigh High Boots ends here.

