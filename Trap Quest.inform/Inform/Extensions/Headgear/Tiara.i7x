Tiara by Headgear begins here.


A tiara is a kind of headgear. A tiara is usually metal. There is 1 tiara. Figure of tiara is the file "royaltiara1.png". A tiara is blondeness-positive. A tiara is brightness-positive. A tiara is redness-positive. A tiara is usually hair growing. A tiara is usually intelligence-influencing. A tiara is usually roleplay.

The printed name of tiara is usually "[TQlink of item described][clothing-title-before]tiara[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of tiara is "ti".

To decide which figure-name is the clothing-image of (C - a tiara):
	decide on figure of tiara.

To say ClothingDesc of (H - a tiara):
	say "This silver [printed name of H] looks like something a very important princess would wear. [one of]You can feel a small amount of magical energy coming from it.[or]It glitters brilliantly even with no nearby bright light source.[or]It feels completely weightless.[sticky random]".

To say ShortDesc of (H - a tiara):
	say "silver tiara".

To compute SelfExamineDesc of (H - a metal tiara):
	say "You are wearing a[if the bimbo of the player > 11]n[line break][second custom style] absolutely gorgeous and shiny[roman type][line break][end if] metal [ShortDesc of H] on top of your [ShortDesc of hair]. ".

tiara-summoned is a number that varies.

To compute class outfit of (H - a tiara):
	let R be a random off-stage fetish appropriate royal dress;
	let R2 be a random off-stage baby royal dress;
	if R is actually summonable or (R is royal dress and tiara-summoned is 0):
		if tiara-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn skirts:
				say "Your [O] vanishes!";
				destroy O;
		if the player is diapered and R2 is actually summonable, now R is R2;
		say "[bold type]Your tiara shines brightly, and a [if R is baby royal dress]childish[otherwise]silky[end if] pink dress materialises around you.[roman type][line break]";
		summon R cursed;
		now the raw-magic-modifier of R is 0;
		now tiara-summoned is 1;
		increase the raw-magic-modifier of R by the number of friendly alive royal guards;
		decrease the raw-magic-modifier of R by the number of unfriendly alive royal guards.

Definition: a tiara (called C) is condom pinnable:
	decide yes.

Definition: a thing (called C) is royal attire:
	decide no.



Tiara ends here.

