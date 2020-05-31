Recovering Rooms by Fainting begins here.

To totally clean (R - a room):
	now the semen-puddle of R is 0;
	now the urine-puddle of R is 0;
	now the milk-puddle of R is 0;
	now the sprinkle-puddle of R is 0;

[!<RecoverRooms>+

REQUIRES COMMENTING

+!]
To Recover Rooms:
	repeat with R running through labyrinth rooms:
		now Neighbour Finder is R;
		unless R is the location of the player, totally clean R;
		unless R is the location of the player or R is Dungeon12, now R is not smoky; [All rooms except the royal chambers lose pink smoke]
		unless R is Dungeon10 or R is Dungeon11 or R is Dungeon12 or R is Dungeon32: [The first 4 rooms don't change location or configuration, everything else is reset]
			now the grid position of R is <0,0,0>;
			repeat with D running through N-viable directions:
				change the D exit of R to Solid Rock;
			now R is not discovered;
			now R is not seen;
			now R is unvisited;
		if the player is not in Dungeon10 and the player is not in Dungeon11 and the player is not in Dungeon12 and the player is not in Dungeon32: [If the player is not in the dungeon, we still hide the map location of these locations.]
			now Dungeon10 is not discovered;
			now Dungeon10 is not seen;
			now Dungeon10 is unvisited;
			now Dungeon11 is not discovered;
			now Dungeon11 is not seen;
			now Dungeon11 is unvisited;
			now Dungeon12 is not discovered;
			now Dungeon12 is not seen;
			now Dungeon12 is unvisited;
			now Dungeon32 is not discovered;
			now Dungeon32 is not seen;
			now Dungeon32 is unvisited;
	repeat with R running through jungle rooms: [Every room in the woods is reset]
		now Neighbour Finder is R;
		now R is not discovered;
		unless R is the location of the player, totally clean R;
		now the grid position of R is <0,0,0>;
		repeat with D running through N-viable directions:
			change the D exit of R to Solid Rock;
	repeat with R running through modern rooms:
		now Neighbour Finder is R;
		now R is not discovered;
		unless R is the location of the player, totally clean R;
		now the grid position of R is <0,0,0>;
		repeat with D running through N-viable directions:
			change the D exit of R to Solid Rock;
	repeat with R running through haunted rooms:
		now Neighbour Finder is R;
		unless R is the location of the player, totally clean R;
		[if R is Mansion00:
			if the location of the player is R, now the player is in Mansion01;]
		now the grid position of R is <0,0,0>;
		repeat with D running through N-viable directions:
			change the D exit of R to Solid Rock;
		if R is the location of the player, now the slime-puddle of R is 0;
	repeat with F running through on-stage furniture:
		unless F is permanent fixture, destroy F;
	[Now we need to make the three non-west exits to the hallway at the start of the game available for connections again]
	change the north exit of Dungeon32 to Solid Rock;
	change the east exit of Dungeon32 to Solid Rock;
	change the south exit of Dungeon32 to Solid Rock;
	now Terra Incognita is open;
	if crashdebug is 1:
		say "Room Checkpoint 1.";
	Set Up The Dungeon;
	if crashdebug is 1:
		say "Room Checkpoint 2.";
	if the player is not in the dungeon or dungeon portal is in Dungeon10, Set Up The Woods;
	if crashdebug is 1:
		say "Room Checkpoint 3.";
	if playerRegion is Hotel or dungeon portal is in Dungeon10, Set Up The Hotel;
	if crashdebug is 1:
		say "Room Checkpoint 4.";
	if playerRegion is Mansion, Set Up The Mansion;
	if crashdebug is 1:
		say "Room Checkpoint 5.".

Recovering Rooms ends here.
