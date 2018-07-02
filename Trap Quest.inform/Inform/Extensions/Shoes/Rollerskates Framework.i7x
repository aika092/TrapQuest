Rollerskates Framework by Shoes begins here.

rollerskates is a kind of shoes. Understand  "rollerskates", "skates" as rollerskates.

Include White Rollerskates by Shoes.
Include Nonwhite Rollerskates by Shoes.

To say ShoeType of (S - a rollerskates):
	say "rollerskates".

To say UniqueShortDesc of (C - a rollerskates):
	say "rollerskates".

Definition: a rollerskates (called C) is fluid immune:
	decide yes.
	
To decide which number is the initial outrage of (C - a rollerskates):
	if diaper quest is 1, decide on 0;
	decide on 2.

To decide which number is the initial cringe of (C - a rollerskates):
	decide on 2.

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
	if newbie tips is 1, say "Rollerskates [if the number of worn rollerskates is 0]would [end if]allow you to deal slightly higher amounts of damage with your kicks and potentially glide room from room.".

To say MonsterOfferRejectFlav of (M - a demoness) to (T - a rollerskates):
	say "[speech style of M]'Heels should not have wheels!'[roman type][line break]".
	
Part - Double Move

double-moved is a number that varies.

After going when there are worn rollerskates:
	if the player is upright:
		increase double-moved by 1;
		if a random number between 0 and (double-moved - 2) > a random number between 0 and 2 and the noun is N-viable and the player is not in the woods:
			say "You can't stop yourself[if the slipperiness of the location of the player > 0] on this slippery ground[end if]! You keep travelling towards the next room.";
			now seconds is 6;
			now double-moved is 0;
			try going the noun;
		otherwise:
			do important going resolution;
			try looking;
	otherwise:
		do important going resolution;
		try looking.
		

Rollerskates Framework ends here.
