Laurel Wreath by Headgear begins here.



A laurel wreath is a kind of headgear. A laurel wreath is usually biological. There is 1 laurel wreath. Figure of laurel wreath is the file "laurelwreath1.png". A laurel wreath is blondeness-positive. A laurel wreath is brightness-positive. A laurel wreath is redness-positive. A laurel wreath is usually manly. A laurel wreath is usually hair growing. A laurel wreath is usually vaginal-sex-addiction-influencing.

To decide if a laurel wreath is roleplay:
	if pregnancy fetish is 1 and the player is originally female, decide yes;
	decide no.

Definition: a laurel wreath (called C) is fluid immune:
	decide yes.

Definition: a thing (called C) is pregnancy related:
	decide no.

Definition: a laurel wreath (called C) is pregnancy related:
	decide yes.

The printed name of laurel wreath is usually "[TQlink of item described][clothing-title-before]laurel wreath[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of laurel wreath is "lw".


To decide which figure-name is the clothing-image of (C - a laurel wreath):
	decide on figure of laurel wreath.

To say ClothingDesc of (H - a laurel wreath):
	say "A circle-shaped wreath made from olive twigs. It somehow makes you feel... divine.".
	
To say ShortDesc of (H - a laurel wreath):
	say "laurel wreath".

To compute SelfExamineDesc of (H - laurel wreath):
	let X be the largeness of hair;
	say "You are wearing a divine laurel wreath in your [ShortDesc of hair]. ".

fertility-summoned is a number that varies.

To compute class outfit of (H - a laurel wreath):
	let G be a random off-stage goddess tunic;
	let I be a random off-stage ivy leaves;
	if the bimbo of the player < 10 and (G is actually summonable or (G is fertility outfit and fertility-summoned is 0)):
		if fertility-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn skirts:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]Your [printed name of H] [bold type]barely noticeably shakes, and then a white tunic materialises around you.[roman type][line break]You feel..divine!";
		summon G cursed;
		now the raw-magic-modifier of G is the children of the player / 2;
		now fertility-summoned is 1;
	otherwise if (I is actually summonable or (I is fertility outfit and fertility-summoned is 0)) and the bimbo of the player > 7:
		if fertility-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn bras:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]Your [printed name of H] [bold type]barely noticeably shakes, and then a tight structure of ivy leaves materialises around you.[roman type][line break]You feel... divine!";
		summon I cursed;
		now fertility-summoned is 1;
		now the raw-magic-modifier of I is the children of the player / 2.


Laurel Wreath ends here.

