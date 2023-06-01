Altars by Objects begins here.

[!<DungeonAltar>@

The dungeon altar allows the player to remove curses from their clothes and obtain the priestess class. It becomes inactive after being used, and it recharges when the player kills monsters, when monsters grow bored, and when the player has sex with an enemy as the priestess. trying to use the altar while it is inactive will result in some sort of punishment.

@!]
The dungeon altar is a thing. The dungeon altar is in Dungeon28. The dungeon altar is not portable. The dungeon altar has a number called charge. The charge of the dungeon altar is usually -200. The printed name of dungeon altar is "[TQlink of item described]altar[shortcut-desc] [GlowDesc of the item described][TQxlink of item described][verb-desc of item described]". The indefinite article of the dungeon altar is "an". The text-shortcut of dungeon altar is "al". Figure of dungeon altar is the file "Env/Dungeon/altar1.jpg". Figure of dungeon altar cutscene is the file "Special/Cutscene/cutscene-altar-pray1.jpg".

To say GlowDesc of (A - dungeon altar):
	say "([if the class of the player is priestess and the charge of A > 0]unsafe[otherwise if the class of the player is priestess]safe[otherwise if the charge of A < -150]glowing strongly[otherwise if the charge of A < 100]glowing softly[otherwise]not glowing[end if])";

To decide which figure-name is the examine-image of (C - dungeon altar):
	decide on figure of dungeon altar.

To say ExamineDesc of (C - dungeon altar):
	say "A large stone slab in front of a giant statue of a proud naked woman with a huge [if pregnancy fetish > 0]pregnant [end if]belly.[if the class of the player is priestess and the charge of the dungeon altar <= 0][line break]Your holy powers allow you to detect that it is safe to use the altar again.[otherwise if the class of the player is priestess][line break]Your holy powers allow you to detect that it is [bold type]not[roman type] yet safe to use the altar again.[otherwise if the charge of item described < -150][one of]It looks like you could try to [bold type]place[roman type] something on it.[or]It looks fully recharged.[stopping][otherwise if the charge of item described < 100]It might be recharged enough to use it again, but it's difficult to say.[otherwise]It definitely need to be left to recharge its power before you use it again.[end if]";
	if newbie tips is 1, say "[one of][newbie style]Placing things on here can bless them. Placing yourself here can help you or give you the priestess class. The altar doesn't recharge over time like other objects. Instead, it recharges slowly each time you open a container or interact with an NPC.[roman type][line break][or][stopping]".

Check going when the player is in Dungeon28:
	force inventory-focus redraw; [This forces the inventory window to redraw]
	force clothing-focus redraw. [This forces the clothing window to redraw]

Report going when the player is in Dungeon28:
	force inventory-focus redraw; [This forces the inventory window to redraw]
	force clothing-focus redraw. [This forces the clothing window to redraw]

[!<WoodsAltar>@
The woods altar allows the player to randomly bless or uncurse items in exchange for a piece of jewellery. This altar is unique because it does not have a charge, and only jewellery can be placed on it.

@!]
The woods altar is a thing. The woods altar is in Woods20. The woods altar is not portable. The printed name of woods altar is "[TQlink of item described]small altar[if witch is bitchy and witch is in Woods20 and the altar-uses of witch is 1] (1 use remaining)[otherwise if witch is bitchy and witch is in Woods20] ([altar-uses of witch] uses remaining)[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". Understand "small" as the woods altar. The text-shortcut of woods altar is "al".

Figure of woods altar 0 is the file "Env/Forest/altar1.jpg".
Figure of woods altar 1 is the file "Env/Forest/altar2.jpg".
Figure of woods altar 2 is the file "Env/Forest/altar3.jpg".
Figure of woods altar 3 is the file "Env/Forest/altar4.jpg".
Figure of woods altar 4 is the file "Env/Forest/altar5.jpg".
Figure of woods altar 5 is the file "Env/Forest/altar6.jpg".

To decide which figure-name is the examine-image of (C - woods altar):
	if witch is bitchy and witch is in Woods20 and the altar-uses of witch > 0:
		if the altar-uses of witch is 1, decide on figure of woods altar 1;
		if the altar-uses of witch is 2, decide on figure of woods altar 2;
		if the altar-uses of witch is 3, decide on figure of woods altar 3;
		if the altar-uses of witch is 4, decide on figure of woods altar 4;
		decide on figure of woods altar 5;
	decide on figure of woods altar 0.

To say ExamineDesc of (C - woods altar):
	say "On top of a stone pillar rests a metal bowl shaped into several penises in a circle[one of]. It looks like you could try to [bold type]place[roman type] small objects, like jewellery, on it[or][stopping][if witch is bitchy and witch is in Woods20 and the altar-uses of witch is 1]. The altar has a single realistic penis amongst the metal ones, indicating that you are currently only allowed to use it one more time[otherwise if witch is bitchy and witch is in Woods20]. The altar has [altar-uses of witch] realistic penises amongst the metal ones, indicating how many times you are currently allowed to use it[end if].";
	if newbie tips is 1, say "[one of][newbie style]Placing jewellery on here will uncurse worn clothing. If you have no cursed clothing, it'll instead raise your lowest stat. Just make sure you've paid the witch's toll first.[roman type][line break][or][stopping]".

[!<ElderAltar>@
The elder altar gains charge when items are placed on the altar, and loses charge when the player uses the special invoking verb learned from the necronomicon.

@!]
The elder altar is a thing. The elder altar is in Mansion23. The elder altar is not portable. The printed name of elder altar is "[TQlink of item described]dark altar[shortcut-desc][if the charge of item described <= 0 and doomed >= 0] (glowing)[otherwise] (not glowing)[end if][TQxlink of item described][verb-desc of item described]". Understand "dark" as the elder altar. The indefinite article of the elder altar is "an". The elder altar has a number called charge. The text-shortcut of elder altar is "al".

Figure of elder altar cock is the file "Env/Mansion/cumcock1.jpg".
Figure of elder altar is the file "Env/Mansion/altar1.jpg".

To decide which figure-name is the examine-image of (C - elder altar):
	decide on figure of elder altar.

Definition: an elder altar is father material: decide yes.

Definition: An elder altar is live: decide yes.

To say ExamineDesc of (C - elder altar):
	if diaper quest is 0, say "A rough stone table. Grotesque unholy phallic symbols are carved into it, which glow from within with [if the charge of the elder altar < 100]faint[otherwise]bright[end if] unnatural violet light. On the front, naked women are drawn being overpowered by tentacles. You hear faint whispers in the air which get louder with proximity. ";
	otherwise say "A rough stone table. Grotesque symbols are carved into it, which glow from within with [if the charge of the elder altar < 100]faint[otherwise]bright[end if] unnatural violet light. You hear faint whispers in the air which get louder with proximity. ";
	say "You also notice a set of chains attached with manacles, clearly for securing people to the altar. You suppose you could try putting an item on it, or praying at it. You really don't want to think about what might happen if you got on it yourself.".

[!<HotelAltar>@
The hotel altar allows the player to gain unique demon-themed benefits in exchange for punishments. The more the altar is used, the better the benefit and the worse the punishment. The hotel altar gains charge when used and loses charge when the player kills a monster or when a monster grows bored. It also loses charge when the player has sex with an infernal monster as a worshipper.

@!]
The hotel altar is a thing. The hotel altar is in Hotel35. The hotel altar is not portable. The printed name of hotel altar is "[TQlink of item described]golden altar[shortcut-desc] [GlowDesc of the item described][TQxlink of item described][verb-desc of item described]". Understand "golden", "gold" as the hotel altar. The hotel altar has a number called charge. The charge of hotel altar is 45. The text-shortcut of hotel altar is "al".
The hotel altar has a number called altar-intensity. The altar-intensity of hotel altar is 3.

