Sacred Pool by Objects begins here.


The sacred pool is a water-body-scenery. the sacred pool is not portable. The printed name of sacred pool is "[TQlink of item described]sacred pool[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of sacred pool is "sap". the sacred pool has a number called corruption. the sacred pool has a number called charge. the charge of the sacred pool is usually 0. The sacred pool is in Mansion25.

To decide which figure-name is the examine-image of (C - sacred pool):
	decide on Figure of mansion pool room.

To say ExamineDesc of (C - sacred pool):
	say "A [if the corruption of C < 90]crystal clear pool of water[otherwise if the corruption of C < 180]slightly murky pool of water[otherwise]an opaque pool of what might be water[end if], rippling gently as a stone statue on the far edge gently trickles more in from a small basin cradled in her hands. The statue depicts a [if pregnancy fetish is 1]heavily pregnant nude[otherwise]robed[end if] woman, cradling a small basin of water from the pool. She is bowing slightly, allowing water from the basin to slowly trickle into the pool.".

To compute showering (SP - sacred pool):[Much later: some interaction with slimegirl; Soon: bad effect when pool is corrupted]
	let B be the number of worn blessed clothing + the number of worn cursed clothing;
	if the corruption of the sacred pool > 200:
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
					bless C;
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
	pollute tracked-semen.

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

