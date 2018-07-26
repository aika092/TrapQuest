Warp Portal by Objects begins here.



A warp portal is a kind of thing. A warp portal is not portable. The printed name of warp portal is "[TQlink of item described]warp portal[TQxlink of item described][verb-desc of item described]". The description of warp portal is "[WarpPortalDesc]". The text-shortcut of warp portal is "wpo".
To say WarpPortalDesc:
	say "This giant swirling green portal in the north wall will probably take you to another part of the game.".

Definition: warp portal (called I) is immune to change:
	decide yes.

Check entering a warp portal:
	try going north instead.

To say unique-verb-desc of (T - a warp portal):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]enter[close bracket][as]enter [text-shortcut of T][end link]".
	
The can't go that way rule is not listed in the check going rulebook.

Check an actor going (this is the can't go that way except for warp portals rule):
	if the room gone to is nothing:
		if the door gone through is nothing:
			unless there is a warp portal in the location of the player and the noun is north:
				stop the action with library message going action number 2 for the room gone from;
		otherwise:
			stop the action with library message going action number 6 for the door gone through.

hotel portal is a warp portal. hotel portal is in Hotel40. 
dungeon portal is a warp portal.

To teleport via (W - a warp portal):
	if the player is in Hotel40:
		unless there is a warp portal in Dungeon42, now dungeon portal is in Dungeon42;
		now Dungeon42 is discovered;
		now the player is in Dungeon42;
		say "As you go through the portal, you appear back in the Dungeon[one of]!  There is an identical green portal in this room too, to allow you to go back and forth![or]![stopping]";
	otherwise if the player is in Dungeon42:
		now the player is in Hotel40;
		say "As you go through the portal, you appear back in the Hotel again.";
	display entire map.
	

Part - School Portal	

school portal is a warp portal. The description of school portal is "[SchoolWarpPortalDesc]". The text-shortcut of school portal is "swpo".
To say SchoolWarpPortalDesc:
	say "This giant swirling green portal will probably take you to the school.".

Definition: school portal (called I) is immune to change:
	decide yes.

To teleport via (W - school portal):
	say "As you go through the portal, you appear back in the School again, just in front of the classroom. After you've gone through, the portal closes behind you.";
	if armband is sapphire:
		now the player is in School07;
	otherwise if armband is emerald:
		now the player is in School03;
	otherwise if armband is ruby:
		now the player is in School26;
	otherwise if armband is pink diamond:
		now the player is in School25;
	otherwise:
		now the player is in School24;
	destroy W;
	now the location of the player is discovered;
	display entire map.


Warp Portal ends here.

