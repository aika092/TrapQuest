Santa Hat by Headgear begins here.

A christmas headgear is a kind of headgear. A christmas headgear is blondeness-negative. A christmas headgear is brightness-positive. A christmas headgear is redness-positive. 

christmas-summoned is a number that varies.

To set up influence of (C - a christmas headgear):
	set up taste-based influence of C.

Report wearing a christmas headgear:
	say "You hear the sound of sleigh bells in the distance, and suddenly the world around you appears more... colourful.".

To compute christmas socks of (H - a christmas headgear):
	let S be a random frilly green socks;
	if there is a worn deer dress, now S is a random deer socks;
	if there is a worn gingerbread dress, now S is a random red-and-white striped stockings;
	if S is actually summonable:
		say "[bold type]Your [ShortDesc of H] wiggles as if it's alive, and suddenly you're wearing a [ShortDesc of S]![roman type][line break]";
		summon S cursed;
		now the raw-magic-modifier of S is 2.

Definition: a christmas headgear (called H) is untransformable:
	if the unique-upgrade-target of H is nothing, decide yes;
	decide no.


A santa hat is a kind of christmas headgear. A santa hat is usually wool. Figure of santa hat is the file "santahat1.png". There is 1 santa hat.

The printed name of santa hat is usually "[TQlink of item described][clothing-title-before]santa hat[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of santa hat is "sah".

To decide which figure-name is the clothing-image of (C - a santa hat):
	decide on figure of santa hat.

To say ClothingDesc of (H - a santa hat):
	say "A smallish red and white santa hat, with the word 'Naughty' on the white rim.".

To compute ShortDesc of (H - a santa hat):
	say "naughty santa hat".

To compute SelfExamineDesc of (H - a santa hat):
	say "You are wearing a naughty santa hat on top of your [ShortDesc of hair]. ".

Definition: a santa hat (called C) is condom pinnable:
	decide yes.

To decide which object is the unique-upgrade-target of (H - a santa hat):
	let R be a random off-stage red bow headband;
	if R is nothing or diaper quest is 0, 	decide on a random off-stage star headband;
	otherwise decide on R.



A red bow headband is a kind of christmas headgear. The printed name of red bow headband is usually "[TQlink of item described][clothing-title-before]red bow headband[clothing-title-after][TQxlink of item described][verb-desc of item described]". Figure of red bow headband is the file "bowheadband1.png". There is 1 red bow headband.

Definition: a red bow headband (called C) is bow themed:
	decide yes.

To decide which figure-name is the clothing-image of (C - a red bow headband):
	decide on figure of red bow headband.

To say ClothingDesc of (H - a red bow headband):
	say "A red bow on a festive green headband.".

To compute ShortDesc of (H - a red bow headband):
	say "red bow headband".

To compute SelfExamineDesc of (H - a red bow headband):
	say "You are wearing a green headband with a red bow on top of your [ShortDesc of hair]. ".

To compute class outfit of (H - a red bow headband):
	let R be a random off-stage standard christmas dress;
	if R is actually summonable or (R is dress and christmas-summoned is 0):
		repeat with O running through worn dresses:
			say "Your [O] vanishes!";
			destroy O;
		repeat with O running through worn skirts:
			say "Your [O] vanishes!";
			destroy O;
		if christmas-summoned is 0, now christmas-summoned is 1;
		say "[bold type]Your [ShortDesc of H] wiggles as if it's alive, and suddenly you're wearing a [ShortDesc of R]![roman type][line break]";
		summon R cursed;
		now the raw-magic-modifier of R is 2;
	otherwise:
		compute christmas socks of H.

To decide which object is the unique-upgrade-target of (H - a red bow headband):
	decide on a random off-stage star headband.

To decide which number is the initial cringe of (H - a red bow headband):
	decide on 2.



A star headband is a kind of christmas headgear. The printed name of star headband is usually "[TQlink of item described][clothing-title-before]star headband[clothing-title-after][TQxlink of item described][verb-desc of item described]". Figure of star headband is the file "starheadband1.png". There is 1 star headband.

To decide which figure-name is the clothing-image of (C - a star headband):
	decide on figure of star headband.

To say ClothingDesc of (H - a star headband):
	say "A golden star is fixed above a golden headband.".

To compute ShortDesc of (H - a star headband):
	say "gold star headband".

To compute SelfExamineDesc of (H - a star headband):
	say "You are wearing a gold headband with a star on top of your [ShortDesc of hair]. ".

To compute class outfit of (H - a star headband):
	let R be a random christmas tree dress;
	if R is actually summonable or christmas-summoned < 2:
		repeat with O running through worn dresses:
			say "Your [O] vanishes!";
			destroy O;
		repeat with O running through worn skirts:
			say "Your [O] vanishes!";
			destroy O;
		if christmas-summoned < 2, now christmas-summoned is 2;
		say "[bold type]Your [ShortDesc of H] wiggles as if it's alive, and suddenly you're wearing a [ShortDesc of R]![roman type][line break]";
		summon R cursed;
		now the raw-magic-modifier of R is 2;
	otherwise:
		compute christmas socks of H.

To decide which number is the initial cringe of (H - a star headband):
	decide on 4.




Santa Hat ends here.

