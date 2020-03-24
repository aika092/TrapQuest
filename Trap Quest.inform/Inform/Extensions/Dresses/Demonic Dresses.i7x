Demonic Dresses by Dresses begins here.

A blazing dress is a kind of overdress. A blazing dress is usually unique. A blazing dress is usually short. A blazing dress is usually low cut. A blazing dress is usually latex. There is 1 blazing dress.

Figure of blazing dress is the file "Items/Clothes/Upper/Dresses/Demonic/blazingdress1.png".

The printed name of blazing dress is usually "[clothing-title-before]blazing dress[clothing-title-after]". The text-shortcut of blazing dress is "bd".

To decide which figure-name is clothing-image of (C - a blazing dress):
	decide on figure of blazing dress.

To say ClothingDesc of (C - a blazing dress):
	say "A red latex dress reminiscent of fire[if C is worn]. Its skirt only barely covers your crotch, and your breasts nearly hang out of it[end if].".

To compute SelfExamineDesc of (C - a blazing dress):
	say "A [ShortDesc of C] tightly fits your body. ".

To say ShortDesc of (C - a blazing dress):
	say "blazing red dress".

To decide which number is the initial outrage of (C - a blazing dress):
	decide on 4.

To decide which number is the strength-influence of (C - a blazing dress):
	decide on 2.

Definition: a blazing dress is class-transformation-protected if the class of the player is succubus.
Definition: a blazing dress is red themed: decide yes.
Definition: a blazing dress is demonic: decide yes.

tongue-suit is an overdress. tongue-suit is unique. tongue-suit is biological. The printed name of tongue-suit is "[clothing-title-before]tongue suit[clothing-title-after]". The text-shortcut of tongue-suit is "tgst". Understand "tongue", "suit" as tongue-suit.

tongue-suit is unskirted. tongue-suit is very low cut. tongue-suit is crotch-intact.
 tongue-suit is optional-top-displacable.

Figure of white tongue suit is the file "Items/Clothes/Upper/Dresses/Demonic/tonguesuit1a.png".
Figure of tonguing white tongue suit is the file "Items/Clothes/Upper/Dresses/Demonic/tonguesuit1b.png".
Figure of black tongue suit is the file "Items/Clothes/Upper/Dresses/Demonic/tonguesuit2a.png".
Figure of tonguing black tongue suit is the file "Items/Clothes/Upper/Dresses/Demonic/tonguesuit2b.png".

To decide which figure-name is the clothing-image of (C - tongue-suit):
	if tonguesBlack is true:
		if C is tonguing, decide on figure of tonguing black tongue suit;
		decide on figure of black tongue suit;
	otherwise:
		if C is tonguing, decide on figure of tonguing white tongue suit;
		decide on figure of white tongue suit.

To say ClothingDesc of (C - tongue-suit):
	say "A [tonguesColour], skin-tight suit that goes up to the neck and down to the crotch. The suit clings to the body to make sure it hides none of its curves, and it has a long strip missing down the middle to show off a lot of cleavage. Almost countless red tongues snake out from underneath the fabric. [TongueStatus of C]".

To say ShortDesc of (C - tongue-suit):
	say "tongued suit".

To say MediumDesc of (C - tongue-suit):
	say "skin hugging tongued catsuit".

Definition: tongue-suit is displacable: decide yes.

Definition: tongue-suit is demonic: decide yes.
Definition: tongue-suit is tongued: decide yes.
Definition: tongue-suit is transformation-protected: decide yes.
Definition: tongue-suit is white themed if tonguesBlack is false.
Definition: tongue-suit is black themed if tonguesBlack is true.

To decide which number is the initial outrage of (C - tongue-suit):
	if C is tonguing, decide on 18;
	decide on 8.

To compute periodic effect of (C - tongue-suit):
	if C is crotch-in-place and the player is prone and there is a reactive dangerous willing to do vaginal monster and tonguesActive > 0:
		say "[bold type][BigNameDesc of C] [bold type]uses its tongues to pull itself out of the way, completely of its own volition![roman type][line break]";
		displace C.

Demonic Dresses ends here.
