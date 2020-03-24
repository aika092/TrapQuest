Region Building by Rooms begins here.

[!<targetFloor:Room>*

REQUIRES COMMENTING

*!]
target-floor is a room that varies. [This room just needs to be within the region we intend to piece together.]

[!<targetPuzzlePiece:Room>*

REQUIRES COMMENTING

*!]
target-puzzle-piece is a room that varies. [This is the room we are currently hoping to add a piece onto.]

[!<chosenPuzzleDirection:Object>*

REQUIRES COMMENTING

*!]
chosen-puzzle-direction is an object that varies.

[!<closingForbidden:Integer>*

REQUIRES COMMENTING

*!]
closing-forbidden is a number that varies.

[!<Room>@<IsPuzzlePiece>+

REQUIRES COMMENTING

+@!]
Definition: a room (called R) is puzzle piece:
	if target-floor is in the Dungeon and R is a labyrinth room, decide yes;
	if target-floor is in the Woods and R is jungle room, decide yes;
	if target-floor is in the Hotel and R is modern room, decide yes;
	if target-floor is in the Mansion and R is haunted room, decide yes;
	decide no.

[!<Room>@<IsSolvable>+

REQUIRES COMMENTING

+@!]
Definition: a room (called R) is solvable:
	if R is not placed, decide no;
	if R is not puzzle piece, decide no;
	now Neighbour Finder is R;
	if there is an empty puzzle socket direction, decide yes;
	decide no.

[!<dungeonPuzzleRestrictionsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The dungeon puzzle restrictions rules is a rulebook.

[!<woodsPuzzleRestrictionsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The woods puzzle restrictions rules is a rulebook.

[!<hotelPuzzleRestrictionsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The hotel puzzle restrictions rules is a rulebook.

[!<mansionPuzzleRestrictionsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The mansion puzzle restrictions rules is a rulebook.

[!<Room>@<IsAllowed>+

REQUIRES COMMENTING

+@!]
Definition: a room (called R) is allowed:
	follow the puzzle-restrictions of R;
	if the rule failed, decide no;
	if the first forbidden direction of R is a compass vectorial direction:
		let test-position be the vector sum of Door Finder and the vector of the first forbidden direction of R;
		if the room at test-position is not solid rock, decide no;
	if the second forbidden direction of R is a compass vectorial direction:
		let test-position be the vector sum of Door Finder and the vector of the second forbidden direction of R;
		if the room at test-position is not solid rock, decide no;
	[if target-floor is in the Dungeon:
		follow the dungeon puzzle restrictions rules;
		if the rule failed, decide no;
	if target-floor is in the Woods:
		follow the woods puzzle restrictions rules;
		if the rule failed, decide no;
	if target-floor is in the Hotel:
		follow the hotel puzzle restrictions rules;
		if the rule failed, decide no;
	if target-floor is in the Mansion:
		follow the mansion puzzle restrictions rules;
		if the rule failed, decide no;]
	decide yes.

[!<DecideWhichRuleIsThePuzzleRestrictionOfRoom>+

REQUIRES COMMENTING

+!]
To decide which rule is the puzzle-restrictions of (R - a room):
	decide on the standard puzzle restrictions rule.

[!<TheStandardPuzzleRestrictionsRule>+

REQUIRES COMMENTING

+!]
This is the standard puzzle restrictions rule:
	repeat with D running through compass vectorial directions:
		let test-position be the vector sum of Door Finder and the vector of D;
		if the room at test-position is not Solid Rock:
			if the first forbidden direction of the room at test-position is the opposite of D or the second forbidden direction of the room at test-position is the opposite of D, rule fails.

[!<TheNoRoomToTheRightOfHotelEntranceRule>+

REQUIRES COMMENTING

+!]
This is the no room to the right of hotel entrance rule:
	let test-position be the vector sum of Door Finder and the vector of west;
	if the room at test-position is Hotel01, rule fails.

The no room to the right of hotel entrance rule is listed in the hotel puzzle restrictions rules.

[!<Room>@<IsActuallySolvable>+

REQUIRES COMMENTING

+@!]
Definition: a room (called R) is actually solvable:
	if R is not solvable, decide no;
	[If we have gotten past that line, then Neighbour Finder will already be the room we want to look at. Otherwise we would need to set it here.]

[!<SolveThePuzzle>+

REQUIRES COMMENTING

+!]
To solve the puzzle:
	now Terra Incognita is open;
	repeat with R running through puzzle piece rooms:
		make all directions possible for R;
	let only-singles-left be 0;
	let puzzleAttempts be 0;
	while Terra Incognita is open:
		let P be a random solvable room;
		if P is nothing and only-singles-left is 0:
			if debugmode > 0, say "[bold type][line break]ONLY SINGLES LEFT.[roman type][line break]";
			now only-singles-left is 1;
			repeat with R running through puzzle piece rooms:
				make all directions possible for R;
			now P is a random solvable room;
		if debugmode > 0, say "P is [P]. ";
		if P is room:
			now target-puzzle-piece is P;
			now chosen-puzzle-direction is a random empty puzzle socket direction;
			if debugmode > 0, say "Direction is [chosen-puzzle-direction]. ";
			if chosen-puzzle-direction is the-final-one and only-singles-left is 0, now closing-forbidden is 1;
			otherwise now closing-forbidden is 0;
			if debugmode > 0, say "Closing is [if closing-forbidden is 0]not [end if]forbidden.";
			let the current position be the grid position of target-puzzle-piece;
			now Door Finder is the vector sum of the current position and the vector of chosen-puzzle-direction;
			let chosen-puzzle-room be a random fully ready room;
			if chosen-puzzle-room is nothing:
				if debugmode > 0, say "No fully ready room found.";
				now chosen-puzzle-room is a random mostly ready room;
				if chosen-puzzle-room is nothing:
					if debugmode > 0, say "No mostly ready room found.";
					flag chosen-puzzle-direction as impossible;
			if chosen-puzzle-room is a room:
				if Door Finder is an empty position:
					if debugmode > 0, say "[bold type][chosen-puzzle-room] chosen to be [chosen-puzzle-direction] of [target-puzzle-piece] with coordinates [Door Finder].[roman type][line break]";
					position chosen-puzzle-room at Door Finder;
				otherwise:
					[This means there is a room already there, it's just that this room isn't connected to it.]
					flag chosen-puzzle-direction as impossible;
		otherwise:
			[We either have finished or need to reset]
			if debugmode > 0, say "[bold type][line break]REGION COMPLETE. [number of unplaced puzzle piece rooms] rooms unused: [list of unplaced puzzle piece rooms][roman type][line break]";
			if there are unplaced puzzle piece mandatory rooms:
				increase puzzleAttempts by 1;
				flip the table around target-floor; [Reset all the rooms, we need to start again!]
				now only-singles-left is 0;
				if puzzleAttempts >= 20:
					now debugmode is 1;
					if puzzleAttempts > 20:
						say "Alert! The game has encountered a game-breaking bug, it can't find a solution for the map puzzle to this region! Please report this bug to the devs with the transcript above of the game trying to build this region.";
						say "If you are a developer or tester or just curious, you can keep trying to build the map. Would you like to try to rebuild the map?";
						unless the player is consenting:
							say "The game will now abandon trying to build this region. Return from whence you came; do not try to progress through it.";
							now Terra Incognita is closed;
							if the player is not a top donator, now debugmode is 0;
			otherwise:
				if debugmode is 2:
					say "Region successfully built.";
					if the player is consenting, do nothing;
				if the player is not a top donator, now debugmode is 0;
				now Terra Incognita is closed.

[!<FlipTheTableAroundRoom>+

Reshuffle the pieces to allow us to start again.

+!]
To flip the table around (X - a room):
	repeat with R running through puzzle piece placed rooms:
		now Neighbour Finder is R;
		repeat with D running through N-viable directions:
			change the D exit of R to Solid Rock;
	repeat with R running through puzzle piece placed unpinned rooms:
		now the grid position of R is <0,0,0>;
	repeat with R running through puzzle piece rooms:
		make all directions possible for R;

[!<FlipTheTableAroundLabyrinthRoom>+

REQUIRES COMMENTING

+!]
To flip the table around (X - a labyrinth room):
	repeat with R running through puzzle piece placed rooms:
		unless R is Dungeon10 or R is Dungeon11 or R is Dungeon12 or R is Dungeon32:
			now Neighbour Finder is R;
			repeat with D running through N-viable directions:
				change the D exit of R to Solid Rock;
	repeat with R running through puzzle piece placed unpinned rooms:
		now the grid position of R is <0,0,0>;
	repeat with R running through puzzle piece rooms:
		make all directions possible for R;
	change the north exit of Dungeon32 to Solid Rock;
	change the east exit of Dungeon32 to Solid Rock;
	change the south exit of Dungeon32 to Solid Rock;

[!<FlipTheTableAroundHauntedRoom>+

REQUIRES COMMENTING

+!]
[To flip the table around (X - a haunted room):[shouldn't be relevant but we'll see?]
	repeat with R running through puzzle piece placed rooms:
		unless R is Mansion02[ or R is Mansion12] or R is Mansion22[ or R is Mansion23]:
			now Neighbour Finder is R;
			repeat with D running through N-viable directions:
				change the D exit of R to Solid Rock;
	repeat with R running through puzzle piece placed unpinned rooms:
		now the grid position of R is <0,0,0>;
	repeat with R running through puzzle piece rooms:
		make all directions possible for R;
	change the east exit of Mansion12 to Solid Rock;
	change the east exit of Mansion22 to Solid Rock;
	change the west exit of Mansion22 to Solid Rock.]

[
THE PLAN:

In a loop:
Look at a placed tile. Look at directions that are available. Choose a direction at random. For that direction:
Check if it is the last one of its type. If it is, raise a flag that prevents using closing pieces unless they are the only ones left.
Look at all tiles that perfectly could fit there and choose one.
If unable, look at all tiles that could fit there and choose one.
If unable, flag that direction as dead.
If down to just closing pieces, reset these flags (it might have only been impossible due to that limitation)
If certain "mandatory" tiles are not placed, reshuffle and start again.
]

[!<Room>@<northImpossible:Integer>*

REQUIRES COMMENTING

*@!]
A room has a number called north-impossible.

[!<Room>@<southImpossible:Integer>*

REQUIRES COMMENTING

*@!]
A room has a number called south-impossible.

[!<Room>@<westImpossible:Integer>*

REQUIRES COMMENTING

*@!]
A room has a number called west-impossible.

[!<Room>@<eastImpossible:Integer>*

REQUIRES COMMENTING

*@!]
A room has a number called east-impossible.

[!<FlagDirectionAsImpossible>+

REQUIRES COMMENTING

+!]
To flag (D - a direction) as impossible:
	do nothing.

[!<FlagEastAsImpossible>+

REQUIRES COMMENTING

+!]
To flag (D - east) as impossible:
	now the east-impossible of target-puzzle-piece is 1.

[!<FlagWestAsImpossible>+

REQUIRES COMMENTING

+!]
To flag (D - west) as impossible:
	now the west-impossible of target-puzzle-piece is 1.

[!<FlagNorthAsImpossible>+

REQUIRES COMMENTING

+!]
To flag (D - north) as impossible:
	now the north-impossible of target-puzzle-piece is 1.

[!<FlagSouthAsImpossible>+

REQUIRES COMMENTING

+!]
To flag (D - south) as impossible:
	now the south-impossible of target-puzzle-piece is 1.

[!<MakeAllDirectionsPossibleForRoom>+

REQUIRES COMMENTING

+!]
To make all directions possible for (R - a room):
	now the east-impossible of target-puzzle-piece is 0;
	now the west-impossible of target-puzzle-piece is 0;
	now the north-impossible of target-puzzle-piece is 0;
	now the south-impossible of target-puzzle-piece is 0.

[!<DirectionIsEmptyPuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: a direction is empty puzzle socket: decide no.

[!<WestIsEmptyPuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: west (called D) is empty puzzle socket:
	if the west-impossible of Neighbour Finder is 1, decide no;
	if W part of the shape of Neighbour Finder is 1 and D is not N-viable, decide yes; [If it is N-viable that means there's already a room there.]
	decide no.

[!<EastIsEmptyPuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: east (called D) is empty puzzle socket:
	if the east-impossible of Neighbour Finder is 1, decide no;
	if E part of the shape of Neighbour Finder is 1 and D is not N-viable, decide yes;
	decide no.

[!<NorthIsEmptyPuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: north (called D) is empty puzzle socket:
	if the north-impossible of Neighbour Finder is 1, decide no;
	if N part of the shape of Neighbour Finder is 1 and D is not N-viable, decide yes;
	decide no.

[!<SouthIsEmptyPuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: south (called D) is empty puzzle socket:
	if the south-impossible of Neighbour Finder is 1, decide no;
	if S part of the shape of Neighbour Finder is 1 and D is not N-viable, decide yes;
	decide no.

[Is this our final current room with an opening in the specified direction?]
[!<DirectionIsTheFinalOne>+

REQUIRES COMMENTING

+!]
Definition: a direction (called D) is the-final-one:
	let N be Neighbour Finder;
	repeat with R running through placed puzzle piece rooms:
		now Neighbour Finder is R;
		if D is empty puzzle socket and R is not N, decide no;
	decide yes.

[Does it only have one entrance/exit?]
[!<Room>@<IsClosingTile>+

REQUIRES COMMENTING

+@!]
Definition: a room (called R) is closing tile:
	if N part of the shape of R + E part of the shape of R + W part of the shape of R + S part of the shape of R is 1, decide yes;
	decide no.

[!<Room>@<IsMostlyReady>+

REQUIRES COMMENTING

+@!]
Definition: a room (called R) is mostly ready:
	if R is placed or R is not puzzle piece, decide no;
	if R is closing tile and closing-forbidden is 1 and R is not mandatory, decide no;
	if chosen-puzzle-direction is east and W part of the shape of R is 0, decide no;
	if chosen-puzzle-direction is west and E part of the shape of R is 0, decide no;
	if chosen-puzzle-direction is north and S part of the shape of R is 0, decide no;
	if chosen-puzzle-direction is south and N part of the shape of R is 0, decide no;
	if R is allowed, decide yes;
	decide no.

[!<Room>@<IsFullyReady>+

REQUIRES COMMENTING

+@!]
Definition: a room (called R) is fully ready:
	if R is not mostly ready, decide no;
	[Do all doors line up perfectly?]
	if R is open and ready, decide yes;
	decide no.

[Notably more computationally time consuming than empty puzzle socket, we check if there are any rooms left that are actually eligible to go here.]
[!<DirectionIsSolvablePuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: a direction is solvable puzzle socket: decide no.

[!<WestIsSolvablePuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: west (called D) is solvable puzzle socket:
	if D is not empty puzzle socket, decide no;
	repeat with R running through unplaced puzzle piece rooms:
		if E part of the shape of R is 1, decide yes; [This is the opposite direction since if we are looking for a room to the west, we care about its east side door.]
	decide no.

[!<EastIsSolvablePuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: east (called D) is solvable puzzle socket:
	if D is not empty puzzle socket, decide no;
	repeat with R running through unplaced puzzle piece rooms:
		if W part of the shape of R is 1, decide yes;
	decide no.

[!<NorthIsSolvablePuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: north (called D) is solvable puzzle socket:
	if D is not empty puzzle socket, decide no;
	repeat with R running through unplaced puzzle piece rooms:
		if S part of the shape of R is 1, decide yes;
	decide no.

[!<SouthIsSolvablePuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: south (called D) is solvable puzzle socket:
	if D is not empty puzzle socket, decide no;
	repeat with R running through unplaced puzzle piece rooms:
		if N part of the shape of R is 1, decide yes;
	decide no.

[Even more computationally time consuming, we check if the rooms that this new room will touch have doors in the right places.]
[!<DirectionIsFullySolvablePuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: a direction is fully solvable puzzle socket: decide no.

[!<WestIsFullySolvablePuzzleSocket>+

REQUIRES COMMENTING

+!]
Definition: west (called D) is fully solvable puzzle socket:
	if D is not empty puzzle socket, decide no;
	repeat with R running through unplaced puzzle piece rooms:
		if E part of the shape of R is 0, decide no; [This is the opposite direction since if we are looking for a room to the west, we care about its east side door.]
		[now Door Finder is ]
		if R is open and ready, decide yes;
	decide no.

[!<RoomIsRelaxing>+

Has furniture in it already.

+!]
Definition: A room (called R) is relaxing:
	if there is furniture in R, decide yes;
	decide no.

[!<RoomIsUnrelaxing>+

Has no furniture in it already.

+!]
Definition: A room (called R) is unrelaxing:
	if R is relaxing, decide no;
	decide yes.

Region Building ends here.
