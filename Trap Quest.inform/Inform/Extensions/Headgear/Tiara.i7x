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
	say "This silver [MediumDesc of H] looks like something a very important princess would wear. [one of]You can feel a small amount of magical energy coming from it.[or]It glitters brilliantly even with no nearby bright light source.[or]It feels completely weightless.[sticky random]".

To say MediumDesc of (H - silver-tiara):
	say "silver royal tiara".

Definition: silver-tiara is roleplay: decide yes.
Definition: silver-tiara is gem themed: decide yes.
Definition: silver-tiara is grey themed: decide yes.

Chapter - Class Outfit

To compute class outfit of (H - silver-tiara):
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

To compute unique recycling of (C - silver-tiara):
	now the minotaur-checked of royal-quest is false;
	now the duties-performed of royal-quest is 0.

To uniquely set up (C - silver-tiara):
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
	say "interacial fetish tiara".

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
		transform H into tiara-of-spades.

To compute princess guard tease of (M - a royal guard):
	allocate 6 seconds;
	say "[BigNameDesc of tiara-of-spades] sends an irresistable suggestion through your body, and you find yourself placing a hand on [NameDesc of M][']s crotch.[line break][if the player is able to speak][variable custom style]'Think you've got what it takes to satify me?'[roman type][line break][end if]";
	if the refractory-period of M > 0:
		say "[BigNameDesc of M] hesitantly feels down at [his of M] crotch, and finds that it is soft, and as much as [he of M] wills it, it doesn't seem to be getting hard right now.[line break][speech style of M]'I am sorry to disappoint you, your Highness, but I don't believe that I can be of service right now...'[roman type][paragraph break][if the player is able to speak][variable custom style]'[one of]Ugh, you are walking, talking evidence of why white women prefer black [men of M].'[or]Pathetic.'[stopping][roman type][line break][BigNameDesc of M] hangs [his of M] head in shame.";
	otherwise:
		say "[BigNameDesc of M] is breathing heavily, and [his of M] pupils are dilated.[line break][speech style of M]'Please, your Majesty, it would be my honour to... to...'[roman type][line break]You give [his of M] crotch a quick teasing squeeze... and then [NameDesc of M][']s eyes go crossed and [he of M] makes a groaning sound. [big his of M] hips buck forward and back, and [he of M] is clearly cumming inside [his of M] pants.[paragraph break][if the player is able to speak][variable custom style]'[one of]White [men of M] are so cute. Did you really think you would ever get to be with someone like me, with that little worm? Finish dribbling your little pathetic load into your breaches, and then get out of my sight.'[or]Pathetic.'[stopping][roman type][line break]";
		orgasm M;
		compute M slinking away.

Tiara ends here.
