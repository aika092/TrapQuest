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

Definition: a christmas headgear is removal-blocking:
	if (it is cursed or the quest of it is naughty-quest) and wearing-target is christmas themed, decide yes;
	decide no.

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

The printed name of santa hat is usually "[clothing-title-before]Santa hat[clothing-title-after]". The text-shortcut of santa hat is "sah".

To decide which figure-name is the clothing-image of (C - a santa hat):
	decide on figure of santa hat.

To say ClothingDesc of (H - a santa hat):
	say "A smallish red and white Santa hat.".

To say ShortDesc of (H - a santa hat):
	say "Santa hat".

To compute SelfExamineDesc of (H - a santa hat):
	say "You are wearing a Santa hat on top of your [ShortDesc of hair]. ".

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

To say ShortDesc of (H - a red bow headband):
	say "red bow headband".

To compute SelfExamineDesc of (H - a red bow headband):
	say "You are wearing a green headband with a red bow on top of your [ShortDesc of hair]. ".

To compute class outfit of (H - a red bow headband):
	let R be a random off-stage standard christmas dress;
	if R is actually summonable or (R is dress and christmas-summoned is 0 and the number of worn christmas dress is 0):
		PinkWardrobeUnclash R;
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

To say ShortDesc of (H - a star headband):
	say "gold star headband".

To compute SelfExamineDesc of (H - a star headband):
	say "You are wearing a gold headband with a star on top of your [ShortDesc of hair]. ".

To compute class outfit of (H - a star headband):
	let R be a random off-stage christmas tree dress;
	if R is actually summonable or christmas-summoned < 2:
		PinkWardrobeUnclash R;
		if christmas-summoned < 2, now christmas-summoned is 2;
		say "[bold type]Your [ShortDesc of H] wiggles as if it's alive, and suddenly you're wearing a [ShortDesc of R]![roman type][line break]";
		summon R;
		now the raw-magic-modifier of R is 2;
	otherwise:
		compute christmas socks of H.

To decide which number is the initial cringe of (H - a star headband):
	decide on 4.

Definition: a star headband is star themed: decide yes.

christmas bonnet is a christmas headgear.

The printed name of christmas bonnet is "[clothing-title-before]Christmas bonnet[clothing-title-after]". Figure of christmas bonnet is the file "Items/Accessories/Head/christmasbonnet1.png". The text-shortcut of christmas bonnet is "chmb".

Definition: christmas bonnet is bow themed: decide yes.
Definition: christmas bonnet is green themed: decide yes.

To decide which figure-name is the clothing-image of (C - christmas bonnet):
	decide on figure of christmas bonnet.

To say ClothingDesc of (H - christmas bonnet):
	say "A giant frilly green bonnet with a red ribbon that ties up underneath with a bow.".

To say ShortDesc of (H - christmas bonnet):
	say "Christmas bonnet".

To say MediumDesc of (H - christmas bonnet):
	say "Christmas bonnet".

To compute SelfExamineDesc of (H - christmas bonnet):
	say "You are wearing a giant frilly green bonnet with a red bow on top of your [ShortDesc of hair]. ".

Definition: christmas bonnet is transformation-protected: decide yes.

To decide which number is the initial cringe of (H - christmas bonnet):
	decide on 6.

conic santa hat is a christmas headgear. conic santa hat is latex.

The printed name of conic santa hat is "[clothing-title-before]conic Santa hat[clothing-title-after]". Figure of conic santa hat is the file "Items/Accessories/Head/santahat2.png". The text-shortcut of conic santa hat is "csh".

To decide which figure-name is the clothing-image of (C - conic santa hat):
	decide on figure of conic santa hat.

To say ClothingDesc of (H - conic santa hat):
	say "A latex red and white hat shaped like a cone.".

To say ShortDesc of (H - conic santa hat):
	say "conic Santa hat".

To say MediumDesc of (H - conic santa hat):
	say "conic latex Santa hat".

