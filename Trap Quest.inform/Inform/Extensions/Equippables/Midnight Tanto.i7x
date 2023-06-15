Midnight Tanto by Equippables begins here.

midnight tanto is a sword. The printed name of midnight tanto is "[clothing-title-before]midnight tanto[clothing-title-after]". The text-shortcut of midnight tanto is "mdtt".

Figure of midnight tanto is the file "Items/Accessories/Equippables/tanto1.png".

To decide which figure-name is the clothing-image of (W - midnight tanto):
	decide on figure of midnight tanto.

To say ClothingDesc of (W - midnight tanto):
	say "A Japanese-style knife, its blade is so black as to appear unnatural[if the charge of W <= 0]. The blade is glowing. You wonder if you could [bold type]cut[roman type] some clothing [bold type]with[roman type] it[end if].".
To say ShortDesc of (W - midnight tanto):
	say "tanto".
To say MediumDesc of (W - midnight tanto):
	say "Japanese-style knife".

To decide which number is the slap damage improvement of (W - midnight tanto):
	decide on 3 + ((1 + the magic-modifier of W) / 2).

To compute attack of (W - midnight tanto) at (M - a monster):
	say "You slash [NameDesc of M] with the tanto!";
	if the blind-status of M is 0 and the player is getting lucky:
		say "[big he of M] clutches at [his of M] [MonsterEyesDesc of M]! [GotLuckyFlav]";
		now the blind-status of M is 1.

Midnight Tanto ends here.
