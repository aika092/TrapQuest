Heart Hairpin by Headgear begins here.

A heart hairpin is a kind of headgear. There is one heart hairpin. A heart hairpin is usually metal. A heart hairpin is blondeness-positive. A heart hairpin is brightness-positive. A heart hairpin is redness-positive. A heart hairpin is usually roleplay. A heart hairpin is usually intelligence-influencing.

The printed name of heart hairpin is usually "[TQlink of item described][clothing-title-before]heart hairpin[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of heart hairpin is "hhp".

Figure of heart hairpin is the file "Items/Accessories/Head/hearthairpin1.png".

To decide which figure-name is the clothing-image of (C - a heart hairpin):
	decide on figure of heart hairpin.

To decide if a heart hairpin is roleplay:
	if mythical creature fetish is 0, decide no;[prevents the hairclip from spawning naturally; would be super strong w/ almost all headgear disabled]
	if inhuman pregnancy < 2, decide no;
	decide yes;

To say ClothingDesc of (H - a heart hairpin):
	say "A hairpin shaped like a heart.".

To say ShortDesc of (H - a heart hairpin):
	say "heart-shaped hairpin".

To compute SelfExamineDesc of (H - a heart hairpin):
	say "You are wearing a hairpin shaped like a heart with wings. It makes you feel positively magical[if H is not removable]. In fact for some reason you can't even make yourself consider taking it off, as though it is intimately tied to you[end if].".

Definition: a heart hairpin (called C) is heart themed:
	decide yes.


Definition: a heart hairpin is removable:
	if the magic-power of the player > 2:
		decide no;
	decide yes.

To decide which number is the intelligence-influence of (H - a heart hairpin):
	let M be the magic-power of the player;
	let I be 0;
	if M > 0: 
		increase I by 1;
		if M > 3: 
			increase I by 1;
			if M > 5:
				increase I by 2;
	decide on I.

magic-summoned is a number that varies. magic-summoned is usually 0.

To compute class outfit of (H - a heart hairpin):
	let D be a random off-stage lolita magical dress;
	if the virgin bonus of the player > 0 and virgin magical girl outfit is off-stage, now D is virgin magical girl outfit;
	let W be a random off-stage heart wand;
	let S be a random off-stage magical stockings;
	if D is actually summonable and virgin magical girl outfit is not worn:
		if magic-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn skirts:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]You feel a rush of magic as a [ShortDesc of D] materializes around you.[roman type][line break]";
		summon D cursed;
		now magic-summoned is 1;
	otherwise if S is actually summonable:
		say "[bold type]A pair of light pink stockings appears on your legs![roman type][line break]";
		summon S cursed;
	otherwise if W is actually summonable:
		say "[bold type]You feel a rush of magic as a wand suddenly materializes in your hand![roman type][line break]";
		summon W.

Heart Hairpin ends here.

