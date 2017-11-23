Region Building Dungeon by Rooms begins here.


Figure of dungeon loading is the file "loading7.png".
Figure of dq dungeon loading is the file "loading8.png".
Figure of dq dungeon messy loading is the file "loading9.png".

[!<SetUpTheDungeon>+

REQUIRES COMMENTING

+!]
To Set Up The Dungeon:
	if loading scenes is 1:
		clear the screen;
		if images visible is 1:
			if diaper quest is 0:
				display figure of dungeon loading;
			otherwise if a random number between 2 and 5 < diaper lover or there is a worn messed knickers:
				display figure of dq dungeon messy loading;
			otherwise:
				display figure of dq dungeon loading;
		say "Now loading the dungeon region!";
		wait 50 ms before continuing;
	if debugmode is 1, say "[bold type]SETTING UP DUNGEON NOW[roman type][line break][line break]";
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
	if debugmode is 1, say "[bold type]DUNGEON SETTLED NOW[roman type][line break][line break]";
	now Remembered Location is Dungeon12;
	repeat with M running through alive monsters:
		while the location of M is an unplaced room in the Dungeon:
			now M is in a random sandy room;
	repeat with N running from 1 to 7:
		let G be a random placed sandy room;
		unless G is unusual, deploy tank in G;
	repeat with K running through kneeling stools in The Dungeon:
		now K is off-stage;
		now K is bland;
	now a random off-stage kneeling stool is in a random sandy unrelaxing placed room;
	now a random off-stage kneeling stool is in a random sandy unrelaxing placed room;
	if weight gain fetish is 1:
		now a random off-stage kneeling stool is in a random sandy unrelaxing placed room;
		now a random kneeling stool in The Dungeon is cursed;
	if lactation fetish is 1:
		now a random milking bench is in a random sandy unrelaxing placed room;
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
	if a random number between 3 and 1 is 1, now gladiatorcurse is 1;
	if debugmode is 0 and loading scenes is 1, clear the screen.

[!<ScrambleDungeon>+

REQUIRES COMMENTING

+!]
To Scramble Dungeon:
	now target-floor is Dungeon12;
	solve the puzzle;
	make all labyrinth exits lead to Solid Rock.


Region Building Dungeon ends here.
