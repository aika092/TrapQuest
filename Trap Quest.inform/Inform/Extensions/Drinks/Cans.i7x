Cans by Drinks begins here.


[!<Can>@

REQUIRES COMMENTING

@inherits <Bottle>

@!]
A can is a kind of bottle.  The doses of a can is usually 1.  The max-doses of a can is usually 1.  There are 30 cans.  Understand the fill-colour property as describing a can.
The printed name of a can is usually "[TQlink of item described][if the max-doses of item described > 5]giant [otherwise if the max-doses of item described > 3]extra large [otherwise if the max-doses of item described > 1]large [end if][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][fill-colour of the item described] can[if the fill-type of item described is remembered] ([FillName the fill-type of item described])[end if][TQxlink of item described][verb-desc of item described]".  The printed plural name of a can is usually "[TQlink of item described][fill-colour of the item described] cans[TQxlink of item described][verb-desc of item described]".  The text-shortcut of can is "can".
Understand "giant" as can when the max-doses of the item described > 5.
Understand "extra" as can when the max-doses of the item described > 3 and the max-doses of the item described <= 5.
Understand "large" as can when the max-doses of the item described > 1 and the max-doses of the item described <= 5.
The description of a can is "A [if the max-doses of item described > 5]giant [otherwise if the max-doses of item described > 3]extra large [otherwise if the max-doses of item described > 1]large [otherwise]tiny airplane-sized [end if]tin can with a [fill-colour of item described] label.[if the fill-type of item described is remembered]  You remember that this colour represents a [FillName the fill-type of item described].[end if][if the max-doses of item described > 1][line break]It has about [doses of item described] gulps left.[end if]".


[!<Can>@<Restock>+

REQUIRES COMMENTING

+@!]
To restock (C - a can):
	let B be a random basic loot can;
	if B is bottle, now B is in Standard Item Pen.

To say ShortDesc of (B - a can):
	if the fill-type of B is remembered, say "can of [FillName the fill-type of B]";
	otherwise say "[fill-colour of B] can".

[!<TheSetupStartingCansRule>+

REQUIRES COMMENTING

+!]
This is the setup starting cans rule:
	let C be a random can;
	repeat with N running from 1 to (2 + diaper quest):
		restock C.
The setup starting cans rule is listed in the setup starting items rules.


[!<DestroyCan>+

REQUIRES COMMENTING

+!]
To destroy (T - a can):
	remove T from play;
	now the magic-curse of T is bland;
	now the curse-ID of T is unsure;
	now the doses of T is 1;
	now the max-doses of T is 1;
	dislodge T.




Cans ends here.
