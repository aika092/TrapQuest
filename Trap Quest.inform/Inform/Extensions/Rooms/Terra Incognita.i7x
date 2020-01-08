Terra Incognita by Rooms begins here.


[Like "Solid Rock", "Terra Incognita" is a room which is never visited. The rule is that a maze exit leads to TI if and only if it would take one to a grid position which is still inside the boundaries of the maze, but at which no room has yet been located. All exits in the maze lead either to Solid Rock (no way through), Terra Incognita (we try extending the maze if this exit is taken) or another room in the maze.]

[!<TerraIncognita>@

REQUIRES COMMENTING

@inherits <Room>

@!]
Terra Incognita is a room.

[!<EgressRelation>+

REQUIRES COMMENTING - may also require a new comment style for relational rules

+!]
Egress relates a room (called the place) to a direction (called that way) when the room that way from the place is a room.
The verb to exit (it exits) implies the egress relation.

[!<PositionNewRoomAtGridRef>+

REQUIRES COMMENTING

+!]
To position (new room - a room) at (grid ref - a spatial coordinate):
	now the grid position of the new room is the grid ref;
	if debugmode is 1, say "[line break]Grid position of [new room] is now [grid position of new room][line break]";
	repeat with this way running through compass vectorial directions:
		let the further position be the vector sum of the grid ref and the vector of this way;
		if the further position is not <0,0,0>:
			let the further room be the room at the further position;
			if debugmode is 1, say "[line break]Grid ref is [grid ref]. The further position is [further position]. The further room is [further room].";
			[unless the further room is Solid Rock:]
			now Neighbour Finder is new room;
			if this way is wanted:
				if debugmode is 1, say "[line break][this way] is wanted, rooms should now connect up.";
				let the reverse way be the opposite of this way;
				change this way exit of the new room to the further room;
				change the reverse way exit of the further room to the new room;
				if debugmode is 1, say "[line break]The room [this way] from [new room] is [the room this way from new room].";
			otherwise:
				if debugmode is 1, say "[this way] connection rejected by [new room].".


[Terra Incognita is said to be "open" if there are still maze rooms left to discover, and "closed" if they have all been played, so that the maze is exhausted.]

[!<TerraIncognita>@<IsOpen>+

REQUIRES COMMENTING

+@!]
Terra Incognita can be open or closed. Terra Incognita is open.


[!<Room>@<IsAcceptable>+

REQUIRES COMMENTING

+@!]
Definition: A room is acceptable if it is unplaced. [and its minimum level = the current maze level]

[!<Room>@<IsActuallyAcceptable>+

REQUIRES COMMENTING

+@!]
Definition: A room is actually acceptable if it is acceptable and it is open and ready.

[!<doorFinder:SpatialCoordinate>*

REQUIRES COMMENTING

*!]
Door Finder is a spatial coordinate that varies.

[!<DirectionIsDesired>+

REQUIRES COMMENTING

+!]
Definition: A direction (called D) is desired:
	if D is empty puzzle socket, decide yes;
	decide no.

[Here we look at a spatial coordinate and we look at the rooms around it. And if our new room we want to put in the spatial coordinate wants doors in certain other directions, we check that rooms already there are happy with that.]
[!<Room>@<IsOpenAndReady>+

REQUIRES COMMENTING

+@!]
Definition: A room (called R) is open and ready:
	let NR be the room at the vector sum of Door Finder and the vector of north;
	let ER be the room at the vector sum of Door Finder and the vector of east;
	let SR be the room at the vector sum of Door Finder and the vector of south;
	let WR be the room at the vector sum of Door Finder and the vector of west;
	if NR is not solid rock:
		if S part of the shape of NR is 0 and N part of the shape of R is 1, decide no;
		if S part of the shape of NR is 1 and N part of the shape of R is 0, decide no;
	if ER is not solid rock:
		if W part of the shape of ER is 0 and E part of the shape of R is 1, decide no;
		if W part of the shape of ER is 1 and E part of the shape of R is 0, decide no;
	if SR is not solid rock:
		if N part of the shape of SR is 0 and S part of the shape of R is 1, decide no;
		if N part of the shape of SR is 1 and S part of the shape of R is 0, decide no;
	if WR is not solid rock:
		if S part of the shape of WR is 0 and W part of the shape of R is 1, decide no;
		if S part of the shape of WR is 1 and W part of the shape of R is 0, decide no;
	decide yes.


Terra Incognita ends here.
