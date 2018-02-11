Gown of Purity by Skirts begins here.

A gown of purity is a kind of skirt. Figure of Gown of Purity is the file "gown1.png". A gown of purity is usually see-through. A gown of purity is usually purity. There is 1 unique silk cursed gown of purity. The printed name of gown of purity is usually "[TQlink of item described][clothing-title-before]gown of purity[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of gown of purity is "gop".

To decide which figure-name is clothing-image of (C - a gown of purity):
	decide on figure of gown of purity.

To say ClothingDesc of (C - a gown of purity):
	say "Calling this item of clothing a gown is a bit of a misnomer, since it does not cover one's torso. Instead the fabric of the gown hangs down at the sides, from an ornate belt, providing modesty for your legs from anyone looking at you from the side, but not the front or back. The fabric is a brilliant white which shines with an almost impossible brightness, as if it had its own light source. In this way it seems to represent an unlikely harmony of purity and exhibitionism.".

To compute SelfExamineDesc of (Y - a gown of purity):
	say "Pure white fabric flows down the sides of your legs from a belt, concealing nothing useful at all. ".

To say ShortDesc of (Y - a  gown of purity):
	say "bright white flowing belt".

To compute virginity-loss of (H - gown of purity):
	say "As the [H] falls from your [ShortDesc of hips], you feel [if the virgin bonus of the player < 0]some more of [end if]your determination ripped from you.";
	decrease the virgin bonus of the player by 1;
	now H is in the location of the player.

To decide which number is the humiliation-influence of (O - a gown of purity):
	let B be 1;
	increase B by the magic-modifier of O;
	decide on B.

Definition: a gown of purity (called C) is untransformable:
	decide yes.

To decide which number is the initial outrage of (C - a gown of purity):
	decide on 7.

Definition: a gown of purity (called C) is slitted: [Slitted skirts don't block knee attacks]
	decide yes.

Gown of Purity ends here.

