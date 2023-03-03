All Skirts by Skirts begins here.

A skirt is a kind of clothing. A skirt is usually knee-length. Understand "skirt" as skirt.

Definition: a skirt is same-type:
	if theme-share-target is skirt, decide yes;
	decide no.

A miniskirt is a kind of skirt. A miniskirt is usually short.
Definition: a miniskirt is potentially erection concealing: decide yes. [non-tight skirts conceal erections]

To decide which number is the initial outrage of (C - a skirt):
	decide on 2.

Definition: a skirt is magic-enhanceable: decide no.

To set up magic attribute of (S - a skirt):
	let R be a random number between 1 and 7;
	if R is 1, now the magic-type of S is confidence;
	if R is 2, now the magic-type of S is endurance;
	if R is 3:
		now the magic-type of S is temptation;
		if diaper quest is 1, now S is respiration;
	if R is 4, now the magic-type of S is dressup;
	if R >= 5 and S is super-short or S is actually sheer, now the magic-type of S is protection;
	if R is 3, curse S.

To restock (C - a skirt):
	let B be a random basic loot skirt;
	if B is skirt:
		repeat with L running through Standard Item Pen:
			if L is skirt, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting skirts rule:
	let C be a random skirt;
	restock C.
The setup starting skirts rule is listed in the setup starting items rules.

To set up influence of (C - a skirt):
	set up random-based influence of C.

Report examining skirts:
	if newbie tips is 1, say "[one of][newbie style]Skirts [if the noun is super-short or the noun is unskirted](but not this one!) [end if]can sometimes help with your modesty.[roman type][line break][or][stopping]".

Definition: a skirt is displacable:
	if it is short or longer, decide yes;
	decide no.

This is the remove inappropriate skirts rule:
	repeat with B running through microskirts:
		unless B is tartan themed, now B is in Holding Pen;
	repeat with B running through sequins belts:
		now B is in Holding Pen;
	repeat with B running through chainmail skirts:
		now B is in Holding Pen;
	now black-rubber-hobble-skirt is in Holding Pen;
	repeat with B running through rubber-skirts:
		now B is in Holding Pen.
The remove inappropriate skirts rule is listed in the diaper quest fix rules.

To compute SelfExamineDesc of (S - a skirt):
	say "A [ShortDesc of S] hangs down from your waist.".

To say ShortDesc of (S - a skirt):
	say "skirt".

To say ShortestDesc of (C - a skirt):
	say "skirt".

