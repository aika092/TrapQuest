Vampiric Fangs by Headgear begins here.

vampiric fangs is a headgear. vampiric fangs is biological. vampiric fangs is strength-influencing.

The printed name of vampiric fangs is "[clothing-title-before]vampiric fangs[clothing-title-after]".
The text-shortcut of vampiric fangs is "vf".

Figure of vampiric fangs is the file "Items/Accessories/Head/fangs1.png".

To decide which figure-name is the clothing-image of (C - vampiric fangs):
	decide on figure of vampiric fangs.

To say ClothingDesc of (H - vampiric fangs):
	say "[if H is not removable]A pair of white, sparkly fangs where your canine teeth are.[otherwise]A set of cheap looking plastic fangs.[end if]".

To say ShortDesc of (H - vampiric fangs):
	say "vampiric fangs".

To compute SelfExamineDesc of (H - vampiric fangs):
	say "Your canine teeth are far longer than usual and as sharp as daggers.".

Report wearing vampiric fangs:
	if there is a worn wood-dong:
		say "You feel your wooden dildo pulse as you finish putting in your fangs, as if staving off some kind of magic.";
	otherwise:
		say "You feel a shooting pain as you finish putting it in, and when you try to investigate, you very nearly prick your hand on a pair of very real, very sharp fangs!".

Definition: vampiric fangs is cult garb: decide yes.

Definition: vampiric fangs is removable:
	if there is a worn wood-dong, decide yes;
	decide no.

Definition: vampiric fangs is destructible: decide no.

To decide which number is the strength-influence of (C - vampiric fangs):
	let X be 0;
	if the player is craving semen, decrease X by 1;
	if the player is desperately craving semen, decrease X by 2;
	decide on X.

Chapter - Class Outfit

Definition: vampiric fangs (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if wearing-target is vampiric cape, decide yes;
	decide no.

vampire-summoned is a number that varies.
To compute unique recycling of (C - vampiric fangs):
	now the ritual-only-once of ritual-quest is 0;
	now vampire-summoned is 0.

To compute class outfit of (H - vampiric fangs):
	let C be a random off-stage vampiric claws;
	let P be a random off-stage vampiric cape;
	if C is actually summonable or (C is vampiric claws and vampire-summoned is 0) and the number of worn wood-dongs is 0:
		if vampire-summoned is 0:
			repeat with O running through worn equippables:
				if O is hand ready:
					say "Your [O] [wardrobeVanishes of O]!";
					now O is in pink wardrobe;
		say "[bold type]You feel your hands shift and warp painfully as your fingernails elongate and sharpen, turning into claws. Your slaps will certainly be more powerful! And, that vampiress told you you'd be able to drain an enemy's energy with these.[roman type][line break]";
		summon C uncursed;
		now vampire-summoned is 1;
	otherwise if P is actually summonable:
		say "[bold type]A long, black cape suddenly appears on your back! You feel it making you quicker and more nimble![roman type][line break]";
		summon P uncursed.

Chapter - Quest

ritual-quest is a headgear-clothing-quest. ritual-quest has a number called ritual-only-once.

To uniquely set up (C - vampiric fangs):
	now the quest of C is ritual-quest.

To say QuestFlav of (Q - ritual-quest):
	say "You sense it wants [if doomed is -1]you to kill the vampiress[otherwise]a new elder god to awaken[end if].".

To say QuestTitle of (Q - ritual-quest):
	say " ([if doomed is -1]vampiress revenge[otherwise]elder god[end if] quest)".

To compute persistent reward of (Q - ritual-quest) on (C - a clothing):
	if ritual-only-once of Q is 0:
		let D be a random off-stage ring;
		if D is ring:
			now D is solid gold;
			set shortcut of D;
			if D is actually summonable:
				summon D;
			otherwise:
				now D is in the location of the player;
			say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
		now ritual-only-once of Q is 1;
	otherwise:
		compute generic class reward of Q on C.

Vampiric Fangs ends here.
