Heavy Club by Equippables begins here.

[Heavy club is the equippable item for the barbarian class]

heavy-club is an equippable. heavy-club is slap ready. heavy-club is biological. heavy-club is unique. Understand "heavy club", "heavy", "club", "giant", "wooden" as heavy-club. The text-shortcut of heavy-club is "hek". heavy-club has a number called charge-status. The charge-status of heavy-club is 0.

Figure of heavy-club is the file "Items/Accessories/Equippables/heavyclub1.png".
To decide which figure-name is the clothing-image of (W - heavy-club):
	decide on figure of heavy-club.

To say ShortDesc of (G - heavy-club):
	say "giant club".

To say ClothingDesc of (G - heavy-club):
	say "[if the item described is worn]You are wielding a[otherwise]A[end if] giant wooden club. [if the charge-status of G is -1]It seems to be weakened by your arousal[otherwise if the charge-status of G is 1]It glows faintly, feeding you extra adrenaline[otherwise if the charge-status of G is 2]It is glowing strongly, feeding you insane amounts of adrenaline[end if].".

To compute attack of (W - heavy-club) at (M - a monster):
	say "The club makes a powerful thud as it hits [NameDesc of M].".

[The more damaged you are, the more dexterous you become]
To decide which number is the dexterity-influence of (W - heavy-club):
	let X be the body soreness of the player - 10;
	if W is blessed, increase X by 1;
	if W is cursed, decrease X by 2;
	if the player is horny, decide on X / 2;
	decide on X.

To decide which number is the fatigue-influence of (W - heavy-club):
	let F be -2;
	decrease F by the magic-modifier of W / 2;
	decide on F.

To decide which number is the damage improvement of (W - heavy-club):
	let X be 0;
	unless the player is horny:
		increase X by 4;
	increase X by the magic-modifier of W;
	decide on X.

To compute periodic effect of (G - heavy-club):
	let S be the body soreness of the player;
	if the player is an april 2019 top donator:
		do nothing;
	otherwise if the player is horny:
		if the charge-status of G > -1, say "[bold type]Your [printed name of G] softens up as you get turned on.[roman type]";
		now the charge-status of G is -1;
	otherwise if S < 3:
		if the charge-status of G is -1, say "[bold type]Your [printed name of G] hardens up again[roman type]";
		if the charge-status of G > 0, say "[bold type]Your [printed name of G] loses its glow[roman type]";
		now the charge-status of G is 0;
	otherwise if S < 6:
		if the charge-status of G < 1, say "[bold type]Your [printed name of G] begins to glow[roman type]";
		if the charge-status of G > 1, say "[bold type]Your [printed name of G] loses its glow[roman type]";
		now the charge-status of G is 1;
	otherwise:
		if the charge-status of G < 1, say "[bold type]Your [printed name of G] begins to glow strongly[roman type]";
		if the charge-status of G < 1, say "[bold type]Your [printed name of G] begins to glow even brighter[roman type]";
		now the charge-status of G is 2.

Heavy Club ends here.
