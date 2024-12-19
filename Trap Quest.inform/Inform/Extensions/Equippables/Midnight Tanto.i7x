Midnight Tanto by Equippables begins here.

A tanto is a kind of sword.

To say ShortDesc of (W - a tanto):
	say "tanto".
To say MediumDesc of (W - a tanto):
	say "Japanese-style knife".

To decide which number is the slap damage improvement of (W - a tanto):
	decide on 3 + ((1 + the magic-modifier of W) / 2).

To compute attack of (W - a tanto) at (M - a monster):
	say "You slash [NameDesc of M] with the tanto!";
	if the blind-status of M is 0 and the player is getting lucky:
		say "[big he of M] clutches at [his of M] [MonsterEyesDesc of M]! [GotLuckyFlav]";
		now the blind-status of M is 1.

midnight tanto is a tanto. The printed name of midnight tanto is "[clothing-title-before]midnight tanto[clothing-title-after]". The text-shortcut of midnight tanto is "mdtt".

Figure of midnight tanto is the file "Items/Accessories/Equippables/tanto1.png".

To decide which figure-name is the clothing-image of (W - midnight tanto):
	decide on figure of midnight tanto.

To say ClothingDesc of (W - midnight tanto):
	say "A Japanese-style knife, its blade is so black as to appear unnatural[if the charge of W <= 0]. The blade is glowing. You wonder if you could [bold type]cut[roman type] some clothing [bold type]with[roman type] it[end if].".

Definition: midnight tanto is black themed: decide yes.

To decide which object is the unique-upgrade-target of (W - midnight tanto):
	if loveheart tanto is off-stage, decide on loveheart tanto;
	decide on nothing.

loveheart tanto is a tanto. The printed name of loveheart tanto is "[clothing-title-before]loveheart tanto[clothing-title-after]". The text-shortcut of loveheart tanto is "lhtt".

Figure of loveheart tanto is the file "Items/Accessories/Equippables/tanto2.png".

To decide which figure-name is the clothing-image of (W - loveheart tanto):
	decide on figure of loveheart tanto.

To say ClothingDesc of (W - loveheart tanto):
	say "A Japanese-style knife, its blade is a deep purple, decorated with pink lovehearts.[if the charge of W <= 0]. The blade is glowing. You wonder if you could [bold type]cut[roman type] some clothing [bold type]with[roman type] it[end if].".

Definition: loveheart tanto is purple themed: decide yes.
Definition: loveheart tanto is heart themed: decide yes.

To decide which number is the initial outrage of (W - loveheart tanto):
	decide on 3.
To decide which number is the initial cringe of (W - loveheart tanto):
	decide on 5.

Midnight Tanto ends here.
