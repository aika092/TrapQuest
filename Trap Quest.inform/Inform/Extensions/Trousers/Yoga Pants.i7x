Yoga Pants by Trousers begins here.

yoga pants is a kind of trousers. There is 1 rare yoga pants. The armour of yoga pants is 8. The printed name of yoga pants is usually "[clothing-title-before]yoga pants[clothing-title-after]". The text-shortcut of yoga pants is "yp". Figure of yoga pants is the file "Items/Clothes/Lower/Pants/Yoga/yogapants1.png". A yoga pants has a number called yoga-charge.

To decide which figure-name is clothing-image of (H - a yoga pants):
	decide on figure of yoga pants.

To say UniqueClothingDesc of (Y - a yoga pants):
	say "A loose fitting pair of yoga pants[if Y is worn] that make you feel much more in tune with your inner balance[end if].[if Y is crotch-ripped]There is a large rip at the crotch.[end if]".

To say ShortDesc of (Y - a yoga pants):
	say "pair of yoga pants".

To decide which number is the hindrance-modifier of (C - a yoga pants):
	if C is cursed, decide on 1;
	if C is blessed, decide on -2;
	decide on -1.

To compute periodic effect of (C - a yoga pants):
	increase the yoga-charge of C by 1;
	if the yoga-charge of C > 40:
		now the yoga-charge of C is 0;
		if there is worn knickers and C is not blessed and diaper quest is 0:
			say "You feel a pulse of warmth from your [ShortDesc of C] as your hips widen. You sense it's not happy you're wearing underwear at the same time...";
			HipUp 1.

Definition: a yoga pants is strut enabling if it is blessed.

To summon (C - a yoga pants) cursed:
	summon C;
	now C is cursed;
	repeat with K running through worn knickers:
		if K is blessed, curse K;
		curse K.

To decide which object is the unique-upgrade-target of (C - a yoga pants):
	if diaper lover > 0, decide on a random off-stage kitty cat pyjama bottoms;
	decide on nothing.

Definition: yoga pants is exercise themed: decide yes.
Definition: yoga pants is blue themed: decide yes.

Yoga Pants ends here.

