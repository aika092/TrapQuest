Royal Circlet by Headgear begins here.

A royal circlet is a kind of headgear. A royal circlet is usually metal. Figure of royal circlet is the file "Items/Accessories/Head/circlet1.png". A royal circlet is usually hair growing. A royal circlet is usually delicateness-influencing. A royal circlet is usually enema-helping.

There is 1 royal circlet.

To decide if a royal circlet is roleplay:
	if the player is originally female, decide yes;
	decide no.

The printed name of royal circlet is usually "[TQlink of item described][clothing-title-before]royal circlet[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of royal circlet is "ryc".

To decide which figure-name is the clothing-image of (C - a royal circlet):
	decide on figure of royal circlet.

To say ClothingDesc of (H - a royal circlet):
	say "A small silver tiara with a pearl embedded in the front to show that you are a slave, owned by the local royalty.".

To say ShortDesc of (H - a royal circlet):
	say "silver circlet".
	
To compute SelfExamineDesc of (H - royal circlet):
	let X be the largeness of hair;
	say "You are wearing a royal slave's circlet in your [ShortDesc of hair]. ".

basque-summoned is a number that varies.

To compute class outfit of (H - a royal circlet):
	let B be a random off-stage white milking basque;
	let A be a random off-stage pair of anklecuffs;
	if B is actually summonable or (B is basque and basque-summoned is 0):
		if basque-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn knickers:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn trousers:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn bras:
				say "Your [O] vanishes!";
				destroy O;
			repeat with O running through worn bottom-exclusive belly covering clothing:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]Your [printed name of H] [bold type]shines brightly, and a tight white basque materialises around you.[roman type][line break]";
		summon B cursed;
		now basque-summoned is 1;
		now the raw-magic-modifier of B is (the milk volume of breasts + a random number between -2 and 6) / 5;
	otherwise if there is a worn milking basque and A is actually summonable:
		say "[bold type]Your [printed name of H] [bold type]shines brightly, and anklecuffs materialise around your feet![roman type][line break]";
		summon A locked;
	otherwise if there is a worn crotch-ripped milking basque and the number of embodied things penetrating a fuckhole is 0:
		now B is a random worn milking basque;
		say "Your [printed name of H] shines brightly, and your [printed name of B] magically repairs itself.[line break]";
		repair B;
	if there is a worn milking basque and A is not actually summonable and the lactation rate of the player < 5:
		say "[bold type]Your [BreastDesc] feel more active...[roman type][line break]";
		increase the lactation rate of the player by 1.[This triggers straight after anklecuffs as well]

To decide which number is the intelligence-influence of (H - a royal circlet):
	repeat with M running through worn clothing:
		if the milk-soak of M > 1, decide on -1;[Your job is to hold the milk, not spill it.]
		[otherwise if lactation fetish is 0:]
	decide on 0.

To decide which number is the strength-influence of (H - a royal circlet):
	repeat with M running through worn clothing:
		if the milk-soak of M > 1, decide on -1;
	decide on the milk volume of belly / 5.

To decide which number is the dexterity-influence of (H - a royal circlet):
	repeat with M running through worn clothing:
		if the milk-soak of M > 1, decide on -1;
		[otherwise if lactation fetish is 0:]
	decide on 0.

Definition: a royal circlet (called C) is condom pinnable:
	decide yes.

Report examining worn clothing:
	if the noun is enema-helping, say "You can feel that this item somehow prevents your body from being weaker when holding in enemas.".


Royal Circlet ends here.