To compute SelfExamineDesc of (H - conic santa hat):
	say "You are wearing a latex red and white hat shaped like a cone on top of your [ShortDesc of hair]. ".

Definition: conic santa hat is transformation-protected: decide yes.
Definition: conic santa hat is red themed: decide yes.

To decide which number is the initial outrage of (H - conic santa hat):
	decide on 2.

nice-quest is a headgear-clothing-quest. nice-quest has a number called nice-count.

Definition: nice-quest is school-disabled: decide yes.

To uniquely set up (C - christmas bonnet):
	now the quest of C is nice-quest.

To uniquely set up (C - conic santa hat):
	now the quest of C is nice-quest.

To set up (Q - nice-quest):
	now the nice-count of Q is 0.

To say QuestFlav of (Q - nice-quest):
	say "You sense that it wants you to prove you are nice by [bold type]not attacking or resisting[roman type] during your first several encounters.".

To say QuestTitle of (Q - nice-quest):
	say " (naughty or nice quest)".

To progress quest of (Q - nice-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			if playerRegion is not school, increase nice-count of Q by 1;
			if nice-count of Q > a random number between 5 and 8:
				compute quest completion of Q on C.

To compute generic first time class reward of (Q - nice-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is pure diamond;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	let S be a random santa hat;
	now S is in the location of the player;
	now S is cursed;
	now the quest of S is christmas-quest;
	say "A Santa hat appears in front of you on the ground!";
	compute autotaking S;
	say "[BigNameDesc of C] fizzles into nothingness. ";
	only destroy C.

naughty-quest is a headgear-clothing-quest.
To say QuestFlav of (Q - naughty-quest):
	say "You sense that the only way to stop being labelled as a naughty [if diaper quest is 1]baby[otherwise][boy of the player][end if] is to find a [bold type]knife[roman type] and destroy the headgear.".
To say QuestTitle of (Q - naughty-quest):
	say " (naughty quest)".

Report resisting:
	compute naughtification.

Report slapping:
	compute naughtification.
Report kneeing:
	compute naughtification.
Report kicking:
	compute naughtification.
Report zapping it with:
	compute naughtification.
To compute naughtification:
	let C be a random worn christmas headgear;
	if C is a thing and the quest of C is nice-quest:
		say "[bold type]Your [ShortDesc of C] vibrates with anger! You have been deemed naughty![roman type][line break]";
		now the quest of C is naughty-quest;
		if naughty-or-nice outfit is worn and naughty-or-nice outfit is not naughtified:
			say "The motif on the front of your [ShortDesc of naughty-or-nice outfit] changes!";
			now naughty-or-nice outfit is naughtified;
			try examining naughty-or-nice outfit;
			PinkWardrobeUnclash christmas booties;
			summon christmas booties;
			PinkWardrobeUnclash christmas mittens;
			summon christmas mittens;
			say "Christmas themed booties and mittens appear on you!";
			let P be a random yellow pacifier;
			if P is actually summonable:
				say "A pacifier appears in your mouth!";
				summon P cursed with quest;
		if diaper lover <= 0:
			if present outfit is worn, transform present outfit into candy cane outfit;
			let C be a random worn dress;
			now C is oral-sex-addiction-influencing;
			now the raw-magic-modifier of C is -1;
			PinkWardrobeUnclash red-and-white rubber stockings;
			summon red-and-white rubber stockings uncursed;
			now the raw-magic-modifier of red-and-white rubber stockings is -2;
			now red-and-white rubber stockings is oral-sex-addiction-influencing;
			say "Candy cane patterned latex stockings appear on your legs!";
			PinkWardrobeUnclash candy-cane-gloves;
			summon candy-cane-gloves uncursed;
			now the raw-magic-modifier of candy-cane-gloves is -2;
			now candy-cane-gloves is oral-sex-addiction-influencing;
			say "Elbow-length candy cane patterned latex gloves appear on your arms!";
			say "You feel a weird desperate craving to suck on something...";

Santa Hat ends here.
