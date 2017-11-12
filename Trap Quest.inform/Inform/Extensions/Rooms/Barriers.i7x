Barriers by Rooms begins here.



[!<Barrier>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A barrier is a kind of thing.  A barrier is not portable. Understand "barrier" as barrier.

[!<CheckGoingWhenThereIsABarrierInTheLocationOfThePlayer>+

REQUIRES COMMENTING

+!]
Check going when there is a barrier in the location of the player:
	say "You can't go that way, there is a [random barrier in the location of the player] blocking the exit!" instead.

[!<TheBarriersRaisingRule>+

REQUIRES COMMENTING

+!]
A time based rule (this is the barriers raising rule):
	repeat with B running through barriers:
		compute raising of B.

[!<ModestyShutter>@

REQUIRES COMMENTING

@inherits <Barrier>

@!]
A modesty shutter is a kind of barrier.  There is 1 modesty shutter.

[!<ComputeRaisingOfModestyShutter>+

REQUIRES COMMENTING

+!]
To compute raising of (B - a modesty shutter):
	if (the number of alive patrons in the location of B is 0 and the number of alive dominatrixes in the location of the player is 0) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say "[bold type]The metal modesty shutter noisily opens, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the room.[roman type][line break]";
		destroy B;
		if there is a HotelBedPatrons in neighbour finder and the patronbed uses > 1:
			let M be a random pimp;
			now M is in the location of the player;
			set up M;
			if M is in the location of the player:
				let D be a random N-viable direction;
				say "[one of]A large black man dressed as a pimp arrive from[or]The [M] arrives from[stopping] the [D]!";
				compute perception of M.
			



Barriers ends here.
