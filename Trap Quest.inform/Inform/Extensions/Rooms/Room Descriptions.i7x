Room Descriptions by Rooms begins here.


[!<AfterLooking>+

REQUIRES COMMENTING

+!]
After looking:
	repeat with L running through leftovers in the location of the player:
		say "[Description of L]";
	if the location of the player is not Capsule and the location of the player is not Start and the location of the player is not WoodsBoss01 and the location of the player is not Blindfolded and the location of the player is not Loading and the location of the player is not Iron Maiden and the location of the player is not HoleInWall and the location of the player is not Sky01, say "[RoomTrapDesc][if inline hyperlinks < 2][DoorDesc][end if]".
The can't push what's fixed in place rule is not listed in the check pushing rulebook.


[!<SayRoomTrapDesc>+

REQUIRES COMMENTING

+!]
To say RoomTrapDesc:
	repeat with T running through revealed traps in the location of the player:
		say ShortDesc of T;
	if the location of the player is smoky, say "[if the player is in the Mansion]Blackish-green[otherwise]Pink[end if] smoke wafts around the lower portion of this room. ";
	say "[PuddleDesc]";
	repeat with D running through directions:
		let X be 0;
		repeat with A running through revealed tripwire traps in the location of the player:
			if the trap-direction of A is D and X is 0:
				now X is 1; [We only mention each direction once.]
				say "A thin wire [if the location of the player is no-roof]is strung tightly between two trees either side of the [trap-direction of A] exit[otherwise]crosses the [trap-direction of A] exit of the room[end if] at knee height. ";
	if the location of the player is garlic, say "[if the location of the player is Mansion23]Something about this room feels less... alive than everywhere else[otherwise if the location of the player is no-roof]There is a glowing crest on the ground here, emanating a gentle aura of calm into your surroundings. The air here doesn't feel quite as heavy as it is everywhere else[otherwise]There is a glowing crest painted onto the floorboards in this room, emanating a pleasant feeling of calm into your surroundings. The air here doesn't feel quite as heavy as it is everywhere else[end if].";
	say "[RoomMonsterDesc]".

[!<RoomMonsterDesc>+

REQUIRES COMMENTING

+!]
To say RoomMonsterDesc:
	now neighbour finder is the location of the player;
	if the location of the player is nearby:
		say "[if a revealed trap is in the location of the player][line break][end if][line break]";
		repeat with D running through N-viable directions:
			if D is nearby:
				say "To the [D] you can see:[line break]";
				repeat with M running through nearby alive monsters:
					if the nearby-direction of M is D, say "    [M][line break]";
				say "[line break]".

[!<SayDoorDesc>+

REQUIRES COMMENTING

+!]
To say DoorDesc:
	Now neighbour finder is the location of the player;
	let X be the number of N-viable directions;
	let Y be 0;
	if X is 1:
		say "[if the player is in the Woods]You can continue[otherwise]There is a doorway[end if] to the ";
		now Y is 1;
	otherwise if X > 0:
		say "[if the player is in the Woods]You can continue[otherwise]There are doorways[end if] to the ";
	repeat with D running through N-viable directions:
		if Y is 1, say "[D]";
		otherwise say "[if X is 1] and [end if][D][if X > 2], [end if]";
		decrease X by 1;
	if the number of N-viable directions > 0, say " here.";
	repeat with D running through N-viable directions:
		let R be the room D from the location of the player;
		if the entry-rank of R > the entry-rank of the location of the player:
			say "The door to the [D] has a threatening looking [rank-colour of the entry-rank of R] rune on the door.".


[!<SayHyperDescOfDirection>+

REQUIRES COMMENTING

+!]
To say hyperdesc of (D - a direction):
	say "[TQlink][D][TQdlink]".


Room Descriptions ends here.

