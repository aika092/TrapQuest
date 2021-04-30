Platform Heels by Shoes begins here.

A platform heels is a kind of heels. The printed name of platform heels is "[clothing-title-before]pair of [clothing-material of item described] [heel-height of the item described] inch platform heels[clothing-title-after]". Understand "platform", "heels" as platform heels.

Definition: a platform heels is class-relevant:
	if it is latex and the class of the player is latex fetish model, decide yes;
	decide no.

To compute class set up of (P - a platform heels):
	now the heel-height of P is 4;
	now P is speed.

To decide which number is the hindrance-modifier of (C - a platform heels):
	decide on -2.

To say UniqueShortDesc of (C - a platform heels):
	say "platform heels".

To decide which number is the kick-bonus of (H - a platform heels):
	let S be 0;
	if H is blessed, increase S by 1;
	if the hindrance of H <= 0, increase S by the heel-height of H - 2;
	decide on S.

To uniquely set up (C - a platform heels):
	set up heel length of C;
	increase the heel-height of C by 2.

To decide which object is the unique-upgrade-target of (C - a platform heels):
	if the heel-height of C >= 6 and C is plentiful, decide on a random off-stage tall platform heels;
	decide on nothing.

pvc-platform-heels is a platform heels. pvc-platform-heels is pvc. The text-shortcut of pvc-platform-heels is "pph".

Definition: pvc-platform-heels is class-relevant:
	if the class of the player is silicone queen, decide yes;
	decide no.

To say ClassSummonFlav of (P - pvc-platform-heels):
	say "[bold type][if the player is upright]You suddenly shoot four inches upwards off the ground![otherwise]The soles of your feet are forced into an arch![end if][roman type][line break]A pair of [printed name of P] have appeared on your feet.".

Figure of pvc platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform1a.png".

To decide which figure-name is the clothing-image of (H - pvc-platform-heels):
	decide on the figure of pvc platform heels.

To say ClothingDesc of (C - pvc-platform-heels):
	say "A pair of [heel-height of C] inch red PVC platform shoes with strong chunky heels and platforms. [SteadinessDesc of C]".

Definition: pvc-platform-heels is red themed: decide yes.

leather-platform-heels is a platform heels. leather-platform-heels is leather. The text-shortcut of leather-platform-heels is "lph".

Figure of leather platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform2.png".

To decide which figure-name is the clothing-image of (H - leather-platform-heels):
	decide on the figure of leather platform heels.

To say ClothingDesc of (C - leather-platform-heels):
	say "A pair of [heel-height of C] inch black leather platform shoes with strong chunky heels and platforms. [SteadinessDesc of C]".

Definition: leather-platform-heels is black themed: decide yes.

latex-platform-heels is a platform heels. latex-platform-heels is latex. The text-shortcut of latex-platform-heels is "lpf".

Figure of latex platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform3.png".

To decide which figure-name is the clothing-image of (H - latex-platform-heels):
	decide on the figure of latex platform heels.

To say ClothingDesc of (C - latex-platform-heels):
	say "A pair of [heel-height of C] inch black latex platform shoes with strong chunky heels and platforms made out of cork[if C is worn and C is cursed and black-catsuit is worn and black-catsuit is cursed]. The upper part of your heels have completely merged with the rest of your catsuit[end if]. [SteadinessDesc of C]".

Definition: latex-platform-heels is black themed: decide yes.

tongue-heels is a platform heels. tongue-heels is biological. tongue-heels is unique.
Understand "tongued", "platform" as tongue-heels. The text-shortcut of tongue-heels is "tghl".

Figure of white tongue heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/tongueheels1a.png".
Figure of tonguing white tongue heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/tongueheels1b.png".
Figure of black tongue heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/tongueheels2a.png".
Figure of tonguing black tongue heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/tongueheels2b.png".

To decide which figure-name is the clothing-image of (C - tongue-heels):
	if tonguesBlack is true:
		if C is tonguing, decide on figure of tonguing black tongue heels;
		decide on figure of black tongue heels;
	otherwise:
		if C is tonguing, decide on figure of tonguing white tongue heels;
		decide on figure of white tongue heels.

