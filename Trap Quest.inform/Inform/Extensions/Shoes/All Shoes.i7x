All Shoes by Shoes begins here.

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

To decide which object is the potential-upgrade-target of (C - a sneakers):
	decide on a random off-stage white rollerskates.

grey-sneakers is a sneakers. The printed name of grey-sneakers is "[clothing-title-before]pair of grey sneakers[clothing-title-after]". The text-shortcut of grey-sneakers is "grs".

Definition: grey-sneakers is grey themed: decide yes.

Figure of grey-sneakers is the file "Items/Clothes/Lower/Feet/sneakers1.png".

To decide which figure-name is the clothing-image of (C - grey-sneakers):
	decide on figure of grey-sneakers.

rollerskates is a kind of shoes. A rollerskates is manly. Understand "rollerskates", "skates" as rollerskates.

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

white rollerskates is a kind of rollerskates. Understand "white" as white rollerskates.

Definition: a white rollerskates is white themed: decide yes.

To say ClothingDesc of (C - a white rollerskates):
	say "A pair of white rollerskates with [if C is red-wheeled white-rollerskates]red wheels[otherwise if C is pink-wheeled white-rollerskates]pink wheels[otherwise]blue wheels[end if]. [SteadinessDesc of C]".

To decide which object is the potential-upgrade-target of (C - a white rollerskates):
	decide on a random off-stage nonwhite rollerskates.

Part 1 - Red Wheeled

red-wheeled white-rollerskates is a white rollerskates. The printed name of red-wheeled white-rollerskates is "[clothing-title-before]pair of red wheeled white rollerskates[clothing-title-after]". The text-shortcut of red-wheeled white-rollerskates is "rwwr".

Definition: red-wheeled white-rollerskates is red themed: decide yes.

Figure of red-wheeled white-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/whiteskates1.png".

To decide which figure-name is the clothing-image of (C - red-wheeled white-rollerskates):
	decide on figure of red-wheeled white-rollerskates.

Part 2 - Blue Wheeled

blue-wheeled white-rollerskates is a white rollerskates. The printed name of blue-wheeled white-rollerskates is "[clothing-title-before]pair of blue wheeled white rollerskates[clothing-title-after]". The text-shortcut of blue-wheeled white-rollerskates is "bwwr".

Definition: blue-wheeled white-rollerskates is blue themed: decide yes.

Figure of blue-wheeled white-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/whiteskates2.png".

To decide which figure-name is the clothing-image of (C - blue-wheeled white-rollerskates):
	decide on figure of blue-wheeled white-rollerskates.

Part 3 - Pink Wheeled

pink-wheeled white-rollerskates is a white rollerskates. pink-wheeled white-rollerskates is womanly. The printed name of pink-wheeled white-rollerskates is "[clothing-title-before]pair of pink wheeled white rollerskates[clothing-title-after]". The text-shortcut of pink-wheeled white-rollerskates is "pwwr".

Definition: pink-wheeled white-rollerskates is pink themed: decide yes.

Figure of pink-wheeled white-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/whiteskates3.png".

To decide which figure-name is the clothing-image of (C - pink-wheeled white-rollerskates):
	decide on figure of pink-wheeled white-rollerskates.

nonwhite rollerskates is a kind of rollerskates. a nonwhite rollerskates is usually unique.

To say ClothingDesc of (C - a nonwhite rollerskates):
	say "These [if C is pink-rollerskates]pink[otherwise]red[end if] rollerskates are made even more eye-catching and girly thanks to their colour. [SteadinessDesc of C]".

Part 1 - Pink Rollerskates

pink-rollerskates is a nonwhite rollerskates. pink-rollerskates is womanly. Understand "pink" as pink-rollerskates. The printed name of pink-rollerskates is "[clothing-title-before]pair of pink rollerskates[clothing-title-after]". The text-shortcut of pink-rollerskates is "pnkr".

Figure of pink-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/pinkskates1.png".

To decide which figure-name is the clothing-image of (C - pink-rollerskates):
	decide on figure of pink-rollerskates.

Definition: pink-rollerskates is pink themed: decide yes.

Part 2 - Red Rollerskates

black-wheeled red-rollerskates is a nonwhite rollerskates. Understand "black", "wheeled", "red" as black-wheeled red-rollerskates. The printed name of black-wheeled red-rollerskates is "[clothing-title-before]pair of black wheeled red rollerskates[clothing-title-after]". The text-shortcut of black-wheeled red-rollerskates is "bwrr".

Figure of black-wheeled red-rollerskates is the file "Items/Clothes/Lower/Feet/Rollerskates/redskates1.png".

Definition: black-wheeled red-rollerskates is red themed: decide yes.
Definition: black-wheeled red-rollerskates is black themed: decide yes.

To decide which figure-name is the clothing-image of (C - black-wheeled red-rollerskates):
	decide on figure of black-wheeled red-rollerskates.


All Shoes ends here.
