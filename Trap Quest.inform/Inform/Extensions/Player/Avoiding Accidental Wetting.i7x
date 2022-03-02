Avoiding Accidental Wetting by Player begins here.

wetting-valued is a number that varies. wetting-valued is 0.

diaper bonus is a number that varies.

To diaperreward:
	if wetting-valued > 3:
		if diaper quest is 1 and background-pure is 1:
			say "[bold type]You are extremely proud of yourself for still having managed to control your bladder! Once again you feel yourself gaining real, physical power just from the happiness you feel from having retained your continence.[roman type][line break]";
			increase diaper bonus by 1;
		otherwise:
			say "";
	otherwise:
		say "[bold type]You pause for a moment, happy that so far all your bladder movements have been voluntary.[roman type] You get the feeling that the game is trying to make you lose control of your bodily functions and eventually render you incontinent. You feel that by placing a lot of value on your bladder control, you could help maintain your self-respect. But the negative impact of wetting yourself involuntarily in the future would likely be more severe. Would you like to make the mental decision to care deeply about your continence? ";
		if newbie tips is 1, say "[newbie style]Newbie tip: I would not advise doing this in your first game; it's a real challenge to avoid incontinence in this world![roman type][line break]";
		if the player is consenting:
			say "As if it can read your thoughts, the game sends surges waves of positive emotions flowing through your body, and you feel less ashamed of yourself!";
			now wetting-valued is 4;
			dignify 1000;
		otherwise:
			say "You decide in this game, placing all of your hopes on your bladder might not be the most sensible idea.";
			now wetting-valued is -1.

To compute wetting failure:
	if diaper quest is 1 and background-pure is 1, say "As that powerful feeling of pride for your full control of your bladder melts away, it feels as if it has left you in an even worse state than when you first began to feel it. ";
	say "[if the bimbo of the player < 10]You feel pure despair and[otherwise if the bimbo of the player < 15]You shudder involuntarily as[otherwise]You whinge quietly[end if] you feel some of your strength and speed leave you.";
	now diaper bonus is 0;
	if the raw diaper addiction of the player > 6, now the raw diaper addiction of the player is 6;
	now wetting-valued is -1;
	if diaper quest is 1 and failed potty training tattoo is off-stage and background-pure is 1 and there is a worn tattoo:
		summon failed potty training tattoo;
		say "Ouch! You yelp as you feel a sharp, strong pain in your belly.";
		try examining failed potty training tattoo;
	otherwise:
		now diaper bonus is -2.

Avoiding Accidental Wetting ends here.
