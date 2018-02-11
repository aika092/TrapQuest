Vampiric Fangs by Headgear begins here.


A vampiric fangs is a kind of headgear. There is one vampiric fangs. A vampiric fangs is biological. [A vampiric fangs is usually roleplay.] A vampiric fangs is usually strength-influencing.

The printed name of vampiric fangs is usually "[clothing-title-before]vampiric fangs[clothing-title-after]". 
The text-shortcut of vampiric fangs is "vf".

Figure of vampiric fangs is the file "fangs1.png".

To decide which figure-name is the clothing-image of (C - a vampiric fangs):
	decide on figure of vampiric fangs.

To say ClothingDesc of (H - a vampiric fangs):
	say "[if H is worn]A pair of white, sparkly fangs where your canine teeth usually are.[otherwise]A set of cheap looking plastic fangs.[end if]".

To say ShortDesc of (H - a vampiric fangs):
	say "vampiric fangs".
	
To compute SelfExamineDesc of (H - a vampiric fangs):
	say "Your canine teeth are far longer than usual and as sharp as daggers.".

Report wearing a vampiric fangs:
	say "You feel a shooting pain as you finish putting it in, and when you try to investigate, you very nearly prick your hand on a pair of very real, very sharp fangs!".

Definition: a vampiric fangs (called C) is cult garb:
	decide yes.

Definition: a vampiric fangs is removable:
	decide no.

Definition: a vampiric fangs is destructible:
	decide no.

To decide which number is the strength-influence of (C - a vampiric fangs):
	let X be 0;
	if the player is craving, decrease X by 1;
	if the player is desperately craving, decrease X by 2;
	decide on X.

vampire-summoned is a number that varies.

To compute class outfit of (H - a vampiric fangs):
	let C be a random off-stage vampiric claws;
	let P be a random off-stage vampiric cape;
	if C is actually summonable or (C is vampiric claws and vampire-summoned is 0):
		if vampire-summoned is 0:
			repeat with O running through worn slap ready equippables:
				say "Your [O] vanishes!";
				destroy O;
		say "[bold type]You feel your hands shift and warp painfully as your fingernails elongate and sharpen, turning into claws. Your slaps will certainly be more powerful! And, that vampiress told you you'd be able to drain an enemy's energy with these.[roman type][line break]";
		summon C cursed;
		now the raw-magic-modifier of C is 0;
		now vampire-summoned is 1;
	otherwise if P is actually summonable:
		say "[bold type]A long, black cape suddenly appears on your back! You feel it making you quicker and more nimble![roman type][line break]";
		summon P cursed;
		now the raw-magic-modifier of P is 0.

Vampiric Fangs ends here.

