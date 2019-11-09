Spatial Vectors and Shape by Rooms begins here.


[!<SpatialCoordinate>@

REQUIRES COMMENTING

@!]

[!<SpatialCoordinate>@<mazeLevel:Integer>*

REQUIRES COMMENTING

*@!]

[!<SpatialCoordinate>@<easting:Integer>*

REQUIRES COMMENTING

*@!]

[!<SpatialCoordinate>@<northing:Integer>*

REQUIRES COMMENTING

*@!]
A spatial coordinate is a kind of value. <9,24,24> specifies a spatial coordinate with parts maze level, easting (without leading zeros), northing (without leading zeros).

[!<Room>@<gridPosition:SpatialCoordinate>*

REQUIRES COMMENTING

*@!]
A room has a spatial coordinate called grid position.

[!<SpacialCoordinateIsAnEmptyPosition>+

REQUIRES COMMENTING

+!]
Definition: A spatial coordinate (called G) is an empty position:
	repeat with R running through placed rooms:
		if the grid position of R is G, decide no;
	decide yes.

[!<Room>@<IsLocated>+

REQUIRES COMMENTING

+@!]
Definition: A room is unlocated rather than located if its grid position is <0,0,0>.

[!<DecideWhichNumberIsTheCurrentMazeLevel>+

REQUIRES COMMENTING

+!]
To decide which number is the current maze level:
	let L be the maze level part of the grid position of the location;
	decide on L.

[!<previousMazeLevel:Integer>*

REQUIRES COMMENTING

*!]
The previous maze level is a number that varies. The previous maze level is usually 0.

[!<Direction>@

REQUIRES COMMENTING

@!]

[!<Direction>@<vector:SpatialCoordinate>*

REQUIRES COMMENTING

*@!]
A direction has a spatial coordinate called vector.

North has vector <0,0,1>.
South has vector <0,0,24>.
East has vector <0,1,0>.
West has vector <0,24,0>.
Down has vector <9,0,0>.
Up has vector <1,0,0>.

[!<Direction>@<IsVectorial>+

REQUIRES COMMENTING

+@!]
Definition: A direction (called D) is vectorial:
	if the vector of D is not <0,0,0>, decide yes;
	decide no.
Definition: A direction is vertical if it is up or it is down.

[!<Direction>@<IsCompassVectorial>+

REQUIRES COMMENTING

+@!]
Definition: A direction (called D) is compass vectorial:
	if D is south or D is north or D is west or D is east, decide yes;
	decide no.

[!<DecideWhichSpatialCoordinateIsTheVectorSumOfTwoSpatialCoordinates>+

REQUIRES COMMENTING

+!]
To decide which spatial coordinate is the vector sum of (V1 - a spatial coordinate) and (V2 - a spatial coordinate):
	let L be the maze level part of V1 plus the maze level part of V2;
	let L be the remainder after dividing L by 10;
	let E be the easting part of V1 plus the easting part of V2;
	let E be the remainder after dividing E by 25;
	let N be the northing part of V1 plus the northing part of V2;
	let N be the remainder after dividing N by 25;
	if L is 0 or L is 9, decide on <0,0,0>;
	if E is 0 or E is 24, decide on <0,0,0>;
	if N is 0 or N is 24, decide on <0,0,0>;
	let the sum be the spatial coordinate with maze level part L easting part E northing part N;
	decide on the sum.

[!<DecideWhichSpatialCoordinateIsTheVectorDifferenceOfTwoSpatialCoordinates>+

REQUIRES COMMENTING

+!]
To decide which spatial coordinate is the vector difference of (V1 - a spatial coordinate) and (V2 - a spatial coordinate):
	let L be the maze level part of V1 minus the maze level part of V2;
	let L be the remainder after dividing L by 10;
	let E be the easting part of V1 minus the easting part of V2;
	let E be the remainder after dividing E by 25;
	let N be the northing part of V1 minus the northing part of V2;
	let N be the remainder after dividing N by 25;
	let the sum be the spatial coordinate with maze level part L easting part E northing part N;
	decide on the sum.

[!<routeFinder:Room>*

REQUIRES COMMENTING

*!]
RouteFinder is a room that varies.

[!<DecideWhichNumberIsTheDistanceOfRoom>+

REQUIRES COMMENTING

+!]
To decide which number is the distance of (R - a room):
	decide on the distance of R from the location of the player;

To decide which number is the distance of (R - a room) from (Z - a room):
	now RouteFinder is Z;
	let X be 0;
	while RouteFinder is not R:
		now Z is RouteFinder;
		let D be the best route from RouteFinder to R;
		if D is nothing, decide on -1;
		now RouteFinder is the room D from Z;
		increase X by 1;
	decide on X.

Chapter - Shapes of individual rooms

[!<LabrinthShape>@

REQUIRES COMMENTING

@!]

[!<LabrinthShape>@<openSpace:Integer>*

REQUIRES COMMENTING

*@!]

[!<LabrinthShape>@<u:Boolean>*

REQUIRES COMMENTING

*@!]

[!<LabrinthShape>@<d:Boolean>*

REQUIRES COMMENTING

*@!]

[!<LabrinthShape>@<n:Boolean>*

REQUIRES COMMENTING

*@!]

