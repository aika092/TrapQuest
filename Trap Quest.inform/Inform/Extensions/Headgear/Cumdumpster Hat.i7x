Cumdumpster Hat by Headgear begins here.

Volume - Condom Collector

A condom collector hat is a kind of headgear. A condom collector hat is usually hair growing.

To set up influence of (C - a condom collector hat):
	set up stat-based influence of C.

To say ShortDesc of (H - a condom collector hat):
	say "condom hat".

[Definition: a condom collector hat is condom pinnable: decide yes.]
Definition: a condom collector hat is semen themed: decide yes.

To decide which number is the initial outrage of (C - a condom collector hat):
	decide on 10.

thirsty work condom hat is a condom collector hat. thirsty work condom hat is plastic.
Definition: thirsty work condom hat is roleplay:
	if condom fetish >= 2, decide yes;
	decide no.
The printed name of thirsty work condom hat is "[clothing-title-before]thirsty work condom collector hat[clothing-title-after]". The text-shortcut of thirsty work condom hat is "twch".

Figure of thirsty work condom hat is the file "Items/Accessories/Head/cumdumpsterhat2.png".

To decide which figure-name is the clothing-image of (C - thirsty work condom hat):
	decide on figure of thirsty work condom hat.

To say ClothingDesc of (H - thirsty work condom hat):
	say "This red hard hat has the words 'THIRSTY WORK' written in white on the front. Straws connect two dangling fake used condoms to your mouth, making it look like you can easily drink them.".

To compute SelfExamineDesc of (H - thirsty work condom hat):
	say "You are wearing a condom drinking hat that reads 'Thirsty Work' on top of your [ShortDesc of hair]. ".

Definition: thirsty work condom hat is drink themed: decide yes.
Definition: thirsty work condom hat is red themed: decide yes.

[Definition: thirsty work condom hat is transformation-protected: decide no.
To decide which object is the unique-upgrade-target of (C - thirsty work condom hat):
	decide on cumdumpster condom hat.]

cumdumpster condom hat is a condom collector hat. cumdumpster condom hat is plastic.
The printed name of cumdumpster condom hat is "[clothing-title-before]purple condom collector hat[clothing-title-after]". The text-shortcut of cumdumpster condom hat is "pcdh". Understand "purple" as cumdumpster condom hat.

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

rubber condom hat is a condom collector hat. rubber condom hat is latex.
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

