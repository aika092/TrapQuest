Region Building Dungeon by Rooms begins here.

To Set Up The Dungeon:
	say "Now loading the dungeon region!";
	if loading scenes is 1:
		clear the screen;
		if images visible is 1:
			if diaper quest is 0:
				if a random number between 0 and 1 < pregnancy fetish:
					display figure of dungeon pregnant loading;
				otherwise if a random number between 0 and 1 < mythical creature fetish:
					display figure of dungeon minotaur loading;
				otherwise:
					display figure of dungeon loading;
			otherwise:
				display figure of dq dungeon loading;
		let T be a random loading animation track;
		if the player is not virtual and animationsEnabled is 1 and T is an animation track:
			commence animation of T;
			wait until loading animation pauses;
		otherwise:
			render buffered stuff;
	[position Dungeon01 at <1,14,13>;
	position Dungeon02 at <1,15,12>;
	position Dungeon04 at <1,14,11>;
	position Dungeon06 at <1,15,13>;
	position Dungeon07 at <1,15,11>;
	position Dungeon08 at <1,16,13>;
	position Dungeon09 at <1,16,11>;
	position Dungeon03 at <1,16,12>;
	position Dungeon05 at <1,14,14>;
	position Dungeon14 at <1,16,10>;
	position Dungeon13 at <1,17,10>;
	position Dungeon15 at <1,17,11>;
	position Dungeon16 at <1,16,9>;
	position Dungeon17 at <1,17,9>;
	position Dungeon18 at <1,18,9>;
	position Dungeon19 at <1,18,11>;
	position Dungeon20 at <1,18,10>;
	position Dungeon21 at <1,17,12>;
	position Dungeon22 at <1,17,13>;
	position Dungeon23 at <1,16,14>;
	position Dungeon24 at <1,19,9>;
	position Dungeon25 at <1,18,8>;
	position Dungeon27 at <1,18,12>;
	position Dungeon28 at <1,17,8>;
	position Dungeon29 at <1,16,8>;
	position Dungeon30 at <1,15,9>;
	position Dungeon31 at <1,15,10>;
	position Dungeon33 at <1,13,11>;
	position Dungeon34 at <1,12,11>;
	position Dungeon35 at <1,19,12>;
	position Dungeon36 at <1,11,11>;
	position Dungeon37 at <1,10,11>;
	position Dungeon38 at <1,9,11>;
	position Dungeon39 at <1,8,11>;
	position Dungeon40 at <1,7,11>;
	position Dungeon41 at <1,15,14>;
	position Stairwell01 at <1,14,10>;]
	while the number of unplaced rooms in The Dungeon > 5:
		Scramble Dungeon;
		if the number of unplaced rooms in The Dungeon > 5 or Stairwell01 is unplaced or Dungeon28 is unplaced or Dungeon41 is unplaced:
			repeat with R running through labyrinth rooms:
				now Neighbour Finder is R;
				unless R is the location of the player or R is Dungeon12, now R is not smoky;
				unless R is Dungeon10 or R is Dungeon11 or R is Dungeon12 or R is Dungeon32:
					now R is not discovered;
					now the grid position of R is <0,0,0>;
					repeat with D running through N-viable directions:
						change the D exit of R to Solid Rock;
			change the north exit of Dungeon32 to Solid Rock;
			change the east exit of Dungeon32 to Solid Rock;
			change the south exit of Dungeon32 to Solid Rock;
			now Terra Incognita is open;
	if debugmode is 1, say "[bold type]DUNGEON SETTLED NOW[roman type][paragraph break]";
	now Remembered Location is Dungeon12;
	repeat with M running through alive monsters:
		while the location of M is an unplaced room in the Dungeon:
			now M is in a random sandy room;
	repeat with K running through kneeling stools in The Dungeon:
		now K is off-stage;
		now K is bland;
	now a random off-stage kneeling stool is in a random sandy unrelaxing placed room;
	if diaper quest is 0, now a random dildo rocking stool is in a random sandy unrelaxing placed room;
	otherwise now a random off-stage kneeling stool is in a random sandy unrelaxing placed room;
	if weight gain fetish is 1:
		now a random off-stage kneeling stool is in a random sandy unrelaxing placed room;
		now a random kneeling stool in The Dungeon is cursed;
	if lactation fetish is 1:
		now dungeon-milking-bench is in a random sandy unrelaxing placed room;
		let MT be a random milk-tank in Holding Pen;
		if MT is milk-tank and the number of milk-tanks in the location of dungeon-milking-bench is 0, now MT is in the location of dungeon-milking-bench;
	repeat with N running from 1 to 7:
		let G be a random placed sandy room;
		let failsafe be 50;
		while there is a dispenser in G and failsafe > 0:
			now G is a random placed sandy room;
			decrease failsafe by 1;
		unless there is a dispenser in G, deploy tank in G;
	repeat with G running through important rooms in The Dungeon:
		unless G is the location of the player:
			let Y be a random treasure chest in Holding Pen;
			now Y is in G;
	repeat with G running through sandy rooms in The Dungeon:
		unless G is the location of the player:
			let R be a random number between 1 and 3;
			let Y be a random large sack in Holding Pen;
			if R is 2, now Y is a random wooden crate in Holding Pen;
			if R is 3, now Y is a random metal crate in Holding Pen;
			now Y is in G;
	[Some rooms can have multiple containers]
	if the number of large sacks in Dungeon06 is 0, now a random large sack in Holding Pen is in Dungeon06;
	[if the number of wooden crates in Dungeon09 is 0, now a random wooden crate in Holding Pen is in Dungeon09;]
	if the number of large sacks in Dungeon18 is 0, now a random large sack in Holding Pen is in Dungeon18;
	if the number of wooden crates in Dungeon18 is 0, now a random wooden crate in Holding Pen is in Dungeon18;
	now the throne is revealed;
	follow the set up dungeon traps rules;
	repeat with M running through alive monsters in the dungeon:
		if the location of M is not placed, now M is in a random placed sandy room;
	[let N1 be the regionalMonsterCount of the Dungeon;]
	repeat with N2 running from 1 to startingRegionalMonsterCount:
		let M be a random dungeon prioritised monster;
		if M is not monster, now M is a random off-stage dungeon dwelling monster;
		if M is monster:
			set up M;
			if M is not in a placed labyrinth room, now M is in a random placed sandy room;
	if a random number between 1 and 3 is 1, now gladiatorcurse is 1;
	set up the school;
	now the destination of dungeon portal is the school;
	now DogPetName is the substituted form of "[PossiblePetName]";
	if debugmode is 0 and loading scenes is 1, clear the screen.

To Scramble Dungeon:
	now target-floor is Dungeon12;
	solve the puzzle;
	make all labyrinth exits lead to Solid Rock.

Region Building Dungeon ends here.
