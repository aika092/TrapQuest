Bridal Veils by Headgear begins here.

A bridal veil is a kind of headgear. A bridal veil is usually silk. A bridal veil is blondeness-positive. A bridal veil is usually hair growing. A bridal veil is usually anal-sex-addiction-influencing. A bridal veil is womanly.

Definition: a bridal veil is white themed: decide yes.
Definition: a bridal veil is roleplay:
	if the player is a december 2020 top donator, decide yes;
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

betrothal-quest is a headgear-clothing-quest. betrothal-quest has a truth state called ceremony. the ceremony of betrothal-quest is false. betrothal-quest has a truth state called consumation. the consumation of betrothal-quest is false.

To uniquely set up (C - a bridal veil):
	now the quest of C is betrothal-quest.

To say QuestFlav of (Q - betrothal-quest):
	say "You sense it wants you to [if bride-consort is the throne]find a husband to please[otherwise]keep your husband ([FuckerDesc of bride-consort]) pleased (or banish [him of bride-consort])[end if].".

To say QuestTitle of (Q - betrothal-quest):
	say " (marriage quest)".

Bridal Veils ends here.
