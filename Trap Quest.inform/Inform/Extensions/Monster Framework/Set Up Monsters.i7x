Set Up Monsters by Monster Framework begins here.

The setting up dungeon monsters rules is a rulebook.
The setting up woods monsters rules is a rulebook.
The setting up hotel monsters rules is a rulebook.
The setting up mansion monsters rules is a rulebook.
The setting up school monsters rules is a rulebook.

To regionally place (M - a monster):
	if debugmode > 0, say "Regionally placing [M].";
	remove M from play;
	deinterest M; [generally when we regionally place some we want them to be able to notice the player immediately the next time they walk past each other]
	[now M is unleashed;]
	now the health of M is the maxhealth of M;
	while M is nonregional or M is within vision:
		now M is in a random placed room.

To decide which object is the default-local-room of (M - a monster):
	decide on nothing.

To locally place (M - a monster):
	let DR be the default-local-room of M;
	if debugmode > 0, say "Locally placing [M] (default local room is [DR]).";
	let failsafe be 0;
	if M is in a labyrinth room:
		if there is a placed labyrinth room:
			remove M from play;
			deinterest M; [generally when we regionally place some we want them to be able to notice the player immediately the next time they walk past each other]
			now the health of M is the maxhealth of M;
			if DR is a placed labyrinth room and DR is not within vision:
				now M is in DR;
			otherwise:
				while failsafe < 40 and (M is off-stage or M is within vision):
					increase failsafe by 1;
					now M is in a random placed labyrinth room;
	otherwise if M is in a jungle room:
		if there is a placed jungle room:
			remove M from play;
			deinterest M; [generally when we regionally place some we want them to be able to notice the player immediately the next time they walk past each other]
			now the health of M is the maxhealth of M;
			if DR is a placed jungle room and DR is not within vision:
				now M is in DR;
			otherwise:
				while failsafe < 40 and (M is off-stage or M is within vision):
					increase failsafe by 1;
					now M is in a random placed jungle room;
	otherwise if M is in a haunted room:
		if there is a placed haunted room:
			remove M from play;
			deinterest M; [generally when we regionally place some we want them to be able to notice the player immediately the next time they walk past each other]
			now the health of M is the maxhealth of M;
			if DR is a placed haunted room and DR is not within vision:
				now M is in DR;
			otherwise:
				while failsafe < 40 and (M is off-stage or M is within vision):
					increase failsafe by 1;
					now M is in a random placed haunted room;
	otherwise if M is in a modern room:
		if there is a placed modern room:
			remove M from play;
			deinterest M; [generally when we regionally place some we want them to be able to notice the player immediately the next time they walk past each other]
			now the health of M is the maxhealth of M;
			if DR is a placed modern room and DR is not within vision:
				now M is in DR;
			otherwise:
				while failsafe < 40 and (M is off-stage or M is within vision):
					increase failsafe by 1;
					now M is in a random placed modern room;
	otherwise if M is in an academic room:
		if there is a placed academic room:
			remove M from play;
			deinterest M; [generally when we regionally place some we want them to be able to notice the player immediately the next time they walk past each other]
			now the health of M is the maxhealth of M;
			if DR is a placed academic room and DR is not within vision:
				now M is in DR;
			otherwise:
				while failsafe < 40 and (M is off-stage or M is within vision):
					increase failsafe by 1;
					now M is in a random placed academic room;
	otherwise:
		say "BUG - unable to locally place [MediumDesc of M] because [he of M] is not in a normal location. Please report!";
	if failsafe is 40, say "BUG - unable to locally place [MediumDesc of M]. Please report!";

To Set Up Monsters:
	if debugmode > 1, say "Now setting up dungeon monsters...";
	follow the setting up dungeon monsters rules;
	if Woods01 is placed, follow the setting up woods monsters rules;
	if Hotel01 is placed, follow the setting up hotel monsters rules;
	if debugmode > 1, say "Now setting up mansion monsters...";
	if Mansion01 is placed, follow the setting up mansion monsters rules;
	repeat with M running through alive nonexistent monsters:
		if debugmode > 1, say "Setting up initial state of [M]...";
		set up M.

To set up (M - a monster):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M. [Default set up for a monster with no specific defined setup]

[!<ComputeMonsterSetUpFix>+

Every turn we quickly check if there are any NPCs in a weird state in the location of the player

+!]
To compute MonsterSetUpFix:
	repeat with M running through nonexistent monsters in the location of the player:
		say "Minor bug: [BigNameDesc of M] (in [location of M]) was spawned but not set up correctly. This has been fixed, but is worth reporting all the same.";
		Set Up M.

Set Up Monsters ends here.
