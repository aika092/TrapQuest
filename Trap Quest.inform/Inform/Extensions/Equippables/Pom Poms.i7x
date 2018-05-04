Pom Poms by Equippables begins here.

A pom-pom is a kind of gloves. A pom-pom is unique. The printed name of pom-pom is "[TQlink of item described]pom-poms[shortcut-desc][TQxlink of item described][verb-desc of item described]". A pom-pom is usually pvc. There is 1 pom-pom. Understand "pom", "poms" as pom-pom. The text-shortcut of pom-pom is "pom".

To say ClothingDesc of (C - a pom-pom):
	say "A pair of purple pom-poms. You lose some manual dexterity from wearing them, and your slaps don't do anything. But you feel like you could kick for hours!". 
To say ShortDesc of (C - a pom-pom):
	say "pom-poms". 

To decide which number is the dexterity-influence of (C - a pom-pom):
	decide on the appearance of the player / 2.

This is the pom-poms prevent manual dexterity rule:
	if there is a worn pom-pom:
		if manual hands attempt is 1, say "You don't have the dexterity for that while you're wearing your pom-poms!.";
		rule fails.
The pom-poms prevent manual dexterity rule is listed in the manual dexterity restriction rules.

To decide which number is the damage improvement of (W - a pom-pom):
	decide on -5.

To compute attack of (W - a pom-pom) at (M - a monster):
	say "You shake your [printed name of W] in [NameDesc of M]'s face. [big he of M] seems to find that really annoying.".

To compute attack effect of (E - a pom-pom):[TODO: maybe add an effect where upskirts affect combat in some way?]
	if attack-type is 3:
		if a random number between 1 and 4 is 1, FatigueDown 5;
		FatigueDown 2.

Pom Poms ends here.

