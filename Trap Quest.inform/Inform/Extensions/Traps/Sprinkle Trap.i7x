Sprinkle Trap by Traps begins here.

A sprinkle trap is a kind of trap. There are 10 potentially wire potentially sticky sprinkle traps. Understand "sprinkler" as sprinkle trap.

This is the spawn initial dungeon sprinkle traps rule:
	repeat with N running from 1 to 3 - (diaper quest * 2):
		let R be a random trappable placed labyrinth room;
		let T be a random off-stage sprinkle trap;
		unless there is a sprinkle trap in R, deploy T in R.
The spawn initial dungeon sprinkle traps rule is listed first in the set up dungeon traps rules.

This is the spawn initial hotel sprinkle traps rule:
	repeat with N running from 1 to 2:
		let R be a random trappable placed modern room;
		let T be a random off-stage sprinkle trap;
		unless there is a sprinkle trap in R, deploy T in R.
The spawn initial hotel sprinkle traps rule is listed first in the set up hotel traps rules.

To trigger (Y - a sprinkle trap):
	if the TrapNo of Y is 0, now the TrapNo of Y is a random number between 1 and 4;
	now Y is revealed;
	now Y is not untriggered;
	say "Sprinklers in the ceiling start spraying [if diaper quest is 1]water over the entire room[otherwise]some kind of [SprinkleLiquid of Y][end if]! It gets over your hair and body, and over everything in the room! Everything is covered in a fine layer of [SprinkleLiquid of Y].";
	now the sprinkle-puddle of the location of Y is 4;
	now the reset-timer of Y is 250.

To sprinkle (T - a sprinkle trap):
	if diaper quest is 1:
		repeat with C running through currently uncovered fluid vulnerable clothing:
			WaterSoak 1 on C;
		if the make-up of face > 0 and permanent makeup is 0:
			say "[if the make-up of face > 1]Some of your[otherwise]Your[end if] make up is washed away.";
			FaceDown 1;
	otherwise:
		if a random number between 1 and 5 > 2:
			if the TrapNo of T is 1, HairRedUp 1;
			if the TrapNo of T is 2, HairBlondeUp 1;
			if the TrapNo of T is 3, HairBrightUp 1;
			if the TrapNo of T is 4:
				let R be a random number between 1 and 3;
				if R is 1, HairBlondeUp 1;
				if R is 2, HairBrightUp 1;
				if R is 3, HairRedUp 1;
		otherwise:
			HairUp 1;
		if the TrapNo of T is 2 and watersports fetish is 1:
			repeat with C running through worn able to take more liquid clothing:
				PissSoak a random number between 0 and 1 on C.

To say SprinkleLiquid of (S - a sprinkle trap):
	if diaper quest is 1:
		say "clear liquid";
	otherwise:
		if the TrapNo of S is 1, say "red liquid";
		if the TrapNo of S is 2, say "[if watersports fetish is 1][urine][otherwise]golden liquid[end if]";
		if the TrapNo of S is 3, say "white liquid";
		if the TrapNo of S is 4, say "pink liquid".

To compute turn trap effect of (T - a sprinkle trap):
	if diaper quest is 0, say "The sprinkler continues to coat you in [SprinkleLiquid of T][one of], transforming your hair[if character-version is 1] and face[end if][or][stopping]!";
	otherwise say "The sprinkler continues to spray you with water.";
	sprinkle T.

To compute time decay of (T - a sprinkle trap):
	if the reset-timer of T - time-seconds < 200:
		if T is in the location of the player, say "The sprinklers finally stop.";
		if T is nearby, say "The [T] in the [location of T] finally stops.";
		now T is expired.

Sprinkle Trap ends here.
