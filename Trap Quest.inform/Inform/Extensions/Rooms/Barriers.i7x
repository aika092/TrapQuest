Barriers by Rooms begins here.

[!<Barrier>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A barrier is a kind of thing. A barrier is not portable. Understand "barrier" as barrier.

Check going when there is a barrier in the location of the player:
	follow the barriers raising rule;
	let B be a random barrier in the location of the player;
	if B is barrier, say "You can't go that way, there is a [B] blocking the exit!" instead.

An all later time based rule (this is the barriers raising rule):
	repeat with B running through on-stage barriers:
		compute raising of B.

To compute raising of (B - a barrier):
	if (the number of dangerous monsters in the location of B is 0) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say OpeningFlav of B;
		destroy B.

To say OpeningFlav of (B - a barrier):
	say "[bold type]The [B] noisily opens, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the room.[roman type][line break]";

[!<ModestyShutter>@

REQUIRES COMMENTING

@inherits <Barrier>

@!]
A modesty shutter is a kind of barrier. There is 1 modesty shutter.

To compute raising of (B - a modesty shutter):
	if (the number of patrons in the location of B is 0 and dominatrix is not in the location of the player) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say "[bold type]The metal modesty shutter noisily opens, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the room.[roman type][line break]";
		destroy B;
		if there is a hotel bed in the location of the player:
			now patronTime is 0; [Player should now be able to rest easy]
			if pimp is alive:
				if patronbed uses is 1:
					now pimp is in the location of the player;
					let D be a random N-viable direction;
					say "A tall black [man of pimp] dressed as a pimp arrive froms the [D]!";
					if the times-met of pimp is 0:
						if the class of the player is princess, say "[speech style of pimp]'Listen up, princess. I don't work for you anymore. In fact, starting now you're gonna be ";
						otherwise say "[speech style of pimp]'Listen up[if diaper quest is 0], bitch[end if]. Nobody works in Bimbacia without reporting to me first, which means you're ";
					otherwise:
						say "[speech style of pimp]'Well done, [if diaper quest is 1]little one[otherwise]slut[end if]. I'm so glad you've decided to become ";
					say "one of my [if diaper quest is 1]baby slaves for hire[otherwise]whores[end if]. That means every time you [if diaper quest is 1]let one of these patrons babify you[otherwise]fuck a [Brotha of pimp][end if], you owe me a cut. Once you've turned a few tricks, it's best if you come and find me rather than wait for me to find you.'[roman type][line break]";
					increase the times-met of pimp by 1;
					now pimp is interested;
				otherwise:
					FavourDown pimp;
					if pimp is unfriendly and the player is getting unlucky:
						now pimp is in the location of the player;
						let D be a random N-viable direction;
						say "[BigNameDesc of pimp] arrives from the [D]! [GotUnluckyFlav]";
						check guaranteed perception of pimp.

vine-wall is a barrier. The printed name of a vine-wall is "vine wall".

To say OpeningFlav of (B - vine-wall):
	say "[bold type]The vines disperse, allowing you to leave the room.[roman type][line break]".

flaming-wall is a barrier. The printed name of a flaming-wall is "flaming wall".

To say OpeningFlav of (B - flaming-wall):
	say "[bold type]The fiery barrier dissipates, allowing you to leave the room.[roman type][line break]".

wind-wall is a barrier. [HASAGIIIIIIIIIIII Aika: FUCK THAT MOVE] The printed name of a wind-wall is "wind wall".

To say OpeningFlav of (B - wind-wall):
	say "[bold type]The windy barrier dissipates, allowing you to leave the room.[roman type][line break]".

reinforced-door is a barrier. The printed name of a reinforced-door is "reinforced door".

To say OpeningFlav of (B - reinforced-door):
	say "[bold type]The doors swing open, allowing you to leave the room.[roman type][line break]".

prison-bars is a barrier. The printed name of prison-bars is "prison bars".

To say OpeningFlav of (B - prison-bars):
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
