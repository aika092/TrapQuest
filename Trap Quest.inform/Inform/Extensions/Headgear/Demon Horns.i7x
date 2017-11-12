Demon Horns by Headgear begins here.


A demon horns is a kind of headgear. There is one demon horns.  A demon horns is biological. A demon horns is blondeness-negative. A demon horns is brightness-negative. A demon horns is redness-negative. A demon horns is usually roleplay. A demon horns is usually strength-influencing. A demon horns is usually heel-skill-influencing.

A demon horns has a number called blackfire. The blackfire of a demon horns is usually 0.

The printed name of demon horns is usually "[TQlink of item described][clothing-title-before]demon horns[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of demon horns is "dh".

Figure of demon horns 1 is the file "demonhorns1.png".
Figure of demon horns 2 is the file "demonhorns2.png".

To decide which figure-name is the clothing-image of (C - a demon horns):
	if the player is soulless, decide on figure of demon horns 2;
	decide on figure of demon horns 1.

To say ClothingDesc of (H - a demon horns):
	say "A pair of red horns protruding from your head. [if the player is soulless]They seem to be real![otherwise]Luckily it is just a headband.[end if]".

To say ShortDesc of (H - a demon horns):
	say "[if the player is soulless]demon horns[otherwise]fake demon horns[end if]".
	
To compute SelfExamineDesc of (H - a demon horns):
	say "You [if the player is soulless]have a pair of horns protruding from your head.[otherwise]are wearing a headband with a pair of horns.".
	
Definition: a demon horns (called C) is cult garb:
	decide yes.
	
Definition: a demon horns is removable:
	if the player is soulless:
		decide no;
	decide yes.
		
To decide which number is the heel-skill-influence of (H - a demon horns):
	decide on 7.
	
Definition: a demon horns (called C) is strut enabling:
	decide yes.

To decide which number is the strength-influence of (H - a demon horns):
	let A be the soul addiction of the player;
	let S be 0;
	if the blackfire of H > 1 and the souls of the player < A:
		increase S by A / 2;
	decide on S.	

demon-summoned is a number that varies.
		
To compute class outfit of (H - a demon horns):
	let O be a random off-stage dildo heels;
	let D be a random off-stage blazing dress;
	let P be a random off-stage demon tail plug;
	if the headgear chance of H < the threshold of H:
		if O is actually summonable:
			say "[bold type]You feel a rush of power as your body raises several inches higher all of a sudden and a pair of dildo heels appear on your feet. They make you feel simply amazing![roman type][line break]";
			summon O cursed;
			now O is kicking;
			now the raw-magic-modifier of O is 4;
		otherwise if D is actually summonable or (D is blazing dress and demon-summoned is 0):
			if demon-summoned is 0:
				repeat with C running through worn dresses:
					say "Your [C] vanishes!";
					destroy C;
				repeat with C running through worn skirts:
					say "Your [C] vanishes!";
					destroy C;
			say "[bold type]A red dress suddenly appears on your body! You feel it infuse you with fire![roman type][line break]";
			summon D cursed;
			now the raw-magic-modifier of D is 0;
			now demon-summoned is 1;
		otherwise if the blackfire of H is 0 and the total-souls of the player > 9:
			say "[bold type]Your hunger for souls begins to manifest as an ominous cloud of black, burning motes! [roman type][line break]";
			now the blackfire of H is 1;
		otherwise if the blackfire of H is 1 and the total-souls of the player > 19:
			say "[bold type]You begin to feel a sudden, intense desperation at the thought of running out of souls![roman type][line break]";
			now the blackfire of H is 2;
		otherwise if P is actually summonable:
			say "[bold type]You feel your [asshole] suddenly being invaded by a foreign object! Looking around you see a long, snake-like red tail hanging down between your legs.[roman type][line break]";
			summon P cursed;
			now the size of P is the openness of asshole.



Demon Horns ends here.
