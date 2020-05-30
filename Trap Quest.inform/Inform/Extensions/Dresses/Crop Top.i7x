Crop Top by Dresses begins here.

A crop top is a kind of overdress. A crop top is usually unskirted. A crop top is usually belly exposing. The soak-limit of a crop top is usually 16. A crop top is usually sheer-when-wet. A crop top is usually erect-nipple-exposing. Understand "crop", "top" as crop top.

The printed name of crop top is usually "[clothing-title-before]crop top[clothing-title-after]".

To compute SelfExamineDesc of (C - a crop top):
	say "A [ShortDesc of C] tightly fits over your chest. ".

To say ShortDesc of (C - a crop top):
	say "crop top".

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

To decide which object is the unique-upgrade-target of (C - a crop top):
	if a random number between 1 and 2 is diaper quest, decide on a random off-stage transformation-eligible nightie;
	decide on nothing.

This is the remove inappropriate crop tops rule:
	repeat with B running through crop tops:
		unless B is fetish appropriate, now B is in Holding Pen.
The remove inappropriate crop tops rule is listed in the diaper quest fix rules.

Part 1 - Milk Crop Top

milk crop top is a crop top. The printed name of milk crop top is "[clothing-title-before][if lactation fetish is 1]milk [end if]crop top[clothing-title-after]".

milk crop top is high cut. The text-shortcut of milk crop top is "mct".

Definition: milk crop top (called C) is fetish appropriate:
	if lactation fetish is 1, decide yes;
	decide no.

To uniquely set up (C - milk crop top):
	if lactation fetish is 1, now C is milk production.

To decide which number is the initial outrage of (C - milk crop top):
	decide on 4.

Figure of milk crop top is the file "Items/Clothes/Upper/CropTops/croptop1.png".

To decide which figure-name is clothing-image of (C - milk crop top):
	decide on figure of milk crop top.

To say ClothingDesc of (C - milk crop top):
	say "A short white shirt that doesn't cover your belly, and has quite a modest neckline. The item is pretty modest compared to most things in this game, but it's still not something anyone would wear in real life, having two drawings of cartons of milk tactically printed [if C is worn]above each breast[otherwise]in the chest region[end if].".

To say ShortDesc of (C - milk crop top):
	say "milk crop top".

To say MediumDesc of (C - milk crop top):
	say "milk themed crop top".

Definition: milk crop top is drink themed: decide yes.
Definition: milk crop top is white themed: decide yes.

Part 2 - Size Does Matter Crop Top

size does matter crop top is a crop top. The text-shortcut of size does matter crop top is "sct". The printed name of size does matter crop top is "[clothing-title-before]size does matter crop top[clothing-title-after]".

size does matter crop top has a number called charge.
Definition: size does matter crop top is penis themed: decide yes.
Definition: size does matter crop top is boob themed: decide yes.
Definition: size does matter crop top is white themed: decide yes.

Definition: size does matter crop top is fetish appropriate if diaper quest is 0.

To decide which number is the initial outrage of (C - size does matter crop top):
	decide on 8.

Figure of size does matter crop top is the file "Items/Clothes/Upper/CropTops/croptop2.png".

To decide which figure-name is clothing-image of (C - size does matter crop top):
	decide on figure of size does matter crop top.

To say ClothingDesc of (C - size does matter crop top):
	say "A short white shirt that doesn't cover your belly, and has a pretty standard neckline. The words 'Size DOES Matter' are printed in black on the front.".

To say ShortDesc of (C - size does matter crop top):
	say "[']size does matter['] crop top".

To compute periodic effect of (C - size does matter crop top):
	increase the charge of C by 1;
	if the charge of C > 100:
		now the charge of C is 0;
		if the largeness of breasts <= the size of penis and the player is not top heavy:
			say "You sense some magic flow through your [ShortDesc of C] into your chest. Your [BreastDesc] noticeably grow!";
			BustUp 3;
		otherwise if the largeness of breasts >= the size of penis and the size of penis < 10 and the player is possessing a penis:
			say "You sense some magic flow through your [ShortDesc of C] into your body. ";
			PenisUp 1.

Part 3 - Baby Doll Crop Top

baby doll crop top is a crop top. The printed name of baby doll crop top is "[clothing-title-before]baby doll crop top[clothing-title-after]". The text-shortcut of baby doll crop top is "bct".

baby doll crop top is high cut.
Definition: baby doll crop top is white themed: decide yes.

Figure of baby doll crop top is the file "Items/Clothes/Upper/CropTops/croptop3.png".

To decide which figure-name is clothing-image of (C - baby doll crop top):
	decide on figure of baby doll crop top.

To say ClothingDesc of (C - baby doll crop top):
	say "A short white shirt that doesn't cover your belly, and has quite a modest neckline. The item is pretty modest compared to most things in this game[if the humiliation of the player < 10000], but it's still not something you would wear in real life, having the pink words 'Baby Doll' on the front[end if].".

To say ShortDesc of (C - baby doll crop top):
	say "baby doll crop top".

