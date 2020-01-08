Needle Trap by Traps begins here.

Figure of Needle Cutscene 1 is the file "Special/Cutscene/cutscene-dart-breasts1.png".
Figure of Needle Cutscene 2 is the file "Special/Cutscene/cutscene-dart-breasts2.png".
Figure of Needle Cutscene 3 is the file "Special/Cutscene/cutscene-dart-breasts3.png".
Figure of Needle Cutscene 4 is the file "Special/Cutscene/cutscene-dart-hips1.png".
Figure of Needle Cutscene 5 is the file "Special/Cutscene/cutscene-dart-hips2.png".
Figure of Needle Cutscene 6 is the file "Special/Cutscene/cutscene-dart-hips3.png".

A needle trap is a kind of trap. There are 22 potentially pressure potentially sticky potentially click potentially wire needle traps.

This is the spawn initial dungeon needle traps rule:
	repeat with N running from 1 to 4:
		let R be a random trappable placed labyrinth room;
		let T be a random off-stage needle trap;
		unless there is a needle trap in R, deploy T in R.
The spawn initial dungeon needle traps rule is listed first in the set up dungeon traps rules.

This is the spawn initial woods needle traps rule:
	repeat with N running from 1 to 3:
		let R be a random trappable placed jungle room;
		let T be a random off-stage needle trap;
		unless there is a needle trap in R, deploy T in R.
The spawn initial woods needle traps rule is listed first in the set up woods traps rules.

This is the spawn initial hotel needle traps rule:
	repeat with N running from 1 to 2:
		let R be a random trappable placed modern room;
		let T be a random off-stage needle trap;
		unless there is a needle trap in R, deploy T in R.
The spawn initial hotel needle traps rule is listed first in the set up hotel traps rules.

This is the spawn initial mansion needle traps rule:
	repeat with N running from 1 to 2:
		let R be a random trappable placed haunted room;
		let T be a random off-stage needle trap;
		unless there is a needle trap in R, deploy T in R.
The spawn initial mansion needle traps rule is listed first in the set up mansion traps rules.

To trigger (Y - a needle trap):
	now Y is not untriggered;
	now Y is not untriggered;
	now the reset-timer of Y is 250;
	let X be a random number between 1 and 3;
	let target-body-part be nothing;
	if X is 1:
		now target-body-part is breasts;
	otherwise if X is 2:
		now target-body-part is belly;
		if lactation fetish is 1, now target-body-part is breasts;
	otherwise:
		now target-body-part is hips;
	if the latex-transformation of the player > 0, now target-body-part is breasts;
	if the player is a flatchested trap or the player is prone or diaper quest is 1 or tutorial is 1, now target-body-part is hips;
	say "A tiny needle shoots out of [if playerRegion is Dungeon]the stone wall[otherwise if playerRegion is Woods]a tree[otherwise]a tiny hole in the wall[end if] and towards your [if target-body-part is breasts][BreastDesc][otherwise if target-body-part is belly]side[otherwise if the player is prone]butt cheek[otherwise]hip[end if]. ";
	compute Y injecting into target-body-part;
	repeat with M running through reactive monsters:
		say NeedleTrapReactFlav of M.


To compute (Y - a needle trap) injecting into (X - breasts):
	let R be a random number between 1 and 7;
	let needle-blocker be nothing;
	if R is 7:
		now needle-blocker is a random worn fully covering clothing;
		now needle-blocker is a random worn fully covering currently uncovered clothing; [Top layer takes priority]
	if R is 6:
		now needle-blocker is a random worn high cut or higher clothing;
		now needle-blocker is a random worn high cut or higher currently uncovered clothing; [Top layer takes priority]
	if R is 5:
		now needle-blocker is a random worn average cut or higher clothing;
		now needle-blocker is a random worn average cut or higher currently uncovered clothing; [Top layer takes priority]
	if R is 4:
		now needle-blocker is a random worn low cut or higher clothing;
		now needle-blocker is a random worn low cut or higher currently uncovered clothing; [Top layer takes priority]
	if R is 3:
		now needle-blocker is a random worn very low cut or higher clothing;
		now needle-blocker is a random worn very low cut or higher currently uncovered clothing; [Top layer takes priority]
	if R is 2:
		now needle-blocker is a random worn ridiculously low cut or higher clothing;
		now needle-blocker is a random worn ridiculously low cut or higher currently uncovered clothing; [Top layer takes priority]
	[R being 1 is an automatic hit]
	if needle-blocker is clothing:
		say "The needle is blocked by your [ShortDesc of needle-blocker]! Phew!";
	otherwise if the latex-transformation of the player > 0 or inflation fetish is 1 and a random number between 1 and 2 is 1:
		say "Owww, that really hurt! You watch the large balloon at the back end of the needle empty a lot of air into your breasts.[unless the player is top heavy]They inflate as if they were also made of stretchy rubber![end if]";
		BustInflate a random number between 4 and 6;
		cutscene needle breasts;
		NeedleDelicateUp;
	otherwise if lactation fetish is 1 and a random number between 1 and 2 is 1:
		say "Owww, that really hurt! You watch the capsule at the end of the needle empty a mysterious serum into your breasts. [one of]They feel more... active.[or]They feel more... productive.[or]Your lactation rate has been increased again![stopping]";
		increase the lactation rate of the player by 1;
		cutscene needle breasts;
		NeedleDelicateUp;
	otherwise if lactation fetish is 1:
		say "Owww, that really hurt! You watch the capsule at the end of the needle empty what looks like a lot of [milk] into your breasts.[unless the player is top heavy]They visibly swell.[end if]";
		Milkup a random number between 2 and 4;
		cutscene needle breasts;
		NeedleDelicateUp;
	otherwise:
		say "Owww, that really hurt! You take it out and notice that it has an empty capsule at the end you're holding. It looks like it injected you with something?";
		Bustup 1;
		cutscene needle breasts;
		NeedleDelicateUp.