To say GlowDesc of (A - hotel altar):
	let N be the altar-intensity of A;
	say "([if the charge of A <= 0]dormant[otherwise if N < 2]glowing faintly[otherwise if N < 4]glowing strongly[otherwise]shining ominously[end if])";

Figure of hotel altar is the file "Env/Hotel/statue1.jpg".

To decide which figure-name is the examine-image of (C - hotel altar):
	decide on figure of hotel altar.

A time based rule (this is the hotel altar charge rule):
	if Hotel35 is discovered:
		increase the charge of hotel altar by 1;
		if the charge of hotel altar > a random number between 50 and 1000:
			now the charge of hotel altar is 0;
			increase the altar-intensity of hotel altar by 1.

To say ExamineDesc of (C - hotel altar):
	let N be the altar-intensity of C;
	say "A stone slab in front of a golden statue of a muscular [man of male-m][if diaper quest is 0] with a huge [manly-penis][end if], with a water feature spewing from its tip which makes it look like he's constantly [if diaper quest is 1]urinating[otherwise]ejaculating[end if]. The statue's eyes are inset with huge red gemstones. [if charge of C > 0]It seems dormant. [otherwise if N < 2]The gemstones are glowing with a faint red light. [otherwise if N < 4]The gemstones are glowing with a strong red light. [otherwise]The gemstones are shining with ominous red light. [end if][if N is 1]You have used the altar 1 time.[otherwise if N > 0]You have used the altar [N] times.[end if]";
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: Each time you use this altar, you get a positive effect but also a curse wisp. The longer it has been since the last time you used the altar (the strength of the glowing eyes), the better the positive effect will be.[roman type][line break][or][stopping]".

Check entering the dungeon altar:
	try praying the player with the dungeon altar instead.

Check entering the woods altar:
	try praying the player with the woods altar instead.

Check entering the elder altar:
	try praying the player with the elder altar instead.

Check entering the hotel altar:
	try praying the player with the hotel altar instead.

Definition: a thing (called C) is demonic:
	unless C is clothing, decide no;
	if C is possession, decide yes;
	if C is hostility, decide yes;
	decide no.

Praying it with is an action applying to two things.
Check praying something with:
	if the player is flying, say "You're not even on the ground!" instead;
	if the second noun is a dispenser, try decanting the noun with the second noun instead;
	if the second noun is a container, try inserting the noun into the second noun instead;
	if the second noun is HotelScenery01, try inking the noun instead;
	if the second noun is not the dungeon altar and the second noun is not the woods altar and the second noun is not elder altar and the second noun is not hotel altar, say "What would that do?" instead;
	if the second noun is woods altar:
		if the noun is clothing:
			if the noun is not accessory or the price of the noun < 1, say "That won't do anything." instead;
		otherwise:
			say "That won't do anything." instead;
	[if the second noun is elder altar:
		if the noun is not clothing and the noun is not the player:
			say "That won't do anything." instead;]
	if the player is immobile or the player is in danger, say "Aren't you a bit busy?" instead;
	allocate 6 seconds;
	if the noun is the player:
		if the second noun is dungeon altar:
			say "You kneel in front of the altar.";
		otherwise if the second noun is the elder altar:
			unless there is a dangerous acolyte in the location of the player, say "Against all sanity, you lie on the altar.";
		otherwise if the second noun is the hotel altar:
			say "You kneel down in front of the altar.";
		otherwise:
			say "It's too small for that!" instead;
	otherwise if the noun is a monster:
		say "Something tells you [he of the noun] won't let you." instead;
	otherwise:
		if the noun is worn and the second noun is dungeon altar, say "You lie on the altar, focusing your thoughts on the [ShortDesc of the noun].";
		otherwise say "You place the [ShortDesc of the noun] on the altar.";
	if the second noun is dungeon altar:
		if herald is alive, say "Nothing happens. For some reason, you can tell that [NameDesc of herald] is nullifying the powers of the goddess." instead;
		if the player is soulless, say "Nothing happens.[line break][variable custom style]'This couldn't be because my soul is gone, could it?'[roman type][line break]" instead;
		if the noun is a unicorn-horn:
			say "The smell of spring rain fills the room as the horn slowly disappears, completely replenishing the altar's strong blue glow.";
			destroy the noun;
			now the charge of the dungeon altar is 0 instead;
		otherwise if the noun is horn and minotaur is off-stage:
			now minotaur is in the location of the player;
			set up minotaur;
			now minotaur is unleashed;
			say "The smell of manly sweat fills the room as the horn slowly disappears, completely replenishing the altar's strong blue glow. But then, with a huge roar, [NameDesc of minotaur] appears where moments ago there was nothing but [his of minotaur] horn! Uh-oh...";
			destroy the noun;
			now the charge of the dungeon altar is 0 instead;
		otherwise if the charge of the dungeon altar > 0:
			if the noun is the player:
				AltarPunish the player;
			otherwise if the noun is accessory or (the noun is not upgradable clothing and the noun is not uncursed cursable clothing):
				AltarPunish the player;
			otherwise:
				AltarPunish the noun;
			if the class of the player is priestess, say "A voice appears in your head:[line break][second custom style]'Sister, you should know better than to provoke me!'[roman type][line break]" instead;
			say "A voice appears in your head:[line break][second custom style]'Do not test my powers so often!'[roman type][line break]" instead;
		otherwise if the noun is demonic:
			AltarPunish the player;
			say "A voice appears in your head:[line break][second custom style]'How dare you place such a thing on my altar!'[roman type][line break]" instead;
		otherwise if the class of the player is succubus:
			say "The altar appears inert. It seems the Goddess who rules it isn't inclined to help you." instead;
	otherwise if the second noun is elder altar and the noun is a unicorn-horn:
		now the charge of the elder altar is 0;
		say "The horn trembles as it is enveloped by black flames, shooting several long ropes of creamy white fluid across the surface of the altar before being consumed completely. Purple light suffuses the altar as the horn disappears in a puff of white smoke.";
		destroy the noun instead;
	otherwise if the second noun is hotel altar and the number of nonstalking wisps is 0:
		say "Nothing happens. Perhaps you have too many curse wisps already." instead.

To AltarPunish (T - a thing):
	if a random number between 0 and 5 < game difficulty:
		RandomStatDown 1;
	otherwise if there is a nonstalking wisp:
		deploy a wisp;
	otherwise:
		say "Nothing seems to happen.".

To AltarPunish (C - a clothing):
	if a random number between 1 and 2 is 1 or tutorial is 1:
		if C is worn upgradable clothing:
			potentially transform C;
			if tutorial is 1, say "[newbie style]Uh-oh, looks like the altar can only be used once in a while! There are lots of places like this in the game, with interactable entities that generally do good things for you, but you can only use them once in a while. The altar is the most important because it can bless clothing (and therefore remove curses) but it's also the most risky since it does bad stuff if you use it too early, before the cooldown is reset. If you want to 100% avoid this bad outcome, wait until it is 'glowing strongly' again. Anyway, [if the body soreness of the player > 0]there's only one more thing to do in this room. Let's get healed! Rooms with [bold type]furniture[newbie style] can generally be somehow used to heal up. This one is really straightforward, we just have to be on our knees and then we can use it to rest, healing over time! Let's try that now[otherwise]let's progress to the east[end if].[roman type][line break]";
		otherwise:
			say "Your [C] is momentarily surrounded by a dark glow.";
			curse the C;
			now the C is sure;
			if tutorial is 1, say "[newbie style]Uh-oh, looks like the altar can only be used once in a while! There are lots of places like this in the game, with interactable entities that generally do good things for you, but you can only use them once in a while. The altar is the most important because it can bless clothing (and therefore remove curses) but it's also the most risky since it does bad stuff if you use it too early, before the cooldown is reset. If you want to 100% avoid this bad outcome, wait until it is 'glowing strongly' again. Anyway, [if the body soreness of the player > 0]there's only one more thing to do in this room. Let's get healed! Rooms with [bold type]furniture[newbie style] can generally be somehow used to heal up. This one is really straightforward, we just have to be on our knees and then we can use it to rest, healing over time! Let's try that now[otherwise]let's progress to the east[end if].[roman type][line break]";
	otherwise:
		say "Nothing seems to happen.".

