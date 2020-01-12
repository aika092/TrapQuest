Magic Pistol by Equippables begins here.

magic pistol is an equippable. magic pistol is unique. magic pistol is zap ready. magic pistol is manly. magic pistol is latex.

The printed name of magic pistol is "[clothing-title-before]magic pistol[clothing-title-after]". The text-shortcut of magic pistol is "mgp". Understand "gun" as magic pistol.

Figure of magic pistol is the file "Items/Accessories/Equippables/pistol1.png".

Definition: magic pistol is grey themed: decide yes.

To decide which figure-name is the clothing-image of (W - magic pistol):
	decide on figure of magic pistol.

To say ClothingDesc of (W - magic pistol):
	say "A small metal gun. There's no ammo, so how does it work?".

To say ShortDesc of (W - magic pistol):
	say "pistol".

To decide which number is the damage improvement of (W - magic pistol):
	if the stomach-semen of the player > 0, decide on 2;
	decide on -99.

To say PistolStomachSemen:
	say "[one of]You are shocked to feel your stomach emptying of [semen]! [or][stopping]".

To compute attack of (W - magic pistol) at (M - a monster):
	say "You aim the [ShortDesc of W] at [NameDesc of M] and pull the trigger. ";
	if the stomach-semen of the player > 0, say "[PistolStomachSemen]Ropes of [semen] fly out of the tip, painting [NameDesc of M][if M is human] and covering [his of M] eyes[end if]! ";
	otherwise say "Nothing happens...";
	if the stomach-semen of the player > 0:
		if the blind-status of M is not -1, increase the blind-status of M by the stomach-semen of the player;
		if M is blinded, say "[BigNameDesc of M] is blinded!";
		now the stomach-semen of the player is 0;
		SemenTasteAddictUp 1.


Magic Pistol ends here.
