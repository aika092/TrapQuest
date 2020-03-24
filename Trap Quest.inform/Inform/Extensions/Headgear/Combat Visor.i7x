Combat Visor by Headgear begins here.

combat visor is a clothing. combat visor is plastic. combat visor is sure. combat visor is identified. combat visor is unique. Figure of combat visor is the file "Items/Accessories/Head/combatvisor1.png". The text-shortcut of combat visor is "cbv".

The printed name of combat visor is "[clothing-title-before]combat visor[clothing-title-after]".

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

Definition: combat visor is cursable: decide no.

Definition: combat visor is alwaysSure: decide yes.

Definition: combat visor is immune to change: decide yes.

Definition: combat visor is transformation-protected: decide yes.

Definition: combat visor is destructible: decide no.

Definition: combat visor is stealable: decide no.

verbose-debug is a number that varies.
alwaysCombatVisor is initially false.

To decide which number is debuginfo:
	if alwaysCombatVisor is true or debugmode > 0 or combat visor is worn:
		if verbose-debug > 0, decide on 2;
		decide on 1;
	decide on 0.

Check wearing combat visor when the player is not the donator:
	say "Sorry, only patrons can wear and remove this at will." instead.

Check taking off combat visor when the player is not the donator:
	say "If you do this, you won't be able to get it back. Are you sure? ";
	if the player is not consenting:
		say "You change your mind." instead.

Report wearing combat visor:
	if the player is the donator, ask about debugging;
	follow the hide combat visor rule.

Report taking off combat visor:
	if the player is not the donator:
		say "The visor disintegrates into nothingness.";
		only destroy combat visor.

To ask about debugging:
	say "Do you want to enable highly detailed info (the stuff that tends to get calculated every single turn)? ";
	if the player is consenting, now verbose-debug is 1;
	otherwise now verbose-debug is 0.

This is the hide combat visor rule:
	if combat visor is worn and combat-visor-hidden is 1:
		now alwaysCombatVisor is true;
		now combat visor is in Holding Pen.
The hide combat visor rule is listed last in the game universe initialisation rules.

Combat Visor ends here.
