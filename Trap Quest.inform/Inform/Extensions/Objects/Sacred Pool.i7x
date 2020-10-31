Sacred Pool by Objects begins here.

The sacred-pool is a water-body-scenery. the sacred-pool is not portable. The printed name of sacred-pool is "[TQlink of item described]sacred-pool[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of sacred-pool is "sap". the sacred-pool has a number called corruption. The sacred-pool is in Mansion25. Understand "sacred", "pool", "sacred pool" as sacred-pool.

To decide which figure-name is the examine-image of (C - sacred-pool):
	decide on Figure of mansion pool room.

To say ExamineDesc of (C - sacred-pool):
	say "A [if the corruption of C < 60]crystal clear pool of water[otherwise if the corruption of C < 120]slightly murky pool of water[otherwise]an opaque pool of what might be water[end if], with a statue of a [if pregnancy fetish is 1]heavily pregnant nude[otherwise]robed[end if] woman kneeling at the far edge. Water is flowing from a small basin in the statue's hands, [if the corruption of C < 60]yet the surface of the water is completely undisturbed.[otherwise if the corruption of C < 120]causing tiny waves to propagate across the water's surface.[otherwise]causing disproportionately large waves to propagate across the water's surface.[end if]".

To compute sacred bathing:
	soak body in water body;
	clean makeup in water body;
	clean creampie in water body;
	soak clothing in water body;
	let leech-done be 0;
	let P be sacred-pool;
	repeat with C running through worn clothing:
		if leech-done is 0:
			if the corruption of P < 60 and C is cursed and C is blessable:
				bless C;
				pollute 15;
				now leech-done is 1;
			otherwise if the corruption of P < 120:
				if C is cursed and C is blessable:
					bless C;
					pollute 15;
					now leech-done is 1;
				otherwise if C is blessed and C is cursable:
					curse C;
					poolpurify 20;
					now leech-done is 1;
			otherwise:
				if C is blessed and C is cursable:
					curse C;
					poolpurify 20;
					now leech-done is 1;
			if leech-done is 1, say "Your [ShortDesc of C] fizzes in the water, and suddenly seems more plain.";
	wash salves.

[Much later: some interaction with slimegirl]
[To compute showering (SP - sacred-pool):
	let B be the number of worn blessed clothing + the number of worn cursed clothing;
	if the corruption of the sacred-pool > 200:
		say "Tendrils of liquid lash out as soon as you break the surface, latching hold of you, dragging you the rest of the way in and pulling you underwater. You are thrashed around violently underneath the surface and abruptly thrown back out.";
		PainUp 1;
		repeat with L running through worn actually cursable clothing:
			curse L;
		IntDown 1;
	otherwise if tracked-semen > 0 or B > 0:
		say "It[if tracked-semen > 0] moves over your skin and clothes, washing all the bodily fluids off your body.[otherwise] moves over your skin, washing away all the bodily fluids off your body![end if][if the semen addiction of the player < 10]That feels better.[end if]";
		if B > 0:
			say "[line break]Your clothes fizz slightly, and when you look, somehow they seem... not as interesting as they were before.";
			repeat with C running through worn clothing:
				if C is cursed:
					if strongCurses is 1, compute new quest of C;
					otherwise bless C;
					increase tracked-semen by 25;
				otherwise if C is blessed:
					curse C;
					decrease tracked-semen by 50;
	otherwise:
		say "The water feels nice as it runs over your [if the largeness of breasts > 4][BreastDesc].[otherwise]face.[end if]";
		if the total felchable volume of vagina + the semen volume of belly + the urine volume of belly + the milk volume of belly > 0:
			let C be 0;
			if vagina is not actually occupied and the player is not pussy protected, now C is 1;
			if asshole is not actually occupied and the player is not ass protected, increase C by 2;
			if C > 0:
				say "You feel a pleasant tingling sensation as a cool [one of]tongue[or]finger[or]hand[at random] seems to reach in and clear out the [semen] trapped inside you.";
			if the remainder after dividing C by 2 is 1:[1 or 3]
				increase tracked-semen by the semen volume of vagina * 2;
				now the semen volume of vagina is 0;
				if the pregnancy of the player is 0:
					increase tracked-semen by the womb volume of vagina * 2;
					WombEmpty the womb volume of vagina;
			if C > 1:
				increase tracked-semen by the semen volume of belly * 2;
				increase tracked-semen by the urine volume of belly * 3;
				decrease tracked-semen by the milk volume of belly;
				empty belly liquids;
	pollute tracked-semen.]

