Solid Rock by Rooms begins here.

["Solid Rock" is a room which is never visited, but which is used to indicate blocked-off routes: an exit leading to Solid Rock is considered blocked. Initially, when none of the labyrinth rooms have been "played" into the maze, all exits are blocked in this way. Solid Rock is also used as a special value meaning that no room is at a given grid position: thus "the room at <1,4,12>" might evaluate to a room present in the maze, or it might evaluate to Solid Rock.]

[!<SolidRock>@

REQUIRES COMMENTING

@inherits <Room>

@!]
Solid Rock is a room.

[!<MakeAllLabyrinthExitsLeadToSolidRock>+

REQUIRES COMMENTING

+!]
To make all labyrinth exits lead to Solid Rock:
	repeat with blank room running through labyrinth rooms:
		let Sh be the shape of the blank room;
		now Neighbour Finder is the blank room;
		if N part of Sh is 1 and north is not N-viable:
			change the north exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the north exit of [blank room] to Solid Rock[line break]";
		if E part of Sh is 1 and east is not N-viable:
			change the east exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the east exit of [blank room] to Solid Rock[line break]";
		if S part of Sh is 1 and south is not N-viable:
			change the south exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the south exit of [blank room] to Solid Rock[line break]";
		if W part of Sh is 1 and west is not N-viable:
			change the west exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the west exit of [blank room] to Solid Rock[line break]".

[!<MakeAllJungleExitsLeadToSolidRock>+

REQUIRES COMMENTING

+!]
To make all jungle exits lead to Solid Rock:
	repeat with blank room running through jungle rooms:
		let Sh be the shape of the blank room;
		now Neighbour Finder is the blank room;
		if N part of Sh is 1 and north is not N-viable:
			change the north exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the north exit of [blank room] to Solid Rock[line break]";
		if E part of Sh is 1 and east is not N-viable:
			change the east exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the east exit of [blank room] to Solid Rock[line break]";
		if S part of Sh is 1 and south is not N-viable:
			change the south exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the south exit of [blank room] to Solid Rock[line break]";
		if W part of Sh is 1 and west is not N-viable:
			change the west exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the west exit of [blank room] to Solid Rock[line break]".

[!<MakeAllModernExitsLeadToSolidRock>+

REQUIRES COMMENTING

+!]
To make all modern exits lead to Solid Rock:
	repeat with blank room running through modern rooms:
		let Sh be the shape of the blank room;
		now Neighbour Finder is the blank room;
		if N part of Sh is 1 and north is not N-viable:
			change the north exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the north exit of [blank room] to Solid Rock[line break]";
		if E part of Sh is 1 and east is not N-viable:
			change the east exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the east exit of [blank room] to Solid Rock[line break]";
		if S part of Sh is 1 and south is not N-viable:
			change the south exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the south exit of [blank room] to Solid Rock[line break]";
		if W part of Sh is 1 and west is not N-viable:
			change the west exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the west exit of [blank room] to Solid Rock[line break]".

[!<MakeAllHauntedExitsLeadToSolidRock>+

REQUIRES COMMENTING

+!]
To make all haunted exits lead to Solid Rock:
	repeat with blank room running through haunted rooms:
		let Sh be the shape of the blank room;
		now Neighbour Finder is the blank room;
		if N part of Sh is 1 and north is not N-viable:
			change the north exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the north exit of [blank room] to Solid Rock[line break]";
		if E part of Sh is 1 and east is not N-viable:
			change the east exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the east exit of [blank room] to Solid Rock[line break]";
		if S part of Sh is 1 and south is not N-viable:
			change the south exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the south exit of [blank room] to Solid Rock[line break]";
		if W part of Sh is 1 and west is not N-viable:
			change the west exit of blank room to Solid Rock;
			if debugmode is 1, say "[line break]changing the west exit of [blank room] to Solid Rock[line break]".

[!<DecideWhichRoomIsRoomAtGridRef>+

REQUIRES COMMENTING

+!]
To decide which room is the room at (grid ref - a spatial coordinate):
	if grid ref is <0,0,0>, decide on Solid Rock;
	if the player is in Toilet01 and the grid position of Toilet01 is grid ref, decide on Toilet01;
	if the player is in Toilet02 and the grid position of Toilet02 is grid ref, decide on Toilet02;
	repeat with R running through rooms in the Dungeon:
		if the grid position of R is grid ref, decide on R;
	repeat with W running through rooms in the Woods:
		if the grid position of W is grid ref, decide on W;
	repeat with H running through rooms in the Hotel:
		if the grid position of H is grid ref, decide on H;
	repeat with M running through rooms in the Mansion:
		if the grid position of M is grid ref, decide on M;
	repeat with M running through rooms in the School:
		if the grid position of M is grid ref and M is not Toilet01 and M is not Toilet02, decide on M;
	repeat with M running through rooms in the tutorialarea:
		if the grid position of M is grid ref, decide on M;
	decide on Solid Rock.

[!<CheckGoingToSolidRock>+

REQUIRES COMMENTING

+!]
[Check going to Solid Rock:
	if the noun is down, try foodlisting instead;
	let W be a random warp portal in the location of the player;
	unless W is warp portal and the covered-direction of W is the noun:
		if the actor is the player:
			say "[We] [can't go] that way." (A);
		stop the action.]


Solid Rock ends here.
