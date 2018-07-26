Combat Visor by Headgear begins here.

combat visor is a clothing. combat visor is plastic. combat visor is unique. Figure of combat visor is the file "Items/Accessories/Head/combatvisor1.png". The text-shortcut of combat visor is "cbv".

The printed name of combat visor is "[TQlink of item described][clothing-title-before]combat visor[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To decide which figure-name is the clothing-image of (C - combat visor):
	decide on figure of combat visor.

To say ClothingDesc of (H - combat visor):
	say "This item looks like a futuristic pair of glasses. The lens is a high-tech screen, giving the wearer an augmented view of reality with information on their surroundings, their own body, and the inner workings of the game universe.".

To say ShortDesc of (H - combat visor):
	say "combat visor".

To compute SelfExamineDesc of (H - combat visor):
	say "You are wearing a high-tech combat visor. ".

To set up magic state of (C - a combat visor):
	now the raw-magic-modifier of C is 0.

Definition: combat visor (called C) is cursable:
	decide no.

Definition: combat visor (called C) is immune to change:
	decide yes.

Definition: combat visor (called C) is untransformable:
	decide yes.

Definition: combat visor (called C) is destructible:
	decide no.

Definition: combat visor (called C) is stealable:
	decide no.

verbose-debug is a number that varies.

To decide which number is debuginfo:
	if (the player is the donator and combat visor is worn) or debugmode > 0:
		if verbose-debug > 0, decide on 2;
		decide on 1;
	decide on 0.

Report wearing combat visor:
	if the player is the donator, ask about debugging.

To ask about debugging:
	say "Do you want to enable highly detailed info (the stuff that tends to get calculated every single turn)? [yesnolink]";
	if the player consents, now verbose-debug is 1;
	otherwise now verbose-debug is 0.


Combat Visor ends here.
