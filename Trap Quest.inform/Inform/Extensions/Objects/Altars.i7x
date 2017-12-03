Altars by Objects begins here.


The dungeon altar is in Dungeon28.  The dungeon altar is not portable.  The description of the dungeon altar is "[AltarDesc]".  The dungeon altar has a number called charge.  The charge of the dungeon altar is usually -200.  The printed name of dungeon altar is "[TQlink of item described]altar[shortcut-desc][if the class of the player is priestess and the charge of item described > 0] (unsafe)[otherwise if the class of the player is priestess] (safe)[otherwise if the charge of item described < -150] (glowing strongly)[otherwise if the charge of item described < 100] (glowing softly)[otherwise] (not glowing)[end if][TQxlink of item described][verb-desc of item described]".  The indefinite article of the dungeon altar is "an".  The text-shortcut of dungeon altar is "al".

To say AltarDesc:
	if images visible is 1, display figure of dungeon altar;
	say "A large stone slab held up by two statues of men naked except for loincloths.[if the class of the player is priestess and the charge of the dungeon altar <= 0][line break]Your holy powers allow you to detect that it is safe to use the altar again.[otherwise if the class of the player is priestess][line break]Your holy powers allow you to detect that it is [bold type]not[roman type] yet safe to use the altar again.[otherwise if the charge of item described < -150][one of]It looks like you could try to [bold type]place[roman type] something on it.[or]It looks fully recharged.[stopping][otherwise if the charge of item described < 100]It might be recharged enough to use it again, but it's difficult to say.[otherwise]It definitely need to be left to recharge its power before you use it again.[end if]".
Figure of dungeon altar is the file "altar1.png".

The woods altar is in Woods20.  The woods altar is not portable.  The description of the woods altar is "[WoodsAltarDesc]".  The printed name of woods altar is "[TQlink of item described]small altar[shortcut-desc][TQxlink of item described][verb-desc of item described]".  Understand "small" as the woods altar.  The indefinite article of the woods altar is "an".  The text-shortcut of woods altar is "al".

To say WoodsAltarDesc:
	if images visible is 1, display figure of woods altar;
	say "On top of a stone pillar rests a metal bowl shaped into several penises in a circle.[one of][or]  It looks like you could try to [bold type]place[roman type] small objects, like jewellery, on it.[stopping]".
Figure of woods altar is the file "altar2.png".

The elder altar is in Mansion23. The elder altar is not portable. The description of the elder altar is "[ElderAltarDesc]". The printed name of elder altar is "dark altar[shortcut-desc]". Understand "dark" as the elder altar. The indefinite article of the elder altar is "an". The elder altar has a number called charge. The charge of the elder altar is usually 0. An elder altar is father material.  The text-shortcut of elder altar is "al".

Definition: An elder altar (called E) is live:
	decide yes.

To say ElderAltarDesc:
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
	if C is demon horns, decide yes;
	if C is demon broadsword, decide yes;
	if C is demon codpiece, decide yes;
	if C is demon tail plug, decide yes;
	decide no.

