Royal Circlet by Headgear begins here.

royal circlet is a headgear. royal circlet is metal. Figure of royal circlet is the file "Items/Accessories/Head/circlet1.png". royal circlet is hair growing. royal circlet is delicateness-influencing. royal circlet is enema-helping.

Definition: royal circlet is roleplay if lactation fetish is 1.

The printed name of royal circlet is "[clothing-title-before]royal circlet[clothing-title-after]". The text-shortcut of royal circlet is "ryc".

To decide which figure-name is the clothing-image of (C - royal circlet):
	decide on figure of royal circlet.

To say ClothingDesc of (H - royal circlet):
	say "A small silver tiara with a pearl embedded in the front to show that you are a slave, owned by the local royalty.".

To say ShortDesc of (H - royal circlet):
	say "silver circlet".

To compute SelfExamineDesc of (H - royal circlet):
	let X be the largeness of hair;
	say "You are wearing a royal slave's circlet in your [ShortDesc of hair]. ".


To decide which number is the intelligence-influence of (H - royal circlet):
	repeat with M running through worn clothing:
		if the milk-soak of M > 1, decide on -1;[Your job is to hold the milk, not spill it.]
		[otherwise if lactation fetish is 0:]
	decide on 0.

To decide which number is the strength-influence of (H - royal circlet):
	repeat with M running through worn clothing:
		if the milk-soak of M > 1, decide on -1;
	decide on the milk volume of belly / 5.

To decide which number is the dexterity-influence of (H - royal circlet):
	repeat with M running through worn clothing:
		if the milk-soak of M > 1, decide on -1;
		[otherwise if lactation fetish is 0:]
	decide on 0.

Definition: royal circlet is condom pinnable: decide yes.

Definition: royal circlet is royalty themed: decide yes.
Definition: royal circlet is grey themed: decide yes.
Definition: royal circlet is gem themed: decide yes.

Report examining worn clothing:
	if the noun is enema-helping, say "You can feel that this item somehow prevents your body from being weaker when holding in enemas.".


Chapter - Class Outfit

Definition: royal circlet (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is milking basque, decide yes;
	decide no.

basque-summoned is a number that varies.
To compute unique recycling of (C - royal circlet):
	now basque-summoned is 0.

To compute class outfit of (H - royal circlet):
	let B be a random off-stage white milking basque;
	if B is actually summonable or (B is basque and basque-summoned is 0 and the number of worn milking basque is 0 and the number of worn milking harness is 0):
		if basque-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn knickers:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn trousers:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn bras:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn bottom-exclusive belly covering clothing:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]Your [ShortDesc of H] [bold type]shines brightly, and a tight white basque materialises around you.[roman type][line break]";
		summon B;
		now basque-summoned is 1;
		now the raw-magic-modifier of B is (the milk volume of breasts + a random number between -2 and 6) / 5;
	otherwise if there is a worn crotch-ripped milking basque and the number of embodied things penetrating a fuckhole is 0:
		now B is a random worn milking basque;
		say "Your [ShortDesc of H] shines brightly, and your [ShortDesc of B] magically repairs itself.[line break]";
		repair B;
	otherwise if there is a worn milking basque and the lactation rate of the player < 5:
		say "[bold type]Your [BreastDesc] feel more active...[roman type][line break]";
		increase the lactation rate of the player by 1.

Chapter - Quest

milk-serve-quest is a headgear-clothing-quest.

To uniquely set up (C - royal circlet):
	now the quest of C is milk-serve-quest.

To say QuestFlav of (Q - milk-serve-quest):
	say "You sense that it wants you to serve milk that's been brewed in your belly to others.".

To say QuestTitle of (Q - milk-serve-quest):
	say " (milk serving quest)".


Royal Circlet ends here.
