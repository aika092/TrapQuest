Altars by Objects begins here.


The dungeon altar is in Dungeon28. The dungeon altar is not portable. The dungeon altar has a number called charge. The charge of the dungeon altar is usually -200. The printed name of dungeon altar is "[TQlink of item described]altar[shortcut-desc][if the class of the player is priestess and the charge of item described > 0] (unsafe)[otherwise if the class of the player is priestess] (safe)[otherwise if the charge of item described < -150] (glowing strongly)[otherwise if the charge of item described < 100] (glowing softly)[otherwise] (not glowing)[end if][TQxlink of item described][verb-desc of item described]". The indefinite article of the dungeon altar is "an". The text-shortcut of dungeon altar is "al". Figure of dungeon altar is the file "Env/Dungeon/altar1.jpg". Figure of dungeon altar cutscene is the file "Special/Cutscene/cutscene-altar-pray1.jpg".

To decide which figure-name is the examine-image of (C - dungeon altar):
	decide on figure of dungeon altar.

To say ExamineDesc of (C - dungeon altar):
	say "A large stone slab in front of a giant statue of a proud naked woman with a huge [if pregnancy fetish > 0]pregnant [end if]belly.[if the class of the player is priestess and the charge of the dungeon altar <= 0][line break]Your holy powers allow you to detect that it is safe to use the altar again.[otherwise if the class of the player is priestess][line break]Your holy powers allow you to detect that it is [bold type]not[roman type] yet safe to use the altar again.[otherwise if the charge of item described < -150][one of]It looks like you could try to [bold type]place[roman type] something on it.[or]It looks fully recharged.[stopping][otherwise if the charge of item described < 100]It might be recharged enough to use it again, but it's difficult to say.[otherwise]It definitely need to be left to recharge its power before you use it again.[end if]".

Check going when the player is in Dungeon28:
	force inventory-focus redraw; [This forces the inventory window to redraw]
	force clothing-focus redraw. [This forces the clothing window to redraw]

Report going when the player is in Dungeon28:
	force inventory-focus redraw; [This forces the inventory window to redraw]
	force clothing-focus redraw. [This forces the clothing window to redraw]

The woods altar is in Woods20. The woods altar is not portable. The printed name of woods altar is "[TQlink of item described]small altar[shortcut-desc][TQxlink of item described][verb-desc of item described]". Understand "small" as the woods altar. The indefinite article of the woods altar is "an". The text-shortcut of woods altar is "al". Figure of woods altar is the file "Env/Forest/altar2.png".

To decide which figure-name is the examine-image of (C - woods altar):
	decide on  figure of woods altar.

To say ExamineDesc of (C - woods altar):
	say "On top of a stone pillar rests a metal bowl shaped into several penises in a circle.[one of][or]  It looks like you could try to [bold type]place[roman type] small objects, like jewellery, on it.[stopping]".

The elder altar is in Mansion23. The elder altar is not portable. The printed name of elder altar is "dark altar[shortcut-desc]". Understand "dark" as the elder altar. The indefinite article of the elder altar is "an". The elder altar has a number called charge. The charge of the elder altar is usually 0. The text-shortcut of elder altar is "al". Figure of elder altar is the file "Env/Mansion/altar1.jpg".

To decide which figure-name is the examine-image of (C - elder altar):
	decide on figure of elder altar.

Definition: an elder altar is father material: decide yes.

Definition: An elder altar is live: decide yes.

To say ExamineDesc of (C - elder altar):
	say "A rough stone table. Grotesque symbols are carved into it, which glow from within with [if the charge of the elder altar < 100]faint[otherwise]bright[end if] unnatural violet light. You hear faint whispers in the air which get louder with proximity. You also notice a set of chains attached with manacles, clearly for securing people to the altar. You suppose you could try putting an item on it, or praying at it. You really don[']t want to think about what might happen if you got on it yourself.".

Check entering the dungeon altar:
	try praying the player with the dungeon altar instead.

Check entering the woods altar:
	try praying the player with the woods altar instead.

Check entering the elder altar:
	try praying the player with the elder altar instead.

