Wedge Heels by Shoes begins here.

A wedge heels is a kind of heels. The printed name of wedge heels is usually "[clothing-title-before]pair of [clothing-material of item described] [heel-height of the item described] inch wedge heels[clothing-title-after]". The printed plural name of wedge heels is usually "[TQlink of item described][item style]pairs of [clothing-title-before][clothing-material of item described] [heel-height of the item described] inch wedge heels[clothing-title-after]". The text-shortcut of wedge heels is "whe".

There is 1 leather wedge heels. There is 1 pvc wedge heels. There is 1 satin wedge heels.

To decide which figure-name is the clothing-image of (H - a wedge heels):
	if H is leather, decide on the figure of leather wedge heels;
	if H is pvc, decide on the figure of pvc wedge heels;
	if H is satin, decide on the figure of satin wedge heels.

Figure of pvc wedge heels is the file "Items/Clothes/Lower/Feet/Heels/Wedge/wedge1.png".
Figure of leather wedge heels is the file "Items/Clothes/Lower/Feet/Heels/Wedge/wedge2.png".
Figure of satin wedge heels is the file "Items/Clothes/Lower/Feet/Heels/Wedge/wedge3.png".

To decide which number is the unique outrage of (C - a wedge heels):
	decide on -1.

To decide which number is the hindrance-modifier of (C - a wedge heels):
	decide on -1.

To decide which number is the kick-bonus of (S - a wedge heels):
	let X be the heel-height of S;
	decide on X - 3.

To decide which number is the original price of (C - a wedge heels):
	decide on the heel-height of C.

To say ClothingDesc of (C - a wedge heels):
	say "A pair of [heel-height of C] inch wedge [if C is leather]heels made of black leather patterer with pink and white alt-girl hearts and skeletons.[otherwise if C is pvc]boots made of some combination of PVC, other plastics and cardboard. They have a slutty leopard print and open toes.[otherwise if C is satin]heels that are smart and black. Relatively modest compared to most of the clothes you've seen in this game.[end if]";
	say "[SteadinessDesc of C]".

Definition: a wedge heels is heart themed if it is leather.
Definition: a wedge heels is leopard themed if it is pvc.
Definition: a wedge heels is black themed: decide yes.

To uniquely set up (C - a wedge heels):
	if C is pvc, now the text-shortcut of C is "pwh";
	if C is satin, now the text-shortcut of C is "swh";
	if C is leather, now the text-shortcut of C is "lwh";
	let R be a random number between 1 and 8;
	if C is cursed:
		if R <= 2:
			now C is posture training;
		otherwise if R <= 4:
			now C is stumbling;
	otherwise:
		if R is 1, now C is speed;
		if R is 2, now C is kicking;
	set up heel length of C;
	increase the heel-height of C by 2.

To decide which object is the potential-upgrade-target of (C - a wedge heels):
	if the heel-height of C >= 6 and C is plentiful, decide on a random off-stage armadillo heels;
	decide on nothing.

Wedge Heels ends here.
