Santa Hat by Headgear begins here.

A christmas headgear is a kind of headgear. A christmas headgear is blondeness-negative. A christmas headgear is brightness-positive. A christmas headgear is redness-positive.
Definition: a christmas headgear is christmas themed: decide yes.
Definition: a christmas headgear is transformation-protected: decide no.

christmas-summoned is a number that varies.
To compute unique recycling of (C - a christmas headgear):
	now christmas-summoned is 0;
	now C is in pink wardrobe.

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

Definition: a christmas headgear is removal-blocking if it is cursed and wearing-target is christmas themed.

Chapter - Quest

To compute HeadgearAutoCursing of (H - a christmas headgear):
	do nothing. [Doesn't recurse upon wear]
To compute AutoRemoveFizzling of (H - a christmas headgear):
	do nothing. [Doesn't fizzle]

christmas-quest is a headgear-clothing-quest.

To uniquely set up (C - a christmas headgear):
	now the quest of C is christmas-quest.

To say QuestFlav of (Q - christmas-quest):
	say "You sense that it wants you to give [bold type]unfriendly[roman type] people items that they'll like.".

To say QuestTitle of (Q - christmas-quest):
	say " (gifting quest)".

To compute persistent reward of (Q - christmas-quest) on (C - a clothing):
	let R be a random off-stage ring;
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise if there is a held christmas gift and the number of worn rings < 8 and R is a thing:
		say "a new sapphire ring!";
		now R is sapphire;
		now R is worn by the player;
		set shortcut of R;
	otherwise:
		say "a new gift!";
		let CG be a random off-stage christmas gift;
		now CG is carried by the player.



A santa hat is a kind of christmas headgear. A santa hat is usually wool. Figure of santa hat is the file "Items/Accessories/Head/santahat1.png". There is 1 santa hat.

The printed name of santa hat is usually "[clothing-title-before]santa hat[clothing-title-after]". The text-shortcut of santa hat is "sah".

To decide which figure-name is the clothing-image of (C - a santa hat):
	decide on figure of santa hat.

To say ClothingDesc of (H - a santa hat):
	say "A smallish red and white santa hat.".

To compute ShortDesc of (H - a santa hat):
	say "santa hat".

To compute SelfExamineDesc of (H - a santa hat):
	say "You are wearing a santa hat on top of your [ShortDesc of hair]. ".

Definition: a santa hat is condom pinnable: decide yes.
Definition: a santa hat is red themed: decide yes.

To decide which object is the unique-upgrade-target of (H - a santa hat):
	let R be a random off-stage red bow headband;
	if R is nothing or diaper quest is 0, decide on a random off-stage star headband;
	otherwise decide on R.

To compute class outfit of (H - a santa hat):
	if diaper quest is 1:
		if christmas-summoned is 0:
			let R be a random red bow headband;
			compute class outfit of R;
	otherwise:
		let C be a random off-stage santa corset;
		if H is not cursed and C is actually summonable:
			summon C;
			say "You hear the sound of sleigh bells as a [C] appears around your midriff!".


A red bow headband is a kind of christmas headgear. The printed name of red bow headband is usually "[clothing-title-before]red bow headband[clothing-title-after]". Figure of red bow headband is the file "Items/Accessories/Head/bowheadband1.png". There is 1 red bow headband. The text-shortcut of red bow headband is "rbh".

Definition: a red bow headband is bow themed: decide yes.
Definition: a red bow headband is red themed: decide yes.
Definition: a red bow headband is green themed: decide yes.

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
	if R is actually summonable or (R is dress and christmas-summoned is 0 and the number of worn christmas dress is 0):
		repeat with O running through worn dresses:
			say "Your [O] [wardrobeVanishes of O]!";
			now O is in pink wardrobe;
		repeat with O running through worn skirts:
			say "Your [O] [wardrobeVanishes of O]!";
			now O is in pink wardrobe;
		if christmas-summoned is 0, now christmas-summoned is 1;
		let HG be a random worn headgear;
		say "[bold type]Your [ShortDesc of HG] wiggles as if it's alive, and suddenly you're wearing a [ShortDesc of R]![roman type][line break]";
		summon R cursed;
		now the raw-magic-modifier of R is 2;
	otherwise:
		compute christmas socks of H.

To decide which object is the unique-upgrade-target of (H - a red bow headband):
	decide on a random off-stage star headband.

To decide which number is the initial cringe of (H - a red bow headband):
	decide on 2.



A star headband is a kind of christmas headgear. The printed name of star headband is usually "[clothing-title-before]star headband[clothing-title-after]". Figure of star headband is the file "Items/Accessories/Head/starheadband1.png". There is 1 star headband. The text-shortcut of star headband is "strh".

To decide which figure-name is the clothing-image of (C - a star headband):
	decide on figure of star headband.

Definition: a star headband is yellow themed: [Is it significantly yellow?]
	decide yes.

To say ClothingDesc of (H - a star headband):
	say "A golden star is fixed above a golden headband.".

To compute ShortDesc of (H - a star headband):
	say "gold star headband".

To compute SelfExamineDesc of (H - a star headband):
	say "You are wearing a gold headband with a star on top of your [ShortDesc of hair]. ".

To compute class outfit of (H - a star headband):
	let R be a random off-stage christmas tree dress;
	if R is actually summonable or christmas-summoned < 2:
		repeat with O running through worn dresses:
			say "Your [O] [wardrobeVanishes of O]!";
			now O is in pink wardrobe;
		repeat with O running through worn skirts:
			say "Your [O] [wardrobeVanishes of O]!";
			now O is in pink wardrobe;
		if christmas-summoned < 2, now christmas-summoned is 2;
		say "[bold type]Your [ShortDesc of H] wiggles as if it's alive, and suddenly you're wearing a [ShortDesc of R]![roman type][line break]";
		summon R;
		now the raw-magic-modifier of R is 2;
	otherwise:
		compute christmas socks of H.

To decide which number is the initial cringe of (H - a star headband):
	decide on 4.

Definition: a star headband is star themed: decide yes.



Santa Hat ends here.