To say ClothingDesc of (C - tongue-heels):
	say "This pair of [tonguesColour] heels each have two tongues that wrap up around the sides of your feet. [TongueStatus of C]";
	say "[SteadinessDesc of C]".

To say ShortDesc of (C - tongue-heels):
	say "tongued platform heels".
To say UniqueShortDesc of (C - tongue-heels):
	say ShortDesc of C.
To say MediumDesc of (C - tongue-heels):
	say "[tonguesColour] [ShortDesc of C]".

Definition: tongue-heels is demonic: decide yes.
Definition: tongue-heels is tongued: decide yes.
Definition: tongue-heels is transformation-protected: decide yes.
Definition: tongue-heels is white themed:
	if tonguesBlack is false, decide yes;
	decide no.
Definition: tongue-heels is black themed:
	if tonguesBlack is true, decide yes;
	decide no.

To decide which number is the unique outrage of (C - tongue-heels):
	if C is tonguing, decide on 6;
	decide on 1.

To uniquely set up (C - tongue-heels):
	set up heel length of C;
	increase the heel-height of C by 2.


A tall platform heels is a kind of platform heels. A tall platform heels is pvc. A tall platform heels is rare.

To set up magic attribute of (C - a tall platform heels):
	let R be a random number between 1 and 8;
	if C is cursed:
		if R <= 2:
			now C is posture training;[They can't be stumbling]
	otherwise:
		if R is 1, now C is speed;
		if R is 2, now C is kicking.

To uniquely set up (C - a tall platform heels):
	if a random number between 1 and 2 is 1, now the heel-height of C is 9;
	otherwise now the heel-height of C is 10.

Definition: a tall platform heels is end of transformation chain: decide yes. [It's the end of the transformation chain. This will make some things avoid bothering to attempt to transform it.]

Definition: a tall platform heels (called C) is IcarusScienceAppropriate:
	if the heel skill of the player > 4 and C is actually summonable, decide yes;
	decide no.

To say TransformReaction of (C - a tall platform heels):
	if the outrage of C is too humiliating:
		say "[variable custom style]What the fuck are these?! They are ludicrous. [if the hindrance of C > 2]There's no way I can walk in them without falling over.[otherwise]And a challenge to walk in...[end if][roman type][line break]";
	otherwise if C is almost too much:
		say "[variable custom style]I actually quite how quirky these are, and they make me feel really tall! [if the hindrance of C > 2]I'm not sure how I'm to walk around in them without falling over though.[otherwise]I hope I don't fall over too much, though![end if][roman type][line break]";
	otherwise if the player is not broken:
		say "[variable custom style]OMG, these are so cool! [if the hindrance of C > 2]It's going to make it very difficult for me to stay on two feet and keep the naughty boys away from my ass though, teehee![otherwise]And they're just what I need to get proper practise walking in extreme heels.[end if][roman type][line break]".

nine-inch-platform-heels is a tall platform heels. The text-shortcut of nine-inch-platform-heels is "phe9".

Figure of 9 inch pvc platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform1b.png".

To decide which figure-name is the clothing-image of (H - nine-inch-platform-heels):
	decide on the figure of 9 inch pvc platform heels.

To say ClothingDesc of (C - nine-inch-platform-heels):
	say "A unique pink and white pair of [heel-height of C] inch PVC platform shoes with strong chunky heels and platforms. [SteadinessDesc of C]".

Definition: nine-inch-platform-heels is pink themed: decide yes.
Definition: nine-inch-platform-heels is white themed: decide yes.

ten-inch-platform-heels is a tall platform heels. The text-shortcut of ten-inch-platform-heels is "phex".

Figure of 10 inch pvc platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform1c.png".

To decide which figure-name is the clothing-image of (H - ten-inch-platform-heels):
	decide on the figure of 10 inch pvc platform heels.

To say ClothingDesc of (C - ten-inch-platform-heels):
	say "A unique red pair of [heel-height of C] inch PVC platform shoes with strong chunky heels and platforms. [SteadinessDesc of C]".
Definition: ten-inch-platform-heels is red themed: decide yes.

Platform Heels ends here.
