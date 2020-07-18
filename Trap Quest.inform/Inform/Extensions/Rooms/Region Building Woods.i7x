Region Building Woods by Rooms begins here.

[!<SetUpTheWoods>+

REQUIRES COMMENTING

+!]
To Set Up The Woods:
	if loading scenes is 1:
		clear the screen;
		if images visible is 1:
			if diaper quest is 0:
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
	repeat with N2 running from 1 to startingRegionalMonsterCount:
		let M be a random woods prioritised monster;
		if M is not monster, now M is a random off-stage woods dwelling monster;
		if M is monster:
			set up M;
			if M is not in a placed dodgy room, now M is in a random placed unbossed dodgy room;
	if debugmode is 0 and loading scenes is 1, clear the screen;
	progress quest of new-region-quest.

[!<TheSpawnInitialWoodsBucketsRule>+

REQUIRES COMMENTING

+!]
This is the spawn initial woods buckets rule:
	repeat with N running from 1 to 8:
		let R be a random trappable placed jungle room;
		while there is a bucket in R:
			now R is a random trappable placed jungle room;
		deploy bucket in R.
The spawn initial woods buckets rule is listed in the set up woods traps rules.

[!<ScrambleWoods>+

REQUIRES COMMENTING

+!]
To Scramble Woods:
	let E be the easting part of the grid position of Stairwell01;
	let N be the northing part of the grid position of Stairwell01;
	let the sum be the spatial coordinate with maze level part 2 easting part E northing part N;[Maze level part 2 corresponds to the L part of a room's shape. Woods rooms have the shape L2.]
	now the grid position of Woods01 is the sum; [this changes the grid position of Woods01 from <0,0,0> to <2,0,0>]
	now target-floor is Woods01;[this is an example of a room that satisfies the condition "in the woods". Any will work.]
	solve the puzzle;
	make all jungle exits lead to Solid Rock.

Region Building Woods ends here.
