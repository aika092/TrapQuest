Ring Gag by Bondage begins here.

An opengag is a kind of gag. Understand "ring", "ring gag" as opengag. An opengag is usually metal.

To say ShortDesc of (C - a opengag):
	say "gag ring".

Figure of ring gag is the file "Items\Accessories\Head\ringgag1.png".
Figure of lips gag is the file "Items\Accessories\Head\lipsgag1.jpg".
Figure of dental gag is the file "Items\Accessories\Head\dentalgag1.png".

To decide which figure-name is clothing-image of (C - an opengag):
	decide on figure of ring gag.

To decide which figure-name is clothing-image of (C - lip gag):
	decide on figure of lips gag.

To decide which figure-name is clothing-image of (C - dental gag):
	decide on figure of dental gag.

Definition: an opengag (called C) is untransformable:
	decide yes.

Definition: an opengag (called C) is ringagged:
	decide yes.

To decide which number is the initial outrage of (C - an opengag):
	decide on 6.

This is the ring exclusivity rule:
	if there is a worn ringagged clothing and wearing-target is opengag:
		if summoning is 0, say "You can't wear that because you're already wearing the [ShortDesc of a random worn ringagged clothing]!";
		rule fails.
The ring exclusivity rule is listed in the gag wearability rules.

This is the ring prevents speech rule:
	if there is a worn ringagged clothing, rule fails.
The ring prevents speech rule is listed in the player speech rules.

dental gag is an opengag. The printed name of dental gag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]dental gag[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of dental gag is "dga".

ring gag is an opengag. The printed name of ring gag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]ring gag[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of ring gag is "rga".

lip gag is an opengag. The printed name of lip gag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]lip gag[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of lip gag is "lga". lip gag is leather.

To say ClothingDesc of (C - dental gag):
	say "This large metal ring [if C is worn by the player]is anchored in by a pair of metal tines, forcing your jaw to stay wide open. Your mind is so fixed on the contant aching of your mouth that you struggle to think about anything else[otherwise]would anchor in with a pair of metal tines, forcing your jaw to stay wide open at all times[end if].".
	
To say ClothingDesc of (C - ring gag):
	say "This small ring shaped gag stops you from speaking and keeps your mouth open but without stretching your jaw too badly in the process. Some spider shaped metal prongs keep the gag in place and make it look even more fetishy.".
	
To say ClothingDesc of (C - lip gag):
	say "This rigid ring has a pair of plump red lips sculpted into the front, preventing you from closing yourt mouth and making you look like a slutty tart.".

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

Definition: a ring gag (called B) is fetish appropriate:
	decide no. [Never appears randomly]


Ring Gag ends here.
