Barriers by Rooms begins here.

[!<Barrier>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A barrier is a kind of thing. A barrier is not portable. Understand "barrier" as barrier.

[!<CheckGoingWhenThereIsABarrierInTheLocationOfThePlayer>+

REQUIRES COMMENTING

+!]
Check going when there is a barrier in the location of the player:
	follow the barriers raising rule;
	let B be a random barrier in the location of the player;
	if B is barrier, say "You can't go that way, there is a [B] blocking the exit!" instead.

[!<TheBarriersRaisingRule>+

REQUIRES COMMENTING

+!]
A later time based rule (this is the barriers raising rule):
	repeat with B running through on-stage barriers:
		compute raising of B.

To compute raising of (B - a barrier):
	if (the number of dangerous monsters in the location of B is 0) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say OpeningFlav of B;
		destroy B.

To say OpeningFlav of (B - a barrier):
	say "[bold type]The metal modesty shutter noisily opens, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the room.[roman type][line break]";

[!<ModestyShutter>@

REQUIRES COMMENTING

@inherits <Barrier>

@!]
A modesty shutter is a kind of barrier. There is 1 modesty shutter.

[!<ComputeRaisingOfModestyShutter>+

REQUIRES COMMENTING

+!]
To compute raising of (B - a modesty shutter):
	if (the number of patrons in the location of B is 0 and dominatrix is not in the location of the player) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say "[bold type]The metal modesty shutter noisily opens, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the room.[roman type][line break]";
		destroy B;
		if there is a hotel bed in the location of the player:
			now patronTime is 0; [Player should now be able to rest easy]
			if the patronbed uses > 1:
				now pimp is in the location of the player;
				set up pimp;
				if pimp is in the location of the player:
					let D be a random N-viable direction;
					say "[one of]A tall black [man of pimp] dressed as a pimp arrive from[or][BigNameDesc of pimp] arrives from[stopping] the [D]!";
					compute perception of pimp.

A vine-wall is a kind of barrier. There is 1 living wall.

To say OpeningFlav of (B - a vine-wall):
	say "[bold type]The vines disperse, allowing you to leave the room.[roman type][line break]".

A flaming-wall is a kind of barrier. There is 1 flaming-wall.

To say OpeningFlav of (B - a flaming-wall):
	say "[bold type]Thefiery barrier dissipates, allowing you to leave the room.[roman type][line break]".

A wind-wall is a kind of barrier. There is 1 wind-wall. [HASAGIIIIIIIIIIII]

To say OpeningFlav of (B - a wind-wall):
	say "[bold type]The windy barrier dissipates, allowing you to leave the room.[roman type][line break]".

A reinforced-door is a kind of barrier. There is 1 reinforced-door.

To say OpeningFlav of (B - reinforced-door):
	say "[bold type]The doors swing open, allowing you to leave the room.[roman type][line break]".

A prison-bars is a kind of barrier. There is 1 prison-bars.

To say OpeningFlav of (B - a prison-bars):
	say "[bold type]The cell door swings open, allowing you to leave the room.[roman type][line break]".

[cell-door is a barrier.

To compute raising of (B - cell-door):
	if (the number of interested unfriendly monsters in the location of the player is 0) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say "[bold type]The cell door creaks open, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the cell.[roman type][line break]";
		destroy B.

shack-door is a barrier.

To compute raising of (B - shack-door):
	if (the number of interested unfriendly monsters in the location of the player is 0) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say "[bold type]The door swings open, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the shack.[roman type][line break]";
		destroy B.]

Barriers ends here.
