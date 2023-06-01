Room Descriptions by Rooms begins here.

Definition: a room is nonstandard: decide no. [A nonstandard room has no doors, traps, etc to describe]
Definition: a room is roomstandard:
	if it is nonstandard, decide no;
	decide yes.

After looking:
	repeat with L running through leftovers in the location of the player:
		say "[Description of L]";
	[if the location of the player is not Capsule and the location of the player is not Start and the location of the player is not WoodsBoss01 and the location of the player is not blindroom and the location of the player is not Loading and the location of the player is not Iron Maiden and the location of the player is not HoleInWall and the location of the player is not DiaperPail and the location of the player is not Sky01,]
	unless the location of the player is nonstandard, say "[RoomTrapDesc][if inline hyperlinks < 2 and map images is 0][DoorDesc][end if]".
The can't push what's fixed in place rule is not listed in the check pushing rulebook.

To say RoomTrapDesc:
	repeat with T running through revealed traps in the location of the player:
		say EnvironmentDesc of T;
	if the location of the player is smoky, say "[if playerRegion is Mansion]Blackish-green[otherwise]Pink[end if] smoke wafts around the lower portion of this room. ";
	say PuddleDesc;
	repeat with D running through directions:
		let X be 0;
		repeat with A running through revealed tripwire traps in the location of the player:
			if the trap-direction of A is D and X is 0:
				now X is 1; [We only mention each direction once.]
				say "A thin wire [if the location of the player is no-roof]is strung tightly between two trees either side of the [trap-direction of A] exit[otherwise]crosses the [trap-direction of A] exit of the room[end if] at knee height. ";
	if the location of the player is garlic, say "[if the location of the player is Mansion23]Something about this room feels less... alive than everywhere else[otherwise if the location of the player is no-roof]There is a glowing crest on the ground here, emanating a gentle aura of calm into your surroundings. The air here doesn't feel quite as heavy as it is everywhere else[otherwise]There is a glowing crest painted onto the floorboards in this room, emanating a pleasant feeling of calm into your surroundings. The air here doesn't feel quite as heavy as it is everywhere else[end if].";
	if the location of the player is garlic-waned, say "There is a crest [if the location of the player is no-roof]on the ground here[otherwise]painted onto the floorboards in this room[end if], but it's not glowing like it should be.";
	say RoomMonsterDesc.

To say RoomMonsterDesc:
	now neighbour finder is the location of the player;
	if the location of the player is nearby:
		say "[if a revealed trap is in the location of the player][line break][end if][line break]";
		repeat with D running through N-viable directions:
			if D is nearby:
				say "To the [D] you can see:[line break]";
				repeat with M running through nearby alive monsters:
					if the nearby-direction of M is D, say "	[M][line break]";
				say "[line break]".

To say DoorDesc:
	Now neighbour finder is the location of the player;
	let X be the number of N-viable directions;
	let Y be 0;
	if X is 1:
		say "[if playerRegion is Woods]You can continue[otherwise]There is a doorway[end if] to the ";
		now Y is 1;
	otherwise if X > 0:
		say "[if playerRegion is Woods]You can continue[otherwise]There are doorways[end if] to the ";
	repeat with D running through N-viable directions:
		if Y is 1, say "[D]";
		otherwise say "[if X is 1] and [end if][D][if X > 2], [end if]";
		decrease X by 1;
	if the number of N-viable directions > 0, say " here.";
	repeat with D running through N-viable directions:
		let R be the room D from the location of the player;
		if the entry-rank of R > the entry-rank of the location of the player:
			say "The door to the [D] has a threatening looking [rank-colour of the entry-rank of R] rune on the door.".

To decide which direction is the opposite-direction of (D - a direction):
	if D is north, decide on south;
	if D is south, decide on north;
	if D is west, decide on east;
	if D is east, decide on west;
	if D is up, decide on down;
	if D is down, decide on up.

To say hyperdesc of (D - a direction):
	say "[TQlink][D][TQdlink]".

