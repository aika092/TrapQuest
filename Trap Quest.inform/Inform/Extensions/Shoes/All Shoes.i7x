All Shoes by Shoes begins here.

pom-pom-shoes is a shoes. pom-pom-shoes is unique. Understand "pom", "pom pom", "shoes" as pom-pom-shoes. The text-shortcut of pom-pom-shoes is "pps".

Figure of pom pom shoes is the file "Items/Clothes/Lower/Feet/pompom1.png".

To decide which figure-name is the clothing-image of (C - pom-pom-shoes):
	decide on figure of pom pom shoes.

To say ShoeType of (S - pom-pom-shoes):
	say "shoes".

To say UniqueShortDesc of (C - pom-pom-shoes):
	say "pom pom shoes".

Definition: pom-pom-shoes is white themed: decide yes.
Definition: pom-pom-shoes is orange themed: decide yes.
Definition: pom-pom-shoes is halloween themed: decide yes.
Definition: pom-pom-shoes is class-relevant:
	if the class of the player is trick-or-treater, decide yes;
	decide no.

To decide which number is the initial outrage of (C - pom-pom-shoes):
	decide on 0.
To decide which number is the initial cringe of (C - pom-pom-shoes):
	decide on 3.

To say ClothingDesc of (C - pom-pom-shoes):
	say "These white girly shoes have big black bows tying them up, and big orange pom poms above the toes.".


sneakers is a kind of shoes. A sneakers is manly. A sneakers is rare. Understand "sneakers" as sneakers.

Figure of sneakers is the file "Items/Clothes/Lower/Feet/sneakers2.png".

To decide which figure-name is the clothing-image of (C - sneakers):
	decide on figure of sneakers.

To say ShoeType of (S - a sneakers):
	say "sneakers".

To say UniqueShortDesc of (C - a sneakers):
	say "sneakers".

Definition: a sneakers is exercise themed: decide yes.

To decide which number is the initial outrage of (C - a sneakers):
	decide on 0.
To decide which number is the initial cringe of (C - a sneakers):
	decide on 1.

To say ClothingDesc of (C - a sneakers):
	say "A pair of sneakers[if the player is presenting as male]. Probably meant for women, but it's not super obvious[end if].".

grey-sneakers is a sneakers. The printed name of grey-sneakers is "[clothing-title-before]pair of grey sneakers[clothing-title-after]". The text-shortcut of grey-sneakers is "grs".

Definition: grey-sneakers is grey themed: decide yes.

Figure of grey-sneakers is the file "Items/Clothes/Lower/Feet/sneakers1.png".

To decide which figure-name is the clothing-image of (C - grey-sneakers):
	decide on figure of grey-sneakers.

A rollerskates is a kind of shoes. A rollerskates is transformation-rare. Understand "rollerskates", "skates" as rollerskates.

Definition: a rollerskates is same-type:
	if theme-share-target is rollerskates or theme-share-target is sneakers, decide yes;
	decide no.

To say ShoeType of (S - a rollerskates):
	say "rollerskates".

To say UniqueShortDesc of (C - a rollerskates):
	say "rollerskates".

Definition: a rollerskates is fluid immune: decide yes.
Definition: a rollerskates is exercise themed: decide yes.
Definition: a rollerskates is hindrance-enabling: decide yes.

To decide which number is the initial outrage of (C - a rollerskates):
	if diaper quest is 1, decide on 0;
	decide on 2.

To decide which number is the initial cringe of (C - a rollerskates):
	decide on 3.

To decide which number is the kick-bonus of (S - a rollerskates):
	decide on 3.

To decide which number is the hindrance of (C - a rollerskates):
	let X be 2;
	repeat with H running through clothing worn by the player:
		increase X by the hindrance-modifier of H;
	[Magic effects often impact on hindrance]
	decrease X by the magic-modifier of C;
	if X < 0, now X is 0;
	decide on X.

To say SteadinessDesc of (C - a rollerskates):
	if C is worn by the player and the player is upright:
		if the hindrance of C is 0:
			say "You feel completely balanced.";
		otherwise if the hindrance of C is 1:
			say "You feel only slightly at risk of slipping over.";
		otherwise if the hindrance of C is 2:
			say "You feel at risk of slipping over.";
		otherwise if the hindrance of C is 3:
			say "You feel there's quite a good chance of you slipping over.";
		otherwise if the hindrance of C < 6:
			say "You feel there's a very high chance of you slipping over.";
		otherwise:
			say "You feel there's an extremely high chance of you slipping over.";
		if the slipperiness of the location of the player > 0 and the hindrance of C > 0:
			say "The slipperiness of the floor certainly isn't helping!".

To compute SelfExamineDesc of (C - a rollerskates):
	if the player is upright:
		say "You are [if the player is ankle bound]somehow managing to roll along with[otherwise if the hindrance of C < 3]skating around in your[otherwise]managing to balance on a[end if] [ShortDesc of C]. ";
	otherwise:
		say "A [ShortDesc of C] are currently latched to your feet[if the player is ankle bound], and your ankles are bound close together making it difficult to crawl[end if]. ".

Report examining rollerskates:
	if newbie tips is 1, say "[one of][item style]Rollerskates [if the number of worn rollerskates is 0]would [end if]allow you to deal slightly higher amounts of damage with your kicks and increase your ability to move between rooms quickly (preventing others from getting to move twice when you do).[roman type][line break][or][stopping]".

To say MonsterOfferRejectFlav of (M - a demoness) to (T - a rollerskates):
	say "[speech style of M]'Heels should not have wheels!'[roman type][line break]".

