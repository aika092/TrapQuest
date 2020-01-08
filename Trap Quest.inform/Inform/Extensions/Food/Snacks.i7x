Snacks by Food begins here.


A snack is a kind of food.

To restock (C - a snack):
	do nothing.
	[let B be a random off-stage snack;
	if B is snack, now B is in Standard Item Pen.]

[This is the setup starting snacks rule:
	if diaper quest is 1:
		let C be a random snack;
		repeat with N running from 1 to 4 + (diaper quest * 4):
			restock C.
The setup starting snacks rule is listed in the setup starting items rules.]

Carry out TQeating snack:
	destroy the noun;
	StomachFoodUp 2;
	allocate 6 seconds.

Snacks ends here.
