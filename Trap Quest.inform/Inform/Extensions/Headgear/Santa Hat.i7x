Santa Hat by Headgear begins here.

A christmas headgear is a kind of headgear. A christmas headgear is blondeness-negative. A christmas headgear is brightness-positive. A christmas headgear is redness-positive.
Definition: a christmas headgear is christmas themed: decide yes.
Definition: a christmas headgear is transformation-protected: decide no.

christmas-summoned is a number that varies.

To set up influence of (C - a christmas headgear):
	set up taste-based influence of C.

Report wearing a christmas headgear:
	say "You hear the sound of sleigh bells in the distance, and suddenly the world around you appears more... colourful.".

To compute christmas socks of (H - a christmas headgear):
	let S be a random frilly green socks;
	if there is a worn deer dress, now S is a random deer socks;
	if there is a worn gingerbread dress, now S is a random red-and-white striped stockings;
	class summon S.

Definition: a christmas headgear is removal-blocking:
	if the quest of it is naughty-quest and wearing-target is christmas themed, decide yes;
	decide no.

To compute class outfit of (H - a christmas headgear):
	if the quest of H is naughty-quest:
		compute naughtification;
	otherwise if the number of worn christmas dress is 0:
		let R be a random off-stage fetish appropriate standard christmas dress;
		if R is a clothing:
			class summon R;
			if R is worn, compute christmas socks of H;
	class summon candy cane boots.

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
	let R be a random off-stage plentiful ring;
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

santa hat is a christmas headgear. santa hat is wool. Figure of santa hat is the file "Items/Accessories/Head/santahat1.png".

The printed name of santa hat is "[clothing-title-before]Santa hat[clothing-title-after]". The text-shortcut of santa hat is "sah".

To decide which figure-name is the clothing-image of (C - santa hat):
	decide on figure of santa hat.

To say ClothingDesc of (H - santa hat):
	say "A smallish red and white Santa hat.".

To say ShortDesc of (H - santa hat):
	say "Santa hat".

To compute SelfExamineDesc of (H - santa hat):
	say "You are wearing a Santa hat on top of your [ShortDesc of hair]. ".

Definition: santa hat is condom pinnable: decide yes.
Definition: santa hat is red themed: decide yes.

To decide which object is the unique-upgrade-target of (H - santa hat):
	let R be a random off-stage red bow headband;
	if R is nothing or diaper quest is 0, decide on a random off-stage star headband;
	otherwise decide on R.

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

To compute unique recycling of (C - christmas bonnet):
	now C is in pink wardrobe.

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

To compute unique recycling of (C - conic santa hat):
	now C is in pink wardrobe.

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
	say "You sense that it wants you to prove you are nice by [bold type]not attacking[if diaper quest is 0] or resisting[end if][roman type] until you have [if diaper quest is 0]sexually satisfied[otherwise]satisfied the whims of[end if] a few people, or at least let them follow you around for a while (does not progress while you're in the academy region).".

To say QuestTitle of (Q - nice-quest):
	say " (naughty or nice quest)".

To progress quest of (Q - nice-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			if playerRegion is not school, increase nice-count of Q by 1;
			if nice-count of Q > a random number between 1 and 2:
				compute quest completion of Q on C.

To compute generic first time class reward of (Q - nice-quest) on (C - a clothing):
	let D be a random off-stage plentiful ring;
	if D is ring:
		now D is pure diamond;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	now santa hat is in the location of the player;
	now santa hat is cursed;
	now the quest of santa hat is christmas-quest;
	say "A Santa hat appears in front of you on the ground!";
	compute autotaking santa hat;
	say "[BigNameDesc of C] fizzles into nothingness. ";
	only destroy C.

naughty-quest is a headgear-clothing-quest.
To say QuestFlav of (Q - naughty-quest):
	say "You sense that it wants you to [if diaper quest is 1]get your diaper changed by others[otherwise]suck on some sticks (penises)[end if].".
To say QuestTitle of (Q - naughty-quest):
	say " (naughty [if diaper quest is 1]diaper change[otherwise]oral[end if] quest)".
To progress quest of (Q - naughty-quest):
	let H be a random worn headgear;
	if H is headgear and the quest of H is Q:
		let LC be the list of worn christmas themed clothing;
		if the number of entries in LC > 0:
			if the number of entries in LC > 1 and H is listed in LC, remove H from LC;
			sort LC in random order;
			let C be entry 1 in LC;
			say "Reacting to you fulfilling the request of your [H], [NameDesc of C] fizzles into nothingness!";
			destroy C.

Report resisting:
	if diaper quest is 0, compute naughtification.

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
	if C is a thing:
		if the quest of C is nice-quest:
			say "[bold type]Your [ShortDesc of C] vibrates with anger! You have been deemed naughty![roman type][line break]";
			now the quest of C is naughty-quest;
		if the quest of C is naughty-quest:
			if diaper lover <= 0:
				class summon candy cane outfit;
				class summon candy-cane-gloves;
				class summon red-and-white rubber stockings;
			otherwise:
				if naughty-or-nice outfit is worn:
					if naughty-or-nice outfit is not naughtified:
						say "The motif on the front of your [ShortDesc of naughty-or-nice outfit] changes!";
						now naughty-or-nice outfit is naughtified;
						try examining naughty-or-nice outfit;
				otherwise:
					class summon naughty-or-nice outfit;
					now naughty-or-nice outfit is naughtified;
					try examining naughty-or-nice outfit;
				class summon christmas booties;
				class summon christmas mittens;
				class summon yellow-pacifier.

Santa Hat ends here.
