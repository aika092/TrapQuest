Nipple Ring Bikini Top by Bra begins here.

A nipple ring bikini top is a kind of string bikini top. A nipple ring bikini top is usually normally-nipple-exposing. Figure of bikini 11 is the file "Items/Clothes/Upper/Bras/bikini11.png". The text-shortcut of nipple ring bikini top is "nrb".

There is 1 transformation-rare nipple ring bikini top. A nipple ring bikini top is ridiculously low cut.

To say ShortDesc of (B - a nipple ring bikini top):
	say "nipple ring bikini top".

To say selfexaminetitle of (B - a nipple ring bikini top):
	say "super slutty nipple ring bikini top".

To decide which figure-name is clothing-image of (C - a nipple ring bikini top):
	decide on figure of bikini 11.

To say ClothingDesc of (C - a nipple ring bikini top):
	say "This bikini top consists of a couple of metal rings connected by black fabric. [if C is worn]Most of your skin remains bare, and the rings circle nipples, pulling attention towards them.[end if][if 8 is too humiliating][line break][first custom style]When would it ever be appropriate to wear such a thing?![roman type][line break][end if]".

To decide which number is the initial outrage of (C - a nipple ring bikini top):
	decide on 14.

Definition: a nipple ring bikini top is black themed: decide yes.

Definition: a nipple ring bikini top is end of transformation chain: decide yes. [It's the end of the transformation chain. This will make some things avoid bothering to attempt to transform it.]

To say TransformReaction of (C - a nipple ring bikini top):
	if the outrage of C is too humiliating:
		if C is cursed, say "[variable custom style]Am I really stuck wearing this? It's worse than just being topless![roman type][line break]";
		otherwise say "[variable custom style]I think I'd genuinely rather be topless than have attention drawn to my nipples like this...[roman type][line break]";
	otherwise if C is almost too much:
		say "[variable custom style]This is pretty extreme! But also kind of thrilling to be wearing...[roman type][line break]";
	otherwise if the humiliation of the player < HUMILIATION-BROKEN:[why not just a generic otherwise: statement here?]
		say "[variable custom style]Teehee, this game knows exactly what sort of thing I'd love to wear! This way, everyone can check out my [if the largeness of breasts > 2]tits[otherwise]nipples[end if]![roman type][line break]".

Nipple Ring Bikini Top ends here.
