Tiara by Headgear begins here.

A tiara is a kind of headgear. A tiara is usually metal. A tiara is blondeness-positive. A tiara is brightness-positive. A tiara is redness-positive. A tiara is usually hair growing. A tiara is usually intelligence-influencing. A tiara is womanly. Understand "tiara" as a tiara.

Definition: a tiara is condom pinnable: decide yes.

Definition: a tiara is royalty themed: decide yes.

To say ShortDesc of (H - a tiara):
	say "tiara".

To compute SelfExamineDesc of (H - a tiara):
	say "You are wearing a[if the bimbo of the player > 11]n[line break][second custom style] absolutely gorgeous and shiny[roman type][line break][end if] metal [ShortDesc of H] on top of your [ShortDesc of hair]. ".


silver-tiara is a tiara.

The printed name of silver-tiara is "[clothing-title-before]silver tiara[clothing-title-after]". The text-shortcut of silver-tiara is "ti". Understand "silver" as silver-tiara.

Figure of silver tiara is the file "Items/Accessories/Head/royaltiara1.png".

To decide which figure-name is the clothing-image of (C - silver-tiara):
	decide on figure of silver tiara.

To say ClothingDesc of (H - silver-tiara):
	say "This silver [MediumDesc of H] looks like something a very important princess would wear. [one of]You can feel a small amount of magical energy coming from it[or]It glitters brilliantly even with no nearby bright light source[or]It feels completely weightless[sticky random].".

To say MediumDesc of (H - silver-tiara):
	say "silver royal tiara".

Definition: silver-tiara is roleplay: decide yes.
Definition: silver-tiara is gem themed: decide yes.
Definition: silver-tiara is grey themed: decide yes.

Chapter - Class Outfit

To compute class outfit of (H - a tiara):
	if the quest of H is virginity-retention-quest:
		class summon virgin princess outfit;
	otherwise:
		if the throatskill of the player is 1:
			class summon deepthroat princess crop top;
		otherwise:
			class summon lolita royal dress;
	class summon royal scepter.

To compute virginity-loss of (C - a tiara):
	if the quest of C is virginity-retention-quest:
		say "In an instant, false memories of being captured and sold into slavery fill your mind. Looking down at yourself again, you realise they are more real than you realised: you are now wearing the bondage that matches your memory: the bondage of a captured warrior princess repurposed as a sex slave for a cruel noble from the conquering nation.";
		PinkWardrobeUnclash slave-garb;
		summon slave-garb locked;
		now the quest of C is unlock-quest.

Chapter - Quest

royal-quest is a headgear-clothing-quest. royal-quest has a number called duties-performed. royal-quest has a truth state called minotaur-checked. The minotaur-checked of royal-quest is false.
stealth-diaper-quest is a headgear-clothing-quest.
unlock-quest is a headgear-clothing-quest.

To compute unique recycling of (C - a tiara):
	now the minotaur-checked of royal-quest is false;
	now the duties-performed of royal-quest is 0.

To uniquely set up (C - a tiara):
	if diaper quest is 1, now the quest of C is stealth-diaper-quest;
	otherwise now the quest of C is royal-quest.

