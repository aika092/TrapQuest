Rings by Accessories begins here.

A ring is a kind of accessory. The printed name of ring is usually "[TQlink of item described][item style][accessory-colour of the item described] ring[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of ring is usually "[TQlink of item described][item style][accessory-colour of the item described] rings[clothing-title-after][TQxlink of item described][verb-desc of item described]".

There are 25 rings.

Check wearing rings:
	if the number of worn rings >= 8, say "You are already wearing 8 rings, and they are too small to fit on your thumbs." instead.

Check taking off finger covering clothing:
	if the noun is not cursed and the noun is not gloves and there is a worn ring, say "Unfortunately, you'll need to remove all your rings first." instead.

Check taking off worn rings when there are worn gloves:
	say "You would need to remove your [random worn gloves] first." instead.

To decide which object is the concealer of (C - a ring):
	let G be a random worn gloves;
	decide on G.

To restock (C - a ring):
	let B be a random basic loot ring;
	if B is ring, now B is in Standard Item Pen.

To say ShortDesc of (C - a ring):
	say "[accessory-colour of C] ring".

[This is the setup starting rings rule:
	let C be a random ring;
	repeat with N running from 1 to 3:
		restock C.
The setup starting rings rule is listed in the setup starting items rules.]

Rings ends here.

