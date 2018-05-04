Serving Table by Bondage begins here.

serving table is bondage. serving table is glass. The printed name of serving table is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]serving table[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of serving table is "svt".

To decide which number is the initial outrage of (C - a serving table):
	decide on 5.

To decide which figure-name is clothing-image of (C - a serving table):
	decide on figure of serving table.

Figure of serving table is the file "Items\Accessories\Other\servingtable1.png".

To say ShortDesc of (C - a serving table):
	say "serving table".

To say ClothingDesc of (C - a serving table):
	say "A heavy glass table clings to your back with magical energy and prevents you from standing up. On the back is your [if there is a held cocktail-glass]cocktail glass[end if][if there is a held cocktail-glass and there is a held champagne-glass] and [end if][if there is a held champagne-glass]champagne glass[end if].".

Check drinking a waitress vessel when serving table is worn:
	say "You can't reach it!" instead.

Definition: serving table (called C) is removable:
	decide no.

This is the serving table prevents standing rule:
	if there is a worn serving table:
		if auto is 0, say "You try to stand up, but your serving table seems to magically prevent you!";
		rule fails.
The serving table prevents standing rule is listed in the ability to stand rules.

To compute periodic effect of (C - a serving table):
	if the number of alive royal guards is 0, follow the spawn initial royal guard rule; [the player can always find a friendly guard to serve drinks]
	if (cocktail-glass is empty or cocktail-glass is not held) and (champagne-glass is empty or champagne-glass is not held):
		say "[bold type]The serving table vanishes![roman type][line break]";
		only destroy C.

Serving Table ends here.
