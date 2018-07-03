Sacks of Holding by Bags of Holding begins here.

A sack of holding is a kind of bag of holding. Understand "bag" as sack of holding. There is 1 sack of holding. 
Figure of sack of holding is the file "Items/Accessories/Bags/bag1.png".

To decide which figure-name is clothing-image of (C - a sack of holding):
	decide on figure of sack of holding.

To say ClothingDesc of (C - a sack of holding):
	say "A magic leather pouch that holds all your spare items and negates their weight. A warning on the label says '[BagHoldingWarning] bag'.".

To say ShortDesc of (C - a sack of holding):
	say "magic leather pouch".

To decide which object is the potential-upgrade-target of (C - a sack of holding):
	if the transform-attempts of C < a random number between 0 and 1, decide on nothing;
	if diaper quest is 1, decide on a random off-stage satchel of holding;
	if a random number between 1 and 2 is 1, decide on a random off-stage clutch of holding;
	decide on a random off-stage patterned sack of holding.

Sacks of Holding ends here.

