Cow Ears by Headgear begins here.

A cow ears is a kind of headgear.  A cow ears is usually manly.  There is 1 cow ears.  Figure of cow ears is the file "cowears1.png".  Understand "pair", "of" as cow ears.  A cow ears is usually hair growing.  A cow ears is usually milk-taste-addiction-influencing. A cow ears is usually roleplay. [###Selkie: should it also sometimes increase lactation rate?]

Definition: a cow ears (called C) is fluid immune:
	decide yes.

The printed name of cow ears is usually "[TQlink of item described][clothing-title-before]pair of cow ears[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of cow ears is "ce".

To decide which figure-name is the clothing-image of (C - a cow ears):
	decide on figure of cow ears.

To say ClothingDesc of (H - a cow ears):
	say "A pair of fake cow ears on a headband, that one might wear to a fancy dress party.".

To say ShortDesc of (H - a cow ears):
	say "fake cow ears".

To compute SelfExamineDesc of (H - a cow ears):
	let X be the largeness of hair;
	say "You are wearing a pair of [ShortDesc of H] on top of your [ShortDesc of hair].  ".

To compute periodic effect of (H - a cow ears):
	[compute headgear chances of H;]
	compute hair growth of H;
	compute hair colour change of H;
	compute class outfit of H;
	compute cowgirl horniness.

To compute cowgirl horniness:[cowgirls get horny if they're in the dungeon at the same time as the minotaur.]
	if the player is in the dungeon and there is an alive minotaurs and the player is a cowgirl:
		let M be a random minotaur in the location of the player;
		if M is monster and the arousal of the player < 3000 and the player is able to get horny:
			say "All it takes is one whiff of the [M]'s virile musk to send a wave of arousal rippling through your body. [second custom style]M-moooo.[roman type][line break]";
			now the arousal of the player is 3500;[the cowgirl is instantly horny in the same room as the minotaur, no matter what]
		otherwise if M is monster and a random number between 1 and 3 is 1:
			say "Spending time close to the [M] is causing your body to react to his potent virile hormones. You [if the arousal of the player > 1]get even more aroused![otherwise]can feel arousal building up inside you![end if]";
			arouse 300;
		otherwise if the player is in Dungeon36 and M is not monster and a random number between 1 and 3 is 1:
			now M is a random minotaur;
			say "Although the [M] isn't around, his musk still hangs over his cage, slowly building up your arousal.";
			arouse 150;
		otherwise if the headgear chance of a random cow ears < the threshold of a random cow ears:
			say "You catch a whiff of a heavy, masculine scent and start to feel a little [if the arousal of the player > 1]more [end if]turned on.";
			arouse 150.

cow-summoned is a number that varies.

To compute class outfit of (H - a cow ears):
	let B be a random off-stage cow print bikini top;
	let Q be a random off-stage cow print milking basque;
	let C be a random off-stage cowbell;
	let G be a random off-stage cow pattern boots;
	let P be a random off-stage cow piercing;
	let pierce be 0;
	if P is cow piercing and the number of worn nipple piercing is 0, now pierce is 1;
	let T be a random off-stage nintendolls-brand tattoo;
	if the headgear chance of H < the threshold of H:[We only check once so we avoid lag.]
		if Q is actually summonable:
			say "[bold type]Your cow ears barely noticeably quiver, and then a [ShortDesc of Q] materialises on your chest.[roman type][line break]";
			summon Q cursed;
			now Q is milk production;
			now the raw-magic-modifier of Q is the largeness of breasts / 4;
			now cow-summoned is 1;
			now basque-summoned is 1;
		otherwise if B is actually summonable or (B is bra and cow-summoned is 0):
			if cow-summoned is 0:
				repeat with O running through worn breast covering clothing:
					if B is bra or B is totally-exclusive or B is bottom-exclusive:
						say "Your [O] vanishes!";
						destroy O;
			say "[bold type]Your cow ears barely noticeably quiver, and then a cow print bikini top materialises on your chest.[roman type][line break]";
			summon B cursed;
			now B is milk production;
			now the raw-magic-modifier of B is the largeness of breasts / 4;
			now cow-summoned is 1;
		otherwise if (the largeness of breasts > 15 or (the largeness of breasts > 8 and the largeness of breasts >= max breast size)) and (T is actually summonable or pierce is 1):
			say "[bold type]Your cow ears barely noticeably quiver, and then suddenly you feel searing pain from your breasts! [if pierce is 1 and there is worn breast covering clothing]The clothing covering your breasts tears to shreds as a[otherwise]A[end if] [if pierce is 1]pair of high-gauge rings have appeared in your nipples[end if][if pierce is 1 and T is actually summonable], and even worse the [otherwise if T is actually summonable]The [otherwise]![end if][if T is actually summonable]Nintendolls logo is now branded just below your breasts![end if][roman type][line break]";[possible break this up in some way.]
			if pierce is 1:
				repeat with D running through worn breast covering clothing:
					destroy D;
			summon P cursed;
			if T is actually summonable, summon T;
		otherwise if C is actually summonable:
			say "[bold type]You feel a sudden coldness on your chest.  You look down to see that a cowbell has appeared![roman type][line break]";
			summon C cursed;
		otherwise if the player is a cowgirl and G is actually summonable:
			say "[bold type]New boots appear around your ankles!  They have a cow pattern![roman type][line break]";
			summon G cursed;
			now the raw-magic-modifier of G is (the milk volume of breasts + a random number between -2 and 6) / 5.


Cow Ears ends here.
