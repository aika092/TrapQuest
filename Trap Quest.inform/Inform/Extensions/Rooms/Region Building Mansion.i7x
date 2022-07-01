Region Building Mansion by Rooms begins here.

Figure of mansion loading 1 is the file "Special/Loading/loading10.png".
Figure of mansion loading 2 is the file "Special/Loading/loading11.png".
Figure of mansion loading 3 is the file "Special/Loading/loading12.png".

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
	if debugmode > 0, say "SETTING UP CONTAINERS[line break]";
	repeat with G running through creaky haunted rooms:
		unless G is the location of the player:
			let R be a random number between 1 and 3;
			if debugmode is 1, say "[R] in [G]...";
			let Y be a random large sack in Holding Pen;
			if memic is in Holding Pen, now Y is memic;
			if Y is not memic:
				if R is 2, now Y is a random wooden crate in Holding Pen;
				if R is 3 or Y is nothing:
					let S be a random number between 1 and 3;
					if S is 1 or the number of ornate trunks in Holding Pen > 2, now Y is a random ornate trunk in Holding Pen;
					if Y is not ornate trunk, now Y is a random antique trunk in Holding Pen;
			if Y is a thing, now Y is in G;
	if debugmode > 1:
		say "Setting up containers complete.";
		wait 1000 ms before continuing;
	follow the set up mansion traps rules;
	if debugmode > 1:
		say "Setting up traps complete.";
		wait 1000 ms before continuing;
	repeat with M running through alive monsters in the mansion:
		if the location of M is not placed, now M is in a random placed haunted room;
	[let N1 be the regionalMonsterCount of the Mansion;]
	let LM be a list of monsters;
	[Here we set LM to be a list of one of each of the different types of monsters that can spawn]
	let LMM be the list of off-stage mansion dwelling summon appropriate monsters;
	if the number of entries in LMM > 0:
		sort LMM in random order; [so it's not the same variants at the start of every game]
		repeat with M running through LMM:
			let T1 be the substituted form of "[ShortDesc of M]";
			let uniqueM be true;
			repeat with N running through alive mansion dwelling summoningRelevant monsters:
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
		otherwise now M is a random mansion prioritised monster;
		if M is not monster, now M is a random off-stage mansion dwelling monster;
		if M is monster:
			set up M;
			if M is not in a placed haunted room, now M is in a random placed unbossed haunted room;
	if debugmode > 1:
		say "Setting up monsters complete.";
		wait 1000 ms before continuing;
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
	if debugmode > 1:
		say "Setting up blessed areas complete.";
		wait 1000 ms before continuing;
	repeat with P running through pedestals:
		now P is in Mansion28;
		add treasure to P;
	if debugmode > 1:
		say "Setting up pedestals complete.";
		wait 1000 ms before continuing;
	now a random master bed is in Mansion16;
	let MR be the list of placed haunted rooms;
	if Mansion32 is listed in MR, remove Mansion32 from MR; [no painting in warp portal room]
	let PT be the list of fetish appropriate paintings;
	if debugmode > 1:
		say "placed haunted rooms: [MR]. fetish appropriate paintings: [PT].";
		wait 1000 ms before continuing;
	sort MR in random order;
	repeat with R running through MR:
		if the number of entries in PT > 0:
			unless north is listed in the Nviables of R:
				let P be entry 1 in PT;
				now P is in R;
				remove P from PT;
	lock pedestals;
	if lactation fetish is 1:
		now mansion-milking-bench is in Mansion06;
		let MT be a random milk-tank in Holding Pen;
		if MT is milk-tank and the number of milk-tanks in the location of mansion-milking-bench is 0, now MT is in the location of mansion-milking-bench;
	if debugmode is 0 and loading scenes is 1, clear the screen;
	progress quest of new-region-quest.

To Scramble Mansion:
	let E be the easting part of the grid position of Stairwell03;
	let N be the northing part of the grid position of Stairwell03;
	let the sum be the spatial coordinate with maze level part 4 easting part E northing part N;
	now the grid position of Mansion01 is the sum;
	now target-floor is Mansion01;
	solve the puzzle;
	make all haunted exits lead to Solid Rock.

Region Building Mansion ends here.