[This is a rule that comes with the base code, we are removing it to add our own directly below. We are doing this because the original code doesn't list the items inside a container in the things the player can see in a room.]
The you-can-also-see rule is not listed in the for printing the locale description rulebook.

[!<ForPrintingTheLocaleDescription>+

We list all the things that the player can see. This function is called pretty much whenever a room's description is printed.

+!]
For printing the locale description (this is the you-can-also-see-modified rule):
	let the domain be the parameter-object;
	let the mentionable count be 0;
	repeat with item running through things:
		now the item is not marked for listing;
	repeat through the Table of Locale Priorities:
		[say "[notable-object entry] - [locale description priority entry].";]
		if the locale description priority entry > 0,
			now the notable-object entry is marked for listing;
		increase the mentionable count by 1;
	if the mentionable count > 0:
		repeat with item running through things:
			if the item is mentioned:
				now the item is not marked for listing;
		begin the listing nondescript items activity with the domain;
		if the number of marked for listing things is 0:
			abandon the listing nondescript items activity with the domain;
		otherwise:
			if handling the listing nondescript items activity:
				if the domain is a room:
					if the domain is the location, say "You ";
					otherwise say "In [the domain] you ";
				otherwise if the domain is a supporter:
					say "On [the domain] you ";
				otherwise if the domain is an animal:
					say "On [the domain] you ";
				otherwise:
					say "In [the domain] you ";
				say "can [if the locale paragraph count > 0]also [end if]see ";
				let the common holder be nothing;
				let contents form of list be true;
				[repeat with list item running through marked for listing things:
					if the holder of the list item is not the common holder:
						if the common holder is nothing,
							now the common holder is the holder of the list item;
						otherwise now contents form of list is false;
					if the list item is mentioned, now the list item is not marked for listing;
				filter list recursion to unmentioned things;
				if contents form of list is true and the common holder is not nothing,
					list the contents of the common holder, as a sentence, including contents,
						giving brief inventory information, tersely, not listing
						concealed items, listing marked items only;][otherwise ]
				[say "[a list of marked for listing things including contents]";]
				let X be the number of marked for listing things;
				repeat with T running through marked for listing things:
					if X > 1, say "a [if T is container][full text of T][otherwise][T][end if], ";
					otherwise say "[if the number of marked for listing things > 1]and [end if]a [if T is container][full text of T][otherwise][T][end if]";
					decrease X by 1;
				if the domain is the location, say " here";
				say ".[paragraph break]";
				[unfilter list recursion;]
			end the listing nondescript items activity with the domain;
	continue the activity.

To say full text of (C - a container):
	if the number of things in C is 0 or C is closed:
		say "[C] [if C is closed](closed)[otherwise](empty)[end if]";
	otherwise:
		say "[C] (which contains [a list of things in C])".

To say full text of (C - a pedestal):
	say "[C] ";
	if C is closed, now links-disabled is true; [disables hyperlinks until set to false]
	if there is a thing in C, say "[if C is closed](closed)[otherwise](open)[end if] (which contains [a list of things in C])";
	otherwise say "(empty)";
	now links-disabled is false.

water-body is a backdrop. Understand "water" as water-body.
A water-body-scenery is a kind of thing. A water-body-scenery is not portable.
Definition: a water-body-scenery is immune to change: decide yes.
To say FullExamineDesc of (C - water-body):
	let T be a random water-body-scenery in the location of the player;
	if T is water-body-scenery:
		say FullExamineDesc of T;
	otherwise:
		say ExamineDesc of C.
To say ExamineDesc of (C - water-body):
	let T be a random water-body-scenery in the location of the player;
	if T is water-body-scenery:
		say ExamineDesc of T;
	otherwise:
		say "This body of water is large enough to wash yourself in.".
To say ShortDesc of (C - water-body):
	let T be a random water-body-scenery in the location of the player;
	if T is water-body-scenery:
		say ShortDesc of T;
	otherwise:
		say "water".
To say MediumDesc of (C - water-body):
	let T be a random water-body-scenery in the location of the player;
	if T is water-body-scenery:
		say MediumDesc of T;
	otherwise:
		say "body of water".


Room Descriptions ends here.
