Strapon by Knickers begins here.

A strapon-panties is a kind of knickers. The printed name of a strapon-panties is "[clothing-title-before][PenisFlavour of item described][clothing-title-after]". Understand "strapon", "dildo", "strap on", "strap-on" as a strapon-panties. a strapon-panties has a number called strap-length. a strapon-panties is usually totally-exclusive. a strapon-panties is usually leather. a strapon-panties is crotch-assless.

Definition: a strapon-panties is penis themed: decide yes.
Definition: a strapon-panties is fluid vulnerable: decide no.

Figure of strapon-panties is the file "Items/Accessories/Toys/strapon1.png".

To decide which figure-name is clothing-image of (C - a strapon-panties):
	decide on figure of strapon-panties.

To say selfexamineuniquetitle of (K - a strapon-panties):
	say "strap-on dildo".

To uniquely set up (C - a strapon-panties):
	now the strap-length of C is a random number between 4 and 6.

To set up magic attribute of (C - a strapon-panties):
	let R be a random number between 1 and 3;
	if R is 1, now C is dominance;
	set up rare magic attribute of C.

Definition: a strapon-panties is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

[is it a strapon or a penis]
Definition: a strapon-panties is dildo-usage: decide yes.

To say ShortDesc of (H - a strapon-panties):
	say "strap-on dildo".

To decide what number is the original price of (C - a strapon-panties):
	decide on 4 + (the strap-length of C / 3).

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

To say TipFlavour of (K - a strapon-panties):[used any time you use "tip"]
	if K is dildo-usage, say "[one of]straphead[or]dildotip[or]strapend[or]straptip[in random order]";
	otherwise say "[one of]cockhead[or]tip[or]bellend[or]dicktip[in random order]".

To say PenisSoften of (K - a strapon-panties):
	do nothing.

To say PenisHarden of (K - a strapon-panties):
	do nothing.

Definition: a strapon-panties is end of transformation chain: decide yes.

Definition: a strapon-panties is displacable: decide no.
To decide which number is the initial armour of (C - a strapon-panties):
	decide on 15.
To decide which number is the delicateness-influence of (C - a strapon-panties):
	decide on -1 - the magic-modifier of C - (the strap-length of C / 3).

Chapter 1 - Strapon Dildo

strapon-dildo is a strapon-panties. The text-shortcut of strapon-dildo is "stpd". strapon-dildo is crotch-assless. Understand "pouch", "nintendolls" as strapon-dildo.

To decide which number is the penis-capacity of (K - strapon-dildo):
	decide on the strap-length of K - 1.

Definition: strapon-dildo is dildo-usage:
	if the size of penis >= the strap-length of strapon-dildo, decide no;
	decide yes.

To say PenisSoften of (K - strapon-dildo):
	say "The Nintendolls pouch shifts itself up on your body, completely covering your shaft. A silicone penis materialises out of it in a rush of 1s and 0s, and you feel a slight jolt as it replaces all the sensations from your [player-penis] with its own.".

To say PenisHarden of (K - strapon-dildo):
	say "The silicone dildo disappears in a rush of 1s and 0s as your [player-penis] pops out of the pouch, and you feel a slight jolt as the sensation returns to normal.".

To say ShortPenisFlav of (K - strapon-dildo):[used any time you use "player-penis"]
	if K is dildo-usage:
		say "strap-on";
	otherwise:
		if the sexual-penis-length < 5, say sissy-penis;
		otherwise say manly-penis.

To say ShortDesc of (H - strapon-dildo):
	if H is dildo-usage, say "strap-on dildo";
	otherwise say "Nintendolls pouch".

