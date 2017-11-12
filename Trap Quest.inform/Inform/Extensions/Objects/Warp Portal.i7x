Warp Portal by Objects begins here.



A warp portal is a kind of thing.  A warp portal is not portable.  There is 1 warp portal in Hotel40.  There is 1 warp portal.  The printed name of warp portal is "[TQlink of item described]warp portal[TQxlink of item described][verb-desc of item described]".  The description of warp portal is "[WarpPortalDesc]".  The text-shortcut of warp portal is "wpo".
To say WarpPortalDesc:
	say "This giant swirling green portal in the north wall will probably take you to another part of the game.".

Definition: warp portal (called I) is immune to change:
	decide yes.

To say unique-verb-desc of (T - a big red button):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]push[close bracket][as]push [text-shortcut of T][end link]".

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
			stop the action with library message going action number 6 for the door gone through;

To teleport via (W - a warp portal):
	if the player is in Hotel40:
		now the player is in Dungeon42;
		unless there is a warp portal in Dungeon42, now a random off-stage warp portal is in Dungeon42;
		now Dungeon42 is discovered;
		say "As you go through the portal, you appear back in the Dungeon[one of]!  There is an identical green portal in this room too, to allow you to go back this way![or]![stopping]";
	otherwise if the player is in Dungeon42:
		now the player is in Hotel40;
		say "As you go through the portal, you appear back in the Hotel again.";
	display entire map.
	


Warp Portal ends here.
