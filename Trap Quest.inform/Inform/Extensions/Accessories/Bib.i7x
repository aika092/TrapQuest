Bib by Accessories begins here.

A bib is a kind of clothing. A pink purple bib is a kind of bib. There is 1 unique cotton pink purple bib. Printed name of pink purple bib is "[clothing-title-before]pink and purple bib[clothing-title-after]". Understand "pink and purple" as pink purple bib. The text-shortcut of bib is "bib". The soak-limit of a bib is usually 15.

Figure of pink bib is the file "Items/Accessories/Neck/bib1.png".

To decide which figure-name is clothing-image of (C - a bib):
	decide on figure of pink bib.

Definition: a bib is baby themed: decide yes.
Definition: a bib is pink themed: decide yes.
Definition: a bib is food themed: decide yes.

To say ClothingDesc (C - a bib):
	say "A large soft bib with a drawing of a cartoon animal dancing on the front. [if the stomach-food of the player is 0]You feel hungry[otherwise]The bib seems to draw power from the fullness of your stomach[end if].".
To say ShortDesc (C - a bib):
	say "large soft bib".

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


Bib ends here.

