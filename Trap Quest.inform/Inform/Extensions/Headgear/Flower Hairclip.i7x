Flower Hairclip by Headgear begins here.
A flower hairclip is a kind of headgear. A flower hairclip is usually satin. A flower hairclip is usually purity. There is 1 flower hairclip. Figure of flower hairclip is the file "Items/Accessories/Head/flowerhairclip1.png". A flower hairclip is usually hair growing. A flower hairclip is usually anal-sex-addiction-influencing. Understand "white", "rose", "clip" as flower hairclip.

To decide if a flower hairclip is roleplay:
	if earnings > starting-earnings - 250, decide no;[prevents the hairclip from spawning naturally; would be super strong w/ almost all headgear disabled]
	if the player is male or the player is female and tg fetish >= 1, decide no;
	decide yes;

Definition: a flower hairclip (called C) is fluid immune:
	decide yes.

The printed name of flower hairclip is usually "[TQlink of item described][clothing-title-before]flower hairclip[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of flower hairclip is "fh".


To decide which figure-name is the clothing-image of (C - a flower hairclip):
	decide on figure of flower hairclip.

To say ClothingDesc of (H - a flower hairclip):
	say "A hairclip in the style of a beautiful white rose. You can feel some magic aura emanating from it, which seems to fill you with a feeling of carefree confidence.".
	
To say ShortDesc of (H - flower hairclip):
	say "hairclip".
	
To compute SelfExamineDesc of (H - flower hairclip):
	let X be the largeness of hair;
	say "You are wearing a hairclip fashioned as a white rose in your [ShortDesc of hair]. ".

To compute hair colour change of (H - flower hairclip):
	compute hair colour darken of H.

warrior-summoned is a number that varies.

To compute class outfit of (H - a flower hairclip):
	let W be a random off-stage reinforced warrior chestpiece;
	let G be a random off-stage gown of purity;
	if (W is actually summonable or (W is warrior chestpiece and warrior-summoned is 0)) and the largeness of breasts < 18:
		if warrior-summoned < 2:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn bras:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]You are forced to [if the player is upright]stand[otherwise]stay[end if] still as a rigid metal chestpiece appears around you. Somehow, you now feel more in control of your urges.[roman type][line break]";
		summon W cursed;
		now the raw-magic-modifier of W is the virgin bonus of the player;
		if warrior-summoned is 0, now warrior-summoned is 1;
		now W is suppression;
	otherwise if virgin magical girl outfit is not worn and (G is actually summonable or (G is gown of purity and warrior-summoned < 2)):
		if warrior-summoned is 0:
			repeat with O running through worn skirted clothing:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]A belt suddenly latches around you with a dull *clang*. Two strips of pure white fabric hang from the sides. You feel incredible - fuelled with extra determination and feeling more comfortable with your current situation, you surge onwards![roman type][line break]";
		summon G cursed;
		now warrior-summoned is 2;
		now the raw-magic-modifier of G is the virgin bonus of the player.

To compute virginity-loss of (H - a flower hairclip):
	say "As the [H] falls from your hair, you feel [if the virgin bonus of the player < 0]even more of [end if]your strength ripped from you.";
	decrease the virgin bonus of the player by 1;
	now H is in the location of the player.


Flower Hairclip ends here.

