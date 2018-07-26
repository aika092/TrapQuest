Crop Top by Dresses begins here.

A crop top is a kind of overdress. A crop top is usually unskirted. A crop top is usually belly exposing. The soak-limit of a crop top is usually 16. A crop top is usually sheer-when-wet.

The printed name of crop top is usually "[TQlink of item described][clothing-title-before]crop top[clothing-title-after][TQxlink of item described][verb-desc of item described]".

To compute SelfExamineDesc of (C - a crop top):
	say "A [ShortDesc of C] tightly fits over your chest. ".

To decide which number is the initial outrage of (C - a crop top):
	decide on 1.

To decide which number is the original price of (C - a crop top):
	decide on 5.

To set up influence of (C - a crop top):
	set up stat-based influence of C.

Definition: a crop top is optional-top-displacable:
	if the largeness of breasts > 7, decide yes;
	decide no.

Definition: a crop top is top-displacable:
	if it is not optional-top-displacable, decide yes;
	decide no.

To decide which object is the potential-upgrade-target of (C - a crop top):
	if a random number between 1 and 2 is 1, decide on a random off-stage silver tube top;
	otherwise decide on a random off-stage striped exposing crop top.

To decide which object is the unique-upgrade-target of (C - a crop top):
	if diaper quest is 1, decide on a random off-stage nightie;
	decide on nothing.

This is the remove inappropriate crop tops rule:
	repeat with B running through crop tops:
		unless B is baby doll crop top or B is spoiled crop top, now B is in Holding Pen.
The remove inappropriate crop tops rule is listed in the diaper quest fix rules.

Part 1 - Milk Crop Top

A milk crop top is a kind of crop top. The printed name of milk crop top is usually "[TQlink of item described][clothing-title-before][if lactation fetish is 1]milk [end if]crop top[clothing-title-after][TQxlink of item described][verb-desc of item described]".

There is 1 milk crop top. A milk crop top is usually high cut. The text-shortcut of milk crop top is "mct".

To uniquely set up (C - a milk crop top):
	if lactation fetish is 1, now C is milk production.

To decide which number is the initial outrage of (C - a milk crop top):
	decide on 2.
	
Figure of milk crop top is the file "Items/Clothes/Upper/CropTops/croptop1.png".

To decide which figure-name is clothing-image of (C - a milk crop top):
	decide on figure of milk crop top.

To say ClothingDesc of (C - a milk crop top):
	say "A short white shirt that doesn't cover your belly, and has quite a modest neckline. The item is pretty modest compared to most things in this game, but it's still not something anyone would wear in real life, having two drawings of cartons of milk tactically printed [if C is worn]above each breast[otherwise]in the chest region[end if].".

To say ShortDesc of (C - a milk crop top):
	say "milk themed crop top".

Part 2 - Size Does Matter Crop Top

A size does matter crop top is a kind of crop top. The text-shortcut of size does matter crop top is "sct". The printed name of size does matter crop top is usually "[TQlink of item described][clothing-title-before]size does matter crop top[clothing-title-after][TQxlink of item described][verb-desc of item described]".

A size does matter crop top has a number called charge.

There is 1 size does matter crop top.

[To uniquely set up (C - a size does matter crop top):
	do nothing.]

To decide which number is the initial outrage of (C - a size does matter crop top):
	decide on 3.
	
Figure of size does matter crop top is the file "Items/Clothes/Upper/CropTops/croptop2.png".

To decide which figure-name is clothing-image of (C - a size does matter crop top):
	decide on figure of size does matter crop top.

To say ClothingDesc of (C - a size does matter crop top):
	say "A short white shirt that doesn't cover your belly, and has a pretty standard neckline. The words 'Size DOES Matter' are printed in black on the front.".

To say ShortDesc of (C - a size does matter crop top):
	say "[']size does matter['] crop top".

To compute periodic effect of (C - a size does matter crop top):
	increase the charge of C by 1;
	if the charge of C > 100:
		now the charge of C is 0;
		if the largeness of breasts <= the size of penis and the player is not top heavy:
			say "You sense some magic flow through your [C] into your chest. Your [BreastDesc] noticeably grow!";
			BustUp 3;
		otherwise if the largeness of breasts >= the size of penis and the size of penis < 10 and the player is male:
			say "You sense some magic flow through your [C] into your body. ";
			PenisUp 1.

Part 3 - Baby Doll Crop Top

