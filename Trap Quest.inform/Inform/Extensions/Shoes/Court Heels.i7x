Court Heels by Shoes begins here.

A court heels is a kind of stiletto heels. The printed name of court heels is usually "[clothing-title-before]pair of [clothing-material of item described] [heel-height of the item described] inch court heels[clothing-title-after]". The printed plural name of court heels is usually "[TQlink of item described][item style]pairs of [clothing-title-before][clothing-material of item described] [heel-height of the item described] inch court heels[clothing-title-after]". The text-shortcut of court heels is "che".

There is 1 satin court heels. There is 1 leather court heels. There is 1 pvc court heels. There is 1 glass court heels. There is 1 latex court heels.

Definition: a court heels is fetish appropriate:
	if diaper quest is 0 or it is not latex, decide yes;
	decide no.

To decide which figure-name is the clothing-image of (H - a court heels):
	if H is glass, decide on figure of glass court heels;
	if H is leather, decide on the figure of leather court heels;
	if H is pvc, decide on the figure of pvc court heels;
	if H is latex, decide on the figure of latex court heels;
	decide on the figure of satin court heels.

Figure of glass court heels is the file "Items/Clothes/Lower/Feet/Heels/Court/court1.png".
Figure of leather court heels is the file "Items/Clothes/Lower/Feet/Heels/Court/court2.png".
Figure of satin court heels is the file "Items/Clothes/Lower/Feet/Heels/Court/court3.png".
Figure of pvc court heels is the file "Items/Clothes/Lower/Feet/Heels/Court/court4.png".
Figure of latex court heels is the file "Items/Clothes/Lower/Feet/Heels/Court/court6.png".

To decide which number is the unique outrage of (C - a court heels):
	decide on -1.

Definition: a court heels is pink themed:
	if it is pvc, decide yes;
	decide no.
Definition: a court heels is red themed:
	if it is leather, decide yes;
	decide no.
Definition: a court heels is black themed:
	if it is satin or it is latex, decide yes;
	decide no.

To say UniqueShortDesc of (C - a court heels):
	say "court heels".

To say ClothingDesc of (C - a court heels):
	say "A pair of [heel-height of C] inch [if C is glass]transparent glass[otherwise if C is leather]red leather[otherwise if C is satin]black satin[otherwise if C is pvc]hot pink PVC[otherwise if C is latex]shiny black[end if] fashionable shoes with a strong stiletto heel. They would be worn by noblewomen and maybe even royalty[if C is worn and C is cursed and C is latex and there is a worn cursed black catsuit]. The upper parts of the socks have completely merged with the rest of your catsuit[end if].";
	say "[SteadinessDesc of C]".

To uniquely set up (C - a court heels):
	if C is satin, now the text-shortcut of C is "sch";
	if C is glass, now the text-shortcut of C is "gch";
	if C is leather, now the text-shortcut of C is "lch";
	if C is pvc, now the text-shortcut of C is "pch";
	if C is latex, now the text-shortcut of C is "ltch";
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

To decide which object is the potential-upgrade-target of (C - a court heels):
	if the heel-height of C >= 6 and C is plentiful, decide on a random off-stage dildo heels;
	if (C is leather or C is satin) and C is plentiful, decide on a random off-stage girly bow court heels; [since there's only one girly bow court heels it won't transform into itself since it'll be on-stage already]
	decide on nothing.

Court Heels ends here.
