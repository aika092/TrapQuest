Vampiric Claws by Equippables begins here.

A vampiric claws is a kind of equippable. There is 1 vampiric claws. A vampiric claws is usually unique. A vampiric claws is usually slap ready. A vampiric claws is usually manly. A vampiric claws is usually biological.

The printed name of vampiric claws is usually "[clothing-title-before]vampiric claws[clothing-title-after]". The text-shortcut of vampiric claws is "vcl".

To say ClothingDesc of (W - vampiric claws):
	say "A pair of claws where your fingernails used to be.".

To say ShortDesc of (W - vampiric claws):
	say "vampiric claws".

Definition: a vampiric claws is removable: decide no.

To decide which number is the damage improvement of (W - a vampiric claws):
	let X be 0;
	increase X by the magic-modifier of W;
	increase X by the dexterity of the player / 5;
	if the player is craving semen, decrease X by 1;
	if the player is desperately craving semen, decrease X by 2;
	if abyssal tattoo is worn, increase X by 2;
	decide on X.

To compute attack of (W - a vampiric claws) at (M - a monster):
	say "[one of]You slash at [NameDesc of M] with your [ShortDesc of W].[or]You scratch [NameDesc of M] with your [ShortDesc of W].[at random]".

To compute attack effect of (W - a vampiric claws):
	if attack-type is 1:
		bodyheal 1;
		if the fatigue of the player > 20, FatigueDown 20;
		otherwise now the fatigue of the player is 0.

Vampiric Claws ends here.