To say UniqueClothingDesc of (K - strapon-dildo):
	if K is not dildo-usage:
		say "A leather pouch with the Nintendolls logo printed along the front, along with a large number '[strap-length of K].' [if K is worn and the player is possessing a scrotum]It cradles your [ShortDesc of scrotum], gently stimulating them with the tiny nodes covering its inner surface.[otherwise if K is worn]It cradles your taint, gently stimulating it with tiny nodes covering its inner surface.[otherwise]The inside of it is covered in tiny silver nodes.[end if]";
	otherwise if the player is possessing a penis:
		say "A leather pouch with a [PenisSizeFlav the strap-length of K] silicone dildo mounted on the front. [if K is worn]Tiny metal nodes are passing a gentle current into your [ShortDesc of penis], transmitting sensation from the fake penis and forcing your real one to remain completely soft[otherwise]The inside of it is covered in tiny silver nodes[end if].";
	otherwise:
		say "A [PenisSizeFlav the strap-length of K] silicone dildo mounted onto a small patch of leather. [if K is worn]Tiny metal nodes are passing a gentle current into your [vagina], transmitting all the sensation from the dildo to you[otherwise]The inner surface is covered in tiny metal nodes[end if].".

Chapter 2 - Equine Strapon

equine-strapon is a strapon-panties. equine-strapon is unique. The text-shortcut of equine-strapon is "eqsd". Understand "equine", "horse", "industrial", "ind", "equ", "harness" as equine-strapon.
Figure of equine-strapon is the file "Items/Accessories/Toys/strapon3.png".
To decide which figure-name is the examine-image of (H - equine-strapon):
	decide on figure of equine-strapon.

To decide which number is the heaviness of (H - equine-strapon):
	decide on 5.[heavy]

Report wearing equine-strapon:[takes a long time to take on or off]
	say "It takes a long time to finish putting yourself into the harness.";
	now seconds is 12.

Report going:
	if the player is prone and equine-strapon is worn:
		say "You feel a twinge of pleasure as the dildo drags along the ground behind you.";
		Arouse 20.

To uniquely set up (C - equine-strapon):
	now the strap-length of C is 12.

To say PenisFlavour of (K - equine-strapon):
	let N be the strap-length of K;
	if the size of penis >= N, say ShortDesc of penis;
	otherwise say "[PenisSizeFlav N] [if mythical creature fetish is 1]equine[otherwise]industrial[end if] strapon [PenisShaftFlav N]".

To say TipFlavour of (K - equine-strapon):[used any time you use "tip"]
	if mythical creature fetish is 1, say "flare";
	otherwise say "dildotip".

To say ShortDesc of (H - equine-strapon):
	say "[if mythical creature fetish is 1]equine[otherwise]industrial[end if] strap-on".

To say UniqueClothingDesc of (K - equine-strapon):
	say "A [PenisFlavour of K] mounted onto a sturdy leather harness. [if K is worn and the player is possessing a penis]Your [ShortDesc of penis] rests in a small hole in the base of the dildo, receiving every sensation the dildo feels as if it were a part of your own body[otherwise if K is worn]A small nub at the base of the dildo rests against your crotch, transmitting every sensation the dildo feels as if it were a part of your own body[otherwise if the player is possessing a penis]The base of the dildo is hollow, and covered in tiny metal sensors[otherwise]There is a small nub at the base of the dildo, covered in tiny metal sensors[end if]. [if K is worn and the player is prone]It drags heavily along the floor[otherwise]It hangs heavily toward the floor[end if].".

[
Only needed if the player's penis can ever go beyond 10
To say PenisSoften of (K - an equine-strapon):
	say "Your [ShortDesc of penis] is forcibly softened as your cock ring transforms into a [printed name of K].";
To say PenisHarden of (K - an equine-strapon):
	say "You feel your [ShortDesc of penis] tingle as your strapon dildo transforms into a [printed name of K].";]

Chapter 3 - Gemstone Strapon

Gem-strapon is a strapon-panties. The text-shortcut of gem-strapon is "gspd". Gem-strapon is rare. Understand "thong", "gem", "encrusted", "gem-encrusted", "gem encrusted" as gem-strapon. Gem-strapon is silk.

Figure of gem-strapon is the file "Items/Accessories/Toys/strapon2.png".
To decide which figure-name is the examine-image of (H - gem-strapon):
	decide on figure of gem-strapon.

To say PenisFlavour of (K - gem-strapon):
	let N be the strap-length of K;
	if N < the size of penis, now N is the size of penis;
	say "[PenisSizeFlav N] [ShortDesc of K]".

To say ShortDesc of (H - gem-strapon):
	say "gem-encrusted strap-on".

This is the gemstrap blowjob slut rule:
	if gem-strapon is worn, increase the desirability of face by 10.