To compute generic first time class reward of (Q - unlock-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is sapphire;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.

A time based rule (this is the royal quest rule):
	let H be a random worn headgear;
	if H is headgear:
		if the quest of H is royal-quest and the player is in Dungeon36 and the minotaur-checked of royal-quest is false:
			say "You look at the cage, and see that [if minotaur is not caged or minotaur is not in Dungeon36][NameDesc of minotaur] is no longer in its cage! Oh no![otherwise if mystical amulet is in Dungeon36]the amulet is still here, safe and sound.[otherwise]the amulet has gone missing! This is bad news![end if]";
			now the minotaur-checked of royal-quest is true;
			progress quest of royal-quest;
		if the quest of H is unlock-quest and H is cursed and the number of worn locked clothing is 0, progress quest of unlock-quest.

To say QuestFlav of (Q - royal-quest):
	say "You sense it wants you to fulfill some royal duties. A royal scepter could probably help with this.".

To say QuestTitle of (Q - royal-quest):
	say " (royal duties quest)".

To progress quest of (Q - royal-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			increase duties-performed of Q by 1;
			increase the charge of royal scepter by 10;
			if duties-performed of Q > 3:
				compute quest completion of Q on C;
				now the duties-performed of Q is 0;
			otherwise:
				say "Your [ShortDesc of C] shudders with pride. But there's more work to do!";
			class summon royal scepter.

To say QuestFlav of (Q - unlock-quest):
	say "You sense it wants you to escape from your bondage.".

To say QuestTitle of (Q - unlock-quest):
	say " (bondage escape quest)".




trashy-tiara is a tiara.

The printed name of trashy-tiara is "[clothing-title-before]trashy tiara[clothing-title-after]". The text-shortcut of trashy-tiara is "tti". Understand "trashy" as trashy-tiara.

Figure of trashy tiara is the file "Items/Accessories/Head/royaltiara5.png".

To decide which figure-name is the clothing-image of (C - trashy-tiara):
	decide on figure of trashy tiara.

To say ClothingDesc of (H - trashy-tiara):
	say "This silver [MediumDesc of H] is made of cheap plastic. It's a trashy fancy dress item, with very visibly fake diamonds and giant rubies shaped like hearts.".

To say MediumDesc of (H - trashy-tiara):
	say "trashy plastic tiara".

Definition: trashy-tiara is gem themed: decide yes.
Definition: trashy-tiara is grey themed: decide yes.
Definition: trashy-tiara is heart themed: decide yes.

Chapter - Class Outfit

To compute class outfit of (H - trashy-tiara):
	class summon rubber-royal-dress;
	class summon royal scepter.



jewelled-tiara is a tiara.

The printed name of jewelled-tiara is "[clothing-title-before]jewelled tiara[clothing-title-after]". The text-shortcut of jewelled-tiara is "jti". Understand "jewelled" as jewelled-tiara.

Figure of priceless jewelled tiara is the file "Items/Accessories/Head/royaltiara6.png".
Figure of jewelled tiara is the file "Items/Accessories/Head/royaltiara7.png".

To decide which figure-name is the clothing-image of (C - jewelled-tiara):
	if C is worn, decide on figure of jewelled tiara;
	otherwise decide on figure of priceless jewelled tiara.

To say ClothingDesc of (H - jewelled-tiara):
	say "This silver [MediumDesc of H] is made of the most expensive, high-quality of metals. It has countless small diamonds and one giant ruby embedded in the frame.".

To say MediumDesc of (H - jewelled-tiara):
	say "priceless jewelled tiara".

Definition: jewelled-tiara is gem themed: decide yes.
Definition: jewelled-tiara is grey themed: decide yes.
Definition: jewelled-tiara is magic themed: decide no. [usually zappable things are magic themed]
Definition: jewelled-tiara is hand ready: decide no. [usually zap ready things are flagged as hand ready]

To decide which number is the magic-cost of (Z - jewelled-tiara):
	decide on 0.

jewelled-tiara is zap ready. jewelled-tiara is redness-positive. jewelled-tiara has a number called charge.
To decide which number is the zap damage improvement of (W - jewelled-tiara):
	let X be 4;
	if savior's heels is worn, now X is 8;
	decide on 5 + the charge of jewelled-tiara + the magic-modifier of jewelled-tiara.

To compute attack of (W - jewelled-tiara) at (M - a monster):
	say "[one of]You channel your thoughts into the gems in your headgear, and three beams of searing red energy burst out, hitting [NameDesc of M] and visibly burning [him of M]! Wow!!![or]You send three laser rays from your tiara to [NameDesc of M], burning [him of M][if the charge of W <= 2]. [bold type]But since you used your laser attack so recently, it's significantly weaker than usual.[roman type][line break][otherwise]![end if][stopping]".

To compute spell consequences of (W - jewelled-tiara):
	now the charge of jewelled-tiara is 0.

To compute unique periodic effect of (H - jewelled-tiara):
	if the charge of jewelled-tiara < 6, increase the charge of jewelled-tiara by 1.

Report wearing jewelled-tiara:
	say "As the tiara hits your head, it morphs into a slightly less extravagant, but still jewelled, tiara. Still, you feel like the term [']KING['] fits you better than [']princess['].[line break][variable custom style]Fuck a princess, I'm a king[line break]Bow down and kiss on my ring[roman type][line break]";
	let D be a random off-stage ring;
	if D is ring:
		now D is pink diamond;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "A [MediumDesc of D] materialises [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
		unless D is worn, compute autotaking D.

To compute class outfit of (H - jewelled-tiara):
	class summon ballgown royal dress;
	class summon savior's heels;
	class summon royal scepter.


tiara-veil is a tiara.

The printed name of tiara-veil is "[clothing-title-before]tiara veil[clothing-title-after]". The text-shortcut of tiara-veil is "tv". Understand "veil" as tiara-veil.

Figure of tiara veil is the file "Items/Accessories/Head/royaltiara3.png".

To decide which figure-name is the clothing-image of (C - tiara-veil):
	decide on figure of tiara veil.

To say ClothingDesc of (H - tiara-veil):
	say "This gold royal tiara has a sheer white wedding veil attached to it.".

To say MediumDesc of (H - tiara-veil):
	say "royal tiara wedding veil".

Definition: tiara-veil is gem themed: decide yes.
Definition: tiara-veil is yellow themed: decide yes.

To compute class outfit of (H - tiara-veil):
	if the player is not possessing a vagina:
		say DefaultSexChangeFlav;
		SexChange the player;
	class summon princess bride dress;
	class summon princess-bride-stockings;
	class summon princess-bride-suspenders;
	class summon white-and-red girly bow court heels;
	if the ceremony of betrothal-quest is true, class summon floral bouquet.

To compute unique periodic effect of (H - tiara-veil):
	if mechanic is alive or Hotel01 is unplaced, now bride-consort is mechanic;
	otherwise now bride-consort is demon lord.

To uniquely set up (C - tiara-veil):
	now the quest of C is betrothal-quest.

To decide which number is the vaginal-sex-addiction-influence of (C - tiara-veil):
	if the consummation of betrothal-quest is true, decide on 0;
	if the ceremony of betrothal-quest is false, decide on -1;
	decide on 5.


tiara-of-spades is a tiara.

The printed name of tiara-of-spades is "[clothing-title-before]tiara of spades[clothing-title-after]". The text-shortcut of tiara-of-spades is "tos". Understand "spades", "of spades" as tiara-of-spades.

Figure of tiara-of-spades is the file "Items/Accessories/Head/royaltiara4.png".

To decide which figure-name is the clothing-image of (C - tiara-of-spades):
	decide on figure of tiara-of-spades.

To say ClothingDesc of (H - tiara-of-spades):
	say "This silver royal tiara is adorned with spades which indicates the wearer is a total slut for [BlackCock].".

To say MediumDesc of (H - tiara-of-spades):
	say "interracial fetish tiara".

Definition: tiara-of-spades is gem themed: decide yes.
Definition: tiara-of-spades is grey themed: decide yes.
Definition: tiara-of-spades is interracial themed: decide yes.
Definition: tiara-of-spades is playing card themed: decide yes.

To compute class outfit of (H - tiara-of-spades):
	[class summon BBC Collar;]
	class summon queen-of-spades-dress;
	class summon queen-of-spades-skirt;
	class summon queen-of-spades-stockings;
	class summon queen-of-spades-sandals.

To uniquely set up (C - tiara-of-spades):
	now the quest of C is royal-quest.

To check tiara-of-spades transformation:
	let H be a random worn tiara;
	if H is tiara and H is not tiara-of-spades:
		say "Your [ShortDesc of H] vibrates as you get closer and closer to [BlackCock]. A more powerful magic is taking control!.";
		let R be a random worn royal dress;
		if R is royal dress and R is not queen-of-spades-dress:
			repeat with O running through worn clothing: [remove all underwear]
				if O is not R and O is removable and (O is breast covering or O is belly covering or O is crotch covering):
					check that O usually goes under queen-of-spades-dress;
					if the rule succeeded:
						WardrobeVanish O;
			transform R into queen-of-spades-dress;
			compute class set up of queen-of-spades-dress;
		transform H into tiara-of-spades.

To compute princess guard tease of (M - a royal guard):
	allocate 6 seconds;
	say "[BigNameDesc of tiara-of-spades] sends an irresistible suggestion through your body, and you find yourself placing a hand on [NameDesc of M][']s crotch.[line break][if the player is able to speak][variable custom style]'Think you've got what it takes to satisfy me?'[roman type][line break][end if]";
	if the refractory-period of M > 0:
		say "[BigNameDesc of M] hesitantly feels down at [his of M] crotch, and finds that it is soft, and as much as [he of M] wills it, it doesn't seem to be getting hard right now.[line break][speech style of M]'I am sorry to disappoint you, your Highness, but I don't believe I can be of service right now...'[roman type][paragraph break][if the player is able to speak][variable custom style]'[one of]Ugh, you are walking, talking evidence of why white women prefer black [men of M].'[or]Pathetic.'[stopping][roman type][line break][BigNameDesc of M] hangs [his of M] head in shame.";
	otherwise:
		say "[BigNameDesc of M] is breathing heavily, and [his of M] pupils are dilated.[line break][speech style of M]'[big please], your Majesty, it would be my honour to... to...'[roman type][line break]You give [his of M] crotch a quick teasing squeeze... and then [NameDesc of M][']s eyes go crossed and [he of M] makes a groaning sound. [big his of M] hips buck forward and back, and [he of M] is clearly cumming inside [his of M] pants.[paragraph break][if the player is able to speak][variable custom style]'[one of]White [men of M] are so cute. Did you really think you would ever get to be with someone like me, with that little worm? Finish dribbling your little pathetic load into your breaches, and then get out of my sight.'[or]Pathetic.'[stopping][roman type][line break]";
		orgasm M;
		compute M slinking away.


chain-tiara is a headgear. chain-tiara is metal. chain-tiara is blondeness-positive. chain-tiara is brightness-positive. chain-tiara is redness-positive. chain-tiara is hair growing. chain-tiara is strength-influencing. chain-tiara is womanly. Understand "chain", "tiara" as a chain-tiara.

Definition: chain-tiara is condom pinnable: decide yes.

To say ShortDesc of (H - chain-tiara):
	say "chain tiara".

To compute SelfExamineDesc of (H - chain-tiara):
	say "You are wearing a metal [ShortDesc of H] on top of your [ShortDesc of hair]. ".

The printed name of chain-tiara is "[clothing-title-before]chain tiara[clothing-title-after]". The text-shortcut of chain-tiara is "cti".

Figure of chain tiara is the file "Items/Accessories/Head/chaintiara1.png".

To decide which figure-name is the clothing-image of (C - chain-tiara):
	decide on figure of chain tiara.

To say ClothingDesc of (H - chain-tiara):
	say "This delicate set of silver chains has three purple gems that dangle in front of your cheeks and forehead. Above the central gem is a pentagram...".

To say MediumDesc of (H - chain-tiara):
	say "chain tiara".

Definition: chain-tiara is gem themed: decide yes.
Definition: chain-tiara is grey themed: decide yes.

Chapter - Class Outfit

To compute class outfit of (H - chain-tiara):
	if the player is possessing a penis, class summon exposing-priestess-outfit;
	otherwise class summon cameltoe-priestess-outfit;
	class summon sandals-of-destiny.

Chapter - Quest

chosen-one-quest is a headgear-clothing-quest. chosen-one-quest has a number called battles-performed.

To compute unique recycling of (C - chain-tiara):
	now the battles-performed of chosen-one-quest is 0.

To uniquely set up (C - chain-tiara):
	now the quest of C is chosen-one-quest.

To say QuestFlav of (Q - chosen-one-quest):
	say "You sense it wants you to end battles [']honorably['], with enemies injured (less than half HP), but also happy (either by your surrender / defeat and obedient submission, or your offering a hand of friendship after defeating them).".

To say QuestTitle of (Q - chosen-one-quest):
	say " (honorable battles quest)".

To progress quest of (Q - chosen-one-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			increase battles-performed of Q by 1;
			if battles-performed of Q > a random number between 2 and 4:
				compute quest completion of Q on C;
				now the battles-performed of Q is 0;
			otherwise:
				say "Your [ShortDesc of C] shudders with pride. But there's more battles to be fought with honor before you are fully rewarded!".

Tiara ends here.
