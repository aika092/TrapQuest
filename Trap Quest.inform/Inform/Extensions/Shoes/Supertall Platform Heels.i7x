Supertall Platform Heels by Shoes begins here.

A tall platform heels is a kind of platform heels. A tall platform heels is usually pvc. A tall platform heels is rare.

There are 2 tall platform heels.

Figure of 9 inch pvc platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform1b.png".
Figure of 10 inch pvc platform heels is the file "Items/Clothes/Lower/Feet/Heels/Platform/platform1c.png".

To decide which figure-name is the clothing-image of (H - a tall platform heels):
	if the heel-height of H >= 10, decide on the figure of 10 inch pvc platform heels;
	decide on the figure of 9 inch pvc platform heels.

To say ClothingDesc of (C - a tall platform heels):
	say "A [if the heel-height of C is 9]unique pink and white [otherwise if the heel-height of C >= 10]unique red [end if]pair of [heel-height of C] inch PVC platform shoes with strong chunky heels and platforms.";
	say "[SteadinessDesc of C]".

To uniquely set up (C - a tall platform heels):
	let R be a random number between 1 and 8;
	if C is cursed:
		if R <= 2:
			now C is posture training;[They can't be stumbling]
	otherwise:
		if R is 1, now C is speed;
		if R is 2, now C is kicking;
	if a random number between 1 and 2 is 1, now the heel-height of C is 9;
	otherwise now the heel-height of C is 10.

Definition: a tall platform heels is black themed: decide no.
Definition: a tall platform heels is pink themed:
	if the heel-height of it is 9, decide yes;
	decide no.
Definition: a tall platform heels is white themed:
	if it is pink themed, decide yes;
	decide no.
Definition: a tall platform heels is red themed:
	if the heel-height of it > 9, decide yes;
	decide no.
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

Supertall Platform Heels ends here.
