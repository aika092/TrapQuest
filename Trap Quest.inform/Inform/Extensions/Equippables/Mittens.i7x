Mittens by Equippables begins here.

A mittens is a kind of gloves.  A mittens is usually unique.  A mittens is usually cotton.  There is 1 mittens.  The printed name of mittens is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of mittens[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of mittens is "mi".  Figure of mittens is the file "mittens1.png".  A mittens is usually diaper-addiction-influencing.

To decide which figure-name is clothing-image of (C - a mittens):
	decide on figure of mittens.

To say ClothingDesc of (W - a mittens):
	say "A pair of large pink baby mittens with a teddy bear pattern and small bells.  You lose some manual dexterity and some slapping power from wearing them.";
	if the player is a adult baby and W is worn, say "You feel much, much better at running away from monsters whilst on your knees.".

To say ShortDesc of (W - a mittens):
	say "large pink baby mittens".

This is the mittens prevent manual dexterity rule:
	if there are worn mittens:
		if manual hands attempt is 1, say "Your mittens mean you don't have the manual dexterity to do that.";
		rule fails.
The mittens prevent manual dexterity rule is listed in the manual dexterity restriction rules.

To decide which number is the initial outrage of (C - a mittens):
	if diaper quest is 1, decide on 0;
	decide on the initial cringe of C.

To decide which number is the initial cringe of (C - a mittens):
	decide on 11.

To decide which number is the damage improvement of (W - a mittens):
	let X be -2;
	increase X by the magic-modifier of W;
	decide on X.

To compute attack of (W - a mittens) at (M - a monster):
	say "You [if the bimbo of the player < 10][one of]weakly[or]pathetically[or]timidly[at random][otherwise][one of]playfully[or]meekly[or]softly[at random][end if] slap at the [M] with your [printed name of W].".

Mittens ends here.
