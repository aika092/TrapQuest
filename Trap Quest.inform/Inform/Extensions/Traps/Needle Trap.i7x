Needle Trap by Traps begins here.

Figure of Needle Cutscene 1 is the file "Special/Cutscene/cutscene-dart-breasts1.png".
Figure of Needle Cutscene 2 is the file "Special/Cutscene/cutscene-dart-breasts2.png".
Figure of Needle Cutscene 3 is the file "Special/Cutscene/cutscene-dart-breasts3.png".
Figure of Needle Cutscene 4 is the file "Special/Cutscene/cutscene-dart-hips1.png".
Figure of Needle Cutscene 5 is the file "Special/Cutscene/cutscene-dart-hips2.png".
Figure of Needle Cutscene 6 is the file "Special/Cutscene/cutscene-dart-hips3.png".

A needle trap is a kind of trap. There are 4 potentially pressure potentially sticky potentially click potentially wire needle traps.


This is the spawn initial woods needle traps rule:
	repeat with N running from 1 to 4:
		let R be a random trappable placed jungle room;
		let T be a random off-stage needle trap;
		unless there is a needle trap in R, deploy T in R.
The spawn initial woods needle traps rule is listed first in the set up woods traps rules.

To trigger (Y - a needle trap):
	now Y is not untriggered;
	now Y is not untriggered;
	now the reset-timer of Y is 250;
	let C be a random worn drinkable condom pinned clothing;
	if bukkake fetish is 1 and C is clothing and the player is getting unlucky:
		say "A tiny needle shoots out of [if playerRegion is Dungeon]the stone wall[otherwise if playerRegion is Woods]a tree[otherwise]a tiny hole in the wall[end if] and towards your [ShortDesc of C]! By sheer bad luck, the needle strikes [if the used condoms of C > 1]one of the condoms[otherwise]the condom[end if] pinned to it. It ruptures and bursts!";
		if the used condoms of C > 0:
			increase the empty condoms of C by 1;
			decrease the used condoms of C by 1;
		UnannouncedSquirt semen on C by 4;
		say GotUnluckyFlav;
	otherwise:
		let X be a random number between 1 and 3;
		let target-body-part be nothing;
		if X is 1:
			now target-body-part is breasts;
		otherwise if X is 2:
			now target-body-part is belly;
			if lactation fetish is 1 and diaper lover is 0, now target-body-part is breasts;
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
	otherwise if diaper lover > 0:
		say "You feel weirdly numb on the inside. Whatever you were injected with has made you temporarily incontinent![line break][variable custom style]Uh-oh...[roman type][line break]";
		increase temporary-incontinence by 2;
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
	otherwise if tutorial is 0 and fast TG is 3 and the size of penis <= min penis size and the player is possessing a penis:
		say "Owww, that really hurt! Your [AssDesc] and [ShortDesc of penis] glow pink for a moment. ";
		PenisDown 1;
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
	otherwise if the thickness of hips < 7 or the player is not possessing a vagina:
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


Part - Rune Trap

A rune trap is a kind of trap. A rune trap is potentially pressure. The printed name of a rune trap is "[TQlink of item described]magic rune pressure plate trap[TQxlink of item described][verb-desc of item described]". Understand "magic rune", "pressure", "plate" as a rune trap. The text-shortcut of a rune trap is usually "rt".

To say ExamineDesc of (T - a rune trap):
	say "This paving stone had a magic rune implanted in it, which triggered when you stepped on it. Stepping on it again when it's already in this revealed state doesn't do anything.".

To decide which figure-name is the triggered-image of (T - a rune trap):
	decide on the examine-image of T.

This is the spawn initial dungeon rune traps rule:
	repeat with T running through off-stage fetish appropriate rune traps:
		let failsafe be 50;
		while failsafe > 0:
			decrease failsafe by 1;
			let R be a random trappable placed labyrinth room;
			unless there is a rune trap in R or there is a pressure trap in R, deploy T in R.
The spawn initial dungeon rune traps rule is listed first in the set up dungeon traps rules.

To trigger (Y - a rune trap):
	now the player-motion of the player is 0;
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	cutshow the triggered-image of Y for Y;
	say "A magic rune appears on the stone slab! ";
	compute unique trigger of Y;
	compute trap reaction of Y.

To compute trap reaction of (Y - a rune trap):
	repeat with M running through reactive monsters:
		say RuneTrapReactFlav of M.

To compute unique trigger of (Y - a rune trap):
	say "But nothing happens. Weird! This must be a buggy trap.".

To say RuneTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.

breasts-rune-trap is a rune trap.

Definition: breasts-rune-trap is fetish appropriate:
	if max breast size is 1, decide no;
	if diaper quest is 0 or lactation fetish is 1, decide yes;
	decide no.

Figure of breasts rune trap is the file "Env/Dungeon/rune2a.jpg".
Figure of breasts rune trap triggered is the file "Env/Dungeon/rune2b.jpg".

To decide which figure-name is the examine-image of (T - breasts-rune-trap):
	decide on Figure of breasts rune trap.
To decide which figure-name is the triggered-image of (T - breasts-rune-trap):
	decide on Figure of breasts rune trap triggered.

