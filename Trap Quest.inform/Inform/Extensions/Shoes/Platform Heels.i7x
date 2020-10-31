Platform Heels by Shoes begins here.

A platform heels is a kind of heels. The printed name of platform heels is usually "[clothing-title-before]pair of [clothing-material of item described] [heel-height of the item described] inch platform heels[clothing-title-after]". The printed plural name of platform heels is usually "[TQlink of item described][item style]pairs of [clothing-title-before][clothing-material of item described] [heel-height of the item described] inch platform heels[clothing-title-after]". The text-shortcut of platform heels is "phe".

There is 1 leather platform heels. There is 1 latex platform heels. There is 1 pvc platform heels.

To decide which number is the kick-bonus of (H - a platform heels):
	let S be 0;
	if H is blessed, increase S by 1;
	if the hindrance of H <= 0, increase S by the heel-height of H - 2;
	decide on S.

To decide which figure-name is the clothing-image of (H - a platform heels):
	if H is leather, decide on the figure of leather platform heels;
	if H is latex, decide on the figure of latex platform heels;
	decide on the figure of pvc platform heels.

Figure of pvc platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform1a.png".
Figure of leather platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform2.png".
Figure of latex platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform3.png".

To decide which number is the hindrance-modifier of (C - a platform heels):
	decide on -2.

To say UniqueShortDesc of (C - a platform heels):
	say "platform heels".

To say ClothingDesc of (C - a platform heels):
	say "A [if the heel-height of C is 9]unique yellow [otherwise if the heel-height of C is 10]unique red [end if]pair of [heel-height of C] inch [if C is latex]black latex[otherwise if C is leather]black leather[otherwise if C is pvc and the heel-height of C < 9]red PVC[end if] platform shoes with strong chunky heels and platforms[if C is latex] made out of cork[end if][if C is worn and C is cursed and C is latex and there is a worn cursed black catsuit]. The upper part of your heels have completely merged with the rest of your catsuit.[end if]";
	say "[SteadinessDesc of C]".

To uniquely set up (C - a platform heels):
	if C is pvc, now the text-shortcut of C is "pph";
	if C is latex, now the text-shortcut of C is "lpf";
	if C is leather, now the text-shortcut of C is "lph";
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

To decide which object is the potential-upgrade-target of (C - a platform heels):
	if the heel-height of C >= 6 and C is plentiful, decide on a random off-stage tall platform heels;
	decide on nothing.

Definition: a platform heels is disintegration-protected:
	if the class of the player is silicone queen, decide yes;
	decide no.
Definition: a platform heels is red themed:
	if it is pvc, decide yes;
	decide no.
Definition: a platform heels is black themed:
	if it is not pvc, decide yes;
	decide no.

Platform Heels ends here.
