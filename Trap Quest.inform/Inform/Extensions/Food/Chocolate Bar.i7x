Chocolate Bar by Food begins here.


A chocolate bar is a kind of candy.  The printed name of chocolate bar is "[TQlink of item described]chocolate bar[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The printed plural name of chocolate bar is "[TQlink of item described]bars of chocolate[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of chocolate bar is "cb".  The description of chocolate bar is "A small bar of chocolate, still in its wrapper.  The label says 'Experimental molecule replication nanobots will bulk up whatever organic matter they come across!  Be healed in seconds!'".  There is 1 chocolate bar.

To decide which number is the crafting key of (C - a chocolate bar):
	decide on 30.

Carry out TQeating chocolate bar:
	say "[DevourFlav of the noun][if the body soreness of the player > 1]You can feel the nanobots inside the chocolate getting to work, healing your bruises and easing your tired muscles!  But then suddenly[otherwise]Suddenly[end if] ";
	bodyheal 7;
	if rectum > 2:
		now rectum is rectum * 4;
		say "you feel a rumbling in your bowels and whimper as you feel the digested food within your intestines expand and quadruple in bulk.  Your belly swells to contain the huge load, and [if the player is feeling full]you feel a desperate need to go number two![otherwise]you can tell that are going to have to go number two soon.[end if]";
	otherwise if diaper quest is 1:
		if diaper lover >= 3:
			StomachFoodUp 2;
			increase rectum by 5;
		otherwise:
			StomachFoodUp 5;
		say "you feel a rumbling in your stomach and whimper as you feel the recent food you ate expand and double in bulk.  Your belly swells to contain the huge load!";
	otherwise if assfilled is 1:[possibly too severe for something that happens 100% of the time!]
		say "[if the semen volume of belly is 0]you realise that the nanobots must have found a few leftover cells of [semen] in your belly as [end if]your innards explode outwards, filled with [if the semen volume of belly > 0]even more of [end if]the white gooey liquid!";
		AssFill belly limit - the total squirtable fill of belly;
	otherwise if a random number between 1 and 3 > 1 and the player is not top heavy:
		say "you feel your chest swell outwards - some of the nanobots must have made their way to your [BreastDesc]!";
		BustUp 4;
	otherwise:
		say "you feel your hips rumble and start to swell - some of the nanobots must have made their way to your butt!";
		HipUp 1.

To compute (M - a robochef) cooking (I - a chocolate bar):
	let D be a random off-stage truffle;
	if D is food:
		now the quality of D is a random number between 2 and 1;
		if a random number between 1 and 3 is 1, now the quality of D is -2;
		now the fat of D is a random number between 2 and 3;
		now D is retained by M.


Chocolate Bar ends here.
