Diaper Covers by Knickers begins here.


diaper cover is a kind of clothing.  The armour of diaper cover is 10.  A diaper cover is usually manly.  A diaper cover is usually crotch-intact.  A diaper cover is usually crotch-intact.  A diaper cover is usually polyester.  A diaper cover is usually rare. The soak-limit of a diaper cover is usually 24.  A diaper cover is usually diaper-addiction-influencing.

Definition: a diaper cover (called D) is fetish appropriate:
	if diaper lover >= 1, decide yes;
	decide no.

Definition: a diaper cover (called C) is product:
	if diaper quest is 0, decide no;
	decide yes.

To decide which number is the alchemy key of (C - a diaper cover):
	if diaper quest is 0, decide on 0;
	decide on 18.

Definition: a diaper cover (called C) is recipe specific:
	decide yes.

To compute recipe specific cursing of (T - a diaper cover):
	if the noun is knickers:
		if the urine-soak of T > 0 and T is diaper:
			now T is blessed;
		otherwise if the urine-soak of T > 0:
			now T is bland;
		otherwise:
			now T is cursed;
			now T is bed wetting;
	otherwise:
		now T is bed wetting;
		now T is cursed.

To decide what number is the price of (C - a diaper cover):
	decide on 2.

The printed name of diaper cover is usually "[TQlink of item described][clothing-title-before]diaper cover[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of diaper cover is "dc".

To say ShortDesc of (C - a diaper cover):
	say selfexamineuniquetitle of C.

To say ClothingDesc of (C - a diaper cover):
	say "A large diaper cover, that [if C is worn]completely covers[otherwise]could completely cover[end if] your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if].  [if C is worn and there is a worn diaper]You can feel it making it much easier to walk in your nappy.[end if]".

To compute SelfExamineDesc of (K - a diaper cover):
	say "A large [selfexamineuniquetitle of K] completely covers your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if].  ".

To say selfexamineuniquetitle of (K - a diaper cover):
	say "diaper cover".

To uniquely set up (K - a diaper cover):
	repair K;
	if diaper lover >= 1 and a random number between 1 and 8 is 1, now K is bed wetting;
	set up magic state of K.

[To restock (C - a diaper cover):
	let B be a random basic loot diaper cover;
	if B is diaper cover, now B is in Standard Item Pen.

This is the setup starting diaper cover rule:
	if diaper lover >= 1:
		let C be a random diaper cover;
		restock C.
The setup starting diaper cover rule is listed in the setup starting items rules.]

A frilly white diaper cover is a kind of diaper cover. There is 1 frilly white diaper cover.

The printed name of frilly white diaper cover is usually "[TQlink of item described][clothing-title-before]frilly white diaper cover[clothing-title-after][TQxlink of item described][verb-desc of item described]".

Figure of frilly white diaper cover is the file "diapercover1.png".

To decide which figure-name is clothing-image of (C - a frilly white diaper cover):
	decide on figure of frilly white diaper cover.

To say ClothingDesc of (C - a frilly white diaper cover):
	say "A large frilly white diaper cover, that [if C is worn]completely covers[otherwise]could completely cover[end if] your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if].".

To compute SelfExamineDesc of (K - a frilly white diaper cover):
	say "A large [selfexamineuniquetitle of K] completely covers your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if].  ".

To say selfexamineuniquetitle of (K - a frilly white diaper cover):
	say "frilly white diaper cover".

A teddy bear diaper cover is a kind of diaper cover.  A teddy bear diaper cover is usually cotton. There is 1 teddy bear diaper cover.

The printed name of teddy bear diaper cover is usually "[TQlink of item described][clothing-title-before]teddy bear diaper cover[clothing-title-after][TQxlink of item described][verb-desc of item described]".

Figure of teddy bear diaper cover is the file "diapercover2.png".

To decide which figure-name is clothing-image of (C - a teddy bear diaper cover):
	decide on figure of teddy bear diaper cover.

To say ClothingDesc of (C - a teddy bear diaper cover):
	say "A cosy pink cotton diaper cover with a teddy bear on the backside. It [if C is worn]completely covers[otherwise]could completely cover[end if] your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if].".

To compute SelfExamineDesc of (K - a teddy bear diaper cover):
	say "A large [selfexamineuniquetitle of K] completely covers your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if].  ".

To say selfexamineuniquetitle of (K - a teddy bear diaper cover):
	say "pink teddy bear diaper cover".

Chapter 1 Wearability

diaper cover wearability rules is a rulebook.  The wearability rules of a diaper cover is usually diaper cover wearability rules.

This is the diaper cover already worn rule:
	repeat with O running through worn diaper covers:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The diaper cover already worn rule is listed in the diaper cover wearability rules.

This is the diaper covers disabled rule:
	if diaper lover <= 0 and wearing-target is diaper cover:
		if summoning is 0, say "You can't wear this, you should even be able to see this, whoops!  Please report the bug.";
		rule fails.
The diaper covers disabled rule is listed in the diaper cover wearability rules.


This is the diaper cover overdress clash rule:
	if summoning is 0:
		repeat with C running through worn crotch covering overdresses:
			say "You can't wear that over your [printed name of C]!";
			rule fails.
The diaper cover overdress clash rule is listed in the diaper cover wearability rules.

This is the diaper cover only goes over diapers rule:
	if the number of worn diapers is 0:
		if summoning is 0, say "Why would you wear this if you're not wearing a diaper?";
		rule fails.
The diaper cover only goes over diapers rule is listed in the diaper cover wearability rules.

This is the diaper cover can't go over waddle diapers rule:
	if there is a worn waddle diaper:
		if summoning is 0, say "That diaper is way too big to fit a cover over!";
		rule fails.
The diaper cover can't go over waddle diapers rule is listed in the diaper cover wearability rules.


Diaper Covers ends here.
