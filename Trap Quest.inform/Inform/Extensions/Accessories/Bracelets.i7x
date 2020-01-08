Bracelets by Accessories begins here.

A bracelet is a kind of accessory. The printed name of bracelet is usually "[TQlink of item described][item style][accessory-colour of the item described] bracelet[clothing-title-after]". The printed plural name of bracelet is usually "[TQlink of item described][item style][accessory-colour of the item described] bracelets[clothing-title-after]".

There are 14 bracelets.

Figure of sapphire bracelet is the file "Items/Accessories/Arm/bracelet1.png".
Figure of emerald bracelet is the file "Items/Accessories/Arm/bracelet2.png".
Figure of ruby bracelet is the file "Items/Accessories/Arm/bracelet3.png".
Figure of pink diamond bracelet is the file "Items/Accessories/Arm/bracelet4.png".
Figure of pure diamond bracelet is the file "Items/Accessories/Arm/bracelet5.png".
Figure of solid gold bracelet is the file "Items/Accessories/Arm/bracelet6.png".

To decide which figure-name is the examine-image of (R - a bracelet):
	if R is sapphire, decide on figure of sapphire bracelet;
	if R is emerald, decide on figure of emerald bracelet;
	if R is ruby, decide on figure of ruby bracelet;
	if R is pink diamond, decide on figure of pink diamond bracelet;
	if R is pure diamond, decide on figure of pure diamond bracelet;
	decide on figure of solid gold bracelet.

bracelet wearability rules is a rulebook. The wearability rules of bracelets is usually bracelet wearability rules.


To say ShortDesc of (C - a bracelet):
	say "[accessory-colour of C] bracelet".

This is the bracelets limited to two rule:
	if the number of worn bracelets > 1:
		if summoning is 0 and autowear is false, say "You can't wear [the noun] because you are already wearing two bracelets!";
		rule fails.
The bracelets limited to two rule is listed in the bracelet wearability rules.

To restock (C - a bracelet):
	let B be a random basic loot bracelet;
	if B is bracelet, now B is in Standard Item Pen.

[This is the setup starting bracelets rule:
	let C be a random bracelet;
	restock C.
The setup starting bracelets rule is listed in the setup starting items rules.]

Bracelets ends here.
