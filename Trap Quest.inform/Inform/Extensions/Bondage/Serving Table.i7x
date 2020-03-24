Serving Table by Bondage begins here.

serving-bondage is a kind of bondage. The text-shortcut of serving-bondage is "svt".
The clothingFocusPriority of serving-bondage is -2.

Definition: a serving-bondage is actually summonable: decide no. [Shouldn't be selected randomly as a bondage to summon]

Definition: a serving-bondage is drink themed: decide yes.
To decide which number is the initial outrage of (C - a serving-bondage):
	decide on 9.
Check drinking a waitress vessel when a serving-bondage is worn:
	say "You can't reach it!" instead.

To compute periodic effect of (C - a serving-bondage):
	if the number of alive royal guards is 0, follow the spawn initial royal guard rule; [the player can always find a friendly guard to serve drinks]
	if C is serving table and the player is upright:
		say "[bold type]The serving table [one of]tries[or]keeps trying[stopping] to force you back onto your knees as soon as it can![roman type][line break]";
		try kneeling;
	if (cocktail-glass is empty or cocktail-glass is not held) and (champagne-glass is empty or champagne-glass is not held):
		if C is serving table:
			say "[bold type]The [ShortDesc of C] vanishes![roman type][line break]";
			only destroy C;
		otherwise if C is locked or C is wrist locked:
			say "[bold type]The lock holding the chains to your [ShortDesc of C] clicks open, and the ropes holding your wrists behind you vanish![roman type] It looks like you can remove the [ShortDesc of C] when you want to.";
			now C is unlocked;
			now C is wristless.

serving table is a serving-bondage. serving table is glass. The printed name of serving table is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]serving table[clothing-title-after]". The text-shortcut of serving table is "svtb".

To decide which figure-name is clothing-image of (C - serving table):
	decide on figure of serving table.

Figure of serving table is the file "Items/Accessories/Other/servingtable1.png".

To say ShortDesc of (C - serving table):
	say "serving table".

To say ClothingDesc of (C - serving table):
	say "A heavy glass table clings to your back with magical energy and prevents you from standing up. On the back is your [if there is a held cocktail-glass]cocktail glass[end if][if there is a held cocktail-glass and there is a held champagne-glass] and [end if][if there is a held champagne-glass]champagne glass[end if].".

This is the serving table prevents standing rule:
	if serving table is worn:
		if auto is 0, say "You try to stand up, but your serving table seems to magically prevent you!";
		rule fails.
The serving table prevents standing rule is listed in the ability to stand rules.

serving tray is a serving-bondage. serving tray is leather. The printed name of serving tray is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]serving tray[clothing-title-after]".

To decide which figure-name is clothing-image of (C - serving tray):
	decide on figure of serving tray.

Figure of serving tray is the file "Items/Accessories/Other/servingtray1.jpg".

To say ShortDesc of (C - serving tray):
	say "serving tray".

To say ClothingDesc of (C - serving tray):
	let N be a random worn neckwear;
	if C is worn, say "A black leather serving tray is connected to [if N is neckwear]your [MediumDesc of N][otherwise]a heavy metal collar[end if] by strong metal chains, allowing it to sit in front of your belly button, ready for others to place things on it, or take things from it. On it is your [if there is a held cocktail-glass]cocktail glass[end if][if there is a held cocktail-glass and there is a held champagne-glass] and [end if][if there is a held champagne-glass]champagne glass[end if][if C is wrist-bound-behind]. Your hands are kept behind you by a piece of strong and seemingly magical rope[end if].";
	otherwise say "The black leather serving tray that had been chained to your neck.".

Serving Table ends here.
