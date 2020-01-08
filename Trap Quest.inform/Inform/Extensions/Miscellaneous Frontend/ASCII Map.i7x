ASCII Map by Miscellaneous Frontend begins here.


[!<MapDraw>+

REQUIRES COMMENTING

+!]
To MapDraw:
	if map images > 0:
		display entire map;
	otherwise:
		let Z be 1;
		let G be the grid position of Dungeon11;
		say "[fixed letter spacing]";
		if playerRegion is Dungeon:
			now G is <1,0,0>;
		otherwise if playerRegion is Woods:
			now G is <2,0,0>;
		otherwise if playerRegion is Hotel:
			now G is <3,0,0>;
		otherwise if playerRegion is Mansion:
			now G is <4,0,0>;
		let minX be 25;
		let minY be 25;
		let maxX be 0;
		let maxY be 0;
		repeat with Y running from 0 to 24:
			repeat with X running from 0 to 24:
				let R be the room at G;
				if R is seen or R is discovered:
					if minX > X, now minX is X;
					if minY > Y, now minY is Y;
					if maxX < X, now maxX is X;
					if maxY < Y, now maxY is Y;
				now G is the map sum of G and <0,1,0>;
			now G is the map sum of G and <0,0,24>;
		if playerRegion is Dungeon:
			now G is <1,0,0>;
		otherwise if playerRegion is Woods:
			now G is <2,0,0>;
		otherwise if playerRegion is Hotel:
			now G is <3,0,0>;
		otherwise if playerRegion is Mansion:
			now G is <4,0,0>;
		now minX is minX - 1;
		now minY is minY - 1;
		now maxX is maxX + 1;
		now maxY is maxY + 1;
		repeat with Y running from 0 to 24:
			repeat with X running from 0 to 24:
				let R be the room at G;
				if X >= minX and X <= maxX and Y >= minY and Y <= maxY:
					if R is solid rock:
						say "{ }";
					otherwise if R is the location of the player:
						say "{@}";
					otherwise if R is discovered and R is Stairwell01 or R is Stairwell02:
						say "{>}";
					otherwise if R is discovered and R is Woods01 or R is Hotel01:
						say "{<}";
					otherwise if R is discovered and R is Dungeon28 or R is Woods20:
						say "{A}";
					otherwise if R is discovered and R is Dungeon12:
						say "{S}";
					otherwise if R is discovered and R is Dungeon37 or R is Hotel16:
						say "{&}";
					otherwise if R is discovered and R is Dungeon36 or R is Hotel36:
						say "{!}";
					otherwise if R is discovered and R is toilets or R is urinals:
						say "{t}";
					otherwise if R is discovered and R is Dungeon41:
						say "{$}";
					otherwise if R is discovered and R is Hotel20:
						say "{L}";
					otherwise if R is discovered and R is Hotel23:
						say "{g}";
					otherwise if R is discovered and R is Hotel19:
						say "{k}";
					otherwise if R is discovered and R is Hotel22 and diaper lover >= 1:
						say "{n}";
					otherwise if R is discovered and R is Hotel37:
						say "{d}";
					otherwise if R is discovered and R is Hotel21 or R is Woods26:
						say "{s}";
					otherwise if R is discovered and R is Hotel02:
						say "{1}";
					otherwise if R is discovered and R is Woods27:
						say "{W}";
					otherwise if R is discovered and R is Woods21:
						say "{w}";
					otherwise if R is discovered and R is Hotel18:
						say "{f}";
					otherwise if R is discovered and R is Dungeon35 or R is Woods05:
						say "{=}";
					otherwise if R is discovered and R is furnished:
						if a random furniture in R is milking bench, say "{-}";
						otherwise say "{~}";
					otherwise if R is discovered and there is a dispenser in R:
						say "{^}";
					otherwise if R is discovered:
						say "{#}";
					otherwise if R is seen:
						say "{?}";
					otherwise:
						say "{ }";
				now G is the map sum of G and <0,1,0>;
			if Y >= minY and Y <= maxY, say "[line break]";
			now G is the map sum of G and <0,0,24>;
		say "[variable letter spacing]".

[!<DecideWhichSpatialCoordinateIsTheMapSumOfTwoCoordinates>+

REQUIRES COMMENTING

+!]
To decide which spatial coordinate is the map sum of (V1 - a spatial coordinate) and (V2 - a spatial coordinate):
	let L be the maze level part of V1 plus the maze level part of V2;
	let L be the remainder after dividing L by 25;
	let E be the easting part of V1 plus the easting part of V2;
	let E be the remainder after dividing E by 25;
	let N be the northing part of V1 plus the northing part of V2;
	let N be the remainder after dividing N by 25;
	let the sum be the spatial coordinate with maze level part L easting part E northing part N;
	decide on the sum.


[!<DecideIfSomethingIsInDirection>+

REQUIRES COMMENTING

+!]
To decide if there is something to the (D - a direction):
	now neighbour finder is tile finder;
	if D is N-viable, decide yes;
	decide no;
	let R be the room D of tile finder;
	if R is solid rock or R is nothing:
		decide no;
	otherwise:
		now Neighbour Finder is R;
		[say "Shape of [tile finder] is [shape of tile finder]. Shape of [R] is [shape of R]. Direction is [D].";]
		if D is desired:
			let Sh be the shape of tile finder;
			if D is north and N part of Sh is 1, decide yes;
			if D is east and E part of Sh is 1, decide yes;
			if D is south and S part of Sh is 1, decide yes;
			if D is west and W part of Sh is 1, decide yes;
	decide no.


ASCII Map ends here.
