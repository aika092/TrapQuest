Summoning Trap by Traps begins here.


A summoning trap is a kind of trap. There are 20 click summoning traps.

[This is the spawn initial dungeon summoning traps rule:
	repeat with N running from 1 to 3:
		let R be a random trappable click untrapped placed labyrinth room;
		let T be a random off-stage summoning trap;
		deploy T in R.
The spawn initial dungeon summoning traps rule is listed in the set up dungeon traps rules.

This is the spawn initial woods summoning traps rule:
	repeat with N running from 1 to 3:
		let R be a random trappable click untrapped placed jungle room;
		let T be a random off-stage summoning trap;
		deploy T in R.
The spawn initial woods summoning traps rule is listed in the set up woods traps rules.

This is the spawn initial hotel summoning traps rule:
	repeat with N running from 1 to 3:
		let R be a random trappable click untrapped placed modern room;
		let T be a random off-stage summoning trap;
		deploy T in R.
The spawn initial hotel summoning traps rule is listed in the set up hotel traps rules.

This is the spawn initial mansion summoning traps rule:
	repeat with N running from 1 to 3:
		let R be a random trappable click untrapped placed haunted room;
		let T be a random off-stage summoning trap;
		deploy T in R.
The spawn initial mansion summoning traps rule is listed in the set up mansion traps rules.]

To trigger (Y - a summoning trap):
	now Y is not untriggered;
	now Y is expired;
	now the reset-timer of Y is 250;
	let M be nothing;
	if the player is in the dungeon:
		now M is a random off-stage first level monster;
	if the player is in the woods:
		now M is a random off-stage second level monster;
	if the player is in the hotel:
		now M is a random off-stage third level monster;
	if the player is in the mansion:
		now M is a random off-stage fourth level monster;
	if M is a monster:
		summon M;
		say "[SummoningFlav of M]";
	otherwise:
		say "ERROR: Couldn't find an appropriate monster to summon.".
	
To say SummoningFlav of (M - a monster):
	say "A monster has spawned somewhere nearby!".

Definition: A monster (called M) is first level:
	if M is dungeon dwelling, decide yes;
	decide no.
	
Definition: A monster (called M) is second level:
	if M is woods dwelling, decide yes;
	decide no.

Definition: A monster (called M) is third level:
	if M is hotel dwelling, decide yes;
	decide no.

Definition: A monster (called M) is fourth level:
	if M is mansion dwelling, decide yes;
	decide no.

To summon (M - a monster):
	if M is first level and the player is in the dungeon:
		summon M in the dungeon;
	otherwise if M is second level and the player is in the woods:
		summon M in the woods;
	otherwise if M is third level and the player is in the hotel:
		summon M in the hotel;
	otherwise if M is fourth level and the player is in the mansion:
		summon M in the mansion;
	otherwise if M is first level:
		summon M in the dungeon;
	otherwise if M is second level:
		summon M in the woods;
	otherwise if M is third level:
		summon M in the hotel;
	otherwise if M is fourth level:
		summon M in the mansion;
	if M is nonexistant and M is on-stage, set up M.

To summon (M - a monster) in (D - the dungeon):
	while M is off-stage or M is nearby or M is in the location of the player or M is in Dungeon12 or M is in Dungeon11 or M is in Dungeon10 or M is in a bossed room:
		now M is in a random placed labyrinth room;
		if M is nonexistant and the number of placed labyrinth rooms is the number of discovered labyrinth rooms, DifficultyUp M by 5.

To summon (M - a monster) in (D - the woods):
	if the number of placed jungle rooms > 1:
		while M is off-stage or M is nearby or M is in the location of the player or M is in Woods01 or M is in a bossed room:
			now M is in a random placed jungle room;
			if M is nonexistant and the number of placed jungle rooms is the number of discovered jungle rooms, DifficultyUp M by 5.

To summon (M - a wild gladiator) in (D - the woods):
	if the number of placed jungle rooms > 1:
		while M is off-stage or M is nearby or M is in the location of the player or M is in Woods01 or M is in a bossed room:
			now M is in a random placed jungle room;
			if M is nonexistant and the number of placed jungle rooms is the number of discovered jungle rooms, DifficultyUp M by 5.

To summon (M - a monster) in (D - the hotel):
	if the number of placed modern rooms > 1:
		while M is off-stage or M is nearby or M is in the location of the player or M is in Hotel01 or M is in a bossed room:
			now M is in a random placed modern room;
			if M is nonexistant and the number of placed modern rooms is the number of discovered modern rooms, DifficultyUp M by 5.
			
To summon (M - a monster) in (D - the mansion):
	if the number of placed haunted rooms > 1:
		while M is off-stage or M is nearby or M is in the location of the player or M is in Mansion01 or M is in a bossed room:
			now M is in a random placed haunted room.
			[if the number of placed haunted rooms is the number of discovered haunted rooms, DifficultyUp M by 5.]



Summoning Trap ends here.

