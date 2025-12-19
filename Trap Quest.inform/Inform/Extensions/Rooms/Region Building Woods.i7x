Region Building Woods by Rooms begins here.

To Set Up The Woods:
	if loading scenes is 1:
		clear the screen;
		if images visible is 1:
			if the class of the player is berri:
				display Figure of berri loading low res;
			otherwise if diaper quest is 0:
				if a random number between 0 and tentacle fetish > 0:
					display figure of woods vines loading;
				otherwise if a random number between 0 and lactation fetish > 0:
					display figure of woods fairy loading;
				otherwise:
					display figure of woods loading;
			otherwise:
				display figure of dq woods loading;
		say "Now loading the woods region!";
		render buffered stuff;
	Scramble Woods;
	now the uses of WoodsScenery03 is 1;
	now a random hammock is in a random dodgy unrelaxing room;
	now a random hammock is in a random dodgy unrelaxing room;
	repeat with G running through important rooms in The Woods:
		unless G is the location of the player:
			let Y be a random treasure chest in Holding Pen;
			now Y is in G;
	repeat with G running through dodgy rooms in The Woods:
		unless G is the location of the player:
			let R be a random number between 1 and 2;
			let Y be a random large sack in Holding Pen;
			if R is 2, now Y is a random tree stump crate in Holding Pen;
			now Y is in G;
	unless there is an on-stage sword, now which-sword is in Woods26;
	follow the set up woods traps rules;
	repeat with M running through alive monsters in the woods:
		if the location of M is not placed, now M is in a random placed dodgy room;
	[let N1 be the regionalMonsterCount of the Woods;]
	let LM be a list of monsters;
	[Here we set LM to be a list of one of each of the different types of monsters that can spawn]
	let LMM be the list of off-stage woods dwelling summon appropriate monsters;
	if the number of entries in LMM > 0:
		sort LMM in random order; [so it's not the same variants at the start of every game]
		repeat with M running through LMM:
			let T1 be the substituted form of "[ShortDesc of M]";
			let uniqueM be true;
			repeat with N running through alive woods dwelling summoningRelevant monsters:
				let T2 be the substituted form of "[ShortDesc of N]";
				if T1 matches the text T2, now uniqueM is false;
			if uniqueM is true:
				repeat with N running through LM:
					let T2 be the substituted form of "[ShortDesc of N]";
					if T1 matches the text T2, now uniqueM is false;
			if uniqueM is true, add M to LM;
	repeat with N2 running from 1 to startingRegionalMonsterCount:
		let M be nothing;
		if the number of entries in LM > 0, now M is entry 1 in LM;
		otherwise now M is a random woods prioritised monster;
		if M is not monster, now M is a random off-stage woods dwelling monster;
		if M is monster:
			set up M;
			if M is not in a placed dodgy jungle room, now M is in a random placed unbossed dodgy jungle room;
	deploy a slimeball;
	if debugmode is 0 and loading scenes is 1, clear the screen;
	progress quest of new-region-quest.

This is the spawn initial woods buckets rule:
	repeat with N running from 1 to 8:
		let R be a random trappable placed jungle room;
		while there is a bucket in R:
			now R is a random trappable placed jungle room;
		deploy bucket in R.
The spawn initial woods buckets rule is listed in the set up woods traps rules.

To Scramble Woods:
	[let E be the easting part of the grid position of Stairwell01;
	let N be the northing part of the grid position of Stairwell01;]
	let N be 12;
	let E be 12;
	let the sum be the spatial coordinate with maze level part 2 easting part E northing part N;[Maze level part 2 corresponds to the L part of a room's shape. Woods rooms have the shape L2.]
	now the grid position of Woods01 is the sum; [this changes the grid position of Woods01 from <0,0,0> to <2,0,0>]
	now target-floor is Woods01;[this is an example of a room that satisfies the condition "in the woods". Any will work.]
	solve the puzzle;
	make all jungle exits lead to Solid Rock.

Region Building Woods ends here.
