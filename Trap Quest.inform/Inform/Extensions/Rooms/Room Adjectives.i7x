Room Adjectives by Rooms begins here.

A room can be sandy. A room is usually not sandy. [A sandy room in the Dungeon has a container.]

A room can be dodgy. A room is usually not dodgy. [A dodgy room in the Woods has a container.]

A room can be creaky. A room is usually not creaky. [A creaky room in the mansion has a container.]

A room can be ungarlic, garlic, or garlic-waned. [Normal ghosts can't enter these rooms and can't ambush you in them.]

A room can be roofed or no-roof. A room is usually roofed. [Does it have a ceiling.]

A room can be guest. A room is usually not guest. [A guest room in the Hotel has a wardrobe / minibar / safe container.]

A room can be corporate. A room is usually not corporate. [A corporate room in the Hotel has a cabinet / safe container.]

A room can be important. A room is usually not important. [An important room can contain a key item.]

A room can be significant. A room is usually not significant. [A significant room can contain a key item. What does this do?]

A room can be smoky. A room is usually not smoky. [A smoky room has pink smoke in it.]

[!<Room>@<IsGluey>+

A room is gluey if it has glue in it.

+@!]
A room can be gluey. A room is usually not gluey. [A gluey room has glue in it.]

A room can be discovered. A room is usually not discovered. [A discovered room has been visited by the player.]

A room can be seen. A room is usually not seen. [A seen room is every room next to a visited room.]

A room can be trappable or untrappable. A room is usually trappable. [An untrappable room doesn't have traps spawn, e.g. the shop.]

A room can be mandatory. A room is usually not mandatory. [The game will not accept a map configuration that is missing this room.]

A room can be pinned or unpinned. A room is usually unpinned.

A room has a direction called first forbidden direction. The first forbidden direction of a room is usually up.

A room has a direction called second forbidden direction. The second forbidden direction of a room is usually up.

A room can be use-the-floor, water-bodied, urinals or toilets (this is the toilet facilities property). A room is usually use-the-floor.

Definition: a room is bathroom:
	if it is urinals or it is toilets, decide yes;
	decide no.

[!<Room>@<IsUnspawnable>+

An unspawnable room cannot have the player stay there upon a map reset, they get moved to a default other location in the region.

+@!]
A room can be unspawnable. A room is usually not unspawnable.

[!<Room>@<IsBossed>+

This is a room that NPCs will never walk into voluntarily. Main use should be for boss rooms. These rooms should be dead-ends with a single exit, otherwise they might get placed as a key connector in a region, which would be bad since NPCs won't walk here, leaving them stuck in one section of the map.

+@!]
A room can be bossed or unbossed. A room is usually unbossed.

Definition: a room is furnished rather than unfurnished:
	if there is furniture in it, decide yes;
	decide no.

[This adds to movement hindrance]
To decide which number is the obstacle-hindrance of (R - a room):
	decide on 0.
To decide which text is ObstacledDesc of (R - a room):
	decide on "Moving across the [location of the player] delays you slightly.".

Definition: a room is guarded:
	if shopkeeper is in it and shopkeeper is awake and shopkeeper is threatening and (shopkeeper is interested or the player is not stealthy), decide yes;
	decide no.

Room Adjectives ends here.
