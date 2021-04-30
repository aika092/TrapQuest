Cow Ears by Headgear begins here.

A cow ears is a kind of headgear.

cow-ears is a cow ears. Figure of cow ears is the file "Items/Accessories/Head/cowears1.png". Figure of cow ears full is the file "Items/Accessories/Head/cowears2.png". Understand "pair", "pair of", "cow", "ears" as cow-ears. cow-ears is hair growing. cow-ears is milk-taste-addiction-influencing.

Definition: cow-ears is roleplay:
	if lactation fetish is 1, decide yes;
	decide no.
Definition: cow-ears is IcarusScienceAppropriate:
	if it is actually summonable and lactation fetish is 1, decide yes;
	decide no.

cow-ears has a number called temporary-milked-bonus.

Definition: cow-ears is fluid immune: decide yes.

Definition: cow-ears is cow themed: decide yes.
Definition: cow-ears is black themed: decide yes.
Definition: cow-ears is white themed: decide yes.

The printed name of cow-ears is "[clothing-title-before]pair of cow ears[clothing-title-after]". The text-shortcut of cow-ears is "cwes".

To decide which figure-name is the clothing-image of (C - cow-ears):
	decide on figure of cow ears.
To decide which figure-name is the icarus-clothing-image of (C - cow-ears):
	decide on figure of cow ears full.

To say ClothingDesc of (H - cow-ears):
	say "A pair of fake cow ears on a headband, that one might wear to a fancy dress party.".

To say ShortDesc of (H - cow-ears):
	say "cow ears".
To say MediumDesc of (H - cow-ears):
	say "fake cow ears".

To compute SelfExamineDesc of (H - cow-ears):
	let X be the largeness of hair;
	say "You are wearing a pair of [ShortDesc of H] on top of your [ShortDesc of hair]. ".

To compute unique periodic effect of (H - cow-ears):
	if the temporary-milked-bonus of H > 0:
		decrease temporary-milked-bonus of H by 1;
		if temporary-milked-bonus of H <= 0, say "[bold type]The temporary dexterity boost you had from recently getting milked has ended.[roman type][line break]".

Chapter - Class Outfit

To compute unique recycling of (C - cow-ears):
	now the ready-for-milking of milking-quest is 0.

To compute class outfit of (H - a cow ears):
	if the class of the player is catgirl:
		compute meowcowification;
	otherwise if the lactation-count of the player >= 10:
		class summon cow print basque;
		now the quest of H is milk-serve-quest;
	otherwise:
		class summon cow print bikini top;
	class summon cow pattern boots;
	class summon cowbell.

To compute unique periodic effect of (C - cow-ears):
	let P be a random off-stage cow piercing;
	let pierce be 0;
	if P is cow piercing and the number of worn nipple piercing is 0, now pierce is 1;
	let T be nothing;
	unless nintendolls-brand tattoo is on-stage, now T is nintendolls-brand tattoo;
	if (the largeness of breasts > 15 or (the largeness of breasts > 8 and the largeness of breasts >= max breast size)) and (T is actually summonable or pierce is 1) and the class of the player is "cowgirl": [Not for multiclasses, since we probably can't destroy the dress]
		say "[bold type]Your cow ears barely noticeably quiver, and then suddenly you feel searing pain from your breasts! [if pierce is 1 and there is worn breast covering clothing]The clothing covering your breasts vanishes as a[otherwise]A[end if] [if pierce is 1]pair of high-gauge rings have appeared in your nipples[end if][if pierce is 1 and T is actually summonable], and even worse the [otherwise if T is actually summonable]The [otherwise]![end if][if T is actually summonable]Nintendolls logo is now branded just below your breasts![end if][roman type][line break]";[possible break this up in some way.]
		if pierce is 1:
			repeat with D running through worn breast covering clothing:
				now D is in pink wardrobe;
		summon P cursed;
		now P is milk production;
		if T is actually summonable, summon T.

Chapter - Quest

milking-quest is a headgear-clothing-quest. milking-quest has a number called ready-for-milking. milking-quest has a number called successful-milks.

To uniquely set up (C - cow-ears):
	now C is milk production;
	now the ready-for-milking of milking-quest is 0;
	now the successful-milks of milking-quest is 0;
	now the quest of C is milking-quest.

To say QuestFlav of (Q - milking-quest):
	say "You sense it wants you to get milked, but only after your breasts have completely filled up, or when there's enough to create an extra large can of milk.".

To say QuestTitle of (Q - milking-quest):
	say " (milking quest)".

To compute generic class reward of (Q - milking-quest) on (C - a clothing): [TODO: Improve]
	say "giving you a temporary boost of speed!";
	now the temporary-milked-bonus of cow-ears is 30.

To decide which number is the dexterity-influence of (C - cow-ears):
	if the temporary-milked-bonus of C > 0, decide on 3;
	decide on 0.

To progress quest of (Q - milking-quest):
	let M be a random milking bench in the location of the player;
	if M is nothing, now M is dungeon-milking-bench;
	if the ready-for-milking of Q > 0 or the units collected of M > 3:
		now the ready-for-milking of milking-quest is 0;
		repeat with C running through worn clothing:
			if the quest of C is Q:
				increase the successful-milks of Q by 1;
				if the successful-milks of Q > 2:
					now the successful-milks of Q is 1;
					compute quest completion of Q on C;
				otherwise:
					say "Your [ShortDesc of C] pulse happily. [one of]If you keep up this sort of milking routine, you're sure to be rewarded eventually[or]Keep it up[stopping]!".

Chapter - Cow horns

cow-horns is a cow ears. cow-horns is biological. Figure of cow horns is the file "Items/Accessories/Head/cowhorns1.png". Understand "pair", "pair of", "cow", "horns" as cow-horns. cow-horns is hair growing. cow-horns is milk-taste-addiction-influencing.

The printed name of cow-horns is "[clothing-title-before]pair of cow horns[clothing-title-after]". The text-shortcut of cow-horns is "ches".

To decide which figure-name is the clothing-image of (C - cow-horns):
	decide on figure of cow horns.

Definition: cow-horns is destructible: decide no.

Definition: cow-horns is fluid immune: decide yes.

Definition: cow-horns is cow themed: decide yes.
Definition: cow-horns is white themed: decide yes.

To uniquely set up (C - cow-horns):
	now C is milk production;
	now the quest of C is babymaking-quest;
	if the pregnancy of the player > 0 and the pregnancy of the player < 3, now the previously-pregnant of babymaking-quest is 1.

To say ClothingDesc of (H - cow-horns):
	say "A pair of stubby cow horns poking out of your forehead. [unless H is removable]They seem to be real![otherwise]Luckily they're only attached to a headband.[end if]".

To compute SelfExamineDesc of (H - cow-horns):
	say "You [unless H is removable]have a pair of horns protruding from your head[otherwise]are wearing a headband with a pair of horns[end if].".

Cow Ears ends here.
