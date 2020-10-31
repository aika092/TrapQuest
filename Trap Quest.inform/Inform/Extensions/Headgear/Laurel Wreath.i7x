Laurel Wreath by Headgear begins here.

laurel wreath is a headgear. laurel wreath is biological. Figure of laurel wreath is the file "Items/Accessories/Head/laurelwreath1.png". laurel wreath is blondeness-positive. laurel wreath is brightness-positive. laurel wreath is redness-positive. laurel wreath is hair growing. laurel wreath is vaginal-sex-addiction-influencing.

Definition: laurel wreath is roleplay:
	if pregnancy fetish is 1 and the player is originally female, decide yes;
	decide no.

Definition: laurel wreath is fluid immune: decide yes.

Definition: laurel wreath is pregnancy themed: decide yes.
Definition: laurel wreath is brown themed: decide yes.

The printed name of laurel wreath is "[clothing-title-before]laurel wreath[clothing-title-after]". The text-shortcut of laurel wreath is "lw".

To decide which figure-name is the clothing-image of (C - laurel wreath):
	decide on figure of laurel wreath.

To say ClothingDesc of (H - laurel wreath):
	say "A circle-shaped wreath made from olive twigs. It somehow makes you feel... divine.".

To say ShortDesc of (H - laurel wreath):
	say "laurel wreath".

To compute SelfExamineDesc of (H - laurel wreath):
	let X be the largeness of hair;
	say "You are wearing a divine laurel wreath in your [ShortDesc of hair]. ".

Chapter - Class Outfit

Definition: laurel wreath (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is fertility outfit, decide yes;
	decide no.

fertility-summoned is a number that varies.
To compute unique recycling of (C - laurel wreath):
	now the conception-count of babymaking-quest is 0;
	now fertility-summoned is 0.

To compute class outfit of (H - laurel wreath):
	let G be a random off-stage goddess tunic;
	let I be a random off-stage ivy leaves;
	if the bimbo of the player < 10 and (G is actually summonable or (G is fertility outfit and fertility-summoned is 0)):
		PinkWardrobeUnclash G;
		say "[bold type]Your [printed name of H] [bold type]barely noticeably shakes, and then a white tunic materialises around you.[roman type][line break]You feel... divine!";
		summon G;
		now the raw-magic-modifier of G is childValue times 4;
		now fertility-summoned is 1;
	otherwise if (I is actually summonable or (I is fertility outfit and fertility-summoned is 0) or (I is fertility outfit and fertility-summoned is 1 and the bimbo of the player > 13)) and the bimbo of the player > 7:
		PinkWardrobeUnclash I;
		say "[bold type]Your [printed name of H] [bold type]barely noticeably shakes, and then a tight structure of ivy leaves materialises around you.[roman type][line break]You feel... divine!";
		summon I;
		now fertility-summoned is 2;
		now the raw-magic-modifier of I is childValue times 5.

Chapter - Quest

To uniquely set up (C - laurel wreath):
	if the conception-count of babymaking-quest is 0, now the quest of C is babymaking-quest.

[babymaking quest defined in Glittering Rose]
babymaking-quest has a number called conception-count.

To compute persistent reward of (Q - babymaking-quest) on (C - laurel wreath):
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise:
		say "infusing itself with [one of]powerful magic! You feel that something good will happen when you finally decide to stop being a fertility goddess.[or]even more blessed magic![stopping]";
		increase the conception-count of Q by 1.

To uniquely destroy (C - laurel wreath):
	let X be (4 * the conception-count of babymaking-quest) / expectedChildRate;
	if X > 0 and the quest of C is babymaking-quest:
		say "You can feel the blessed magic your [ShortDesc of C] had stored within itself shoot straight into your body, [if X > 1]significantly [end if]improving your speed!";
		DexUp X.

Laurel Wreath ends here.
