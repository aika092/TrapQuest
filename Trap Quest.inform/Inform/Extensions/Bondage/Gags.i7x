Gags by Bondage begins here.

A ballgag is a kind of bondage. A ballgag is usually unique. A ballgag is usually leather. The text-shortcut of ballgag is "gag". Understand "gag" as ballgag.

[!<YourselfIsGagged>+

REQUIRES COMMENTING

+!]
Definition: yourself is gagged:
	repeat with C running through worn ballgags:
		if C is not penetrating face, now C is penetrating face; [Failsafe that should pick up bugs and fix them]
		decide yes;
	decide no.

To decide which number is the initial outrage of (C - a small ballgag):
	decide on 9.

To decide which number is the initial outrage of (C - a large ballgag):
	decide on 9.

To decide which number is the initial outrage of (C - a huge ballgag):
	decide on 10.

To decide which number is the intelligence-influence of (C - a small ballgag):
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

A small ballgag is a kind of ballgag. There are 1 small ballgags. The printed name of small ballgag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]small ballgag[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of small ballgag is "sga".
A large ballgag is a kind of ballgag. There are 1 large ballgags. The printed name of large ballgag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]large ballgag[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of large ballgag is "lga".
A huge ballgag is a kind of ballgag. There are 1 huge ballgags. The printed name of huge ballgag is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]huge ballgag[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of ballgag is "hga".

To compute SelfExamineDesc of (C - a ballgag):
	say "You are unable to speak due to your mouth being filled by [ShortDesc of C]. ".

To say ShortDesc of (C - a ballgag):
	say "ballgag".


Figure of small ballgag is the file "ballgag1.png".
Figure of large ballgag is the file "ballgag2.png".
Figure of huge ballgag is the file "ballgag3.png".

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


Definition: A ballgag (called B) is fetish appropriate:
	if diaper quest is 1, decide no;
	decide yes.

Include Pacifiers by Bondage.



Chapter - Wearability

ballgag wearability rules is a rulebook. The wearability rules of ballgag is usually ballgag wearability rules.

This is the ballgag already worn rule:
	repeat with O running through worn ballgag:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The ballgag already worn rule is listed in the ballgag wearability rules.

This is the mouth already full rule:
	if face is actually occupied:
		if summoning is 0, say "Your mouth is already occupied.";
		rule fails.
The mouth already full rule is listed in the ballgag wearability rules.


Gags ends here.

