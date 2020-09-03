Visibility by Clothing begins here.

Definition: a clothing is layer-concealing: decide yes. [Clothing that is layer-exposing is cut in such a way that a viewer can always see glimpses of the layer underneath. Clothing that is layer-concealing never does this. Clothing that has a special rule should redefine the definition block below. This is about the CUT and SHAPE of the item, and not transparency. Transparency is checked for separately. A see through raincoat would still be layer-concealing.]
Definition: a clothing is partially-layer-concealing:
	if it is layer-concealing, decide yes;
	decide no. [If you want to set this to 'YES' to make something partially layer concealing, you should also set the layer-concealing definition above to 'NO']
Definition: a clothing is layer-exposing:
	if it is not partially-layer-concealing, decide yes;
	decide no.

Definition: a clothing (called C) is potentially-top-layer-concealing:
	if C is layer-concealing and C is potentially-partially-top-layer-concealing, decide yes;
	decide no.
Definition: a clothing (called C) is top-layer-concealing:
	if C is worn and C is potentially-top-layer-concealing, decide yes;
	decide no.
Definition: a clothing (called C) is potentially-partially-top-layer-concealing:
	if C is partially-layer-concealing and C is breast covering and C is actually nipple covering, decide yes;
	decide no.
Definition: a clothing (called C) is partially-top-layer-concealing:
	if C is worn and C is potentially-partially-top-layer-concealing, decide yes;
	decide no.

Definition: a clothing (called C) is potentially-mid-layer-concealing:
	if C is layer-concealing and C is potentially-partially-mid-layer-concealing, decide yes;
	decide no.
Definition: a clothing (called C) is mid-layer-concealing:
	if C is worn and C is potentially-mid-layer-concealing, decide yes;
	decide no.
Definition: a clothing (called C) is potentially-partially-mid-layer-concealing:
	if C is partially-layer-concealing and C is belly covering, decide yes;
	decide no.
Definition: a clothing (called C) is partially-mid-layer-concealing:
	if C is worn and C is potentially-partially-mid-layer-concealing, decide yes;
	decide no.

Definition: a clothing (called C) is potentially-bottom-layer-concealing:
	if C is layer-concealing and C is potentially-partially-bottom-layer-concealing, decide yes; [crotch-assless clothing doesn't hide what's underneath]
	decide no.
Definition: a clothing (called C) is bottom-layer-concealing:
	if C is worn and C is potentially-bottom-layer-concealing, decide yes;
	decide no.
Definition: a clothing (called C) is potentially-partially-bottom-layer-concealing:
	if C is partially-layer-concealing and C is not-butt-windowed and (C is total protection or C is skirt-covering-crotch), decide yes; [crotch-assless clothing doesn't hide what's underneath, but both 'total protection' and 'skirt-covering-crotch' already check for this]
	decide no.
Definition: a clothing (called C) is partially-bottom-layer-concealing:
	if C is worn and C is potentially-partially-bottom-layer-concealing, decide yes;
	decide no.

current-clothing is a thing that varies.

[Can NPCs be aware of its existence?]
Definition: a thing is currently perceivable:
	if it is currently-not-in-bag or it is currently at least partially visible, decide yes;
	decide no.

Definition: a thing is currently visible: decide no.

Definition: a wearthing (called C) is currently visible: [Is the item worn and currently completely visible to onlookers?]
	if C is not worn, decide no;
	if the at least partial concealer of C is a thing, decide no;
	decide yes.

Definition: a wearthing (called C) is currently at least partially visible: [Is the item worn and currently knowable to onlookers?]
	if C is not worn, decide no;
	if the concealer of C is a thing, decide no;
	decide yes.

Definition: a wearthing (called C) is currently concealed:
	if C is not worn, decide no;
	if C is currently at least partially visible, decide no;
	decide yes.

