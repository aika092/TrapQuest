Sex Addiction by Player Description begins here.

[!<SaySexAddictionDesc>+

REQUIRES COMMENTING

+!]
To say SexAddictionDesc:
	if the sex addiction of the player < 4:
		if the bimbo of the player < 4, say "[if the player is male]You're the type of guy who likes fucking sluts, not getting fucked like a slut.[otherwise]You are not very comfortable sexually, and many would call you a prude.[end if]";
		otherwise say "You are very dominant in the bedroom.";
	otherwise if the sex addiction of the player < 7:
		say "The game is affecting your body and making you enjoy submissive sexual encounters against your will. Your mind still much prefers being the dominant!";
	otherwise if the sex addiction of the player < 10:
		say "Some small part of you is starting to enjoy the submissive feeling you get from the sexual parts of the game. But you still would be the dominant if given the choice.";
	otherwise if the sex addiction of the player < 12:
		say "As much as you would hate to admit it, getting fucked in degrading ways really turns you on. You now prefer being the submissive to being the dominant.";
	otherwise if the sex addiction of the player < 14:
		say "You look forward to your next opportunity to enjoy your newly found fetish for submissive sex. ";
	otherwise if the sex addiction of the player < 16:
		say "You are obsessed with sex in all its forms, where you get to be the submissive! You no longer have any desire to be the dominant partner in a relationship or sexual encounter. ";
	otherwise if the sex addiction of the player < 18:
		say "You are completely addicted to getting fucked by anyone who is happy to dominate you. ";
	otherwise:
		say "Your one track mind thinks of nothing but how much better you'd feel if you had more [manly-penis]s inside you right now. ";
	if the latex-transformation of the player > 3 and the player is horny:
		say "You are desperate to orgasm but since your [if the player is male and the size of penis > 0][asshole] and [ShortDesc of penis] are[otherwise if the player is male][asshole] is[otherwise]holes are[end if] numb you know deep down that there's no way it can happen. [if the bimbo of the player > 10]But that's not going to stop you from getting fucked by anything that moves, just in case.[end if]";
	otherwise if the player is very horny:
		say "You are currently so horny that your mind is foggy. It's [if the player is extremely horny]impossible[otherwise]difficult[end if] to think straight about anything non-sexual.";
	otherwise if the player is horny:
		say "You're currently quite horny and it's a little more difficult than usual to think straight about anything non-sexual.";
	otherwise if the player is a bit horny:
		say "Your arousal has started to build, and has got the blood pumping. This has slightly improved your reflexes and speed.".

Sex Addiction ends here.
