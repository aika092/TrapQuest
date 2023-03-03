Cans by Drinks begins here.

[!<Can>@

REQUIRES COMMENTING

@inherits <Bottle>

@!]
A can is a kind of bottle. A can is usually sure. The doses of a can is usually 1. The max-doses of a can is usually 1. There are 30 cans. Understand the fill-colour property as describing a can.
The printed name of a can is usually "[TQlink of item described][if the max-doses of item described > 5]giant [otherwise if the max-doses of item described > 3]extra large [otherwise if the max-doses of item described > 1]large [end if][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][fill-colour of the item described] can[if the fill-type of item described is remembered] ([FillName the fill-type of item described])[end if][TQxlink of item described][verb-desc of item described]". The printed plural name of a can is usually "[TQlink of item described][fill-colour of the item described] cans[TQxlink of item described][verb-desc of item described]". The text-shortcut of can is "can".
Understand "giant" as can when the max-doses of the item described > 5.
Understand "extra" as can when the max-doses of the item described > 3 and the max-doses of the item described <= 5.
Understand "large" as can when the max-doses of the item described > 1 and the max-doses of the item described <= 5.
To say ExamineDesc of (C - a can):
	say "A [if the max-doses of C > 5]giant [otherwise if the max-doses of C > 3]extra large [otherwise if the max-doses of C > 1]large [otherwise]tiny aeroplane-sized [end if]tin can with a [fill-colour of C] label.[if the fill-type of C is remembered] You remember that this colour represents a [FillName the fill-type of C].[end if][if the max-doses of C > 1][line break]It has about [doses of C] gulps left.[end if]".

Figure of can is the file "Items/Accessories/Vessels/can1.png".
To decide which figure-name is the examine-image of (V - a can):
	decide on the figure of can.

To update background colour of (T - a can):
	now the backgroundColour of T is the TQcolour of the fill-colour of T.

Definition: a can is basic loot:
	if it is off-stage, decide yes;
	decide no.

To restock (C - a can):
	let B be a random off-stage can;
	if B is can:
		repeat with L running through Standard Item Pen:
			if L is can, remove L from Standard Item Pen;
		add B to Standard Item Pen.

To say ShortDesc of (B - a can):
	say "can".

To say MediumDesc of (B - a can):
	if the fill-type of B is remembered, say "can of [FillName the fill-type of B]";
	otherwise say "[fill-colour of B] can".

This is the setup starting cans rule:
	let C be a random can;
	restock C.
The setup starting cans rule is listed in the setup starting items rules.

To uniquely destroy (T - a can):
	now the magic-curse of T is bland;
	now the curse-ID of T is sure;
	now the max-doses of T is 1;
	DoseFill T.

The can drinkability rules is a rulebook.
The drinkability rules of a can is usually the can drinkability rules.

This is the ringpulls are tricky rule:
	if the player is not able to use manual dexterity:
		if autodrink is 0, say "[variable custom style]I don't have the manual dexterity to open the ringpull.[roman type][line break]";
		rule fails.
The ringpulls are tricky rule is listed in the can drinkability rules.

Carry out drinking a can:
	allocate 6 seconds;
	say "You [if the doses of the noun is the max-doses of the noun]remove the ring pull of [the noun], [end if]bring it to your mouth and gulp. ";
	compute drinking the noun;
	now the Known corresponding to an Magic of the fill-type of the noun in the Table of Drinks is 1;
	if the fill-type of the noun < 20, StomachUp 2;
	DoseDown the noun;
	if the doses of the noun is 0:
		say "[line break]You discard the empty can.";
		destroy the noun.

Report examining can:
	zero focus stuff. [Flags the focus window for a full redraw (prevents duplicates of the can from appearing in it).]

Cans ends here.
