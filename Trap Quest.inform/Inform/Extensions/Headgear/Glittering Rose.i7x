Glittering Rose by Headgear begins here.

A glittering rose is a kind of headgear. There is 1 glittering rose. A glittering rose is blondeness-positive. A glittering rose is brightness-positive. A glittering rose is redness-positive. A glittering rose is usually hair growing. A glittering rose is usually dexterity-influencing. A glittering rose is usually strength-influencing. The text-shortcut of glittering rose is "gr". Understand "glit", "glitter" as glittering rose.

The printed name of glittering rose is usually "[TQlink of item described][clothing-title-before]glittering rose[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of glittering rose is "fah".

Figure of glittering rose is the file "Items/Accessories/Head/rose1.png".

To decide which figure-name is the clothing-image of (C - a glittering rose):
	decide on figure of glittering rose.

To say ClothingDesc of (H - a glittering rose):
	say "A cream coloured rose, with glittering fairy dust collected in the space between its petals.".

To say ShortDesc of (H - a glittering rose):
	say "cream rose".

To compute SelfExamineDesc of (H - a glittering rose):
	let X be the largeness of hair;
	say "A cream coloured rose rests in your [ShortDesc of hair]. ".

To decide if a glittering rose is roleplay:
	if the player is male and pregnancy fetish is 1 and tg fetish >= 1, decide yes;
	if the player is female and pregnancy fetish is 1, decide yes;
	decide no.

To decide which number is the strength-influence of (C - a glittering rose):
	let X be the total fill of belly / 3;
	if there is a worn abyssal tattoo, increase X by 2;
	decrease X by the intelligence of the player / 5;[the higher your intelligence, the larger the debuff]
	decide on X.
	
To decide which number is the dexterity-influence of (C - a glittering rose):
	let X be the total fill of belly / 3;
	if there is a worn abyssal tattoo, increase X by 2;
	decrease X by the intelligence of the player / 5;
	decide on X.

fairy-summoned is a number that varies.

To compute class outfit of (H - a glittering rose):
	let B be a random off-stage butterfly wings;
	let W be a random off-stage fairy wand;
	if B is actually summonable or (B is butterfly wings and fairy-summoned is 0):
		if fairy-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
		summon B;
		now B is cursed;
		now the raw-magic-modifier of B is 0;
		say "A giant pair of wings appear on your back. You feel lighter!";
		now fairy-summoned is 1;
	otherwise if W is fairy wand:
		summon W;
		now W is cursed;
		now the raw-magic-modifier of W is the number of alive fairy / 2;
		say "You notice a peculiar warm feeling in your hand, and look down to see a tiny pink wand just barely large enough for you resting in your grasp".


Glittering Rose ends here.

