Snacks by Food begins here.

A snack is a kind of food.
The printed name of a snack is "[TQlink of item described][ShortDesc of item described][shortcut-desc][TQxlink of item described][verb-desc of item described]".

To say ShortDesc of (C - a snack):
	say "snack".

To restock (C - a snack):
	do nothing.

Carry out TQeating snack:
	allocate 6 seconds;
	destroy the noun;
	StomachFoodUp 2.

apple is a snack. The text-shortcut of apple is "ap".

Figure of apple is the file "Items/Collectibles/apple1.png".

To decide which figure-name is the examine-image of (F - apple):
	decide on figure of apple.

To say ExamineDesc of (A - apple):
	say "A smallish apple that you could eat.".

To say ShortDesc of (C - apple):
	say "apple".

Carry out TQeating apple:
	IntUp 1.

Report TQeating apple:
	say "You [if the fat-weight of the player > 20]greedily bite off large chunks of the apple, swallowing each whole. [otherwise]take bites out of the apple, until you have eaten nearly all of the juicy fruit. [end if]You feel smarter! You discard the core.".

To compute (M - a robochef) cooking (I - apple):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 1 and -1;
		now the fat of D is 1;
		now D is retained by M.

banana is a snack. The text-shortcut of banana is "ban".

Figure of banana is the file "Items/Collectibles/banana1.png".

To decide which figure-name is the examine-image of (F - banana):
	decide on figure of banana.

To say ExamineDesc of (B - banana):
	say "A smallish banana that you could peel and eat.".

To say ShortDesc of (C - banana):
	say "banana".

Carry out TQeating banana:
	DexUp 1.

Report TQeating banana:
	say "You peel the skin off [NameDesc of the noun] and [if the fat-weight of the player > 20]greedily stuff the entire thing into your mouth, immediately swallowing it whole. [otherwise if the oral sex addiction of the player > 7]practise deepthroating the phallic food a few times before finally swallowing it whole. [otherwise]take bites out of the banana, until it has completely gone. [end if]You feel faster!".

To compute (M - a robochef) cooking (I - banana):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 2 and -2;
		now the fat of D is 2;
		now D is retained by M.

lemon is a snack. The text-shortcut of lemon is "lem".

Figure of lemon is the file "Items/Collectibles/lemon1.png".

To decide which figure-name is the examine-image of (F - lemon):
	decide on figure of lemon.

To say ExamineDesc of (C - lemon):
	say "A smallish lemon that you could eat. It would probably be quite sour.".

To say ShortDesc of (C - lemon):
	say "lemon".

Report TQeating lemon:
	say "You [if the fat-weight of the player > 20]greedily bite off large chunks of the lemon, swallowing each whole. [otherwise]take bites out of the lemon, until you have eaten nearly all of the juicy fruit. [end if]It's very sour, [if the semen taste addiction of the player < 14]yuck[otherwise]but weirdly, you really like it[end if]! You feel more capable of handling sour and bitter tastes.";
	DelicateDown 2;
	SilentlySemenTasteAddictUp 1.

To compute (M - a robochef) cooking (I - lemon):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 1 and -2;
		now the fat of D is 1;
		now D is retained by M.

pack of crisps is a snack. The text-shortcut of pack of crisps is "cri".

Figure of crisps is the file "Items/Collectibles/crisps1.png".

To decide which figure-name is the examine-image of (F - pack of crisps):
	decide on figure of crisps.

To say ExamineDesc of (C - pack of crisps):
	say "A smallish pack of ready salted crisps that you could open and eat.".

To say ShortDesc of (C - pack of crisps):
	say "pack of crisps".

Carry out TQeating pack of crisps:
	StrengthUp 1.

Report TQeating pack of crisps:
	say "Opening the packet, you [if the fat-weight of the player > 20]greedily shove mouthfuls of crisps into your mouth and they are quickly gone. [otherwise]eat the crisps one at a time until they are all gone. [end if]You feel stronger! You discard the empty wrapper.".

To compute (M - a robochef) cooking (I - pack of crisps):
	let D be a random off-stage stuffed mushroom;
	if D is food:
		now the quality of D is a random number between 0 and -2;
		now the fat of D is 3;
		now D is retained by M.

pack of nuts is a snack. The text-shortcut of pack of nuts is "nu".

Figure of nuts is the file "Items/Collectibles/nuts1.png".

To decide which figure-name is the examine-image of (F - pack of nuts):
	decide on figure of nuts.

To say ExamineDesc of (C - pack of nuts):
	say "A smallish pack of salted nuts that you could open and eat.".

To say ShortDesc of (C - pack of nuts):
	say "pack of nuts".

Report TQeating pack of nuts:
	say "Opening the packet, you [if the fat-weight of the player > 20]greedily shove mouthfuls of nuts into your mouth and they are quickly gone. [otherwise]eat the nuts one or two at a time until they are all gone. [end if]You feel more dominant! You discard the empty wrapper.";
	DelicateDown 1.

To compute (M - a robochef) cooking (I - pack of nuts):
	let D be a random off-stage cookie;
	if D is food:
		now the quality of D is a random number between 2 and -1;
		now the fat of D is 1;
		now D is retained by M.

Snacks ends here.
