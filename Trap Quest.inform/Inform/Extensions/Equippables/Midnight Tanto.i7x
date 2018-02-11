Midnight Tanto by Equippables begins here.

A midnight tanto is a kind of equippable. There is 1 midnight tanto. A midnight tanto is usually unique. A midnight tanto is usually slap ready. A midnight tanto is usually metal. The printed name of midnight tanto is usually "[TQlink of item described][clothing-title-before]Midnight Tanto[clothing-title-after][TQxlink of item described][verb-desc of item described]". 

To say ClothingDesc of (W - a midnight tanto):
	say "A Japanese-style knife, its blade is so black as to appear unnatural.".
To say ShortDesc of (W - a midnight tanto):
	say "Japanese-style knife".
	
To decide which number is the damage improvement of (W - a midnight tanto):
	let X be 4;
	decide on X.
	
To compute attack of (W - a midnight tanto) at (M - a monster):
	say "You slash the [M] with the tanto!";
	if a random number between 1 and 3 > 1 and the blind-status of M is 0:
		say "[big he of M] clutches at [his of M] eyes!";
		now the blind-status of M is 1.

Midnight Tanto ends here.