Definition: a thing (called C) is demonic:
	unless C is clothing, decide no;
	if C is possession, decide yes;
	decide no.

Praying it with is an action applying to two things.
Check praying something with:
	if the player is flying, say "You're not even on the ground!" instead;
	if the second noun is a dispenser, try decanting the noun with the second noun instead;
	if the second noun is a container, try inserting the noun into the second noun instead;
	if the second noun is HotelScenery01, try inking the noun instead;
	if the second noun is not the dungeon altar and the second noun is not the woods altar and the second noun is not elder altar, say "What would that do?" instead;
	if the second noun is woods altar:
		if the noun is clothing:
			if the noun is not accessory or the price of the noun < 1, say "That won't do anything." instead;
		otherwise:
			say "That won't do anything." instead;
	[if the second noun is elder altar:
		if the noun is not clothing and the noun is not the player:
			say "That won't do anything." instead;]
	allocate 6 seconds;
	if the noun is the player:
		if the second noun is dungeon altar:
			say "You kneel in front of the altar.";
		otherwise if the second noun is the elder altar:
			unless there is a dangerous acolyte in the location of the player, say "Against all sanity, you lie on the altar.";
		otherwise:
			say "It's too small for that!" instead;
	otherwise if the noun is a monster:
		say "Something tells you [he of the noun] won't let you." instead;
	otherwise:
		if the noun is worn and the second noun is dungeon altar, say "You lie on the altar, focusing your thoughts on the [ShortDesc of the noun].";
		otherwise say "You place the [ShortDesc of the noun] on the altar.";
	if the second noun is dungeon altar:
		if the noun is unicorn-horn:
			say "The smell of spring rain fills the room as the horn slowly disappears, completely replenishing the altar's strong blue glow.";
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
		otherwise if the class of the player is succubus and the souls of the player < 1:
			say "The altar appears inert. It seems the Goddess who rules it isn[']t inclined to help you." instead;
	if the second noun is elder altar and the noun is unicorn-horn:
		say "The horn trembles as it is enveloped by black flames, shooting several long ropes of creamy white fluid across the surface of the altar
		before being consumed completely. Purple light suffuses the altar as the horn disappears in a puff of white smoke.";
		destroy the noun;
		now the charge of the elder altar is 0 instead.

To AltarPunish (T - a thing):
	if a random number between 1 and 2 is 1:
		SemenAddictUp 1;
		say "You feel funny inside. ";
	otherwise:
		say "Nothing seems to happen.".

