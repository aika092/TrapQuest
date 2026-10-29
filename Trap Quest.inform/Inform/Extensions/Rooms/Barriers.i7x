Barriers by Rooms begins here.

[!<Barrier>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
A barrier is a kind of thing. A barrier is not portable. Understand "barrier" as barrier.

Check going when there is a barrier in the location of the player:
	follow the barriers raising rule;
	let B be a random barrier in the location of the player;
	if B is barrier, say "You can't go that way, there is a [printed name of B] blocking the exit!" instead.

Check going when there is an on-stage barrier:
	follow the barriers raising rule;
	let L be the room the noun from the location of the player;
	let B be a random barrier in L;
	if B is a barrier, say "You can't go that way, there is a [printed name of B] blocking the way!" instead.

An all later time based rule (this is the barriers raising rule):
	repeat with B running through on-stage barriers:
		check raising of B.

To check raising of (B - a barrier):
	if (the number of dangerous monsters in the location of B is 0) or the player is not in the location of B:
		if debugmode > 0, say "Location of barrier: [location of B]. Location of player: [location of player]. Dangerous monsters: [list of dangerous monsters in the location of B].";
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say OpeningFlav of B;
		destroy B.

To say OpeningFlav of (B - a barrier):
	say "[bold type]The [B] noisily opens, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the room.[roman type][line break]";

[!<ModestyShutter>@

REQUIRES COMMENTING

@inherits <Barrier>

@!]
modesty shutter is a barrier. The text-shortcut of modesty shutter is "shutter".
modesty-shutter-clone is a thing. modesty-shutter-clone is not portable. The printed name of modesty-shutter-clone is "modesty shutter". The text-shortcut of modesty-shutter-clone is "shutter". modesty-shutter-clone is not portable. Understand "modesty shutter" as modesty-shutter-clone.

To say ExamineDesc of (C - modesty shutter):
	say "This automatically controlled impenetrable metal barrier has blocked [if the number of entries in the Nviables of the location of modesty shutter > 2]every exit[otherwise if the number of entries in the Nviables of the location of modesty shutter is 2]both exits[otherwise]the only exit[end if] and will only rise when your [']session['] is complete.".
To say ExamineDesc of (C - modesty-shutter-clone):
	say "This automatically controlled impenetrable metal barrier has blocked the doorway leading into [the location of modesty shutter] and will only rise when their [']session['] is complete. You can faintly hear animalistic moans of pleasure coming from the other side.".


Figure of modesty shutter is the file "Env/Hotel/shutter2.jpg".
Figure of modesty shutter moans is the file "Env/Hotel/shutter3.jpg".
To decide which figure-name is the examine-image of (C - modesty shutter):
	decide on Figure of modesty shutter.
To decide which figure-name is the examine-image of (C - modesty-shutter-clone):
	decide on Figure of modesty shutter moans.

To check raising of (B - modesty shutter):
	if (the number of patrons in the location of B is 0 and dominatrix is not in the location of the player) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if debugmode > 0, say "[input-style]Checking if we can raise the shutter.[roman type][line break]";
		if neighbour finder is next door and the number of entries in the Nviables of the location of the player > 1: [The shutter closed on the neighbouring room. It won't open until the player moves away (which we've confirmed that they can).]
			if debugmode > 0, say "[input-style]Player is outside and can go a different way.[roman type][line break]";
			now modesty-shutter-clone is in the location of the player;
			say "The sound of moaning from the other side of the shutter [if the player is horny]makes you shudder with arousal[otherwise if the player is a bit horny]makes your [genitals] twitch[otherwise]makes you feel fuzzy inside[end if].";
			cuck arouse 1000;
		otherwise:
			if the location of the player is neighbour finder or neighbour finder is next door, say "[bold type]The metal modesty shutter noisily opens, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the room.[roman type][line break]";
			destroy B;
			destroy modesty-shutter-clone;
			if the player is in neighbour finder and there is a hotel bed in the location of the player:
				now patronTime is 0; [Player should now be able to rest easy]
				if pimp is alive:
					if patronbed uses is 1:
						now pimp is in the location of the player;
						let D be a random N-viable direction;
						say "A tall black [man of pimp] dressed as a pimp arrives from the [D]!";
						if the times-met of pimp is 0:
							if the class of the player is princess, say "[speech style of pimp]'Listen up, princess. I don't work for you anymore. In fact, starting now you're gonna be ";
							otherwise say "[speech style of pimp]'Listen up[if diaper quest is 0], bitch[end if]. Nobody works in Bimbacia without reporting to me first, which means you're ";
						otherwise:
							say "[speech style of pimp]'Well done, [if diaper quest is 1]little one[otherwise]slut[end if]. I'm so glad you've decided to become ";
						say "one of my [if diaper quest is 1]baby slaves for hire[otherwise]whores[end if]. That means every time you [if diaper quest is 1]let one of these patrons babify you[otherwise]fuck a [brotha of pimp][end if], you owe me a cut. Once you've turned a few tricks, it's best if you come find me rather than make me find you.'[roman type][line break]";
						increase the times-met of pimp by 1;
						interest pimp;
					otherwise:
						if game difficulty > a random number between 0 and 3, FavourDown pimp;
						if pimp is unfriendly and the player is getting unlucky:
							now pimp is in the location of the player;
							let D be a random N-viable direction;
							say "A tall black [man of pimp] dressed as a pimp arrive froms the [D]!";
							if the times-met of pimp is 0:
								if the class of the player is princess, say "[speech style of pimp]'Listen up, princess. I don't work for you anymore. In fact, starting now you're gonna be ";
								otherwise say "[speech style of pimp]'Listen up[if diaper quest is 0], bitch[end if]. Nobody works in Bimbacia without reporting to me first, which means you're ";
							otherwise:
								say "[speech style of pimp]'Well done, [if diaper quest is 1]little one[otherwise]slut[end if]. I'm so glad you've decided to become ";
							say "one of my [if diaper quest is 1]baby slaves for hire[otherwise]whores[end if]. That means every time you [if diaper quest is 1]let one of these patrons babify you[otherwise]fuck a [brotha of pimp][end if], you owe me a cut. Once you've turned a few tricks, it's best if you come find me rather than make me find you.'[roman type][line break]";
							increase the times-met of pimp by 1;
							interest pimp;
						otherwise:
							if game difficulty > a random number between 0 and 3, FavourDown pimp;
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

To check raising of (B - cell-door):
	if (the number of interested unfriendly monsters in the location of the player is 0) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say "[bold type]The cell door creaks open, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the cell.[roman type][line break]";
		destroy B.

shack-door is a barrier.

To check raising of (B - shack-door):
	if (the number of interested unfriendly monsters in the location of the player is 0) or the player is not in the location of B:
		now neighbour finder is the location of B;
		if the location of the player is neighbour finder or the location of the player is next door, say "[bold type]The door swings open, allowing you [if the player is in neighbour finder]to leave[otherwise]to enter[end if] the shack.[roman type][line break]";
		destroy B.]

Barriers ends here.
