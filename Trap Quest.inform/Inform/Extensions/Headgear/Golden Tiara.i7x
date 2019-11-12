Golden Tiara by Headgear begins here.

gold-tiara is a headgear. gold-tiara is metal. gold-tiara is redness-positive. gold-tiara is hair growing. gold-tiara is roleplay. gold-tiara is womanly. Understand "gold", "golden", "tiara" as gold-tiara.

Figure of gold-tiara is the file "Items/Accessories/Head/royaltiara2.jpg".

The printed name of gold-tiara is usually "[clothing-title-before]golden tiara[clothing-title-after]". The text-shortcut of gold-tiara is "gti".

To decide which figure-name is the clothing-image of (C - gold-tiara):
	decide on figure of gold-tiara.

To say ClothingDesc of (H - gold-tiara):
	say "This solid gold [MediumDesc of H] is covered in incredibly valuable looking jewels and gemstones. [if H is worn]It feels like its watching you.[otherwise]You can't shake the feeling that its watching you.[end if]".

To say ShortDesc of (H - gold-tiara):
	say "golden tiara".

Definition: gold-tiara is gem themed: decide yes.
Definition: gold-tiara is demonic: decide yes.


Definition: gold-tiara (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed]
	if wearing-target is not C and wearing-target is demonic, decide yes;
	decide no.

gold-summoned is a number that varies.
To compute unique recycling of (C - gold-tiara):
	now gold-summoned is 0.

To compute class outfit of (H - gold-tiara):[TODO: acolyte arm braces]
	let T be acolyte-undergarment;
	let B be acolyte-chestpiece;
	if B is not worn and (gold-summoned < 2 or B is actually summonable):
		repeat with O running through worn bras:
			say "Your [O] [wardrobeVanishes of O]!";
			now O is in pink wardrobe;
		repeat with O running through worn dress:
			say "Your [O] [wardrobeVanishes of O]!";
			now O is in pink wardrobe;
		repeat with O running through worn exclusive corsets:
			say "Your [O] [wardrobeVanishes of O]!";
			now O is in pink wardrobe;
		summon B;
		say "[bold type]Your tiara shivers, and a [printed name of B] materializes on your chest![roman type][line break]";
		if gold-summoned < 2, now gold-summoned is 2;
	otherwise if T is not worn and (gold-summoned < 3 or T is actually summonable):
		repeat with O running through worn crotch covering clothing:
			say "Your [O] [wardrobeVanishes of O]!";
			now O is in pink wardrobe;
		summon T;
		say "[bold type]Your tiara shivers, and a [printed name of T] materializes on your crotch.[roman type][line break]";
		if gold-summoned < 3, now gold-summoned is 3.


demon-slut-quest is a headgear-clothing-quest. [demon-slut-quest has a number called demons-lain.]
To uniquely set up (C - gold-tiara):
	now the quest of C is demon-slut-quest.

To say QuestFlav of (Q - demon-slut-quest):
	say "You sense it wants you to let demons use you for sex.".

To say QuestTitle of (Q - demon-slut-quest):
	say " (demon submission quest)".

Golden Tiara ends here.
