Bridal Veils by Headgear begins here.

A bridal veil is a kind of headgear. A bridal veil is usually silk. A bridal veil is blondeness-positive. A bridal veil is usually hair growing. A bridal veil is usually anal-sex-addiction-influencing. A bridal veil is womanly.

Definition: a bridal veil is white themed: decide yes.
Definition: a bridal veil is roleplay: decide yes.

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
	say "This floral headband connects to a sheer silky veil. You keep it pulled back and out of eyes for practical reasons.".


Chapter - Class Outfit

To compute virginity-loss of (C - a bridal veil):
	do nothing.

To compute class outfit of (H - a bridal veil):
	if the vaginalvirgin of the player is 1:
		class summon long bridal dress;
	otherwise:
		if the ceremony of betrothal-quest is false, class summon sexy bridal dress;
		otherwise class summon slutty bridal dress;
	if the ceremony of betrothal-quest is true, class summon floral bouquet.


Chapter - Quest

betrothal-quest is a headgear-clothing-quest. betrothal-quest has a truth state called ceremony. the ceremony of betrothal-quest is false. betrothal-quest has a truth state called consummation. the consummation of betrothal-quest is false.

To uniquely set up (C - a bridal veil):
	now the quest of C is betrothal-quest.

To say QuestFlav of (Q - betrothal-quest):
	say "You sense it wants you to [if bride-consort is the throne]find a husband to please (but the more you say no, the more appealing the offers may become!)[otherwise]keep your husband ([FuckerDesc of bride-consort]) pleased (or banish [him of bride-consort])[end if].".

To say QuestTitle of (Q - betrothal-quest):
	say " (marriage quest)".

To compute generic first time class reward of (Q - betrothal-quest) on (C - a clothing):
	say "making you feel flushed with arousal, and making your [vagina] pulse with a desire to be bred!";
	arouse 3000.

To decide which number is the vaginal-sex-addiction-influence of (C - a bridal veil):
	if C is cursed, decide on -1;
	if C is blessed, decide on 0;
	decide on 5.

To compute generic second time class reward of (Q - betrothal-quest) on (C - a clothing):
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
		compute generic class reward of Q on C.

Bridal Veils ends here.
