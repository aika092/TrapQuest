Cat Ears by Headgear begins here.

cat-ears is a headgear. cat-ears is manly. Figure of cat ears is the file "Items/Accessories/Head/catears1.png". Understand "pair", "of" as cat-ears. cat-ears is blondeness-negative. cat-ears is brightness-positive. cat-ears is redness-negative. cat-ears is hair growing. cat-ears is dexterity-influencing. cat-ears is roleplay. Understand "cat", "ears" as cat-ears.

kitty-summoned is a number that varies.
To compute unique recycling of (C - cat-ears):
	now kitty-summoned is 0.

Definition: cat-ears is fluid immune: decide yes.

The printed name of cat-ears is "[clothing-title-before]pair of cat ears[clothing-title-after]". The text-shortcut of cat-ears is "cte".

To decide which figure-name is the clothing-image of (C - cat-ears):
	decide on figure of cat ears.

To say ClothingDesc of (H - cat-ears):
	say "A pair of fake cat ears on a headband, with a frilly piece of fabric between the ears.".

To say ShortDesc of (H - cat-ears):
	say "fake cat ears".

To compute SelfExamineDesc of (H - cat-ears):
	let X be the largeness of hair;
	say "You are wearing a pair of fake cat ears on top of your [ShortDesc of hair]. ".

Definition: cat-ears is cat themed: decide yes.
Definition: cat-ears is black themed: decide yes.

Chapter - Class Outfit

Definition: cat-ears (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is kitty claws or wearing-target is catbell or wearing-target is exposing magical dress, decide yes;
	decide no.

To compute class outfit of (H - cat-ears):
	let K be a random off-stage kitty claws;
	let C be a random catbell;
	let P be a random cat tail plug;
	let M be a random off-stage exposing magical dress;
	if diaper quest is 0 and the magic-power of the player > 2 and (M is actually summonable or (M is magical dress and kitty-summoned < 2)):
		if kitty-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn exclusive corsets:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]Your cat ears barely noticeably quiver, and then a sailor uniform appears on you! [roman type]No wait, this is only the neckline of a sailor uniform, leaving your entire body fully exposed!";
		summon M;
		now the raw-magic-modifier of M is the stance of the player;
		now kitty-summoned is 2;
	otherwise if the class of the player is not magical girl and (K is actually summonable or (K is kitty claws and kitty-summoned is 0)):
		if kitty-summoned is 0:
			repeat with O running through worn equippables:
				if O is hand ready:
					say "Your [O] [wardrobeVanishes of O]!";
					now O is in pink wardrobe;
		say "[bold type]Your cat ears barely noticeably quiver, and then your hands become encased in puffy warm gloves! On closer inspection, these are cat paws![roman type][line break]";
		summon K;
		now the raw-magic-modifier of K is the stance of the player;
		if kitty-summoned < 1, now kitty-summoned is 1;
	otherwise if C is actually summonable:
		say "[bold type]You feel a sudden tightness around your neck. You look down to see that [if C is held]the cat collar has reappeared[otherwise]a cat collar has appeared[end if]![roman type][line break]";
		summon C;
	otherwise if (P is off-stage or P is cursed) and diaper quest is 0 and the class of the player is catgirl and P is actually summonable and the player is not ass protected:
		say "[bold type]You feel your [asshole] suddenly invaded by a foreign object! Looking around you see [if P is in-play]the cat tail has reappeared and is[otherwise]a cat tail[end if] swaying proudly from your [asshole].[roman type][line break]";
		summon P cursed;
		let X be (the openness of asshole + the number of worn nudism-disabling clothing) - 3;
		assign size X to P.

Chapter - Quest

puddle-licking-quest is a headgear-clothing-quest.

To uniquely set up (C - cat-ears):
	now the quest of C is puddle-licking-quest.

To say QuestFlav of (Q - puddle-licking-quest):
	say "You sense that it wants you to [if diaper quest is 1]drink lots of milk[otherwise]lick up puddles from the floor[end if].".

To say QuestTitle of (Q - puddle-licking-quest):
	say " ([if diaper quest is 1]milk drinking[otherwise]puddle licking[end if] quest)".

Cat Ears ends here.
