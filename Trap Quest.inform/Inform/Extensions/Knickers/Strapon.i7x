Strapon by Knickers begins here.

A strapon-panties is a kind of knickers. The printed name of strapon-panties is "[clothing-title-before][PenisSizeFlav strap-length of the item described] [ShortDesc of item described][clothing-title-after]". Understand "strapon", "dildo", "strap on", "strap-on" as strapon-panties. A strapon-panties has a number called strap-length. A strapon-panties is usually totally-exclusive. A strapon-panties is usually leather. A strapon-panties is crotch-assless.
Definition: a strapon-panties is penis themed: decide yes.

Figure of strapon-panties is the file "Items/Accessories/Toys/strapon1.jpg".

To decide which figure-name is clothing-image of (C - strapon-panties):
	decide on figure of strapon-panties.

To say selfexamineuniquetitle of (K - a strapon-panties):
	say "strap-on dildo".

To uniquely set up (C - a strapon-panties):
	now the strap-length of C is a random number between 4 and 6.

Definition: A strapon-panties (called P) is fetish appropriate:
	if diaper quest is 0 and the player is the donator, decide yes;
	decide no.

[is it a strapon or a penis]
Definition: A strapon-panties is dildo-usage: decide yes.


To say ShortDesc of (H - a strapon-panties):
	say "strap-on dildo".

To decide which number is the price of (C - a strapon-panties):
	decide on 2 + the strap-length of C.

To say PenisFlavour of (K - a strapon-panties):[used any time you use "ShortDesc of penis"]
	let N be the strap-length of K;
	if the size of penis >= N, say ShortDesc of penis;
	otherwise say "[PenisSizeFlav N] strap-on [PenisShaftFlav N]".

To say ShortPenisFlav of (K - a strapon-panties):[used any time you use "player-penis"]
	if K is dildo-usage:
		say "strap-on";
	otherwise:
		if the sexual-penis-length < 5, say sissy-penis;
		otherwise say manly-penis.

To say ShaftDesc of (K - a strapon-panties):[used any time you use "shaft"]
	if K is dildo-usage, say "dildo";
	otherwise say "shaft".

To say PenisSoften of (K - a strapon-panties):
	do nothing.

To say PenisHarden of (K - a strapon-panties):
	do nothing.

Definition: a strapon-panties is end of transformation chain: decide yes.

Definition: a strapon-panties is displacable: decide no.

Chapter 1 - Strapon Dildo

A strapon-dildo is a kind of strapon-panties. The text-shortcut of a strapon-dildo is "stpd". There are 5 strapon-dildos. A strapon-dildo is crotch-assless. The armour of a strapon-dildo is 2. The printed name of strapon-dildo is "[clothing-title-before][if the size of penis < the strap-length of the item described][PenisSizeFlav strap-length of the item described] [end if][ShortDesc of item described][clothing-title-after]". Understand "pouch", "nintendolls" as strapon-dildo.

To decide which number is the penis-capacity of (K - a strapon-dildo):
	decide on the strap-length of K - 1.

Definition: A strapon-dildo (called P) is dildo-usage:
	if the size of penis >= the strap-length of P, decide no;
	decide yes.

To say PenisSoften of (K - a strapon-dildo):
	say "The nintendolls pouch shifts itself up on your body, completely covering your shaft. A silicon penis materializes out of it in a rush of 1's and 0's, and you feel a slight jolt as it replaces all the sensations from your [player-penis] with its own.".

