Bunny Ears DQ by Headgear begins here.

A bunny ears is a kind of headgear. Understand "pair", "of" as bunny ears. A bunny ears is usually dexterity-influencing.

Definition: a bunny ears is transformation-protected: decide no.

Part 1 - Bunny Waitress Ears

bunny waitress ears is a bunny ears. bunny waitress ears has a number called service-ready.

To decide which number is the waitress bartering value of (T - a bottle) for (M - a monster):
	decide on 0.
To compute waitress resolution of (M - a monster) taking (T - a bottle):
	do nothing.
To compute service spill punishment:
	do nothing.

bunny-waitress-quest is a headgear-clothing-quest.

serving-bondage is a kind of bondage.
serving table is a serving-bondage.
serving tray is a serving-bondage.

Part 2 - Rubber Bunny Ears

rubber bunny ears is a bunny ears.

egg-holding-quest is a headgear-clothing-quest.

Part 3 - Bunny Hat

bunny hat is a kind of bunny ears. a bunny hat is wool. a bunny hat has a number called charge.

bunny-summoned is a number that varies.
To compute unique recycling of (C - a bunny hat):
	now the eggs-eaten of egg-eating-quest is 0;
	now bunny-summoned is 0.

black bunny hat is a bunny hat. The printed name of black bunny hat is "[clothing-title-before]black bunny hat[clothing-title-after]". The text-shortcut of black bunny hat is "bbh".
Definition: black bunny hat is black themed: decide yes.
white-bunny-hat is a bunny hat. The printed name of white-bunny-hat is "[clothing-title-before]white bunny hat[clothing-title-after]". The text-shortcut of white-bunny-hat is "wbh". Understand "white", "bunny", "hat" as white-bunny-hat.
Definition: white-bunny-hat is white themed: decide yes.
brown bunny hat is a bunny hat. The printed name of brown bunny hat is "[clothing-title-before]brown bunny hat[clothing-title-after]". The text-shortcut of brown bunny hat is "brbh".
Definition: brown bunny hat is brown themed: decide yes.

To decide which number is the initial cringe of (C - a bunny hat):
	decide on 3.

To decide which number is the initial cringe of (C - white-bunny-hat):
	decide on 4.

To decide which number is the initial cringe of (C - brown bunny hat):
	decide on 7.

To decide which object is the unique-upgrade-target of (C - black bunny hat):
	decide on a random off-stage white-bunny-hat.

To decide which object is the unique-upgrade-target of (C - white-bunny-hat):
	decide on a random off-stage brown bunny hat.

Figure of black bunny hat is the file "Items/Accessories/Head/bunnyhat1.png".
Figure of white bunny hat is the file "Items/Accessories/Head/bunnyhat2.png".
Figure of brown bunny hat is the file "Items/Accessories/Head/bunnyhat3.png".

To decide which figure-name is the clothing-image of (C - black bunny hat):
	decide on figure of black bunny hat.

To decide which figure-name is the clothing-image of (C - white-bunny-hat):
	decide on figure of white bunny hat.

To decide which figure-name is the clothing-image of (C - brown bunny hat):
	decide on figure of brown bunny hat.

To say ClothingDesc of (H - black bunny hat):
	say "A black woollen hat with pink bunny ears on top.".

To say ClothingDesc of (H - white-bunny-hat):
	say "A white woollen hat with pink bunny ears on top and a pink bow at the side.".

Definition: white-bunny-hat is bow themed: decide yes.

To say ClothingDesc of (H - brown bunny hat):
	say "A brown woollen hat with floppy bunny ears at the side and a cute bunny face on the front.".

To say ShortDesc of (H - a bunny hat):
	say "bunny hat".

To compute SelfExamineDesc of (H - a bunny hat):
	let X be the largeness of hair;
	say "You are wearing a bunny hat on top of your [ShortDesc of hair]. ".

To compute class outfit of (H - a bunny hat):
	let B be a random off-stage dq bunny outfit;
	let S be a random off-stage bunny booties;
	if B is actually summonable or (B is bunny outfit and bunny-summoned is 0 and the number of worn bunny outfit is 0):
		if bunny-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn skirt clashing clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn trousers:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]You feel your bunny hat twitch as if the ears were real, and then a [ShortDesc of B] appears on you![roman type][line break]";
		summon B cursed;
		now the raw-magic-modifier of B is the number of worn diapers;
		if bunny-summoned is 0, now bunny-summoned is 1;
	otherwise if the class of the player is bunny and S is actually summonable:
		say "[bold type]You feel your bunny hat twitch as if the ears were real, and then a [ShortDesc of S] appears on your feet![roman type][line break]";
		summon S cursed;
		now the raw-magic-modifier of S is 2 - the number of held chocolate eggs.

