Magic Pistol by Equippables begins here.

magic pistol is an equippable. magic pistol is unique. magic pistol is slap ready. magic pistol is manly. magic pistol is latex.

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
	decide on 1.

To compute attack of (W - magic pistol) at (M - a monster):
	say "You [one of]pistol whip[or]smack[or]hit[at random] [NameDesc of M] with your [ShortDesc of W].".

Check slapping:
	if magic pistol is worn and the stomach-semen of the player > 0:
		say "[one of]You feel like the gun now has the ability to shoot something. [or][stopping]Do you want to shoot at [NameDesc of the noun] instead of slapping? ";
		if the player is consenting, compute gunshot on the noun instead.

To compute gunshot on (M - a monster):
	say "You aim the [ShortDesc of magic pistol] at [NameDesc of M] and pull the trigger. Ropes of [semen] fly out of the tip, painting [NameDesc of M][if M is human] and covering [his of M] eyes[end if]! ";
	if the blind-status of M is not -1, increase the blind-status of M by the stomach-semen of the player;
	if M is blinded, say "[BigNameDesc of M] is blinded!";
	now the stomach-semen of the player is 0;
	SemenTasteAddictUp 1.

Magic Pistol ends here.