To AltarPunish (C - a bottle):
	if a random number between 1 and 2 is 1:
		say "Your [C] is momentarily surrounded by a dark glow.";
		curse C;
		now C is sure;
	otherwise:
		say "Nothing seems to happen.".

Carry out praying something with:
	if the second noun is dungeon altar:
		[if the class of the player is succubus and the souls of the player > 0:
			say "You feed one of the souls stored in your body into yourself for a moment, fooling the altar into accepting your prayer.";
			decrease the souls of the player by 1;]
		AltarPray the noun;
	if the second noun is woods altar:
		if the noun is accessory, WoodsOffer the noun;
		otherwise say "Nothing happens.";
	otherwise if the second noun is the elder altar: [To actually benefit from the elder altar's ability to bless things you need to learn a skill from a monster, the cultist otherwise all you can do is sacrifice things (which does at least let you destroy cursed clothing)]
		if doomed is -1:
			say "Nothing happens. The altar seems completely inert.";
		otherwise if the noun is the player and the charge of elder altar <= 0:
			ElderOffer;
			force commence doom;
			progress quest of insanity-quest;
		otherwise if the noun is clothing and the charge of elder altar <= 0:
			ElderSacrifice the noun;
			force commence doom;
		otherwise:
			say "Nothing happens.";
	otherwise if the second noun is the hotel altar:
		DevilPray the noun.


To compute unique teleportation to (R - Mansion23):
	unless the player is flying:
		say "You have appeared in mid-air a few inches above the dark altar! Uh-oh. You fall down onto it!";
		if the charge of elder altar <= 0:
			ElderOffer;
			force commence doom;
		otherwise:
			say "Nothing happens.".

[!<AltarPrayThing>+

Determines how the dungeon altar will handle an item, "T", that has been placed on it

@param <Thing>:<T> The thing placed on the dungeon altar

+!]
To AltarPray (T - a thing):
	AltarUniqueReward of T;
	if the charge of dungeon altar <= 0:[The reward already happened in the previous function if this is false]
		if (T is blessable and T is not blessed) or T is ritual-beads or (T is runic headband and T is not purity):
			AltarReward T;
		otherwise:
			say "Nothing seems to happen.".

[!<AltarUniqueRewardThing>+

Defines any unique effects that should happen for an item, "T" when placed on the dungeon altar. If the item is completely unique, it should completely rewrite AltarPrayThing instead

@param <Thing>:<T> The thing placed on the dungeon altar

+!]
To AltarUniqueReward of (T - a thing):
	do nothing.

[!<SayGoddessAddress>+

Displays some text when the "altar goddess" addresses the player

+!]
To say GoddessAddress:
	say "[if the class of the player is priestess]Loyal Sister [otherwise if the bimbo of the player < 5]Brave [otherwise if the bimbo of the player < 9]Beloved [otherwise]My favourite minx [end if][TitleBimbo],[if the bimbo of the player > 8 and the bimbo of the player < 13] my pet,[end if]";

[To AltarUniqueReward of (T - a headgear):
	if the class of the player is adventurer and the vaginalvirgin of the player is 1 and T is not runic headband and runic headband is off-stage and T is not severed-tentacle and the number of worn headgear is 1 and T is worn:
		say "A shimmering blue light surrounds you as your [ShortDesc of T] shapeshifts, first turning into pure visible energy and then settling into form as some kind of religious headband. A voice appears in your head:[line break][second custom style]'Loyal Sister, you have been chosen to follow the holy path of righteousness! Go, with grace, but do not forget your duties.'[roman type][line break]";
		only destroy T;
		summon runic headband cursed;
		reset dungeon altar.]

To AltarUniqueReward of (T - flower hairclip):
	let D be a random worn overdress;
	if D is not golden warrior priestess outfit:
		repeat with X running through worn breast covering clothing:
			unless X is D:
				say "Your [X] vanishes!";
				destroy X;
		repeat with X running through worn belly covering clothing:
			unless X is D:
				say "Your [X] vanishes!";
				destroy X;
		repeat with X running through worn skirted clothing:
			unless X is D:
				say "Your [X] vanishes!";
				destroy X;
		say "A shimmering blue light surrounds you as [if D is clothing]your [ShortDesc of D] shapeshifts, first turning into pure visible energy and then[otherwise]pure visible energy surrounds you before eventually[end if] settling into form as some kind of bizarre solid gold frame. A voice appears in your head:[line break][second custom style]'At last, the chosen one has arrived! You are the True Herald, the prophecies speak of your role in deciding the destiny of our entire clan. Now go, and keep yourself pure, for if you fail, all your descendants will be doomed to be nothing but the playthings of the monsters of this world.'[line break][variable custom style][if the bimbo of the player < 14]My virginity decides the future of this entire world? That's an extreme amount of responsibility to just drop on someone...[otherwise]I'll do my best, but that outcome sounds kind of fun![end if][roman type][line break]";
		if D is clothing, silently transform D into golden warrior priestess outfit;
		otherwise summon golden warrior priestess outfit;
	otherwise:
		say "Your [golden warrior priestess outfit] glows blue as its power is enhanced with holy magic!";
		increase the raw-magic-modifier of golden warrior priestess outfit by 1;
		now golden warrior priestess outfit is blessed;
	if T is not cursed:
		say "Your [ShortDesc of T] becomes cursed again! You'll have to stay like this, at least for a little while...";
		now T is cursed;
	reset dungeon altar.

To AltarPray (P - a person):
	cutshow figure of dungeon altar cutscene for dungeon altar;
	if the altar-used of dungeon-altar-errand is 0 and the current-errand of Icarus is dungeon-altar-errand and Icarus is alive and Icarus is undefeated:
		say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] I have heard your prayer for Icarus, and shall reward him accordingly!'[roman type][line break]";
		now the altar-used of dungeon-altar-errand is 1;
	otherwise:
		say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] I shall help you on your quest!'[roman type][line break]";
		MagicPowerRefresh 4;
		while 1 is 1:
			let R be a random number from 1 to 9;
			if the class of the player is priestess and (the vaginalvirgin of the player is 0 or the player is not possessing a vagina):
				let T be ritual-beads;
				if T is actually summonable and T is off-stage:
					summon T;
					now T is blessed;
					say "You feel your [asshole] being forced open as a [printed name of T] materialises in your ass.";
					break;
			if permanent makeup is 1:
				say "The make up on your face feels less... permanent. Maybe it will start to fade soon!";
				now permanent makeup is 0;
				break;
			if the pregnancy of the player > 0:
				if (the number of carried pregnancy themed things - the number of carried pregnancy themed clothing is 0 and the number of worn pregnancy themed clothing is 0) or (the pregnancy of the player is 3 and the class of the player is not broodmother):
					say "You feel an emptiness inside of you. Suddenly, your belly dramatically shrinks!";
					now the pregnancy of the player is 0;
					WombEmpty the womb volume of vagina;
					now the small egg count of vagina is 0;
					now the medium egg count of vagina is 0;
					now the large egg count of vagina is 0;
					break;
			if the player is hungry:
				say "You feel full!";
				now the stomach-food of the player is 4;
			if the thirst of the player > 3:
				say "You feel that your thirst has been quenched.";
				while the thirst of the player > 0:
					increase the stomach-water of the player by 1;
			if R is 1 and the largeness of breasts > 6 and the largeness of breasts > the real largeness of breasts:
				say "You feel your breasts shrink.";
				BustDown 4;
				break;
			if R is 2 and the thickness of hips > 3 and the thickness of hips > the real thickness of hips:
				say "You feel your hips shrink.";
				HipDown 2;
				break;
			if R is 3 and the sex addiction of the player > 7:
				say "You feel less perverted.";
				SexAddictDown 2;
				break;
			otherwise if R is 3:
				say "You feel more intelligent.";
				IntUp 1;
				break;
			if R is 4 and the fatigue of the player > 100:
				say "You feel instantly refreshed.";
				now the fatigue of the player is 0;
				break;
			if R is 5:
				if the body soreness of the player > 5 or the soreness of asshole > 5 or the soreness of vagina > 5:
					say "Your entire body feels less sore.";
					heal asshole times 2;
					heal vagina times 2;
					BodyHeal 2;
					break;
			if R is 6 and the humiliation of the player < 40000 and the humiliation of the player >= 2000:
				say "You feel less humiliated about your current situation.";
				dignify 2000;
				break;
			if R is 7 and the largeness of hair > 7:
				say "About half the length of your hair is magically chopped off!";
				HairCut to the largeness of hair / 2;
				break;
			if R is 8 and the mystical size of penis < 10 and the player is somehow possessing a penis:
				say "You feel more virile!";
				SpecialPenisUp 1; [#LXorDD]
				if the mystical size of penis is previous penis length, SexAddictDown 2;
				break;
			if R is 9:
				if there is a worn tattoo and angel tattoo is not worn:
					summon angel tattoo;
					say "A tattoo of an angel appears on your right arm. You feel less slutty!";
					break;
		if the pregnancy of the player is 0 and the womb volume of vagina is 0 and runic headband is actually summonable:
			say "A shimmering blue light surrounds you as your pure visible energy rushes around your body and then settles into the form of some kind of religious headband. A voice sounds in your head:[line break][second custom style]'Loyal Sister, you have been chosen to follow the holy path of righteousness! Go, with grace, but do not forget your duties.'[roman type][line break]";
			summon runic headband cursed;
			if the player is possessing a vagina and the vaginalvirgin of the player is 0:
				say "[bold type]The pure aura of your headband clashes with your lost vaginal virginity![roman type][line break]";
				compute virginity-loss of runic headband;
		otherwise if flower hairclip is worn:
			AltarUniqueReward of flower hairclip;
		follow the player class rules;
		if diaper quest is 0 and (runic headband is worn or the class of the player is priestess):
			if ritual-beads is not held and ritual-beads is not in the location of the player:
				only destroy ritual-beads;
				now ritual-beads is in the location of the player;
				say "[BigNameDesc of ritual-beads] appears at your feet.";
				compute autotaking ritual-beads;
			let C be a random worn cursed sex toy;
			if C is sex toy:
				bless C;
	reset dungeon altar.

To AltarReward (T - wrist bond):
	if T is cursed:
		if strongCurses is 1:
			compute new quest of T;
		otherwise:
			say "*Click!* It would appear that the [ShortDesc of T] has lost its curse!";
			bless T;
			reset dungeon altar;
	otherwise:
		say "Nothing seems to happen.".

To AltarReward (T - chastity bond):
	if T is cursed:
		if strongCurses is 1:
			compute new quest of T;
		otherwise:
			say "*Click!* It would appear that the [ShortDesc of T] has lost its curse!";
			bless T;
			reset dungeon altar;
	otherwise:
		say "Nothing seems to happen.".

To AltarReward (T - ankle bond):
	if T is cursed:
		if strongCurses is 1:
			compute new quest of T;
		otherwise:
			say "*Click!* It would appear that the [ShortDesc of T] has lost its curse!";
			bless T;
			reset dungeon altar;
	otherwise:
		say "Nothing seems to happen.".

To AltarPray (T - a tattoo):
	say "You watch as the tattoo slowly fades from existence!";
	destroy T;
	now T is in Holding Pen;
	AltarUniqueReward of T;
	reset dungeon altar.

To AltarReward (T - a bottle):
	now the curse-ID of T is sure;
	say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] [if T is cursed]I shall remove this curse for you!'[otherwise if T is not known-potion and T is not empty]I shall identify this potion for you!'[otherwise]Drink my holy juices and good fortune shall come to you!'[end if][roman type][line break]";
	if T is cursed:
		bless T;
	otherwise if T is not known-potion and T is not empty:
		now the Known corresponding to an Magic of the fill-type of T in the Table of Drinks is 1;
		say "Your mind is filled with new knowledge. The [ShortDesc of T] contains a [PotionType of T]!";
	otherwise:
		now the fill-colour of T is appearance corresponding to an Magic of 7 in the Table of Drinks; [Potion of brilliance]
		DoseUp T by the max-doses of T;
		say "The [ShortDesc of T] is filled up to the brim with a [PotionType of T]!";
	reset dungeon altar.