[The player will hear voices calling out to them as they swim. Sometimes, the voices will get louder and an effect will happen.]
To compute swimming in (S - sacred-pool):
	let swimming be 1;
	let swim-turns be 0;
	let dive-count be 0;
	let swim-location be 0;[0 - stairs, 1 - midpoint, 2 - fountain]
	while swimming is 1:
		let L be swim-location;
		let old-dive be dive-count;
		let C be the corruption of S;
		if swim-turns is 0:
			if water-peeing is false, say "You slip into the pool, [if C < 60]disturbing the still surface of the clear water[otherwise if C < 120]introducing even more movement to the relatively peaceful surface of the water[otherwise]adding even more energy to the already choppy surface of the water[end if]";
			say "[if C < 60]You hear a faint sound, like voices whispering[otherwise if C < 120]You hear a faint sound, somewhere between whispering and panting[otherwise]You hear a faint sound much like moaning[end if] as you slowly move away from the edge.";
		otherwise:
			say "You are treading water [if L is 0]close to the edge of the pool, with your toes easily touching[otherwise if L is 1]midway between the pool's edge and the goddess statue. Your feet are a couple inches away from touching[otherwise]in front of the goddess statue. Your feet are several metres away from[end if] the bottom. [if C < 60]The water is crystal clear, and you can easily see your feet if you look down.[otherwise if C < 120]The water is slightly murky, and if you look down you can't see anything below your knees.[otherwise]The water is almost completely opaque, and if you look down, you can't see anything past your chest.[end if]";
		reset multiple choice questions;
		if swim-location is 0, set next numerical response to "get out";
		set next numerical response to "swim in place";
		if swim-location < 2, set next numerical response to "swim toward statue";
		if swim-location > 0, set next numerical response to "swim toward shallow end";
		if swim-location > 0, set next numerical response to "dive";
		say "[line break]What should you do next?";
		compute multiple choice question;
		let CNR be the chosen numerical response;
		if the printed name of CNR is "get out":
			say "You climb out of the pool.";
			now swimming is 0;
		otherwise if the printed name of CNR is "swim in place":
			say "You swim in place.";
			compute easy swimming check in S;
		otherwise if the printed name of CNR is "swim toward shallow end":
			say "You swim toward the shallow end of the pool.";
			compute normal swimming check in S;
			decrease swim-location by 1;
		otherwise if the printed name of CNR is "swim toward statue":
			say "You swim toward the statue at the edge of the pool.";
			compute normal swimming check in S;
			increase swim-location by 1;
		otherwise:
			say "You dive below the surface.";
			compute difficult swimming check in S;
			compute treasure diving in S at swim-location;
			increase dive-count by 1;
			say "[line break]";
		if swimming is 1:
			if old-dive > dive-count and swim-turns > 0:[if the player didn't dive.]
				if (L < 2 and the player is getting very unlucky) or (L is 2 and the player is getting unlucky):[The voices get stronger, and there's an effect.]
					if C < 60 and the player is not proud:
						say "The whispering grows louder, you begin to hear a single, clear word over and over.[line break][first custom style]Shame.[roman type][line break][first custom style]Shame...[roman type][line break][first custom style]SHAME![roman type][line break]The magic of the pool seems to restore a little bit of your dignity, but for some reason, it also gets harder to think.";
						slightDignify;
						IntDown 1;
					otherwise if C < 120 and C >= 60:
						say "The panting and whispering grows louder, and you get a headache as all of them compete for your attention at once. Even after they quiet down again, it's harder to think.";
						IntDown 1;
					otherwise if C >= 120 and the player is not shameless:
						say "The moaning grows louder, and you begin to hear a single, clear word over and over.[line break][first custom style]Fun.[roman type][line break][first custom style]Fuuun![roman type][line break][first custom style]FUN![roman type][line break]The magic of the pool seems to erode a bit of your pride, and for some reason, it also becomes harder to think.";
						slightHumiliate;
						IntDown 1;
				otherwise:[No effect, just voices.]
					say "The muted sounds of [if C < 60]whispering[otherwise if C < 120]panting[otherwise]moaning[end if] continue all around you";
			compute sacred bathing;[Happens every turn]
			pollute tracked-semen;
			now tracked-semen is 0;
			increase swim-turns by 1;
			compute swimming fatigue check in S;
			if delayed fainting is 1, now swimming is 0;
	allocate 12 + (3 * swim-turns) seconds;[after everything]
	display entire map.

To pollute (N - a number):
	increase the corruption of the sacred-pool by N;
	if the corruption of the sacred-pool >= 200:
		now the corruption of the sacred-pool is 999;
		say "[one of]There is a noticeable shift in the air around you, and that reedy 'alive' feeling from inside the mansion slowly creeps in behind you and settles over the area.[or][stopping]";
		repeat with G running through garlic rooms:
			unless G is Mansion23, now G is not garlic;
		if doomed < 5 and doom counter > 0, increase doom counter by 150.

To poolpurify (N - a number):
	if the corruption of sacred-pool < 200:[beyond 200 the corruption becomes permanent.]
		decrease the corruption of sacred-pool by N;
		if the corruption of sacred-pool < 0, now the corruption of sacred-pool is 0.

[

Deep end:
	Token (uncommon)
	Jewellery (rare)
	ectoplasm(depends on corruption level)

]
To compute treasure diving in (WB - sacred-pool) at (L - a number):
	let N be a random number between 1 and 30;
	if L < 2, decrease N by 4;[less chance of jewels]
	let C be the corruption of WB;
	say "[line break]The sounds of the pool disappear briefly. [run paragraph on]";
	if L < 1:[You shouldn't be able to dive at this depth]
		say "You linger in the calming silence for as long as you can before returning to the surface.";
	otherwise if (L is 1 and the player is getting very lucky) or (L is 2 and the player is getting lucky):[The fountain has better loot chance.]
		say "In the resulting quiet, you notice something at the bottom of the pool and quickly swim toward it... [run paragraph on]";
		if N >= 25:
			let J be a random off-stage plentiful accessory;
			if J is accessory and J is actually summonable:
				if N is 35:
					now J is ruby;
				otherwise if N > 27:
					now J is emerald;
				otherwise:
					now J is sapphire;
				set shortcut of J;
				say "[bold type]You find a [ClothingDesc of J]![roman type] It sticks stubbornly to the bottom of the pool, but when you give up and head back to the surface, it magically teleports onto your body.";
				summon J;
			otherwise:
				say "You find a rusted piece of jewellery at the bottom. You leave it behind as you swim back to the surface.";
		otherwise if N > 21:[defiance token]
			let T be a random off-stage defiance token;
			if T is defiance token:
				say "[bold type]You find a defiance token at the bottom![roman type] You take it with you as you swim back to the surface.";
				now T is carried by the player;
			otherwise:
				say "You find a rusted coin. You leave it behind as you swim back to the surface.";
		otherwise if N > 18:[sanity token]
			let T be a random off-stage sanity token;
			if T is sanity token:
				say "[bold type]You find a sanity token at the bottom![roman type] You take it with you as you swim back to the surface.";
				now T is carried by the player;
			otherwise:
				say "You find a rusted coin. You leave it behind as you swim back to the surface.";
		otherwise if N > 15:[fabric token]
			let T be a random off-stage fabric token;
			if T is fabric token:
				say "[bold type]You find a fabric token at the bottom![roman type] You take it with you as you swim back to the surface.";
				now T is carried by the player;
			otherwise:
				say "You find a rusted coin. You leave it behind as you swim back to the surface.";
		otherwise:
			let E be a random off-stage ectoplasm;
			if E is ectoplasm and ((C < 60 and N < 2) or (C >= 60 and C < 120 and N <= 5) or (C >= 120 and N < 10)):
				say "[bold type]You find a floating wad of ectoplasm![roman type] You grab it and take it with you as you go back to the surface.";
				now E is carried by the player;
			otherwise:
				say "It turns out to be a chunk of crushed stone. You return to the surface before you run out of air.";
	otherwise:[TODO: replace with a swim challenge]
		if the player is getting unlucky:
			say "But a moment later, you feel invisible hands begin to move across your body. [if C < 60]They pinch and slap you as you hurry back to the surface.[otherwise if C < 120]They alternate between pinching you and teasing you as you hurry back to the surface.[otherwise]They grope and massage you as you hurry back to the surface.[end if]";
			if C < 60:
				PainUp 2;
			otherwise if C < 120:
				PainUp 1;
				stimulate a random body part;
			otherwise:
				stimulate a random body part times 2;
		otherwise:
			say "You linger in the calming silence for as long as you can before returning to the surface.";

Sacred Pool ends here.
