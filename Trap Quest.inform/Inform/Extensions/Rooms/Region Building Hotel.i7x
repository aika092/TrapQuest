Region Building Hotel by Rooms begins here.

To Set Up The Hotel:
	if loading scenes is 1:
		clear the screen;
		if images visible is 1:
			if diaper quest is 0:
				let R be a random number between 1 and 3;
				if R is 1:
					if a random number between 0 and (pregnancy fetish * 2) > 0, display figure of hotel pregnant loading 1;
					otherwise display figure of hotel loading 1;
				otherwise if R is 2:
					display figure of hotel loading 2;
				otherwise:
					display figure of hotel loading 3;
			otherwise:
				display figure of dq hotel loading;
		say "Now loading the hotel region!";
		render buffered stuff;
	Scramble Hotel;
	repeat with G running through trappable modern rooms:
		unless G is the location of the player:
			if G is guest:
				if G is not Hotel02:
					let H be a random off-stage hotel bed;
					if G is Hotel33: [Ensure that the one put in Hotel33 (player's bedroom) is a normal bed]
						now H is a random HotelBedBoring;
						if H is on-stage:
							let H2 be a random off-stage hotel bed;
							if H2 is hotel bed, now H2 is in the location of H;
					if H is hotel bed, now H is in G;
				if a random number between 1 and 4 is 1, deploy minibar in G;
				let R be a random number from 1 to 5;
				if R is 1 or R is 2 or R is 5:
					let Y be a random wardrobe in the Holding Pen;
					now Y is in G;
				if R is 3 or R is 4 or R is 5:
					let Y be a random chest of drawers in the Holding Pen;
					now Y is in G;
			otherwise if G is corporate:
				let Y be a random filing cabinet in Holding Pen;
				now Y is in G;
			otherwise if G is important:
				let Y be a random safe in Holding Pen;
				now Y is in G;
			otherwise if G is not untrappable:
				let Y be a random metal crate in Holding Pen;
				now Y is in G;
	repeat with N running from 1 to 4:
		let R be a random off-stage appropriate recipe;
		if R is recipe, now R is in Hotel25;
	follow the set up hotel traps rules;
	if debugmode > 0, say "Finished setting up traps.";
	repeat with M running through alive monsters in the hotel:
		if the location of M is not placed, now M is in a random placed modern room;
	[let N1 be the regionalMonsterCount of the Hotel;]
	repeat with N2 running from 1 to startingRegionalMonsterCount:
		let M be a random hotel prioritised monster;
		if M is not monster, now M is a random off-stage hotel dwelling monster;
		if M is monster:
			set up M;
			if M is not in a placed modern room, now M is in a random placed unbossed modern room;
	[change the down exit of School01 to Hotel29;]
	if armband is off-stage and receptionist is undefeated: [Player can engage with the school side quest the first time they find this room]
		set up receptionist;
		now receptionist is in Hotel40;
		now the destination of hotel portal is the school;
	if debugmode is 0 and loading scenes is 1, clear the screen;
	progress quest of new-region-quest.

To Scramble Hotel:
	if diaper quest is 1:
		let E be the easting part of the grid position of Stairwell01;
		let N be the northing part of the grid position of Stairwell01;
		let the sum be the spatial coordinate with maze level part 3 easting part E northing part N;
		now the grid position of Hotel01 is the sum;
	otherwise:
		let E be the easting part of the grid position of Stairwell02;
		let N be the northing part of the grid position of Stairwell02;
		let the sum be the spatial coordinate with maze level part 3 easting part E northing part N;
		now the grid position of Hotel01 is the sum;
	now target-floor is Hotel01;
	solve the puzzle;
	make all modern exits lead to Solid Rock.

Region Building Hotel ends here.
