Cat Ears by Headgear begins here.


A cat ears is a kind of headgear.  A cat ears is usually manly.  There is 1 cat ears.  Figure of cat ears is the file "catears1.png".  Understand "pair", "of" as cat ears.  A cat ears is blondeness-negative.  A cat ears is brightness-positive.  A cat ears is redness-negative.  A cat ears is usually hair growing.  A cat ears is usually dexterity-influencing. A cat ears is usually roleplay.

kitty-summoned is a number that varies.

Definition: a cat ears (called C) is fluid immune:
	decide yes.

The printed name of cat ears is usually "[TQlink of item described][clothing-title-before]pair of cat ears[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of cat ears is "ce".

To decide which figure-name is the clothing-image of (C - a cat ears):
	decide on figure of cat ears.

To say ClothingDesc of (H - a cat ears):
	say "A pair of fake cat ears on a headband, with a frilly piece of fabric between the ears.".
	
To say ShortDesc of (H - a cat ears):
	say "fake cat ears".

To compute SelfExamineDesc of (H - a cat ears):
	let X be the largeness of hair;
	say "You are wearing a pair of fake cat ears on top of your [ShortDesc of hair].  ".

To compute class outfit of (H - a cat ears):
	let K be a random off-stage kitty claws;
	let C be a random off-stage catbell;
	let P be a random off-stage cat tail plug;
	if the headgear chance of H < the threshold of H:
		if K is actually summonable or (K is kitty claws and kitty-summoned is 0):
			if kitty-summoned is 0:
				repeat with O running through worn slap ready equippables:
					say "Your [O] vanishes!";
					destroy O;
			say "[bold type]Your cat ears barely noticeably quiver, and then your hands become encased in puffy warm gloves!  On closer inspection, these are cat paws![roman type][line break]";
			summon K cursed;
			now the raw-magic-modifier of K is the stance of the player;
			now kitty-summoned is 1;
		otherwise if C is actually summonable:
			say "[bold type]You feel a sudden tightness around your neck.  You look down to see that a cat collar has appeared![roman type][line break]";
			summon C cursed;
		otherwise if the class of the player is catgirl and P is actually summonable and the player is not ass protected:
			say "[bold type]You feel your [asshole] suddenly invaded by a foreign object!  Looking around you see a cat tail swaying proudly from your [asshole].[roman type][line break]";
			summon P cursed;
			let X be the openness of asshole + the number of worn clothing - 3;
			assign size X to P.

Definition: a thing (called T) is cat themed:
	decide no.

Definition: a cat ears (called C) is cat themed:
	decide yes.


Cat Ears ends here.
