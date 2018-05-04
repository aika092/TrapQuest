Puppy Mittens by Equippables begins here.

A puppy mittens is a kind of gloves. A puppy mittens is usually unique. A puppy mittens is usually leather. A puppy mittens is usually manly. There is 1 puppy mittens. The printed name of puppy mittens is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of puppy mittens[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of puppy mittens is "pm". Figure of puppy mittens is the file "Items\Accessories\Equippables\puppymittens1.png".

To decide which figure-name is clothing-image of (C - a puppy mittens):
	decide on figure of puppy mittens.

To say ClothingDesc of (W - a puppy mittens):
	say "A pair of black leather bondage mittens with a paw print design on the front. You lose some manual dexterity from wearing them, and some slapping power.";
	if the class of the player is puppygirl and W is worn, say "You feel [if the number of worn clothing < 4]excellent[otherwise if the number of worn clothing < 7]better[otherwise]worse[end if] at running away from monsters whilst on your knees.".

To say ShortDesc of (W - a puppy mittens):
	say "black leather puppy mittens".

This is the puppy mittens prevent manual dexterity rule:
	if there are worn puppy mittens:
		if manual hands attempt is 1, say "Your puppy mittens mean you don't have the manual dexterity to do that.";
		rule fails.
The puppy mittens prevent manual dexterity rule is listed in the manual dexterity restriction rules.

To decide which number is the initial outrage of (C - a puppy mittens):
	decide on 2.

To decide which number is the damage improvement of (W - a puppy mittens):
	let X be -2;
	if W is cursed, decrease X by 1;
	if W is blessed, increase X by 1;
	increase X by the magic-modifier of W;
	decide on X.

To compute attack of (W - a puppy mittens) at (M - a monster):
	if the damage improvement of W < 0, say "You [if the bimbo of the player < 12][one of]weakly[or]pathetically[or]timidly[at random][otherwise][one of]playfully[or]meekly[or]softly[at random][end if] slap at [NameDesc of M] with your [printed name of W]!";
	otherwise say "You slap at [NameDesc of M] with your puppy paws.".

To uniquely set up (C - a puppy mittens):
	now C is endurance.

Puppy Mittens ends here.