Praying it with is an action applying to two things.
Check praying something with:
	if the player is flying, say "You're not even on the ground!" instead;
	if the second noun is a dispenser, try decanting instead;
	if the second noun is a container, try inserting the noun into the second noun instead;
	if the second noun is HotelScenery01, try inking instead;
	if the second noun is not the dungeon altar and the second noun is not the woods altar and the second noun is not elder altar, say "What would that do?" instead;
	if the second noun is woods altar:
		if the noun is clothing:
			if the noun is not accessory, say "That won't do anything." instead;
			if the price of the noun < 1, say "That won't do anything." instead;
		otherwise:
			say "That won't do anything." instead;
	if the second noun is elder altar:
		if the noun is not clothing and the noun is not the player:
			say "That won't do anything." instead;
	now seconds is 6;
	if the noun is the player:
		if the second noun is dungeon altar:
			say "You lie on the altar.";
		otherwise if the second noun is the elder altar:
			unless there is a dangerous acolyte in the location of the player, say "Against all sanity, you lie on the altar.";
		otherwise:
			say "It's too small for that!" instead;
	otherwise if the noun is a monster:
		say "Something tells you [he of the noun] won't let you." instead;
	otherwise:
		if the noun is worn by the player and the second noun is dungeon altar, say "You lie on the altar, focusing your thoughts on the [printed name of noun].";
		otherwise say "You place the [printed name of noun] on the altar.";
	if the second noun is dungeon altar:
		if the charge of the dungeon altar > 0:
			if the noun is the player:
				AltarPunish the player;
			otherwise if the noun is accessory or (the noun is not upgradable clothing and the noun is not uncursed clothing):
				AltarPunish the player;
			otherwise:
				AltarPunish the noun;
			if the class of the player is priestess, say "A voice appears in your head:  'Sister, you should know better than to provoke me!'" instead;
			say "A voice appears in your head:  'Do not test my powers so often!'" instead;
		otherwise if the noun is demonic:
			AltarPunish the player;
			say "A voice appears in your head: 'How dare you place such a thing on my altar!'" instead;
		otherwise if the class of the player is succubus and the souls of the player < 1:
			say "The altar appears inert. It seems the Goddess who rules it isn[']t inclined to help you." instead.

To AltarPunish (T - a thing):
	if a random number between 1 and 2 is 1:
		SemenAddictUp 1;
		say "You feel funny inside.  ";

To AltarPunish (C - a clothing):
	if a random number between 1 and 2 is 1 or tutorial is 1:
		if C is worn upgradable clothing:
			potentially transform C;
			if tutorial is 1, say "[item style]Uh-oh, looks like the altar can only be used once in a while!  There are lots of places like this in the game, with interactable entities that generally do good things for you, but you can only use them once in a while.  The altar is the most important because it can bless clothing (and therefore remove curses) but it's also the most risky since it does bad stuff if you use it too early, before the cooldown is reset.  If you want to 100% avoid this bad outcome, wait until it is 'glowing strongly' again.  Anyway, let's move along to the east![roman type][line break]";
		otherwise:
			say "Your [C] is momentarily surrounded by a dark glow.";
			curse the C;
			now the C is sure;
			if tutorial is 1, say "[item style]Uh-oh, looks like the altar can only be used once in a while!  There are lots of places like this in the game, with interactable entities that generally do good things for you, but you can only use them once in a while.  The altar is the most important because it can bless clothing (and therefore remove curses) but it's also the most risky since it does bad stuff if you use it too early, before the cooldown is reset.  If you want to 100% avoid this bad outcome, wait until it is 'glowing strongly' again.  Anyway, let's move along to the east![roman type][line break]".

To AltarPunish (C - a bottle):
	if a random number between 1 and 2 is 1:
		say "Your [C] is momentarily surrounded by a dark glow.";
		curse C;
		now C is sure.