To say PenisHarden of (K - a strapon-dildo):
	say "The silicon dildo disappears in a rush of 1's and 0's as your [player-penis] pops out of the pouch, and you feel a slight jolt as the sensation returns to normal.". [###Selkie: At first sight, I wondered if this meant your penis fell off onto the ground! ;-) ]

To say ShortPenisFlav of (K - a strapon-dildo):[used any time you use "player-penis"]
	if K is dildo-usage:
		say "strap-on";
	otherwise:
		if the sexual-penis-length < 5, say sissy-penis;
		otherwise say manly-penis.

To say ShortDesc of (H - a strapon-dildo):
	if H is dildo-usage, say "strap-on dildo";
	otherwise say "nintendolls pouch".

To say UniqueClothingDesc of (K - strapon-dildo):
	if K is not dildo-usage:
		say "A leather pouch with the Nintendolls logo printed along the front, along with a large number '[strap-length of K].' [if K is worn]It cradles your [ShortBallsDesc], gently stimulating them with the tiny nodes covering its inner surface.[otherwise]The inside of it is covered in tiny silver nodes.[end if]";
	otherwise if the player is male:
		say "A leather pouch with a [PenisSizeFlav the strap-length of K] silicon dildo mounted on the front. [if K is worn]Tiny metal nodes are passing a gentle current into your [ShortDesc of penis], transmitting sensation from the fake penis and forcing your real one to remain completely soft[otherwise]The inside of it is covered in tiny silver nodes[end if].";
	otherwise:
		say "A [PenisSizeFlav the strap-length of K] silicon dildo mounted onto a small patch of leather. [if K is worn]Tiny metal nodes are passing a gentle current into your [vagina], transmitting all the sensation from the dildo to you[otherwise]The inner surface is covered in tiny metal nodes[end if].".

Chapter 2 - Equine Strapon

An equine-strapon is a kind of strapon-panties. An equine-strapon is usually unique. The text-shortcut of a equine-strapon is "eqsd". There are 2 equine-strapons. The armour of an equine-strapon is 10. Understand "equine", "horse", "harness" as equine-strapon.
Figure of equine-strapon is the file "Items/Accessories/Toys/strapon3.jpg".
To decide which figure-name is the examine-image of (H - an equine-strapon):
	decide on figure of equine-strapon.

To decide which number is the heaviness of (H - an equine-strapon):
	decide on 5.[heavy]

Report wearing equine-strapon:[takes a long time to take on or off]
	say "It takes a long time to finish putting yourself into the harness.";
	now seconds is 12.

Report going while there is a worn equine-strapon:
	if the player is prone:
		say "You feel a twinge of pleasure as the dildo drags along the ground behind you.";
		Arouse 20.

To uniquely set up (C - an equine-strapon):
	now the strap-length of C is 12.

Definition: An equine-strapon (called P) is fetish appropriate:
	if the player is the donator:[for now]
		decide yes;
	decide no.

To say PenisFlavour of (K - a equine-strapon):
	let N be the strap-length of K;
	if the size of penis >= N, say ShortDesc of penis;
	otherwise say "[PenisSizeFlav N] [if mythical creature fetish is 1]industrial[otherwise]equine[end if] strapon [PenisShaftFlav N]".

To say ShortDesc of (H - equine-strapon):
	say "[if mythical creature fetish is 1]equine[otherwise]industrial[end if] strap-on".

To say UniqueClothingDesc of (K - equine-strapon):
	say "A [PenisFlavour of K] mounted onto a sturdy leather harness. [if K is worn and the size of penis > 0]Your [ShortDesc of penis] rests in a small hole in the base of the dildo, receiving every sensation the dildo feels, as if it were a part of your own body[otherwise if K is worn]A small nub at the base of the dildo rests against your crotch, transmitting every sensation the dildo feels, as if it were a part of your own body[otherwise if the size of penis > 0]The base of the dildo is hollow, and covered in tiny metal sensors[otherwise]There is a small nub at the base of the dildo, covered in tiny metal sensors[end if]. [if K is worn and the player is prone]It drags heavily along the floor[otherwise]It hangs heavily toward the floor[end if].".

[
Only needed if the player's penis can ever go beyond 10
To say PenisSoften of (K - an equine-strapon):
	say "Your [ShortDesc of penis] is forcibly softened as your cock ring transforms into a [printed name of K].";
To say PenisHarden of (K - an equine-strapon):
	say "You feel your [ShortDesc of penis] tingle as your strapon dildo transforms into a [printed name of K].";]

Chapter 3 - Gemstone Strapon

Gem-strapon is a strapon-panties. The text-shortcut of gem-strapon is "gspd". Gem-strapon is rare. The armour of gem-strapon is 6. Understand "thong", "gem", "encrusted", "gem-encrusted", "gem encrusted" as a gem-strapon. Gem-strapon is silk.

Figure of gem-strapon is the file "Items/Accessories/Toys/strapon2.jpg".
To decide which figure-name is the examine-image of (H - gem-strapon):
	decide on figure of gem-strapon.

To say PenisFlavour of (K - gem-strapon):
	let N be the strap-length of K;
	if N < the size of penis, now N is the size of penis;
	say "[PenisSizeFlav N] [ShortDesc of K]".

To say ShortDesc of (H - a gem-strapon):
	say "gem-encrusted strap-on".

This is the gemstrap blowjob slut rule:
	if gem-strapon is worn, increase the desirability of face by 10.
The gemstrap blowjob slut rule is listed in the blowjob slut eligibility rules.

Definition: a gem-strapon is unlimited horniness: decide yes.

To compute periodic effect of (G - gem-strapon):
	Arouse 40;
	if the player is very horny and the strap-length of G < 10:
		now the strap-length of G is 10;
		say "The gemstones covering your strap-on begin to glow faintly, and the dildo expands into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
	otherwise if the player is horny:
		now the strap-length of G is 7;
		if the strap-length of G > 7:
			say "The gemstones covering your strap-on lose their glow, and the dildo shrinks into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
		otherwise if the strap-length of gem-strapon < 7:
			say "The gemstones covering your strap-on take on a brighter hue, and the dildo expands into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
	otherwise if the player is a bit horny:
		now the strap-length of G is 5;
		if the strap-length of G > 5:
			say "The gemstones covering your strap-on lose some of their brightness, and the dildo shrinks into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
		otherwise if the strap-length of G < 5:
			say "The gemstones covering your strap-on regain some of their colour, and the dildo expands into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
	otherwise if the strap-length of G > 3:
		now the strap-length of G is 3;
		say "The gemstones covering your strap-on lose almost all of their colour, and the dildo shrinks into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";



To decide which number is the sex-addiction-influence of (C - a gem-strapon):
	decide on 3.

To decide which number is the dexterity-influence of (C - gem-strapon):
	let X be the strap-length of C;
	if X < 5, decide on -1;
	decide on X / 3.

To decide which number is the strength-influence of (C - gem-strapon):
	let X be the strap-length of C;
	if X < 5, decide on -1;
	decide on X / 3.

To decide which number is the intelligence-influence of (C - gem-strapon):
	if the class of the player is vampire spawn:
		let X be the strap-length of C;
		if X < 5, decide on -1;
		decide on X / 3;
	decide on 0.

To say UniqueClothingDesc of (K - gem-strapon):
	say "A silk thong covered in multicoloured gems with a [PenisFlavour of K] dildo mounted to the front. [if K is worn]Arousal radiates through your body at every point of contact, and [i]every[/i] gemstone is somehow as sensitive as your bare flesh[otherwise]".

Chapter 4 - Ghost Strapon

Ghost-strapon is a strapon-panties. The text-shortcut of ghost-strapon is "ghpd". ghost-strapon is totally-exclusive. Ghost-strapon is unique. The printed name of ghost-strapon is "[clothing-title-before][PenisSizeFlav sexual-penis-length] [ShortDesc of item described][clothing-title-after]". The armour of ghost-strapon is 1. Understand "pair", "pair of", "crotchless", "panties", "goth", "ghost", "ghostly" as ghost-strapon. The soak-limit of ghost-strapon is usually 3. Ghost-strapon is crotch-exposing. Ghost-strapon is satin.

Figure of ghost-strapon is the file "Items/Accessories/Toys/strapon4.jpg".
To decide which figure-name is the examine-image of (H - ghost-strapon):
	decide on figure of ghost-strapon.

To say PenisSoften of (K - ghost-strapon):
	say "A [PenisFlavour of K] superimposes itself into the space your shaft left behind.".

To say PenisHarden of (K - ghost-strapon):
	say "The spectral penis disappears, leaving behind a faint glow that surrounds your shaft.".

To decide which number is the initial outrage of (C - a ghost-strapon):
	decide on 11.

To uniquely set up (C - a ghost-strapon):
	now the strap-length of C is 3.[should these be possessed? Not sure, but probably not]

Definition: A ghost-strapon (called P) is dildo-usage:
	if the player is female and futanari fetish is 0, decide yes;
	decide no.

To say ShortDesc of (H - ghost-strapon):
	if the player is female and futanari fetish is 0:
		say "spectral strap-on";
	otherwise:
		if the size of penis < the strap-length of H, say "spectral [player-penis]";
		otherwise say "glowing [player-penis]".

To say PenisFlavour of (K - ghost-strapon):
	let N be the strap-length of K;
	if the player is male and the size of penis >= the strap-length of K:
		say "glowing [ShortDesc of penis]";
	otherwise if the player is female and futanari fetish is 0:
		say "[PenisSizeFlav N] spectral strap-on [PenisShaftFlav N]";
	otherwise:
		say "[PenisSizeFlav N] spectral [PenisShaftFlav N]".

To say UniqueClothingDesc of (K - ghost-strapon):
	if K is not worn:
		say "A gossamer piece of cloth with a soft [PenisFlavour of K] poking out of it. The fabric seems to become invisible when exposed to your touch.";
	otherwise if the size of penis is 0:
		say "An invisible pair of panties with holes for your ass and genitals. A rock hard [PenisFlavour of K] is attached to it, actively sapping your strength.";
	otherwise:
		say "An invisible pair of panties with holes for your ass and genitals. [if the size of penis >= the strap-length of K]Your shaft is glowing faintly, and
		refuses to go soft even for a moment[otherwise]A [PenisFlavour of K] has completely absorbed your shaft, actively sapping your strength[end if].".

To decide which number is the strength-influence of (C - ghost-strapon):
	let X be the size of penis - the strap-length of C;
	if X > 0, decide on 0;
	decide on X.

To decide which number is the dexterity-influence of (C - ghost-strapon):
	let X be the size of penis - the strap-length of C;
	if X > 0, decide on 0;
	decide on X.

Definition: ghost-strapon is blessable: decide no.


Strapon ends here.