To AltarPunish (C - a clothing):
	if a random number between 1 and 2 is 1 or tutorial is 1:
		if C is worn upgradable clothing:
			potentially transform C;
			if tutorial is 1, say "[newbie style]Uh-oh, looks like the altar can only be used once in a while!  There are lots of places like this in the game, with interactable entities that generally do good things for you, but you can only use them once in a while. The altar is the most important because it can bless clothing (and therefore remove curses) but it's also the most risky since it does bad stuff if you use it too early, before the cooldown is reset. If you want to 100% avoid this bad outcome, wait until it is 'glowing strongly' again. Anyway, let's move along to the east![roman type][line break]";
		otherwise:
			say "Your [C] is momentarily surrounded by a dark glow.";
			curse the C;
			now the C is sure;
			if tutorial is 1, say "[newbie style]Uh-oh, looks like the altar can only be used once in a while!  There are lots of places like this in the game, with interactable entities that generally do good things for you, but you can only use them once in a while. The altar is the most important because it can bless clothing (and therefore remove curses) but it's also the most risky since it does bad stuff if you use it too early, before the cooldown is reset. If you want to 100% avoid this bad outcome, wait until it is 'glowing strongly' again. Anyway, let's move along to the east![roman type][line break]";
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
		if the class of the player is succubus and the souls of the player > 0:
			say "You feed one of the souls stored in your body into yourself for a moment, fooling the altar into accepting your prayer.";
			decrease the souls of the player by 1;
		AltarPray the noun;
	otherwise if the second noun is woods altar:
		if the noun is accessory, WoodsOffer the noun;
		otherwise say "Nothing happens.";
	otherwise if the second noun is the elder altar:[To actually benefit from the elder altar's ability to bless things you need to learn a skill from a monster, the cultist otherwise all you can do is sacrifice things (which does at least let you destroy cursed clothing)]
		if the noun is the player:
			ElderOffer;
			progress quest of insanity-quest;
		otherwise:
			if (the noun is clothing and the noun is not cult garb) or the noun is ritual-beads:
				ElderSacrifice the noun;
			otherwise:
				say "Nothing happens.".

[!<AltarPrayThing>+

Determines how the dungeon altar will handle an item, "T", that has been placed on it

@param <Thing>:<T> The thing placed on the dungeon altar

+!]
To AltarPray (T - a thing):
	AltarUniqueReward of T;
	if the charge of dungeon altar <= 0:[The reward already happened in the previous function if this is false]
		if (T is not blessed and T is blessable) or T is ritual-beads:
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
	say "[if the class of the player is priestess]Loyal Sister [otherwise if the bimbo of the player < 5]Brave [otherwise if the bimbo of the player < 9]Beloved [otherwise]My favourite minx [end if][TitleBimbo],[if the bimbo of the player > 8 and the bimbo of the player < 13]my pet,[end if]";

[To AltarUniqueReward of (T - a headgear):
	if the class of the player is adventurer and the virgin of the player is 1 and T is not runic headband and runic headband is off-stage and T is not severed-tentacle and the number of worn headgear is 1 and T is worn:
		say "A shimmering blue light surrounds you as your [ShortDesc of T] shapeshifts, first turning into pure visible energy and then settling into form as some kind of religious headband. A voice appears in your head:  [line break][second custom style]'Loyal Sister, you have been chosen to follow the holy path of righteousness! Go, with grace, but do not forget your duties.'[roman type][line break]";
		only destroy T;
		summon runic headband cursed;
		reset dungeon altar.]

To AltarUniqueReward of (T - flower hairclip):
	let C be a random golden warrior priestess outfit;
	let D be a random worn overdress;
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
	if D is clothing, silently transform D into C;
	otherwise summon C;
	increase the raw-magic-modifier of C by 1;
	now C is blessed;
	if T is not cursed:
		say "Your [ShortDesc of T] becomes cursed again! You'll have to stay like this, at least for a little while...";
		now T is cursed;
	reset dungeon altar.

To AltarPray (P - a person):
	cutshow figure of dungeon altar cutscene for dungeon altar;
	say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] I shall help you on your quest!'[roman type][line break]";
	MagicPowerUp 1;
	while 1 is 1:
		let R be a random number from 1 to 9;
		if the class of the player is priestess and (the virgin of the player is 0 or the player is male) and the player is the donator:
			let T be ritual-beads;
			if T is actually summonable and T is off-stage:
				summon T;
				now T is blessed;
				say "You feel your [asshole] being forced open as a [printed name of T] materializes in your ass.";
				break;
		if permanent makeup is 1:
			say "The make up on your face feels less... permanent. Maybe it will start to fade soon!";
			now permanent makeup is 0;
			break;
		if the pregnancy of the player > 0:
			if the number of held pregnancy related things is 0 and the number of worn pregnancy related clothing is 0:
				say "You feel an emptiness inside of you. Suddenly, your belly dramatically shrinks!";
				now the pregnancy of the player is 0;
				WombEmpty the womb volume of vagina;
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
		if R is 7 and the raw largeness of hair > 7:
			say "About half the length of your hair is magically chopped off!";
			now the raw largeness of hair is the raw largeness of hair / 2;
			break;
		if R is 8 and the size of penis < 10 and the player is male:
			say "You feel more virile!";
			PenisUp 1;
			if the size of penis is previous penis length, SexAddictDown 2;
			break;
		if R is 9:
			if there is a worn tattoo and angel tattoo is not worn:
				summon angel tattoo;
				say "A tattoo of an angel appears on your right arm. You feel less slutty!";
				break;
	if runic headband is actually summonable:
		summon runic headband cursed;
		say "A shimmering blue light surrounds you as your pure visible energy rushes around your body and then settles into the form of some kind of religious headband. A voice sounds in your head:  [line break][second custom style]'Loyal Sister, you have been chosen to follow the holy path of righteousness! Go, with grace, but do not forget your duties.'[roman type][line break]";
	otherwise if flower hairclip is worn:
		AltarUniqueReward of flower hairclip;
	reset dungeon altar.


