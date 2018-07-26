Sacred Pool by Objects begins here.


The sacred pool is a thing. the sacred pool is not portable. The printed name of sacred pool is "[TQlink of item described]sacred pool[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of sacred pool is "sap". the sacred pool has a number called corruption. Instead of entering sacred pool, try showering sacred pool. the sacred pool has a number called charge. the charge of the sacred pool is usually 0. The sacred pool is in Mansion25. The description of sacred pool is usually "[PoolDesc]". Understand "water" as sacred pool.

To say PoolDesc:
	[if images visible is 1, display figure of sacred pool;]
	say "A [if the corruption of the sacred pool < 90]crystal clear pool of water[otherwise if the corruption of the sacred pool < 180]slightly murky pool of water[otherwise]an opaque pool of what might be water[end if], rippling gently as a stone statue on the far edge gently trickles more in from a small basin cradled in her hands.".

Carry out showering sacred pool:[Much later: some interaction with slimegirl; Soon: bad effect when pool is corrupted]
	now tracked-semen is 0;
	if seconds is 0, say "You [if the player is upright]walk up to the pool[otherwise]crawl up to the pool[end if] and sink into the [if the corruption of the sacred pool < 90]sparkling[otherwise if the corruption of the sacred pool > 200]misty[otherwise]murky[end if] waters.";
	let S be 0;
	let B be the number of worn blessed clothing + the number of worn cursed clothing;
	[Wash Salves;]
	wash clothing in water body;
	if the corruption of the sacred pool > 200:
		say "Tendrils of liquid lash out as soon as you break the surface, latching hold of you, dragging you the rest of the way in and pulling you underwater. You are thrashed around violently underneath the surface and abruptly thrown back out.";
		repeat with L running through not cursed clothing worn by the player:
			curse L;
		IntDown 1;
		DelicateUp 1;
	otherwise if the number of glazed body parts > 0 or tracked-semen > 0 or B > 0:
		now S is the semen coating of face + the semen coating of breasts + the semen coating of thighs + the semen coating of belly + tracked-semen;
		now the semen coating of face is 0;
		now the semen coating of breasts is 0;
		now the semen coating of belly is 0;
		now the semen coating of thighs is 0;
		say "It[if tracked-semen > 0] moves over your skin and clothes, washing all the bodily fluids off your body.[otherwise] moves over your skin, washing away all the bodily fluids off your body![end if][if the semen addiction of the player < 10]That feels better.[end if]";
		if B > 0:
			say "[line break]Your clothes fizz slightly, and when you look, somehow they seem...not as interesting as they were before.";
			repeat with C running through worn clothing:
				if C is cursed:
					bless C;
					increase S by 25;
				if C is blessed:
					curse C;
					decrease S by 50;
	otherwise:
		say "The water feels nice as it runs over your [if the largeness of breasts > 4][BreastDesc].[otherwise]face.[end if]";
		if the total felchable volume of vagina + the semen volume of belly + the urine volume of belly + the milk volume of belly > 0:
			let C be 0;
			if vagina is not actually occupied and the player is not pussy protected, now C is 1;
			if asshole is not actually occupied and the player is not ass protected, increase C by 2;
			if C > 0:
				say "You feel a pleasant tingling sensation as a cool [one of]tongue[or]finger[or]hand[at random] seems to reach in and clear out the [semen] trapped inside you.";
			if the remainder after dividing C by 2 is 1:[1 or 3]
				increase S by the semen volume of vagina * 2;
				now the semen volume of vagina is 0;
				if the pregnancy of the player is 0:
					increase S by the womb volume of vagina * 2;
					now the womb volume of vagina is 0;
					cancel father material of vagina;
			if C > 1:
				increase S by the semen volume of belly * 2;
				increase S by the urine volume of belly * 3;
				decrease S by the milk volume of belly; 
				now the semen volume of belly is 0;
				now the urine volume of belly is 0;
				now the milk volume of belly is 0;
	pollute S;
	now seconds is 12.

To pollute (N - a number):
	increase the corruption of the sacred pool by N;
	if the corruption of the sacred pool >= 200:
		now the corruption of the sacred pool is 999;
		say "[one of]There is a noticeable shift in the air around you, and that reedy 'alive' feeling from inside the mansion slowly creeps in behind you and settles over the area.[or][stopping]";
		repeat with G running through garlic rooms:
			unless G is Mansion23, now G is not garlic;
		if doomed < 5:
			increase doom counter by 150.

Sacred Pool ends here.

