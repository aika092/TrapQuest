Magic Wand by Equippables begins here.

A magic wand is a kind of equippable.  A magic wand is usually slap ready.  A magic wand is usually unique.  A magic wand is usually metal.  There is 1 magic wand.  The printed name of magic wand is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]magic wand[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of magic wand is "mw".  Figure of magic wand is the file "goldenphallus1.png". A magic wand is usually projectile.

To decide which figure-name is clothing-image of (C - a magic wand):
	decide on figure of magic wand.

To say ClothingDesc of (W - a magic wand):
	say "A solid gold wand you stole from an aeromancer. Despite being made of metal, it feels almost completely weightless when you hold it in your hand, as if filled with some magic lighter than air gas.".

To say ShortDesc of (W - a magic wand):
	say "solid gold wand".

To decide which number is the initial outrage of (C - a magic wand):
	decide on 0.

To decide which number is the damage improvement of (W - a magic wand):
	let X be 0;
	if W is cursed, decrease X by 1;
	increase X by the magic-modifier of W;
	increase X by the intelligence of the player / 5;
	decide on X.

To compute attack of (W - a magic wand) at (M - a monster):
	say "[one of]You slash at the [M] with a whip-like gust of air.[or]You buffet the [M] with gusts of air.[or][if the player is wrist bound or the largeness of breasts > 15]You flick the wand, slashing at the [M] with a gust of wind![otherwise]You swing the wand with a wide flourish, slashing the [M] with a gust of wind![end if][or][if the player is wrist bound or the largeness of breasts > 15]You wave the wand as best you can, buffeting the [M] with whip-like gusts of wind![otherwise]You flourish the wand, striking the [M] with a screaming gust of air![end if][or][if the player is wrist bound or the largeness of breasts > 15]You flick the wand, striking the [M] with a gust of air.[otherwise]You swing the wand, blasting the [M] with a gust of air![end if][then at random]".

To compute attack effect of (W - a magic wand):
	if attack-type is 1:
		let R be a random number between 1 and 3;
		if R is 1 and the total fill of belly < belly limit:
			let B be the largeness of belly;
			AssFill 1 Air;
			if the largeness of belly > B, say "You notice that your [BellyDesc] has somehow grown in size.  It must be the wand?";
		if R is 2:
			let B be the largeness of breasts;
			BustInflate 1;
			if the largeness of breasts > B, say "You notice that your [BreastDesc] have somehow grown in size.  It must be the wand?";
		if R is 3:
			let H be the total volume of hips;
			AssInflate 1;
			if the total volume of hips > H, say "You notice that your [HipDesc] have somehow grown in size.  It must be the wand?".

To compute takeoff of (W - a magic wand):
	let M be a random off-stage aeromancer;
	if M is monster:
		now M is in the location of the player;
		set up M;
		if the player is in the Dungeon:
			say "As you float off, the wand falls out of your hand! The [M] appears from thin air and immediately catches it.[line break][second custom style]'[one of]Payback time!'[or]I'm really going to enjoy this.'[or]You're about to get the wind knocked into you!'[or]Revenge is a dish best served in a windmill!'[as decreasingly likely outcomes][roman type][line break]";
		otherwise if the player is in the Woods:
			say "As you float off, the wand falls out of your hand! The [M] appears from thin air and immediately catches it. She waves as you float off into the sky.[line break][second custom style]'[one of]You better hope I don't find you again, I won't go easy on you!'[or]Up up and away!'[or]Don't worry, I'll find YOU!'[in random order][roman type][line break]";
		now the favour of M is 0;
		now the balloon of M is 9;
		now M is wand-empowered;
		only destroy W. [TODO - new revived aeromancer gets big bonus in some way.]

Definition: a magic wand (called C) is inflation themed:
	decide yes.

Magic Wand ends here.
