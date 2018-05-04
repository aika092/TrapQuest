Royal Scepter by Equippables begins here.

A royal scepter is a kind of equippable. There is 1 royal scepter. A royal scepter is usually unique. A royal scepter is usually slap ready. A royal scepter is usually manly. A royal scepter is usually plastic. A royal scepter has a number called charge. The charge of a royal scepter is usually 1. A royal scepter is usually projectile.

The printed name of royal scepter is usually "[TQlink of item described][clothing-title-before]royal scepter[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of royal scepter is "rs". 

To say ClothingDesc of (W - a royal scepter):
	say "A long staff with a gem encrusted version of a royal crest on top. There is a large orb in the center, which [if the charge of W < 0]seems to darken the area around it, like a black hole.[otherwise]slightly illuminates the area around it, like a torch.[end if] If you look closely, you can see a faint image of the [princess-consort] swirling around inside it. Somehow, you know you can find [him of princess-consort] in the [bold type][the location of princess-consort][roman type]".
To say ShortDesc of (W - a royal scepter):
	say "royal scepter".

To decide which number is the initial outrage of (C - a royal scepter):
	decide on 0.

To decide which number is the damage improvement of (W - a royal scepter):
	let X be 5 - (the humiliation of the player / 10000);
	if W is cursed, decrease X by 2;
	if W is blessed, increase X by 3;
	increase X by the charge of W + the magic-modifier of W;
	decide on X.

To compute attack of (W - a royal scepter) at (M - a monster):
	say "You blast [NameDesc of M] with a[if the charge of W is 3] pulsing[end if] wave of magic.".

Definition: a royal scepter (called T) is unlimited horniness:
	decide yes.
Definition: a royal scepter (called T) is royal attire:
	decide yes.

princess-consort is a thing that varies. princess-consort is the throne.

This is the betrothal rule:[This only triggers when the player is fucked by a monster, for now.]
	let S be a random royal scepter;
	if debugmode > 0, say "princess-consort is [princess-consort][line break]";
	if S is worn:
		let F be 0;
		if princess-consort is in the location of the player, now F is 1;
		otherwise now F is -1;
		if princess-consort is current-monster, now F is 2;
		if F is -1:
			if princess-consort is alive and princess-consort is mating and the refactory-period of princess-consort > 0:
				say "Your [printed name of S] pulses, and an image of the [princess-consort] appears in your head. You know that no matter who you have sex with, nothing could ever shake your everlasting connection.";
			otherwise if princess-consort is alive:
				say "Your [printed name of S] pulses, and an image of the [princess-consort] appears in your head as an overwhelming feeling of guilt washes over you.";
				punish infidelity;
			otherwise if princess-consort is monster:
				unless princess-consort is mating:
					say "Your [printed name of S] slowly disappears, and you feel your connection to the [princess-consort] slowly fade away.";
					now the charge of S is 0;
					only destroy S;
					now princess-consort is the throne;
				otherwise:
					say "Your [printed name of S] pulses, and an image of the [princess-consort] appears in your head as an overwhelming feeling of guilt at your lack of loyalty washes over you.";
					punish infidelity;
		if F is 2:
			say "Your [printed name of S] pulses, and a pleasant feeling wells up inside of you.";
			dignify the charge of S * 7;
			if princess-consort is mating:
				FatigueDown the charge of S * 5;
				if the charge of S < 6, increase the charge of S by 2;
			otherwise:
				if the charge of S < 3, increase the charge of S by 1;
				unless princess-consort is father material, FavourUp princess-consort;
	otherwise if S is actually summonable:
		if the times-fucked of current-monster > 1 or current-monster is friendly:
			now princess-consort is current-monster;
			now S is worn by the player;
			say "You look up at [NameDesc of current-monster] and your eyes meet. A [printed name of S] appears in your hand, as if to symbolize your lasting connection.".
[The betrothal rule is part of the end of sex rules]

To punish infidelity:
	let S be a random royal scepter;
	humiliate the charge of S * 40;
	decrease the charge of S by 1;
	if S is blessed, now S is bland;
	let U be a random unfaithful tattoo;
	let W be a random cheating whore tattoo;
	if U is not worn and there is not a worn true love tattoo and there is a worn tattoo:
		summon U;
		say "You feel a searing pain as the word 'UNFAITHFUL' burns itself into your chest in big red letters.";
	otherwise if W is not worn and there is a worn tattoo:
		summon W;
		say "You experience a heavy feeling of shame as the words 'CHEATING WHORE' etch themselves into your cheeks.";
	otherwise if a random number between 1 and 2 is 1 and there is a worn plentiful accessory:
		let J be random worn plentiful accessory;
		say "Your [printed name of J] hisses as it slowly disintegrates";
		only destroy J;
	otherwise:
		IntDown 1;
		say "You feel your mind clouding over with thoughts of regret.".


Royal Scepter ends here.

