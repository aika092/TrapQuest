Bridal Veils by Headgear begins here.

A bridal veil is a kind of headgear. A bridal veil is usually silk. A bridal veil is usually sheer. A bridal veil is blondeness-positive. A bridal veil is usually hair growing. A bridal veil is usually anal-sex-addiction-influencing. A bridal veil is womanly.

Definition: a bridal veil is white themed: decide yes.
Definition: a bridal veil is roleplay:
	if the player is possessing a vagina or tg fetish > 0, decide yes;
	decide no.

To say ShortDesc of (H - a bridal veil):
	say "bridal veil".

To compute SelfExamineDesc of (H - a bridal veil):
	say "You are wearing a bridal veil on top of your [ShortDesc of hair]. ".

Book - Floral Veil

floral bridal veil is a bridal veil. The printed name of floral bridal veil is "[clothing-title-before]floral bridal veil[clothing-title-after]". The text-shortcut of floral bridal veil is "fbv".

Figure of floral bridal veil is the file "Items/Accessories/Head/bridalveil1.png".

To decide which figure-name is the clothing-image of (C - floral bridal veil):
	decide on figure of floral bridal veil.

To say ClothingDesc of (H - floral bridal veil):
	say "This floral headband connects to a sheer silky veil[if H is worn and the ceremony of betrothal-quest is false]. It is partially concealing your face[otherwise if H is worn]. It has been pulled back, revealing your face[end if].".

Definition: floral bridal veil is flower themed: decide yes.


Chapter - Class Outfit

To compute virginity-loss of (C - a bridal veil): [no escaping it by losing virginity then re-wearing the clothing]
	if bride-consort is not penetrating vagina:
		let D be a random worn overdress;
		if D is not bridal dress: [Bridal dresses have their own virginity loss functions if worn, so can be left alone.]
			say "For failing to [if bride-consort is monster]lose your virginity to [FuckerDesc of bride-consort][otherwise]save your virginity until marriage[end if], you feel cursed energy [if D is dress]falling on your [MediumDesc of D][otherwise]emanating from your [MediumDesc of C][end if]!";
			if D is not gang-bang-girl vest top and D is not burning love crop top:
				if the ceremony of betrothal-quest is false, now D is sexy bridal dress;
				otherwise now D is slutty bridal dress;
				class summon D;
			if D is worn:
				now D is cursed;
				now the quest of D is vaginal-addict-quest;
				say QuestFlav of D.

To compute class outfit of (H - a bridal veil):
	if the player is not possessing a vagina:
		unless the player is an april 2025 top donator and the player is not ready for event tg:
			say DefaultSexChangeFlav;
			SexChange the player;
	if the player is possessing a vagina:
		if the vaginalvirgin of the player is 1:
			class summon long bridal dress;
		otherwise:
			if the ceremony of betrothal-quest is false, class summon sexy bridal dress;
			otherwise class summon slutty bridal dress;
	otherwise:
		if the analvirgin of the player is 1:
			class summon long bridal dress;
		otherwise:
			if the ceremony of betrothal-quest is false, class summon sexy bridal dress;
			otherwise class summon slutty bridal dress;
	if the ceremony of betrothal-quest is true, class summon floral bouquet.

Definition: a bridal veil (called C) is removal-blocking:
	if wearing-target is sacrificial maiden dress, decide yes;
	decide no.

To compute unique periodic effect of (H - a bridal veil):
	if bride-consort is the throne and the player is in the location of hotel altar and sacrificial maiden dress is not worn:
		let C be a random worn overdress;
		if C is removable overdress or C is nothing:
			say "The eyes on the golden statue light up a bright red.[line break][first custom style]'YOU WILL SERVE NICELY.'[roman type][line break]";
			if C is clothing, transform C into sacrificial maiden dress;
			otherwise class summon sacrificial maiden dress;
		if sacrificial maiden dress is worn:
			now bride-consort is hotel altar;
			say "[variable custom style]I'm a VIRGIN SACRIFICE?! This seem extremely ominous...[roman type][line break]".