To cutscene needle breasts:
	if the largeness of breasts < 6:
		cutshow figure of needle cutscene 1 for breasts;
	otherwise if the largeness of breasts < 10:
		cutshow figure of needle cutscene 2 for breasts;
	otherwise:
		cutshow figure of needle cutscene 3 for breasts.


To compute (Y - a needle trap) injecting into (X - belly):
	let needle-blocker be nothing;
	if 1 <= the number of worn belly covering clothing, now needle-blocker is a random worn belly covering currently uncovered clothing;
	if needle-blocker is clothing:
		say "The needle is blocked by your [ShortDesc of needle-blocker]! Phew!";
	otherwise:
		say "Owww, that really hurt! You take it out and notice that it has an empty capsule at the end you're holding. It looks like it injected you with something?";
		NeedleDelicateUp;
		Bustup 1.

To compute (Y - a needle trap) injecting into (X - hips):
	let needle-blocker be nothing;
	if the player is upright:
		let R be a random number between 1 and 3;
		repeat with C running through worn skirted clothing:
			if R is 3, now needle-blocker is C;
			if C is knee-length or longer and C is crotch-in-place, now needle-blocker is C;
	if needle-blocker is nothing:
		repeat with C running through worn crotch-in-place crotch covering clothing:
			if a random number between 0 and the armour of C > 5, now needle-blocker is C;
	if needle-blocker is clothing and tutorial is 0:
		say "The needle is blocked by your [ShortDesc of needle-blocker]! Phew!";
	otherwise if diaper quest is 1:
		if a random number between 1 and 2 is 1 and tutorial is 0:
			say "Owww, that really hurt! You watch the large balloon at the back end of the needle empty a lot of liquid into your body[one of]. That can't be good...[or].[stopping]";
			BladderUp 5;
			if rectum > 0, increase rectum by 2;
			cutscene needle hips;
			NeedleDelicateUp;
		otherwise:
			say "Owww, that really hurt! And yet you can [one of]feel whatever it injected into you making you feel hotter and more flustered...[or]still feel the injected aphrodisiac making you hornier![stopping]";
			Arouse 2500;
			cutscene needle hips;
			NeedleDelicateUp;
	otherwise if inflation fetish is 1 and a random number between 1 and 2 is 1 and tutorial is 0:
		say "Owww, that really hurt! You watch the large balloon at the back end of the needle empty a lot of air into your ass cheeks. They inflate as if they were also made of stretchy rubber!";
		AssInflate a random number between 4 and 6;
		cutscene needle hips;
		NeedleDelicateUp;
	otherwise:
		say "Owww, that really hurt!! You take it out and notice that it has an empty capsule at the end you're holding. It looks like it injected you with something?";
		cutscene needle hips;
		NeedleDelicateUp;
		HipUp 1.

To cutscene needle hips:
	if the thickness of hips < 4:
		cutshow figure of needle cutscene 4 for hips;
	otherwise if the thickness of hips < 7 or the player is male:
		cutshow figure of needle cutscene 5 for hips;
	otherwise:
		cutshow figure of needle cutscene 6 for hips.

Definition: a clothing (called C) is short or longer:
	if C is skirted and C is not super-short, decide yes;
	decide no.

Definition: a clothing (called C) is knee-length or longer:
	if C is knee-length or C is hobble-skirted, decide yes;
	decide no.

Definition: a clothing (called C) is knee-length or shorter:
	if C is skirted and C is not hobble-skirted, decide yes;
	decide no.

Definition: a clothing (called C) is short or shorter:
	if C is knee-length or longer, decide no;
	decide yes.

To NeedleDelicateUp:
	if a random number between the delicateness of the player and 10 < 9, PainUp 1.

To say NeedleTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.

Needle Trap ends here.