To decide which number is the initial outrage of (C - baby doll crop top):
	if diaper quest is 1, decide on 2;
	decide on 4.
To decide which number is the initial cringe of (C - baby doll crop top):
	decide on 3.

Part 4 - Striped Exposing Top

stripy lewd crop top is a crop top. The printed name of crop top is "[clothing-title-before]striped lewd crop top[clothing-title-after]". The text-shortcut of stripy lewd crop top is "stct". Understand "striped" as stripy lewd crop top.

Definition: stripy lewd crop top is white themed: decide yes.

stripy lewd crop top is average cut. stripy lewd crop top is sheer. stripy lewd crop top is wool. stripy lewd crop top is transformation-rare.

To decide which number is the initial outrage of (C - stripy lewd crop top):
	decide on 11.

Figure of stripy lewd crop top is the file "Items/Clothes/Upper/CropTops/croptop4.png".

To decide which figure-name is clothing-image of (C - stripy lewd crop top):
	decide on figure of stripy lewd crop top.

To say ClothingDesc of (C - stripy lewd crop top):
	say "This white woollen crop top is not only so short that is exposes some underboob, but it also is horizontally striped, with the striped sections being completely see-through.".

To say ShortDesc of (C - stripy lewd crop top):
	say "striped crop top".
To say MediumDesc of (C - stripy lewd crop top):
	say "striped see-through crop top".

To decide which object is the unique-upgrade-target of (C - stripy lewd crop top):
	decide on a random off-stage actually sheer tube top.

Part 5 - Deep Throat Princess Crop Top

deepthroat princess crop top is a crop top. The printed name of deepthroat princess crop top is "[clothing-title-before]deepthroat princess crop top[clothing-title-after]". The text-shortcut of deepthroat princess crop top is "dpt". deepthroat princess crop top is oral-sex-addiction-influencing.

deepthroat princess crop top is high cut. deepthroat princess crop top is transformation-rare.

Definition: deepthroat princess crop top is fetish appropriate if diaper quest is 0.

To decide which number is the initial outrage of (C - deepthroat princess crop top):
	decide on 10.

Figure of deepthroat princess crop top is the file "Items/Clothes/Upper/CropTops/croptop5.png".

To set up influence of (C - deepthroat princess crop top):
	now C is oral-sex-addiction-influencing.

To decide which figure-name is clothing-image of (C - deepthroat princess crop top):
	decide on figure of deepthroat princess crop top.

To say ClothingDesc of (C - deepthroat princess crop top):
	say "A short white shirt that doesn't cover your belly, and has quite a modest neckline. The item has a pink tiara and the pink words 'deepthroat princess' on the front.".

To say ShortDesc of (C - deepthroat princess crop top):
	say "small [']deepthroat princess['] crop top".

Definition: deepthroat princess crop top is royalty themed: decide yes.
Definition: deepthroat princess crop top is oral sex themed: decide yes.
Definition: deepthroat princess crop top is white themed: decide yes.
Definition: deepthroat princess crop top is transformation-protected if the class of the player is princess.

Part 6 - Spoiled Crop Top

spoiled crop top is a crop top. The printed name of spoiled crop top is "[clothing-title-before]spoiled crop top[clothing-title-after]". The text-shortcut of spoiled crop top is "spl".

spoiled crop top is high cut.

To decide which number is the initial outrage of (C - spoiled crop top):
	decide on 5.

Figure of spoiled crop top is the file "Items/Clothes/Upper/CropTops/croptop6.png".

To decide which figure-name is clothing-image of (C - spoiled crop top):
	decide on figure of spoiled crop top.

To say ClothingDesc of (C - spoiled crop top):
	say "A short white shirt that doesn't cover your belly, and has quite a modest neckline with pink frills. The word 'Spoiled' is written across the front in large sequins, giving it a 'babygirl' feel.".

To say ShortDesc of (C - spoiled crop top):
	say "small 'Spoiled' crop top".

To decide which number is the initial cringe of (C - spoiled crop top):
	decide on 4.

Definition: spoiled crop top is gem themed: decide yes.
Definition: spoiled crop top is white themed: decide yes.
Definition: spoiled crop top is bow themed: decide yes.

Part 7 - Burning Love Crop Top

burning love crop top is a crop top. The printed name of burning love crop top is "[clothing-title-before]burning love crop top[clothing-title-after]". The text-shortcut of burning love crop top is "blct".

burning love crop top is fully covering.

Figure of burning love crop top is the file "Items/Clothes/Upper/CropTops/croptop7.png".

To decide which figure-name is clothing-image of (C - burning love crop top):
	decide on figure of burning love crop top.

To say ClothingDesc of (C - burning love crop top):
	say "A short white shirt that doesn't cover your belly. The word 'Love' is written in swirling black letters over the image of a burning heart.".

To say ShortDesc of (C - burning love crop top):
	say "'burning love' crop top".

Definition: burning love crop top is heart themed: decide yes.
Definition: burning love crop top is white themed: decide yes.
Definition: burning love crop top is red themed: decide yes.

