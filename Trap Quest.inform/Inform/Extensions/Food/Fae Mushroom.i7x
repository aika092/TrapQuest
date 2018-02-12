Fae Mushroom by Food begins here.


A fae mushroom is a kind of food. The printed name of fae mushroom is "[TQlink of item described]fae mushroom[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of fae mushroom is "[TQlink of item described]fae mushrooms[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of fae mushroom is "mu". Understand "fm" as fae mushroom. The description of fae mushroom is "A small pink and green mushroom growing in the woods.". There are 8 fae mushroom.

To decide which number is the crafting key of (C - a fae mushroom):
	decide on 27.

To say ShortDesc of (C - a fae mushroom):
	say "fae mushroom".

MushroomEating is an action applying to one thing.
Check mushroomeating:
	if the player is trap stuck or a random lake monster is penetrating an orifice, say "For some reason, something inside of you is telling you that this would be a horrible idea." instead.
Carry out mushroomeating:
	now seconds is 6;
	let target-teleport be Dungeon12;
	if the player is in the Dungeon:
		while target-teleport is Dungeon12 or target-teleport is the location of the player:
			now target-teleport is a random placed labyrinth room;
	if the player is in the Woods:
		while target-teleport is Dungeon12 or target-teleport is the location of the player:
			now target-teleport is a random placed jungle room;
	if the player is in the Hotel:
		while target-teleport is Dungeon12 or target-teleport is the location of the player:
			now target-teleport is a random placed modern room;
	if the player is in the Mansion:
		while target-teleport is Dungeon12 or target-teleport is the location of the player:
			now target-teleport is a random placed haunted room;
	say "As you eat the mushroom, you feel yourself sucked through a portal. The scenery around you slightly changes, and you are now in [printed name of target-teleport]!";
	teleport to target-teleport;
	remove the noun from play;
	StomachFoodUp 1;
	if weight gain fetish is 1:
		if the flesh volume of belly < 10, increase the flesh volume of belly by 1.


Fae Mushroom ends here.

