Barriers by Rooms begins here.

[!<Barrier>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A barrier is a kind of thing. A barrier is not portable. Understand "barrier" as barrier.

[!<CheckGoingWhenThereIsABarrierInTheLocationOfThePlayer>+

REQUIRES COMMENTING

+!]
Check going when there is a modesty shutter in the location of the player:
	follow the barriers raising rule;
	if there is a modesty shutter in the location of the player, say "You can't go that way, there is a [random modesty shutter in the location of the player] blocking the exit!" instead.

[!<TheBarriersRaisingRule>+

REQUIRES COMMENTING

+!]
A later time based rule (this is the barriers raising rule):
	repeat with B running through on-stage barriers:
		compute raising of B.

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

Barriers ends here.