[!<LabrinthShape>@<e:Boolean>*

REQUIRES COMMENTING

*@!]

[!<LabrithShape>@<s:Boolean>*

REQUIRES COMMENTING

*@!]

[!<LabrinthShape>@<w:Boolean>*

REQUIRES COMMENTING

*@!]

Labyrinth shape is a kind of value.
L9/1-1-1-1-1-1 specifies a labyrinth shape with parts open space, U, D, N, E, S, W.

[!<Room>@<IsUnplaced>+

REQUIRES COMMENTING

+@!]
Definition: A room is unplaced rather than placed if its grid position is <0,0,0>.

[!<Room>@<IsWoodsplaced>+

REQUIRES COMMENTING

+@!]
Definition: A room is woodsplaced if it is placed and it is in the Woods.

[!<Room>@<IsHotelplaced>+

REQUIRES COMMENTING

+@!]
Definition: A room is hotelplaced if it is placed and it is in the Hotel.

[!<Room>@<IsMansionplaced>+

REQUIRES COMMENTING

+!]
Definition: A room is mansionplaced if it is placed and it is in the Mansion.

[!<Room>@<IsSchoolplaced>+

REQUIRES COMMENTING

+!]
Definition: A room is schoolplaced if it is placed and it is not predicament room and it is in the School.

[!<LabyrinthRoom>@<IsUnshaped>+

REQUIRES COMMENTING

+@!]
Definition: A labyrinth room is unshaped if its shape is L0/0-0-0-0-0-0.

[!<JungleRoom>@<IsUnshaped>+

REQUIRES COMMENTING

+@!]
Definition: A jungle room is unshaped if its shape is L0/0-0-0-0-0-0.

[!<ModernRoom>@<IsUnshaped>+

REQUIRES COMMENTING

+@!]
Definition: A modern room is unshaped if its shape is L0/0-0-0-0-0-0.

[!<Hauntedroom>@<IsUnshaped>+

REQUIRES COMMENTING

+@!]
Definition: A haunted room is unshaped if its shape is L0/0-0-0-0-0-0.

[!<LabyrinthRoom>@<IsAscending>+

REQUIRES COMMENTING

+@!]
Definition: A labyrinth room is ascending rather than non-ascending if the U part of its shape is 1.

[!<JungleRoom>@<IsAscending>+

REQUIRES COMMENTING

+@!]
Definition: A jungle room is ascending rather than non-ascending if the U part of its shape is 1.

[!<ModernRoom>@<IsAscending>+

REQUIRES COMMENTING

+@!]
Definition: A modern room is ascending rather than non-ascending if the U part of its shape is 1.

[!<HauntedRoom>@<IsAscending>+

REQUIRES COMMENTING

+@!]
Definition: A haunted room is ascending rather than non-ascending if the U part of its shape is 1.

[!<ADirectionIsViable>+

REQUIRES COMMENTING

+!]
Definition: A direction (called thisway) is viable:
	if the room thisway from location is a room and the room thisway from location is not Solid Rock, decide yes;
	decide no. [Thanks Narse!]

[!<neighbourFinder:Room>*

REQUIRES COMMENTING

*!]
The neighbour finder is a room that varies.

[!<DirectionIsNViable>+

REQUIRES COMMENTING

+!]
Definition: a direction (called thataway) is N-viable:
	if the room thataway from the neighbour finder is a room and the room thataway from the neighbour finder is not Solid Rock and (thataway is north or thataway is south or thataway is west or thataway is east), decide yes;
	decide no.


[!<DirectionIsWanted>+

REQUIRES COMMENTING

+!]
Definition: A direction is wanted: decide no.

[!<NorthIsWanted>+

REQUIRES COMMENTING

+!]
Definition: North (called D) is wanted:
	if N part of the shape of Neighbour Finder is 0, decide no;
	let G be the vector sum of the grid position of neighbour finder and the vector of D;
	if the room at G is Solid Rock, decide no;
	if S part of the shape of the room at G is 0, decide no;
	decide yes.

[!<SouthIsWanted>+

REQUIRES COMMENTING

+!]
Definition: South (called D) is wanted:
	if S part of the shape of Neighbour Finder is 0, decide no;
	let G be the vector sum of the grid position of neighbour finder and the vector of D;
	if the room at G is Solid Rock, decide no;
	if N part of the shape of the room at G is 0, decide no;
	decide yes.

[!<EastIsWanted>+

REQUIRES COMMENTING

+!]
Definition: East (called D) is wanted:
	if E part of the shape of Neighbour Finder is 0, decide no;
	let G be the vector sum of the grid position of neighbour finder and the vector of D;
	if the room at G is Solid Rock, decide no;
	if W part of the shape of the room at G is 0, decide no;
	decide yes.

[!<WestIsWanted>+

REQUIRES COMMENTING

+!]
Definition: West (called D) is wanted:
	if W part of the shape of Neighbour Finder is 0, decide no;
	let G be the vector sum of the grid position of neighbour finder and the vector of D;
	if the room at G is Solid Rock, decide no;
	if E part of the shape of the room at G is 0, decide no;
	decide yes.

Spatial Vectors and Shape ends here.

