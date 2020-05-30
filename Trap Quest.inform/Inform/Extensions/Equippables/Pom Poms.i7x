Pom Poms by Equippables begins here.

A pom-pom is a kind of gloves. A pom-pom is unique. A pom-pom is womanly. The printed name of pom-pom is "[clothing-title-before]pom-poms[clothing-title-after]". A pom-pom is usually pvc. There is 1 pom-pom. Understand "pom", "poms" as pom-pom. The text-shortcut of pom-pom is "pom". A pom-pom has a number called charge. The charge of a pom-pom is usually 0.

Definition: a pom-pom is purple themed: decide yes.

Figure of pom poms is the file "Items/Accessories/Equippables/pompoms1.png".

To decide which figure-name is the clothing-image of (F - a pom-pom):
	decide on figure of pom poms.

To say ClothingDesc of (C - a pom-pom):
	say "A pair of purple pom-poms. You lose some manual dexterity from wearing them, and your slaps don't do anything. But you feel like you could [bold type]jump[roman type] and [bold type]kick[roman type] for hours!".
To say ShortDesc of (C - a pom-pom):
	say "pom-poms".

To decide which number is the strength-influence of (C - a pom-pom):
	if the charge of C > 0:
		if C is blessed, decide on 4;
		if C is cursed, decide on 1;
		decide on 2;
	decide on 0.

To decide which number is the dexterity-influence of (C - a pom-pom):
	decide on calculated-cumulative-outrage-level / 2.

This is the pom-poms prevent manual dexterity rule:
	if there is a worn pom-pom:
		if manual hands attempt is 1, say "You don't have the dexterity for that while you're wearing your pom-poms!.";
		rule fails.
The pom-poms prevent manual dexterity rule is listed in the manual dexterity restriction rules.

To decide which number is the damage improvement of (W - a pom-pom):
	decide on the magic-modifier of W - 4.

To decide which number is the luck-influence of (W - a pom-pom):
	decide on the magic-modifier of W + 5.

To compute periodic effect of (C - a pom-pom):
	if the charge of C > 0:
		decrease the charge of C by 1;
		if the charge of C < 1, say "Your [printed name of C] stop glowing as your excess spirit fades.".

To compute attack of (W - a pom-pom) at (M - a monster):
	say "You shake your [printed name of W] in [NameDesc of M][']s face. [big he of M] seems to find that really annoying.".

To compute attack effect of (E - a pom-pom):
	if attack-type is 3:
		if a random number between 1 and 4 is 1, FatigueDown 5;
		FatigueDown 2.

Pom Poms ends here.