Chapter - Quest

betrothal-quest is a headgear-clothing-quest. betrothal-quest has a truth state called ceremony. the ceremony of betrothal-quest is false. betrothal-quest has a truth state called consummation. the consummation of betrothal-quest is false.

To uniquely set up (C - a bridal veil):
	now the quest of C is betrothal-quest.

To compute unique recycling of (C - a bridal veil):
	if the player is possessing a vagina and the vaginalvirgin of the player is 1 and the consummation of betrothal-quest is false:
		now the ceremony of betrothal-quest is false;
		now bride-consort is the throne;
		now C is cursed;
		repeat with F running through bouquets:
			if F is held or F is in the location of the player, say "[BigNameDesc of F] wilts and then fizzles into dust.";
			only destroy F.

To say QuestFlav of (Q - betrothal-quest):
	say "You sense it wants you to [if bride-consort is the hotel altar]become a human sacrifice?! Maybe you should try to lose your virginity instead...[otherwise if bride-consort is the throne]find a husband to please (but the more you say no, the more appealing the offers may become!).[otherwise]keep your husband ([FuckerDesc of bride-consort]) pleased (or banish [him of bride-consort]).[end if]".

To say QuestTitle of (Q - betrothal-quest):
	say " (marriage quest)".

To compute quest completion of (Q - betrothal-quest) on (C - a clothing):
	if the ceremony of Q is false:
		say "Your [MediumDesc of C] brims with blessed energy... making you feel flushed with arousal, and making your [if the player is possessing a vagina][vagina][otherwise][asshole][end if] throb with a desperate desire to be bred![line break][variable custom style]Huh?![roman type][line break]It seems your quest isn't over yet. Next you need to [bold type]find the Kama Sutra Penthouse Suite[roman type], and [bold type]go there alone[roman type] while [bold type]holding [if there is a worn bouquet]your bouquet[otherwise]a bouquet[roman type] (since you didn't get the bouquet this time round because your hand was already full, you'll need to find the [bold type]mystical wardrobe in the mansion[roman type] to obtain your missing class gear)[end if].[line break][variable custom style]My [if the player is possessing a vagina][vagina][otherwise][asshole][end if]... It's pulsing with need! Oh, I need [manly-penis] in my [if the player is possessing a vagina][vagina][otherwise][asshole][end if]! Right now! [if the player is not a pervert]Oh my god... what am I thinking? What's happening to me?! But I can't deny this deep need I can feel down there...[end if][roman type][line break]";
		arouse 3000;
	otherwise:
		say QuestPersistFlav of Q on C;
		if C is cursed:
			let D be a random off-stage necklace;
			if D is necklace and the time-alive of bride-consort > 0: [NPC was bedded, not banished]
				now D is pink diamond;
				set shortcut of D;
				if D is actually summonable:
					summon D;
				otherwise:
					now D is in the location of the player;
				say "summoning a [MediumDesc of D] [if D is worn]straight onto your neck[otherwise]right in front of you[end if]!";
			otherwise:
				compute generic class reward of Q on C;
		otherwise:
			compute persistent reward of Q on C;
		increase the quest-completions of Q by 1;
		if C is bland, now C is blessed;
		if C is cursed, silently bless C;
		say "[roman type][line break]".

To decide which number is the vaginal-sex-addiction-influence of (C - a bridal veil):
	if the player is not possessing a vagina, decide on 0;
	if the consummation of betrothal-quest is true, decide on 0;
	if the ceremony of betrothal-quest is false, decide on -1;
	decide on 10.

To decide which number is the anal-sex-addiction-influence of (C - a bridal veil):
	if the player is possessing a vagina, decide on 0;
	if the consummation of betrothal-quest is true, decide on 0;
	if the ceremony of betrothal-quest is false, decide on -1;
	decide on 10.

Bridal Veils ends here.
