Puppy Ears by Headgear begins here.

puppy ears is a headgear. Figure of puppy ears is the file "Items/Accessories/Head/puppyears1.png". Understand "pair", "of" as puppy ears. puppy ears is blondeness-negative. puppy ears is brightness-positive. puppy ears is redness-negative. puppy ears is hair growing. puppy ears is dexterity-influencing. puppy ears is roleplay.

Definition: puppy ears is fluid immune: decide yes.
Definition: puppy ears is dog themed: decide yes.
Definition: puppy ears is purple themed: decide yes.
Definition: puppy ears is blue themed: decide yes.
Definition: puppy ears is pink themed: decide yes.

The printed name of puppy ears is "[clothing-title-before]pair of puppy ears[clothing-title-after]". The text-shortcut of puppy ears is "pue".

To decide which figure-name is the clothing-image of (C - puppy ears):
	decide on figure of puppy ears.

To say ClothingDesc of (H - puppy ears):
	say "A pair of fake multicoloured puppy ears on a headband.".

To say ShortDesc of (H - puppy ears):
	say "fake puppy ears".

To compute SelfExamineDesc of (H - puppy ears):
	let X be the largeness of hair;
	say "You are wearing a pair of fake puppy ears on top of your [ShortDesc of hair]. ".

Chapter - Class Outfit

Definition: puppy ears is removal-blocking:
	if wearing-target is puppy mittens, decide yes;
	decide no.

puppy-summoned is a number that varies.
To compute unique recycling of (C - puppy ears):
	now puppy-summoned is 0.

To compute class outfit of (H - puppy ears):
	let K be a random off-stage puppy mittens;
	let P be a random off-stage puppy tail plug;
	let G be a random off-stage puppy bone gag;
	if K is actually summonable or (K is puppy mittens and puppy-summoned is 0):
		if puppy-summoned is 0:
			repeat with O running through worn hand ready equippables:
				say "Your [O] [wardrobeVanishes of O]!";
				now O is in pink wardrobe;
		say "[bold type]Your puppy ears barely noticeably quiver, and then your hands become encased in tight leather mittens! On closer inspection, these are puppy paws![roman type][line break]";
		summon K;
		now the raw-magic-modifier of K is the stance of the player;
		now puppy-summoned is 1;
	otherwise if the class of the player is puppygirl and G is actually summonable and puppy-summoned < 2:
		say "[bold type]You feel your mouth suddenly bite down around a foreign object! You are now wearing a bone shaped gag.[roman type][line break]";
		now puppy-summoned is 2;
		summon G cursed with quest;
	otherwise if diaper quest is 0 and the class of the player is puppygirl and P is actually summonable and the player is not ass protected and puppy-summoned < 3:
		say "[bold type]You feel your [asshole] suddenly invaded by a foreign object! Looking around you see a puppy tail swaying proudly from your [asshole].[roman type][line break]";
		summon P cursed with quest;
		now puppy-summoned is 3;
		let X be the openness of asshole + the number of worn nudism-disabling clothing;
		assign size X to P;

Chapter - Quest

obedience-quest is a headgear-clothing-quest.

To uniquely set up (C - puppy ears):
	now the quest of C is obedience-quest.

To say QuestFlav of (Q - obedience-quest):
	say "You sense it wants you to get on your knees in front of human enemies without fighting back.".

To say QuestTitle of (Q - obedience-quest):
	say " (obedience quest)".

Puppy Ears ends here.
