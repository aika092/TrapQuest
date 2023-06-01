Cat Ears by Headgear begins here.

cat-ears is a headgear. cat-ears is manly. Figure of cat ears is the file "Items/Accessories/Head/catears1.png". Understand "pair", "of" as cat-ears. cat-ears is blondeness-negative. cat-ears is brightness-positive. cat-ears is redness-negative. cat-ears is hair growing. cat-ears is dexterity-influencing. Understand "cat", "ears" as cat-ears.

Definition: cat-ears is roleplay: decide yes.
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
	if the class of the player is "cowgirl" or the class of the player matches the text "meow":
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
	let H be a random worn headgear;
	if H is headgear and the quest of H is follow-me-quest and H is not blessed:
		let N be 0;
		repeat with M running through interested alive monsters:
			if (M is unleashed or M is unconcerned) and M is regional, increase N by 1;
		if N >= 4:
			if H is cursed or (H is uncursed and N >= 5), progress quest of follow-me-quest.


stripper-ears is a headgear. stripper-ears is pvc. stripper-ears is womanly. Figure of stripper-ears is the file "Items/Accessories/Head/catears2.png". stripper-ears is blondeness-positive. stripper-ears is brightness-positive. stripper-ears is redness-negative. stripper-ears is hair growing. The text-shortcut of stripper-ears is "stes".

Definition: stripper-ears is roleplay: decide no.

The printed name of stripper-ears is "[clothing-title-before]stripper ears[clothing-title-after]".

To decide which figure-name is the clothing-image of (C - stripper-ears):
	decide on figure of stripper-ears.

To say ClothingDesc of (H - stripper-ears):
	say "These black gem-studded feline ears look rather sexy and kinky. Perfect for a professional stripper.".

To say ShortDesc of (H - stripper-ears):
	say "stripper ears".

To compute SelfExamineDesc of (H - stripper-ears):
	say "You are wearing a pair of sexy black feline ears in your [ShortDesc of hair]. ".

To compute hair growth of (H - stripper-ears):
	if artificial enhancements fetish is 1:
		let X be 0;
		if H is cursed, now X is -25;
		if H is blessed, now X is 50;
		if the largeness of hair < max hair length and a random number between 1 and (100 + X + (the fake largeness of hair * 7) - (the outrage of H * 3)) is 1 and the fake largeness of hair > 0 and the fake largeness of hair < 10:
			say "Your [printed name of H] feels warm. You feel the fake hair extensions in your hair grow in length!";
			FakeHairUp 1.

To set up influence of (C - stripper-ears):
	set up sex-based influence of C.

Definition: stripper-ears is black themed: decide yes.

Chapter - Class Outfit

To compute class outfit of (H - stripper-ears):
	class summon stripper-fishnet-dress;
	class summon black-lace-bra;
	class summon black-lace-thong;
	class summon black-lace-stockings;
	class summon latex-platform-heels.

Chapter - Quest

dance-quest is a headgear-clothing-quest. dance-quest has a number called early-ends.

To uniquely set up (C - stripper-ears):
	now the early-ends of dance-quest is 0;
	now the quest of C is dance-quest.

To say QuestFlav of (Q - dance-quest):
	say "You sense it wants you to give people some seductive dances, but end the seduction before they climax.".

To say QuestTitle of (Q - dance-quest):
	say " (teasing seduction quest)".

To progress quest of (Q - dance-quest):
	repeat with C running through worn clothing:
		if the quest of C is Q:
			increase early-ends of Q by 1;
			if early-ends of Q >= a random number between 2 and 5:
				now the early-ends of Q is 0;
				compute quest completion of Q on C;
			otherwise:
				say "[BigNameDesc of C] wiggle happily! [one of]If you keep this up, surely you'll be rewarded eventually.[or]Keep it up![stopping]".

To compute generic first time class reward of (Q - dance-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is ruby;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.


Cat Ears ends here.
