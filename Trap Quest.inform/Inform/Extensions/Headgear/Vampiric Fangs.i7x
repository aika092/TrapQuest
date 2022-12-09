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
	if wood-dong is worn:
		say "You feel your wooden dildo pulse as you finish putting in your fangs, as if staving off some kind of magic.";
	otherwise:
		say "You feel a shooting pain as you finish putting it in, and when you try to investigate, you very nearly prick your hand on a pair of very real, very sharp fangs!".

Definition: vampiric fangs is cult garb: decide yes.

Definition: vampiric fangs is removable:
	if wood-dong is worn, decide yes;
	decide no.

Definition: vampiric fangs is destructible: decide no.

To decide which number is the strength-influence of (C - vampiric fangs):
	let X be 0;
	if semen is desperately craved:
		decrease X by 2;
	otherwise if semen is craved:
		decrease X by 1;
	decide on X.

Chapter - Class Outfit

To compute unique recycling of (C - vampiric fangs):
	now the ritual-only-once of ritual-quest is 0.

To compute class outfit of (H - vampiric fangs):
	if wood-dong is not worn, class summon vampiric claws;
	class summon vampiric cape.

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