To AltarReward (T - wrist bond):
	if T is cursed:
		say "*Click!* It would appear that the [ShortDesc of T] has lost its curse!";
		bless T;
		reset dungeon altar;
	otherwise:
		say "Nothing seems to happen.".

To AltarReward (T - chastity cage):
	if T is cursed:
		say "*Click!* It would appear that the [ShortDesc of T] has lost its curse!";
		bless T;
		reset dungeon altar;
	otherwise:
		say "Nothing seems to happen.".

To AltarReward (T - ankle bond):
	if T is cursed:
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
	say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] [if T is cursed]I shall remove this curse for you!'[otherwise]I shall bless this item for you!'[end if][roman type][line break]";
	now T is sure;
	bless T;
	if T is purity and flower hairclip is worn:
		AltarUniqueReward of flower hairclip;
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
	while bless-count > 0:
		decrease bless-count by 1;
		let C be a random worn cursed blessable clothing;
		if C is nothing:
			if the raw strength of the player >= 20 and the raw dexterity of the player >= 20 and the raw intelligence of the player >= 20:
				say "You feel magic energy flow through you but fizzle out without making a difference. Maybe you're too powerful already for the altar to be able to help you any more?";
			otherwise if the raw intelligence of the player < the raw strength of the player and the raw intelligence of the player < the raw dexterity of the player:
				say "You feel yourself getting smarter!";
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
			say "The [printed name of C] shines brightly and loses its curse!";
			bless C;
		if bless-count is 0:
			say "The [ShortDesc of T] disappears into nothingness.";
			remove T from play;
	if witch is in the location of the player, WitchCheck witch.

[]
To WitchCheck (M - witch):
	if the altar-uses of witch <= 0 and witch is bitchy:
		if witch is unconcerned or witch is uninterested:
			say "[second custom style]'[one of]Hey, what the fuck do you think you're doing! No using that without my permission!'[or]You again!  You do not have my permission to use this altar!'[stopping][roman type][line break]Oops, looks like you've angered the [ShortDesc of witch]!";
			anger witch;
			now witch is interested;
			now witch is unleashed;
		if witch is alive, progress quest of stealing-quest;
	otherwise if witch is bitchy:
		decrease the altar-uses of witch by 1.

[]
To reset elder altar:
	increase the charge of the elder altar by 500.

[]
To ElderEmpower (T - a headgear):[default]
	if the player is female:
		ElderBreed vagina;
	otherwise:
		ElderBreed asshole;
	reset elder altar.

To ElderEmpower (W - laurel wreath):
	say "You feel cold and wet on your arms as the manacles suddenly turn into tentacles! More tentacles appear on either side and begin to thrash out at everything you're wearing below your head!";
	repeat with C running through worn clothing:
		if C is not laurel wreath and (C is destructible or C is overdress) and C is not equippable and C is not bondage:
			say "Your [C] is torn apart!";
			destroy C;
	say "Your clothing removed, you begin to feel terrible foreboding. But as suddenly as they appeared, the tentacles simply vanish. As you consider how lucky you were, though, a sudden pain from your neck rips through your body! You get up with a start, and feel a warm, pulsing lump attached to you. One that should definitely be there. It[']s definitely okay that it is there. As you think this, purple tentacles come out of it and wrap around your body, accentuating your curves. How thoughtful.";
	let T be a random living tentacles;
	summon T cursed;
	reset elder altar;
	now fertility-summoned is 1.

