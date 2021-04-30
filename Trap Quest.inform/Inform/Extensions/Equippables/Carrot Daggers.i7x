Carrot Daggers by Equippables begins here.

carrot daggers is an equippable. carrot daggers is unique. carrot daggers is slap ready. carrot daggers is manly. carrot daggers is latex.

The printed name of carrot daggers is "[clothing-title-before]carrot[if item described is blessed] dagger[end if]s[clothing-title-after]". The text-shortcut of carrot daggers is "cdg". Understand "carrots" as carrot daggers.

Figure of carrot daggers is the file "Items/Accessories/Equippables/carrots1.png".

To decide which figure-name is the clothing-image of (W - carrot daggers):
	decide on figure of carrot daggers.

Definition: carrot daggers is food themed: decide yes.
Definition: carrot daggers is orange themed: decide yes.
Definition: carrot daggers is bunny themed: decide yes.

To say ClothingDesc of (W - carrot daggers):
	say "Two carrots made out of latex[if W is blessed]. The tips are surprisingly sharp[end if].".

To say ShortDesc of (W - carrot daggers):
	say "carrot[if W is blessed] dagger[end if]s".

To decide which number is the slap damage improvement of (W - carrot daggers):
	let X be 0;
	increase X by the magic-modifier of W;
	if W is blessed, increase X by 3; [when they're daggers they are even better]
	decide on X.

To compute attack of (W - carrot daggers) at (M - a monster):
	say "You [if W is blessed]slash at[otherwise]slap[end if] [NameDesc of M] with your [ShortDesc of W].".

To compute attack effect of (W - carrot daggers):
	if attack-type is 1 and W is blessed:
		say "You feel another egg appear inside your belly!";
		AssFill 1 medium eggs.

Carrot Daggers ends here.
