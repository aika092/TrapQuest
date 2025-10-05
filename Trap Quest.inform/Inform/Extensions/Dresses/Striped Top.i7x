Striped Top by Dresses begins here.

A striped top is a kind of overdress. The skirt-length of A striped top is 0. A striped top is usually velvet. A striped top is usually unique. There is 1 striped top.

The printed name of striped top is usually "[clothing-title-before]striped [if the noun is velvet]top[otherwise]carapace[end if][clothing-title-after]". The text-shortcut of striped top is "stt".

To say selfexaminetitle of (B - a striped top):
	say "fuzzy black and yellow [if B is velvet]top[otherwise]carapace[end if]".

Figure of striped top is the file "Items/Clothes/Upper/Special/stripedtop1.png".

To decide which figure-name is clothing-image of (C - a striped top):
	decide on figure of striped top.

To say ClothingDesc of (C - a striped top):
	say "A fuzzy black and yellow top. It clings tightly to your breasts, so much so that it's like a second skin on them! [if C is biological]Hard and shiny black carapace extends out from under it and seems to be merged with your skin![end if][if C is spikey] A spike extends where each nipple should be, ominously dripping purple fluid.[end if]".

To say ShortDesc of (C - a striped top):
	say "striped top".

Definition: a striped top (called C) is destructible:
	if C is biological, decide no;
	decide yes.

Definition: a striped top (called C) is removable:
	if C is biological, decide no;
	decide yes.

To compute periodic effect of (C - a striped top):
	if the class of the player is broodmother:
		now the raw-magic-modifier of C is total-wasps / 50;
		if total-wasps < 50 and C is biological:
			say "[bold type]You look down as [ShortDesc of C] your shiny carapace softens and finally detaches from your skin, reverting into clothing.[roman type][line break]";
			now C is velvet;
			now C is not spikey;
		otherwise if total-wasps >= 50 and total-wasps < 100 and (C is spikey or C is velvet):
			if C is velvet, say "[bold type]You look down in shock as [ShortDesc of C] merges into your skin, turning it hard, black and shiny like a carapce. Fine black and yellow fuzz now grows directly out of your skin![roman type][line break]";
			otherwise say "[bold type]You look down in shock as your nipple spikes recede back into your [ShortDesc of C].[roman type][line break]";
			now C is biological;
			now C is not spikey;
		otherwise if total-wasps >= 100 and C is not spikey:
			say "Your nipples tingle as a pair of spikes erupt from your [ShortDesc of C], right where your nipples should be. Each spike drips an ominous purple fluid...[roman type][line break]";
			now C is biological;
			now C is spikey.

To compute school periodic effect of (C - a striped top):
	compute periodic effect of C.

Definition: a striped top is class-transformation-protected:
	if the class of the player is broodmother, decide yes;
	decide no.
Definition: a striped top is yellow themed: decide yes.
Definition: a striped top is black themed: decide yes.

Striped Top ends here.
