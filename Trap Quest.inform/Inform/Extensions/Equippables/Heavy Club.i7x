Heavy Club by Equippables begins here.

[Heavy club is the equippable item for the barbarian class]

heavy-club is an equippable. heavy-club is slap ready. heavy-club is biological. Understand "heavy club", "heavy", "club", "giant", "wooden" as heavy-club. The text-shortcut of heavy-club is "hek". heavy-club has a number called charge-status. The charge-status of heavy-club is 0.

Definition: heavy-club is class-relevant:
	if the class of the player is barbarian, decide yes;
	decide no.

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
	let X be the body soreness of the player - 5;
	if W is blessed, increase X by 1;
	if W is cursed, decrease X by 2;
	if the player is horny, decide on X / 2;
	decide on X.

To decide which number is the fatigue-influence of (W - heavy-club):
	let F be -2;
	decrease F by the magic-modifier of W / 2;
	decide on F.

To decide which number is the slap damage improvement of (W - heavy-club):
	let X be 0;
	unless the player is horny:
		increase X by 4;
	increase X by the magic-modifier of W;
	decide on X.

To compute periodic effect of (G - heavy-club):
	let S be the body soreness of the player;
	if rugged-headband is not worn:
		say "[bold type]You aren't strong enough to carry the [printed name of G][bold type]! It falls out of your hands with a resounding thud.[roman type][line break]";
		now the charge-status of G is 0;
		now G is in the location of the player;
	otherwise if the player is horny:
		if the charge-status of G > -1, say "[bold type]Your [printed name of G][bold type] softens up as you get turned on.[roman type][line break]";
		now the charge-status of G is -1;
	otherwise if S < 3:
		if the charge-status of G is -1, say "[bold type]Your [printed name of G][bold type] hardens up again.[roman type][line break]";
		if the charge-status of G > 0, say "[bold type]Your [printed name of G][bold type] loses all of its glow.[roman type][line break]";
		now the charge-status of G is 0;
	otherwise if S < 6:
		if the charge-status of G < 1, say "[bold type]Your [printed name of G][bold type] begins to glow.[roman type][line break]";
		if the charge-status of G > 1, say "[bold type]Your [printed name of G][bold type] loses some of its glow.[roman type][line break]";
		now the charge-status of G is 1;
	otherwise:
		if the charge-status of G < 1, say "[bold type]Your [printed name of G][bold type] begins to glow strongly.[roman type][line break]";
		if the charge-status of G < 1, say "[bold type]Your [printed name of G][bold type] begins to glow even brighter.[roman type][line break]";
		now the charge-status of G is 2.


kraken bell is an equippable. kraken bell is slap ready. kraken bell is metal. kraken bell is unique. The printed name of kraken bell is "[TQlink of item described]kraken bell[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of kraken bell is "kbe".

Figure of kraken bell is the file "Items/Accessories/Equippables/bell1.jpg".

To decide which figure-name is the examine-image of (B - kraken bell):
	decide on figure of kraken bell.

To say ExamineDesc of (C - kraken bell):
	say "An old metal bell, green with rust as if it has lived at the bottom of a lake for millennia. In place of a conventional ringer, there is a metal tentacle. Some dark magic seems to emanate from it. Its power currently feels [if the slap damage improvement of C < 0]very weak[otherwise if the slap damage improvement of C is 0]weak[otherwise if the slap damage improvement of C < 3]slightly strong[otherwise if the slap damage improvement of C is 3]very strong[otherwise]exceptionally strong[end if][if C is worn]. You feel more safe from tentacles[end if].".

To compute attack of (W - kraken bell) at (M - a monster):
	say "The bell makes a powerful thud as it hits [NameDesc of M], followed by a heavy metal clang[one of] that continues to echo for longer than seems natural[or][stopping].".

Report taking kraken bell:
	commence doom.

To say ShortDesc of (C - kraken bell):
	say "bell".

Definition: kraken bell is immune to change: decide yes.
Definition: kraken bell is bell themed: decide yes.

To decide which number is the bartering value of (T - kraken bell) for (M - deep one):
	decide on 2.
To say MonsterOfferAcceptFlav of (M - deep one) to (T - kraken bell):
	say "[BigNameDesc of M] seems to like the sound it makes, and turns [his of M] attention fully onto [his of M] new toy.".
To decide which number is the bartering value of (T - kraken bell) for (M - an acolyte):
	decide on 5.
To say MonsterOfferAcceptFlav of (M - an acolyte) to (T - kraken bell):
	say "[speech style of M]'We shall use it to rouse the Great Ones from their slumber!'[roman type][line break]".
To say MonsterOfferRejectFlav of (M - herald) to (T - kraken bell):
	say "[speech style of M]'Thank you for the offer, but this is no longer necessary.'[roman type][line break]".

To compute attack effect of (W - kraken bell):
	if attack-type is 1:
		if doom counter > 0:
			increase doom counter by 25;
		otherwise:
			if tough-shit is 1, force commence doom.

To decide which number is the slap damage improvement of (W - kraken bell):
	decide on the magic-modifier of W + ((doomed - 1) / 2).

Heavy Club ends here.
