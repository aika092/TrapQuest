Headgear Framework by Headgear begins here.

A headgear is a kind of clothing. headgear is unique. headgear can be hair growing. A headgear has a number called hair-charge. A headgear has a number called colour-charge. A headgear has a number called outfit-charge. A headgear is usually manly.
A headgear can be roleplay. A headgear is usually not roleplay. [Can this headgear appear in the wardrobe when picking the random headgear starting option.]

To decide which number is the default-soak-limit of (C - a headgear): decide on 7.

headgear can be blondeness-neutral, blondeness-positive, blondeness-negative (this is the blondeness-influence property). headgear is usually blondeness-neutral.
headgear can be brightness-neutral, brightness-positive, brightness-negative (this is the brightness-influence property). headgear is usually brightness-neutral.
headgear can be redness-neutral, redness-positive, redness-negative (this is the redness-influence property). headgear is usually redness-neutral.

[Headgear cannot be normally cursed or blessed because this is what tracks its 'quest' of sorts.]

Definition: a headgear is cursable: decide no.
Definition: a headgear is magic-enhanceable: decide yes.
Definition: a headgear is blessable: decide no.
Definition: a headgear is class-transformation-protected: decide yes.
Definition: an object is removal-blocking: decide no. [Some items (mainly headgear) can prevent other clothing from being removed until it is removed, e.g. tiara blocks royal dress from being removed]

[Headgears come with quests. These quests (unless super special) will reward with jewellery or stats the first time they are completed, then X the second time they are completed, and then minor healing from then on.]

To assign quest to (C - a headgear):
	do nothing.

