Region Building Mansion by Rooms begins here.


Figure of mansion loading is the file "loading10.png".

[!<SetUpTheMansion>+

REQUIRES COMMENTING

+!]
To Set Up The Mansion:
	if loading scenes is 1:
		clear the screen;
		if images visible is 1:
			display figure of mansion loading;
		say "Now loading the mansion region!";
		wait 50 ms before continuing;
	Scramble Mansion;
	if debugmode is 1, say "SETTING UP CONTAINERS[line break]";
	repeat with G running through creaky rooms in The Mansion:
		unless G is the location of the player:
			let R be a random number between 1 and 3;
			if debugmode is 1, say "[R] in [G]...";
			let Y be a random large sack in Holding Pen;
			if R is 2, now Y is a random wooden crate in Holding Pen;
			if R is 3:
				let S be a random number between 1 and 3;
				if S is 1 or the number of ornate trunks in Holding Pen > 2, now Y is a random ornate trunk in Holding Pen;
				if Y is not ornate trunk, now Y is a random antique trunk in Holding Pen;
			now Y is in G;
	follow the set up mansion traps rules;
	repeat with M running through alive monsters in the mansion:
		if the location of M is not placed, now M is in a random placed haunted room;
	let N be 0;
	while N < 4:
		let R be a random placed room in the mansion;
		if R is not garlic and R is not Mansion16 and R is not Mansion01:
			now R is garlic;
			increase N by 1;
	repeat with P running through pedestals:
		now P is in Mansion28;
		add treasure to P;
	if the player is a september 2017 top donator, now a random master bed is in Mansion16;
	lock pedestals;
	if debugmode is 0 and loading scenes is 1, clear the screen.

[!<ScrambleMansion>+

REQUIRES COMMENTING

+!]
To Scramble Mansion:
	let E be the easting part of the grid position of Stairwell03;
	let N be the northing part of the grid position of Stairwell03;
	let the sum be the spatial coordinate with maze level part 4 easting part E northing part N;
	now the grid position of Mansion01 is the sum;
	now target-floor is Mansion01;
	solve the puzzle;
	make all haunted exits lead to Solid Rock.


Region Building Mansion ends here.

