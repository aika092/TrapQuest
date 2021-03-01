Body Soreness by Player begins here.

The player has a number called body soreness. The body soreness of the player is usually 0. [Min 0 Max 10]

To bodyruin (X - a number):
	if the latex-transformation of the player > 5:
		now X is 0;
		say "You have no flesh so don't get any more sore.";
		if the number of unfriendly interested monsters in the location of the player > 0:
			if the player is upright:
				say "But you are so light that the force of the blow knocks you to your knees!";
				try kneeling;
				[if the player is prone, say "[bold type]You are now on your knees.[roman type][line break]";]
	if the class of the player is barbarian:
		let N be the body soreness of the player;
		if N >= 5 and X > 0:
			if a random number between 1 and (5 + ((N - 5) * 2)) >= 5:
				let H be rugged-headband;
				decrease X by 1;[the barbarian has a progressively higher chance to avoid damage once they reach 50% health.]
				if X is 0, say "[line break]Your heightened adrenaline completely offsets the pain!";
				otherwise say "[line break]Your heightened adrenaline dulls some of the pain!";
	while X > 0:
		decrease X by 1;
		if the body soreness of the player < 10:
			increase the body soreness of the player by 1.

To bodyheal (X - a number):
	while X > 0:
		decrease X by 1;
		if the body soreness of the player > 0, decrease the body soreness of the player by 1.

Body Soreness ends here.