Definition: a wearthing (called C) is currently covered: [Is the item worn and covered by another item (so protected from liquids and magic dust and lasers)]
	if C is not worn, decide no;
	if the coverer of C is clothing, decide yes;
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
	if the bottom-layer of C > 0 or C is chastity bond or C is condom of kings:
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
	if appearance-explained is 1 and debugmode > 1, say "Checking concealer of [C].";
	if entry 1 in the armUses of arms is C and entry 2 in the armUses of arms is C, decide on arms;
	let B be nothing;
	let M be nothing;
	if the bottom-layer of C > 0 or C is condom of kings:
		if C is pussy protection:
			repeat with O running through bottom-layer-concealing potentially vagina covering clothing:
				if O is not C and (the bottom-layer of O > the bottom-layer of C or O is skirted):
					now B is O;
		otherwise:
			repeat with O running through bottom-layer-concealing potentially asshole covering clothing:
				if O is not C and (the bottom-layer of O > the bottom-layer of C or O is skirted):
					now B is O;
		if appearance-explained is 1 and debugmode > 1, say "So far we've found [if B is nothing]that there's no[otherwise]that [printed name of B] is the[end if] bottom layer cover.";
		if B is nothing, decide on nothing; [Bottom is uncovered. We can stop here.]
	if the mid-layer of C > 0:
		repeat with O running through actually dense mid-layer-concealing clothing:
			if the mid-layer of O > the mid-layer of C:
				now M is O;
		if appearance-explained is 1 and debugmode > 1, say "So far we've found [if M is nothing]that there's no[otherwise]that [printed name of M] is the[end if] mid layer cover.";
		if M is nothing, decide on nothing; [Mid is uncovered. We can stop here.]
	if the top-layer of C > 0:
		let T be nothing;
		repeat with O running through actually dense top-layer-concealing clothing:
			if the top-layer of O > the top-layer of C and the cleavageCover of O >= the cleavageCover of C:
				now T is O;
		if appearance-explained is 1 and debugmode > 1, say "So far we've found [if T is nothing]that there's no[otherwise]that [printed name of T] is the[end if] top layer cover.";
		decide on T; [We point at the top coverer over others, because it's the most visible.]
	[Top is irrelevant. Review the outcomes of bottom and middle.]
	if B is a thing, decide on B; [We point at the bottom coverer over the middle coverer, as it's more likely to be important information for how the player is concealing a private part.]
	decide on M; [We point at the middle coverer (if there is no coverer at all because it's an item without a layer, this will resolve to 'nothing').]

To decide which object is the at least partial concealer of (C - a wearthing):
	if appearance-explained is 1 and debugmode > 1, say "Checking at least partial concealer of [C].";
	if C is listed in the armUses of arms, decide on arms;
	if C is clothing and (the top-layer of C > 0 or the mid-layer of C > 0 or the bottom-layer of C > 0): [The main difference between this and the one above, is whether the item is layer concealing or just partially layer concealing]
		let B be nothing;
		let M be nothing;
		if the bottom-layer of C > 0:
			if C is pussy protection:
				repeat with O running through partially-bottom-layer-concealing potentially at least partially vagina covering clothing:
					if O is not C and (the bottom-layer of O > the bottom-layer of C or O is not-see-through skirted clothing):
						now B is O;
			otherwise:
				repeat with O running through partially-bottom-layer-concealing potentially at least partially asshole covering clothing:
					if O is not C and (the bottom-layer of O > the bottom-layer of C or O is not-see-through skirted clothing):
						now B is O;
			if appearance-explained is 1 and debugmode > 1, say "So far we've found [if B is nothing]that there's no[otherwise]that [printed name of B] is the[end if] at least partial bottom layer cover.";
			if B is nothing, decide on nothing; [Bottom is uncovered. We can stop here.]
		if the mid-layer of C > 0:
			repeat with O running through partially-mid-layer-concealing clothing:
				if the mid-layer of O > the mid-layer of C and O is not see-through:
					now M is O;
			if appearance-explained is 1 and debugmode > 1, say "So far we've found [if M is nothing]that there's no[otherwise]that [printed name of M] is the[end if] at least partial mid layer cover.";
			if M is nothing, decide on nothing; [Mid is uncovered. We can stop here.]
		if the top-layer of C > 0:
			let T be nothing;
			repeat with O running through partially-top-layer-concealing clothing:
				if the top-layer of O > the top-layer of C and O is not fully exposing and O is not see-through:
					now T is O;
			if appearance-explained is 1 and debugmode > 1, say "So far we've found [if T is nothing]that there's no[otherwise]that [printed name of T] is the[end if] at least partial top layer cover.";
			decide on T; [We point at the top coverer over others, because it's the most visible.]
		[Top is irrelevant. Review the outcomes of bottom and middle.]
		if B is a thing, decide on B; [We point at the bottom coverer over the middle coverer, as it's more likely to be important information for how the player is concealing a private part.]
		decide on M; [We point at the middle coverer (if there is no coverer at all because it's an item without a layer, this will resolve to 'nothing').]
	decide on the concealer of C. [For non-clothing items there's no difference.]

[This is is at what bulk levels the clothing can prevent people from even knowing there's a diaper there]
To decide which number is the diaperHidingLength of (C - a clothing):
	if C is crotch-displaced or C is crotch-unzipped or C is crotch-ripped, decide on -1;
	if C is skirted and C is not hobble-skirted, decide on the skirtLength of C; [Hobble skirts are too tight to conceal thick diapers]
	decide on the defaultDiaperHidingLength of C.

To decide which number is the defaultDiaperHidingLength of (C - a clothing):
	decide on 4.

Definition: a clothing (called C) is diaper hiding:
	if C is potentially asshole covering potentially-bottom-layer-concealing clothing:
		if the diaperHidingLength of C >= the DQBulk of the player, decide yes;
	decide no.

[Sometimes the diaper covering clothing breaks open at certain levels.]
To decide which number is the defaultDiaperCoveringLength of (C - a clothing):
	if C is skirted, decide on the skirtLength of C;
	decide on 10. [nearly all trousers etc. will at least cover it up even if the shape is exposed]

To decide which number is the diaperCoveringLength of (C - a clothing):
	decide on the defaultDiaperCoveringLength of C.

To decide which number is the diaperCoveringLength of (C - a knickers):
	decide on -1.

Definition: a clothing (called C) is diaper covering:
	if C is potentially at least partially asshole covering potentially-partially-bottom-layer-concealing clothing and the diaperCoveringLength of C >= the DQBulk of the player, decide yes;
	decide no.

[For diapers, this hides the shape too.]
To decide which object is the concealer of (K - a knickers):
	if water-fountain is penetrating asshole, decide on water-fountain;
	repeat with C running through worn diaper hiding clothing:
		if C is not K and (C is skirted or the bottom-layer of C > the bottom-layer of K), decide on C;
	decide on nothing.

[This hides the wet status of the underwear but not the shape.]
To decide which object is the at least partial concealer of (K - a knickers):
	if water-fountain is penetrating asshole, decide on water-fountain;
	repeat with C running through worn diaper covering clothing:
		[if debugmode > 1, say "considering concealment of [ShortDesc of C].";]
		if C is not K and (the bottom-layer of C > the bottom-layer of K or C is skirted), decide on C;
	if K is listed in the armUses of arms, decide on arms;
	decide on nothing.

To decide which object is the at least partial concealer of (S - a sex toy):
	if S is penetrating vagina:
		decide on the at least partial concealer of vagina;
	otherwise:
		decide on the at least partial concealer of asshole.

To decide which object is the concealer of (S - a sex toy):
	if current-predicament is team-girlfriends-predicament and the player is in a predicament room, decide on nothing;
	if S is penetrating vagina:
		decide on the concealer of vagina;
	otherwise:
		decide on the concealer of asshole.

Visibility ends here.
