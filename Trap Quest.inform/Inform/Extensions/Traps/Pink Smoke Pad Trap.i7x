Pink Smoke Pad Trap by Traps begins here.


A pink smoke pad is a kind of trap. There are 20 pressure pink smoke pads.

This is the spawn initial dungeon smoke traps rule:
	repeat with N running from 1 to 6:
		let R be a random pressure untrapped trappable placed labyrinth room;
		unless there is a milking bench in R:
			let T be a random off-stage pink smoke pad;
			deploy T in R;
	let T be a random off-stage pink smoke pad;
	deploy T in Dungeon12.
The spawn initial dungeon smoke traps rule is listed in the set up dungeon traps rules.

This is the spawn initial hotel smoke traps rule:
	repeat with N running from 1 to 6:
		let R be a random pressure untrapped trappable placed modern room;
		unless there is a hotel bed in R:
			let T be a random off-stage pink smoke pad;
			deploy T in R.
The spawn initial hotel smoke traps rule is listed in the set up hotel traps rules.

This is the spawn initial mansion smoke traps rule:
	repeat with N running from 1 to 5:
		let R be a random pressure untrapped trappable placed haunted room;
		if R is not garlic:[guest bed and master bed]
			let T be a random off-stage pink smoke pad;
			deploy T in R.
The spawn initial mansion smoke traps rule is listed in the set up mansion traps rules.

pink smoke is a backdrop.
To say ExamineDesc of (C - pink smoke):
	say "A heavy layer of [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke comes up to about waist high in this room. While on your knees you'll be forced to breathe it in...".

To trigger (Y - a pink smoke pad):
	say "You hear a click and a hiss, and [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke starts to fill the room from holes in the wall at about waist level.[if the player is upright][one of][line break]Luckily the gas is heavier than air, so it is just filling up the room from your waist downwards, but if you were kneeling you'd be forced to breathe it in![or][stopping][end if][if the room-entering of the player is 0][line break]You quickly leave the room![end if]";
	now the location of Y is smoky;
	update backdrop positions;
	now Y is not untriggered;
	now Y is revealed.

To compute reset cooldown of (T - a pink smoke pad):
	do nothing. [Only ever triggers once]



Pink Smoke Pad Trap ends here.

