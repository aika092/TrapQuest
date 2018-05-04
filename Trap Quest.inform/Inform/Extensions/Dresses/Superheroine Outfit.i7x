Superheroine Outfit by Dresses begins here.

A superheroine outfit is a kind of overdress. A superheroine outfit is rare. A superheroine outfit is usually nylon. A superheroine outfit is usually low cut. A superheroine outfit is usually unskirted. A superheroine outfit is usually top-exclusive. A superheroine outfit is usually not-top-displacable. The soak-limit of a superheroine outfit is usually 20.

The printed name of superheroine outfit is usually "[TQlink of item described][clothing-title-before]superheroine outfit[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To compute SelfExamineDesc of (C - a superheroine outfit):
	say "You are wearing a [ShortDesc of C]. ".

To decide which number is the initial outrage of (C - a superheroine outfit):
	if diaper quest is 1, decide on 4;
	otherwise decide on 6.

To decide which number is the strength-influence of (C - a superheroine outfit):
	let S be -1;
	increase S by the magic-modifier of C;
	if diaper quest is 1:
		let D be a random worn diaper;
		if D is diaper, increase S by 1 + (the soak-limit of D / 10);
	otherwise:
		increase S by the largeness of breasts / 3;
	decide on S.
	
Report examining a superheroine outfit:
	if diaper quest is 1, say "[if the noun is worn]You somehow know by instinct that the strength of the outfit depends on the thickness of your diaper.[end if]";
	otherwise say "[if the flat intelligence of the player > 9]You realise that the cleavage window is probably the secret to its magic power. [end if][if the flat intelligence of the player > 15]The larger your breasts, the more strength this will give you.[end if]".

Definition: a superheroine outfit (called C) is untransformable:
	decide yes.

Definition: a superheroine outfit (called C) is displacable:
	decide no.

This is the superheroine outfit fix rule:
	repeat with A running through anime superheroine tops:
		now A is unique;
	repeat with A running through blue superheroine outfits:
		now A is plentiful.
The superheroine outfit fix rule is listed in the diaper quest fix rules.

Part 1 - Anime Superheroine Top

An anime superheroine top is a kind of superheroine outfit. An anime superheroine top is usually pvc. An anime superheroine top is usually neck covering. An anime superheroine top is usually belly exposing.
There is 1 anime superheroine top. The text-shortcut of anime superheroine top is "aso".

Figure of anime heroine top is the file "Items\Clothes\Upper\Special\Hero\animeheroine1.png".

To decide which number is the initial outrage of (C - an anime superheroine top):
	decide on 6.

To decide which number is the initial cringe of (C - an anime superheroine top):
	decide on 4.

To decide what number is the price of (C - an anime superheroine top):
	decide on 2.

The printed name of anime superheroine top is usually "[TQlink of item described][clothing-title-before]anime superheroine top[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To decide which figure-name is clothing-image of (C - an anime superheroine top):
	decide on figure of anime heroine top.

To say ClothingDesc of (C - an anime superheroine top):
	say "This red PVC top has a large heart cut out at the chest, in order to expose a lot of cleavage. It is styled in an anime fashion.".

To say ShortDesc of (C - an anime superheroine top):
	say "PVC anime style cosplay outfit".


Part 2 - Blue Superheroine Outfit

A blue superheroine outfit is a kind of superheroine outfit. A blue superheroine outfit is usually leg covering. A blue superheroine outfit is usually only arm covering. A blue superheroine outfit is usually crotch-intact. There is 1 blue superheroine outfit. The text-shortcut of blue superheroine outfit is "bso".

Figure of blue superheroine outfit is the file "Items\Clothes\Upper\Special\Hero\Xheroine1.png".

To decide what number is the price of (C - a blue superheroine outfit):
	decide on 4.

To decide which figure-name is clothing-image of (C - a blue superheroine outfit):
	decide on figure of blue superheroine outfit.

To say ClothingDesc of (C - a blue superheroine outfit):
	say "This blue lycra top covers your arms and legs. It has a large X cut out at the chest, in order to expose a lot of cleavage. It is styled in a western superheroine fashion.".

To say ShortDesc of (C - a blue superheroine outfit):
	say "blue lycra outfit".

Report wearing a blue superheroine outfit when there is a worn diaper:
	if image cutscenes is 1, display figure of superhero cutscene 1.

Definition: a blue superheroine outfit (called C) is untransformable:
	if diaper quest is 1, decide no;
	decide yes.

To decide which object is the unique-upgrade-target of (C - a blue superheroine outfit):
	decide on a random off-stage anime superheroine top.




Superheroine Outfit ends here.

