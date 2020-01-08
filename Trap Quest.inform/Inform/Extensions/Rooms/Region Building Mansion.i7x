Region Building Mansion by Rooms begins here.


Figure of mansion loading 1 is the file "Special/Loading/loading10.png".
Figure of mansion loading 2 is the file "Special/Loading/loading11.png".
Figure of mansion loading 3 is the file "Special/Loading/loading12.png".

[!<SetUpTheMansion>+

REQUIRES COMMENTING

+!]
To Set Up The Mansion:
	if loading scenes is 1:
		clear the screen;
		if images visible is 1:
			if diaper quest is 0:
				let R be a random number between 1 and 3;
				if R is 1:
					display figure of mansion loading 1;
				otherwise if R is 2:
					display figure of mansion loading 2;
				otherwise:
					display figure of mansion loading 3;
			otherwise:
				if diaper messing >= 3, display figure of dq mansion messy loading;
				otherwise display figure of dq mansion loading;
		say "Now loading the mansion region!";
		render buffered stuff;
	Scramble Mansion;
	if debugmode is 1, say "SETTING UP CONTAINERS[line break]";
	repeat with G running through creaky rooms in The Mansion:
		unless G is the location of the player:
			let R be a random number between 1 and 3;
			if debugmode is 1, say "[R] in [G]...";
			let Y be a random large sack in Holding Pen;
			if memic is in Holding Pen, now Y is memic;
			if Y is not memic:
				now Y is a random large sack in Holding Pen;
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
	let Nattempts be 0;
	while N < 4:
		increase Nattempts by 1;
		let R be a random placed haunted room;
		if R is not garlic and R is not Mansion16 and R is not Mansion01:
			now R is garlic;
			increase N by 1;
		if Nattempts > 100:
			say "BUG: Unable to make enough rooms 'garlic'. Please report this bug along with a save file.";
			now N is 4;
	repeat with P running through pedestals:
		now P is in Mansion28;
		add treasure to P;
	now a random master bed is in Mansion16;
	lock pedestals;
	if debugmode is 0 and loading scenes is 1, clear the screen;
	progress quest of new-region-quest.

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
