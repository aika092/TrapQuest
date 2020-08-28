Spatial Vectors and Shape by Rooms begins here.

A spatial coordinate is a kind of value. <9,24,24> specifies a spatial coordinate with parts maze level, easting (without leading zeros), northing (without leading zeros).

A room has a spatial coordinate called grid position.

Definition: A spatial coordinate (called G) is an empty position:
	repeat with R running through placed rooms:
		if the grid position of R is G, decide no;
	decide yes.

Definition: A room is unlocated rather than located:
	if the grid position of it is <0,0,0>, decide yes;
	decide no.

To decide which number is the current maze level:
	let L be the maze level part of the grid position of the location;
	decide on L.

The previous maze level is a number that varies. The previous maze level is usually 0.

A direction has a spatial coordinate called vector.

North has vector <0,0,1>.
South has vector <0,0,24>.
East has vector <0,1,0>.
West has vector <0,24,0>.
Down has vector <9,0,0>.
Up has vector <1,0,0>.

Definition: A direction (called D) is vectorial:
	if the vector of D is not <0,0,0>, decide yes;
	decide no.
Definition: A direction is vertical:
	if it is up or it is down, decide yes;
	decide no.

Definition: A direction (called D) is compass vectorial:
	if D is south or D is north or D is west or D is east, decide yes;
	decide no.

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

To decide which spatial coordinate is the vector difference of (V1 - a spatial coordinate) and (V2 - a spatial coordinate):
	let L be the maze level part of V1 minus the maze level part of V2;
	let L be the remainder after dividing L by 10;
	let E be the easting part of V1 minus the easting part of V2;
	let E be the remainder after dividing E by 25;
	let N be the northing part of V1 minus the northing part of V2;
	let N be the remainder after dividing N by 25;
	let the sum be the spatial coordinate with maze level part L easting part E northing part N;
	decide on the sum.

RouteFinder is a room that varies.

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

Labyrinth shape is a kind of value.
L9/1-1-1-1-1-1 specifies a labyrinth shape with parts open space, U, D, N, E, S, W.

Definition: A room is unplaced rather than placed:
	if the grid position of it is <0,0,0>, decide yes;
	decide no.

Definition: A room is woodsplaced:
	if it is placed and it is in the Woods, decide yes;
	decide no.

Definition: A room is hotelplaced:
	if it is placed and it is in the Hotel, decide yes;
	decide no.

Definition: A room is mansionplaced:
	if it is placed and it is in the Mansion, decide yes;
	decide no.

Definition: A room is schoolplaced:
	if it is placed and it is not predicament room and it is in the School, decide yes;
	decide no.


Definition: A direction (called thisway) is viable:
	if the room thisway from location is a room and the room thisway from location is not Solid Rock, decide yes;
	decide no. [Thanks Narse!]

The neighbour finder is a room that varies.


A room has a list of directions called the Nviables.

To update Nviables of (R - a room):
	truncate the Nviables of R to 0 entries;
	let R2 be the room north from R;
	if R2 is a room and R2 is not solid rock, add north to the Nviables of R;
	let R2 be the room east from R;
	if R2 is a room and R2 is not solid rock, add east to the Nviables of R;
	let R2 be the room south from R;
	if R2 is a room and R2 is not solid rock, add south to the Nviables of R;
	let R2 be the room west from R;
	if R2 is a room and R2 is not solid rock, add west to the Nviables of R.

Definition: a direction (called D) is N-viable:
	if Terra Incognita is open: [need to do it live]
		let R be the room D from Neighbour Finder;
		if R is a room and R is not Solid Rock and (D is north or D is south or D is west or D is east), decide yes;
		decide no;
	otherwise: [we can use saved variables]
		if D is listed in the Nviables of Neighbour Finder, decide yes.

Definition: a direction (called D) is wanted:
	if D is north:
		if N part of the shape of Neighbour Finder is 0, decide no;
	otherwise if D is south:
		if S part of the shape of Neighbour Finder is 0, decide no;
	otherwise if D is east:
		if E part of the shape of Neighbour Finder is 0, decide no;
	otherwise if D is west:
		if W part of the shape of Neighbour Finder is 0, decide no;
	otherwise:
		decide no;
	let G be the vector sum of the grid position of neighbour finder and the vector of D;
	let RG be the room at G;
	if RG is Solid Rock, decide no;
	if D is north and S part of the shape of RG is 0, decide no;
	if D is south and N part of the shape of RG is 0, decide no;
	if D is east and W part of the shape of RG is 0, decide no;
	if D is west and E part of the shape of RG is 0, decide no;
	decide yes.

Spatial Vectors and Shape ends here.
