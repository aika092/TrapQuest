Bib by Accessories begins here.

A bib is a kind of clothing.

Definition: a bib is baby themed: decide yes.
Definition: a bib is food themed: decide yes.
Definition: a bib is nudism-enabling: decide yes.
Definition: a bib is basic loot: decide no.
Definition: a bib (called C) is shop-eligible:
	if C is plentiful and C is fetish appropriate and C is off-stage, decide yes;
	decide no.
Definition: a bib is fetish appropriate:
	if diaper lover > 0, decide yes;
	decide no.


To say ShortDesc of (C - a bib):
	say "bib".

To decide which number is the strength-influence of (C - a bib):
	if the stomach-food of the player is 0, decide on -1;
	let S be 0;
	increase S by the magic-modifier of C;
	increase S by (the stomach-food of the player + 1) / (2 - weight gain fetish); [Weight gain fetish makes consuming food much more punishing, so the player gets double the reward]
	decide on S.

To set up influence of (C - a bib):
	set up taste-based influence of C.

To decide which number is the initial cringe of (C - a bib):
	decide on 13.

giraffe bib is a bib. The printed name of giraffe bib is "[clothing-title-before]giraffe bib[clothing-title-after]". The text-shortcut of giraffe bib is "gbib".

Figure of giraffe bib is the file "Items/Accessories/Neck/bib1.png".

To decide which figure-name is clothing-image of (C - a bib):
	decide on figure of giraffe bib.

Definition: giraffe bib is pink themed: decide yes.
Definition: giraffe bib is yellow themed: decide yes.
Definition: giraffe bib is star themed: decide yes.

To say ClothingDesc of (C - giraffe bib):
	say "A soft bib with a drawing of a cartoon giraffe's face on the front, surrounded by pink stars. [if the stomach-food of the player is 0]You feel hungry[otherwise]The bib seems to draw power from the fullness of your stomach[end if].".
To say MediumDesc of (C - giraffe bib):
	say "soft giraffe bib".

pumpkin bib is a bib. pumpkin bib is plastic. pumpkin bib is unique. The printed name of pumpkin bib is "[clothing-title-before]pumpkin bib[clothing-title-after]". The text-shortcut of pumpkin bib is "pbib".

Figure of pumpkin bib is the file "Items/Accessories/Neck/bib2.png".

To decide which figure-name is clothing-image of (C - a bib):
	decide on figure of pumpkin bib.

Definition: pumpkin bib is orange themed: decide yes.
Definition: pumpkin bib is fetish appropriate:
	if diaper lover > 0 and halloween content is 1, decide yes;
	decide no.

To say ClothingDesc of (C - pumpkin bib):
	say "A semi-rigid orange bib with a slight scooped shape and a Halloween pumpkin face in the front. [if the stomach-food of the player is 0]You feel hungry[otherwise]The bib seems to draw power from the fullness of your stomach[end if].".
To say MediumDesc of (C - pumpkin bib):
	say "soft giraffe bib".

Bib ends here.
