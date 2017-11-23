Skirts Framework by Skirts begins here.

A skirt is a kind of clothing.  A skirt is usually knee-length.  Understand "skirt" as skirt. The soak-limit of a skirt is usually 16.

To decide which number is the initial outrage of (C - a skirt):
	decide on 2;

To uniquely set up (S - a skirt):
	set up magic state of S;
	unless S is unique:
		let R be a random number between 1 and 7;
		if R is 1, now the magic-type of S is confidence;
		if R is 2, now the magic-type of S is endurance;
		if R is 3:
			now the magic-type of S is temptation;
			if diaper quest is 1, now S is respiration;
		if R is 4, now the magic-type of S is dressup;
		if R >= 5 and S is super-short or S is actually sheer, now the magic-type of S is protection;
		if R is 3, curse S;
	now the raw-magic-modifier of S is 0.

To restock (C - a skirt):
	let B be a random basic loot skirt;
	if B is skirt, now B is in Standard Item Pen.

This is the setup starting skirts rule:
	let C be a random skirt;
	repeat with N running from 1 to 2:
		restock C.
The setup starting skirts rule is listed in the setup starting items rules.

To set up influence of (C - a skirt):
	set up random-based influence of C.

Report examining skirts:
	if newbie tips is 1, say "Skirts [if the noun is super-short or the noun is unskirted](but not this one!) [end if]can sometimes help with your modesty.".

Definition: a skirt (called S) is displacable:
	if S is hobble-skirted, decide yes;
	if S is knee-length, decide yes;
	decide no.

This is the remove inappropriate skirts rule:
	repeat with B running through microskirts:
		unless B is tartan microskirt or B is pink microskirt, now B is in Holding Pen;
	repeat with B running through sequins belts:
		now B is in Holding Pen;
	repeat with B running through chainmail skirts:
		now B is in Holding Pen;
	repeat with B running through rubber skirts:
		now B is in Holding Pen.
The remove inappropriate skirts rule is listed in the diaper quest fix rules.

To compute SelfExamineDesc of (S - a skirt):
	say "A [ShortDesc of S] hangs down from your waist.".

To say ShortDesc of (S - a skirt):
	say "skirt".

To say ShortestDesc of (C - a skirt):
	say "skirt".

Definition: a clothing (called C) is skirt-covering-crotch: [does it protect the visibility of asshole]
	if C is skirted:
		if C is super-short or C is crotch-assless, decide no; [tiny skirts don't protect anything]
		if C is worn: [We only care about these checks if it's already worn; a kneeling player should still be happy to wear a short skirt because it CAN protected them once they stand back up]
			if the player is prone and C is short, decide no; [short skirts don't protect you unless you're standing.]
			if C is crotch-displaced or C is crotch-unzipped, decide no; [if it's raised up it is currently not covering stuff] 
		if C is crotch covering and (C is no protection or C is pussy protection), decide no; [ripped hobble skirt, or crotch only]
		decide yes;
	decide no.

Definition: a skirt (called C) is ingredient:
	decide yes.

To decide which number is the crafting key of (C - a skirt):
	decide on 54.
	

Chapter - Wearability

Check wearing gown of purity:
	if the virgin of the player is 0, say "The latches of the belt refuse to close!  It's almost as if the 'gown' is refusing to let you wear it..." instead;

skirt wearability rules is a rulebook.  The wearability rules of skirt is usually skirt wearability rules.

This is the skirt already worn rule:
	repeat with O running through worn skirts:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The skirt already worn rule is listed in the skirt wearability rules.

This is the overdress skirts clash rule:
	if wearing-target is skirted or wearing-target is crotch covering:
		repeat with C running through worn skirted skirts:
			if summoning is 0, say "[if wearing-target is skirted]You can't wear that over[otherwise]You would feel a bit stupid wearing that at the same time as[end if] your [printed name of C]!";
			rule fails.
The overdress skirts clash rule is listed in the overdress wearability rules.

Check taking off worn skirt:
	if the noun is living belt of sturdiness:
		if the noun is penetrating a fuckhole, say "You're going to have to find some way to remove it from your insides first!" instead;


Skirts Framework ends here.
