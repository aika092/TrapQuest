Cow Ears by Headgear begins here.

cow-ears is a headgear. Figure of cow ears is the file "Items/Accessories/Head/cowears1.png". Figure of cow ears full is the file "Items/Accessories/Head/cowears2.png". Understand "pair", "pair of", "cow", "ears" as cow-ears. cow-ears is hair growing. cow-ears is milk-taste-addiction-influencing.

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
		if temporary-milked-bonus of H <= 0, say "[bold type]The temporary dexterity boost you had from recently getting milked has ended.[roman type][line break]";

Chapter - Class Outfit

Definition: cow-ears (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is cow themed and wearing-target is not C, decide yes;
	decide no.

cow-summoned is a number that varies.
To compute unique recycling of (C - cow-ears):
	now the ready-for-milking of milking-quest is 0;
	now cow-summoned is 0.

To compute class outfit of (H - cow-ears):
	let B be a random cow print bikini top;
	let Q be a random off-stage cow print milking basque;
	let G be a random off-stage cow pattern boots;
	let P be a random off-stage cow piercing;
	let pierce be 0;
	if P is cow piercing and the number of worn nipple piercing is 0, now pierce is 1;
	let T be nothing;
	unless nintendolls-brand tattoo is on-stage, now T is nintendolls-brand tattoo;
	if the lactation-count of the player >= 10 and Q is actually summonable:
		say "[bold type]Your cow ears barely noticeably quiver, and then a [ShortDesc of Q] materialises on your chest.[roman type][line break]";
		summon Q;
		now Q is milk production;
		now the raw-magic-modifier of Q is the largeness of breasts / 4;
		now cow-summoned is 1;
		now basque-summoned is 1;
		now the quest of H is milk-serve-quest;
	otherwise if B is actually summonable or (B is bra and (cow-summoned is 0 or (the lactation rate of the player + the number of worn milk production clothing) < 1)):
		if cow-summoned is 0:
			repeat with O running through worn breast covering clothing:
				if B is bra or B is totally-exclusive or B is bottom-exclusive:
					say "Your [O] [wardrobeVanishes of O]!";
					now O is in pink wardrobe;
		say "[bold type]Your cow ears barely noticeably quiver, and then a cow print bikini top materialises on your chest.[roman type][line break]";
		summon B;
		now B is milk production;
		now the raw-magic-modifier of B is the largeness of breasts / 4;
		now cow-summoned is 1;
	otherwise if (the largeness of breasts > 15 or (the largeness of breasts > 8 and the largeness of breasts >= max breast size)) and (T is actually summonable or pierce is 1) and the class of the player is "cowgirl": [Not for multiclasses, since we probably can't destroy the dress]
		say "[bold type]Your cow ears barely noticeably quiver, and then suddenly you feel searing pain from your breasts! [if pierce is 1 and there is worn breast covering clothing]The clothing covering your breasts tears to shreds as a[otherwise]A[end if] [if pierce is 1]pair of high-gauge rings have appeared in your nipples[end if][if pierce is 1 and T is actually summonable], and even worse the [otherwise if T is actually summonable]The [otherwise]![end if][if T is actually summonable]Nintendolls logo is now branded just below your breasts![end if][roman type][line break]";[possible break this up in some way.]
		if pierce is 1:
			repeat with D running through worn breast covering clothing:
				now D is in pink wardrobe;
		summon P cursed;
		now P is milk production;
		if T is actually summonable, summon T;
		now cow-summoned is 1;
	otherwise if the class of the player is cowgirl and cowbell is actually summonable:
		say "[bold type]You feel a sudden coldness on your chest. You look down to see that [if cowbell is held]the cowbell has reappeared[otherwise]a cowbell has appeared[end if]![roman type][line break]";
		summon cowbell;
	otherwise if the class of the player is cowgirl and G is actually summonable:
		say "[bold type]New boots appear around your ankles! They have a cow pattern![roman type][line break]";
		summon G;
		now the raw-magic-modifier of G is (the milk volume of breasts + a random number between -2 and 6) / 5.

Chapter - Quest

milking-quest is a headgear-clothing-quest. milking-quest has a number called ready-for-milking. milking-quest has a number called successful-milks.

To uniquely set up (C - cow-ears):
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

cow-horns is a headgear. cow-horns is biological. Figure of cow horns is the file "Items/Accessories/Head/cowhorns1.png". Understand "pair", "pair of", "cow", "horns" as cow-horns. cow-horns is hair growing. cow-horns is milk-taste-addiction-influencing.

The printed name of cow-horns is "[clothing-title-before]pair of cow horns[clothing-title-after]". The text-shortcut of cow-horns is "ches".

To decide which figure-name is the clothing-image of (C - cow-horns):
	decide on figure of cow horns.

Definition: cow-horns is destructible: decide no.

Definition: cow-horns is fluid immune: decide yes.

Definition: cow-horns is cow themed: decide yes.
Definition: cow-horns is white themed: decide yes.

To uniquely set up (C - cow-horns):
	now the quest of C is babymaking-quest;
	if the pregnancy of the player > 0 and the pregnancy of the player < 3, now the previously-pregnant of babymaking-quest is 1.

To say ClothingDesc of (H - cow-horns):
	say "A pair of stubby cow horns poking out of your forehead. [unless H is removable]They seem to be real![otherwise]Luckily they're only attached to a headband.[end if]".

To compute SelfExamineDesc of (H - cow-horns):
	say "You [unless H is removable]have a pair of horns protruding from your head.[otherwise]are wearing a headband with a pair of horns.[end if]".

Cow Ears ends here.
