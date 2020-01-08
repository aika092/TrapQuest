Cow Ears by Headgear begins here.

cow-ears is a headgear. Figure of cow ears is the file "Items/Accessories/Head/cowears1.png". Figure of cow ears full is the file "Items/Accessories/Head/cowears2.png". Understand "pair", "pair of", "cow", "ears" as cow-ears. cow-ears is hair growing. cow-ears is milk-taste-addiction-influencing.


Definition: cow-ears is roleplay if lactation fetish is 1.
Definition: cow-ears is IcarusScienceAppropriate if it is actually summonable and lactation fetish is 1.

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
	compute cowgirl horniness.

cow-horny-charge is a number that varies.

To compute cowgirl horniness:[cowgirls get horny if they're in the dungeon at the same time as the minotaur.]
	if playerRegion is Dungeon and minotaur is alive and the class of the player is cowgirl:
		if minotaur is in the location of the player and the arousal of the player < 3000 and the player is able to get horny:
			say "All it takes is one whiff of the [minotaur]'s virile musk to send a wave of arousal rippling through your body. [line break][second custom style]M-moooo.[roman type][line break]";
			now the arousal of the player is 3500;[the cowgirl is instantly horny in the same room as the minotaur, no matter what]
		otherwise if minotaur is in the location of the player and a random number between 1 and 3 is 1:
			say "Spending time close to the [minotaur] is causing your body to react to [his of minotaur] potent virile hormones. You [if the arousal of the player > 1]get even more aroused![otherwise]can feel arousal building up inside you![end if]";
			arouse 300;
		otherwise if the player is in Dungeon36 and minotaur is not in the location of the player and a random number between 1 and 3 is 1:
			say "Although the [minotaur] isn't around, [his of minotaur] musk still hangs over [his of minotaur] cage, slowly building up your arousal.";
			arouse 150;
		otherwise:
			increase cow-horny-charge by 1;
			if cow-horny-charge > 15:
				now cow-horny-charge is 0;
				say "You catch a whiff of a heavy, masculine scent and start to feel a little [if the arousal of the player > 1]more [end if]turned on.";
				arouse 150.


Chapter - Class Outfit

Definition: cow-ears (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is cow themed and wearing-target is not C, decide yes;
	decide no.

cow-summoned is a number that varies.
To compute unique recycling of (C - cow-ears):
	now the ready-for-milking of milking-quest is 0;
	now cow-summoned is 0.

To compute class outfit of (H - cow-ears):
	let B be a random off-stage cow print bikini top;
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
	otherwise if B is actually summonable or (B is bra and cow-summoned is 0):
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
	otherwise if the class of the player is cowgirl and cowbell is off-stage and cowbell is actually summonable:
		say "[bold type]You feel a sudden coldness on your chest. You look down to see that a cowbell has appeared![roman type][line break]";
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


Cow Ears ends here.
