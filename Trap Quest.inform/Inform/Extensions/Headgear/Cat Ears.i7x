Cat Ears by Headgear begins here.

cat-ears is a headgear. cat-ears is manly. Figure of cat ears is the file "Items/Accessories/Head/catears1.png". Understand "pair", "of" as cat-ears. cat-ears is blondeness-negative. cat-ears is brightness-positive. cat-ears is redness-negative. cat-ears is hair growing. cat-ears is dexterity-influencing. cat-ears is roleplay. Understand "cat", "ears" as cat-ears.

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

To compute class outfit of (H - cat-ears):
	if diaper quest is 0 and the total magic power of the player >= 6, class summon exposing-magical-dress;
	if the class of the player is cowgirl:
		compute meowcowification;
	otherwise:
		if exposing-magical-dress is not worn, class summon kitty claws;
		class summon catbell;
		if diaper quest is 0, class summon cat tail plug.

To compute meowcowification:
	if lactation fetish is 1:
		repeat with C running through worn clothing:
			if C is cow themed or C is cat themed:
				if C is animalbell:
					if C is not meowcowbell, transform C into meowcowbell;
				otherwise if C is cow print bikini top:
					transform C into cow print nippleless bikini top;
				otherwise if C is cow print bikini bottoms:
					transform C into cow print crotchless bikini bottoms;
				otherwise if C is kitty claws:
					transform C into meow cow claws;
			otherwise if C is removable and C is nudism-disabling and C is not exposing-magical-dress:
				destroy C;
		class summon meowcowbell;
		class summon cow print nippleless bikini top;
		now cow print nippleless bikini top is speed;
		class summon cow print crotchless bikini bottoms;
		now cow print crotchless bikini bottoms is speed;
		if exposing-magical-dress is not worn, class summon meow cow claws;
		now cowgirlExplained is false;
		follow the milkskill learn rule.

Chapter - Quest

follow-me-quest is a headgear-clothing-quest.

Definition: follow-me-quest is school-disabled: decide yes.

To uniquely set up (C - cat-ears):
	now the quest of C is follow-me-quest.

To say QuestFlav of (Q - follow-me-quest):
	say "You sense that it wants you to have lots of people following you around as you move.".

To say QuestTitle of (Q - follow-me-quest):
	say " (NPC leading quest)".

Report going:
	let H be a random headgear;
	if H is headgear and the quest of H is follow-me-quest:
		let N be 0;
		repeat with M running through interested alive monsters:
			if (M is unleashed or M is unconcerned) and M is regional, increase N by 1;
		if N >= 4:
			if H is cursed or (H is uncursed and N >= 5), progress quest of follow-me-quest.

Cat Ears ends here.
