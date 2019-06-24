Rings by Accessories begins here.

A ring is a kind of accessory. The printed name of ring is usually "[TQlink of item described][item style][accessory-colour of the item described] ring[clothing-title-after]". The printed plural name of ring is usually "[TQlink of item described][item style][accessory-colour of the item described] rings[clothing-title-after]".

There are 25 rings.

Figure of sapphire ring is the file "Items/Accessories/Arm/ring1.png".
Figure of emerald ring is the file "Items/Accessories/Arm/ring2.png".
Figure of ruby ring is the file "Items/Accessories/Arm/ring3.png".
Figure of pink diamond ring is the file "Items/Accessories/Arm/ring4.png".
Figure of pure diamond ring is the file "Items/Accessories/Arm/ring5.png".
Figure of solid gold ring is the file "Items/Accessories/Arm/ring6.png".

To decide which figure-name is the examine-image of (R - a ring):
	if R is sapphire, decide on figure of sapphire ring;
	if R is emerald, decide on figure of emerald ring;
	if R is ruby, decide on figure of ruby ring;
	if R is pink diamond, decide on figure of pink diamond ring;
	if R is pure diamond, decide on figure of pure diamond ring;
	decide on figure of solid gold ring.


ring wearability rules is a rulebook. The wearability rules of rings is usually ring wearability rules.

This is the rings limited to eight rule:
	if the number of worn rings >= 8:
		if summoning is 0 and autowear is false, say "You are already wearing eight rings, and they are too small to fit on your thumbs.";
		rule fails.
The rings limited to eight rule is listed in the ring wearability rules.

[Check taking off finger covering clothing:
	if the noun is not cursed and the noun is not gloves and there is a worn ring, say "Unfortunately, you'll need to remove all your rings first." instead.

Check taking off worn rings when there are worn gloves:
	say "You would need to remove your [random worn gloves] first." instead.]

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

