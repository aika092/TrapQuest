Chocolate Egg by Food begins here.

A chocolate egg is a kind of food. The printed name of chocolate egg is "[TQlink of item described]chocolate egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of chocolate egg is "[TQlink of item described]chocolate eggs[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of chocolate egg is "ceg". There are 8 chocolate egg.
To say ExamineDesc of (B - a chocolate egg):
	say "A small chocolate Easter egg.".

To decide which number is the crafting key of (C - a chocolate egg):
	decide on 55.

Figure of chocolate egg is the file "Items/Collectibles/chocolateegg1.jpg".

To decide which figure-name is the examine-image of (F - a chocolate egg):
	decide on figure of chocolate egg.

To say ShortDesc of (C - a chocolate egg):
	say "chocolate egg".

Carry out TQeating chocolate egg:
	destroy the noun;
	StomachFoodUp 2;
	StomachUp 1;
	allocate 6 seconds;
	say "You take the [ShortDesc of the noun] and [if the player is in danger]devour it as quickly as you can[otherwise if the fat-weight of the player > 28]greedily stuff the entire thing into your mouth, immediately swallowing it whole[otherwise if the fat-weight of the player > 12]speedily devour the egg[otherwise]eat the egg slowly, savouring each mouthful[end if]. The inside is full of tasty runny syrup, quenching your thirst as well as your hunger.".

To compute (M - a robochef) cooking (I - a chocolate egg):
	let D be a random off-stage truffle;
	if D is food:
		now the quality of D is a random number between 2 and 0;
		now the fat of D is 1;
		now D is retained by M.

Chocolate Egg ends here.
