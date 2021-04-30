Tiara by Headgear begins here.

A tiara is a kind of headgear. A tiara is usually metal. A tiara is blondeness-positive. A tiara is brightness-positive. A tiara is redness-positive. A tiara is usually hair growing. A tiara is usually intelligence-influencing. A tiara is usually roleplay. A tiara is womanly. Understand "tiara" as a tiara.

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

Definition: silver-tiara is gem themed: decide yes.
Definition: silver-tiara is grey themed: decide yes.

Chapter - Class Outfit

To compute class outfit of (H - silver-tiara):
	if the throatskill of the player is 1:
		class summon deepthroat princess crop top;
	otherwise if diaper quest is 0:
		class summon lolita royal dress;
	otherwise:
		class summon ballgown royal dress;
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

To compute unique periodic effect of (H - silver-tiara):
	if the quest of H is royal-quest and the player is in Dungeon36 and the minotaur-checked of royal-quest is false:
		say "You look at the cage, and see that [if minotaur is not caged or minotaur is not in Dungeon36][NameDesc of minotaur] is no longer in its cage! Oh no![otherwise if mystical amulet is in Dungeon36]the amulet is still here, safe and sound.[otherwise]the amulet has gone missing! This is bad news![end if]";
		now the minotaur-checked of royal-quest is true;
		progress quest of royal-quest;
	if the quest of H is unlock-quest and H is cursed and the number of worn locked clothing is 0, progress quest of unlock-quest.


tiara-veil is a tiara.

The printed name of tiara-veil is "[clothing-title-before]tiara veil[clothing-title-after]". The text-shortcut of tiara-veil is "tv". Understand "veil" as tiara-veil.

Figure of tiara veil is the file "Items/Accessories/Head/royaltiara3.png".

Definition: tiara-veil is roleplay: decide no.

To decide which figure-name is the clothing-image of (C - tiara-veil):
	decide on figure of tiara veil.

To say ClothingDesc of (H - tiara-veil):
	say "This gold royal tiara has a sheer white wedding veil attached to it.".

To say MediumDesc of (H - tiara-veil):
	say "royal tiara wedding veil".

Definition: tiara-veil is gem themed: decide yes.
Definition: tiara-veil is yellow themed: decide yes.

To compute class outfit of (H - tiara-veil):
	class summon princess bride dress;
	class summon princess-bride-stockings;
	class summon princess-bride-suspenders;
	class summon white-and-red girly bow court heels.

To compute unique periodic effect of (H - tiara-veil):
	if mechanic is alive, now bride-consort is mechanic;
	otherwise now bride-consort is demon lord.

Chapter - Quest

To uniquely set up (C - tiara-veil):
	now the quest of C is betrothal-quest.

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

Tiara ends here.