Part - Double Move

double-moved is a number that varies.
[
After going when there are worn rollerskates:
	if the player is upright:
		increase double-moved by 1;
		let Z be a random number between 0 and (double-moved - 2);
		let X be a random number between 0 and 2;
		if debugmode > 0, say "[noun] is [unless the noun is N-viable]not [end if]N-viable; the room [noun] from [the location of the player] is [room noun from the location of the player].";
		if debuginfo > 1 and double-moved > 2 and the noun is N-viable and playerRegion is not woods, say "[input-style]Rollerstakes doublemove check: doublemove charge-up ([double-moved - 1]) -> d[double-moved - 1]-1 ([Z]) | ([X]) d3-1 doublemove threshold[roman type][line break]";
		if Z > X and the noun is N-viable and playerRegion is not woods:
			say "[bold type]You can't stop yourself[if the slipperiness of the location of the player > 0] on this slippery ground[end if]![roman type] You keep travelling towards the next room.";
			allocate 6 seconds;
			now double-moved is 0;
			let R be the location of the player;
			now R is discovered;
			try going the noun;
			if map images > 0, display entire map;
		otherwise:
			do important going resolution;
			try looking;
	otherwise:
		do important going resolution;
		try looking;
	if (the noun is up or the noun is down) and map images > 0, display entire map.
]

white-rollerskates is a rollerskates. The printed name of white-rollerskates is "[clothing-title-before]pair of white rollerskates[clothing-title-after]". The text-shortcut of white-rollerskates is "wrsk". Understand "white" as white-rollerskates.

Figure of white-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/skates1.png".

To decide which figure-name is the clothing-image of (C - white-rollerskates):
	decide on figure of white-rollerskates.

Definition: white-rollerskates is white themed: decide yes.
Definition: white-rollerskates is pink themed: decide yes.

To say ClothingDesc of (C - white-rollerskates):
	say "A pair of white rollerskates with pink wheels. [SteadinessDesc of C]".

red-rollerskates is a rollerskates. The printed name of red-rollerskates is "[clothing-title-before]pair of red rollerskates[clothing-title-after]". The text-shortcut of red-rollerskates is "rrsk". Understand "red" as red-rollerskates.

Figure of red-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/skates2.png".

To decide which figure-name is the clothing-image of (C - red-rollerskates):
	decide on figure of red-rollerskates.

red-rollerskates is manly. red-rollerskates is plentiful.
Definition: red-rollerskates is red themed: decide yes.
Definition: red-rollerskates is black themed: decide yes.
To decide which number is the initial outrage of (C - red-rollerskates):
	if diaper quest is 1, decide on 0;
	decide on 1.
To decide which number is the initial cringe of (C - red-rollerskates):
	decide on 2.

To say ClothingDesc of (C - red-rollerskates):
	say "A pair of red rollerskates with black wheels. [SteadinessDesc of C]".

pink-rollerskates is a rollerskates. The printed name of pink-rollerskates is "[clothing-title-before]pair of pink rollerskates[clothing-title-after]". The text-shortcut of pink-rollerskates is "prsk". Understand "pink" as pink-rollerskates.

Figure of pink-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/skates3.png".

To decide which figure-name is the clothing-image of (C - pink-rollerskates):
	decide on figure of pink-rollerskates.

Definition: pink-rollerskates is pink themed: decide yes.

To say ClothingDesc of (C - pink-rollerskates):
	say "A pair of pink rollerskates with pink wheels. [SteadinessDesc of C]".

ultra-pink-rollerskates is a rollerskates. The printed name of ultra-pink-rollerskates is "[clothing-title-before]pair of ultra pink rollerskates[clothing-title-after]". The text-shortcut of ultra-pink-rollerskates is "ursk". Understand "ultra", "pink" as ultra-pink-rollerskates.

Figure of ultra-pink-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/skates4.png".

To decide which figure-name is the clothing-image of (C - ultra-pink-rollerskates):
	decide on figure of ultra-pink-rollerskates.

Definition: ultra-pink-rollerskates is pink themed: decide yes.
To decide which number is the initial outrage of (C - ultra-pink-rollerskates):
	if diaper quest is 1, decide on 0;
	decide on 3.

To say ClothingDesc of (C - ultra-pink-rollerskates):
	say "A pair of vibrant ultra pink rollerskates with pink wheels. [SteadinessDesc of C]".

blue-and-pink-rollerskates is a rollerskates. The printed name of blue-and-pink-rollerskates is "[clothing-title-before]pair of blue and pink rollerskates[clothing-title-after]". The text-shortcut of blue-and-pink-rollerskates is "brsk". Understand "blue", "blue and", "pink" as blue-and-pink-rollerskates.

Figure of blue-and-pink-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/skates5.png".

To decide which figure-name is the clothing-image of (C - blue-and-pink-rollerskates):
	decide on figure of blue-and-pink-rollerskates.

Definition: blue-and-pink-rollerskates is pink themed: decide yes.
Definition: blue-and-pink-rollerskates is blue themed: decide yes.
To decide which number is the initial outrage of (C - blue-and-pink-rollerskates):
	if diaper quest is 1, decide on 0;
	decide on 3.
To decide which number is the initial cringe of (C - blue-and-pink-rollerskates):
	decide on 4.

To say ClothingDesc of (C - blue-and-pink-rollerskates):
	say "A pair of vibrant ultra pink rollerskates with two pink wheels and two blue wheels. The laces and straps are also blue. [SteadinessDesc of C]".




All Shoes ends here.
