Ben Wa Balls by Sex Toys begins here.

A ben wa balls is a kind of plug. The printed name of ben wa balls is usually "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if]ben wa balls[clothing-title-after]". The printed plural name of ben wa balls is usually "[clothing-title-before]sets of ben wa balls[clothing-title-after]". The text-shortcut of ben wa balls is "bwb". There is 1 ben wa balls.

Figure of ben wa balls is the file "Items/Accessories/Toys/benWaBalls1.png".

To decide which figure-name is clothing-image of (C - ben wa balls):
	decide on figure of ben wa balls.

To say ClothingDesc of (C - ben wa balls):
	say "Two balls [if C is cursed and the curse-ID of C is sure]of plastic on a string. One pops out from time to time, embarrassingly, but the other won't come out due to its curse[otherwise]made of metal[end if][if C is worn]. Their turning, when you move, slowly builds your arousal[end if].".

To say ShortDesc of (C - ben wa balls):
	say "ben wa balls".

To compute periodic expansion effect of (C - ben wa balls):
	increase the toy-charge of C by 1;
	if the remainder after dividing the toy-charge of C by 12 is 0:
		let F be a random fuckhole penetrated by C;
		if the toy-charge of C > 100 and C is not blessed and busy is not 1 and the player is not in danger:
			if the humiliation of the player < 20000 and the intelligence of the player < 10:
				say "One of your Ben wa balls seems to have popped out of your [variable F] and you didn't even notice. How embarrassing! You quickly tuck it back inside.";
				humiliate 100;
			otherwise:
				say "One of your Ben wa balls pops out of your [variable F]. You quickly push it back inside.";
			humiliate 100;
		otherwise:
			say "The Ben wa balls in your [variable F] jiggle when you move, slowly increasing your arousal.";
		passively stimulate F from C;
	otherwise if the remainder after dividing the toy-charge of C by 4 is 0:
		arouse 100.

To decide which number is the stimulation of (D - ben wa balls) on (B - a body part):
	decide on 0.

To uniquely set up (C - ben wa balls):
	if a random number between 1 and 3 is 1, now C is endurance.

Ben Wa Balls ends here.
