Warp Portal by Objects begins here.

A warp portal is a kind of thing. A warp portal is not portable. The printed name of warp portal is "[TQlink of item described]warp portal[TQxlink of item described][verb-desc of item described]". The text-shortcut of warp portal is "wpo". Understand "lever" as a warp portal.
A warp portal has a region called destination. The destination of a warp portal is the dungeon.
The printed name of a warp portal is "[TQlink of item described]warp portal to the [destination of item described][TQxlink of item described][verb-desc of item described]".

hotel portal is a warp portal. hotel portal is in Hotel40.
dungeon portal is a warp portal. dungeon portal is in Dungeon10.
mansion portal is a warp portal. mansion portal is in Mansion32.
school portal is a warp portal. school portal is in School01.

Figure of flexible warp portal is the file "Env/MultiFloor/portal1.png".
Figure of warp portal is the file "Env/MultiFloor/portal2.png".

To decide which figure-name is the examine-image of (C - a warp portal):
	decide on figure of flexible warp portal.

To decide which direction is the covered-direction of (C - a warp portal):
	decide on north.

To say ExamineDesc of (C - a warp portal):
	say "This giant swirling green portal in the [covered-direction of C] wall will teleport you to another part of the world. There's a lever next to the portal, which might allow you to change the destination. [DestinationDesc of C]".

Definition: warp portal is immune to change: decide yes.

Check entering a warp portal:
	try going the covered-direction of the noun instead.

Check pulling a warp portal:
	try turning the noun instead.

Check turning a warp portal:
	allocate 2 seconds;
	if (the player is not a top donator and (Hotel01 is not placed or Mansion01 is not placed)) or (the player is a top donator and Hotel01 is not placed and Mansion01 is not placed), say "Nothing happens. Perhaps this lever won't work until you've explored more of the world on your own first..." instead;
	let successfulTurn be 0;
	if the destination of the noun is the Dungeon:
		now the destination of the noun is the hotel;
		now successfulTurn is 1;
	if the destination of the noun is the Hotel and (successfulTurn is 0 or the location of hotel portal is not discovered or the noun is in the hotel):
		if debugmode > 1, say "location of hotel portal is [location of hotel portal]. It is [unless the location of hotel portal is discovered]not [end if]discovered.";
		now the destination of the noun is the mansion;
		now successfulTurn is 1;
	if the destination of the noun is the Mansion and (successfulTurn is 0 or the location of mansion portal is not discovered or the noun is in the mansion):
		now the destination of the noun is the school;
		now successfulTurn is 1;
	if the destination of the noun is the school and (successfulTurn is 0 or the player is not a top donator or the noun is in the school or (armband is not worn and ex-princess is not unconcerned)):
		now the destination of the noun is the dungeon;
	let W be a random warp portal in the location of the player;
	say "You hear a mechanism whirring, and the portal shimmers. [DestinationDesc of W]" instead.

To say DestinationDesc of (T - a warp portal):
	if T is not regionally in the destination of T, say "The warp portal will currently take you to the [destination of T].".

To say unique-verb-desc of (T - a warp portal):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [link][bracket]enter[close bracket][as]enter [text-shortcut of T][end link] [link][bracket]switch[close bracket][as]pull lever[end link]".

The can't go that way rule is not listed in the check going rulebook.

Check an actor going (this is the can't go that way except for warp portals rule):
	if the room gone to is nothing or the room gone to is Solid Rock:
		if the noun is down, try foodlisting instead;
		if the door gone through is nothing:
			let W be a random warp portal in the location of the player;
			unless W is warp portal and the covered-direction of W is the noun and W is not regionally in the destination of W:
				if the actor is the player:
					say "[We] [can't go] that way." (A);
				stop the action;
		otherwise:
			if the actor is the player:
				say "[We] [can't], since [the door gone through] [lead] nowhere." (B);
			stop the action.

To decide which direction is the covered-direction of (C - school portal):
	decide on south.

To teleport via (W - a warp portal):
	let D be nothing;
	repeat with P running through warp portals:
		if P is regionally in the destination of W, now D is P;
	if D is warp portal, now the destination of D is playerRegion; [The portal you just went through will send you right back to where you were unless you pull the lever]
	if D is school portal:
		compute background student promotions;
		if receptionist is alive and receptionist is not in School01, now receptionist is in School01;
		if armband is worn and armband is not solid gold and there is an alive undefeated correctly-ranked teacher and the armband-print of armband is not "new recruit":
			let A be a random appropriate assembly;
			if A is assembly:
				set up A;
			otherwise:
				say "As you go through the portal, you appear back in the School again, just in front of the classroom. After you've gone through, the portal closes behind you. There's a classroom right in front of you. A schoolbell rings - it's time for class right now!";
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
			now the location of the player is discovered;
			update player region;
			display entire map;
		otherwise:
			now the player is in School01;
			now the location of the player is discovered;
			update player region;
			display entire map;
			say "As you go through the portal, you find yourself [one of]in a large room with expensive marble walls and floor[or]back in the school reception[stopping].";
	otherwise if D is warp portal:
		now the player is in the location of D;
		update player region;
		display entire map;
		say "As you go through the portal, you appear in the [location of the player][one of]! There is an identical green portal in this room too, to allow you to go back and forth![or]![stopping]".





Warp Portal ends here.

