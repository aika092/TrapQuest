Cumdumpster Hat by Headgear begins here.

A cumdumpster hat is a kind of headgear. A cumdumpster hat is usually hair growing. Understand "cumdumpster" as cumdumpster hat.

To set up influence of (C - a cumdumpster hat):
	set up stat-based influence of C.

To say ShortDesc of (H - a cumdumpster hat):
	say "cum dumpster hat".

[Definition: a cumdumpster hat is condom pinnable: decide yes.]
Definition: a cumdumpster hat is semen themed: decide yes.

To decide which number is the initial outrage of (C - a cumdumpster hat):
	decide on 10.

To compute unique recycling of (C - a cumdumpster hat):
	now the condom-count of condom-eating-quest is 0.

thirsty work condom hat is a cumdumpster hat. thirsty work condom hat is plastic.
Definition: thirsty work condom hat is roleplay:
	if condom fetish is 1, decide yes;
	decide no.
The printed name of thirsty work condom hat is "[clothing-title-before]thirsty work cumdumpster hat[clothing-title-after]". The text-shortcut of thirsty work condom hat is "twch".

Figure of thirsty work condom hat is the file "Items/Accessories/Head/cumdumpsterhat2.png".

To decide which figure-name is the clothing-image of (C - thirsty work condom hat):
	decide on figure of thirsty work condom hat.

To say ClothingDesc of (H - thirsty work condom hat):
	say "This red hard hat has the words 'THIRSTY WORK' written in white on the front. Straws connect two dangling fake used condoms to your mouth, making it look like you can easily drink them.".

To compute SelfExamineDesc of (H - thirsty work condom hat):
	say "You are wearing a condom drinking hat that reads 'Thirsty Work' on top of your [ShortDesc of hair]. ".

Definition: thirsty work condom hat is drink themed: decide yes.
Definition: thirsty work condom hat is red themed: decide yes.

Definition: thirsty work condom hat is transformation-protected: decide no.
To decide which object is the unique-upgrade-target of (C - thirsty work condom hat):
	decide on cumdumpster condom hat.

cumdumpster condom hat is a cumdumpster hat. cumdumpster condom hat is plastic.
The printed name of cumdumpster condom hat is "[clothing-title-before]purple cumdumpster hat[clothing-title-after]". The text-shortcut of cumdumpster condom hat is "pcdh". Understand "purple" as cumdumpster condom hat.

Figure of cumdumpster condom hat is the file "Items/Accessories/Head/cumdumpsterhat1.png".

To decide which figure-name is the clothing-image of (C - cumdumpster condom hat):
	decide on figure of cumdumpster condom hat.

To say ClothingDesc of (H - cumdumpster condom hat):
	say "This purple hard hat has the words 'CUM DUMPSTER' written in white on the front. Straws connect six dangling fake used condoms to make it look like you plan to drink them. There's also an empty used condom glued to the front.".

To compute SelfExamineDesc of (H - cumdumpster condom hat):
	say "You are wearing a condom drinking hat that reads 'cumdumpster' on top of your [ShortDesc of hair]. ".

To decide which number is the initial outrage of (C - cumdumpster condom hat):
	decide on 16.

Definition: cumdumpster condom hat is drink themed: decide yes.
Definition: cumdumpster condom hat is purple themed: decide yes.

rubber condom hat is a cumdumpster hat. rubber condom hat is latex.
The printed name of rubber condom hat is "[clothing-title-before]condom hat[clothing-title-after]". The text-shortcut of rubber condom hat is "cdmh".

Figure of rubber condom hat is the file "Items/Accessories/Head/condomhat1.png".

To decide which figure-name is the clothing-image of (C - rubber condom hat):
	decide on figure of rubber condom hat.

To say ClothingDesc of (H - rubber condom hat):
	say "This tight rubber hat is made from the same latex material as condoms, and is styled to look like you've got a stretched out condom on your head.".

To compute SelfExamineDesc of (H - rubber condom hat):
	say "You are wearing a condom hat on top of your [ShortDesc of hair]. ".

To decide which number is the initial outrage of (C - rubber condom hat):
	decide on 8.


Chapter - Class Outfit

Definition: a cumdumpster hat (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if the used condoms of wearing-target > 0 and (C is not wearing-target or C is not blessed), decide yes;
	decide no.

To say RemovalBlocked of (C - a cumdumpster hat):
	say "Your [ShortDesc of C] is somehow preventing you from taking this off while it still has used condoms on it that you haven't yet eaten!".

To respawn condom pack:
	if condom-pack is not carried:
		now condom-pack is carried by the player;
		say "Suddenly a pack of condoms appears in your hand!";
		now condom-pack is not condom-trapped.

To compute class outfit of (H - a cumdumpster hat):
	class summon lycra-bodysuit;
	class summon condom socks;
	respawn condom pack.

To compute class outfit of (H - thirsty work condom hat):
	class summon bitch top;
	class summon bitch bottoms;
	respawn condom pack.

To compute class outfit of (H - rubber condom hat):
	class summon condoms dress;
	class summon condom socks;
	respawn condom pack.

To compute post transformation effect of (H - rubber condom hat):
	compute class outfit of H;
	if condoms dress is not worn: [the above function won't work if class-relevant clothing is already worn]
		let C be a random worn overdress;
		if C is clothing and C is not condoms dress, transform C into condoms dress.



Chapter - Quest

condom-eating-quest is a headgear-clothing-quest. condom-eating-quest has a number called condom-count. condom-eating-quest has a number called delayed-condom-count.

To uniquely set up (C - a cumdumpster hat):
	now the quest of C is condom-eating-quest.

To say QuestFlav of (Q - condom-eating-quest):
	say "You sense that it wants you to collect more condoms onto your clothing, and you can earn extra brownie points by eating the cum from your collected used condoms.";
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: Each condom that gets pinned to you increases the counter by 1. Each used condom you eat increases the counter by 1 again. You need to do this 5 times total.[roman type][line break][or][stopping]".

To say QuestTitle of (Q - condom-eating-quest):
	say " (used condom collection & drinking quest)".

To progress quest of (Q - condom-eating-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			increase condom-count of Q by 1;
			if condom-count of Q >= 5:
				now the condom-count of Q is 0;
				compute quest completion of Q on C;
			otherwise:
				say "[BigNameDesc of C] wiggles happily! [one of]If you keep this up, surely you'll be rewarded eventually.[or]Keep it up![stopping]";
				if total used condoms is 0 and C is thirsty work condom hat, transform C into cumdumpster condom hat.

To compute persistent reward of (Q - condom-eating-quest) on (C - a clothing):
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise:
		increase delayed-condom-count of Q by 1;
		say "infusing itself with [one of]powerful magic! You feel that something good will happen when you finally decide to stop being a cumdumpster.[or]even more blessed magic![stopping]".

To uniquely destroy (C - a cumdumpster hat):
	if the delayed-condom-count of condom-eating-quest > 0 and the quest of C is condom-eating-quest:
		say "You can feel the blessed magic your [ShortDesc of C] had stored within itself shoot straight into your muscles!";
		StrengthUp the delayed-condom-count of condom-eating-quest;
		now the delayed-condom-count of condom-eating-quest is 0.

Cumdumpster Hat ends here.