A game universe initialisation rule:
	repeat with H running through on-stage headgear:
		set up H. [otherwise they don't get their quests]

To compute persistent reward of (Q - a headgear-clothing-quest) on (C - a clothing):
	if C is cursed:
		compute generic first time class reward of Q on C;
	otherwise if C is bland:
		compute generic second time class reward of Q on C;
	otherwise:
		compute generic class reward of Q on C.

To compute generic first time class reward of (Q - a clothing-quest) on (C - a clothing):
	let D be a random off-stage ring;
	if D is ring:
		now D is pink diamond;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "summoning a [MediumDesc of D] [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!";
	otherwise:
		compute generic second time class reward of Q on C.

To compute generic second time class reward of (Q - a headgear-clothing-quest) on (C - a clothing):
	say "[if the player is shameless]repairing some of your self-esteem[otherwise]filling you with pride[end if]!";
	dignify 2500.

To compute generic class reward of (Q - a headgear-clothing-quest) on (C - a clothing):
	say "filling you with renewed energy!";
	repeat with F running through fuckholes:
		heal F times 5;
	now the fatigue of the player is 0.

Report taking off headgear: [Otherwise the player could remove the headgear, remove the nasty class blocked clothing items, then replace the headgear.]
	compute AutoRemoveFizzling of the noun.

Report dropping headgear: [Otherwise the player could remove the headgear, remove the nasty class blocked clothing items, then replace the headgear.]
	compute AutoRemoveFizzling of the noun.

To compute AutoRemoveFizzling of (H - a headgear):
	if H is in-play:
		say "As you remove the [ShortDesc of H], it fizzles into nothingness. ";
		only destroy H. [Headgear only comes once in a while]

The list of headgear recycling is a list of headgear that varies.

To commence recycling of (C - a headgear):
	now C is in Holding Pen;
	compute recycling of C;
	release recycled headgear;
	if debugmode is 1, say "Adding [C] to recent headgear list. List now looks like this: [list of headgear recycling].";

To compute recycling of (C - a headgear):
	add C to the list of headgear recycling, if absent.

[We might need to reset some variables or something, I dunno]
To compute unique recycling of (C - a headgear):
	do nothing.

To release recycled headgear:
	while the number of entries in the list of headgear recycling > (4 - (diaper quest * 2)):
		let C be entry 1 in the list of headgear recycling;
		remove C from play;
		remove C from the list of headgear recycling;
		now C is cursed; [Should be already but let's make double sure]
		compute unique recycling of C.

To say ShortDesc of (C - a headgear):
	say "headwear".

To compute hair colour change of (H - a headgear):
	increase the colour-charge of H by 1;
	if the colour-charge of H > the hair threshold of H:
		now the colour-charge of H is 0;
		let C be a random number between 1 and 3;
		if H is redness-neutral, now C is 1;[when we can't increase redness we force check brightness. NOTE: brightness increase is most likely.]
		if C is 1:
			if the brightness of hair < 3 and H is brightness-positive:
				say "You feel your [printed name of H] changing your hair colour.";
				HairBrightUp 1;
			if the brightness of hair > 0 and H is brightness-negative:
				say "You feel your [printed name of H] changing your hair colour.";
				HairBrightDown 1;
			if H is brightness-neutral, now C is 2;[we couldn't increase brightness so we try blondeness]
		if C is 2:
			if the blondeness of hair < 3 and H is blondeness-positive:
				say "Your feel your [printed name of H] changing your hair colour.";
				HairBlondeUp 1;
			if the blondeness of hair > 0 and H is blondeness-negative:
				say "You feel your [printed name of H] changing your hair colour.";
				HairBlondeDown 1;
			if H is blondeness-neutral, now C is 3;[couldn't increase blondeness so let's try redness]
		if C is 3:
			if the redness of hair < 3 and H is redness-positive:
				say "You feel your [printed name of H] changing your hair colour.";
				HairRedUp 1;
			if the redness of hair > 0 and H is redness-negative:
				say "You feel your [printed name of H] changing your hair colour.";
				HairRedDown 1.

To compute hair colour darken of (H - a headgear): [Some awesome headgears darken hair when blessed]
	if H is blessed and frozen hair is 0:
		increase the colour-charge of H by 1;
		if the colour-charge of H > the hair threshold of H * 3:
			now the colour-charge of H is 0;
			if the redness of hair > natural redness * 3 or the brightness of hair > natural brightness * 3 or the blondeness of hair > natural blondeness * 3:
				say "You feel the blessed holy power your [ShortDesc of H] darkening your hair colour. ";
				HairBrightDown 1;
				HairBlondeDown 1;
				HairRedDown 1.

To decide which number is the initial outrage of (C - a headgear):
	decide on 1.

To set up magic state of (C - a headgear):
	do nothing.

To compute periodic effect of (H - a headgear):
	if the player is not in a predicament room:
		if diaper quest is 0:
			compute hair growth of H;
			compute hair colour change of H;
		compute outfit of H;
		compute unique periodic effect of H.

To compute unique periodic effect of (H - a headgear):
	do nothing.

To compute outfit of (H - a headgear):
	increase the outfit-charge of H by 1;
	if the outfit-charge of H > the outfit threshold of H:
		now the outfit-charge of H is 0;
		compute class outfit of H.

To decide which number is the outfit threshold of (H - a headgear):
	decide on 25.

To decide which number is the hair threshold of (H - a headgear):
	if H is cursed:
		decide on 30;
	otherwise if H is blessed:
		decide on 75;
	otherwise:
		decide on 60.

To compute hair growth of (H - a headgear):
	if diaper quest is 0 and H is hair growing and the largeness of hair < the bimbo of the player + 4:
		increase the hair-charge of H by 1;
		if the hair-charge of H > the hair threshold of H + (the raw largeness of hair * 3):
			now the hair-charge of H is 0;
			say "Your [ShortDesc of H] feels warm as your hair grows slightly.";
			HairUp 1.

To compute class outfit of (H - a headgear):
	do nothing.

To WardrobeVanish (C - a clothing):
	say "Your [C] [one of]vanishes. You can sense that it has been sent to the pink wardrobe[or]is sent from your [body area of C] to the pink wardrobe[stopping]!";
	dislodge C;
	now C is in pink wardrobe.

[Removes all clothing that shouldn't be worn at the same time as the new item and sends them to the pink wardrobe. Should be called BEFORE the new item is summoned.]
To PinkWardrobeUnclash (C - a clothing):
	UniquePinkWardrobeUnclash C;
	if C is neck covering:
		repeat with O running through worn neck covering clothing:
			WardrobeVanish O;
	if C is arm covering:
		repeat with O running through worn arm covering clothing:
			WardrobeVanish O;
	if C is hand ready:
		repeat with O running through worn hand ready clothing:
			WardrobeVanish O;
	if C is bra:
		repeat with O running through worn bra:
			WardrobeVanish O;
		repeat with O running through worn breast covering clothing:
			if O is totally-exclusive or O is top-exclusive:
				check that O usually goes under C;
				if the rule succeeded:
					WardrobeVanish O;
	if C is corset:
		repeat with O running through worn corsets:
			WardrobeVanish O;
		repeat with O running through worn bottom-exclusive belly covering clothing:
			WardrobeVanish O;
		repeat with O running through worn totally-exclusive belly covering clothing:
			WardrobeVanish O;
		if C is breast covering:
			repeat with O running through worn breast covering clothing:
				if O is totally-exclusive or O is top-exclusive:
					check that O usually goes under C;
					if the rule succeeded:
						WardrobeVanish O;
	if C is dress:
		if C is overdress:
			repeat with O running through worn overdress:
				WardrobeVanish O;
		if C is underdress:
			repeat with O running through worn underdress:
				WardrobeVanish O;
		repeat with O running through worn clothing:
			if O is top-exclusive or O is totally-exclusive:
				if (O is breast covering and C is breast covering) or (O is belly covering and C is belly covering) or (O is crotch covering and C is crotch covering):
					WardrobeVanish O;
	if C is skirted:
		repeat with O running through worn skirted clothing:
			WardrobeVanish O;
		if tough-shit is 0:
			repeat with O running through worn unskirted themed clothing:
				WardrobeVanish O;
	if C is suspenders:
		repeat with O running through worn suspenders:
			WardrobeVanish O;
	if C is knickers or C is ass plugging or C is vagina plugging or C is bottom-exclusive crotch covering clothing or C is totally-exclusive crotch covering clothing:
		repeat with O running through worn knickers:
			WardrobeVanish O;
		repeat with O running through worn bottom-exclusive crotch covering clothing:
			WardrobeVanish O;
		repeat with O running through worn totally-exclusive crotch covering clothing:
			WardrobeVanish O;
		repeat with O running through worn ass plugging clothing:
			WardrobeVanish O;
		repeat with O running through worn vagina plugging clothing:
			WardrobeVanish O;
	if C is trousers:
		repeat with O running through worn trousers:
			WardrobeVanish O;
		repeat with O running through worn top-exclusive crotch covering unskirted clothing:
			WardrobeVanish O;
		repeat with O running through worn totally-exclusive crotch covering clothing:
			WardrobeVanish O;
	if C is leg covering:
		repeat with O running through worn leg covering clothing:
			WardrobeVanish O;
	if C is shoes:
		repeat with O running through worn shoes:
			WardrobeVanish O;
	if C is sex toy:
		if C is plug or the player is not possessing a vagina:
			repeat with O running through clothing penetrating asshole:
				WardrobeVanish O;
		otherwise:
			repeat with O running through clothing penetrating vagina:
				WardrobeVanish O;
		if C is tail plug:
			repeat with O running through ass covering clothing:
				WardrobeVanish O;
	if (tough-shit is 0 and C is uncovered themed) or C is top-exclusive or C is totally-exclusive:
		if C is breast covering:
			repeat with O running through worn breast covering clothing:
				check that O usually goes under C;
				if the rule succeeded:
					WardrobeVanish O;
		if C is belly covering:
			repeat with O running through worn belly covering clothing:
				check that O usually goes under C;
				if the rule succeeded:
					WardrobeVanish O;
		if C is crotch covering:
			repeat with O running through worn crotch covering clothing:
				check that O usually goes under C;
				if the rule succeeded:
					WardrobeVanish O;
	if tough-shit is 0:
		if C is unskirted themed:
			repeat with O running through worn skirted clothing:
				WardrobeVanish O;
		if C is breast covering:
			repeat with O running through worn uncovered themed bras:
				WardrobeVanish O;
		if C is belly covering:
			repeat with O running through worn uncovered themed corsets:
				WardrobeVanish O;
		if C is crotch covering or (C is skirted and C is not super-short):
			repeat with O running through worn uncovered themed crotch covering clothing:
				check that O usually goes under C;
				if the rule succeeded:
					WardrobeVanish O;
	repeat with O running through clothing in pink wardrobe:
		dislodge O.

To UniquePinkWardrobeUnclash (C - a clothing):
	do nothing.

Definition: a headgear is too boring: decide no.

Definition: a headgear is too adult: decide no.

Definition: a headgear is stealable: decide no.

Definition: a headgear is destructible: decide no.

Part - Wearability

headgear wearability rules is a rulebook. The wearability rules of headgear is usually headgear wearability rules.

This is the headgear already worn rule:
	repeat with O running through worn headgear:
		unless wearing-target is scrunchie and the number of worn scrunchie is 1 and O is scrunchie: [A second scrunchie headgear can appear to turn a ponytail into a pigtail.]
			if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
			rule fails.
The headgear already worn rule is listed in the headgear wearability rules.

Carry out wearing headgear:
	compute HeadgearAutoCursing of the noun.

To compute HeadgearAutoCursing of (H - a headgear):
	if H is not cursed:
		say "As you put it on, it becomes cursed, sealing itself to your [ShortDesc of hair]!";
		now H is cursed.

Headgear Framework ends here.
