Striped Top by Dresses begins here.

A striped top is a kind of overdress. A striped top is usually unskirted. A striped top is usually biological. A striped top is usually unique. A striped top is usually belly exposing. There is 1 striped top.

The printed name of striped top is usually "[TQlink of item described][clothing-title-before]striped top[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of striped top is "stt".

To say selfexaminetitle of (B - a striped top):
	say "fuzzy black and yellow top".

Figure of striped top is the file "stripedtop1.png".

To decide which figure-name is clothing-image of (C - a striped top):
	decide on figure of striped top.
	
To say ClothingDesc of (C - a striped top):
	say "A fuzzy black and yellow top. It clings tightly to your breasts, so much so that it[']s like a second skin on them! [if total-wasps > 50]Hard and shiny black carapace extends out from under it and seems to be merged with your skin![end if][if total-wasps > 100] A spike extends where each nipple should be, ominously dripping purple fluid.[end if]".

To say ShortDesc of (C - a striped top):
	say "striped top".
	
Definition: a striped top (called C) is spikey:
	if total-wasps > 100:
		decide yes;
	otherwise:
		decide no.
		
Definition: a striped top is removable:
	if total-wasps > 50:
		decide no.

Definition: a striped top (called C) is untransformable:
	if the class of the player is broodmother, decide yes;
	decide no.

Striped Top ends here.

