Dining Dresses by Dresses begins here.

A dining dress is a kind of overdress.

To set up influence of (C - a dining dress):
	set up random-based influence of C.

This is the remove inappropriate dining dresses rule:
	repeat with B running through dining dress:
		now B is in Holding Pen.
The remove inappropriate dining dresses rule is listed in the diaper quest fix rules.

Definition: a dining dress is slitted: decide yes. [Slitted skirts don't block knee attacks]
Definition: a dining dress is party themed: decide yes.


Part 1 - Red Dining Dress

A red dining dress is a kind of dining dress. There is 1 red dining dress. The text-shortcut of red dining dress is "rdd". The printed name of red dining dress is usually "[clothing-title-before]red dining dress[clothing-title-after]".

Figure of red dining dress is the file "Items/Clothes/Upper/Dresses/Evening/diningdress1.png".

To decide which figure-name is clothing-image of (C - a red dining dress):
	decide on figure of red dining dress.

To say ClothingDesc of (C - a red dining dress):
	say "This posh red dress would be fine if it wasn't for the long slits down the ankle-length skirt of the garment that go all the way up to the waist. Onlookers from the side can see a decent chunk of [if C is worn]your[otherwise]the wearer's[end if] hips and [buttcheeks].".

To say ShortDesc of (C - a red dining dress):
	say "red high-slit evening dress".

To decide which number is the initial outrage of (C - a red dining dress):
	decide on 3.

To decide which object is the unique-upgrade-target of (C - a red dining dress)
	if diaper quest is 1:
		if there is an off-stage pink clubbing dress, decide on a random off-stage pink clubbing dress;
		decide on a random off-stage floofy sissy baby dress;
	decide on nothing.

Part 2 - Black Dining Dress

A black dining dress is a kind of dining dress. There is 1 black dining dress. A black dining dress is usually fully covering. The text-shortcut of black dining dress is "bdd". The printed name of black dining dress is usually "[clothing-title-before]black dining dress[clothing-title-after]".

Figure of black dining dress is the file "Items/Clothes/Upper/Dresses/Evening/diningdress2.png".

To decide which figure-name is clothing-image of (C - a black dining dress):
	decide on figure of black dining dress.

To say ClothingDesc of (C - a black dining dress):
	say "This posh black dress would be fine if it weren't for the long slits down the ankle-length skirt of the garment, that go all the way up to the waist. Onlookers from the side can see a decent chunk of [if C is worn]your[otherwise]the wearer's[end if] hips and [buttcheeks]. A[if the humiliation of the player < 20000]t least a[end if] high neck cut properly conceals [if C is worn]your[otherwise]the wearer's[end if] chest.".

To say ShortDesc of (C - a black dining dress):
	say "black high-slit evening dress".

To decide which number is the initial outrage of (C - a black dining dress):
	decide on 2.


Dining Dresses ends here.

