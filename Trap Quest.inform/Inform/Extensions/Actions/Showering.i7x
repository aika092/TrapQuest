Showering by Actions begins here.

[lets us know how much fluids are being washed into the water.]
tracked-semen is a number that varies.

[!<showering:Action>*

Player putting their whole body into the water.

*!]
Showering is an action applying to one thing.

Check showering:
	if the noun is not water-body and the location of the player is water-bodied, try showering water-body instead;
	if the bimbo of the player < 14 and there is a lake monster in the location of the player and auto is 0, say "You don't dare go near with the tentacle monster still lurking in these waters." instead;
	if the player is immobile, say "[if auto is 0]You're a bit immobile at the moment![end if]" instead;
	if the player is flying, say "[if auto is 0]You aren't even touching the ground![end if]" instead;
	if the player is in danger and auto is 0, say "You can't do that in the middle of combat!" instead;
	if the noun is not water-body and the noun is not water-body-scenery, say "[if auto is 0]How would that work exactly?[end if]" instead;
	if hot-tub is in the location of the player:
		let M be a random teacher in the location of the player;
		if M is teacher:
			say "You tentatively make a slight move towards the hot tub, but [NameDesc of M] shakes [his of M] head. It seems like you're not allowed in right now. You'll have to wait until you're not being supervised..." instead;
	if there is a worn perceived unmessed diaper and auto is 0:
		say "You feel that it isn't too sensible to get into a body of water when wearing a super-absorbent diaper! Are you sure you want to? ";
		unless the player is in agreement, say "Action cancelled." instead;
	if watersports fetish is 1 and the humiliation of the player > HUMILIATION-DISGRACED and the semen addiction of the player > 11 and the number of glazed body parts > 0 and auto is 0:[We only prevent players from washing themselves if there is another way for them to get clean. i.e. showers of the golden variety rather than normal ones]
		unless there is a lake monster in the location of the player or (slimegirl is worn and the hunger of slimegirl > 7), say "[second custom style]No way! If I want to get clean, I'll just have someone douse me in [urine]![roman type]" instead.

Report going when the player is in Dungeon35 and newbie tips is 1:
	say "[one of][newbie style]Newbie tip: A body of water! If [if diaper quest is 1]your clothes have been soiled[otherwise]you have been stained with bodily fluids[end if], you can use this to your advantage. You can clean individual items of clothing with 'clean X in water' and you can use 'swim in water' to go in yourself, and clean everything you're wearing at the same time[if diaper messing >= 4]. You can even use this to clean up after messing yourself[otherwise if diaper lover > 0]. It may be sensible to remove any diapers first though, unless you want them to instantly get fully waterlogged[end if]![roman type][line break][or][stopping]".

Check entering water-body:
	try showering water-body instead.

Check entering WoodsScenery01:
	try showering water-body instead.

Check entering DungeonScenery03:
	try showering water-body instead.

Check entering sacred-pool:
	try showering water-body instead.

Check entering swimming-pool:
	try showering water-body instead.

Check entering hot-tub:
	try showering water-body instead.

Carry out showering:
	now tracked-semen is 0;
	if the noun is water-body:
		let W be a random water-body-scenery in the location of the player;
		if W is water-body-scenery:
			compute swimming in W;
		otherwise:
			say "Something went wrong, there's nowhere for the player to go swimming here. Please report this bug.";
	otherwise:
		compute swimming in the noun;
	trigger swim-wisp-quest.

Understand "shower [something]", "shower under [something]", "clean myself with [something]", "clean me with [something]", "shower in [something]", "shower with [something]", "wash in [something]", "wash with [something]", "bathe in [something]", "bathe with [something]", "bathe in [something]", "swim in [something]" as showering.

Report Showering:
	force inventory-focus redraw; [This forces the inventory window to redraw]
	force clothing-focus redraw. [This forces the clothing window to redraw]

[Old showing function. compute bathing used to be called compute showering.]
[if WoodsScenery01 is in the location of the player: [Unique stuff because of slimegirl]
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
		compute showering WB.]

To compute swimming in (WB - a water-body-scenery):
	if seconds is 0, say "You [if the player is upright]enter[otherwise]crawl into[end if] the pool and wash yourself with the water. ";
	compute bathing;
	allocate 12 + (tracked-semen) seconds.

To compute bathing:
	soak body in water body;
	clean makeup in water body;
	clean creampie in water body;
	soak clothing in water body;
	wash salves.

