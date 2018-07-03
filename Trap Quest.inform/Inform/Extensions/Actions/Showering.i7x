Showering by Actions begins here.

[!<showering:Action>*

REQUIRES COMMENTING

*!]
Showering is an action applying to one thing.

[!<CheckShowering>+

REQUIRES COMMENTING

+!]
Check showering:
	if the bimbo of the player < 14 and there is a lake monster in the location of the player, say "You don't dare go near with the tentacle monster still lurking in these waters.." instead;
	if the player is immobile, say "You're a bit immobile at the moment!" instead;
	if the player is flying, say "You aren't even touching the ground!" instead;
	if the player is in danger, say "You can't do that in the middle of combat!" instead;
	if the noun is not WoodsScenery01 and the noun is not DungeonScenery03 and the noun is not sacred pool, say "How would that work exactly?" instead;
	if there is a worn unmessed diaper:
		say "You feel that it isn't too sensible to get into a body of water when wearing a super-absorbent diaper!  Are you sure you want to? [yesnolink] ";
		unless the player consents, say "Action cancelled." instead;
	if the humiliation of the player > 28000 and the semen addiction of the player > 11 and the number of glazed body parts > 0 and watersports fetish is 1:[We only prevent players from washing themselves if there is another way for them to get clean. i.e. showers of the golden variety rather than normal ones]
		unless there is a lake monster in the location of the player or (there is a worn slimegirl and the hunger of a random slimegirl > 7), say "[second custom style]No way! If I want to get clean, I'll just have someone douse me in [urine]![roman type]" instead.

[!<ReportWhenThePlayerIsInDungeon35AndNewbieTipsIs1>+

REQUIRES COMMENTING

+!]
Report going when the player is in Dungeon35 and newbie tips is 1:
	say "[one of][item style]Newbie tip: A body of water!  If [if diaper quest is 1]your clothes have been soiled[otherwise]you have been stained with bodily fluids[end if], you can use this to your advantage. You can clean individual items of clothing with 'clean X in water' and you can use 'wash in water' to go in yourself, and clean everything you're wearing at the same time[if diaper lover >= 4]. You can even use this to clean up after messing yourself[otherwise if diaper lover > 0]. It may be sensible to remove any diapers first though, unless you want them to instantly get fully waterlogged[end if]![roman type][line break][or][stopping]".

[!<CheckEnteringWoodsScenery01>+

REQUIRES COMMENTING

+!]
Check entering WoodsScenery01:
	try showering the noun instead.

[!<CheckEnteringDungeonScenery03>+

REQUIRES COMMENTING

+!]
Check entering DungeonScenery03:
	try showering the noun instead.

[!<CheckEnteringSacredPool>+

REQUIRES COMMENTING

+!]
Check entering sacred pool:
	try showering the noun instead.

[!<CarryOutShoweringWoodsScenery01>+

REQUIRES COMMENTING

+!]
Carry out showering WoodsScenery01:
	if seconds is 0, say "You [if the player is upright]enter[otherwise]crawl into[end if] the pool and wash yourself with the water. ";
	now tracked-semen is 0;
	Wash Salves;
	if bukkake fetish is 1 or lactation fetish is 1:
		SlimeGirlCheck;
		if the rule failed:
			compute showering;
			now seconds is 12 + tracked-semen;
	otherwise:
		compute showering;
		now seconds is 12 + tracked-semen.

[!<trackedSemen:Integer>+

REQUIRES COMMENTING

+!]
tracked-semen is a number that varies.

[!<CarryOutShoweringDungeonScenery03>+

REQUIRES COMMENTING

+!]
Carry out showering DungeonScenery03:
	if seconds is 0, say "You [if the player is upright]enter[otherwise]crawl into[end if] the lake and wash yourself with the water. ";
	now tracked-semen is 0;
	let X be 0;
	Wash Salves;
	compute showering;
	now seconds is 12 + tracked-semen;
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
			now the womb volume of vagina is 0;
			cancel father material of vagina;
	if the make-up of face > 0 and permanent makeup is 0:
		say "The water washes all the make up from your face.";
		now the make-up of face is 0;


[!<WashClothingInWaterBody>+

REQUIRES COMMENTING

+!]
To wash clothing in water body:
	repeat with C running through worn clothing:
		if the semen-soak of C > 0:
			increase tracked-semen by the semen-soak of C / 2;
		if the urine-soak of C > 0:
			increase tracked-semen by 1;
		if the milk-soak of C > 0:
			increase tracked-semen by 1;
		if C is diaper, say "[if C is messed]You use the water to thoroughly clean your [C] and your loins[otherwise]Your diaper is quickly filled to its limit with water. It is now very heavy and won't be able to hold any more liquid[end if].";
		clean C;
		if C is fluid vulnerable, now the water-soak of C is the soak-limit of C.

[!<DecideWhichNumberIsTheSwimmingModifierOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the swimming modifier of the player:
	let R be 0;
	repeat with O running through worn swimwear clothing:
		increase R by 10;
		increase R by the magic-modifier of O * 3;
	decide on R.

[!<WashSalves>+

REQUIRES COMMENTING

+!]
To wash salves:
	repeat with C running through worn true salves:
		let B be a random body part covered by C;
		if B is body part, say "The water washes the [ShortDesc of C] from your [variable B].";
		destroy C.

Showering ends here.

