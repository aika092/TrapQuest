Fae Mushroom by Food begins here.


A fae mushroom is a kind of food. The printed name of fae mushroom is "[TQlink of item described]fae mushroom[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of fae mushroom is "[TQlink of item described]fae mushrooms[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of fae mushroom is "mu". Understand "fm" as fae mushroom. There are 8 fae mushroom. Figure of fae mushroom is the file "Items/Collectibles/mushroom1.png".

To decide which figure-name is the examine-image of (C - a fae mushroom):
	decide on figure of fae mushroom.

To say ExamineDesc of (C - a fae mushroom):
	say "A small pink and green mushroom growing in the woods.".

To decide which number is the crafting key of (C - a fae mushroom):
	decide on 27.

To say ShortDesc of (C - a fae mushroom):
	say "fae mushroom".

A game universe initialisation rule:
	let N be 1;
	repeat with F running through fae mushroom:
		now the text-shortcut of F is the substituted form of "fm[N]";
		increase N by 1.

Definition: a fae mushroom is flower themed: decide yes.

MushroomEating is an action applying to one thing.
Check mushroomeating:
	if the player is trap stuck or a random lake monster is penetrating an orifice, say "For some reason, something inside of you is telling you that this would be a horrible idea." instead.
Carry out mushroomeating:
	allocate 6 seconds;
	let target-teleport be Dungeon12;
	if playerRegion is Dungeon:
		while target-teleport is Dungeon12 or target-teleport is the location of the player:
			now target-teleport is a random placed labyrinth room;
	if playerRegion is Woods:
		while target-teleport is Dungeon12 or target-teleport is the location of the player:
			now target-teleport is a random placed jungle room;
	if playerRegion is Hotel:
		while target-teleport is Dungeon12 or target-teleport is the location of the player:
			now target-teleport is a random placed modern room;
	if playerRegion is Mansion:
		while target-teleport is Dungeon12 or target-teleport is the location of the player:
			now target-teleport is a random placed haunted room;
	say "As you eat the mushroom, you feel yourself sucked through a portal. The scenery around you slightly changes, and you are now in [printed name of target-teleport]!";
	teleport to target-teleport;
	if egg laying fetish is 1 and playerRegion is Woods and rubber bunny ears is off-stage and rubber bunny ears is actually summonable:
		say "[bold type]A latex cream hood with a large pair of rubber bunny ears on top appears on your head![roman type][line break]";
		summon rubber bunny ears cursed;
	remove the noun from play;
	StomachFoodUp 1;
	if weight gain fetish is 1:
		if the flesh volume of belly < 10, increase the flesh volume of belly by 1.


Fae Mushroom ends here.

