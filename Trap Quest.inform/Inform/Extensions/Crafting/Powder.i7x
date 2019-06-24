Powder by Crafting begins here.

A powder is a kind of alchemy product. Understand "powders" as a powder.

PowderRubbing it on is an action applying to two things.
Check PowderRubbing:
	if the noun is not powder, say "This verb is for applying powder to things." instead;
	if the second noun is not clothing, say "Powder should be applied to clothing." instead.

Carry Out PowderRubbing:
	destroy the noun.

Understand "sprinkle [powder] on [something]" as PowderRubbing it on.


Figure of powder is the file "Items/Collectibles/powder1.png".
To decide which figure-name is the examine-image of (V - a powder):
	decide on the figure of powder.


Section 1 - Powder of Identification

A powder of identification is a kind of powder. The printed name of powder of identification is "[TQlink of item described]powder of identification[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of powder of identification is "[TQlink of item described]powders of identification[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of powder of identification is "poi". There are 3 powder of identification.

To say ExamineDesc of (B - a powder of identification):
	say "A small pinch of fine white powder in a tiny pouch. It looks like it is intended to be applied to clothing, to reveal its magic properties.".

To decide which number is the alchemy key of (A - a powder of identification):
	decide on 24.

Check PowderRubbing a powder of identification on clothing:
	if the second noun is sure and the second noun is identified, say "[variable custom style]I already know the magic details of this item...[roman type][line break]" instead.

Carry Out PowderRubbing a powder of identification on a thing:
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. It glitters brightly as its magic properties are revealed to you!  ";
	now the second noun is sure;
	now the second noun is identified;
	say "It is a [second noun][if the raw-magic-modifier of the second noun is 0 and the second noun is bland and the second noun is blandness]. [line break][variable custom style]Hmm, how underwhelming[end if].[roman type][line break]";
	if the noun is cursed and the second noun is not cursed:
		say "Suddenly it is surrounded by a dark glow. ";
		curse the second noun;
		say "Oh no! The powder itself must have been cursed, as it is now a [second noun]! You must have created it with the wrong recipe...";
	force inventory-focus redraw. [This forces the inventory window to redraw]

Section 2 - Powder of Enhancement

A powder of enhancement is a kind of powder. The printed name of powder of enhancement is "[TQlink of item described]powder of enhancement[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of powder of enhancement is "[TQlink of item described]powders of enhancement[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of powder of enhancement is "poe". There are 3 powder of enhancement.

To say ExamineDesc of (B - a powder of enhancement):
	say "A small pinch of fine green powder in a tiny pouch. It looks like it is intended to be applied to clothing, to improve its magical power.".

To BackgroundRender (T - a powder of enhancement) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of green in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a powder of enhancement):
	decide on 25.

Check PowderRubbing a powder of enhancement on clothing:
	if the raw-magic-modifier of the second noun > 4 and the second noun is identified, say "[variable custom style]Something tells me that would be a complete waste.[roman type][line break]" instead.

Carry Out PowderRubbing a powder of enhancement on a thing:
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. ";
	let R be a random number between 2 and 6;
	if the second noun is cursed or the raw-magic-modifier of the second noun > 4 or R > the raw-magic-modifier of the second noun:
		say "A green glow surrounds it for a moment!  ";
		if the noun is cursed:
			decrease the raw-magic-modifier of the second noun by 1;
		otherwise:
			increase the raw-magic-modifier of the second noun by 1;
			if the noun is blessed, increase the raw-magic-modifier of the second noun by 1;
		if the second noun is identified:
			say "It's now a [second noun]. [if the noun is cursed]Uh-oh, the powder itself must have been cursed! You must have created it with the wrong recipe...[otherwise]Nice![end if]";
		otherwise:
			say "That's probably a good thing, right?";
		if the second noun is worn,	force clothing-focus redraw; [This forces the clothing window to redraw]
		otherwise force inventory-focus redraw; [This forces the inventory window to redraw]
	otherwise:
		say "Nothing happens, and the powder is wasted. Darn, that must mean it is [if the second noun is identified]too powerful[otherwise]a powerful item[end if] already!".

Section 3 - Powder of Resistance

A powder of resistance is a kind of powder. The printed name of powder of resistance is "[TQlink of item described]powder of resistance[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of powder of resistance is "[TQlink of item described]powders of resistance[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of powder of resistance is "por". There are 3 powder of resistance.

To say ExamineDesc of (B - a powder of resistance):
	say "A small pinch of fine purple powder in a tiny pouch. It looks like it is intended to be applied to clothing, to prevent it from transforming.".

To BackgroundRender (T - a powder of resistance) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of violet in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a powder of resistance):
	decide on 26.

Check PowderRubbing a powder of resistance on clothing:
	if the second noun is untransformable, say "This can't be transformed so you don't see the point." instead.

Carry Out PowderRubbing a powder of resistance on a thing:
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. ";
	if the noun is cursed:
		say "Instead of increasing the transformation resistance of it, it tries to transform it instead!";
		increase the transform-attempts of the second noun by 2;
		potentially transform the second noun;
		say "Darn, that must mean the powder itself must have been cursed! You must have created it with the wrong recipe...";
	otherwise:
		say "It glows a soft shade of purple, and you can tell that it's now more resistant to transformation.";
		increase the transform-resistance of the second noun by 3;
		if the noun is blessed, increase the transform-resistance of the second noun by 2.


Section 4 - Powder of Escape

A powder of escape is a kind of powder. The printed name of powder of escape is "[TQlink of item described]powder of escape[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of powder of escape is "[TQlink of item described]powders of escape[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of powder of escape is "pox". There are 3 powder of escape.

To say ExamineDesc of (B - a powder of escape):
	say "A small pinch of fine silver powder in a tiny pouch. It looks like it is intended to be applied to clothing, to allow for its immediate removal.".

To BackgroundRender (T - a powder of escape) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	draw a rectangle TQcolour of silver in the current focus window at X1 by Y1 with size DX by DY.

To decide which number is the alchemy key of (A - a powder of escape):
	decide on 27.

Check PowderRubbing a powder of escape on a thing:
	if the second noun is not worn clothing, say "[variable custom style]I should save this to use it on something that I'm wearing.[roman type][line break]" instead;
	if the second noun is headgear, say "[variable custom style]Something tells me that won't work.[roman type][line break]" instead;
	if the second noun is unremovable and the second noun is not uncursed piercing, say "[variable custom style]I think that's completely unremovable, even with this powder's magic.[roman type][line break]" instead.

Carry Out PowderRubbing a powder of escape on a thing:
	say "You sprinkle the powder onto the [ShortDesc of the second noun]. ";
	if the noun is cursed:
		say "Instead of removing it, you feel it stick to you more firmly[if the second noun is not glued]. It is now glued[end if]! Darn, that must mean the powder itself must have been cursed! You must have created it with the wrong recipe...";
		now the second noun is glued;
		force clothing-focus redraw; [This forces the clothing window to redraw]
	otherwise:
		say "With a flash of silver it is suddenly no longer on your body but instead in your [if there is a worn bag of holding][ShortDesc of a random worn bag of holding][otherwise]hands[end if]!";
		dislodge the second noun;
		now the second noun is carried by the player.



Powder ends here.