To AltarReward (T - a clothing):
	say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] [if T is cursed and strongCurses is 1]I shall help you with this curse[otherwise if T is cursed]I shall remove this curse for you[otherwise]I shall bless this item for you[end if]!'[roman type][line break]";
	now T is sure;
	if T is purity and flower hairclip is worn:
		AltarUniqueReward of flower hairclip;
	if T is cursed and strongCurses is 1:
		let OQ be the quest of T;
		compute new quest of T;
		if the quest of T is OQ, say "The altar is still glowing.";
		otherwise reset dungeon altar;
	otherwise:
		bless T;
		reset dungeon altar.
	[if T is not blessed and T is worn and T is not piercing:
		say "Would you like to remove the [ShortDesc of T] immediately? ";
		if the player is consenting, try taking off T.]

To WoodsOffer (T - an accessory):
	let max-bless-count be the price of T;
	if max-bless-count < 2, now max-bless-count is 2;
	let bless-count be max-bless-count;
	now bless-count is bless-count / 2;
	if bless-count is 0, say "Nothing seems to happen.";
	let LC be the list of worn cursed blessable clothing;
	sort LC in random order;
	while bless-count > 0:
		decrease bless-count by 1;
		if the number of entries in LC is 0:
			if the raw strength of the player >= 20 and the raw dexterity of the player >= 20 and the raw intelligence of the player >= 20:
				say "You feel magic energy flow through you but fizzle out without making a difference. Maybe you're too powerful already for the altar to be able to help you any more?";
			otherwise if the raw intelligence of the player < the raw strength of the player and the raw intelligence of the player < the raw dexterity of the player:
				say "You feel yourself getting [smarter]!";
				IntUp 1;
			otherwise if the raw strength of the player <= the raw intelligence of the player and the raw strength of the player < the raw dexterity of the player:
				say "You feel yourself getting stronger!";
				StrengthUp 1;
			otherwise:
				say "You feel yourself getting faster!";
				DexUp 1;
			now bless-count is 0; [All jewellery just increases a stat once.]
			[if max-bless-count is 0, say "Nothing seems to happen.";
			if max-bless-count > 0 and bless-count is 0:
				say "The [noun] ignites, [if the price of the noun <= 3]producing only the tiniest tongue of white flame that flickers for scant second before consuming it entirely with a dim flash[otherwise if the price of the noun <= 5]shining brightly for a few seconds before disappearing altogether with a dazzling flash[otherwise]burning as brightly as magnesium before disappearing altogether with a blinding flash[end if].";
				remove the noun from play;]
		otherwise:
			let C be entry 1 in LC;
			remove C from LC;
			if strongCurses is 1:
				say "Your [C] vibrates as the curse is modified.";
				compute new quest of C;
			otherwise:
				say "The [printed name of C] shines brightly and loses its curse!";
				bless C;
		if bless-count is 0:
			say "The [ShortDesc of T] disappears into nothingness.";
			remove T from play;
	if witch is in the location of the player, WitchCheck witch.