Definition: a clothing (called C) is skirt-covering-crotch: [does it (potentially if dense) protect the visibility of asshole]
	if C is skirted:
		if C is super-short or C is crotch-assless, decide no; [tiny skirts don't protect anything]
		if C is worn: [We only care about these checks if it's already worn; a kneeling player should still be happy to wear a short skirt because it CAN protected them once they stand back up]
			if the player is prone and C is short, decide no; [short skirts don't protect you unless you're standing.]
			if C is crotch-displaced or C is crotch-unzipped, decide no; [if it's raised up it is currently not covering stuff]
		if C is crotch covering and (C is no protection or C is pussy protection), decide no; [ripped hobble skirt, or crotch only]
		decide yes;
	decide no.

Definition: a skirt is ingredient: decide yes.

To decide which number is the crafting key of (C - a skirt):
	decide on 54.

[This is supposed to line up with DQBulk, i.e. if DQBulk is bigger than this, we can see the bottom of your diaper (defaultDiaperCoveringLength). Ideally it also lines up with how many inches of penis it can hide (penis-capacity is 1 + skirtLength*2).]
To decide which number is the skirtLength of (C - a clothing):
	if C is super-short or C is unskirted or C is crotch-displaced or C is crotch-unzipped or C is crotch-ripped, decide on -1;
	if C is short, decide on 1;
	[if C is knee-length, decide on 7;]
	decide on 8.
To decide which number is the default-soak-limit of (C - a skirt):
	if C is super-short:
		decide on 4;
	otherwise if C is short:
		decide on 6;
	otherwise if C is knee-length:
		decide on 10;
	otherwise:
		decide on 15.

Chapter - Wearability

Check wearing gown-of-purity:
	if the vaginalvirgin of the player is 0, say "The latches of the belt refuse to close! It's almost as if the 'gown' is refusing to let you wear it..." instead.

skirt wearability rules is a rulebook. The wearability rules of skirt is usually skirt wearability rules.

This is the skirt already worn rule:
	repeat with O running through worn skirts:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The skirt already worn rule is listed in the skirt wearability rules.

This is the overdress skirts clash rule:
	if wearing-target is skirted or wearing-target is crotch covering:
		repeat with C running through worn skirted skirts:
			if summoning is 0 and autowear is false, say "[if wearing-target is skirted]You can't wear that over[otherwise]You would feel a bit stupid wearing that at the same time as[end if] your [printed name of C]!";
			rule fails.
The overdress skirts clash rule is listed in the overdress wearability rules.

Check taking off worn skirt:
	if the noun is living belt of sturdiness:
		if the noun is penetrating a fuckhole, say "You're going to have to find some way to remove it from your insides first!" instead.

A chainmail skirt is a kind of miniskirt. A chainmail skirt is usually see-through. A chainmail skirt is rare. A chainmail skirt is metal. There is 1 chainmail skirt. Figure of chainmail skirt is the file "Items/Clothes/Lower/Skirts/chainmailskirt1.png".

The printed name of a chainmail skirt is "[clothing-title-before]chainmail skirt[clothing-title-after]". The text-shortcut of chainmail skirt is "cs".

To decide which figure-name is clothing-image of (C - a chainmail skirt):
	decide on figure of chainmail skirt.

To say ClothingDesc of (C - a chainmail skirt):
	say "This short skirt is made of metal, and parts at the front to ensure that it provides absolutely no modesty to your [genitals]. However you can tell that it is a powerful defensive item.".

To say ShortDesc of (Y - a chainmail skirt):
	say "chainmail skirt".

To decide which number is the initial outrage of (C - a chainmail skirt):
	decide on 1.

To decide which number is the bartering value of (T - a chainmail skirt) for (M - a gladiator):
	decide on 4.

Definition: a chainmail skirt is transformation-protected: decide yes.
Definition: a chainmail skirt is grey themed: decide yes.

[A chainmail skirt is a skirt, so its cost is 2, which is appropriate.]

chequered skirt is a skirt. Figure of chequered skirt is the file "Items/Clothes/Lower/Skirts/skirt2.png". The printed name of chequered skirt is "[clothing-title-before]chequered skirt[clothing-title-after]". The text-shortcut of chequered skirt is "cqs".

To decide which figure-name is clothing-image of (C - chequered skirt):
	decide on figure of chequered skirt.

To say ClothingDesc of (C - chequered skirt):
	say "This tight skirt has a busy repeating white and black pattern[if C is not diaper covering]. The tight fabric has been pushed up by your thick diaper, partially exposing it[end if].".

To compute SelfExamineDesc of (Y - chequered skirt):
	say "Strips of white skirt flow from your waist, exposing some thigh.".

To say ShortDesc of (Y - chequered skirt):
	say "chequered skirt".

To decide which number is the initial outrage of (C - chequered skirt):
	decide on 1.

To decide which number is the adult-influence of (C - chequered skirt):
	decide on 1.

Definition: chequered skirt is black themed: decide yes.
Definition: chequered skirt is white themed: decide yes.

To decide which number is the diaperCoveringLength of (C - chequered skirt): decide on 7. [DQBulk 8 or higher makes the skirt ride up too high, exposing the diaper]

flowing skirt is a skirt. Figure of flowing skirt is the file "Items/Clothes/Lower/Skirts/skirt1.png". The printed name of flowing skirt is "[clothing-title-before]flowing white skirt[clothing-title-after]". The text-shortcut of flowing skirt is "fws". Understand "white" as flowing skirt.

To decide which figure-name is clothing-image of (C - flowing skirt):
	decide on figure of flowing skirt.

To say ClothingDesc of (C - flowing skirt):
	say "This long white skirt has a few slits cut out to expose some of [if C is worn]your[otherwise]the wearer's[end if] thighs and help make movement easy.".

To compute SelfExamineDesc of (Y - flowing skirt):
	say "Strips of white skirt flow from your waist, exposing some thigh.".

To say ShortDesc of (Y - flowing skirt):
	say "flowing white skirt".

To decide which number is the initial outrage of (C - flowing skirt):
	decide on 2.

To decide which number is the adult-influence of (C - flowing skirt):
	decide on 1.

Definition: flowing skirt is slitted: decide yes.
Definition: flowing skirt is white themed: decide yes.
Definition: flowing skirt is potentially erection concealing: decide yes. [non-tight skirts conceal erections]

full zip skirt is a skirt. Figure of full zip skirt is the file "Items/Clothes/Lower/Skirts/skirt3.png". The printed name of full zip skirt is "[clothing-title-before]full zip white skirt[clothing-title-after]". The text-shortcut of full zip skirt is "fzs". Understand "white" as full zip skirt. full zip skirt is zippable. full zip skirt is leather.

To decide which figure-name is clothing-image of (C - full zip skirt):
	decide on figure of full zip skirt.

To say ClothingDesc of (C - full zip skirt):
	say "This tight skirt has a zip that goes diagonally along the entire fabric of the skirt to allow it to be easily removed.".

To compute SelfExamineDesc of (Y - full zip skirt):
	say "Strips of white skirt flow from your waist, exposing some thigh.".

To say ShortDesc of (Y - full zip skirt):
	say "full zip white skirt".

Definition: full zip skirt is displacable: decide no.
Definition: full zip skirt is white themed: decide yes.

To decide which number is the initial outrage of (C - full zip skirt):
	decide on 2.

To decide which number is the adult-influence of (C - full zip skirt):
	decide on 1.

gown-of-purity is a skirt. Figure of Gown of Purity is the file "Items/Clothes/Lower/Skirts/gown1.png". gown-of-purity is purity. gown-of-purity is silk. gown-of-purity is unique. The printed name of gown-of-purity is "[clothing-title-before]gown of purity[clothing-title-after]". The text-shortcut of gown-of-purity is "gop". Understand "gown", "gown of", "purity" as gown-of-purity.

To decide which figure-name is clothing-image of (C - gown-of-purity):
	decide on figure of gown of purity.

To say ClothingDesc of (C - gown-of-purity):
	say "Calling this item of clothing a gown is a bit of a misnomer, since it does not cover one's torso. Instead the fabric of the gown hangs down from an ornate belt, providing modesty for your legs from anyone looking at you from the side or back, but not the front. The fabric is a brilliant white which shines with an almost impossible brightness, as if it had its own light source. In this way it seems to represent an unlikely harmony of purity and exhibitionism";
	if C is worn, say "[if sword-of-purity is worn]. [bold type]You can feel its power resonating with your [sword-of-purity], [roman type]increasing its power[end if][if sword-of-purity is worn and asshole is not at least partially exposed], making up for the fact that it conceals your [asshole] from view[end if].";
	otherwise say ".".

To compute SelfExamineDesc of (Y - gown-of-purity):
	say "Pure white fabric flows down the sides of your legs from a belt, concealing nothing useful at all. ".

To say ShortDesc of (Y - gown-of-purity):
	say "belt".
To say MediumDesc of (Y - gown-of-purity):
	say "bright white flowing belt".

To compute virginity-loss of (H - gown-of-purity):
	say "As the [H] falls from your [ShortDesc of hips], you feel [if the virgin bonus of the player < 0]some more of [end if]your determination ripped from you.";
	decrease the virgin bonus of the player by 1;
	now H is in the location of the player.

To compute class set up of (C - gown-of-purity):
	now C is dexterity-influencing.

To say ClassSummonFlav of (C - gown-of-purity):
	say "A belt suddenly latches around you with a dull *clang*. Two strips of pure white fabric hang from the sides.".

To decide which number is the humiliation-influence of (O - gown-of-purity):
	let B be 1;
	increase B by the magic-modifier of O;
	decide on B.

Definition: gown-of-purity is transformation-protected: decide yes.
Definition: gown-of-purity is white themed: decide yes.
Definition: gown-of-purity is layer-concealing: decide no.
Definition: gown-of-purity is potentially vagina covering: decide no.
Definition: gown-of-purity is potentially at least partially vagina covering: decide no.

To decide which number is the initial outrage of (C - gown-of-purity):
	decide on 2.

Definition: gown-of-purity is slitted: decide yes.

avatar-silks is a skirt. avatar-silks is purity. avatar-silks is silk. avatar-silks is unique. The printed name of avatar-silks is "[clothing-title-before]avatar silks[clothing-title-after]". The text-shortcut of avatar-silks is "aop". Understand "avatar", "silks" as avatar-silks.

To say ClassSummonFlav of (C - avatar-silks):
	say "You feel a slight pressure in your chest as your master's presence shifts around inside you, and [bold type]several strips of black silk materialise around your waist![roman type][line break][first custom style]'Keep and wear this holy garment, [NameBimbo]. It will help your vessel adapt.'[roman type][line break]".

Figure of avatar silks is the file "Items/Clothes/Lower/Skirts/silks.png".

To decide which figure-name is clothing-image of (C - avatar-silks):
	decide on figure of gown of purity.

To say ClothingDesc of (C - avatar-silks):
	say "This garment is made up of a gold and black waist band with several sheets of long, silky fabric attached. Each piece of fabric is transparent, but darkly coloured enough to barely conceal details behind it. The nature of the garment [if C is worn]exposes some of your[otherwise]would expose the wearer's[end if] thighs and help make movement easy.".

To compute SelfExamineDesc of (Y - avatar-silks):
	say "Strips of black silk hang from your waist, exposing some thigh.".

To say ShortDesc of (Y - avatar-silks):
	say "flowing black silks".

To decide which number is the initial outrage of (C - avatar-silks):
	decide on 2.
Definition: avatar-silks is slitted: decide yes.
Definition: avatar-silks is black themed: decide yes.
Definition: avatar-silks is potentially erection concealing: decide yes. [non-tight skirts conceal erections]

To decide which number is the humiliation-influence of (O - avatar-silks):
	let B be 2;
	increase B by the magic-modifier of O;
	decide on B.

black-rubber-hobble-skirt is a skirt. Printed name of black-rubber-hobble-skirt is "[clothing-title-before]tight black latex skirt[clothing-title-after]". The text-shortcut of black-rubber-hobble-skirt is "tbls". black-rubber-hobble-skirt is latex. black-rubber-hobble-skirt is hobble-skirted. black-rubber-hobble-skirt is crotch-skirted. Understand "tight" as black-rubber-hobble-skirt.

Figure of black-rubber-hobble-skirt is the file "Items/Clothes/Lower/Skirts/Latex/latexhobbleskirt2.png".

To decide which figure-name is clothing-image of (C - black-rubber-hobble-skirt):
	decide on figure of black-rubber-hobble-skirt.

To say ClothingDesc of (C - black-rubber-hobble-skirt):
	say "This knee-length shiny black latex skirt clings extremely tightly to your thighs, making it very challenging to move around freely.".

To say ShortDesc of (C - black-rubber-hobble-skirt):
	say "tight skirt".
To say MediumDesc of (C - black-rubber-hobble-skirt):
	say "tight black latex skirt".

To decide which number is the initial outrage of (C - black-rubber-hobble-skirt):
	decide on 3.

Definition: black-rubber-hobble-skirt is black themed: decide yes.

To restock (C - black-rubber-hobble-skirt):
	do nothing.

To set up influence of (C - black-rubber-hobble-skirt):
	do nothing.

blue rubber hobble skirt is a skirt. Printed name of blue rubber hobble skirt is "[clothing-title-before]blue latex hobble skirt[clothing-title-after]". The text-shortcut of blue rubber hobble skirt is "lxhs". blue rubber hobble skirt is latex. blue rubber hobble skirt is hobble-skirted. blue rubber hobble skirt is crotch-skirted.

Figure of blue rubber hobble skirt is the file "Items/Clothes/Lower/Skirts/Latex/latexhobbleskirt1.png".

To decide which figure-name is clothing-image of (C - blue rubber hobble skirt):
	decide on figure of blue rubber hobble skirt.

To say ClothingDesc of (C - blue rubber hobble skirt):
	say "This ankle length metallic blue latex skirt clings tightly to your thighs, making it very challenging to move around freely.".

To say ShortDesc of (C - blue rubber hobble skirt):
	say "latex hobble skirt".

To decide which number is the initial outrage of (C - blue rubber hobble skirt):
	decide on 4.

Definition: blue rubber hobble skirt is blue themed: decide yes.

To restock (C - blue rubber hobble skirt):
	do nothing.

To set up influence of (C - blue rubber hobble skirt):
	do nothing.

A rubber-skirt is a kind of skirt. A rubber-skirt is usually latex.
Definition: a rubber-skirt is black themed: decide yes.

To say ShortDesc of (Y - a rubber-skirt):
	say "shiny latex skirt".

Part 1 - Longer Rubber Skirt

A longer rubber skirt is a kind of rubber-skirt.

There is 1 longer rubber skirt. Printed name of longer rubber skirt is "[clothing-title-before]latex skirt[clothing-title-after]". The text-shortcut of longer rubber skirt is "ls". Figure of longer rubber skirt is the file "Items/Clothes/Lower/Skirts/Latex/latexskirt1.png".

To decide which figure-name is clothing-image of (C - a longer rubber skirt):
	decide on figure of longer rubber skirt.

To say ClothingDesc of (C - a longer rubber skirt):
	say "This tight knee length black skirt is made entirely of latex, which makes it cling even tighter to your body.".

To decide which number is the initial outrage of (C - a longer rubber skirt):
	decide on 3.

To decide which object is the unique-upgrade-target of (C - a longer rubber skirt):
	decide on a random off-stage shorter-rubber-skirt.

Part 2 - Shorter Rubber Skirt

A shorter-rubber-skirt is a kind of rubber-skirt. A shorter-rubber-skirt is usually short. A shorter-rubber-skirt is usually transformation-rare. Understand "short" as shorter-rubber-skirt.

To decide which number is the initial outrage of (C - a shorter-rubber-skirt):
	decide on 4.

A black rubber skirt is a kind of shorter-rubber-skirt. There is 1 black rubber skirt. Figure of black rubber skirt is the file "Items/Clothes/Lower/Skirts/Latex/latexskirt2.png". Printed name of black rubber skirt is "[clothing-title-before]short black latex skirt[clothing-title-after]". The text-shortcut of black rubber skirt is "sbs".

To decide which figure-name is clothing-image of (C - a black rubber skirt):
	decide on figure of black rubber skirt.

To say ClothingDesc of (C - a black rubber skirt):
	say "This short black skirt is made entirely of latex, but is wide and flowing, making it dangerous to wear with nothing else underneath.".

Part 3 - Pink Rubber Miniskirt

A pink rubber miniskirt is a kind of shorter-rubber-skirt. There is 1 latex pink rubber miniskirt. Printed name of pink rubber miniskirt is "[clothing-title-before]pink latex miniskirt[clothing-title-after]". The text-shortcut of pink rubber miniskirt is "prm". Figure of pink rubber miniskirt is the file "Items/Clothes/Lower/Skirts/Latex/latexminiskirt1.png".

To decide which figure-name is clothing-image of (C - a pink rubber miniskirt):
	decide on figure of pink rubber miniskirt.

To say ClothingDesc of (C - a pink rubber miniskirt):
	say "This short pink skirt is made entirely of latex, including the belt that sits loosely at the waist.".

To say ShortDesc of (Y - a pink rubber miniskirt):
	say "pink latex miniskirt".

Definition: a pink rubber miniskirt is pink themed: decide yes.
Definition: a pink rubber miniskirt is black themed: decide no.

A microskirt is a kind of skirt. A microskirt is usually super-short. A microskirt is usually transformation-rare.

Understand "micro" as a microskirt.

A red microskirt is a kind of microskirt. There is 1 latex red microskirt. Printed name of red microskirt is "[clothing-title-before]red latex microskirt[clothing-title-after]". Figure of red microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt1.png". The text-shortcut of red microskirt is "rms".
Definition: a red microskirt is red themed: decide yes.
A white microskirt is a kind of microskirt. There is 1 latex white microskirt. Printed name of white microskirt is "[clothing-title-before]white latex microskirt[clothing-title-after]". Figure of white microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt5.png". The text-shortcut of white microskirt is "wms".
Definition: a white microskirt is white themed: decide yes.
A tartan microskirt is a kind of microskirt.
Definition: a tartan microskirt is class-relevant:
	if the class of the player is schoolgirl and the player is not pigtailed, decide yes;
	decide no.
Definition: a tartan microskirt is tartan themed: decide yes.
brown tartan microskirt is a tartan microskirt. The printed name of brown tartan microskirt is "[clothing-title-before]brown tartan microskirt[clothing-title-after]". The text-shortcut of brown tartan microskirt is "btms". Figure of brown tartan microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt2.png".
Definition: brown tartan microskirt is brown themed: decide yes.
orange tartan microskirt is a tartan microskirt. The printed name of orange tartan microskirt is "[clothing-title-before]orange tartan microskirt[clothing-title-after]". The text-shortcut of orange tartan microskirt is "otms". Figure of orange tartan microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt7.png".
Definition: orange tartan microskirt is orange themed: decide yes.
A pink microskirt is a kind of microskirt. There is 1 pink microskirt. Printed name of pink microskirt is "[clothing-title-before]pink microskirt[clothing-title-after]". The text-shortcut of pink microskirt is "pms". Figure of pink microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt3.png".
Definition: a pink microskirt is tartan themed: decide yes.
Definition: a pink microskirt is pink themed: decide yes.
A black sporty microskirt is a kind of microskirt. A black sporty microskirt is usually plentiful. There is 1 black sporty microskirt. A black sporty microskirt is usually nylon. Printed name of black sporty microskirt is "[clothing-title-before]black sporty microskirt[clothing-title-after]". The text-shortcut of black sporty microskirt is "bms". Figure of black sporty microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt4.png".
Definition: a black sporty microskirt is exercise themed: decide yes.
Definition: a black sporty microskirt is black themed: decide yes.
A babydoll microskirt is a kind of microskirt. There is 1 babydoll microskirt. A babydoll microskirt is usually mesh. A babydoll microskirt is sheer. The printed name of babydoll microskirt is "[clothing-title-before]babydoll microskirt[clothing-title-after]". The text-shortcut of babydoll microskirt is "bdm". Figure of babydoll microskirt is the file "Items/Clothes/Lower/Skirts/Micro/microskirt6.png".
Definition: a babydoll microskirt is sissifying: decide yes.
Definition: a babydoll microskirt is pink themed: decide yes.

To decide which figure-name is clothing-image of (C - a red microskirt):
	decide on figure of red microskirt.
To say ClothingDesc of (C - a red microskirt):
	say "This red latex skirt is only crotch high. [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a white microskirt):
	decide on figure of white microskirt.
To say ClothingDesc of (C - a white microskirt):
	say "This white latex skirt is only crotch high. [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - brown tartan microskirt):
	decide on figure of brown tartan microskirt.
To decide which figure-name is clothing-image of (C - orange tartan microskirt):
	decide on figure of orange tartan microskirt.
To say ClothingDesc of (C - a tartan microskirt):
	say "This tartan skirt is only crotch high. [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a pink microskirt):
	decide on figure of pink microskirt.
To say ClothingDesc of (C - a pink microskirt):
	say "This pink skirt is only crotch high. [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a black sporty microskirt):
	decide on figure of black sporty microskirt.
To say ClothingDesc of (C - a black sporty microskirt):
	say "This black lycra skirt is only crotch high. It has pink stripes which make it appear sporty.".
To decide which figure-name is clothing-image of (C - a babydoll microskirt):
	decide on figure of babydoll microskirt.
To say ClothingDesc of (C - a babydoll microskirt):
	say "This pink frilly skirt is extremely delicate and sheer. But that doesn't even matter because it is only crotch high!".

To decide which number is the dexterity-influence of (C - a black sporty microskirt):
	decide on 2 + the magic-modifier of C.

To set up influence of (C - a microskirt):
	set up stat-based influence of C.

To compute SelfExamineDesc of (Y - a microskirt):
	if the player is prone:
		say "You are sporting a tiny [ShortDesc of Y] around your waist that completely fails to cover your ass or crotch, especially while you are on your knees with your ass in the air. ";
	otherwise:
		say "You are sporting a tiny [ShortDesc of Y] around your waist that almost completely fails to cover your ass, even though you're standing up straight. ".

To say ShortDesc of (Y - a microskirt):
	say "tiny [clothing-material of Y] microskirt".
To say ShortDesc of (Y - a black sporty microskirt):
	say "tiny black lycra microskirt".

To decide which number is the initial outrage of (C - a microskirt):
	if C is latex, decide on 5;
	decide on 3. [It's not really the skirt that's outrageous, it's more what it's failing to conceal]

Definition: a microskirt is end of transformation chain: decide yes.

A lace miniskirt is a kind of miniskirt. There is 1 mesh lace miniskirt. A lace miniskirt is transformation-rare. Printed name of lace miniskirt is "[clothing-title-before]sheer miniskirt[clothing-title-after]". The text-shortcut of lace miniskirt is "sms". Figure of lace miniskirt is the file "Items/Clothes/Lower/Skirts/Mini/miniskirt1.png". Understand "sheer" as lace miniskirt.

To decide which figure-name is the clothing-image of (C - a lace miniskirt):
	decide on figure of lace miniskirt.

To say ClothingDesc of (C - a lace miniskirt):
	say "This tiny black skirt is lacy and partly transparent, the only times you'd see someone wearing this is as part of a slutty Halloween costume or privately in the bedroom.".

Definition: a lace miniskirt is black themed: decide yes.

To say ShortDesc of (Y - a miniskirt):
	say "small miniskirt".

tartan miniskirt is a miniskirt. tartan miniskirt is unique. Printed name of tartan miniskirt is "[clothing-title-before]tartan miniskirt[clothing-title-after]". The text-shortcut of tartan miniskirt is "tm". Figure of tartan miniskirt is the file "Items/Clothes/Lower/Skirts/Mini/miniskirt2.png".

Definition: tartan miniskirt is class-relevant:
	if the class of the player is schoolgirl and the player is not pigtailed, decide yes;
	decide no.

To compute class set up of (C - tartan miniskirt):
	now C is intelligence-influencing;
	now the raw-magic-modifier of C is 1.

To decide which figure-name is the clothing-image of (C - tartan miniskirt):
	decide on figure of tartan miniskirt.

To say ClothingDesc of (C - tartan miniskirt):
	say "This tiny apricot skirt is has a tartan pattern, you could imagine a skirt four times the length being part of a school uniform but this version is clearly never acceptable attire. It barely covers your crotch, and even bending over slightly would reveal everything to anyone behind you. It sits very low on your hips, so doesn't even completely cover up most underwear, even when you're standing.".

To decide which number is the initial outrage of (C - a miniskirt):
	decide on 2.

To decide which object is the unique-upgrade-target of (C - tartan miniskirt):
	decide on orange tartan microskirt.

Definition: tartan miniskirt is tartan themed: decide yes.
Definition: tartan miniskirt is orange themed: decide yes.
Definition: tartan miniskirt is layer-concealing: decide no.
Definition: tartan miniskirt is partially-layer-concealing: decide yes.

naughty-skirt is a skirt. naughty-skirt is leather. naughty-skirt is transformation-rare. naughty-skirt is butt-windowed.

Printed name of naughty-skirt is "[clothing-title-before]naughty leather skirt[clothing-title-after]". The text-shortcut of naughty-skirt is "nls". Figure of naughty skirt is the file "Items/Clothes/Lower/Skirts/naughtyskirt1.jpg".

To decide which figure-name is clothing-image of (C - naughty-skirt):
	decide on figure of naughty skirt.

To say ClothingDesc of (C - naughty-skirt):
	say "This tight knee length black skirt has a deep groove at the top with laces, which shows off [if diaper quest is 1]what underwear or incontinence aid the wearer has on[otherwise]lots of butt cleavage, and even the wearer's crotch[end if].".

To say ShortDesc of (Y - naughty-skirt):
	say "assless leather skirt".

To say MediumDesc of (Y - naughty-skirt):
	say "butt cheek exposing leather skirt".

To decide which number is the initial outrage of (C - naughty-skirt):
	decide on 6.

Definition: naughty-skirt is black themed: decide yes.
Definition: naughty-skirt is potentially vagina covering: decide no. [ass window is so big, even the vag is exposed]
Definition: naughty-skirt is potentially asshole covering: decide no.
Definition: naughty-skirt is potentially-bottom-layer-concealing: decide no. [partially exposing]

office skirt is a skirt. Printed name of office skirt is "[clothing-title-before]office skirt[clothing-title-after]". The text-shortcut of office skirt is "os". office skirt is nylon. office skirt is hobble-skirted. office skirt is crotch-skirted.

Figure of office skirt is the file "Items/Clothes/Lower/Skirts/officeskirt1.png".

To decide which figure-name is clothing-image of (C - office skirt):
	decide on figure of office skirt.

To say ClothingDesc of (C - office skirt):
	say "This ankle length skirt is made of form-fitting black fabric. It clings tightly to your thighs, making it very challenging to move around freely.".

To decide which number is the skirtLength of (C - office skirt):
	decide on 7.

To say ShortDesc of (C - office skirt):
	say "office skirt".

Definition: office skirt is black themed: decide yes.

To decide which number is the initial outrage of (C - office skirt):
	decide on 1.

To decide which number is the adult-influence of (C - office skirt):
	decide on 2.

To restock (C - office skirt):
	do nothing.

To set up influence of (C - office skirt):
	do nothing.

A punishment skirt is a kind of skirt. A punishment skirt is usually latex. A punishment skirt is usually hobble-skirted. A punishment skirt is usually crotch-skirted. A punishment skirt is transformation-rare. A punishment skirt is usually butt-windowed. A punishment skirt is usually crotch-assless.

To say ShortDesc of (Y - a punishment skirt):
	say "punishment skirt".

Definition: a punishment skirt is displacable: decide no.
Definition: a punishment skirt is black themed: decide yes.
To decide which number is the initial armour of (C - a punishment skirt):
	decide on 12.

To decide which number is the initial outrage of (C - a punishment skirt):
	if diaper quest is 1:
		if there is a worn diaper, decide on 0;
		decide on 4;
	decide on 8.

To decide which object is the unique-upgrade-target of (C - a punishment skirt):
	if the number of worn overdress is 0 and diaper quest is 0, decide on a random off-stage discovered varied hobble-skirted butt-windowed fetish appropriate overdress.

latex-backless-hobble-skirt is a punishment skirt. Printed name of latex-backless-hobble-skirt is "[clothing-title-before]latex backless hobble skirt[clothing-title-after]". The text-shortcut of latex-backless-hobble-skirt is "hs". Understand "backless", "hobble" as latex-backless-hobble-skirt.

Figure of latex-backless-hobble-skirt is the file "Items/Clothes/Lower/Skirts/punishmentskirt1.jpg".
To decide which figure-name is clothing-image of (C - latex-backless-hobble-skirt):
	decide on figure of latex-backless-hobble-skirt.

To say ClothingDesc of (C - latex-backless-hobble-skirt):
	say "This constricting ankle length black skirt is made entirely of latex, which just makes it cling even tighter to your body. Even worse, it has a huge circle cut out at the back to expose [if C is worn]your[otherwise]the wearer's[end if] [if there is a worn diaper or the diaper addiction of the player > 5]diaper[otherwise]backside[end if]. Permanently closed red straps at the back provide a bondage vibe.".

To say MediumDesc of (Y - latex-backless-hobble-skirt):
	say "tight black punishment skirt with butt window".

To set up magic attribute of (C - latex-backless-hobble-skirt):
	if a random number between 1 and 3 is 1, now C is stumbling.

Definition: latex-backless-hobble-skirt is end of transformation chain:
	if the unique-upgrade-target of it is nothing, decide yes;
	decide no.

assless skirt is a punishment skirt. Printed name of assless skirt is "[clothing-title-before]assless latex skirt[clothing-title-after]". The text-shortcut of assless skirt is "alxs". Figure of assless skirt is the file "Items/Clothes/Lower/Skirts/punishmentskirt2.jpg".

To decide which figure-name is clothing-image of (C - assless skirt):
	decide on figure of assless skirt.

To say ClothingDesc of (C - assless skirt):
	say "This tight knee length black skirt has nothing but four thin buckle straps at the back, completely exposing [if diaper quest is 1]what underwear or incontinence aid the wearer has on[otherwise]all of the wearer's butt[end if]. The straps make it impossible to move one's thighs very far apart.".

To say ShortDesc of (Y - assless skirt):
	say "assless skirt".

To say MediumDesc of (Y - assless skirt):
	say "assless latex skirt".


A sequins belt is a kind of skirt. A sequins belt is usually sheer. A sequins belt is short. Figure of sequins belt is the file "Items/Clothes/Lower/Waist/Belts/belt1.png". There is 1 transformation-rare plastic sequins belt. The printed name of sequins belt is "[clothing-title-before]sequins belt[clothing-title-after]". The text-shortcut of sequins belt is "seq".

To decide which figure-name is clothing-image of (C - a sequins belt):
	decide on figure of sequins belt.

To say ClothingDesc of (C - a sequins belt):
	say "This belt is made of several strands of sequins that hang freely in front of your crotch, held around your waist by a small black strap. It would appear to be completely pointless except for possibly providing the tiniest amount of modesty.".

To compute SelfExamineDesc of (Y - a sequins belt):
	say "Several strands of sequins hang in front of your crotch. ".

To say ShortDesc of (Y - a sequins belt):
	say "sequins belt".

To decide which number is the initial outrage of (C - a sequins belt):
	decide on 4.

To decide which number is the bartering value of (T - a sequins belt) for (M - a gladiator):
	decide on 2.

Definition: a sequins belt is gem themed: decide yes.

To set up influence of (C - a sequins belt):
	set up stat-based influence of C.

skirt-tray-vibrator is a skirt. skirt-tray-vibrator is unique. skirt-tray-vibrator is sure. skirt-tray-vibrator is identified.

Figure of skirt tray vibrator A is the file "Items/Clothes/Lower/Waist/Belts/trayvibrator1a.png".
Figure of skirt tray vibrator B is the file "Items/Clothes/Lower/Waist/Belts/trayvibrator1b.png".
Figure of skirt tray vibrator C is the file "Items/Clothes/Lower/Waist/Belts/trayvibrator1c.png".
Figure of skirt tray vibrator D is the file "Items/Clothes/Lower/Waist/Belts/trayvibrator1d.png".
Figure of skirt tray vibrator E is the file "Items/Clothes/Lower/Waist/Belts/trayvibrator1e.png".
Figure of diaper tray vibrator is the file "Items/Clothes/Lower/Waist/Belts/trayvibrator2.jpg".

To decide which figure-name is the clothing-image of (C - skirt-tray-vibrator):
	if diaper quest is 1, decide on figure of diaper tray vibrator;
	if the cakes-taken of C >= the max-cakes of C, decide on Figure of skirt tray vibrator E;
	if the cakes-taken of C > (the max-cakes of C * 2) / 3, decide on Figure of skirt tray vibrator D;
	if the cakes-taken of C > the max-cakes of C / 3, decide on Figure of skirt tray vibrator C;
	if the cakes-taken of C > 0, decide on Figure of skirt tray vibrator B;
	decide on Figure of skirt tray vibrator A.

The printed name of skirt-tray-vibrator is "[clothing-title-before][if item described is skirted]skirt with [end if]vibrating serving tray contraption[clothing-title-after]". The text-shortcut of skirt-tray-vibrator is "stv". Understand "with vibrating", "vibrating", "serving", "tray", "contraption" as skirt-tray-vibrator. skirt-tray-vibrator has a number called cakes-taken. skirt-tray-vibrator has a number called charge.

To say ShortDesc of (C - skirt-tray-vibrator):
	say "serving tray".

To say MediumDesc of (C - skirt-tray-vibrator):
	say "serving tray with hidden vibrator".

To decide which number is the max-cakes of (C - skirt-tray-vibrator):
	decide on 11.

To decide which number is the wornArmsRequired of (C - skirt-tray-vibrator):
	decide on 2.

To say skirtTrayVibratorPower:
	let N be the cakes-taken of skirt-tray-vibrator;
	say "[if N > 10] obscenely powerfully[otherwise if N > 8] extremely powerfully[otherwise if N > 6] very strongly[otherwise if N > 4] strongly[otherwise if N <= 2] weakly[end if]".

To say ClothingDesc of (C - skirt-tray-vibrator):
	let CR be the max-cakes of C - the cakes-taken of C;
	if diaper quest is 0, say "This purple skirt is connected to a serving tray with [if CR is 1]one small cupcake remaining[otherwise if CR < the max-cakes of C][CR] small cupcakes remaining[otherwise][CR] small cupcakes[end if] on it. A rigid metal pole at the rear of the serving tray goes through a discreet hole at the front of the skirt and to a vibrator. To wear the skirt, you [if C is not worn]would [end if]have to hold the serving tray in front of you and [if C is worn]keep[otherwise]put[end if] the [if the player is not possessing a penis]rabbit vibrator inside your [vagina][otherwise]vibrating tip up against your [ShortDesc of penis][end if][run paragraph on]";
	otherwise say "A red vibrator is connected via a small rigid pole to a serving tray with [if CR is 1]one small cupcake remaining[otherwise if CR < the max-cakes of C][CR] small cupcakes remaining[otherwise][CR] small cupcakes[end if] on it. [if the player is female]The pole goes through the hole in your diaper, so the vibrator is on the inside[otherwise]The tip of the pole is made of soft sex toy material and is attached to the front of your diaper[end if]. To wear the diaper, you have to continue to hold the serving tray in front of you and [if C is worn]keep[otherwise]put[end if] the [if the player is possessing a vagina]rabbit vibrator inside your [vagina][otherwise if the player is possessing a penis]vibrating tip up against your [ShortDesc of penis][end if][run paragraph on]";
	say "[if the cakes-taken of C >= the max-cakes of C or the charge of C > 0]. It is currently vibrating[skirtTrayVibratorPower]![otherwise].[end if]".

To decide which number is the stimulation of (D - skirt-tray-vibrator) on (B - a body part):
	decide on the cakes-taken of skirt-tray-vibrator.

Carry out wearing skirt-tray-vibrator:
	if diaper quest is 1, summon plain-largish-diaper uncursed;
	say "You [if diaper quest is 1]wear the diaper and [end if]push the vibrator [if the player is not possessing a penis]into your [vagina][otherwise]up against your [ShortDesc of penis][end if] and hold the tray with your hands either side.".

Carry out taking off skirt-tray-vibrator when diaper quest is 1:
	only destroy plain-largish-diaper.

Check taking off plain-largish-diaper when skirt-tray-vibrator is worn:
	try taking off skirt-tray-vibrator instead.

An all time based rule (this is the skirt tray vibrator rule):
	if the player is in a predicament room:
		if the player is in Predicament20:
			if skirt-tray-vibrator is held or skirt-tray-vibrator is in the location of the player, say "Now that you are safely inside, [NameDesc of skirt-tray-vibrator] fizzles from existence.";
			only destroy skirt-tray-vibrator;
		otherwise if the cakes-taken of skirt-tray-vibrator >= the max-cakes of skirt-tray-vibrator or the charge of skirt-tray-vibrator > 0:
			decrease the charge of skirt-tray-vibrator by 1;
			if skirt-tray-vibrator is worn:
				say "The hidden [if the player is not possessing a penis]rabbit vibrates[skirtTrayVibratorPower] inside your [vagina] and on your clit[otherwise]toy vibrates[skirtTrayVibratorPower] on your [player-penis][end if]!";
				stimulate vagina from skirt-tray-vibrator;
			if skirt-tray-vibrator is held or skirt-tray-vibrator is in the location of the player:
				if the charge of skirt-tray-vibrator <= 0 and the cakes-taken of skirt-tray-vibrator < the max-cakes of skirt-tray-vibrator, say "[bold type]The vibrator section of the [skirt-tray-vibrator] [bold type]stops vibrating, for now.[roman type][line break]".

This is the skirt tray prevents hand use rule:
	if skirt-tray-vibrator is worn:
		if manual hands attempt is 1, say "[variable custom style]I can't do that whilst holding onto the cupcake tray![roman type][line break]";
		rule fails.
The skirt tray prevents hand use rule is listed in the hands restriction rules.

To compute cupcake perception of (M - a bystander):
	say "[BigNameDesc of M] walks up to you and takes a cupcake. [CupcakeExplanation of M][skirtTrayBuzzFlav]";
	now the charge of skirt-tray-vibrator is 3;
	increase the cakes-taken of skirt-tray-vibrator by 1.

To say CupcakeExplanation of (M - a bystander):
	if diaper quest is 1:
		say "[one of][line break][speech style of M]'Oh, dressed like that, you must be advertising for Cosy Cribs and Cupcakes, right? That new combined nursery-and-cafe that's opening? Still, you're very brave to come out here like that. Some people might get the wrong idea...'[roman type][line break][or][or][line break][speech style of M]'Funny costume. Must be pretty embarrassing for you, though?'[roman type][line break][or][stopping]";
	otherwise if the appearance of the player > the outrage tolerance of M:
		say "[line break][one of][speech style of M]'Outrageous costume. But they look so tasty, I can't resist.'[roman type][line break][or][speech style of M]'I'm still taking one.'[roman type][line break][stopping]".

To say skirtTrayBuzzFlav:
	say "The vibrator [if the player is possessing a vagina]in your [vagina] and [end if][if the player is possessing a penis]pushed against your [ShortDesc of penis] [otherwise if the player is possessing a vagina]pushed against your clit [end if][if the charge of skirt-tray-vibrator <= 0]kicks into action, [otherwise]becomes even [end if]stronger than before! It buzzes away[skirtTrayVibratorPower].".

This is the orgasm drops cupcakes rule:
	if skirt-tray-vibrator is worn and the cakes-taken of skirt-tray-vibrator < the max-cakes of skirt-tray-vibrator:
		let D be ((a random number from 1 to 30) - the dexterity of the player) / 3;
		if D + the cakes-taken of skirt-tray-vibrator > the max-cakes of skirt-tray-vibrator, now D is the max-cakes of skirt-tray-vibrator - the cakes-taken of skirt-tray-vibrator;
		if D <= 0:
			say "Even though your body is shaking, you manage to keep the tray stable enough to avoid any more cupcakes falling off of their pressure pads.";
		otherwise:
			increase the cakes-taken of skirt-tray-vibrator by D;
			say "[bold type]Your whole body shakes, and you can't help but make the tray shake too![roman type] [if D is 1]Another cupcake falls off its pressure plate[otherwise][D] more cupcakes fall off their pressure plates[end if] and onto the ground. [skirtTrayBuzzFlav]";
			now the charge of skirt-tray-vibrator is 3.
The orgasm drops cupcakes rule is listed last in the orgasm fatigue effects rules.

To decide which object is the concealer of (C - skirt-tray-vibrator): decide on nothing.
To decide which object is the at least partial concealer of (C - skirt-tray-vibrator): decide on nothing.

grope-me-skirt is a skirt. grope-me-skirt is unique. grope-me-skirt is short. The printed name of grope-me-skirt is "[clothing-title-before]'PLEASE GROPE MY TITS' skirt[clothing-title-after]". The text-shortcut of grope-me-skirt is "gms". Figure of grope-me-skirt is the file "Items/Clothes/Lower/Skirts/gropemeskirt1.png". Understand "please", "grope", "my tits" as grope-me-skirt.
To decide which figure-name is clothing-image of (H - grope-me-skirt):
	decide on figure of grope-me-skirt.

To say ClothingDesc of (C - grope-me-skirt):
	say "This short purple tartan skirt has a sign pinned to the front that reads 'Please Grope My Tits'...".

To decide which number is the initial outrage of (C - grope-me-skirt):
	decide on 6.

open-front-skirt is a skirt. open-front-skirt is unique. The printed name of open-front-skirt is "[clothing-title-before]open front skirt[clothing-title-after]". The text-shortcut of open-front-skirt is "ofs". Understand "open", "front" as open-front-skirt.
Figure of open-front-skirt female is the file "Items/Clothes/Lower/Skirts/openfrontskirt1.jpg".
Figure of open-front-skirt male is the file "Items/Clothes/Lower/Skirts/openfrontskirt2.jpg".
Figure of open-front-skirt diaper is the file "Items/Clothes/Lower/Skirts/openfrontskirt3.jpg".
To decide which figure-name is clothing-image of (H - open-front-skirt):
	if there is a worn diaper, decide on figure of open-front-skirt diaper;
	if the player is possessing a penis, decide on figure of open-front-skirt male;
	decide on figure of open-front-skirt female.

To say MediumDesc of (C - open-front-skirt):
	say "front-exposing skirt".
To say ClothingDesc of (C - open-front-skirt):
	say "This denim skirt has a large chunk missing from the front. The only way to cover it up would be to push the front of your body into another person's...".

Definition: open-front-skirt is layer-concealing:
	if girlfriend-partner is snogged, decide yes;
	decide no.
Definition: open-front-skirt is skirt-covering-crotch:
	if girlfriend-partner is snogged, decide yes;
	decide no.
Definition: open-front-skirt is potentially penis covering:
	if girlfriend-partner is snogged, decide yes;
	decide no.
Definition: open-front-skirt is potentially at least partially penis concealing:
	if girlfriend-partner is snogged, decide yes;
	decide no.
Definition: open-front-skirt is potentially erection concealing:
	if girlfriend-partner is snogged, decide yes;
	decide no.

sheer-open-front-skirt is a skirt. sheer-open-front-skirt is unique. sheer-open-front-skirt is sheer. The printed name of sheer-open-front-skirt is "[clothing-title-before]sheer open front skirt[clothing-title-after]". The text-shortcut of sheer-open-front-skirt is "sofs". Understand "sheer", "open", "front" as sheer-open-front-skirt.
Figure of sheer-open-front-skirt is the file "Items/Clothes/Lower/Skirts/openfrontskirt4.png".
To decide which figure-name is clothing-image of (H - sheer-open-front-skirt):
	decide on figure of sheer-open-front-skirt.

To compute class set up of (C - sheer-open-front-skirt):
	now C is cursed.

Definition: sheer-open-front-skirt is class-relevant:
	if the class of the player is bride, decide yes;
	decide no.

To say MediumDesc of (C - sheer-open-front-skirt):
	say "sheer front-exposing skirt".
To say ClothingDesc of (C - sheer-open-front-skirt):
	say "This long but flimsy skirt is mostly sheer, and even worse has a large chunk missing from the front, to completely expose the wearer's crotch. A gold buckle at the centre of the waistband looks like a penis and is pointing towards the wearer's genitals[if C is worn]. You can sense it significantly increasing the chances of aggressors deciding to use your [vagina][end if].".

Definition: sheer-open-front-skirt is skirt-covering-crotch: decide no.
Definition: sheer-open-front-skirt is potentially penis covering: decide no.
Definition: sheer-open-front-skirt is potentially at least partially penis concealing: decide no.
Definition: sheer-open-front-skirt is potentially erection concealing: decide no.
Definition: sheer-open-front-skirt is potentially at least partially asshole covering: [can't cover much but it does partially cover the butthole]
	if it is crotch-displaced, decide no;
	decide yes.
Definition: sheer-open-front-skirt is penis themed: decide yes.
Definition: sheer-open-front-skirt is slitted: decide yes.
This is the sheer-open-front-skirt pussy slut rule:
	if sheer-open-front-skirt is worn, increase the desirability of vagina by 9.
The sheer-open-front-skirt pussy slut rule is listed in the pussy slut eligibility rules.

window-skirt is a skirt. window-skirt is unique. window-skirt is latex. window-skirt is sheer. The printed name of window-skirt is "[clothing-title-before]fetish window skirt[clothing-title-after]". The text-shortcut of window-skirt is "fwsk". Understand "fetish", "window" as window-skirt.
Figure of window-skirt is the file "Items/Clothes/Lower/Skirts/Latex/latexskirt3.png".
To decide which figure-name is clothing-image of (H - window-skirt):
	decide on figure of window-skirt.

To say MediumDesc of (C - window-skirt):
	say "latex fetish window skirt".
To say ClothingDesc of (C - window-skirt):
	say "A black latex skirt, with a patterned sheer window section in the middle, to somewhat expose your crotch and butt.".

flight-attendant-skirt is a skirt. flight-attendant-skirt is unique. flight-attendant-skirt is nylon. flight-attendant-skirt is short. The printed name of flight-attendant-skirt is "[clothing-title-before]flight attendant skirt[clothing-title-after]". The text-shortcut of flight-attendant-skirt is "fas". Understand "flight", "attendant" as flight-attendant-skirt.
Figure of flight-attendant-skirt is the file "Items/Clothes/Lower/Skirts/flightattendant1.png".
To decide which figure-name is clothing-image of (H - flight-attendant-skirt):
	decide on figure of flight-attendant-skirt.

Definition: flight-attendant-skirt is class-relevant:
	if the class of the player is flight attendant, decide yes;
	decide no.

Definition: flight-attendant-skirt is layer-concealing: decide no.
Definition: flight-attendant-skirt is partially-layer-concealing: decide yes.
Definition: flight-attendant-skirt is blue themed: decide yes.
Definition: flight-attendant-skirt is inflation themed: decide yes.

To say MediumDesc of (C - flight-attendant-skirt):
	say "flight attendant's skirt".
To say ClothingDesc of (C - flight-attendant-skirt):
	say "A short blue flight attendant's skirt, with yellow laces all the way down at each side, exposing some hip. Its magical power will allow the wearer to knee and kick enemies without suffering any damage penalties from being almost weightless.".


queen-of-spades-skirt is a skirt. queen-of-spades-skirt is unique. queen-of-spades-skirt is silk. queen-of-spades-skirt is short. The printed name of queen-of-spades-skirt is "[clothing-title-before]queen of spades skirt[clothing-title-after]". The text-shortcut of queen-of-spades-skirt is "qss". Understand "queen", "of spades", "spades" as queen-of-spades-skirt.
Figure of queen-of-spades-skirt is the file "Items/Clothes/Lower/Skirts/queenofspades1.png".
To decide which figure-name is clothing-image of (H - queen-of-spades-skirt):
	decide on figure of queen-of-spades-skirt.

Definition: queen-of-spades-skirt is class-relevant:
	if the class of the player is princess, decide yes;
	decide no.

Definition: queen-of-spades-skirt is black themed: decide yes.
Definition: queen-of-spades-skirt is white themed: decide yes.
Definition: queen-of-spades-skirt is royalty themed: decide yes.
Definition: queen-of-spades-skirt is playing card themed: decide yes.
Definition: queen-of-spades-skirt is interracial themed: decide yes.

Definition: queen-of-spades-skirt is layer-concealing: decide no.
Definition: queen-of-spades-skirt is partially-layer-concealing: decide yes.
Definition: queen-of-spades-skirt is potentially vagina covering: decide no. [Only partially vagina and layer concealing]

To say MediumDesc of (C - queen-of-spades-skirt):
	say "queen of spades skirt".
To say ClothingDesc of (C - queen-of-spades-skirt):
	say "A frilly black and white skirt that is so short that the slightest flutter exposes everything. It has a big black spade in the middle, signifying a love of [BlackCock].".

To compute class set up of (C - queen-of-spades-skirt):
	now C is temptation;
	now C is luck-influencing;
	now the raw-magic-modifier of C is 3.

milkmaid-apron-skirt is a skirt. milkmaid-apron-skirt is unique. milkmaid-apron-skirt is polyester. milkmaid-apron-skirt is knee-length. The printed name of milkmaid-apron-skirt is "[clothing-title-before]milkmaid apron skirt[clothing-title-after]". The text-shortcut of milkmaid-apron-skirt is "mmas". Understand "milkmaid", "apron" as milkmaid-apron-skirt.
Figure of milkmaid-apron-skirt is the file "Items/Clothes/Lower/Skirts/apron1.png".
To decide which figure-name is clothing-image of (H - milkmaid-apron-skirt):
	decide on figure of milkmaid-apron-skirt.

Definition: milkmaid-apron-skirt is class-relevant:
	if the class of the player is maid or the class of the player is cowgirl, decide yes;
	decide no.

Definition: milkmaid-apron-skirt is black themed: decide yes.
Definition: milkmaid-apron-skirt is white themed: decide yes.
Definition: milkmaid-apron-skirt is cow themed: decide yes.

To say MediumDesc of (C - milkmaid-apron-skirt):
	say "milkmaid apron skirt".
To say ClothingDesc of (C - milkmaid-apron-skirt):
	say "A long frilly black and white cow print skirt with a maid waitress's apron sewn onto the front.".

To compute class set up of (C - milkmaid-apron-skirt):
	now C is absorption;
	now C is titfuck-addiction-influencing;
	now the raw-magic-modifier of C is 2.

All Skirts ends here.
