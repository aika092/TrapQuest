Eggs by Collectibles begins here.


An egg is a kind of collectible. An egg can be laid. An egg is usually not laid.

Definition: a small egg (called D) is available:
	if D is off-stage, decide yes;
	repeat with E running through off-stage small eggs:
		decide no;
	if D is in the location of the player, decide no;
	decide yes.

To decide which number is the crafting key of (E - a small egg):
	decide on 49.

Definition: a medium egg (called D) is available:
	if D is off-stage, decide yes;
	repeat with E running through off-stage medium eggs:
		decide no;
	if D is in the location of the player, decide no;
	decide yes.

To decide which number is the crafting key of (E - a medium egg):
	decide on 24.

Definition: a large egg (called D) is available:
	if D is off-stage, decide yes;
	repeat with E running through off-stage large eggs:
		decide no;
	if D is in the location of the player, decide no;
	decide yes.

To decide which number is the crafting key of (E - a large egg):
	decide on 25.

A small egg is a kind of egg. The printed name of small egg is "[TQlink of item described]small [if the class of the player is santa's little helper]easter [end if]egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of small egg is "[TQlink of item described]small [if the class of the player is santa's little helper]easter [end if]eggs[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of small egg is "se". There are 35 small eggs. Figure of small egg is the file "Items/Collectibles/egg1.png".
To decide which figure-name is the examine-image of (C - a small egg):
	decide on figure of small egg.
To say ExamineDesc of (B - a small egg):
	say "A small spherical [if the class of the player is santa's little helper]chocolate[otherwise]white[end if] egg, about half the size of a normal chicken egg.[if B is laid] You laid it out of your own [asshole].[end if]".

A medium egg is a kind of egg. The printed name of medium egg is "[TQlink of item described]medium sized [if the class of the player is santa's little helper]easter [end if]egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of medium egg is "[TQlink of item described]medium sized [if the class of the player is santa's little helper]easter [end if]eggs[shortcut-desc][TQxlink of item described][verb-desc of item described]". understand "sized" as medium egg. The text-shortcut of medium egg is "mde". There are 30 medium eggs. Figure of medium egg is the file "Items/Collectibles/egg2.png".
To decide which figure-name is the examine-image of (C - a medium egg):
	decide on figure of medium egg.
To say ExamineDesc of (B - a medium egg):
	say "This looks exactly like you'd expect a large chicken egg to look like[if the class of the player is santa's little helper], except it is made of chocolate[end if].[if B is laid] You laid it out of your own [asshole].[end if]".

A large egg is a kind of egg. The printed name of large egg is "[TQlink of item described]large [if the class of the player is santa's little helper]easter [end if]egg[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of large egg is "[TQlink of item described]large [if the class of the player is santa's little helper]easter [end if]eggs[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of large egg is "le". There are 15 large eggs. Figure of large egg is the file "Items/Collectibles/egg3.png".
To decide which figure-name is the examine-image of (C - a large egg):
	decide on figure of large egg.
To say ExamineDesc of (B - a large egg):
	say "This huge bird style egg is at least twice the size of your average chicken egg. It looks more like what you'd expect a small ostrich egg or small dinosaur egg to look like[if the class of the player is santa's little helper], except it is made of chocolate[end if]![if B is laid] You laid it out of your own [asshole], although now looking at its size you can hardly believe it.[end if]".

To say ShortDesc of (E - a small egg):
	say "small egg".
To say ShortDesc of (E - a medium egg):
	say "medium egg".
To say ShortDesc of (E - a large egg):
	say "large egg".

To decide which number is the girth of (E - a small egg):
	decide on 2.

To decide which number is the girth of (E - a medium egg):
	decide on 5.

To decide which number is the heaviness of (C - a medium egg):
	decide on 2.

To decide which number is the girth of (E - a large egg):
	decide on 10.

To decide which number is the heaviness of (C - a large egg):
	decide on 3.


When play begins:
	let eggShortcutCount be 1;
	repeat with E running through small egg:
		now the text-shortcut of E is substituted form of "se[eggShortcutCount]";
		increase eggShortcutCount by 1;
	now eggShortcutCount is 1;
	repeat with E running through medium egg:
		now the text-shortcut of E is substituted form of "me[eggShortcutCount]";
		increase eggShortcutCount by 1;
	now eggShortcutCount is 1;
	repeat with E running through large egg:
		now the text-shortcut of E is substituted form of "le[eggShortcutCount]";
		increase eggShortcutCount by 1.



Eggs ends here.