To compute unique trigger of (Y - breasts-rune-trap):
	if the player is not top heavy:
		say "The magic surges to your breasts, causing them to swell!";
		BustUp 3;
	if lactation fetish is 1:
		if the milk volume of breasts < the milk capacity of breasts and the milk volume of breasts >= the milk capacity of breasts / 2 and the latex-transformation of the player <= 5:
			say "Your [BreastDesc] suddenly feel very heavy. You can tell they're absolutely full to the brim with milk!";
			MilkUp the milk capacity of breasts - the milk volume of breasts;
		otherwise:
			say "They feel more active: you can tell that your [if the lactation rate of the player > 0][BreastDesc] will produce milk faster now[otherwise]have started to produce milk over time[end if]!";
			increase the lactation rate of the player by 1.

balloon-rune-trap is a rune trap.

Definition: balloon-rune-trap is fetish appropriate:
	if inflation fetish is 1, decide yes;
	decide no.

Figure of balloon rune trap is the file "Env/Dungeon/rune1a.jpg".
Figure of balloon rune trap triggered is the file "Env/Dungeon/rune1b.jpg".

To decide which figure-name is the examine-image of (T - balloon-rune-trap):
	decide on Figure of balloon rune trap.
To decide which figure-name is the triggered-image of (T - balloon-rune-trap):
	decide on Figure of balloon rune trap triggered.

To compute unique trigger of (Y - balloon-rune-trap):
	if tough-shit is 1:
		say "Your entire body balloons outwards as you are filled with a lighter-than-air gas!";
		BustInflate 10;
		AssInflate 10;
		Assfill 20 air;
	otherwise:
		let R be a random number between 1 and 3;
		if R is 1 and the player is not top heavy:
			say "Your chest balloons outwards as it is filled with a lighter-than-air gas!";
			BustInflate 10;
		otherwise if R is 2 and the player is not bottom heavy:
			say "Your ass balloons outwards as it is filled with a lighter-than-air gas!";
			AssInflate 10;
		otherwise:
			say "Your belly balloons outwards as it is filled with a lighter-than-air gas!";
			Assfill 20 air.

To compute trap reaction of (Y - balloon-rune-trap):
	repeat with M running through reactive monsters:
		say BalloonRuneTrapReactFlav of M.

To say BalloonRuneTrapReactFlav of (M - a monster):
	say RuneTrapReactFlav of M.

fatigue-rune-trap is a rune trap.

Figure of fatigue rune trap is the file "Env/Dungeon/rune4a.jpg".
Figure of fatigue rune trap triggered is the file "Env/Dungeon/rune4b.jpg".

To decide which figure-name is the examine-image of (T - fatigue-rune-trap):
	decide on Figure of fatigue rune trap.
To decide which figure-name is the triggered-image of (T - fatigue-rune-trap):
	decide on Figure of fatigue rune trap triggered.

To compute unique trigger of (Y - fatigue-rune-trap):
	if tough-shit is 1:
		say "Your body is completely drained of energy[if the magic-fatigue of the player < the total magic power of the player] and magic[end if]! Uh-oh...";
		now the fatigue of the player is the buckle threshold of the player;
		now the magic-fatigue of the player is the total magic power of the player;
	otherwise:
		say "Your body is drained of lots of energy[if the magic-fatigue of the player < the total magic power of the player] and have lost some magical energy[end if]! Uh-oh...";
		FatigueUp the buckle threshold of the player / 2;
		if the fatigue of the player > the buckle threshold of the player, now the fatigue of the player is the buckle threshold of the player;
		increase the magic-fatigue of the player by 1 + (the total magic power of the player / 2). [We don't need to worry about this going over-the-top as this is handled at the start of MagicPowerRefresh]

shrink-rune-trap is a rune trap.

Figure of shrink rune trap is the file "Env/Dungeon/rune3a.jpg".
Figure of shrink rune trap triggered is the file "Env/Dungeon/rune3b.jpg".

To decide which figure-name is the examine-image of (T - shrink-rune-trap):
	decide on Figure of shrink rune trap.
To decide which figure-name is the triggered-image of (T - shrink-rune-trap):
	decide on Figure of shrink rune trap triggered.

To compute unique trigger of (Y - shrink-rune-trap):
	if the size of penis > min penis size:
		PenisDown 1;
	otherwise:
		say "You feel your muscles shrinking, reducing in bulk! You feel a bit weaker...";
		StrengthDown 1.

polymorph-rune-trap is a rune trap.

Definition: polymorph-rune-trap is fetish appropriate:
	if unlucky is 1, decide yes;
	decide no.

Figure of polymorph rune trap is the file "Env/Dungeon/rune5a.jpg".
Figure of polymorph rune trap triggered is the file "Env/Dungeon/rune5b.jpg".

To decide which figure-name is the examine-image of (T - polymorph-rune-trap):
	decide on Figure of polymorph rune trap.
To decide which figure-name is the triggered-image of (T - polymorph-rune-trap):
	decide on Figure of polymorph rune trap triggered.

To compute unique trigger of (Y - polymorph-rune-trap):
	let C be a random upgradable clothing;
	if C is clothing:
		potentially transform C;
	otherwise:
		say "Nothing seems to happen. Odd...".


Needle Trap ends here.
