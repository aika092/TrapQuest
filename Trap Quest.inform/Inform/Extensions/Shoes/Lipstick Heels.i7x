Lipstick Heels by Shoes begins here.


A lipstick heels is a kind of stiletto heels. A lipstick heels is usually leather. A lipstick heels is rare. The heel-height of a lipstick heels is usually 5. There is 1 lipstick heels.

The printed name of lipstick heels is usually "[TQlink of item described][item style][clothing-title-before]pair of [clothing-material of item described] [heel-height of the item described] inch lipstick heels[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of lipstick heels is "lsh".

To decide which figure-name is the clothing-image of (H - a lipstick heels):
	decide on the figure of lipstick heels.

Figure of lipstick heels is the file "lipstick1.png".

To decide which number is the unique outrage of (C - a lipstick heels):
	decide on 4.

To decide which number is the hindrance-modifier of (C - a lipstick heels):
	decide on 0.

To decide what number is the price of (C - a lipstick heels):
	decide on 2.

To say UniqueShortDesc of (C - a lipstick heels):
	say "lipstick heels".

To say ClothingDesc of (C - a lipstick heels):
	say "A unique pair of black leather [heel-height of C] inch stiletto heels, where the sharp strong heel looks like a stick of red lipstick. [if C is not worn][otherwise if the make-up of face > 1]Somehow you can sense that they are greatly empowering your kicks[otherwise if the make-up of face > 0]Somehow you can sense that they are empowering your kicks[otherwise]They don't seem to currently have any effect. Maybe it's because you're not currently wearing any make up[end if].";
	say "[SteadinessDesc of C]".

To uniquely set up (C - a lipstick heels):
	do nothing.

To decide which number is the damage modifier of (H - a lipstick heels):
	[Double damage on crit with heels]
	if attack-type is 3:
		[Normal heels have a 1 in 6 chance. Lipstick heels have a 1 in 7 chance with 0 make up and a 1 in 1 chance with 3 make up.]
		let M be the make-up of face;
		if M > 3, now M is 3;
		let R be a random number between 1 and (7 - (M * 2));
		if R is 1:
			now critical is 1;
			decide on the strength of the player / 3.


Lipstick Heels ends here.