Definition: a condom collector hat (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if the used condoms of wearing-target > 0 and (C is not wearing-target or C is not blessed), decide yes;
	decide no.

To say RemovalBlocked of (C - a condom collector hat):
	say "Your [ShortDesc of C] is somehow preventing you from taking this off while it still has used condoms on it that you haven't yet eaten!".

To respawn condom pack:
	if condom-pack is not carried:
		now condom-pack is carried by the player;
		say "Suddenly a pack of condoms appears in your hand!";
		now condom-pack is not condom-trapped.

To compute class outfit of (H - a condom collector hat):
	if H is thirsty work condom hat, class summon meat-toilet-panties;
	otherwise class summon green-thong;
	class summon lycra-bodysuit;
	class summon condom socks;
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

To compute post transformation effect of (H - thirsty work condom hat):
	compute class outfit of H.



Chapter - Quest

condom-collecting-quest is a headgear-clothing-quest.

To uniquely set up (C - a condom collector hat):
	now the quest of C is condom-collecting-quest.

To say QuestFlav of (Q - condom-collecting-quest):
	say "You sense that it wants you to wearing used condoms from four different KNOWN people at the same time.";
	if newbie tips is 1, say "[newbie style]Newbie Tip: You can examine items of clothing to see what you know about the sources of the cum in the pinned used condoms.[roman type][line break]".

To say QuestTitle of (Q - condom-collecting-quest):
	say " (used condom collection quest)".




Volume - Cumpdumpster

cumdump-headband is a headgear. cumdump-headband is hair growing. Understand "cumdump", "headband" as cumdump-headband.

The printed name of cumdump-headband is "[clothing-title-before]cumdump headband[clothing-title-after]". The text-shortcut of cumdump-headband is "cdph".

To set up influence of (C - cumdump-headband):
	set up stat-based influence of C.

To say ShortDesc of (H - cumdump-headband):
	say "cumdump headband".

Definition: cumdump-headband is semen themed: decide yes.
Definition: cumdump-headband is oral sex themed: decide yes.
[Definition: cumdump-headband is vaginal sex themed: decide yes.] [theme doesn't exist yet]
Definition: cumdump-headband is anal sex themed: decide yes.
Definition: cumdump-headband is white themed: decide yes.
Definition: cumdump-headband is pink themed: decide yes.

To decide which number is the initial outrage of (C - cumdump-headband):
	decide on 5.

Definition: cumdump-headband is roleplay:
	if diaper quest is 0, decide yes;
	decide no.

Figure of cumdump headband is the file "Items/Accessories/Head/cumdumpsterhat3.png".

To decide which figure-name is the clothing-image of (C - cumdump-headband):
	decide on figure of cumdump headband.

To say ClothingDesc of (H - cumdump-headband):
	say "This white headband has the word 'CUMDUMP' on it in large creamy pink letters, styled to making it look like they're oozing and dripping down the headband. [bold type]You can sense that it has changed the way your anal sphincter works[roman type] - expelling things from your butthole will now happen automatically, though never when you're plugged, and it will no longer hurt to hold things in.".

To compute SelfExamineDesc of (H - cumdump-headband):
	say "You are wearing a headband that reads 'CUMDUMP' on top of your [ShortDesc of hair]. ".



Chapter - Class Outfit

To compute cumdumpsterification:
	if the player is not in a predicament room:
		let H be a random worn headgear;
		if H is a thing and the quest of H is cumdumpster-quest:
			let LI be a list of things;
			repeat with B running through orifices:
				repeat with M running through things inseminating B:
					add M to LI, if absent;
			if H is cursed:
				if the number of entries in LI >= 3, progress quest of cumdumpster-quest;
			otherwise if the number of entries in LI > the cumdump-record of cumdumpster-quest:
				progress quest of cumdumpster-quest;
			if the number of entries in LI > the cumdump-record of cumdumpster-quest, now the cumdump-record of cumdumpster-quest is the number of entries in LI;
		otherwise if ((cumdump-headband is off-stage and cumdump-headband is actually summonable) or H is thirsty work condom hat):
			say "[bold type]You feel the game universe reacting to the fact that you're getting filled with [semen], while already having some [semen] up inside your guts![roman type][line break]";
			if thirsty work condom hat is worn:
				transform thirsty work condom hat into cumdumpster condom hat;
			otherwise:
				say "A [ShortDesc of cumdump-headband] appears on your head!";
				summon cumdump-headband cursed;
		if WC hood is worn:
			if WC-plug-panties is worn, WardrobeVanish WC-plug-panties;
			class summon meat-toilet-panties;
		if meat-toilet-panties is worn:
			repeat with C running through worn clothing:
				if the used condoms of C > 0 and C is not meat-toilet-panties:
					say "The used condoms attached to your [C] are magically transferred to the meat toilet panties!";
					UsedCondomUp meat-toilet-panties by the used condoms of C;
					add the condom history of C to the condom history of meat-toilet-panties;
					UsedCondomWipe C.

To compute class outfit of (H - cumdump-headband):
	class summon bitch top;
	class summon pink-hole-briefs;
	class summon bitch bottoms.


Chapter - Quest

cumdumpster-quest is a headgear-clothing-quest. cumdumpster-quest has a number called cumdump-record.

To compute unique recycling of (C - cumdump-headband):
	now the cumdump-record of cumdumpster-quest is 0.

To uniquely set up (C - cumdump-headband):
	now the quest of C is cumdumpster-quest.

To say QuestFlav of (Q - cumdumpster-quest):
	say "You sense that it wants you to have your mouth[if the player is possessing a vagina], womb[end if] and guts filled with cum from several different sources at the same time[if the cumdump-record of Q > 0] (current record is [cumdump-record of Q] different sources)[end if].".

To say QuestTitle of (Q - cumdumpster-quest):
	say " (internal cum collection quest)".




Cumdumpster hat ends here.
