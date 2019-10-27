Visibility by Clothing begins here.


Clothing can be layer-exposing or layer-concealing. Clothing is usually layer-concealing. [Clothing that is layer-exposing is cut in such a way that a viewer can always see glimpses of the layer underneath. Clothing that is layer-concealing never does this. Clothing that has a special rule should redefine the definition block below. This is about the CUT and SHAPE of the item, and not transparency. Transparency is checked for separately. A see through raincoat would still be layer-concealing.]

Definition: a clothing (called C) is top-layer-concealing:
	if C is worn and C is layer-concealing and the top-layer of C > 0 and C is not fully exposing, decide yes;
	decide no.

Definition: a clothing (called C) is mid-layer-concealing:
	if C is worn and C is layer-concealing and the mid-layer of C > 0, decide yes;
	decide no.

Definition: a clothing (called C) is bottom-layer-concealing:
	if C is worn and C is layer-concealing and the bottom-layer of C > 0 and C is not-butt-windowed and (C is total protection or C is skirt-covering-crotch) and C is crotch-normal, decide yes; [crotch-assless clothing doesn't hide what's underneath]
	decide no.

current-clothing is a thing that varies.

Definition: a thing (called C) is currently perceivable:
	if C is carried, decide yes;
	if C is currently at least partially visible, decide yes;
	decide no.

Definition: a thing is currently visible: decide no.

Definition: a wearthing (called C) is currently visible: [Is the item worn and currently completely visible to onlookers?]
	if C is not worn, decide no;
	if the at least partial concealer of C is clothing, decide no;
	decide yes.

Definition: a wearthing (called C) is currently at least partially visible: [Is the item worn and currently knowable to onlookers?]
	if C is not worn, decide no;
	if the concealer of C is a thing, decide no;
	decide yes.

Definition: a wearthing (called C) is currently covered: [Is the item worn and covered by another item (so protected from liquids and magic dust and lasers)]
	if C is not worn, decide no;
	if the coverer of C is clothing, decide yes;
	decide no.

Definition: a wearthing (called C) is currently at least partially covered: [Is the item worn and at least part of it covered by another item]
	if C is not worn, decide no;
	if the top-coverer of C is clothing or the mid-coverer of C is clothing or the bottom-coverer of C is clothing, decide yes;
	decide no.

Definition: a wearthing (called C) is currently uncovered:
	if C is not worn, decide no;
	if C is currently covered:
		decide no;
	decide yes.

[Layers, not visibility. Mesh items don't count as covering at all since liquid can get through]
To decide which object is the top-coverer of (C - a clothing):
	if the top-layer of C > 0:
		repeat with O running through top-layer-concealing clothing:
			if the top-layer of O > the top-layer of C and O is not mesh and the cleavageCover of O >= the cleavageCover of C:
				decide on O;
	decide on nothing.

To decide which object is the mid-coverer of (C - a clothing):
	if the mid-layer of C > 0:
		repeat with O running through mid-layer-concealing clothing:
			if the mid-layer of O > the mid-layer of C and O is not mesh:
				decide on O;
	decide on nothing.

To decide which object is the bottom-coverer of (C - a clothing):
	if the bottom-layer of C > 0 or C is chastity cage or C is condom of kings:
		repeat with O running through bottom-layer-concealing clothing:
			if the bottom-layer of O > the bottom-layer of C and O is not mesh:
				decide on O;
	decide on nothing.

[Layers, not visibility. We will prioritise a top layer thing over a bottom layer thing. We prioritise a bottom layer thing over a middle layer thing.]
To decide which object is the coverer of (C - a clothing):
	let T be the top-coverer of C;
	let M be the mid-coverer of C;
	let B be the bottom-coverer of C;
	if (the top-layer of C > 0 and T is nothing) or (the mid-layer of C > 0 and M is nothing) or (the bottom-layer of C > 0 and B is nothing), decide on nothing;
	if the top-layer of C > 0, decide on T;
	if the bottom-layer of C > 0, decide on B;
	decide on M.

[Layers + visibility]
[We will prioritise a top layer thing over a bottom layer thing. We prioritise a bottom layer thing over a middle layer thing.]
To decide which object is the concealer of (C - a clothing):
	let B be nothing;
	let M be nothing;
	if the bottom-layer of C > 0 or C is condom of kings:
		if C is pussy protection:
			repeat with O running through worn potentially vagina covering clothing:
				if O is not C and (the bottom-layer of O > the bottom-layer of C or O is actually dense skirted clothing):
					now B is O;
		otherwise:
			repeat with O running through worn potentially asshole covering clothing:
				if O is not C and (the bottom-layer of O > the bottom-layer of C or O is actually dense skirted clothing):
					now B is O;
		if B is nothing, decide on nothing; [Bottom is uncovered. We can stop here.]
	if the mid-layer of C > 0:
		repeat with O running through actually dense mid-layer-concealing clothing:
			if the mid-layer of O > the mid-layer of C:
				now M is O;
		if M is nothing, decide on nothing; [Mid is uncovered. We can stop here.]
	if the top-layer of C > 0:
		let T be nothing;
		repeat with O running through actually dense top-layer-concealing clothing:
			if the top-layer of O > the top-layer of C and the cleavageCover of O >= the cleavageCover of C:
				now T is O;
		decide on T; [We point at the top coverer over others, because it's the most visible.]
	[Top is irrelevant. Review the outcomes of bottom and middle.]
	if B is a thing, decide on B; [We point at the bottom coverer over the middle coverer, as it's more likely to be important information for how the player is concealing a private part.]
	decide on M; [We point at the middle coverer (if there is no coverer at all because it's an item without a layer, this will resolve to 'nothing').]

To decide which object is the at least partial concealer of (C - a wearthing):
	if C is clothing:
		if the top-layer of C > 0: [As long as it's not fully exposing, it's covering some part of the thing underneath.]
			let T be nothing;
			repeat with O running through top-layer-concealing clothing:
				if the top-layer of O > the top-layer of C and O is not see-through:
					now T is O;
			decide on T;
	decide on the concealer of C. [For most items there's no difference.]

To decide which object is the concealer of (K - a diaper):
	repeat with C running through worn potentially asshole covering clothing:
		if C is actually dense skirted clothing, decide on C; [only skirts can hide diapers, everything else it's still clear what you're wearing.]
	decide on nothing.

To decide which object is the at least partial concealer of (K - a knickers): [soiled undergarments may be slightly visible but the onlooker can't tell that they're soiled]
	repeat with C running through worn potentially at least partially asshole covering clothing:
		if C is not K and the bottom-layer of C > the bottom-layer of K or C is skirted:
			decide on C;
	decide on nothing.

To decide which object is the concealer of (S - a sex toy):
	repeat with O running through worn actually dense clothing:
		if S is penetrating asshole:
			if O is potentially asshole covering clothing, decide on O;
		if S is penetrating vagina:
			if O is potentially vagina covering clothing, decide on O;
	decide on nothing.


Visibility ends here.

