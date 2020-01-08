Peep Toe Heels by Shoes begins here.

A peep toe heels is a kind of stiletto heels. The printed name of peep toe heels is usually "[clothing-title-before]pair of [clothing-material of item described] [heel-height of the item described] inch peep toe heels[clothing-title-after]". The printed plural name of peep toe heels is usually "[TQlink of item described][item style]pairs of [clothing-title-before][clothing-material of item described] [heel-height of the item described] inch peep toe heels[clothing-title-after]". The text-shortcut of peep toe heels is "pth".

There is 1 satin peep toe heels. There is 1 leather peep toe heels. There is 1 pvc peep toe heels.
Definition: a peep toe heels is pink themed if it is satin.
Definition: a peep toe heels is black themed if it is not satin.

To decide which figure-name is the clothing-image of (H - a peep toe heels):
	if H is leather, decide on the figure of leather peep toe heels;
	if H is pvc, decide on the figure of pvc peep toe heels;
	if H is satin, decide on the figure of satin peep toe heels.

Figure of leather peep toe heels is the file "Items/Clothes/Lower/Feet/Heels/Peeptoe/peeptoes1.png".
Figure of pvc peep toe heels is the file "Items/Clothes/Lower/Feet/Heels/Peeptoe/peeptoes2.png".
Figure of satin peep toe heels is the file "Items/Clothes/Lower/Feet/Heels/Peeptoe/peeptoes3.png".

To decide which number is the unique outrage of (C - a peep toe heels):
	decide on 0.

To say UniqueShortDesc of (C - a peep toe heels):
	say "peep toe heels";

To say ClothingDesc of (C - a peep toe heels):
	say "A pair of [heel-height of C] inch [if C is leather]black leather[otherwise if C is pvc]black PVC[otherwise if C is satin]pink satin[end if] open toed shoes with a strong stiletto heel.";
	say "[SteadinessDesc of C]".

To uniquely set up (C - a peep toe heels):
	if C is pvc, now the text-shortcut of C is "ppt";
	if C is satin, now the text-shortcut of C is "spt";
	if C is leather, now the text-shortcut of C is "lpt";
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


Peep Toe Heels ends here.