To WitchCheck (M - witch):
	if the altar-uses of witch <= 0 and witch is bitchy:
		if witch is unconcerned or witch is uninterested:
			say "[second custom style]'[one of]Hey, what the fuck do you think you're doing! No using that without my permission!'[or]You again! You do not have my permission to use this altar!'[stopping][roman type][line break]Oops, looks like you've angered the [ShortDesc of witch]!";
			anger witch;
			interest witch;
			now witch is unleashed;
		if witch is alive, progress quest of stealing-quest;
	otherwise if witch is bitchy:
		decrease the altar-uses of witch by 1.

To reset elder altar:
	if the charge of elder altar < 0, now the charge of elder altar is 0;
	increase the charge of the elder altar by 300.

To ElderEmpower (T - a headgear):[default]
	do nothing.

To ElderEmpower (W - laurel wreath):
	say "You feel cold and wet on your arms as the manacles suddenly turn into tentacles! More tentacles appear on either side and begin to thrash out at everything you're wearing below your head!";
	repeat with C running through worn clothing:
		if C is not laurel wreath and (C is destructible or C is overdress) and C is not equippable and C is not bondage:
			say "Your [C] is torn apart!";
			destroy C;
	say "Your clothing removed, you begin to feel terrible foreboding. But as suddenly as they appeared, the tentacles simply vanish. As you consider how lucky you were, though, a sudden pain from your neck rips through your body! You get up with a start, and feel a warm, pulsing lump attached to you. One that should definitely be there. It's definitely okay that it is there. As you think this, purple tentacles come out of it and wrap around your body, accentuating your curves. How thoughtful.";
	class summon living tentacles;
	reset elder altar.

voidbladeSummoned is initially false.
To ElderEmpower (T - flower hairclip):
	if voidbladeSummoned is false and abyssal tattoo is worn:
		say "The darkness of the room grows profound, and you can feel it pressing into you almost like a weight. The only sensation you can feel for what seems like forever is the pressure of the dark. One minute or a thousand years, you are no longer able to even sense time. Time no longer exists. The world no longer exists. You no longer exist. Yes. Forget... Suddenly pink motes begin to flow from your body, and you feel a sense of joy at somehow knowing those are your useless former life leaving you. They form into the shape of a sword, and as the lights come back up, a shard of the darkness remains.";
		now voidblade is in Mansion23;
		IntDown 2;
		reset elder altar;
		now voidbladeSummoned is true;
		compute autotaking voidblade.

To ElderEmpower (T - runic headband):
	let R be ritual-beads;
	if R is actually summonable and R is off-stage:
		say "You feel your [asshole] being forced open as a [ShortDesc of R] materialises in your ass.";
		summon R cursed;
		reset elder altar.

To ElderEmpower (T - a cultist veil):
	let R be ritual-beads;
	if R is actually summonable and R is off-stage:
		say "You feel your [asshole] being forced open as a [ShortDesc of R] materialises in your ass.";
		summon R;
		now R is cursed;
		reset elder altar.