A baby doll crop top is a kind of crop top. The printed name of baby doll crop top is usually "[TQlink of item described][clothing-title-before]baby doll crop top[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of baby doll crop top is "bct".

There is 1 baby doll crop top. A baby doll crop top is usually high cut.

Figure of baby doll crop top is the file "Items/Clothes/Upper/CropTops/croptop3.png".

To decide which figure-name is clothing-image of (C - a baby doll crop top):
	decide on figure of baby doll crop top.

To say ClothingDesc of (C - a baby doll crop top):
	say "A short white shirt that doesn't cover your belly, and has quite a modest neckline. The item is pretty modest compared to most things in this game[if the humiliation of the player < 10000], but it's still not something you would wear in real life, having the pink words 'Baby Doll' on the front[end if].".

To say ShortDesc of (C - a baby doll crop top):
	say "baby doll crop top".

To decide which number is the initial cringe of (C - a baby doll crop top):
	decide on 4.

Part 4 - Striped Exposing Top

A striped exposing crop top is a kind of crop top. The printed name of crop top is usually "[TQlink of item described][clothing-title-before]striped crop top[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of striped exposing crop top is "sdm".

There is 1 striped exposing crop top. A striped exposing crop top is usually average cut. A striped exposing crop top is usually sheer. A striped exposing crop top is usually wool. A striped exposing crop top is usually unique.

To decide which number is the initial outrage of (C - a striped exposing crop top):
	decide on 5.
	
Figure of striped exposing crop top is the file "Items/Clothes/Upper/CropTops/croptop4.png".

To decide which figure-name is clothing-image of (C - a striped exposing crop top):
	decide on figure of striped exposing crop top.

To say ClothingDesc of (C - a striped exposing crop top):
	say "This white woollen crop top is not only so short that is exposes some underboob, but it also is horizontally striped, with the striped sections being completely see-through.".

To say ShortDesc of (C - a striped exposing crop top):
	say "striped see-through crop top".

To decide which object is the potential-upgrade-target of (C - a striped exposing crop top):
	decide on a random off-stage actually sheer tube top.


Part 5 - Deep Throat Princess Crop Top

A deepthroat princess crop top is a kind of crop top. The printed name of deepthroat princess crop top is usually "[TQlink of item described][clothing-title-before]deepthroat princess crop top[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of deepthroat princess crop top is "dpt". A deepthroat princess crop top is oral-sex-addiction-influencing.

There is 1 unique deepthroat princess crop top. A deepthroat princess crop top is usually high cut.

To decide which number is the initial outrage of (C - a deepthroat princess crop top):
	decide on 4.
	
Figure of deepthroat princess crop top is the file "Items/Clothes/Upper/CropTops/croptop5.png".

To set up influence of (C - a deepthroat princess crop top):
	now C is oral-sex-addiction-influencing.

To decide which figure-name is clothing-image of (C - a deepthroat princess crop top):
	decide on figure of deepthroat princess crop top.

To say ClothingDesc of (C - a deepthroat princess crop top):
	say "A short white shirt that doesn't cover your belly, and has quite a modest neckline. The item has a pink tiara and the pink words 'deepthroat princess' on the front.".

To say ShortDesc of (C - a deepthroat princess crop top):
	say "small [']deepthroat princess['] crop top".

Definition: a deepthroat princess crop top (called C) is royal attire:
	decide yes.


Part 6 - Spoiled Crop Top

A spoiled crop top is a kind of crop top. The printed name of spoiled crop top is usually "[TQlink of item described][clothing-title-before]spoiled crop top[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of spoiled crop top is "spl".

There is 1 spoiled crop top. A spoiled crop top is usually high cut.

To decide which number is the initial outrage of (C - a spoiled crop top):
	decide on 2.
	
Figure of spoiled crop top is the file "Items/Clothes/Upper/CropTops/croptop6.png".

To decide which figure-name is clothing-image of (C - a spoiled crop top):
	decide on figure of spoiled crop top.

To say ClothingDesc of (C - a spoiled crop top):
	say "A short white shirt that doesn't cover your belly, and has quite a modest neckline with pink frills. The word 'Spoiled' is written across the front in large sequins, giving it a 'babygirl' feel.".

To say ShortDesc of (C - a spoiled crop top):
	say "small 'Spoiled' crop top".

To decide which number is the initial cringe of (C - a spoiled crop top):
	decide on 4.


Crop Top ends here.

