Gags by Bondage begins here.

A gag is a kind of bondage. A gag is usually unique. A gag is usually leather. The text-shortcut of gag is "gag". Understand "gag" as gag.

A ballgag is a kind of gag.

[!<YourselfIsGagged>+

REQUIRES COMMENTING

+!]
Definition: yourself is gagged:[Refers specifically to gags that occupy face]
	repeat with C running through worn gags:
		if C is ringagged:
			if C is penetrating face, now C is not penetrating face; [Failsafe that should pick up bugs and fix them]
		otherwise:
			if C is not penetrating face, now C is penetrating face; [Failsafe that should pick up bugs and fix them]
			decide yes;
	decide no.

To decide which number is the initial outrage of (C - a small ballgag):
	decide on 6.

To decide which number is the initial outrage of (C - a large ballgag):
	decide on 8.

To decide which number is the initial outrage of (C - a huge ballgag):
	decide on 10.

To decide which number is the intelligence-influence of (C - a ballgag):
	let S be -1;
	increase S by the magic-modifier of C;
	decide on S.

To decide which number is the intelligence-influence of (C - a large ballgag):
	let S be -2;
	increase S by the magic-modifier of C;
	decide on S.

To decide which number is the intelligence-influence of (C - a huge ballgag):
	let S be -4;
	increase S by the magic-modifier of C;
	decide on S.

A small ballgag is a kind of ballgag. There is 1 small ballgag. The printed name of small ballgag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]small ballgag[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of small ballgag is "sga".
A large ballgag is a kind of ballgag. There is 1 large ballgag. The printed name of large ballgag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]large ballgag[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of large ballgag is "lga".
A huge ballgag is a kind of ballgag. There is 1 huge ballgag. The printed name of huge ballgag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]huge ballgag[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of ballgag is "hga".

To compute SelfExamineDesc of (C - a ballgag):
	say "You are unable to speak due to your mouth being filled by [ShortDesc of C]. ".

To say ShortDesc of (C - a ballgag):
	say "ballgag".


Figure of small ballgag is the file "Items/Accessories/Head/ballgag1.png".
Figure of large ballgag is the file "Items/Accessories/Head/ballgag2.png".
Figure of huge ballgag is the file "Items/Accessories/Head/ballgag3.png".

To decide which figure-name is clothing-image of (C - a small ballgag):
	decide on figure of small ballgag.

To decide which figure-name is clothing-image of (C - a large ballgag):
	decide on figure of large ballgag.

To decide which figure-name is clothing-image of (C - a huge ballgag):
	decide on figure of huge ballgag.

To say ClothingDesc of (C - a small ballgag):
	say "This small red ballgag stops you from speaking but without stretching your jaw too badly in the process.".
	
To say ClothingDesc of (C - a large ballgag):
	say "This large white ballgag stops you from speaking and keeps your jaw constantly stretched.[if item described is worn by the player]This constant aching makes it harder to concentrate.[end if]".
	
To say ClothingDesc of (C - a huge ballgag):
	say "This enormous red ballgag stops you from speaking and keeps your jaw locked as wide as it could ever possibly go.[if C is worn by the player]Your mind is so fixed on the uncomfortable and constant aching of your mouth that you struggle to think about anything else.[end if]".

To decide which object is the potential-upgrade-target of (C - a small ballgag):
	decide on a random off-stage large ballgag.
To decide which object is the unique-upgrade-target of (C - a small ballgag):
	if there is worn swimwear clothing and there is an off-stage rubber duck gag, decide on a random off-stage rubber duck gag;
	if diaper quest is 1, decide on a random off-stage baby pacifier;
	decide on nothing.
Definition: a small ballgag (called C) is untransformable:
	if the potential-upgrade-target of C is a thing or the unique-upgrade-target of C is a thing, decide no;
	decide yes.

To decide which object is the potential-upgrade-target of (C - a large ballgag):
	decide on a random off-stage huge ballgag.
To decide which object is the unique-upgrade-target of (C - a large ballgag):
	if diaper quest is 1, decide on a random off-stage baby pacifier;
	decide on nothing.
Definition: a large ballgag (called C) is untransformable:
	if the potential-upgrade-target of C is a thing or the unique-upgrade-target of C is a thing, decide no;
	decide yes.

Definition: A ballgag (called B) is fetish appropriate:
	if diaper quest is 1, decide no;
	if B is huge ballgag or B is large ballgag and there is an off-stage small ballgag, decide no;
	decide yes.

Include Pacifiers by Bondage.
Include Puppy Gag by Bondage.
Include Rubber Duck Gag by Bondage.
Include Ring Gag by Bondage.


Chapter - Wearability

gag wearability rules is a rulebook. The wearability rules of gag is usually gag wearability rules.

This is the gag already worn rule:
	repeat with O running through worn gags:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The gag already worn rule is listed in the gag wearability rules.

This is the mouth already full rule:
	if face is actually occupied:
		if summoning is 0, say "Your mouth is [if wearing-target is ringagged]currently[otherwise]already[end if] occupied.";
		rule fails.
The mouth already full rule is listed in the gag wearability rules.

Gags ends here.