To ElderOffer:
	say "What little light there is in the room extinguishes, and the [if there is an acolyte in the location of the player]cultist forces manacles onto your arms and legs[otherwise]manacles suddenly come to life and secure your arms and legs[end if]. There's no escape now!";[there will eventually be multiple possible things that happen to you on the altar]
	let H be a random worn headgear;
	now the charge of elder altar is 0;
	if diaper quest is 0 and H is headgear, ElderEmpower H;
	if the charge of elder altar is 0 or diaper quest is 1: [if nothing happened with your headgear, it's time to breed]
		if ritual-beads is worn:
			ElderSacrifice ritual-beads;
		otherwise if diaper quest is 0:
			if the player is possessing a vagina, ElderBreed vagina;
			otherwise ElderBreed asshole;
		otherwise:
			ElderConnect;
		reset elder altar.

To ElderBreed (F - vagina):[this one needs handling for pussy covering clothing Aika: it also needs to do something for males, I assume? And what about females that are unable to orgasm? ("if the player is not able to get horny")]
	repeat with C running through top level protection clothing worn by the player:
		say "Your [C] vanishes in an ominous black flame!";
		destroy C;
	repeat with E running through bottom level protection clothing worn by the player:
		say "Your [E] vanishes in an ominous black flame!";
		destroy E;
	repeat with D running through things penetrating a fuckhole:
		say "Your [D] vanishes in an ominous black flame!";
		destroy D;
	now elder altar is penetrating vagina;
	if the player is able to get horny:
		say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your [vagina]. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your [vagina] without hesitation, unexpectedly firm yet oddly fluid.";
		ruin vagina times 2;
		say "You are blown away by the sensation, and in spite of yourself you begin moaning in ecstasy. The creature seems to be encouraged by your reaction and only increases its force, which in turn causes your reactions to increase as well. For a while sensation overwhelms you, and finally you cannot help yourself.[line break]";
		vaginally orgasm shamefully;
		say "The creature seemed to be waiting for this moment, and you feel it begin to pump [semen] into you even as you orgasm. In a shockingly short time it seems like it has sprayed most of its body into your womb, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.";
	otherwise:
		say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your [vagina]. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your [vagina] without hesitation, unexpectedly firm yet oddly fluid. In spite of your lack of reaction, it appears perfectly content to thrust and pump away at you. Eventually it tenses up, and begins spraying semen into you. In a shockingly short time it seems like it has sprayed most of its body into your womb, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.";
	appropriate-cutscene-display Figure of elder altar cock with priority 3;
	FuckCount;
	increase the charge of the elder altar by 500;
	PussyFill 25;
	now elder altar is not penetrating vagina;
	MagicPowerUp 2;
	if whispered > 0 and whisper-type is 1:
		now whisper-tracking is 1.

To ElderBreed (F - asshole):
	repeat with C running through top level protection clothing:
		say "Your [C] vanishes in an ominous black flame!";
		destroy C;
	repeat with E running through bottom level protection clothing:
		say "Your [E] vanishes in an ominous black flame!";
		destroy E;
	repeat with D running through things penetrating a fuckhole:
		say "Your [D] vanishes in an ominous black flame!";
		destroy D;
	now elder altar is penetrating asshole;
	if the player is able to get horny:
		say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your ass. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your ass without hesitation, unexpectedly firm yet oddly fluid.";
		ruin asshole times 2;
		say "You are blown away by the sensation, and in spite of yourself you begin moaning in ecstasy. The creature seems to be encouraged by your reaction and only increases its force, which in turn causes your reactions to increase as well. For a while sensation overwhelms you, and finally you cannot help yourself.[line break]";
		anally orgasm shamefully;
		say "The creature seemed to be waiting for this moment, and you feel it begin to pump [semen] into you even as you orgasm. In a shockingly short time it seems like it has sprayed most of its body into your asshole, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.";
	otherwise:
		say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your ass. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your ass without hesitation, unexpectedly firm yet oddly fluid. In spite of your lack of reaction, it appears perfectly content to thrust and pump away at you. Eventually it tenses up, and begins spraying semen into you. In a shockingly short time it seems like it has sprayed most of its body into your asshole, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.";
	appropriate-cutscene-display Figure of elder altar cock with priority 3;
	AnalCount;
	increase the charge of the elder altar by 500;
	AssFill 25;
	now elder altar is not penetrating asshole;
	MagicPowerUp 2;
	if whispered > 0 and whisper-type is 1:
		now whisper-tracking is 1.

altar-diaper-link is initially 0.
To ElderConnect:
	if diaper messing >= 3:
		repeat with D running through things penetrating asshole:
			say "Your [ShortDesc of D] vanishes in an ominous black flame!";
			destroy D;
	let D be a random worn knickers;
	if D is clothing and D is not demon-diaper:
		say "Your [D] vanishes in an ominous black flame!";
		destroy D;
	now D is demon-diaper;
	if D is not worn:
		say "A pink diaper with an image of a pentagram appears around your loins!";
		summon D cursed;
	if D is not dry:
		fully clean D;
		say "Your [ShortDesc of D] becomes completely clean!";
	if D is not cursed:
		say "You feel a curse being laid on [NameDesc of D]!";
	if the quest of D is not doom-quest:
		now the quest of D is doom-quest;
		say QuestFlav of D;
	now altar-diaper-link is 99999;
	if the raw-bladder-incontinence of the player < the max-bladder-incontinence of the player:
		say "It feels like you no longer have 'ownership' over your own bladder. You feel your control weaken.";
		SilentlyBladderIncontinenceUp 1;
	RectumIncontinenceUp 1;
	compute periodic effect of D.

To ElderSacrifice (T - a thing):
	if T is uncursed magic-enhanceable clothing and the raw-magic-modifier of T < a random number between 3 and 5:
		say "The [printed name of T] flashes blue. ";
		increase the raw-magic-modifier of T by 1;
		now T is identified;
		say "It is now a [T].";
		if doom counter > 0, increase doom counter by 45;
		say "The air becomes slightly heavier. You sense that you have somehow given the altar a little more power.";
	otherwise:
		say "The [printed name of T] bursts into [one of]ominous black flames! Fortunately, it seems they are not actually hot. [or]those same heatless black flames[stopping]It finally vanishes in a puff of smoke.";
		if T is mystical amulet and there is a worn tattoo:[Make sure the player can get tattoos]
			increase the charge of the elder altar by 200;
			say "You feel that the dark beings this altar belongs to are especially pleased! You feel a sudden burning sensation as some jagged black marks burn themselves into your skin!";
			now power-stolen of mechanic is 1; [We want to put the mechanic into a state where his quest is inactive and he's also unable to turn into Xavier, since his power has now been permanently lost to him]
			summon abyssal tattoo;
		otherwise if T is cursed clothing:
			if whispered > 0 and whisper-type is 2:
				now whisper-tracking is 1;
			if doom counter > 0, increase doom counter by 100;
			say "The heaviness in the air intensifies. You sense that you have somehow given the altar more power.";
		destroy T;
	reset elder altar.

[TODO: less wordy alternative]
To ElderReward (T - ritual-beads):
	let N be the notch-taken of T;
	let F be a random fuckhole penetrated by T;
	if T is worn:
		say "The [ShortDesc of T] shifts inside you, and the [if N is 3]3rd[otherwise if N is 2]2nd[otherwise if N is 1]1st[otherwise][N]th[end if] bead pops out all on its own - and immediately bursts into flames. Each bead pops out in rapid succession, catching on fire and disintegrating into glowing embers within seconds. The manacles pull on your wrists and ankles as the last of the beads is destroyed, forcing you to lie fully spread-eagled on the altar.";
		Ruin F times N;
		now the notch-taken of T is 0;
		dislodge T;
	otherwise:
		now N is the notches of T;
		say "The [if N is 3]3rd[otherwise][N]th[end if] notch of the [ShortDesc of T] suddenly bursts into flames. The same thing happens to each in succession, each bead catching fire and disintegrating into piles of glowing embers within seconds. The manacles pull on your wrists and ankles as the last of the beads is destroyed, forcing you to lie fully spread-eagled on the altar.";
	compute dark reward of T;
	increase the size of T by 1;
	now the notches of T is 3;
	now T is in the location of the player;
	say "Blue light condenses in front of the altar as the manacles release you, forming a new [ShortDesc of T] with three beads.";


To ElderSacrifice (T - ritual-beads):
	let A be the number of acolytes in the location of the player;
	unless T is worn, say "What little light there is in the room extinguishes, and the [if A is 1]cultist springs into action, forcing you onto the altar and securing manacles to your arms and legs[otherwise if A > 1]cultists spring into action, forcing you onto the altar and securing manacles to your arms and legs[otherwise]manacles suddenly come to life, latching onto your arms and legs as they drag you onto the altar[end if]. There's no escape now![line break]";
	otherwise say "What little light there is in the room extinguishes, and the [if A is 1]cultist springs into action, securing manacles to your arms and legs[otherwise if A > 1]cultists spring into action, securing manacles to your arms and legs[otherwise]manacles suddenly come to life, securing your arms and legs[end if]. There's no escape now![line break]";
	ElderReward T.

[!<ComputeDarkRewardOfRitualBeads>+

Provides a reward from the dark altar, influenced by how much the ritual beads have been charged. Rewards here should generally be better than the the dungeon altar, but with the drawback of being humiliating.

@param <Ritual-Beads>:<T> The ritual beads

+!]
To compute dark reward of (T - ritual-beads):
	let N be the notches of T;
	let R be a random number between (N / 2) and N;
	if N > 6, now R is 6;
	if R >= 6 and jinx-beads is off-stage:
		let B be a random worn hand ready equippable; [Would be more destructive, but B could potentially be a handbag]
		say "[if interracial fetish is 1]A long, black tentacle[otherwise]A long, thin tentacle[end if] reaches out from the darkness above you, [if B is clothing]ripping your [ShortDesc of B] out of your hand as it wriggles[otherwise]wriggling[end if] around your wrist and between your fingers. Your inability to pull away only makes the experience more dehumanising, and it lasts so long that you wonder if you're hallucinating when the tentacle transforms into a set of tiny black beads.";
		now B is in the location of the player;
		summon jinx-beads;
		moderateHumiliate;
	otherwise if R >= 5 and the milk volume of breasts > 0:
		let M be the milk volume of breasts;
		say "Your mind is assaulted with visions of [if interracial fetish is 1]big, black [end if]tentacles squeezing your [BreastDesc] as milk spontaneously [if M > 10]squirts[otherwise]dribbles[end if] out of your nipples! The experience leaves you feeling incredibly drained, but also strangely purified.";
		now the milk volume of breasts is 0;
		SexAddictDown 1; [The idea here is that "impurities" are being wrung out too, but we specifically leave semen addiction, bbc addiction and vaginal sex addiction alone.]
		SemenTasteAddictDown 1;
		OralSexAddictDown 1;
		AnalSexAddictDown 1;
		obsceneHumiliate; [If this outcome is too good, we can bump this up to 'ultra' level]
		now the fatigue of the player is the buckle threshold of the player;
	otherwise if R >= 4: [cockslap vision]
		say "Your mind is assaulted with a vision of a huge [if interracial fetish is 1]black [end if]tentacle clapping you in the face as the wind is suddenly knocked out of you! The experience somehow leaves your body feeling stronger and more flexible.";
		StrengthUp 1;
		DexUp 1;
		obsceneHumiliate;
		now the fatigue of the player is the buckle threshold of the player;
	otherwise if R >= 3:
		say "Your mind is assaulted with visions of [if interracial fetish is 1]big, black [end if] tentacles rubbing their huge forms between your legs as tingles pass through your [genitals]. You suddenly feel considerably less sore!"; [Selkie: genitals encompasses the barbie case, with more variation too.]
		Heal asshole times 10;
		Heal vagina times 10;
		now the rawness of penis is 0;
		severeHumiliate;
	otherwise if R >= 2:
		say "Your mind is assaulted with visions of [if interracial fetish is 1]big, black [end if]tentacles spraying you with [if bukkake fetish is 1]off-white [end if]liquid as your clothes are spontaneously soaked. The 'soaking' wears off within moments, leaving you completely refreshed, and your clothing remarkably clean.";
		repeat with C running through worn clothing:
			now the semen-soak of C is 0;
			now the urine-soak of C is 0;
			now the milk-soak of C is 0;
			now the water-soak of C is 0;
			if C is glued, ungluify C;
		repeat with B running through body parts:
			now the semen coating of B is 0;
			if B is hair, now the urine coating of B is 0;
		now the fatigue of the player is 0;
		severeHumiliate;
	otherwise:
		say "Your mind is assaulted with visions of [if interracial fetish is 1]big, black [end if]tentacles rubbing themselves all over your body as your muscles spontaneously relax. The experience leaves you completely free of any of your previous aches and pains.";
		now the body soreness of the player is 0;
		severeHumiliate.

To AltarReward (T - runic headband):
	if T is not purity:
		let N be the used condoms of T;
		if N < 3:
			let D be 3 - N;
			say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] your job is yet to be finished! Return and offer the headband to this altar after you complete [D] more ritual[if D > 1]s[end if].'[roman type][line break]";
		otherwise:
			say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] this holy trial is completed! I grant you this gift to help you on your quest!'[roman type][line break]";
			unless T is blessed, now T is blessed;
			say "Blue light condenses around [NameDesc of T], and the pinned condoms disappear!";
			progress quest of priestess-vaginal-service-quest;
			UsedCondomWipe T;
			let C be a random worn priestess outfit;
			if C is clothing and the raw-magic-modifier of C < 5:
				say "A blue hue surrounds your [C]. ";
				increase the raw-magic-modifier of C by 1;
				say "It is now a [C]!";
		reset dungeon altar.