To soak body in water body:
	let X be tracked-semen;
	repeat with B running through body parts:[clean off body parts]
		let R be a random number between 2 and 4;
		if the water-drench of hair < the largeness of hair, increase the water-drench of hair by R;
		if the water-drench of hair > the largeness of hair, now the water-drench of hair is the largeness of hair;
		if the semen coating of B > 0 or (B is hair and the urine coating of hair > 0):
			while R > 0 and (the semen coating of B > 0 or (B is hair and the urine coating of hair > 0)):
				decrease R by 1;
				if B is hair and the urine coating of hair > 0, decrease the urine coating of hair by 1;
				otherwise decrease the semen coating of B by 1;
				increase tracked-semen by 1;
	if X < tracked-semen, say "The water feels nice as it washes some fluids off your body.";
	otherwise say "The water feels nice as it runs over your [if the largeness of breasts > 4][BreastDesc].[otherwise]body.[end if]";

To clean makeup in water body:
	if face is temporarily made up:[clean off makeup]
		FaceDown 1;
		say "[if face is not temporarily made up]The rest of[otherwise]Some[end if] of your makeup is washed away.";
		increase tracked-semen by 2.

To clean creampie in water body:
	if vagina is not actually occupied and the total felchable volume of vagina > 0:
		let V be the semen volume of vagina;
		let W be the womb volume of vagina;
		if the pregnancy of the player > 0, now W is 0;
		say "The movement of the water underneath you helps clear your [if V > 0][vagina][otherwise]womb[end if] of some of the [semen] it is holding.";
		if V > 0:
			PussyEmpty 2;
		if W > 0:
			WombEmpty 2;
		increase tracked-semen by (V - the semen volume of vagina) + (W - the womb volume of vagina);[ensure we track as much semen as we washed out]

Definition: a clothing is watertight: decide no. [does it block all water from entering. more than just waterproof, it must also be sealed to the skin]