The gemstrap blowjob slut rule is listed in the blowjob slut eligibility rules.

Definition: gem-strapon is unlimited horniness: decide yes.

To compute periodic effect of (G - gem-strapon):
	Arouse 40;
	if the player is very horny:
		if the strap-length of G < 10:
			now the strap-length of G is 10;
			say "The gemstones covering your strap-on begin to glow faintly, and the dildo expands into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
	otherwise if the player is horny:
		if the strap-length of G > 7:
			now the strap-length of G is 7;
			say "The gemstones covering your strap-on lose their glow, and the dildo shrinks into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
		otherwise if the strap-length of gem-strapon < 7:
			now the strap-length of G is 7;
			say "The gemstones covering your strap-on take on a brighter hue, and the dildo expands into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
	otherwise if the player is a bit horny:
		if the strap-length of G > 5:
			now the strap-length of G is 5;
			say "The gemstones covering your strap-on lose some of their brightness, and the dildo shrinks into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
		otherwise if the strap-length of G < 5:
			now the strap-length of G is 5;
			say "The gemstones covering your strap-on regain some of their colour, and the dildo expands into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].";
	otherwise:
		if the strap-length of G > 3:
			now the strap-length of G is 3;
			say "The gemstones covering your strap-on lose almost all of their colour, and the dildo shrinks into a [PenisSizeFlav strap-length of G] [PenisShaftFlav strap-length of G].".

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
	say "A silk thong covered in multicoloured gems with a [PenisFlavour of K] dildo mounted to the front[if K is worn]. Arousal radiates through your body at every point of contact, and *every* gemstone is somehow as sensitive as your bare flesh[end if].".

Chapter 4 - Ghost Strapon

Ghost-strapon is a strapon-panties. The text-shortcut of ghost-strapon is "ghpd". ghost-strapon is totally-exclusive. Ghost-strapon is unique. Understand "pair", "pair of", "crotchless", "panties", "goth", "ghost", "ghostly" as ghost-strapon. Ghost-strapon is crotch-exposing. Ghost-strapon is satin.

Figure of ghost-strapon is the file "Items/Accessories/Toys/strapon4.png".
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

Definition: ghost-strapon is dildo-usage:
	if the player is not possessing a penis:
		if the player is possessing a vagina and futanari fetish is 0, decide yes;
	decide no.

To say ShortDesc of (H - ghost-strapon):
	unless H is worn:
		say "spectral satin panties";
	otherwise if H is dildo-usage:
		say "spectral strap-on";
	otherwise:
		if the size of penis < the strap-length of H, say "spectral [player-penis]";
		otherwise say "glowing [player-penis]".

To say PenisFlavour of (K - ghost-strapon):
	let N be the strap-length of K;
	if the player is possessing a penis and the size of penis >= the strap-length of K:
		say "glowing [ShortDesc of penis]";
	otherwise if K is dildo-usage:
		say "[PenisSizeFlav N] spectral strap-on [PenisShaftFlav N]";
	otherwise:
		say "[PenisSizeFlav N] spectral [PenisShaftFlav N]".

To say UniqueClothingDesc of (K - ghost-strapon):
	if K is not worn:
		say "A pair of black satin panties. The fabric is glowing very faintly, and it seems to turn slightly invisible when exposed to your touch. It contains the spirit of a very horny ghost.";
	otherwise if the player is not possessing a penis:
		say "A pair of black satin panties, with perfectly sized holes that keep your ass and genitals fully accessible and on display. The spirit inhabiting the fabric is actively sapping your strength, using it to maintain a rock hard [PenisFlavour of K][if futanari fetish is 1] and a matching pair of ghostly balls[end if].";
	otherwise:
		say "A pair of black satin panties, with perfectly sized holes that keep your ass and genitals fully accessible and on display. The spirit inhabiting the fabric [if the size of penis >= the strap-length of K]has possessed your [ShortDesc of penis], preventing it from going soft even for a moment.[otherwise]has completely dominated your genitals and begun to actively sap your strength. The spirit's [PenisFlavour of K] has superimposed itself over your shaft.[end if]".

Report wearing ghost-strapon:
	if the player is male:
		if the size of penis < the strap-length of ghost-strapon, now penis is penis-erect.

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
