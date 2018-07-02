Searching by Actions begins here.


[!<CheckSearchingAContainer>+

REQUIRES COMMENTING

+!]
Check searching a container:
	if the noun is open, say "Why would you search an open container?" instead;
	if the delicateness of the player is 1, say "[variable custom style]Searching for traps is a waste of time. What's the worst they could do?  Bring it on![roman type][line break]" instead;
	if the player is breasts blinded, say "You can't see clearly enough to search while your [ShortDesc of breasts] are floating in front of your face!" instead;
	if the player is prone, say "You can't search while on all fours!" instead;
	if the player is immobile, say "You're a bit busy right now to be searching that!" instead;
	[###Selkie: I thought I might use stuck instead of glued, for clothing, but I think stuck clothing means it's stuck to the floor, hence it stops you searching a container.]
	if the player is clothing stuck, say "You can't because your [a random stuck clothing worn by the player] is stuck in place!" instead;
	if the noun is treasure chest and the bimbo of the player > 12 and the largeness of breasts > 6, say "[second custom style]Wow, I do have big tits![roman type][line break]" instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the prevsearch of the noun is 0, First Time Search the noun instead;
	otherwise Second Time Search the noun instead.

[!<CheckExaminingAContainer>+

REQUIRES COMMENTING

+!]
Check examining a container:
	if the noun is treasure chest and the bimbo of the player > 12 and the largeness of breasts > 6, say "[second custom style]Wow, I do have big tits![roman type][line break]" instead.

[!<CheckSearchingAContainer>+

REQUIRES COMMENTING

+!]
Check searching a container:
	if the noun is treasure chest and the bimbo of the player > 16 and the largeness of breasts > 6, say "[second custom style]I wonder if I've lost anything down my cleavage![roman type][line break]" instead.

[!<ReportExaminingAContainer>+

REQUIRES COMMENTING

+!]
Report examining a container:
	if autosearch is 1 and the noun is closed, try searching the noun.

[!<FirstTimeSearchContainer>+

REQUIRES COMMENTING

+!]
To First Time Search (X - a container):
	now seconds is 6;
	if X is trapped:
		let R be a random number from 0 to 25;
		let I be the intelligence of the player + (the number of worn bunny ears * 10);
		if debugmode is 1, say "Search check: Player [I + 0] | [R].5 Click Trap[paragraph break]";
		if R < I:
			if the bimbo of the player < 18:
				if the bimbo of the player < 8 or a random number from the bimbo of the player to 20 < 18:
					say "Uh- oh, looks like this [noun] is trapped with a [random click trap in the location of the player]!  Better leave it alone...";
					if there is a worn stethoscope, now the prevsearch of X is 4;
					otherwise now the prevsearch of X is 2;
				otherwise:
					say "It looks like this [noun] is trapped!  But you're eager to have fun, so you decide to open it anyway...";
					now autoopen is 1;
					try opening X;
			otherwise:
				say "Ooh, you find a trap, how exciting!  You open the [X] to trigger it!";
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

[!<SecondTimeSearchContainer>+

REQUIRES COMMENTING

+!]
To Second Time Search (X - a container):
	now seconds is 6;
	if there is a worn stethoscope:
		if the prevsearch of X is 3 or the prevsearch of X is 4:
			if the prevsearch of X is 3, say "You've already searched this finding nothing!";
			otherwise say "You found a trap, remember?";
		otherwise:
			say "You have already searched this, but I guess it's worth another shot now that you have a stethoscope...[line break]";
			if X is trapped:
				let R be a random number from 0 to 29;
				if debugmode is 1, say "Search check: Player [intelligence of the player] | [R].5 Click Trap[paragraph break]";
				if R < the intelligence of the player:
					if the bimbo of the player < 18:
						if the bimbo of the player < 8 or a random number from the bimbo of the player to 20 < 18:
							say "Uh- oh, looks like this [noun] is trapped with a [random click trap in the location of the player] after all!  Good call!";
							now the prevsearch of X is 4;
						otherwise:
							say "It looks like this [noun] is trapped after all!  But you're eager to have fun, so you decide to open it anyway...";
							now autoopen is 1;
							try opening X;
					otherwise:
						say "Ooh, you find a trap after all, how exciting!  You open the [X] to trigger it.";
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
		if the prevsearch of X is 1, say "You have already searched that. You found nothing.";
		if the prevsearch of X is 2, say "You have already searched that. You found a trap!".
			
Understand "investigate [something]", "inspect [something]" as searching.

[!<RuleForSupplyingMissingNounsWhileSearching>+

REQUIRES COMMENTING

+!]
Rule for supplying a missing noun while searching:
	repeat with X running through containers in the location of the player:
		now the noun is X;

[Searching for traps:

Prevsearch means the following:

0: Unsearched
1: Found nothing
2: Discovered trap
3: Found nothing again after using stethoscope search.
4: Found trap after using your stethoscope search.
]



Searching ends here.