To soak clothing in water body:
	let quest-only-once be 0;
	let X be tracked-semen;[above we used X to see if we cleaned the player's body. Now we're using it to see if we cleaned any clothes.]
	repeat with C running through worn clothing: [now handle clothing]
		unless C is watertight or the coverer of C is watertight:
			if C is a growing silicone dress:
				transform C into bimbo monokini;
			otherwise if C is somewhat fluid vulnerable:
				if quest-only-once is 0, now quest-only-once is 1;
				let R be a random number between 2 and 4;[because clothing has a higher capacity than the player's body, it takes longer to "soak" clean.]
				if diaper quest is 1, now R is 999; [we don't do this slow cleaning nonsense in DQ]
				let S be the semen-soak of C + the urine-soak of C + the milk-soak of C;
				while R > 0 and S > 0:[Clean off everything if S is already 0, then we go on to the next clothing.]
					if the urine-soak of C > 0:
						decrease the urine-soak of C by 1;
					otherwise if the milk-soak of C > 0:
						decrease the milk-soak of C by 1;
					otherwise if the semen-soak of C > 0:
						decrease the semen-soak of C by 1;
					decrease S by 1;
					decrease R by 1;
					increase tracked-semen by 1;
				if C is diaper:
					if C is perceived messed and auto is 0, say "You allow the water to thoroughly clean your [C].";
					otherwise say "The [C] quickly soaks up the water.";
					if the soak-limit of C is the water-soak of C, say "It is now very heavy and won't be able to hold any more liquid.";
				otherwise if the water-soak of C < the soak-limit of C:
					say "Your [C] gets soaked with water.";
			Drench C;
			if C is knickers, MessSet C to 0;
	if quest-only-once is 1, progress quest of swimming-quest.

[TODO: semen cleaning doesn't happen all at once.]
[To compute fast bathing:
	wash clothing in water body;
	if the semen coating of face > 0 or the semen coating of hair > 0 or the urine coating of hair > 0 or the semen coating of breasts > 0 or the semen coating of thighs > 0 or the semen coating of belly > 0 or tracked-semen > 0:
		let X be the semen coating of face + the semen coating of hair + the semen coating of breasts + the semen coating of thighs + the semen coating of belly + tracked-semen;
		now the semen coating of face is 0;
		now the semen coating of hair is 0;
		now the urine coating of hair is 0;
		now the semen coating of breasts is 0;
		now the semen coating of belly is 0;
		now the semen coating of thighs is 0;
		say "The water washes all the bodily fluids off your body[if tracked-semen > 0] and clothes[end if][if the semen addiction of the player < 10]! That feels better.[otherwise]![end if]";
		now tracked-semen is X;
	otherwise:
		say "The water feels nice as it runs over your [if the largeness of breasts > 4][BreastDesc].[otherwise]face.[end if]";
	if vagina is not actually occupied and the total felchable volume of vagina > 0:
		let V be the semen volume of vagina;
		let W be the womb volume of vagina;
		if the pregnancy of the player > 0, now W is 0;
		say "You feel the movement of the water underneath you helps clear your [if V > 0][vagina][otherwise]womb[end if] of some of the [semen] it is holding.";
		if V > 0:
			increase tracked-semen by 4;
			PussyEmpty 2;
		if W > 0:
			increase tracked-semen by 6;
			WombEmpty 2;
	if face is temporarily made up:
		say "The water washes all the make up from your face.";
		FaceDown 3;
	Wash Salves;]
	[womb cum increases tracked semen faster because it's steeped in your pheromones or something. I don't know, whatever.]

[To wash clothing in water body:
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
		if C is fluid vulnerable, Drench C.]

[!<WashSalves>+

Gets rid of all salves

+!]
To wash salves:
	repeat with C running through worn true salves:
		let B be a random body part covered by C;
		if B is body part, say "The water washes the [ShortDesc of C] from your [variable B].";
		destroy C.

[How hard is it for the player to swim. High = bad, low = good]
To decide which number is the swimming challenge of the player:
	[This is what makes it more difficult for the player to stand up.]
	let W be 3;
	repeat with C running through worn wearthing:
		if C is swimming themed:
			if C is clothing:
				decrease W by 2 + the magic-modifier of C;
				if C is swimsuit, decrease W by 1;
			otherwise:
				decrease W by 1;
		otherwise if C is clothing and C is not fluid immune:
			increase W by the total-soak of C / 5; [Wearing soaked clothing will make your swimming worse.]
	if the player is wrist bound, increase W by 5;
	if the player is wrist bound behind, increase W by 10;
	if the player is ankle bound, increase W by 10;
	if acolyte-chestpiece is worn, increase W by 40;[You really don't want to swim in this]
	decide on W.

[Used to determine what the player finds when diving. L is the players "location" in the water body. If not needed, just leave as 0]
To compute treasure diving in (WB - a thing) at (L - a number):
	do nothing.

[for swimming in place]
To compute easy swimming check in (WB - a thing):
	let C be the swimming challenge of the player;
	FatigueUp C;
	increase the fat-burning of the player by 10;
	increase the fat-burning of hips by 5;
	increase the fat-burning of arms by 7;
	compute arm fat burning;
	compute hip fat burning.

[For moving around]
To compute normal swimming check in (WB - a thing):
	let C be the swimming challenge of the player;
	FatigueUp C * 2;
	increase the fat-burning of the player by 30;
	increase the fat-burning of hips by 20;
	increase the fat-burning of arms by 10;
	compute arm fat burning;
	compute hip fat burning.

[Mainly for diving]
To compute difficult swimming check in (WB - a thing):
	let C be the swimming challenge of the player;
	FatigueUp C * 3;
	increase the fat-burning of the player by 50;
	increase the fat-burning of hips by 30;
	increase the fat-burning of arms by 30;
	compute arm fat burning;
	compute hip fat burning.

To compute swimming fatigue check in (WB - a thing):
	if the fatigue of the player >= the buckle threshold of the player:[You're too tired, and you faint.]
		say "You're too tired, and strength leaves your limbs as you slowly sink beneath the surface. You pass out.";
		if the location of the player is School20:
			repeat with M running through monsters in the location of the player:
				now M is in School19;[Kick the school npc's out so they don't get pulled in by the fainting code]
		now delayed fainting is 1;
		now the fainting reason of the player is 23;
	otherwise:
		describe swimming fatigue.

To describe swimming fatigue:
	let B be the buckle threshold of the player;
	let V be the very tired threshold of the player;
	let T be the tired threshold of the player;
	if the fatigue of the player >= B:
		say "You have no more energy to swim, and it's starting to take a lot of effort to keep your head above the surface. You have to get out soon!";
	otherwise if the fatigue of the player >= V:
		say "You're almost out of energy, and keeping afloat is starting to take a lot of work. You should get out soon.";
	otherwise if the fatigue of the player >= T:
		say "You start to feel more and more tired as you continue to swim. You're running out of energy!";
	otherwise if the fatigue of the player >= T / 2:
		say "You have plenty of energy left for swimming.";
	otherwise:
		say "You feel totally energetic, and ready to keep swimming.";

Showering ends here.
