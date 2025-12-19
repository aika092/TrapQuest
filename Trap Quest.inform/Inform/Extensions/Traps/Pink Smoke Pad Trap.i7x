Pink Smoke Pad Trap by Traps begins here.

A pink-smoke-pad is a kind of trap. There are 20 pressure pink-smoke-pads.

This is the spawn initial dungeon smoke traps rule:
	repeat with N running from 1 to 6:
		let R be a random pressure untrapped trappable placed labyrinth room;
		unless there is a milking bench in R:
			let T be a random off-stage pink-smoke-pad;
			deploy T in R;
	let T be a random off-stage pink-smoke-pad;
	deploy T in Dungeon12.
The spawn initial dungeon smoke traps rule is listed in the set up dungeon traps rules.

This is the spawn initial hotel smoke traps rule:
	repeat with N running from 1 to 6:
		let R be a random pressure untrapped trappable placed modern room;
		unless there is a hotel bed in R:
			let T be a random off-stage pink-smoke-pad;
			deploy T in R.
The spawn initial hotel smoke traps rule is listed in the set up hotel traps rules.

This is the spawn initial mansion smoke traps rule:
	repeat with N running from 1 to 5:
		let R be a random pressure untrapped trappable placed haunted room;
		if R is not garlic:[guest bed and master bed]
			let T be a random off-stage pink-smoke-pad;
			deploy T in R.
The spawn initial mansion smoke traps rule is listed in the set up mansion traps rules.

This is the spawn initial woods smoke traps rule:
	repeat with N running from 1 to 3:
		let R be a random pressure untrapped trappable placed dodgy jungle room;
		if R is a room:
			let T be a random off-stage pink-smoke-pad;
			deploy T in R.
The spawn initial woods smoke traps rule is listed in the set up woods traps rules.

pink smoke is a backdrop. The text-shortcut of pink smoke is "pink smoke".

This is the pink smoke gets focused rule:
	if the location of the player is pink-smoky, focus-consider pink smoke.
The pink smoke gets focused rule is listed in the focus finding rules.

To say ExamineDesc of (C - pink smoke):
	say "A heavy layer of [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke comes up to about waist high in this room. While on your knees you'll be forced to breathe it in...".

[
Under normal circumstances, pink smoke traps trigger once and that's it. However, with infamy fetish enabled, pink smoke traps are spawn points for camera drones and will need to reset. Certain rooms are immune to this unless doom is underway.
]

To trigger (Y - a pink-smoke-pad):
	let triggerable be 0;
	if the location of Y is not pink-smoky or (camera-drone is nonstalking and the player is the donator), now triggerable is 1;
	if (the location of Y is a jungle room or the location of Y is garlic) and (doomed < 1 or the player is not the donator), now triggerable is 0;
	if infamy fetish is 1 and triggerable is 0:
		say "You hear a click and a sputtering hiss... but nothing happens.";
		now the reset-timer of Y is 400;
		now Y is not untriggered;
		now Y is triggered;
		now Y is revealed;
	otherwise if the location of Y is not pink-smoky and triggerable is 1:
		say "You hear a click and a hiss, and [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke starts to fill the room from holes in the [if playerRegion is Woods]trees[otherwise]wall[end if] at about waist level.[if the player is upright][one of][line break]Luckily the gas is heavier than air, so it is just filling up the room from your waist downwards, but if you were kneeling you'd be forced to breathe it in![or][stopping][end if][if the room-entering of the player is 0][line break]You quickly leave the room![end if]";
		now the location of Y is pink-smoky;
		update backdrop positions;
		if infamy fetish is 1, now the reset-timer of Y is 400;
		now Y is not untriggered;
		now Y is triggered;
		now Y is revealed;
	otherwise if triggerable is 1 and infamy fetish is 1:
		say "You hear a click, and [if doomed < 1]the whirring of gears[otherwise]a disgusting slurping sound[end if] as a fist-sized, floating [if doomed < 1]drone with a camera lens[otherwise]eye with tiny dangling tentacles[end if] emerges from the smoke and begins to hover in front of you.";
		deploy a drone camera;
		now the reset-timer of Y is 400;
		now Y is not untriggered;
		now Y is triggered;

To compute reset cooldown of (T - a pink-smoke-pad):
	if infamy fetish is 1:[If infamy is disabled, smoke traps don't reset]
		compute default reset cooldown of T;
	otherwise:
		do nothing.[Only ever triggers once]

Pink Smoke Pad Trap ends here.
