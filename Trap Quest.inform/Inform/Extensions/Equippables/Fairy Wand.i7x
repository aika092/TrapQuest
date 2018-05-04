Fairy Wand by Equippables begins here.

A fairy wand is a kind of equippable. A fairy wand is usually slap ready. A fairy wand is usually unique. A fairy wand is usually metal. There is 1 fairy wand. The printed name of fairy wand is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]fairy wand[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of fairy wand is "fw". A fairy wand is usually projectile.

To say ClothingDesc of (W - a fairy wand):
	say "A hot pink wand with a star on the end.".

To say ShortDesc of (W - a fairy wand):
	say "hot pink wand".

To decide which number is the damage improvement of (W - a fairy wand):
	let X be 2;
	if W is cursed, decrease X by 2;
	increase X by the magic-modifier of W;
	decrease X by the intelligence of the player / 5;
	decide on X.

To compute attack of (W - a fairy wand) at (M - a monster):
	say "You flick the wand, zapping [NameDesc of M] with tiny bolts of magic.".

Fairy Wand ends here.

