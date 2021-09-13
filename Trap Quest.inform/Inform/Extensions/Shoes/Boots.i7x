Boots by Shoes begins here.

black-leather-flat-boots is a shoes. black-leather-flat-boots is leather. The printed name of black-leather-flat-boots is "[clothing-title-before]pair of black leather flat knee-high boots[clothing-title-after]".The text-shortcut of black-leather-flat-boots is "lfb". Understand "black", "flat", "knee-high" as black-leather-flat-boots.

Figure of black leather flat boots is the file "Items/Clothes/Lower/Feet/Boots/leatherboots2.png".

To decide which figure-name is the clothing-image of (H - black-leather-flat-boots):
	decide on figure of black leather flat boots.

Definition: black-leather-flat-boots is calf covering: decide yes.
Definition: black-leather-flat-boots is black themed: decide yes.

To decide which number is the initial outrage of (C - black-leather-flat-boots):
	decide on 1.

To say ClothingDesc of (H - black-leather-flat-boots):
	say "This pair of knee-high black leather boots laces up at the front. It has a gothic feel.".

To say UniqueShortDesc of (H - black-leather-flat-boots):
	say "black leather knee high boots".

To decide which object is the unique-upgrade-target of (H - black-leather-flat-boots):
	if black-leather-boots is off-stage, decide on black-leather-boots;
	decide on nothing.

black-leather-boots is a boots. black-leather-boots is leather. The printed name of black-leather-boots is "[clothing-title-before]pair of black leather [heel-height of the item described] inch knee-high boots[clothing-title-after]".The text-shortcut of black-leather-boots is "lkhb". Understand "black", "knee-high" as black-leather-boots.

Figure of black leather boots is the file "Items/Clothes/Lower/Feet/Boots/leatherboots1.png".

To decide which figure-name is the clothing-image of (H - black-leather-boots):
	decide on figure of black leather boots.

Definition: black-leather-boots is calf-covering: decide yes.
Definition: black-leather-boots is black themed: decide yes.

To decide which number is the unique outrage of (C - black-leather-boots):
	decide on 2.

To say ClothingDesc of (H - black-leather-boots):
	say "This pair of knee-high black leather boots laces up at the front and has a [heel-height of H] inch platform heel. It has a gothic feel. [SteadinessDesc of H]".

To say UniqueShortDesc of (H - black-leather-boots):
	say "black leather high heeled boots".

black-fetish-boots is a boots. black-fetish-boots is latex. The printed name of black-fetish-boots is "[clothing-title-before]pair of black latex [heel-height of the item described] inch boots[clothing-title-after]". The text-shortcut of black-fetish-boots is "blfb". Understand "black", "fetish" as black-fetish-boots.

A diaper quest fix rule:
	now black-fetish-boots is in Holding Pen.

Definition: black-fetish-boots is class-relevant:
	if the class of the player is latex fetish model, decide yes;
	decide no.

Figure of black fetish boots is the file "Items/Clothes/Lower/Feet/Boots/latexboots1.png".

To decide which figure-name is the clothing-image of (H - black-fetish-boots):
	decide on figure of black fetish boots.

Definition: black-fetish-boots is black themed: decide yes.

To decide which number is the unique outrage of (C - black-fetish-boots):
	decide on 3.

To say ClothingDesc of (H - black-fetish-boots):
	say "This pair of black latex boots has a [heel-height of H] inch platform heel. It has a fetishy vibe[if H is worn and H is cursed and black-catsuit is worn and black-catsuit is cursed]. The upper part has completely merged with the rest of your catsuit[end if]. [SteadinessDesc of H]".

To say UniqueShortDesc of (H - black-fetish-boots):
	say "black latex high heeled boots".


A thigh high boots is a kind of boots. The printed name of thigh high boots is "[clothing-title-before]pair of [clothing-material of item described] [heel-height of the item described] inch thigh high boots[clothing-title-after]". Understand "thigh high", "boots" as thigh high boots.

Definition: a thigh high boots is calf covering: decide yes.

To say UniqueShortDesc of (H - a thigh high boots):
	say "thigh high boots".

To decide which number is the unique outrage of (C - a thigh high boots):
	decide on 1.

latex-thigh-high-boots is a thigh high boots. latex-thigh-high-boots is latex. The text-shortcut of latex-thigh-high-boots is "lth".

Figure of latex thigh boots is the file "Items/Clothes/Lower/Feet/Boots/thighboots1.png".

To decide which figure-name is the clothing-image of (H - latex-thigh-high-boots):
	decide on the figure of latex thigh boots.

To say ClothingDesc of (H - latex-thigh-high-boots):
	say "A pair of [heel-height of H] inch black latex thigh high boots with a strong stiletto heel[if H is worn and H is cursed and black-catsuit is worn and black-catsuit is cursed]. The upper part of your heels have completely merged with the rest of your catsuit[end if]. [SteadinessDesc of H]".

Definition: latex-thigh-high-boots is black themed: decide yes.

leather-thigh-high-boots is a thigh high boots. The text-shortcut of leather-thigh-high-boots is "thb".

Figure of leather thigh boots is the file "Items/Clothes/Lower/Feet/Boots/thighboots2.png".

To decide which figure-name is the clothing-image of (H - leather-thigh-high-boots):
	decide on the figure of leather thigh boots.

To say ClothingDesc of (H - a thigh high boots):
	say "A pair of [heel-height of H] inch black leather thigh high boots with a strong stiletto heel. [SteadinessDesc of H]".

Definition: leather-thigh-high-boots is black themed: decide yes.

WC thigh high boots is a thigh high boots. WC thigh high boots is unique. A WC thigh high boots is latex. WC thigh high boots has a number called powerup.

Definition: WC thigh high boots is class-relevant:
	if the class of the player is human toilet, decide yes;
	decide no.

Figure of WC thigh high boots is the file "Items/Clothes/Lower/Feet/Boots/WcLatexBoot.png".

To decide which figure-name is the clothing-image of (H - WC thigh high boots):
	decide on figure of WC thigh high boots.

To say ClothingDesc of (H - WC thigh high boots):
	say "A pair of [heel-height of H] inch white latex thigh high boots with a strong stiletto heel[if H is worn and H is cursed and black-catsuit is worn and black-catsuit is cursed]. The upper part of your heels have completely merged with the rest of your catsuit[end if]. [SteadinessDesc of H]".

To uniquely set up (C - WC thigh high boots):
	now C is stumbling;
	set up heel length of C.

To set up influence of (C - WC thigh high boots):
	now C is urine-taste-addiction-influencing.

Definition: WC thigh high boots is white themed: decide yes.

Report kicking when WC thigh high boots is worn:
	if WC thigh high boots is kicking:
		if the powerup of WC thigh high boots < 20 and (a random number between 1 and powerup of WC thigh high boots) + (a random number between 1 and powerup of WC thigh high boots) <= 2:
			say "[bold type]You feel the kicking enchantment leave your [ShortDesc of WC thigh high boots] and the stumbling enchantment return. It looks like it's decided you've been shirking your toilet duties![roman type][line break]";
			now WC thigh high boots is stumbling;
			now the powerup of WC thigh high boots is 0;
		otherwise:
			decrease the powerup of WC thigh high boots by 1.

Boots ends here.
