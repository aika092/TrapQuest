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
	while M is not regional or M is in the location of the player or M is nearby:
		now M is in a random placed room.

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
	now the health of M is the maxhealth of M. [Default set up for a monster with no specific defined setup]

[!<ComputeMonsterSetUpFix>+

Every turn we quickly check if there are any NPCs in a weird state in the location of the player

+!]
To compute MonsterSetUpFix:
	repeat with M running through nonexistent monsters in the location of the player:
		Set Up M.

Set Up Monsters ends here.
