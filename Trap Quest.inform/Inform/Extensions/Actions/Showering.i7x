Showering by Actions begins here.

tracked-semen is a number that varies.

[!<showering:Action>*

Player putting their whole body into the water.

*!]
Showering is an action applying to one thing.

Check showering:
	if the bimbo of the player < 14 and there is a lake monster in the location of the player and auto is 0, say "You don't dare go near with the tentacle monster still lurking in these waters." instead;
	if the player is immobile, say "[if auto is 0]You're a bit immobile at the moment![end if]" instead;
	if the player is flying, say "[if auto is 0]You aren't even touching the ground![end if]" instead;
	if the player is in danger and auto is 0, say "You can't do that in the middle of combat!" instead;
	if the noun is not water-body and the noun is not WoodsScenery01 and the noun is not DungeonScenery03 and the noun is not sacred pool and the noun is not hot-tub, say "[if auto is 0]How would that work exactly?[end if]" instead;
	if there is a worn perceived unmessed diaper and auto is 0:
		say "You feel that it isn't too sensible to get into a body of water when wearing a super-absorbent diaper! Are you sure you want to? ";
		unless the player is in agreement, say "Action cancelled." instead;
	if the humiliation of the player > 28000 and the semen addiction of the player > 11 and the number of glazed body parts > 0 and watersports fetish is 1 and auto is 0:[We only prevent players from washing themselves if there is another way for them to get clean. i.e. showers of the golden variety rather than normal ones]
		unless there is a lake monster in the location of the player or (there is a worn slimegirl and the hunger of a random slimegirl > 7), say "[second custom style]No way! If I want to get clean, I'll just have someone douse me in [urine]![roman type]" instead.

Report going when the player is in Dungeon35 and newbie tips is 1:
	say "[one of][newbie style]Newbie tip: A body of water! If [if diaper quest is 1]your clothes have been soiled[otherwise]you have been stained with bodily fluids[end if], you can use this to your advantage. You can clean individual items of clothing with 'clean X in water' and you can use 'wash in water' to go in yourself, and clean everything you're wearing at the same time[if diaper messing >= 4]. You can even use this to clean up after messing yourself[otherwise if diaper lover > 0]. It may be sensible to remove any diapers first though, unless you want them to instantly get fully waterlogged[end if]![roman type][line break][or][stopping]".

Check entering water-body:
	try showering water-body instead.

Check entering WoodsScenery01:
	try showering water-body instead.

Check entering DungeonScenery03:
	try showering water-body instead.

Check entering sacred pool:
	try showering water-body instead.

Check entering hot-tub:
	try showering water-body instead.

Check showering:
	if the noun is not water-body and the location of the player is water-bodied, try showering water-body instead.

Carry out showering:
	if WoodsScenery01 is in the location of the player: [Unique stuff because of slimegirl]
		compute showering WoodsScenery01;
	otherwise if swimming-pool is in the location of the player and diaper quest is 0: [Unique stuff because the pool is full of cum]
		compute showering swimming-pool;
	otherwise:
		if seconds is 0 and auto is 0, say "You [if the player is upright]enter[otherwise]crawl into[end if] the water and begin to wash yourself. ";
		now tracked-semen is 0;
		Wash Salves;
		compute showering;
		allocate 12 + tracked-semen seconds;
		repeat with WB running through water-body-scenery in the location of the player:
			compute showering WB.

To compute showering (WB - a water-body-scenery):
	do nothing.

To compute showering (WB - WoodsScenery01):
	if seconds is 0, say "You [if the player is upright]enter[otherwise]crawl into[end if] the pool and wash yourself with the water. ";
	now tracked-semen is 0;
	Wash Salves;
	if bukkake fetish is 1 or lactation fetish is 1:
		SlimeGirlCheck;
		if the rule failed:
			compute showering;
			allocate 12 + tracked-semen seconds;
	otherwise:
		compute showering;
		allocate 12 + tracked-semen seconds.

To compute showering (WB - DungeonScenery03):
	if bukkake fetish is 1, LakeMonsterCheck tracked-semen.

Understand "shower [something]", "shower under [something]", "clean myself with [something]", "clean me with [something]", "shower in [something]", "shower with [something]", "wash in [something]", "wash with [something]", "bathe in [something]", "bathe with [something]" as showering.

To compute showering:
	wash clothing in water body;
	if the semen coating of face > 0 or the semen coating of hair > 0 or the urine coating of hair > 0 or the semen coating of breasts > 0 or the semen coating of thighs > 0 or the semen coating of belly > 0 or tracked-semen > 0:
		let X be the semen coating of face + the semen coating of hair + the semen coating of breasts + the semen coating of thighs + the semen coating of belly + tracked-semen;
		now the semen coating of face is 0;
		now the semen coating of hair is 0;
		now the urine coating of hair is 0;
		now the semen coating of breasts is 0;
		now the semen coating of belly is 0;
		now the semen coating of thighs is 0;
		say "It washes all the bodily fluids off your body[if tracked-semen > 0] and clothes[end if][if the semen addiction of the player < 10]! That feels better.[otherwise]![end if]";
		now tracked-semen is X;
	otherwise:
		say "The water feels nice as it runs over your [if the largeness of breasts > 4][BreastDesc].[otherwise]face.[end if]";
	if vagina is not actually occupied and the total felchable volume of vagina > 0:
		say "You feel the water rushing underneath your [vagina], and the flow helps clear your womb of the [semen] it is holding.";
		increase tracked-semen by the semen volume of vagina * 2;
		now the semen volume of vagina is 0;
		if the womb volume of vagina > 0 and the pregnancy of the player <= 0:
			increase tracked-semen by the womb volume of vagina * 2;
			WombEmpty the womb volume of vagina;
	if face is temporarily made up:
		say "The water washes all the make up from your face.";
		FaceDown 3.

To wash clothing in water body:
	let quest-only-once be 0;
	repeat with C running through worn clothing:
		if quest-only-once is 0 and the water-soak of C is 0 and the quest of C is swimming-quest:
			now quest-only-once is 1;
			progress quest of swimming-quest;
		if the semen-soak of C > 0:
			increase tracked-semen by the semen-soak of C / 2;
		if the urine-soak of C > 0:
			increase tracked-semen by 1;
		if the milk-soak of C > 0:
			increase tracked-semen by 1;
		if C is diaper, say "[if C is perceived messed and auto is 0]You use the water to thoroughly clean your [C] and your loins[otherwise]Your diaper is quickly filled to its limit with water. It is now very heavy and won't be able to hold any more liquid[end if].";
		clean C;
		if C is fluid vulnerable, Drench C.

Report Showering:
	force inventory-focus redraw; [This forces the inventory window to redraw]
	force clothing-focus redraw. [This forces the clothing window to redraw]

[!<WashSalves>+

Gets rid of all salves

+!]
To wash salves:
	repeat with C running through worn true salves:
		let B be a random body part covered by C;
		if B is body part, say "The water washes the [ShortDesc of C] from your [variable B].";
		destroy C.

Showering ends here.