To compute unique periodic effect of (C - a bunny hat):
	increase the charge of C by 1;
	if the charge of C > 23 and there is an off-stage chocolate egg:
		let E be a random off-stage chocolate egg;
		now the charge of C is 0;
		say "[bold type]Suddenly a [E] [bold type]appears in your hand![roman type][line break]Your [ShortDesc of C] loses some magic power and becomes a ";
		decrease the raw-magic-modifier of C by 2;
		say "[C].";
		now E is carried by the player.

Report TQeating chocolate egg:
	let H be a random worn bunny hat;
	if H is clothing:
		say "Your [H] shines brightly and turns into a ";
		increase the raw-magic-modifier of H by 2;
		say "[H]!";
	progress quest of egg-eating-quest.

Chapter - Quest

egg-eating-quest is a headgear-clothing-quest. egg-eating-quest has a number called eggs-eaten.

To uniquely set up (C - a bunny hat):
	now the quest of C is egg-eating-quest.

To say QuestFlav of (Q - egg-eating-quest):
	say "You sense it wants you to eat the food it gives you.".

To say QuestTitle of (Q - egg-eating-quest):
	say " (feeding quest)".

To progress quest of (Q - egg-eating-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			increase eggs-eaten of Q by 1;
			if eggs-eaten of Q > a random number between 2 and 5:
				compute quest completion of Q on C.

Part 4 - Bunny Glasses

bunny glasses is a bunny ears. bunny glasses is plastic.

Definition: bunny glasses is pink themed: decide yes.

bunny-glasses-summoned is a number that varies.
To compute unique recycling of (C - bunny glasses):
	now bunny-glasses-summoned is 0.

Figure of bunny glasses is the file "Items/Accessories/Head/bunnyears3.png".

The printed name of bunny glasses is "[clothing-title-before]bunny glasses[clothing-title-after]". The text-shortcut of bunny glasses is "bgl".

To decide which figure-name is the clothing-image of (C - bunny glasses):
	decide on figure of bunny glasses.

To say ClothingDesc of (H - bunny glasses):
	say "A pair of giant pink fake glasses with large pink bunny ears coming out the top and a bunny nose underneath. It looks very silly.".

To say ShortDesc of (H - bunny glasses):
	say "bunny glasses".

To compute class outfit of (H - bunny glasses):
	let B be a random off-stage bunny dress;
	let K be a random off-stage bunny socks;
	if B is actually summonable or (B is bunny outfit and bunny-glasses-summoned < 1 and the number of worn bunny dress is 0):
		if bunny-glasses-summoned < 1:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn skirt clashing clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]You feel your bunny hat twitch as if the ears were real, and then a [ShortDesc of B] appears on you![roman type][line break]";
		summon B;
		now the raw-magic-modifier of B is the number of worn diapers;
		if bunny-glasses-summoned < 1, now bunny-glasses-summoned is 1;
	otherwise if K is actually summonable or (K is clothing and bunny-glasses-summoned < 2):
		if bunny-glasses-summoned < 2:
			repeat with O running through worn leg covering clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn stockings:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]You feel your bunny hat twitch as if the ears were real, and then a [ShortDesc of K] appears on your feet![roman type][line break]";
		summon K;
		now the raw-magic-modifier of K is 1;
		now K is intelligence-influencing;
		if bunny-glasses-summoned < 2, now bunny-glasses-summoned is 2.

To compute SelfExamineDesc of (H - bunny glasses):
	say "You are wearing a pair of silly pink bunny glasses on your face. ".

Definition: bunny glasses (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is bunny outfit or wearing-target is bunny socks, decide yes;
	decide no.

Chapter - Quest

trap-braving-quest is a headgear-clothing-quest.

To uniquely set up (C - bunny glasses):
	now the quest of C is trap-braving-quest.

To say QuestFlav of (Q - trap-braving-quest):
	say "You sense it wants you to open a container that you know is trapped.".

To say QuestTitle of (Q - trap-braving-quest):
	say " (trap braving quest)".

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
		now D is carried by M.

Bunny Ears DQ ends here.
