Headgear Framework by Headgear begins here.

A headgear is a kind of clothing. headgear is unique. headgear can be hair growing. A headgear is usually manly.

Definition: a headgear is roleplay: decide no. [Can this headgear appear in the wardrobe when picking the random headgear starting option.]

To decide which number is the default-soak-limit of (C - a headgear): decide on 5.

headgear can be blondeness-neutral, blondeness-positive, blondeness-negative (this is the blondeness-influence property). headgear is usually blondeness-neutral.
headgear can be brightness-neutral, brightness-positive, brightness-negative (this is the brightness-influence property). headgear is usually brightness-neutral.
headgear can be redness-neutral, redness-positive, redness-negative (this is the redness-influence property). headgear is usually redness-neutral.

[Headgear cannot be normally cursed or blessed because this is what tracks its 'quest' of sorts.]

Definition: a headgear is cursable: decide no.
Definition: a headgear is magic-enhanceable: decide yes.
Definition: a headgear is blessable: decide no.
Definition: a headgear is class-transformation-protected: decide yes.
Definition: a headgear is immune to change: decide yes.

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
	if frozen hair is 0 and ((C is not brightness-positive and the brightness of hair > natural brightness * 3) or (C is not redness-positive and the redness of hair > natural redness * 3) or (C is not blondeness-positive and the blondeness of hair > natural blondeness * 3)):
		say "darkening your hair colour!";
		if C is not brightness-positive, HairBrightDown 1;
		if C is not blondeness-positive, HairBlondeDown 1;
		if C is not redness-positive, HairRedDown 1;
	otherwise:
		say "[if the player is shameless]repairing some of your self-esteem[otherwise]filling you with pride[end if]!";
		dignify 2500.

To compute generic class reward of (Q - a headgear-clothing-quest) on (C - a clothing):
	if C is hair growing or the raw largeness of hair <= 1 or frozen hair is 1:
		say "filling you with renewed energy!";
		repeat with F running through fuckholes:
			heal F times 5;
		now the fatigue of the player is 0;
	otherwise:
		say "shrinking the length of your hair!";
		HairDown 1;
	let D be a random off-stage ring;
	if D is ring:
		now D is emerald;
		set shortcut of D;
		if D is actually summonable:
			summon D;
		otherwise:
			now D is in the location of the player;
		say "You're also rewarded with a bonus [MediumDesc of D], which appears [if D is worn]straight onto your finger[otherwise]right in front of you[end if]!".

Report taking off headgear: [Otherwise the player could remove the headgear, remove the nasty class blocked clothing items, then replace the headgear.]
	if the player is not in a predicament room, compute AutoRemoveFizzling of the noun.

Report dropping headgear: [Otherwise the player could remove the headgear, remove the nasty class blocked clothing items, then replace the headgear.]
	if the player is not in a predicament room, compute AutoRemoveFizzling of the noun.

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
	if frozen hair is 0:
		let flav-said be 0;
		if the brightness of hair < 3 and H is brightness-positive:
			say "[if flav-said is 0]You feel your [ShortDesc of H] changing your hair colour, making it[otherwise] and[end if] brighter";
			now flav-said is 1;
		if the brightness of hair > 0 and H is brightness-negative:
			say "[if flav-said is 0]You feel your [ShortDesc of H] changing your hair colour, making it[otherwise] and[end if] darker";
			now flav-said is 1;
		if the blondeness of hair < 3 and H is blondeness-positive:
			say "[if flav-said is 0]You feel your [ShortDesc of H] changing your hair colour, making it[otherwise] and[end if] more blonde";
			now flav-said is 1;
		if the blondeness of hair > 0 and H is blondeness-negative:
			say "[if flav-said is 0]You feel your [ShortDesc of H] changing your hair colour, making it[otherwise] and[end if] less blonde";
			now flav-said is 1;
		if the redness of hair < 3 and H is redness-positive:
			say "[if flav-said is 0]You feel your [ShortDesc of H] changing your hair colour, making it[otherwise] and[end if] more red";
			now flav-said is 1;
		if the redness of hair > 0 and H is redness-negative:
			say "[if flav-said is 0]You feel your [ShortDesc of H] changing your hair colour, making it[otherwise] and[end if] less red";
			now flav-said is 1;
		if flav-said is 1, say ".";
		[these need to go afterwards because they might cause something to be printed]
		if the brightness of hair < 3 and H is brightness-positive, HairBrightUp 1;
		if the brightness of hair > 0 and H is brightness-negative, HairBrightDown 1;
		if the blondeness of hair < 3 and H is blondeness-positive, HairBlondeUp 1;
		if the blondeness of hair > 0 and H is blondeness-negative, HairBlondeDown 1;
		if the redness of hair < 3 and H is redness-positive, HairRedUp 1;
		if the redness of hair > 0 and H is redness-negative, HairRedDown 1.