voidbladeSummoned is initially false.
To ElderEmpower (T - flower hairclip):
	if voidbladeSummoned is false and abyssal tattoo is worn:
		say "The darkness of the room grows profound, and you can feel it pressing into you almost like a weight. The only sensation you can feel for what seems like forever is the pressure of the dark. One minute or a thousand years, you are no longer able to even sense time. Time no longer exists. The world no longer exists. You no longer exist. Yes. Forget... Suddenly pink motes begin to flow from your body, and you feel a sense of joy at somehow knowing those are your useless former life leaving you. They form into the shape of a sword, and as the lights come back up, a shard of the darkness remains.";
		now voidblade is in Mansion23;
		Intdown 2;
		reset elder altar;
		now voidbladeSummoned is true.

To ElderEmpower (T - runic headband):
	let R be ritual-beads;
	if R is actually summonable and R is off-stage and the player is the donator:
		say "You feel your [asshole] being forced open as a [ShortDesc of R] materializes in your ass.";
		summon R cursed;
		reset elder altar.

To ElderEmpower (T - a cultist veil):
	let R be ritual-beads;
	if R is actually summonable and R is off-stage and the player is the donator:
		say "You feel your [asshole] being forced open as a [ShortDesc of R] materializes in your ass.";
		summon R;
		now R is cursed;
		reset elder altar.

