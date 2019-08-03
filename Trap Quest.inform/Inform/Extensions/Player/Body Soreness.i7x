Body Soreness by Player begins here.

[!<Player>@<bodySoreness:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called body soreness. The body soreness of the player is usually 0. [Min 0 Max 10]

[!<BodyRuinX>+

REQUIRES COMMENTING

+!]
To bodyruin (X - a number):
	if the latex-transformation of the player > 5:
		now X is 0;
		say "You have no flesh so don't get any more sore.";
		if the number of unfriendly interested monsters in the location of the player > 0:
			if the player is upright:
				say "But you are so light that the force of the blow knocks you to your knees!";
				try kneeling;
				[if the player is prone, say "[bold type]You are now on your knees.[roman type][line break]";]
	while X > 0:
		decrease X by 1;
		if the body soreness of the player < 10:
			increase the body soreness of the player by 1.

[!<BodyHealX>+

REQUIRES COMMENTING

+!]
To bodyheal (X - a number):
	while X > 0:
		decrease X by 1;
		if the body soreness of the player > 0, decrease the body soreness of the player by 1.

Body Soreness ends here.

