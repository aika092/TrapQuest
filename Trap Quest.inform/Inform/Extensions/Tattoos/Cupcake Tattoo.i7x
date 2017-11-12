Cupcake Tattoo by Tattoos begins here.

cupcake tattoo is a kind of chest tattoo.  Figure of cupcake tattoo is the file "tattoo22.png".  There is 1 cupcake tattoo.
Definition: a cupcake tattoo (called T) is eligible:
	if the noun is food, decide yes;
	decide no.
To say tattoo-desc of (T - a cupcake tattoo):
	if images visible is 1, display figure of cupcake tattoo;
	say "A large pink cupcake is tattooed on your [BreastDesc]. You sense that it has a chance of helping you out when you get hungry and tired.".
A time based rule (this is the cupcake tattoo rule):
	if there is a worn cupcake tattoo or there is a worn cupcake wrist tattoo:
		if the player is hungry and the player is very tired and a random number between 1 and 50 is 1:
			say "[bold type]Suddenly, your cupcake tattoo feels warm!  You feel more full inside and also all your tiredness has gone![roman type][line break]";
			now the fatigue of the player is 50;
			if the player is tired, now the fatigue of the player is 0;
			StomachFoodUp 3.
To decide which number is the initial cringe of (T - a cupcake tattoo):
	decide on 7.

Cupcake Tattoo ends here.