To AltarReward (T - a condom hat):
	if the player is possessing a vagina and the vaginalvirgin of the player is 0:
		transform T into runic headband;
		say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] you are not pure enough to be a proper priestess! But we still have uses for sluts like you who are smart enough to protect their womb with condoms. From now on, you must use that sinful [cunt] of yours to service the [men of male-m] of this world. But beware, if you [if pregnancy fetish > 0]fall pregnant[otherwise]fill your sacred womb with too much seed[end if], you will not be forgiven, and the price will be dear. Present your headband with [']evidence['] of your service to my altar when your deeds are complete.'[roman type][line break]";
		let C be runic headband;
		now C is cursed;
		now the quest of C is priestess-vaginal-service-quest;
		now C is not purity;
		increase the empty condoms of C by the used condoms of C;
		UsedCondomWipe C;
		let PO be a random worn dress;
		if PO is clothing and the number of worn dress is 1: [progressively worse but rarer ways of getting the right outfit on]
			transform PO into cameltoe-priestess-outfit;
		otherwise if cameltoe-priestess-outfit is unclash summonable:
			unclash class summon cameltoe-priestess-outfit;
		otherwise if PO is clothing:
			transform PO into cameltoe-priestess-outfit;
		otherwise:
			summon cameltoe-priestess-outfit uncursed;
			say "A [cameltoe-priestess-outfit] appears on you!";
		reset dungeon altar.

To AltarReward (T - ritual-beads):
	if T is worn:
		say "A voice appears in your head:[line break][second custom style]'[GoddessAddress], you should remove your ritual beads before presenting them to the Goddess!'[roman type][line break]";
	otherwise:
		let N be the notches of T;
		if N < 6:
			let D be 6 - N;
			say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] your job is yet to be finished! Return and offer the beads to this altar after you complete [D] more ritual[if D > 1]s[end if]. In the meantime, here is a gift to help you continue this quest!'[roman type][line break]";
		otherwise:
			say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] this holy trial is completed! I grant you this gift to help you on your quest!'[roman type][line break]";
			unless T is blessed, now T is blessed;
			if the size of T < 10:
				say "[line break]Blue light condenses around [NameDesc of T], and it transforms into a ";
				increase the size of T by 1;
				let N be the notches of T;
				now the notches of T is 3;
				say "[T] with three notches again!";
				compute light reward of T at N;
			otherwise:
				compute light reward of T at N;
			if vaginal seal is off-stage:
				blandify and reveal vaginal seal;
				now vaginal seal is in the location of the player;
				say "A [vaginal seal] flutters to the ground in front of you!";
				compute autotaking vaginal seal;
			progress quest of priestess-service-quest;
			progress quest of priestess-vaginal-service-quest;
		reset dungeon altar.

[!<ComputeLightRewardOfRitualBeads>+

Provides a reward to the player based on how much the ritual beads have been charged. Generally these rewards should be slightly positive and have no downside.

@param <Ritual-Beads>:<T> The ritual beads

+!]
To compute light reward of (T - ritual-beads) at (N - a number):
	let R be 0;
	if N >= 8:
		now R is 6;
	otherwise:
		now R is a random number between (N / 2) and N;
	if R >= 6 and prayer-beads is off-stage:
		check clutch replacement;
		if there is worn hand ready clothing:
			say "Nothing happens. Hmm...";
		otherwise:
			say "A set of tiny white beads materialises in your hands.";
			summon prayer-beads;
			fully bless prayer-beads;
	otherwise if R >= 5:
		say "You feel your will being strengthened!";
		DelicateDown 2;
	otherwise if R is 4:
		say "You feel a wave of new confidence!";
		strongDignify;
	otherwise if R >= 3 and the raw sex addiction of the player > 0:
		say "Your mind feels a little clearer.";
		SilentlySexAddictDown 1;
	otherwise if R is 2 and there is a glazed body part:
		let A be a random glazed body part;
		say "Your [printed name of A] is cleaned of [semen].";
		now the semen coating of A is 0;
	otherwise if the soreness of asshole > 0:
		say "Your [asshole] feels much less sore!";
		heal asshole times 4;
	otherwise:
		say "You feel much less tired!";
		FatigueDown N * 10.

