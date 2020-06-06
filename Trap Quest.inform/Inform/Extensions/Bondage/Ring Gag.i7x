Ring Gag by Bondage begins here.

An opengag is a kind of gag. Understand "ring", "ring gag" as opengag. An opengag is usually metal.

To say ShortDesc of (C - a opengag):
	say "gag ring".

Figure of ring gag is the file "Items/Accessories/Head/ringgag1.png".
Figure of lips gag is the file "Items/Accessories/Head/lipsgag1.png".
Figure of dental gag is the file "Items/Accessories/Head/dentalgag1.png".

Definition: an opengag is ringagged: decide yes.

To decide which number is the initial outrage of (C - an opengag):
	decide on 9.

This is the ring exclusivity rule:
	if there is a worn ringagged clothing and wearing-target is opengag:
		if summoning is 0 and autowear is false, say "You can't wear that because you're already wearing the [ShortDesc of a random worn ringagged clothing]!";
		rule fails.
The ring exclusivity rule is listed in the gag wearability rules.

This is the ring prevents speech rule:
	if there is a worn ringagged clothing, rule fails.
The ring prevents speech rule is listed in the player speech rules.

dental gag is an opengag. The printed name of dental gag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]dental gag[clothing-title-after]". The text-shortcut of dental gag is "dga".

ring gag is an opengag. The printed name of ring gag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]ring gag[clothing-title-after]". The text-shortcut of ring gag is "rga".

lip gag is an opengag. The printed name of lip gag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]lip gag[clothing-title-after]". The text-shortcut of lip gag is "lgg". lip gag is leather.

To decide which figure-name is clothing-image of (C - an opengag):
	decide on figure of ring gag.
Definition: ring gag is black themed: decide yes.
Definition: ring gag is grey themed: decide yes.

To decide which figure-name is clothing-image of (C - lip gag):
	decide on figure of lips gag.
Definition: lip gag is pink themed: decide yes.

To decide which figure-name is clothing-image of (C - dental gag):
	decide on figure of dental gag.
Definition: dental gag is grey themed: decide yes.

To say ClothingDesc of (C - dental gag):
	say "This large metal ring [if C is worn by the player]is anchored in by a pair of metal tines, forcing your jaws to stay wide open. Your mind is so fixed on the constant aching of your mouth that you struggle to think about anything else[otherwise]would anchor in with a pair of metal tines, forcing your jaws to stay wide open at all times[end if].".

To say ClothingDesc of (C - ring gag):
	say "This small ring shaped gag stops you from speaking and keeps your mouth open but without stretching your jaw too badly in the process. Some spider shaped metal prongs keep the gag in place and make it look even more fetishy.".

To say ClothingDesc of (C - lip gag):
	say "This rigid ring has a pair of plump red lips sculpted into the front, preventing you from closing your mouth and making you look like a slutty tart.".

To decide which number is the intelligence-influence of (C - an opengag):
	let S be -1;
	increase S by the magic-modifier of C;
	decide on S.

To decide which number is the intelligence-influence of (C - dental gag):
	let S be -4;
	increase S by the magic-modifier of C;
	decide on S.

To decide which number is the perceived-bimbo-influence of (C - lip gag):
	decide on 1.

Definition: a ring gag is fetish appropriate: decide no. [Never appears randomly]

Part - Smoothie Predicament Stuff

[Can't go in Predicament World as that extension is defined before clothing!]

smoothie-apron is an overdress. smoothie-apron is arm exposing. smoothie-apron is fully covering. smoothie-apron is unique.
The printed name of smoothie-apron is "[clothing-title-before]apron[clothing-title-after]". Understand "apron" as smoothie-apron. The text-shortcut of smoothie-apron is "aprn".
Definition: smoothie-apron is green themed: decide yes.
Figure of smoothie-apron is the file "Items/Clothes/Upper/Exposing/apron1.png".
To decide which figure-name is clothing-image of (C - smoothie-apron):
	decide on figure of smoothie-apron.
To say ClothingDesc of (C - smoothie-apron):
	say "A green apron with a small white shirt underneath. It only covers your front, so it only conceals whether you are standing in a giant thick super-messy nappy when you are standing with your back to a wall, e.g. in the smoothie van.".
Definition: smoothie-apron is potentially-bottom-layer-concealing if the player is in Predicament03. [While the player is in the smoothie van only]
Definition: smoothie-apron is skirt-covering-crotch if the player is in Predicament03. [While the player is in the smoothie van only]
Definition: smoothie-apron is potentially penis covering if the player is in Predicament03 or the number of worn crotch-in-place undies > 0. [While the player is in the smoothie van only]
Definition: smoothie-apron is potentially at least partially penis concealing if the player is in Predicament03 or the number of worn crotch-in-place undies > 0. [While the player is in the smoothie van only]
Definition: smoothie-apron is potentially erection concealing: decide yes. [non-tight skirts conceal erections]
To say ShortDesc of (C - smoothie-apron):
	say "green apron".

smoothie gag is an opengag. The printed name of smoothie gag is "[TQlink of item described][item style]tube gag[clothing-title-after]". The text-shortcut of smoothie gag is "tga". Understand "tube" as smoothie gag.
Figure of tube gag is the file "Items/Accessories/Head/tubegag1.jpg".
To decide which figure-name is clothing-image of (C - smoothie gag):
	decide on figure of tube gag.
To say ClothingDesc of (C - smoothie gag):
	say "This small ring shaped gag stops you from speaking clearly and keeps your mouth open but without stretching your jaw too badly in the process. It is attached to a tube, which is attached to a funnel which people could poor things down to forcefeed you.".
To decide which number is the initial outrage of (C - smoothie gag):
	decide on 1.
To decide which number is the initial cringe of (C - smoothie gag):
	decide on 1.
Carry out taking off smoothie gag:
	repeat with M running through interested bystanders:
		now M is not interested.

Ring Gag ends here.
