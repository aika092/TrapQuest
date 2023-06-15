Pom Poms by Equippables begins here.

A pom-pom is a kind of big-gloves. A pom-pom is unique. A pom-pom is womanly. A pom-pom is usually pvc. Understand "pom", "poms" as pom-pom. A pom-pom has a number called charge.

Definition: a pom-pom is class-relevant:
	if the class of the player is cheerleader, decide yes;
	decide no.

To say ClassSummonFlav of (P - a pom-pom):
	say "A pair of [MediumDesc of P] appear to cover your hands![line break][variable custom style][if P is purple-pom-pom]I guess I shouldn't be surprised.[otherwise]ARE YOU SERIOUS?![end if][roman type][line break]".

To say ShortDesc of (C - a pom-pom):
	say "pom-poms".
To say MediumDesc of (C - a pom-pom):
	say "pair of pom-poms".

To decide which number is the strength-influence of (C - a pom-pom):
	if the charge of C > 0:
		if C is blessed, decide on 5;
		if C is cursed, decide on 3;
		decide on 4;
	decide on 0.

To decide which number is the dexterity-influence of (C - a pom-pom):
	decide on calculated-cumulative-outrage-level / 2.

This is the pom-poms prevent manual dexterity rule:
	if there is a worn pom-pom:
		if manual hands attempt is 1, say "You don't have the dexterity for that while you're wearing your pom-poms!";
		rule fails.
The pom-poms prevent manual dexterity rule is listed in the manual dexterity restriction rules.

To decide which number is the slap damage improvement of (W - a pom-pom):
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

purple-pom-pom is a pom-pom. The printed name of purple-pom-pom is "[clothing-title-before]purple pom-poms[clothing-title-after]". Understand "purple" as purple-pom-pom. The text-shortcut of purple-pom-pom is "pom".

Definition: purple-pom-pom is purple themed: decide yes.

Figure of pom poms is the file "Items/Accessories/Equippables/pompoms1.png".

To decide which figure-name is the clothing-image of (F - purple-pom-pom):
	decide on figure of pom poms.

To say ClothingDesc of (C - purple-pom-pom):
	say "A pair of purple pom-poms. You lose some manual dexterity from wearing them, and your slaps don't do anything. But you feel like you could [bold type]jump[roman type] and [bold type]kick[roman type] for hours! They are making you feel extra-lucky. Furthermore, you can sense that the sluttier you look, the more they will enhance your agility.".

To say MediumDesc of (C - purple-pom-pom):
	say "pair of purple pom-poms".

To decide which object is the unique-upgrade-target of (C - purple-pom-pom):
	if the class of the player is condom collector, decide on condom-pom-pom;
	decide on nothing.

Definition: purple-pom-pom is transformation-protected:
	if the unique-upgrade-target of it is nothing, decide yes;
	decide no.
Definition: purple-pom-pom is condom pinnable: decide yes.

To compute periodic effect of (C - purple-pom-pom):
	if the used condoms of C > 0:
		say "[bold type]Your [MediumDesc of C] reacts to having a used condom pinned to it![roman type] ";
		UsedCondomWipe C;
		now the empty condoms of C is 0;
		transform C into condom-pom-pom.

condom-pom-pom is a pom-pom. The printed name of condom-pom-pom is "[clothing-title-before]used condom pom-poms[clothing-title-after]". Understand "used", "condom" as condom-pom-pom. The text-shortcut of condom-pom-pom is "cpom".

To compute class set up of (C - condom-pom-pom):
	now C is cursed.

Definition: condom-pom-pom is semen themed: decide yes.

Figure of condom pom poms is the file "Items/Accessories/Equippables/pompoms2.png".

To decide which figure-name is the clothing-image of (F - condom-pom-pom):
	decide on figure of condom pom poms.

To say ClothingDesc of (C - condom-pom-pom):
	say "A pair of pom-poms made entirely out of used condoms. You lose some manual dexterity from wearing them, and your slaps don't do anything. But you feel like you could [bold type]jump[roman type] and [bold type]kick[roman type] for hours! They are making you feel extra-lucky. Furthermore, you can sense that the more you look like a slut, the more they will enhance your agility.".

To say MediumDesc of (C - condom-pom-pom):
	say "pair of condom pom-poms".

To compute periodic effect of (C - condom-pom-pom):
	now the used condoms of C is 20;
	now the empty condoms of C is 0.
To compute school periodic effect of (C - condom-pom-pom):
	compute periodic effect of C.

Pom Poms ends here.
