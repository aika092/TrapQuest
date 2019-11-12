Room Adjectives by Rooms begins here.


[!<Room>@<IsSandy>+

REQUIRES COMMENTING

+@!]
A room can be sandy. A room is usually not sandy. [A sandy room in the Dungeon has a container.]

[!<Room>@<IsDodgy>+

REQUIRES COMMENTING

+@!]
A room can be dodgy. A room is usually not dodgy. [A dodgy room in the Woods has a container.]

[!<Room>@<IsCreaky>+

REQUIRES COMMENTING

+@!]
A room can be creaky. A room is usually not creaky. [A creaky room in the mansion has a container.]

[!<Room>@<IsGarlic>+

REQUIRES COMMENTING

+@!]
A room can be garlic. A room is usually not garlic. [Normal ghosts can't enter these rooms and can't ambush you in them.]

[!<Room>@<HasNoRoof>+

REQUIRES COMMENTING

+@!]
A room can be roofed or no-roof. A room is usually roofed. [Does it have a ceiling.]

[!<Room>@<IsGuest>+

REQUIRES COMMENTING

+@!]
A room can be guest. A room is usually not guest. [A guest room in the Hotel has a wardrobe / minibar / safe container.]

[!<Room>@<IsCorporate>+

REQUIRES COMMENTING

+@!]
A room can be corporate. A room is usually not corporate. [A corporate room in the Hotel has a cabinet / safe container.]

[!<Room>@<IsImportant>+

REQUIRES COMMENTING

+@!]
A room can be important. A room is usually not important. [An important room can contain a key item.]

[!<Room>@<IsSignificant>+

REQUIRES COMMENTING

+@!]
A room can be significant. A room is usually not significant. [A significant room can contain a key item. What does this do?]

[!<Room>@<IsSmoky>+

REQUIRES COMMENTING

+@!]
A room can be smoky. A room is usually not smoky. [A smoky room has pink smoke in it.]

[!<Room>@<IsGluey>+

A room is gluey if it has glue in it.

+@!]
A room can be gluey. A room is usually not gluey. [A gluey room has glue in it.]

[!<Room>@<IsDiscovered>+

REQUIRES COMMENTING

+@!]
A room can be discovered. A room is usually not discovered. [A discovered room has been visited by the player.]

[!<Room>@<IsSeen>+

REQUIRES COMMENTING

+@!]
A room can be seen. A room is usually not seen. [A seen room is every room next to a discovered room.]

[!<Room>@<IsTrappable>+

REQUIRES COMMENTING

+@!]
A room can be trappable or untrappable. A room is usually trappable. [An untrappable room doesn't have traps spawn, e.g. the shop.]


[!<Room>@<IsStamped>+

REQUIRES COMMENTING

+@!]
A room can be stamped. A room is usually not stamped. [Have we placed temporary icons or hyperlink buttons in this room on the map?]
A room can be NPCStamped. A room is usually not NPCStamped. [Have we already calculated the coordinates for NPC icons on this space?]

[!<Room>@<IsMandatory>+

REQUIRES COMMENTING

+@!]
A room can be mandatory. A room is usually not mandatory. [The game will not accept a map configuration that is missing this room.]

[!<Room>@<IsPinned>+

REQUIRES COMMENTING

+@!]
A room can be pinned or unpinned. A room is usually unpinned.

[!<Room>@firstForbiddenDirection:Direction>*

REQUIRES COMMENTING

*@!]
A room has a direction called first forbidden direction. The first forbidden direction of a room is usually up.

[!<Room>@<secondForbiddenDirection:Direction>*

REQUIRES COMMENTING

*@!]
A room has a direction called second forbidden direction. The second forbidden direction of a room is usually up.

[!<Room>@<toiletFacilities:ToiletFacilitiesEnum>*

REQUIRES COMMENTING

*@!]
A room can be use-the-floor, water-bodied, urinals or toilets (this is the toilet facilities property). A room is usually use-the-floor.

Definition: a room is bathroom if it is urinals or it is toilets.

[!<Room>@<IsUnspawnable>+

An unspawnable room cannot have the player stay there upon a map reset, they get moved to a default other location in the region.

+@!]
A room can be unspawnable. A room is usually not unspawnable.

[!<Room>@<IsBossed>+

This is a room that NPCs will never walk into voluntarily. Main use should be for boss rooms. These rooms should be dead-ends with a single exit, otherwise they might get placed as a key connector in a region, which would be bad since NPCs won't walk here, leaving them stuck in one section of the map.

+@!]
A room can be bossed or unbossed. A room is usually unbossed.


Definition: A room is furnished rather than unfurnished if there is furniture in it.


Room Adjectives ends here.

