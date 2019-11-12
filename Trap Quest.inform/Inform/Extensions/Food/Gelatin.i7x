Gelatin by Food begins here.


A gelatin is a kind of chef food. There is 1 gelatin. Understand "gummy" as gelatin. The printed name of a gelatin is "[TQlink of item described]gelatin[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of a gelatin is usually "jt".

To say ExamineDesc of (C - a gelatin):
	say "[if the quality of C > 0]A chunk of gourmet gelatin, moulded into the shape of a rose[otherwise if the quality of C > -1]A chunk of gelatin, moulded into a perfect sphere.[otherwise if the quality of C > -2 or diaper quest is 1]A soft chunk of cheap gelatin, haphazardly moulded into a sphere.[otherwise]A soft chunk of cheap gelatin. Something is really off about the colour. It almost looks like [semen].[end if]".

To say ShortDesc of (C - a gelatin):
	say "gelatin".

Carry out TQeating gelatin:
	say "[DevourFlav of the noun]";
	if the quality of the noun is -2:
		if diaper quest is 1:
			say "The fruity treat turns to liquid in your throat! You feel it rushing through your body, and filling your bladder!";
			increase the bladder of the player by 8;
			if the player is not bursting and the player is desperate to pee:
				now delayed urination is 1;
				try urinating;
		otherwise:
			say "The fruity treat fills your body with lasting warmth and energy, but the taste fades quickly, giving way to the unmistakable flavour of fresh [semen]. Knowing you not only swallowed someone's load, but used it as a snack, fills you with [if the semen addiction of the player < 7]humiliation[otherwise]excitement[end if].";
			Arouse the semen addiction of the player * 20;
			Humiliate 100;
			SemenAddictUp 1;
			StomachSemenUp 1;
	otherwise if a random number between 3 and the quality of the noun is 3 or diaper quest is 1:
		say "The fruity taste fills your body with lasting warmth and energy! You feel less tired... and a little more aroused.";
		if the quality of the noun > 0, FatigueDown the quality of the noun * 20;
		otherwise FatigueDown 10;
		Arouse 300;
	otherwise:
		say "The fruity taste fills your body with lasting warmth. [if the silicone volume of breasts + the silicone volume of hips > 0]Your implants seem to heat up, and as a wash of arousal moves through your body, you realize they've actually gotten bigger![otherwise]Your scalp seems to heat up, and as a wave of arousal descends over your body, you realize something's happening to your hair![end if]";
		if the silicone volume of breasts > 0, BustImplantsUp 1;
		if the silicone volume of hips > 0, AssImplantsUp 1;
		if the silicone volume of hips + the silicone volume of breasts is 0:
			ColourUp 1;
		Arouse 600;
	StomachFoodUp 2;
	allocate 6 seconds.



Gelatin ends here.

