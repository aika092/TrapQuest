Resting by Actions begins here.

Resting is an action applying to nothing.

Check resting:
	if the player is monster fucked, try resisting instead;
	if the player is immobile, say "Aren't you a bit busy?" instead;
	if the fatigue of the player is 0, say "[if the body soreness of the player is 0]You feel completely fine.[otherwise]You're not fatigued at the moment, just injured. You're going to need to find somewhere specific to rest to heal your injuries.[end if]" instead;
	if the player is upright, say "You can only rest while kneeling." instead;
	say "Stay still until you feel completely refreshed? ";
	unless the player is in agreement, say "You change your mind." instead.

Carry out resting:
	if the player is upright, try kneeling;
	now the alert of the player is 0;
	while the fatigue of the player > 0 and the alert of the player is 0:
		say "You [one of][or]continue to [stopping][if the largeness of breasts > 13]use your [BreastDesc] as pillows to [end if]rest.";
		allocate 6 seconds;
		if there is a worn nightie, increase fatimod by 2;
		compute extra turn;
		repeat with M running through in-play dangerous monsters: [More computationally efficient to check whether all monsters are dangerous rather than if all monsters are nearby as the first discriminator]
			if the alert of the player is 0:
				if debugmode is 1, say "[BigNameDesc of M] in [location of M] might make the player alert if it is close enough...";
				if M is in the location of the player or M is nearby, now the alert of the player is 1;
				if the alert of the player is 1 and M is nearby:
					say "You see a threatening looking [M] that is lurking nearby. ";
					break;
				otherwise if the alert of the player is 1:
					say "Your rest is interrupted by [NameDesc of M].";
					break;
	if there is a worn maternity dress and there is a worn yoga pants:
		while the body soreness of the player > 0 and the alert of the player is 0:
			say "[one of]Somehow, your clothing is helping heal your body as you rest! Magic![or]You continue to [if the largeness of breasts > 13]use your [BreastDesc] as pillows to [end if]rest.[stopping]";
			allocate 6 seconds;
			BodyHeal 1;
			compute extra turn;
			compute monster detection;
	if the alert of the player is 1:
		say "Your rest has been interrupted!";
		now the alert of the player is 0;
	otherwise:
		if there is a worn maternity dress and there is a worn yoga pants:
			say "[variable custom style]I'm fully healed![roman type][line break]";
		otherwise if the bimbo of the player < 8:
			say "[first custom style]I'm ready to go![roman type][line break]";
		otherwise:
			say "[second custom style]I'm full of energy![roman type][line break]";
		try standing.
Understand "rest", "recover", "re", "res" as resting.

Resting ends here.
