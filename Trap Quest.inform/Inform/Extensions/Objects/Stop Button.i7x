Stop Button by Objects begins here.


A stop button is a kind of thing. A stop button is usually not portable. 1 stop button is in Hotel36. The printed name of a stop button is "[TQlink of item described]STOP button[TQxlink of item described][verb-desc of item described]". The text-shortcut of stop button is "stp". Figure of stop button is the file "Env/Hotel/capsule1.png".


To decide which figure-name is the examine-image of (C - a stop button):
	decide on figure of stop button.

To say ExamineDesc of (C - a stop button):
	say "The capsule has a giant red button on the top with STOP in big letters on it. Above it, a large mechanical counter reads '$[25000 * the wealth of the player]'. Maybe it ends the game[if the wealth of the player > 0], and that's your prize money[end if]! Are you ready for the game to end?".

Check pushing a stop button:
	repeat with M running through dangerous monsters in the location of the player:
		say "[BigNameDesc of M] blocks you from reaching the button! You're going to have to deal with [him of M] first!" instead;
	if robomatron is in the location of the player:
		unless robomatron is interested and robomatron is friendly, say "The [robomatron] blocks you from reaching the button! You're going to have to deal with [him of robomatron] first!" instead;
	say "This is it! The game will end if you push the button. Remember only [bold type]worn[roman type] jewellery will count towards your prize winnings (currently $[25000 * the wealth of the player]). Are you sure you want to hit the button?";
	unless the player is consenting, say "Action cancelled." instead.

Report pushing a stop button:
	say "Suddenly, the walls of the hotel start to melt, and are replaced by a brilliant whiteness that stretches onwards to infinity. A couple of seconds later, all your items and clothes disappear, and the ground disappears, and there is nothing but white in every direction. Then, everything goes black.";
	end the story finally saying "Game Over!".

Check touching a stop button:
	try pushing the noun instead.


Stop Button ends here.
