Searching by Actions begins here.

Check searching a container:
	if the noun is open, say "Why would you search an open container?" instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the delicateness of the player is 1, say "[if debuginfo > 0]delicateness (1) | (1.5) search delicateness requirement[line break][end if][variable custom style]Searching for traps is a waste of time. What's the worst they could do? Bring it on![roman type][line break]" instead;
	if the player is breasts blinded, say "You can't see clearly enough to search while your [ShortDesc of breasts] are floating in front of your face!" instead;
	if the player is blinded, say "You can't see clearly enough to search while your face is so thoroughly plastered with [semen]!" instead;
	if the player is prone, say "You can't search while on all fours!" instead;
	if the player is at least partially immobile, say "You're a bit busy right now to be searching that!" instead;
	[Selkie: I thought I might use stuck instead of glued, for clothing, but I think stuck clothing means it's stuck to the floor, hence it stops you searching a container.]
	if the player is clothing stuck, say "You can't because your [a random stuck clothing worn by the player] is stuck in place!" instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the prevsearch of the noun is 0, First Time Search the noun instead;
	otherwise Second Time Search the noun instead.

Check examining a container:
	if the noun is treasure chest and the bimbo of the player > 12 and the largeness of breasts > 6, say "[second custom style]Wow, I do have big tits![roman type][line break]" instead.

Check searching a container:
	if the noun is treasure chest and the bimbo of the player > 16 and the largeness of breasts > 6, say "[second custom style]I wonder if I've lost anything down my cleavage![roman type][line break]" instead.

Report examining a container:
	if autosearch is 1 and the noun is closed and the noun is not pedestal, try searching the noun.

To First Time Search (X - a container):
	allocate 6 seconds;
	let R be a random number from 0 to 25;
	let I be the intelligence of the player;
	let I2 be I + (the number of worn bunny ears * 10) + (the number of worn stethoscope * 5);
	if debuginfo > 0:
		say "[input-style]Search check: Intelligence ([I + 0]) [if there is a worn stethoscope and there are worn bunny ears]+ stethoscope bonus (5) + bunny ears bonus (10) = [I2] [otherwise if there are worn bunny ears]+ bunny ears bonus (10) = [I2] [otherwise if there is a worn stethoscope]+ stethoscope bonus (5) = [I2] [end if]| ";
		if debugmode > 0 or (X is trapped and I2 > R) or I2 > 25, say "([R].5) d26-0.5 click trap difficulty[roman type][line break]";
		otherwise say "(???) d26-0.5 possible click trap difficulty[roman type][line break]";
	if X is trapped:
		if I2 > R:
			if the bimbo of the player < 18:
				let BR be a random number from the bimbo of the player to 20;
				if debuginfo > 0, say "[input-style]Temptation resist check: [if the bimbo of the player < 8]Bimbo ([bimbo of the player]) = automatic success[otherwise]Bimbo ([bimbo of the player]) ==> RNG([bimbo of the player]~20) = [BR] | (17.5) temptation threshold[end if][roman type][line break]";
				if the bimbo of the player < 8 or BR < 18:
					say "Uh-oh, looks like this [ShortDesc of X] is trapped with a [ShortDesc of trigger-target of X]! Better leave it alone...";
					if there is a worn stethoscope, now the prevsearch of X is 4;
					otherwise now the prevsearch of X is 2;
				otherwise:
					say "It looks like this [ShortDesc of X] is trapped! But you're eager to have fun, so you decide to open it anyway...";
					now autoopen is 1;
					try opening X;
			otherwise:
				if debuginfo > 0, say "[input-style]Temptation resist check: Bimbo ([bimbo of the player]) = automatic failure[roman type][line break]";
				say "Ooh, you find a trap, how exciting! You open the [ShortDesc of X] to trigger it!";
				now autoopen is 1;
				try opening X;
		otherwise:
			say "You can't seem to find any traps, maybe it's safe?";
			if there is a worn stethoscope, now the prevsearch of X is 3;
			otherwise now the prevsearch of X is 1;
	otherwise:
		say "You can't seem to find any traps, maybe it's safe?";
		if there is a worn stethoscope, now the prevsearch of X is 3;
		otherwise now the prevsearch of X is 1;
	if the prevsearch of X is 4 and a random number between 1 and 5 is 1, HairBlondeDown 1;
	if the prevsearch of X is 2 and a random number between 1 and 5 is 1, HairBlondeDown 1.

To Second Time Search (X - a container):
	if there is a worn stethoscope:
		if the prevsearch of X > 1:
			if the prevsearch of X is 3, say "You've already searched this with your stethoscope, finding nothing!";
			otherwise say "You found a [ShortDesc of trigger-target of X], remember?";
		otherwise:
			allocate 6 seconds;
			say "[variable custom style]I have already searched this, but I guess it's worth another shot now that I have a stethoscope...[roman type][line break]";
			let R be a random number from 0 to 25;
			let I be the intelligence of the player;
			let I2 be I + (the number of worn bunny ears * 10) + 5;
			if debuginfo > 0:
				say "[input-style]Search check: Intelligence ([I + 0]) + stethoscope bonus (5) [if there are worn bunny ears]+ bunny ears bonus (10) = [I2] [end if]| ";
				if debugmode > 0 or (X is trapped and I2 > R) or I2 > 25, say "([R].5) d26-0.5 click trap difficulty[roman type][line break]";
				otherwise say "(???) d26-0.5 possible click trap difficulty[roman type][line break]";
			if X is trapped:
				if I2 > R:
					if the bimbo of the player < 18:
						let BR be a random number from the bimbo of the player to 20;
						if debuginfo > 0, say "[input-style]Temptation resist check: [if the bimbo of the player < 8]Bimbo ([bimbo of the player]) = automatic success[otherwise]Bimbo ([bimbo of the player]) ==> RNG([bimbo of the player]~20) = [BR] | (17.5) temptation threshold[end if][roman type][line break]";
						if the bimbo of the player < 8 or BR < 18:
							say "Uh-oh, looks like this [ShortDesc of X] is trapped with a [ShortDesc of trigger-target of X] after all! Good call!";
							now the prevsearch of X is 4;
						otherwise:
							say "It looks like this [ShortDesc of X] is trapped after all! But you're eager to have fun, so you decide to open it anyway...";
							now autoopen is 1;
							try opening X;
					otherwise:
						if debuginfo > 0, say "[input-style]Temptation resist check: Bimbo ([bimbo of the player]) = automatic failure[roman type][line break]";
						say "Ooh, you find a trap after all, how exciting! You open the [ShortDesc of X] to trigger it.";
						now autoopen is 1;
						try opening X;
				otherwise:
					say "You still can't seem to find any traps, so it's probably safe?";
					now the prevsearch of X is 3;
			otherwise:
				say "You still can't seem to find any traps, so it's probably safe?";
				now the prevsearch of X is 3;
			if the prevsearch of X is 4 and a random number between 1 and 5 is 1, HairBlondeDown 1;
	otherwise:
		if the prevsearch of X is 1 or the prevsearch of X is 3, say "You have already searched that. You found nothing.";
		otherwise say "You have already searched that. You found a [ShortDesc of trigger-target of X]!".

Understand "investigate [something]", "inspect [something]" as searching.

Rule for supplying a missing noun while searching:
	repeat with X running through containers in the location of the player:
		now the noun is X.

[Searching for traps:

Prevsearch means the following:

0: Unsearched
1: Found nothing
2: Discovered trap
3: Found nothing again after using stethoscope search.
4: Found trap after using your stethoscope search.
]

Searching ends here.
