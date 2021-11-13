Summoning Trap by Traps begins here.

A summoning trap is a kind of trap. There are 6 click summoning traps.

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
The spawn initial woods summoning traps rule is listed in the set up woods traps rules.]

[This is the spawn initial hotel summoning traps rule:
	repeat with N running from 1 to 3:
		let R be a random trappable click untrapped placed modern room;
		let T be a random off-stage summoning trap;
		deploy T in R.
The spawn initial hotel summoning traps rule is listed in the set up hotel traps rules.]

[This is the spawn initial mansion summoning traps rule:
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
	if playerRegion is Dungeon:
		now M is a random off-stage dungeon dwelling monster;
	if playerRegion is Woods:
		now M is a random off-stage woods dwelling monster;
	if playerRegion is Hotel:
		now M is a random off-stage hotel dwelling monster;
	if playerRegion is Mansion:
		now M is a random off-stage mansion dwelling monster;
	if M is a monster:
		summon M;
		say SummoningFlav of M;
	otherwise:
		say "ERROR: Couldn't find an appropriate monster to summon.".

To say SummoningFlav of (M - a monster):
	say "A monster has spawned somewhere nearby!".

To summon (M - a monster):
	if M is dungeon dwelling and playerRegion is Dungeon:
		summon M in the dungeon;
	otherwise if M is woods dwelling and playerRegion is Woods:
		summon M in the woods;
	otherwise if M is hotel dwelling and playerRegion is Hotel:
		summon M in the hotel;
	otherwise if M is mansion dwelling and playerRegion is Mansion:
		summon M in the mansion;
	otherwise if M is dungeon dwelling:
		summon M in the dungeon;
	otherwise if M is woods dwelling:
		summon M in the woods;
	otherwise if M is hotel dwelling:
		summon M in the hotel;
	otherwise if M is mansion dwelling:
		summon M in the mansion;
	otherwise if M is in the School:
		summon M in the school;
	otherwise if M is in the dungeon: [This is used during fainting to reset monster that don't spawn normally]
		summon M in the dungeon;
	otherwise if M is in the woods:
		summon M in the woods;
	otherwise if M is in the hotel:
		summon M in the hotel;
	otherwise if M is in the mansion:
		summon M in the mansion;
	otherwise:
		summon M in playerRegion;
	if M is nonexistent and M is on-stage, set up M.

To summon (M - a monster) in (D - the dungeon):
	let failsafe be 0;
	while failsafe < 50 and (M is off-stage or M is in the location of the player or M is in Dungeon12 or M is in Dungeon11 or M is in Dungeon10 or M is nearby):
		increase failsafe by 1;
		now M is in a random placed unbossed labyrinth room;
		if M is nonexistent and the number of placed labyrinth rooms is the number of discovered labyrinth rooms, SilentlyDifficultyUp M by 5.

To summon (M - a monster) in (D - the woods):
	if the number of placed unbossed jungle rooms > 1:
		let failsafe be 0;
		while failsafe < 50 and (M is off-stage or M is in the location of the player or M is in Woods01 or M is nearby):
			increase failsafe by 1;
			now M is in a random placed unbossed jungle room;
			if M is nonexistent and the number of placed jungle rooms is the number of discovered jungle rooms, SilentlyDifficultyUp M by 5.

To summon (M - a monster) in (D - the hotel):
	if the number of placed unbossed modern rooms > 1:
		let failsafe be 0;
		while failsafe < 50 and (M is off-stage or M is in the location of the player or M is in Hotel01 or M is nearby):
			increase failsafe by 1;
			now M is in a random placed unbossed modern room;
			if M is nonexistent and the number of placed modern rooms is the number of discovered modern rooms, SilentlyDifficultyUp M by 5.

To summon (M - a monster) in (D - the mansion):
	if the number of placed unbossed haunted rooms > 1:
		let failsafe be 0;
		while failsafe < 50 and (M is off-stage or M is in the location of the player or M is in Mansion01 or M is nearby):
			increase failsafe by 1;
			now M is in a random placed unbossed haunted room.
			[if the number of placed haunted rooms is the number of discovered haunted rooms, SilentlyDifficultyUp M by 5.]

[Most NPCs aren't allowed in the school]
To summon (M - a monster) in (D - the school):
	if M is student or M is staff member:
		let failsafe be 0;
		while failsafe < 50 and (M is off-stage or M is nearby or M is in the location of the player or the entry-rank of (the location of M) > the current-rank of M):
			increase failsafe by 1;
			now M is in a random academic room;
	otherwise:
		if Hotel01 is discovered and a random number from 1 to 2 is 1, summon M in the hotel;
		otherwise summon M in the dungeon.

Summoning Trap ends here.