Part 8 - Red Wool Crop Top

red crop top is a crop top. red crop top is wool. The printed name of red crop top is "[clothing-title-before]red wool crop top[clothing-title-after]". The text-shortcut of red crop top is "rwct".

red crop top is fully covering. red crop top is dense.

Figure of red crop top is the file "Items/Clothes/Upper/CropTops/croptop8.png".

To decide which figure-name is clothing-image of (C - red crop top):
	decide on figure of red crop top.

To say ClothingDesc of (C - red crop top):
	say "A red and white wool top that doesn't cover your belly, complete with V neck and collar.".

To say ShortDesc of (C - red crop top):
	say "red wool crop top".

Definition: red crop top is red themed: decide yes.

Part 9 - Gross Tank Top

gross tank top is a crop top. gross tank top is dense. The printed name of gross tank top is "[clothing-title-before]that's gross tank top[clothing-title-after]". The text-shortcut of gross tank top is "tgtt". Understand "that's" as gross tank top.

To decide which number is the initial outrage of (C - gross tank top):
	decide on 6.

Figure of gross tank top is the file "Items/Clothes/Upper/CropTops/croptop9.png".

To decide which figure-name is clothing-image of (C - gross tank top):
	decide on figure of gross tank top.

To say ClothingDesc of (C - gross tank top):
	say "A black tank top that doesn't cover your belly. Words on the front say 'That's gross' in the style of a vaguely familiar logo. Underneath in smaller white letters are the words 'I love it'.".

To say ShortDesc of (C - gross tank top):
	say "'that's gross' tank top".

Definition: gross tank top is black themed: decide yes.

Part 9 - Plaid Tank Top

plaid tank top is a crop top. plaid tank top is dense. plaid tank top is high cut. The printed name of plaid tank top is "[clothing-title-before]plaid tank top[clothing-title-after]". The text-shortcut of plaid tank top is "pltt".

To decide which number is the initial outrage of (C - plaid tank top):
	decide on 3.

Figure of plaid tank top is the file "Items/Clothes/Upper/CropTops/croptop10.png".

To decide which figure-name is clothing-image of (C - plaid tank top):
	decide on figure of plaid tank top.

To say ClothingDesc of (C - plaid tank top):
	say "An orange black and white plaid pattern tank top that doesn't cover your belly. A unique cut leaves your shoulder area very exposed.".

To say ShortDesc of (C - plaid tank top):
	say "plaid tank top".

Definition: plaid tank top is tartan themed: decide yes.
Definition: plaid tank top is orange themed: decide yes.

Part 10 - Rugged Top

rugged-crop-top is a crop top. rugged-crop-top is dense. The printed name of rugged-crop-top is "[clothing-title-before]rugged crop top[clothing-title-after]". The text-shortcut of rugged-crop-top is "rgct". Understand "leopard", "rugged" as rugged-crop-top. rugged-crop-top is unique.

To decide which number is the initial outrage of (C - rugged-crop-top):
	decide on 2.

Figure of rugged crop top is the file "Items/Clothes/Upper/CropTops/croptop11.png".
To decide which figure-name is clothing-image of (C - rugged-crop-top):
	decide on figure of rugged crop top.

Definition: rugged-crop-top is leopard themed: decide yes.
Definition: rugged-crop-top is class-transformation-protected if the class of the player is barbarian.

To say ClothingDesc of (C - rugged-crop-top):
	say "A leopard print crop top that doesn't cover your belly. The cut of the fabric leaves one of your shoulders exposed.".

To say ShortDesc of (C - rugged-crop-top):
	say "rugged crop top".

To decide which object is the unique-upgrade-target of (C - rugged-crop-top):
	if leopard print tube top is off-stage, decide on leopard print tube top.

nipples-crop-top is a crop top. nipples-crop-top is transformation-rare. nipples-crop-top is dense. nipples-crop-top is normally-nipple-exposing. The printed name of nipples-crop-top is "[clothing-title-before]nipple holes crop top[clothing-title-after]". The text-shortcut of nipples-crop-top is "nct". Figure of nipples-crop-top is the file "Items/Clothes/Upper/CropTops/croptop12.jpg". Understand "nipple", "holes" as nipples-crop-top.
To decide which figure-name is clothing-image of (H - nipples-crop-top):
	decide on figure of nipples-crop-top.

To say ShortDesc of (C - nipples-crop-top):
	say "nipple holes crop top".
To say MediumDesc of (C - nipples-crop-top):
	say "white crop top with nipple holes".
To say ClothingDesc of (C - nipples-crop-top):
	say "This tiny, flimsy white crop top has holes purposefully cut out for your nipples.".

Definition: nipples-crop-top is white themed: decide yes.

To decide which number is the initial outrage of (C - nipples-crop-top):
	decide on 7.

A gropability rule:
	if nipples-crop-top is worn and breasts is lewdly exposed, now the gropability of breasts is 9999.

Crop Top ends here.
