Returning by Actions begins here.

Remembered Location is a room that varies.

Remembering is an action applying to nothing.

Carry out remembering:
	say "Location remembered.";
	now Remembered Location is the location of the player.
Understand "remember", "mark", "set mark" as remembering.

Returning is an action applying to nothing.

Check returning:
	unless playerRegion is Dungeon or playerRegion is Woods, say "This currently only works in the Dungeon and the Woods." instead;
	if the player is in Remembered Location, say "You're already here!" instead;

Carry out returning:
	let X be the best route from the location of the player to Remembered Location through discovered rooms;
	unless X is nothing:
		say "You try to [if the player is upright]walk[otherwise]crawl[end if] [X].";
		try going X;
	otherwise:
		say "You can't work out how to get back there from where you currently are!".
Understand "return", "marked", "r" as returning.

Returning ends here.
