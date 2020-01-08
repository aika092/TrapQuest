Chef Foods by Food begins here.


A chef food is a kind of food. A chef food has a number called quality. The quality of a chef food is usually 1. A chef food has a number called fat. The fat of a chef food is usually 1.

To say DevourFlav of (C - a chef food):
	say "You pop the [C] in your mouth and [if the player is in danger]devour it as quickly as you can[otherwise if the fat-weight of the player > 28]greedily swallow it whole[otherwise if the fat-weight of the player > 12]hungrily devour it without savouring the taste[otherwise]chew slowly, savouring the taste as it melts in your mouth[end if]. [if the quality of C is -2]It leaves an unmistakable salty aftertaste in the back of your mouth.[otherwise if the quality of C < 1]It's not really anything special. You overpaid.[otherwise]It's unbelievably delicious! No food has any business being this good![end if]".

Report TQeating chef food:
	let Q be the quality of the noun;
	if the flesh volume of arms > 3 and Q > 0, decrease Q by 1;
	if the flesh volume of arms > 7 and Q > -2, now Q is 1;
	if the quality of the noun > 0, Dignify 3 * Q;
	otherwise Humiliate 10 * Q;
	if weight gain fetish is 0:
		FatigueUp the fat of the noun * 15;
	otherwise:
		FatUp the fat of the noun;
		if the flesh volume of arms > 3 and Q > 0, decrease Q by 1;
		if the flesh volume of arms > 7 and Q > -2, now Q is 1;
	say "As you finish eating the [noun], you feel both your muscles and mind expanding! Wow!";
	StrengthUp 1;
	DexUp 1;
	IntUp 1;
	DelicateDown 1;
	destroy the noun.


Chef Foods ends here.
