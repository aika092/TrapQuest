Rinsing by Actions begins here.

Rinsing it in is an action applying to two things.

Check rinsing it in:
	if the second noun is the swimming-pool and diaper quest is 0, say "That's not water..." instead;
	if the second noun is water-body-scenery, try rinsing the noun in water-body instead;
	if the second noun is not water-body and the second noun is not HotelScenery04, say "How would that work exactly?" instead;
	if the noun is body part:
		if the noun is face:
			if the semen coating of the noun is 0 and (the make-up of the noun is 0 or permanent makeup is 1), say "That wouldn't do anything[if permanent makeup is 1], since your make up is permanent[end if]." instead;
		otherwise:
			if the semen coating of the noun + the urine coating of the noun is 0, say "There's no need for that." instead;
	otherwise:
		if the noun is not clothing, say "You can't clean that in the water!" instead;
		if the semen-soak of the noun is 0 and the milk-soak of the noun is 0 and the urine-soak of the noun is 0 and the noun is not glued, say "That is completely clean already." instead;
		if the noun is diaper:
			say "Are you sure you want to wash a diaper? It will just absorb even more liquid!";
			unless the player is consenting:
				say "Action cancelled." instead;
		if the noun is worn, say "You can't wash that out whilst wearing it!" instead;
	if there is a lake monster in the location of the player, say "You can't safely do that with the tentacle monster still lurking in these waters." instead;
	if the player is flying, say "You aren't even touching the ground!" instead;
	if the player is immobile or there is a thing wrangling a body part, say "You're a bit immobile at the moment!" instead.

Rule for supplying a missing noun while rinsing:
	try showering the second noun.

Carry out rinsing it in:
	allocate 6 seconds;
	let T be the second noun;
	repeat with WB running through water-body-scenery in the location of the player:
		now T is WB;
	say RinseFlav of the noun in T;
	if the noun is clothing:
		compute clothesRinsing of the noun in T;
	otherwise if the noun is body part:
		compute bodyRinsing of the noun in T.

To compute clothesRinsing of (C - a clothing) in (T - a thing):
	let S be the semen-soak of C + (the urine-soak of C * 2) - the milk-soak of C;
	if T is DungeonScenery03, increase the semen-sniffing of a random lake monster by the semen-soak of C * 40;
	if T is sacred-pool:
		if C is cursed and the corruption of T < 120:
			increase S by 25;
			bless C;
		if C is blessed and corruption of T >= 60:
			decrease S by 50;
			curse C;
		pollute S;
	clean C;
	Drench C;
	now C is not glued.

To compute bodyRinsing of (B - a body part) in (T - a thing):[TODO: change so it pollutes the pool again]
	if T is DungeonScenery03, increase the semen-sniffing of a random lake monster by the semen coating of B * 40;
	now the semen coating of B is 0;
	if B is hair:
		now the urine coating of hair is 0;
		now the water-drench of hair is the largeness of hair;
		repeat with H running through worn headgear:
			compute clothesRinsing of H in T;
	otherwise if B is face:
		FaceDown 3.

Report Rinsing it in:
	force inventory-focus redraw. [This forces the inventory window to redraw]

To say RinseFlav of (T - a thing) in (P - an object):
	say "You put the [ShortDesc of T] in the water and twist and squeeze it until all the bodily fluids are gone.".

To say RinseFlav of (T - face) in (P - an object):
	say "You plunge your face into the cool and refreshing water. [if the semen coating of face > 0]Soon all the [semen] has been washed away. [end if][if face is temporarily made up]All your make up is soon gone, and you have a plain face once again.[end if]".

To say RinseFlav of (T - hair) in (P - an object):
	say "You lean over and let your hair fall into the cool and refreshing water. [if the semen coating of hair > 0]Soon all the [semen] has been washed away. [otherwise if the urine coating of hair > 0]Soon all the [urine] has been washed away. [end if]".

To say RinseFlav of (B - body part) in (P - an object):
	say "You splash your [B] with handfulls of cool and refreshing water. [if the semen coating of B > 0]Soon all the [semen] has been washed away. [end if]";

To say RinseFlav of (T - a clothing) in (P - sacred-pool):
	say "You put the [noun] in the water and twist and squeeze it until all the bodily fluids are gone. [if T is cursed clothing and the corruption of P < 120]Darkness seems to leak out of the [clothing-material of T] and into the pool.[otherwise if T is blessed clothing and the corruption of P >= 60]The water around it seems to bubble and when you remove it, something about it somehow appears more mundane.[end if]".

Understand "rinse [something] in [something]", "clean [something] in [something]", "wash [something] in [something]" as rinsing it in.

Rinsing ends here.
