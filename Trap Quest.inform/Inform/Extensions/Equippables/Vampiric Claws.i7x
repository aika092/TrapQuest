Vampiric Claws by Equippables begins here.

vampiric claws is an equippable. vampiric claws is unique. vampiric claws is slap ready. vampiric claws is manly. vampiric claws is biological.

Definition: vampiric claws is class-relevant:
	if the class of the player is vampire spawn, decide yes;
	decide no.

To say ClassSummonFlav of (C - vampiric claws):
	say "You feel your hands shift and warp painfully as your fingernails elongate and sharpen, turning into claws. Your slaps will certainly be more powerful! And, that vampiress told you you'd be able to drain an enemy's energy with these.".

The printed name of vampiric claws is "[clothing-title-before]vampiric claws[clothing-title-after]". The text-shortcut of vampiric claws is "vcl".

To say ClothingDesc of (W - vampiric claws):
	say "A pair of claws where your fingernails used to be.".

To say ShortDesc of (W - vampiric claws):
	say "vampiric claws".

Definition: vampiric claws is removable:
	if wood-dong is worn, decide yes;
	decide no.

To decide which number is the slap damage improvement of (W - vampiric claws):
	let X be 0;
	increase X by the magic-modifier of W;
	increase X by the dexterity of the player / 5;
	if semen is desperately craved:
		decrease X by 2;
	otherwise if semen is craved:
		decrease X by 1;
	if abyssal tattoo is worn, increase X by 2;
	decide on X.

To compute attack of (W - vampiric claws) at (M - a monster):
	say "You [one of]slash[or]scratch[at random] at [NameDesc of M] with your [ShortDesc of W].".

To compute attack effect of (W - vampiric claws):
	if attack-type is 1:
		bodyheal 1;
		if the fatigue of the player > 20, FatigueDown 20;
		otherwise now the fatigue of the player is 0.

Vampiric Claws ends here.