To decide which number is the initial outrage of (C - a headgear):
	decide on 1.

To set up magic state of (C - a headgear):
	do nothing.

To compute periodic effect of (H - a headgear):
	if the player is not in a predicament room:
		compute unique periodic effect of H.

To compute unique periodic effect of (H - a headgear):
	do nothing.

To compute hair growth of (H - a headgear):
	if diaper quest is 0 and H is hair growing:
		say "Your [ShortDesc of H] feels warm as your hair grows slightly.";
		HairUp 1.

To summon (H - a headgear):
	only destroy H; [This cleans up all potentially incorrect flags except ripped and various effects]
	only summon H;
	if the player is not in a predicament room:
		follow the player class rules;
		compute hair growth of H;
		compute hair colour change of H;
		compute class outfit of H.

To compute post transformation effect of (H - a headgear):
	let PC1 be the substituted form of "[player-class]";
	follow the player class rules;
	let PC2 be the substituted form of "[player-class]";
	unless PC1 matches the text PC2, compute class outfit of H. [In general if the player changes class they get a new outfit where possible. NB this won't replace clothing that is still class-relevant, that will need to be done manually]

Report wearing a headgear:
	if the player is not in a predicament room:
		follow the player class rules;
		compute class outfit of the noun.

To compute class outfit of (H - a headgear):
	do nothing. [This will be replaced with the headgear spawning the default class outfit using the "class summon" function on each item of clothing.]

To compute class set up of (C - a clothing): [Any unique changes to its state when it's summoned as part of a class outfit]
	if C is gloves or C is sex toy, now C is cursed; [With rare exceptions these are always 'bad stuff' that need to come into play cursed]
	if C is sex toy:
		let F be a random fuckhole penetrated by C;
		if F is fuckhole, assign size (openness of F) to C;
	if C is bondage, lock C.

To say ClassSummonFlav of (C - a clothing):
	say "A [C] appears on your [body area of C]!".

To class summon (C - a clothing):
	if debugmode > 0, say "[input-style]Class summoning [C].[roman type][line break]";
	if C is hand ready, check clutch replacement;
	if C is class summonable:
		PinkWardrobeUnclash C;
		summon C uncursed;
		compute class set up of C;
		say ClassSummonFlav of C;
		if C is cursed:
			if the quest of C is no-clothing-quest, compute persistent quest of C;
			unless the quest of C is no-clothing-quest, say QuestFlav of C.


To say AutobindSummonFlav of (C - a clothing):
	say "You are now wearing the [C].";
	FearUp 3.

To autobind (C - a clothing):
	if debugmode > 0, say "[input-style]Autobinding [C].[roman type][line break]";
	if C is hand ready, check clutch replacement;
	PinkWardrobeUnclash C;
	soft summon C;
	now C is autobinding;
	compute autobind set up of C;
	say AutobindSummonFlav of C;
	compute summoned quest of C.

To compute autobind set up of (C - a clothing):
	now C is cursed.

Report taking clothing:
	if the noun is autobinding and the player is not in a predicament room and the noun is unclash summonable:
		say "[bold type]Suddenly, [NameDesc of the noun] disappears from your hands![roman type][line break]";
		autobind the noun.



To WardrobeVanish (C - a thing):
	if C is held, say "[if C is clothing]Your [C] [one of]vanishes. You can sense that it has been sent to the pink wardrobe[or]is sent from your [body area of C] to the pink wardrobe[stopping][otherwise]The [C] vanishes. You can sense that it has been sent to the pink wardrobe[end if]!";
	otherwise say "The [C] vanishes. You can sense that it has been sent to the pink wardrobe!";
	dislodge C;
	now C is in pink wardrobe.

[Removes all clothing that shouldn't be worn at the same time as the new item and sends them to the pink wardrobe. Should be called BEFORE the new item is summoned. This function needs to match the function below.]
To PinkWardrobeUnclash (C - a clothing):
	UniquePinkWardrobeUnclash C;
	if C is gag:
		repeat with O running through worn gags:
			WardrobeVanish O;
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
		repeat with O running through worn unskirted themed clothing:
			WardrobeVanish O;
	if C is suspenders:
		repeat with O running through worn suspenders:
			WardrobeVanish O;
	if C is knickers or C is bottom-exclusive crotch covering clothing or C is totally-exclusive crotch covering clothing:
		repeat with O running through worn knickers:
			WardrobeVanish O;
		repeat with O running through worn bottom-exclusive crotch covering clothing:
			WardrobeVanish O;
		repeat with O running through worn totally-exclusive crotch covering clothing:
			WardrobeVanish O;
	if C is ass plugging:
		repeat with O running through worn ass plugging clothing:
			WardrobeVanish O;
	if C is vagina plugging:
		repeat with O running through worn vagina plugging clothing:
			WardrobeVanish O;
	if C is total protection:
		repeat with O running through worn tail plugs:
			WardrobeVanish O;
	if C is tail plug:
		repeat with O running through worn total protection clothing:
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
	if C is stockings:
		repeat with O running through worn stockings:
			WardrobeVanish O;
		repeat with O running through worn usually ankle covering clothing:
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
	if C is uncovered themed or C is top-exclusive or C is totally-exclusive:
		if C is breast covering:
			repeat with O running through worn breast covering clothing:
				check that C usually goes under O;
				if the rule succeeded or C is totally-exclusive:
					WardrobeVanish O;
		if C is belly covering:
			repeat with O running through worn belly covering clothing:
				check that C usually goes under O;
				if the rule succeeded or C is totally-exclusive:
					WardrobeVanish O;
		if C is crotch covering:
			repeat with O running through worn crotch covering clothing:
				check that C usually goes under O;
				if the rule succeeded or C is totally-exclusive:
					WardrobeVanish O;
	if C is bottom-exclusive:
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

Definition: a clothing is uniquely class summonable: decide yes. [needs to match UniquePinkWardrobeUnclash]
Definition: a clothing is class-relevant: [should we avoid non-unique transformations, and avoid replacing this during an attempted class summon?]
	if it is latex and the class of the player is latex fetish model, decide yes;
	decide no.

Definition: an object is class summonable: decide no.
Definition: a clothing (called C) is class summonable:
	if C is worn, decide no;
	if C is not uniquely class summonable, decide no;
	if C is hand ready and C is not actually summonable, decide no; [don't banish equippables]
	[This section needs to match the function above.]
	if C is gag:
		repeat with O running through things penetrating face:
			if O is gag:
				if O is unremovable or O is locked or O is currently-class-relevant, decide no;
			otherwise:
				decide no;
	if C is neck covering:
		repeat with O running through worn neck covering clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is arm covering:
		repeat with O running through worn arm covering clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	[if C is hand ready:
		repeat with O running through worn hand ready clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;]
	if C is bra:
		repeat with O running through worn bra:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn breast covering clothing:
			if O is totally-exclusive or O is top-exclusive:
				check that O usually goes under C;
				if the rule succeeded:
					if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is corset:
		repeat with O running through worn corsets:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn bottom-exclusive belly covering clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn totally-exclusive belly covering clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		if C is breast covering:
			repeat with O running through worn breast covering clothing:
				if O is totally-exclusive or O is top-exclusive:
					check that O usually goes under C;
					if the rule succeeded:
						if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is dress:
		if C is overdress:
			repeat with O running through worn overdress:
				if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		if C is underdress:
			repeat with O running through worn underdress:
				if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn clothing:
			if O is top-exclusive or O is totally-exclusive:
				if (O is breast covering and C is breast covering) or (O is belly covering and C is belly covering) or (O is crotch covering and C is crotch covering):
					if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is skirted:
		repeat with O running through worn skirted clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn unskirted themed clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is suspenders:
		repeat with O running through worn suspenders:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is knickers or C is bottom-exclusive crotch covering clothing or C is totally-exclusive crotch covering clothing:
		repeat with O running through worn knickers:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn bottom-exclusive crotch covering clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn totally-exclusive crotch covering clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is ass plugging:
		repeat with O running through things penetrating asshole:
			if O is worn ass plugging clothing:
				if O is unremovable or O is locked or O is currently-class-relevant, decide no;
			otherwise:
				decide no;
	if C is vagina plugging:
		repeat with O running through things penetrating vagina:
			if O is worn vagina plugging clothing:
				if O is unremovable or O is locked or O is currently-class-relevant, decide no;
			otherwise if the player is possessing a vagina:
				decide no;
	if C is total protection:
		repeat with O running through worn tail plugs:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is tail plug:
		repeat with O running through worn total protection clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is trousers:
		repeat with O running through worn trousers:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn top-exclusive crotch covering unskirted clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn totally-exclusive crotch covering clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is leg covering:
		repeat with O running through worn leg covering clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is stockings:
		repeat with O running through worn stockings:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		repeat with O running through worn usually ankle covering clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is shoes:
		repeat with O running through worn shoes:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is sex toy:
		if C is plug or the player is not possessing a vagina:
			repeat with O running through clothing penetrating asshole:
				if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		otherwise:
			repeat with O running through clothing penetrating vagina:
				if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		if C is tail plug:
			repeat with O running through ass covering clothing:
				if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is uncovered themed or C is top-exclusive or C is totally-exclusive:
		if C is breast covering:
			repeat with O running through worn breast covering clothing:
				check that C usually goes under O;
				if the rule succeeded or C is totally-exclusive:
					if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		if C is belly covering:
			repeat with O running through worn belly covering clothing:
				check that C usually goes under O;
				if the rule succeeded or C is totally-exclusive:
					if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		if C is crotch covering:
			repeat with O running through worn crotch covering clothing:
				check that C usually goes under O;
				if the rule succeeded or C is totally-exclusive:
					if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is bottom-exclusive:
		if C is breast covering:
			repeat with O running through worn breast covering clothing:
				check that O usually goes under C;
				if the rule succeeded:
					if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		if C is belly covering:
			repeat with O running through worn belly covering clothing:
				check that O usually goes under C;
				if the rule succeeded:
					if O is unremovable or O is locked or O is currently-class-relevant, decide no;
		if C is crotch covering:
			repeat with O running through worn crotch covering clothing:
				check that O usually goes under C;
				if the rule succeeded:
					if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is unskirted themed:
		repeat with O running through worn skirted clothing:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is breast covering:
		repeat with O running through worn uncovered themed bras:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is belly covering:
		repeat with O running through worn uncovered themed corsets:
			if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	if C is crotch covering or (C is skirted and C is not super-short):
		repeat with O running through worn uncovered themed crotch covering clothing:
			check that O usually goes under C;
			if the rule succeeded:
				if O is unremovable or O is locked or O is currently-class-relevant, decide no;
	decide yes.

class-relevance-importance is initially true.
Definition: a clothing is currently-class-relevant: [we sometimes disable class relevance in order to use the below check just to check for unremovable stuff]
	if class-relevance-importance is false, decide no;
	if it is class-relevant, decide yes;
	decide no.
Definition: an object is unclash summonable: decide no.
Definition: a clothing (called C) is unclash summonable:
	if C is worn, decide no;
	now class-relevance-importance is false;
	if C is class summonable:
		now class-relevance-importance is true;
		decide yes;
	otherwise:
		now class-relevance-importance is true;
		decide no.
To unclash class summon (C - a clothing):
	PinkWardrobeUnclash C;
	class summon C.

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
	if H is not cursed and the player is not in a predicament room:
		say "As you put it on, it becomes cursed, sealing itself to your [ShortDesc of hair]!";
		now H is cursed.

Headgear Framework ends here.
