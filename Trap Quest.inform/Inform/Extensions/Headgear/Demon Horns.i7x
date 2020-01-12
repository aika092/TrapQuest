Demon Horns by Headgear begins here.


demon horns is a headgear. demon horns is biological. demon horns is blondeness-negative. demon horns is brightness-negative. demon horns is redness-negative. demon horns is heel-skill-influencing.

demon horns has a number called blackfire. The blackfire of demon horns is 0.

The printed name of demon horns is "[clothing-title-before]demon horns[clothing-title-after]". The text-shortcut of demon horns is "dh".

Figure of demon horns 1 is the file "Items/Accessories/Head/demonhorns1.png".
Figure of demon horns 2 is the file "Items/Accessories/Head/demonhorns2.png".

To decide which figure-name is the clothing-image of (C - demon horns):
	if the player is soulless, decide on figure of demon horns 2;
	decide on figure of demon horns 1.

To say ClothingDesc of (H - demon horns):
	say "A pair of red horns protruding from your head. [if the player is soulless]They seem to be real![otherwise]Luckily they're only attached to a headband.[end if]".

To say ShortDesc of (H - demon horns):
	say "[if the player is soulless]demon horns[otherwise]fake demon horns[end if]".

To compute SelfExamineDesc of (H - demon horns):
	say "You [if the player is soulless]have a pair of horns protruding from your head.[otherwise]are wearing a headband with a pair of horns.".

Definition: demon horns is cult garb: decide yes.

To decide which number is the heel-skill-influence of (H - demon horns):
	decide on 7.

Definition: demon horns is strut enabling: decide yes.

To decide which number is the strength-influence of (H - demon horns):
	let A be the soul addiction of the player;
	let S be 0;
	if the blackfire of H > 1 and the souls of the player < A:
		increase S by A / 2;
	decide on S.

Definition: demon horns is demonic: decide yes.
Definition: demon horns is red themed: decide yes.


Chapter - Class Outfit

Definition: demon horns (called C) is removal-blocking: [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]
	if the player is soulless and C is wearing-target, decide yes;
	if wearing-target is blazing dress or wearing-target is dildo heels, decide yes;
	decide no.

Definition: demon horns is removable if the player is not soulless.

demon-summoned is a number that varies.
To compute unique recycling of (C - demon horns):
	now demon-summoned is 0.

To compute class outfit of (H - demon horns):
	let O be a random off-stage dildo heels;
	let D be a random off-stage blazing dress;
	let P be a random off-stage demon tail plug;
	if O is actually summonable:
		say "[bold type]You feel a rush of power as your body raises several inches higher all of a sudden and a pair of dildo heels appear on your feet. They make you feel simply amazing![roman type][line break]";
		summon O;
		now O is kicking;
		now the raw-magic-modifier of O is 4;
	otherwise if D is actually summonable or (D is blazing dress and demon-summoned is 0):
		if demon-summoned is 0:
			repeat with C running through worn dresses:
				say "Your [ShortDesc of C] [wardrobeVanishes of C]!";
				now C is in pink wardrobe;
			repeat with C running through worn skirts:
				say "Your [ShortDesc of C] [wardrobeVanishes of C]!";
				now C is in pink wardrobe;
		say "[bold type]A red dress suddenly appears on your body! You feel it infuse you with fire![roman type][line break]";
		summon D uncursed;
		now demon-summoned is 1;
	otherwise if the blackfire of H is 0 and the total-souls of the player > 9:
		say "[bold type]Your hunger for souls begins to manifest as an ominous cloud of black, burning motes![roman type][line break]";
		now the blackfire of H is 1;
	otherwise if the blackfire of H is 1 and the total-souls of the player > 19:
		say "[bold type]You begin to feel a sudden, intense desperation at the thought of running out of souls![roman type][line break]";
		now the blackfire of H is 2;
	otherwise if P is actually summonable:
		say "[bold type]You feel your [asshole] suddenly being invaded by a foreign object! Looking around you see a long, snake-like red tail hanging down between your legs.[roman type][line break]";
		summon P cursed;
		now the size of P is the openness of asshole.

To compute succubus transformation:
	let K be a random off-stage soulstone;
	repeat with B running through worn headgear:
		say "Your new horns tear off your [ShortDesc of B]!";
		now B is in pink wardrobe;
	repeat with C running through worn neck covering clothing:
		say " The [ShortDesc of K] shatters your [ShortDesc of C]!";
		now C is in pink wardrobe;
	summon demon horns;
	summon K;
	now the souled-humiliation of the player is the humiliation of the player;
	now the humiliation of the player is 0.


Demon Horns ends here.

