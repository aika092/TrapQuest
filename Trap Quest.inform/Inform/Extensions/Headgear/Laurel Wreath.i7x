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

To compute unique recycling of (C - laurel wreath):
	now the conception-count of babymaking-quest is 0.

To compute class outfit of (H - laurel wreath):
	if the bimbo of the player < 10, class summon goddess tunic;
	otherwise class summon ivy leaves.

Chapter - Quest

To uniquely set up (C - laurel wreath):
	now the previously-pregnant of babymaking-quest is 1; [otherwise the quest completes immediately]
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