[]
To ElderOffer:
	say "What little light there is in the room extinguishes, and the [if there is an acolyte in the location of the player]cultist forces manacles onto your arms and legs[otherwise]manacles suddenly come to life and secure your arms and legs[end if]. There[']s no escape now![line break]";[there will eventually be multiple possible things that happen to you on the altar]
	if the number of worn headgear > 0 and diaper quest is 0:
		ElderEmpower a random worn headgear;
	if the charge of elder altar < 1:[if nothing happened with your headgear, it's time to breed]
		if diaper quest is 0:
			if the player is female, ElderBreed vagina;
			otherwise ElderBreed asshole;
		otherwise:
			ElderConnect;
		reset elder altar.

To ElderBreed (F - vagina):[this one needs handling for pussy covering clothing Aika: it also needs to do something for males, I assume?  And what about females that are unable to orgasm? ("if the player is not able to get horny")]
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
		say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your [vagina]. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your [vagina] without hesitation, unexpectedly firm yet oddly fluid. In spite of your lack of reaction, it appears perfectly content to thrust and pump away at you. Eventually it tenses up, and begins spraying semen into you. In a shockingly short time it seems like it has sprayed most of its body into your womb, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.[line break]";
	FuckCount;
	increase the charge of the elder altar by 500;
	PussyFill 25;
	now elder altar is not penetrating vagina;
	MagicPowerUp 2;
	if whispered > 0 and whisper-type is 1:
		now whisper-tracking is 1.

To ElderBreed (F - asshole):
	repeat with C running through top level protection clothing worn by the player:
		say "Your [C] vanishes in an ominous black flame!";
		destroy C;
	repeat with E running through bottom level protection clothing worn by the player:
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
		say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your ass. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your ass without hesitation, unexpectedly firm yet oddly fluid. In spite of your lack of reaction, it appears perfectly content to thrust and pump away at you. Eventually it tenses up, and begins spraying semen into you. In a shockingly short time it seems like it has sprayed most of its body into your asshole, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.[line break]";
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
	if D is clothing and D is not demon diaper:
		say "Your [D] vanishes in an ominous black flame!";
		destroy D;
	now D is a random demon diaper;
	if D is not worn:
		say "A pink diaper with an image of a pentagram appears around your loins!";
		summon D cursed with quest;
	otherwise if D is not dry:
		clean D;
		WaterEmpty D;
		say "Your [ShortDesc of D] becomes completely clean!";
	now altar-diaper-link is 92;
	compute periodic effect of D.


[]
To ElderSacrifice (T - a thing):
	say "The [printed name of T] bursts into ominous black flames![if T is worn] Fortunately, it seems they are not actually hot.[end if] It finally vanishes in a puff of smoke.";
	if T is mystical amulet and there is a worn tattoo:
		increase the charge of the elder altar by 200;
		say "You feel that the dark beings this altar belongs to are especially pleased! You feel a sudden burning sensation as some jagged black marks burn themselves into your skin!";
		let M be mechanic;[We want to put the mechanic into a state where his quest is inactive and he's also unable to turn into Xavier, since his power has now been permanently lost to him]
		if M is monster:
			now power-stolen of M is 1;
		summon abyssal tattoo;[The reward item is a tattoo, I don't want it to care about other tattoos because otherwise you could effectively get nothing for doing this]
	otherwise if T is cursed:
		increase the charge of the elder altar by 100;
		if whispered > 0 and whisper-type is 2:
			now whisper-tracking is 1;
		if doom counter > 0:
			increase doom counter by 5;
	otherwise if T is bland:
		increase the charge of the elder altar by 50;
	otherwise:
		increase the charge of the elder altar by 25;
	remove T from play.


To ElderSacrifice (T - ritual-beads):
	say "The [ShortDesc of T] bursts into ominous black flames![if T is worn] Fortunately, it seems they are not actually hot.[end if]";
	let N be the charge of T;
	if N < 2:
		say "The flames flicker and die within moments, leaving the beads completely unharmed. Maybe you need to find some way to empower them?";
	otherwise:
		say "Violet embers rise up around the altar and envelop your body.";
		compute dark reward of T;
		now the charge of T is 0;
		fully curse T;
		if the notches of T < 9:
			increase the notches of T by 2;
			say "The flames coalesce at the end of the beads, adding two additional beads.";
		otherwise:
			say "The flames consume several of the beads before flickering and dying out.";
			decrease the notches of T by a random number between 6 and 3.

[!<ComputeDarkRewardOfRitualBeads>+

Provides a reward to the player based on how much the ritual beads have been charged

@param <Ritual-Beads>:<T> the anal beads offered to the elder altar

+!]
To compute dark reward of (T - ritual-beads):
	let N be the charge of T;
	let R be  0;
	if N > 8:
		now R is a random number between 4 and 8;
	otherwise if N > 6:
		now R is a random number between 3 and 6;
	otherwise if N > 4:
		now R is a random number between 2 and 5;
	otherwise:
		now R is a random number between 1 and 3;
	if R is 8:
		let X be 4;
		repeat with B running through worn clothing:
			let M be the raw-magic-modifier of B;
			if X > 0 and a random number between 1 and 2 is 1:
				say "The embers settle over your [printed name of B], which glows faintly purple as it absorbs the cinders.";
				if (X is 4 or a random number between 1 and 2 is 1) and M < 5:[the first one is almost always positive]
					increase the raw-magic-modifier of B by 1;
					fully curse B;
				otherwise:
					if M > -5, decrease the raw-magic-modifier of B by 1;
				decrease X by 1;
	[otherwise if R is 7:[TODO: summon the "herald's blessing" equippable item]
		[let J be jinx-beads;]
		let B be a random worn slap ready equippable;
		if B is nothing, let B be a random worn zap ready equippable;
		if B is clothing:
			say "The embers become red sparks, and a cacophony of sharp *cracks* fills your ears as your [ShortDesc of B] disintegrates completely.";
			destroy B;
		otherwise:
			say "The embers become red sparks, and a cacophony of sharp *cracks* fills your ears ";]
	otherwise if R >= 6 and jinx-beads is off-stage:
		let J be jinx-beads;
		if J is not actually summonable:
			let B be a random worn slap ready equippable;
			if B is nothing, let B be a random worn zap ready equippable;
			say "The embers are drawn to your [ShortDesc of B], eating away at it until all that remains is a peculiar set of tiny beads.";
			destroy B;
		otherwise:
			say "The embers collect in your hand, slowly forming into a set of pink and black beads.";
		summon J cursed;
	otherwise if R is 5:
		say "The embers settle over your joints, and you feel a lurch in your stomach as their light abruptly goes out and they fall to the ground. You feel more flexible.";
		DexUp (N + 2) / 3;
		FatigueUp 30;
	otherwise if R is 4:
		say "The embers settle on your skin, pinching you as they disappear one by one.";
		PainUp 1;
		say "You feel stronger.";
		StrengthUp (N + 2) / 3;
	otherwise if R is 3:
		say "The embers are drawn to your hair, and you feel your hair faintly being pulled as the embers disappear one by one.";
		HairRedDown 2;
		HairBrightDown 2;
		HairBlondeDown 2;
		HairUp 1;
	otherwise if R > 1 and there is a worn bondage:
		let B be a random worn bondage;
		say "The embers eat away at the [printed name of B] until it drops from your body, a mangled mess of [clothing-material of B] and ashes.";
		destroy B;
	otherwise:[R is 1. TODO: improve]
		say "The embers turn to flecks of water, harshly pattering your skin as they whorl around you.";
		repeat with C running through worn currently uncovered fluid vulnerable clothing:
			WaterSoak 1 on C;
		if the make-up of face > 0 and permanent makeup is 0:
			say "[if the make-up of face > 1]Some of your[otherwise]Your[end if] make up is washed away.";
			FaceDown 1;
		repeat with A running through glazed body parts:
			decrease the semen coating of A by 1;
			say "Your [A] is cleaned of a little [semen]!";[B alone causes bold face text, so I used A instead]
		FatigueUp 20;
		say "You feel a lot cleaner, but incredibly tired.".


To AltarReward (T - ritual-beads):
	let N be the charge of T;
	if N < 3:
		let D be 3 - N;
		say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] your job is yet to be finished! Return and offer the beads to this altar after you complete [D] more ritual[if D > 1]s[end if]!'[roman type][line break]";
	otherwise:
		say "A voice appears in your head:[line break][second custom style]'[GoddessAddress] this holy trial is completed! I grant you this gift to help you on your quest!'[roman type][line break]";
		compute light reward of T;
		now the charge of T is 0;
		unless T is blessed, now T is blessed;
		if the notches of T < 8:
			increase the notches of T by 1;
			say "[line break]Blue light condenses at the end of the [printed name of T], adding a [the notches of T]th bead.";
	reset dungeon altar.

[!<ComputeLightRewardOfRitualBeads>+

Provides a reward to the player based on how much the ritual beads have been charged

@param <Ritual-Beads>:<T> the anal beads offered to the dungeon altar

+!]
To compute light reward of (T - ritual-beads):
	let N be the charge of T;
	let R be 0;
	if N is 8:
		now R is a random number between 4 and 8;
	otherwise if N > 6:
		now R is a random number between 3 and 6;
	otherwise if N > 4:
		now R is a random number between 2 and 5;
	otherwise:
		now R is a random number between 1 and 3;
	if R is 8 and there is a worn headgear:
		let B be a random worn headgear;
		if the raw-magic-modifier of B < 5 or (B is not blessed and B is blessable):
			say "Your [printed name of B] glows powerfully!";
			if the raw-magic-modifier of B < 5, increase the raw-magic-modifier of B by 1;
			fully bless B;
		otherwise:
			say "You feel more intelligent!";
			IntUp 2;
	otherwise if R is 7:
		say "You feel incredible!";
		StrengthUp N / 4;
		DexUp N / 4;
	otherwise if R >= 6 and prayer-beads is off-stage and the number of worn hand ready equippables is 0:
		let B be prayer-beads;
		say "A set of tiny white beads materialises in your hands.";
		summon B;
		fully bless B;
	otherwise if R is 5:
		say "You feel more resilient!";
		DelicateDown N / 3;
	otherwise if R is 4:
		say "You feel a wave of new confidence!";
		Dignify STRONG-HUMILIATION * (N / 2);
	otherwise if R >= 3 and the raw sex addiction of the player > 0:
		say "Your mind feels a little clearer.";
		SilentlySexAddictDown N / 3;
	otherwise if R is 2 and there is a glazed body part:
		let A be a random glazed body part;
		say "Your [printed name of A] is cleaned of a little [semen].";
	otherwise:
		say "You feel much less tired!";
		FatigueDown N * 10.

[!<ResetDungeonAltar>+

Resets the charge of the dungeon altar and triggers any code that needs to run when the dungeon altar is reset.

+!]
To reset dungeon altar:
	if the class of the player is priestess and the player is female and the virgin of the player is 1, now the charge of the second noun is 220;
	otherwise now the charge of the second noun is 400;
	if there is a worn demon tail plug, increase the charge of the second noun by 150;
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

