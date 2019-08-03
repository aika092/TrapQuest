Runic Headband by Headgear begins here.


runic headband is a headgear. runic headband is silk. runic headband is purity. Figure of runic headband is the file "Items/Accessories/Head/runicheadband1.png". runic headband is hair growing. runic headband is roleplay.

Definition: runic headband is fluid immune: decide yes.
The printed name of runic headband is "[clothing-title-before]runic headband[clothing-title-after]". The text-shortcut of runic headband is "rhb".


To decide which figure-name is the clothing-image of (C - runic headband):
	decide on figure of runic headband.

To say ClothingDesc of (H - runic headband):
	say "This white headband [if H is worn]sits on your forehead. It [end if]has runic characters embedded in silver most of the way around. You have no idea what they mean[if abyssal tattoo is worn]. The runes have turned black, and almost seem wet with some kind of sludge[end if].".

To say ShortDesc of (H - runic headband):
	say "runic headband".

To compute SelfExamineDesc of (H - runic headband):
	let X be the largeness of hair;
	say "You are wearing a religious headband on top of your [ShortDesc of hair]. ".

To set up influence of (C - runic headband):
	set up stat-based influence of C.

To decide which number is the strength-influence of (H - runic headband):
	let S be 0;
	if the class of the player is cultist:
		repeat with L running through worn cursed clothing:
			if L is not H, increase S by 1;
		let I be the intelligence of the player;
		increase S by I / 6;
	decide on S.

To decide which number is the dexterity-influence of (H - runic headband):
	let D be 0;
	if the class of the player is cultist:
		repeat with L running through worn cursed clothing:
			if L is not H, increase D by 1;
		let I be the intelligence of the player;
		increase D by I / 6;
	decide on D.

To decide which number is the intelligence-influence of (H - runic headband):
	let I be 0;
	if the class of the player is cultist:
		repeat with L running through worn cursed clothing:
			if L is not H, increase I by 1;
	decide on I.

To compute hair colour change of (H - runic headband):
	compute hair colour darken of H.

Definition: runic headband is condom pinnable: decide yes.

Definition: runic headband is magic themed: decide yes.

Chapter - Class Outfit

Definition: runic headband is removal-blocking if  wearing-target is not it and wearing-target is purity. [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]

priestess-summoned is a number that varies.
To compute unique recycling of (C - runic headband):
	now priestess-summoned is 0.

To compute class outfit of (H - runic headband):
	if the number of alive royal guards is 0: [We need someone to service]
		let M be a random royal guard;
		summon M in the dungeon;
		set up M;
	let P be a random off-stage flowing priestess outfit;
	if P is actually summonable or (P is priestess outfit and priestess-summoned is 0 and the number of worn priestess outfit + the number of worn golden warrior priestess outfit is 0):
		if priestess-summoned is 0:
			repeat with O running through worn dresses:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
			repeat with O running through worn skirts:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		now priestess-summoned is 1;
		say "[bold type]Your runic headband gently hums as holy attire shimmers into existence around your body.[roman type][line break]";
		summon P;
		now the raw-magic-modifier of P is the number of worn cursed clothing + the number of worn blessed clothing.

Chapter - Quest

altar-sex-quest is a headgear-clothing-quest.

To uniquely set up (C - runic headband):
	now the quest of C is altar-sex-quest.

To say QuestFlav of (Q - altar-sex-quest):
	say "You sense that it wants you to [if diaper quest is 1]use a diaper[otherwise]'service' men[end if] in the dungeon altar room.".

To say QuestTitle of (Q - altar-sex-quest):
	say " (altar [if diaper quest is 1]diaper[otherwise]sex[end if] quest)".

To compute persistent reward of (Q - altar-sex-quest) on (C - a clothing):
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise:
		say "materialising useful tools near the altar!";
		let L be a random off-stage lubricant;
		let B be a random off-stage bandage;
		let F be a random off-stage fabric token;
		if L is lubricant and diaper quest is 0:
			say "A small bottle of [ShortDesc of L] appears at your feet.";
			now L is in the location of the player;
			compute autotaking L;
		if B is bandage and a random number between 1 and 2 is 1:
			say "A [ShortDesc of B] appears at your feet.";
			now B is in the location of the player;
			compute autotaking B;
		if F is mass collectible and a random number between 1 and (2 - diaper quest) is 1:
			say "A [ShortDesc of F] appears at your feet.";
			now F is in the location of the player;
			compute autotaking F;
		otherwise if ritual-beads is off-stage and diaper quest is 0 and the player is the donator:
			say "A [ShortDesc of ritual-beads] appears at your feet.";
			now ritual-beads is in the location of the player;
			compute autotaking ritual-beads.





Runic Headband ends here.

