Region Building Hotel by Rooms begins here.




[!<SetUpTheHotel>+

REQUIRES COMMENTING

+!]
To Set Up The Hotel:
	if loading scenes is 1:
		clear the screen;
		if images visible is 1:
			if diaper quest is 0:
				display figure of hotel loading;
			otherwise if the bimbo of the player >= 10:
				if diaper lover >= 3, display figure of dq hotel insane messy loading;
				otherwise display figure of dq hotel insane loading;
			otherwise:
				display figure of dq hotel loading;
		say "Now loading the hotel region!";
		wait 10 ms before continuing;
	Scramble Hotel;
	repeat with G running through trappable modern rooms:
		unless G is the location of the player:
			if G is guest:
				if G is not Hotel02:
					let H be a random off-stage hotel bed;
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
	if inflation fetish is 1, now a random recipe for latex curse reversal is in Hotel25;
	repeat with M running through alive monsters in the hotel:
		if the location of M is not placed, now M is in a random placed modern room;
	if the player is a november 2017 top donator or the player is a november 2017 diaper donator, set up the school;
	if debugmode is 0 and loading scenes is 1, clear the screen.

[!<ScrambleHotel>+

REQUIRES COMMENTING

+!]
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