To DevilPray (P - a person):
	let N be the altar-intensity of hotel altar + 1;
	if the class of the player is priestess or N < 1, now N is 1; [a priestess always gets the minimum effect]
	if N > 5, now N is 5; [the effect maxes out at a certain point]
	let R be a random number between 1 and 3;
	if diaper quest is 0:
		repeat with M running through infernal monsters:
			if the times-submitted of M > 0, now R is 0;
	if diaper quest is 0 and avatar-summoned is false and the player is possessing a vagina and the vaginalvirgin of the player is 1 and the player is soulless and avatar-headpiece is actually summonable:
		now R is 0; [free]
		say "The statue's eyes glow with multicoloured light as a [if lady fetish is 1]husky, feminine[otherwise]deep, masculine[end if] voice echoes in your ear.[line break][first custom style]'A virgin, with a void for a soul... It would be a waste to make you an altar girl! That tight little hole in your chest is begging to be filled!'[roman type][line break]The statue's arms suddenly spring to life, grabbing either side of your head and forcing you to look directly into the its eyes as you feel *something* pressing in on you from *somewhere*. The empty feeling in your chest turns into a slow, painful sensation of stretching, and you let out a groan of pain as something HUGE and warm forces its way into your very core. Brand new horns push their way out of your forehead. Finally, a golden tiara and hood materialises on your head.[line break][first custom style]'Hm, looks like you weren't able to take all of me, but no matter. I am your master now, [NameBimbo], so get to work collecting souls while I work on improving your vessel.'[roman type][line break]";
		summon avatar-headpiece cursed;
		now avatar-summoned is true;
	otherwise if R is 0 and gold-tiara is off-stage and gold-tiara is actually summonable: [having sex with a demon at least once will give the player the worshipper headgear]
		say "The statue's face seems to grin as a golden tiara materialises on your head.";
		summon gold-tiara cursed;
	otherwise if diaper quest is 0 and mechanic is alive and bride-consort is throne and (the class of the player is bride or the class of the player is "princess" or the class of the player is "deepthroat princess" or the class of the player is "trained fuck princess" or the class of the player is "virgin warrior princess"):
		let H be a random worn headgear;
		transform H into tiara-veil;
		uniquely set up tiara-veil;
		now bride-consort is mechanic;
		let C be a random worn removable overdress;
		if C is a thing, WardrobeVanish C; [this would prevent the class summon below]
		class summon princess bride dress;
		now R is 0;
	otherwise if diaper quest is 1 and R < 3:
		say "The statue's face seems to wink as an orange glow surrounds your body. ";
		let TN be 0;
		let LN be N;
		if the raw-rectum-incontinence of the player > 0:
			let X be LN;
			if the raw-rectum-incontinence of the player < X, now X is the raw-rectum-incontinence of the player;
			decrease the raw-rectum-incontinence of the player by X;
			increase TN by X;
			decrease LN by X;
		if LN > 0 and the raw-rectum-incontinence of the player > 0:
			let X be LN;
			if the raw-rectum-incontinence of the player < X, now X is the raw-rectum-incontinence of the player;
			decrease the raw-rectum-incontinence of the player by X;
			increase TN by X;
			decrease LN by X;
		if LN > 0 and the raw diaper addiction of the player > 0:
			let X be LN;
			if the raw diaper addiction of the player < X, now X is the raw diaper addiction of the player;
			DiaperAddictDown X;
			increase TN by X;
			decrease LN by X;
		now N is TN; [total N spent on benefits]
	otherwise if R is 1 and demon tail plug is off-stage and demon tail plug is unclash summonable:
		say "The statue's face seems to wink as an orange glow surrounds your body. ";
		let C be a random off-stage demonic clothing;
		if asshole is not actually occupied and the number of worn total protection clothing is the number of worn rippable total protection clothing:
			summon demon tail plug uncursed;
			compute class set up of demon tail plug;
			say ClassSummonFlav of demon tail plug;
			if demon tail plug is cursed:
				if the quest of demon tail plug is no-clothing-quest, compute persistent quest of demon tail plug;
				unless the quest of demon tail plug is no-clothing-quest, say QuestFlav of demon tail plug;
			repeat with X running through worn total protection clothing:
				say "[BigNameDesc of X] is ripped at the crotch as [NameDesc of demon tail plug] sprouts out of your [asshole]!";
				now X is crotch-ripped;
		otherwise:
			unclash class summon demon tail plug;
		now the raw-magic-modifier of demon tail plug is N / 2;
		if the remainder after dividing N by 2 is 1:
			now demon tail plug is kicking;
			now demon tail plug is anal-sex-addiction-influencing;
		otherwise:
			now demon tail plug is dominance;
			now demon tail plug is strength-influencing;
	otherwise if R is 2 and the number of off-stage imps > 0 and the class of the player is not avatar: [summon imps; 1 -> 2 -> 3 -> 4]
		let X be ((N * 2) / 3) + 1;
		if X > the number of off-stage imps, now X is the number of off-stage imps;
		say "The statue's eyes glint as a portal opens up in front of you, accompanied by mischievous chuckling as [if X is 1]an imp steps[otherwise][X] imps step[end if] out.";
		while X > 0:
			let I be a random off-stage imp;
			compute reward N set up of I;
			decrease X by 1;
			interest I;
	otherwise:
		say "A firey circle appears. ";
		let C be a random off-stage rare fetish appropriate clothing;
		if C is clothing:
			blandify and reveal C;
			now the raw-magic-modifier of C is (N + 1) / 2;
			now C is in the location of the player;
			say "In the middle of the circle, a [C] appears.";
			compute autotaking C;
		otherwise:
			say "And then... it fizzles out. It appears that the statue has nothing to offer you right now.";
	compute DevilPayment N;
	progress quest of hotel-altar-quest.

To compute hostileDamage:
	let H be a random worn hostility clothing;
	if H is clothing and a random number between 1 and (combatSpeed * 2) is 1:
		if a random number between 1 and 2 is 1:
			say "Your [printed name of H] heats up, singing your skin, in response to your attack.";
			BodyRuin 1;
		otherwise:
			say "Your [printed name of H] shocks you with electricity, stinging you with pain, in response to your attack.";
			PainUp 10.

To DevilPray (T - a thing):
	say "Nothing seems to happen.".

To DevilPray (T - a clothing):
	if T is unidentified or (T is magic-enhanceable and the raw-magic-modifier of T <= 0):
		let N be the altar-intensity of hotel altar;
		if the class of the player is priestess or N < 1, now N is 1; [a priestess always gets the minimum effect]
		if N > 5, now N is 5;
		say "The statue's eyes glint, and a red glow surrounds your [printed name of T] [run paragraph on]";
		if T is magic-enhanceable and the raw-magic-modifier of T <= 0:
			increase the raw-magic-modifier of T by N; [1 -> 2 -> 2 -> 3 -> 4]
			now T is hostility;
		now T is identified;
		say "as it is changed into a [printed name of T]!";
		compute DevilPayment N;
	otherwise:
		say "Nothing seems to happen.".

To compute DevilPayment (N - a number):
	if there is a nonstalking wisp, deploy a wisp; [there should always be one]
	now the altar-intensity of hotel altar is 0.

To DevilPray (T - ritual-beads):
	if T is worn:
		let F be a random fuckhole penetrated by T;
		say "The statue's eyes glint, and your [ShortDesc of T] shifts inside your [variable F], but nothing else happens. Maybe you need to remove it first?";
	otherwise:
		say "The statue's eyes glint ominously, and you feel power infusing your body!";
		compute infernal reward of T;
		if the size of T < 10:
			say "[line break]Blue light condenses around [NameDesc of T], and it transforms into a ";
			increase the size of T by 1;
			now the notches of T is 3;
			say "[T] with three notches again!";
		now the altar-intensity of hotel altar is 0.

To compute infernal reward of (T - ritual-beads):
	let N be the notches of T;
	let S be the altar-intensity of hotel altar;
	if S > 6, now S is 6;
	let R be 0;
	if N >= 8, now R is 6;
	otherwise now R is a random number between (N / 2) and N;
	if R >= 6 and fire-beads is off-stage and the number of worn hand ready equippables is 0:
		say "A set of tiny red and yellow beads materialises in your hands.";
		summon fire-beads;
	otherwise if R >= 5:
		say "You feel your knees being strengthened!";
		if S < 2, now S is 2;
		StrengthUp S / 2;
		SexAddictUp S / 2;
	otherwise if R >= 4:
		say "You feel your throat becoming more flexible.";
		if S < 2, now S is 2;
		DexUp S / 2;
		SlowSemenAddictUp S / 2;
	otherwise if R >= 3:
		say "Your sense of pain sharpens.";
		if S < 2, now S is 2;
		IntUp S / 2;
		DelicateUp S / 2;
	otherwise if R >= 1:
		say "Your [asshole] feels a little tougher.";
		heal asshole times S;
		if S < 2, now S is 2;
		AnalSexAddictUp S / 2;
	otherwise:
		say "You feel your body becoming tougher.";
		BodyHeal S;
		if S < 2, now S is 2;
		BustUp S / 2;
		HipUp S / 2.

[!<ResetDungeonAltar>+

Resets the charge of the dungeon altar and triggers any code that needs to run when the dungeon altar is reset.

+!]
To reset dungeon altar:
	if the class of the player is priestess and the player is possessing a vagina and the vaginalvirgin of the player is 1, now the charge of the dungeon altar is 220;
	otherwise now the charge of the dungeon altar is 400;
	if demon tail plug is worn, increase the charge of the dungeon altar by 150;
	force inventory-focus redraw; [This forces the inventory window to redraw]
	force clothing-focus redraw. [This forces the clothing window to redraw]

Rule for supplying a missing second noun while praying something with:
	if the player is in Dungeon28, now the second noun is dungeon altar;
	if the player is in Woods20, now the second noun is woods altar;

Check putting something on dungeon altar:
	try praying the noun with the second noun instead;

Check putting something on woods altar:
	try praying the noun with the second noun instead;

Understand "place [something] on [something]", "offer [something] on [something]"[, "use [something] on [something]"] as praying it with.

Altars ends here.