Carry out praying something with:
	if the second noun is dungeon altar:
		if the class of the player is succubus and the souls of the player > 0:
			say "You feed one of the souls stored in your body into yourself for a moment, fooling the altar into accepting your prayer.";
			decrease the souls of the player by 1;
		if the noun is headgear and the noun is worn by the player:
			if the noun is not blessed:
				if the class of the player is not adventurer or the virgin of the player is 0 or the noun is runic headband or the noun is severed-tentacle:
					say "A voice appears in your head:  '[if the class of the player is priestess]Loyal Sister [otherwise if the bimbo of the player < 5]Brave [otherwise if the bimbo of the player < 9]Beloved [otherwise]My favourite minx [end if][TitleBimbo], [if the bimbo of the player > 8 and the bimbo of the player < 13]my pet, [end if][if the noun is cursed]I shall remove this curse for you!'[otherwise]I shall bless this item for you!'[end if]";
					bless the noun;
					now the noun is sure;
				otherwise:
					say "A shimmering blue light surrounds you as your [ShortDesc of noun] shapeshifts, first turning into pure visible energy and then settling into form as some kind of religious headband.  A voice appears in your head:  [second custom style]'Loyal Sister, you have been chosen to follow the holy path of righteousness! Go, with grace, but do not forget your duties.'[roman type][line break]";
					only destroy the noun;
					let R be a random runic headband;
					summon R cursed;
				reset dungeon altar;
			otherwise:
				let C be a random off-stage golden warrior priestess outfit;
				if the class of the player is virgin warrior and C is clothing:
					let D be a random worn overdress;
					if D is clothing:
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
						say "A shimmering blue light surrounds you as your [ShortDesc of D] shapeshifts, first turning into pure visible energy and then settling into form as some kind of bizarre solid gold frame.  A voice appears in your head:  [second custom style]'At last, the chosen one has arrived! You are the True Herald, the prophecies speak of your role in deciding the destiny of our entire clan.  Now go, and keep yourself pure, for if you fail, all your descendants will be doomed to be nothing but the playthings of the monsters of this world.'[line break][variable custom style][if the bimbo of the player < 14]My virginity decides the future of this entire world?  That's an extreme amount of responsibility to just drop on someone...[otherwise]I'll do my best, but that outcome sounds kind of fun![end if][roman type][line break]";
						silently transform D into C;
						increase the raw-magic-modifier of C by 1;
						now C is blessed;
					otherwise:
						say "Bug - the player was chosen to become a warrior priestess but there was no warrior chestpiece to transform.";
				otherwise:
					say "Nothing seems to happen.";			
		otherwise if the noun is wrist bond or the noun is ankle bond or the noun is chastity cage:
			if the noun is cursed:
				say "*Click!*  It would appear that the [printed name of noun] has magically unlocked!";
				bless the noun;
				reset dungeon altar;
			otherwise:
				say "Nothing seems to happen.";
		otherwise if the noun is bottle:
			if the noun is cursed:
				say "A voice appears in your head:  '[if the class of the player is priestess]Loyal Sister [otherwise if the bimbo of the player < 5]Brave [otherwise if the bimbo of the player < 9]Beloved [otherwise]My favourite minx [end if][TitleBimbo], [if the bimbo of the player > 8 and the bimbo of the player < 13]my pet, [end if]I shall remove this curse for you!'";
				bless the noun;
				now the curse-ID of the noun is sure;
				reset dungeon altar;
			otherwise if the noun is blessed:
				say "Nothing happens.  It [if the noun is sure]is already[otherwise]must already be[end if] blessed!";
				now the noun is sure;
			otherwise:
				say "A voice appears in your head:  '[if the class of the player is priestess]Loyal Sister [otherwise if the bimbo of the player < 5]Brave [otherwise if the bimbo of the player < 9]Beloved [otherwise]My favourite minx [end if][TitleBimbo], [if the bimbo of the player > 8 and the bimbo of the player < 13]my pet, [end if]I tried, but different magic is needed to bless this item!  Seek the witch in the lands above[unless the class of the player is priestess].  Now allow me to rest for a minute, I must recover from the attempt[end if].'";
				unless the class of the player is priestess, now the charge of the second noun is 60;
				now the curse-ID of the noun is sure;
		otherwise if the noun is cursable clothing or the noun is insertable:
			if the noun is not blessed:
				say "A voice appears in your head:  '[if the class of the player is priestess]Loyal Sister [otherwise if the bimbo of the player < 5]Brave [otherwise if the bimbo of the player < 9]Beloved [otherwise]My favourite minx [end if][TitleBimbo], [if the bimbo of the player > 8 and the bimbo of the player < 13]my pet, [end if][if the noun is cursed]I shall remove this curse for you!'[otherwise]I shall bless this item for you!'[end if]";
				bless the noun;
				now the noun is sure;
				if the noun is not blessed and the noun is worn and the noun is not piercing: [i.e. it was cursed]
					say "Would you like to remove the [noun] immediately? [yesnolink] ";
					if the player consents, try taking off the noun;
				reset dungeon altar;
			otherwise:
				say "Nothing seems to happen.";
		otherwise if the noun is the player:
			say "A voice appears in your head:  '[if the class of the player is priestess]Loyal Sister [otherwise if the bimbo of the player < 5]Brave [otherwise if the bimbo of the player < 9]Beloved [otherwise]My favourite minx [end if][TitleBimbo], [if the bimbo of the player > 8 and the bimbo of the player < 13]my pet, [end if]I shall help you on your quest!";
			MagicPowerUp 1;
			while 1 is 1:
				let R be a random number from 1 to 9;
				if permanent makeup is 1:
					say "The make up on your face feels less... permanent.  Maybe it will start to fade soon!";
					now permanent makeup is 0;
					break;
				if the pregnancy of the player > 0:
					if the number of held pregnancy related things is 0 and the number of worn pregnancy related clothing is 0:
						say "You feel an emptiness inside of you.  Suddenly, your belly dramatically shrinks!";
						now the pregnancy of the player is 0;
						now the semen volume of vagina is 1;
						WombSquirt 1; [This will automatically remove all potential fathers.]
						break;
				if the player is hungry:
					say "You feel full!";
					now the stomach-food of the player is 4;
				if the thirst of the player > 3:
					say "You feel that your thirst has been quenched.";
					while the thirst of the player > 0, increase the stomach-water of the player by 1;			
				if R is 1 and the largeness of breasts > 6 and the largeness of breasts > the real largeness of breasts:
					say "You feel your breasts shrink.";
					BustDown 4;
					break;
				if R is 2 and the thickness of hips > 3 and the thickness of hips > the real thickness of hips:
					say "You feel your hips shrink.";
					HipDown 2;
					break;
				if R is 3 and the sex addiction of the player > 7:
					say "You feel less submissive.";
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
						AssHeal 2;
						PussyHeal 2;
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
					let T be a random angel tattoo;
					if there is a worn tattoo and T is not worn:
						summon T;
						say "A tattoo of an angel appears on your right arm. You feel less slutty!";
						break;
			reset dungeon altar;
		otherwise:
			say "Nothing seems to happen.";
	otherwise if the second noun is woods altar:
		let max-bless-count be the price of the noun;
		if max-bless-count < 2, now max-bless-count is 2;
		let bless-count be max-bless-count;
		now bless-count is bless-count / 2;
		if bless-count is 0, say "Nothing seems to happen.";
		while bless-count > 0:
			decrease bless-count by 1;
			let T be a random worn cursed clothing;
			if T is nothing:
				if the raw strength of the player >= 20 and the raw dexterity of the player >= 20 and the raw intelligence of the player >= 20:
					say "You feel magic energy flow through you but fizzle out without making a difference.  Maybe you're too powerful already for the altar to be able to help you any more?";
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
				say "The [printed name of T] shines brightly and loses its curse!";
				bless T;
			if bless-count is 0:
				say "The [printed name of noun] disappears into nothingness.";
				remove the noun from play;
		repeat with W running through witches in the location of the player:
			if the sex-length of W <= 0 and the variety of W < 3:
				if W is captive or W is uninterested:
					say "[second custom style]'[one of]Hey, what the fuck do you think you're doing!  No using that without my permission!'[or]You again!  You do not have my permission to use this altar!'[stopping][roman type][line break]Oops, looks like you've angered the [W]!";
					anger W;
					now W is interested;
					now W is released;
			otherwise if the variety of W < 3:
				decrease the sex-length of W by 1;
	otherwise if the second noun is the elder altar: [To actually benefit from the elder altar's ability to bless things you need to learn a skill from a monster, the cultist otherwise all you can do is sacrifice things (which does at least let you destroy cursed clothing)]
		if the noun is the player:
			say "What little light there is in the room extinguishes, and the [if there is an acolyte in the location of the player]cultist forces manacles onto your arms and legs[otherwise]manacles suddenly come to life and secure your arms and legs[end if]. There[']s no escape now![line break]";[there will eventually be multiple possible things that happen to you on the altar]
			if there is a worn laurel wreath and the number of worn living tentacles is 0:
				say "You feel cold and wet on your arms as the manacles suddenly turn into tentacles! More tentacles appear on either side and begin to thrash out at everything you're wearing below your head!";
				repeat with C running through worn clothing:
					if C is not laurel wreath and C is not sack of holding and C is not equippable and C is not bondage and C is not piercing:
						say "Your [C] is torn apart!";
						destroy C;
				say "Your clothing removed, you begin to feel terrible foreboding. But as suddenly as they appeared, the tentacles simply vanish. As you consider how lucky you were, though, a sudden pain from your neck rips through your body! You get up with a start, and feel a warm, pulsing lump attached to you. One that should definitely be there. It[']s definitely okay that it is there. As you think this, purple tentacles come out of it and wrap around your body, accentuating your curves. How thoughtful.";
				let T be a random living tentacles;
				summon T cursed;
				now fertility-summoned is 1;
			otherwise if the player is female:[this one needs handling for pussy protection clothing Aika: it also needs to do something for males, I assume?  And what about females that are unable to orgasm? ("if the player is not able to get horny")]
				repeat with C running through top level protection clothing worn by the player:
					say "Your [C] vanishes in an ominous black flame!";
					destroy C;
				repeat with E running through bottom level protection clothing worn by the player:
					say "Your [E] vanishes in an ominous black flame!";
					destroy E;
				repeat with D running through things penetrating a fuckhole:
					if D is penetrating a fuckhole:
						say "Your [D] vanishes in an ominous black flame!";
						destroy D;
				now elder altar is penetrating vagina;
				if the player is able to get horny:
					say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your [vagina]. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your [vagina] without hesitation, unexpectedly firm yet oddly fluid.";
					PussyRuin 2;
					say "You are blown away by the sensation, and in spite of yourself you begin moaning in ecstasy. The creature seems to be encouraged by your reaction and only increases its force, which in turn causes your reactions to increase as well. For a while sensation overwhelms you, and finally you cannot help yourself.[line break]";
					vaginally orgasm shamefully;
					say "The creature seemed to be waiting for this moment, and you feel it begin to pump [semen] into you even as you orgasm. In a shockingly short time it seems like it has sprayed most of its body into your womb, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.";
				otherwise: 
					say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your [vagina]. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your [vagina] without hesitation, unexpectedly firm yet oddly fluid. In spite of your lack of reaction, it appears perfectly content to thrust and pump away at you. Eventually it tenses up, and begins spraying semen into you. In a shockingly short time it seems like it has sprayed most of its body into your womb, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.[line break]";
				increase the charge of the elder altar by 500;
				WombFill 6;
				now elder altar is not penetrating vagina;
				MagicPowerUp 2;
				if whispered > 0 and whisper-type is 1:
					now whisper-tracking is 1;
			otherwise:
				repeat with C running through top level protection clothing worn by the player:
					say "Your [C] vanishes in an ominous black flame!";
					destroy C;
				repeat with E running through bottom level protection clothing worn by the player:
					say "Your [E] vanishes in an ominous black flame!";
					destroy E;
				repeat with D running through things penetrating a fuckhole:
					if D is penetrating a fuckhole:
						say "Your [D] vanishes in an ominous black flame!";
						destroy D;
				now elder altar is penetrating asshole;
				if the player is able to get horny:
					say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your ass. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your ass without hesitation, unexpectedly firm yet oddly fluid.";
					AssRuin 2;
					say "You are blown away by the sensation, and in spite of yourself you begin moaning in ecstasy. The creature seems to be encouraged by your reaction and only increases its force, which in turn causes your reactions to increase as well. For a while sensation overwhelms you, and finally you cannot help yourself.[line break]";
					anally orgasm shamefully;
					say "The creature seemed to be waiting for this moment, and you feel it begin to pump [semen] into you even as you orgasm. In a shockingly short time it seems like it has sprayed most of its body into your asshole, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.";
				otherwise: 
					say "You hear horrible dripping, and the smell of [semen] fills your nose. Your feet suddenly feel cold and wet, and as you strain to turn your head to look at what is happening you are horrified to see a milky white pool of liquid is crawling up the sides of the altar on that end! You vainly struggle as it creeps quickly up your legs and towards your ass. It pauses briefly before forming into a grotesque tentacle that resembles nothing so much as a [manly-penis] made out of [semen]. It pushes its way roughly into your ass without hesitation, unexpectedly firm yet oddly fluid. In spite of your lack of reaction, it appears perfectly content to thrust and pump away at you. Eventually it tenses up, and begins spraying semen into you. In a shockingly short time it seems like it has sprayed most of its body into your asshole, at which point what is left of its body withdraws from the altar. The lights rise slightly in the room, and you feel the manacles unlock from your body, leaving you free to leave.[line break]";
				increase the charge of the elder altar by 500;
				AssFill 6;
				now elder altar is not penetrating asshole;
				MagicPowerUp 2;
				if whispered > 0 and whisper-type is 1:
					now whisper-tracking is 1;
		otherwise:
			if the noun is not cult garb:
				say "The [printed name of noun] bursts into ominous black flames![if the noun is worn] Fortunately, it seems they are not actually hot.[end if] It finally vanishes in a puff of smoke.";
				let N be a random mystical amulet;
				if the noun is N:
					increase the charge of the elder altar by 200;
					say "You feel that the dark beings this altar belongs to are especially pleased! You feel a sudden burning sensation as some jagged black marks burn themselves into your skin!";
					let M be a random mechanic;[We want to put the mechanic into a state where his quest is inactive and he's also unable to turn into Xavier, since his power has now been permanently lost to him]
					if M is monster:
						now power-stolen of M is 1;
					let T be a random abyssal tattoo;
					summon T;[The reward item is a tattoo, I don't want it to care about other tattoos because otherwise you could effectively get nothing for doing this]
				otherwise if the noun is cursed:
					increase the charge of the elder altar by 100;
					if whispered > 0 and whisper-type is 2:
						now whisper-tracking is 1;
					if doom counter > 0:
						increase doom counter by 5;
				otherwise if the noun is bland:
					increase the charge of the elder altar by 50;
				otherwise:
					increase the charge of the elder altar by 25;
				remove the noun from play;
			otherwise:
				say "Nothing happens.". 

To reset dungeon altar:
	if the class of the player is priestess and the player is female and the virgin of the player is 1, now the charge of the second noun is 120;
	otherwise now the charge of the second noun is 300;
	if there is a worn demon tail plug, increase the charge of the second noun by 150.
		
Definition: a thing (called T) is blessable:
	decide no.

Definition: a clothing (called T) is blessable:
	if T is blessed, decide no;
	if T is not accessory or T is unique: [non-unique accessories (jewellery) is not applicable]
		if T is worn by the player or T is carried by the player, decide yes.

Definition: a bottle (called T) is blessable:
	if T is blessed:
		decide no;
	otherwise:
		if T is worn by the player or T is carried by the player, decide yes.

Definition: an alchemy product (called T) is blessable:
	if T is blessed:
		decide no;
	otherwise:
		if T is carried by the player, decide yes.
			
Rule for supplying a missing second noun while praying something with: 
	if the player is in Dungeon28, now the second noun is dungeon altar;
	if the player is in Woods20, now the second noun is woods altar;

Check putting something on dungeon altar:
	try praying the noun with the second noun instead;
	
Check putting something on woods altar:
	try praying the noun with the second noun instead;

Understand "place [something] on [something]", "offer [something] on [something]", "use [something] on [something]" as praying it with.


Altars ends here.
