Mindflayer Quest by Every Turn begins here.


[!<mindflayerQuest:Integer>*

REQUIRES COMMENTING

*!]
mindflayer quest is a number that varies. mindflayer quest is 0.


[!<mindflayerSpawned:Integer>*

REQUIRES COMMENTING

*!]
mindflayer spawned is a number that varies. mindflayer spawned is 0.



[!<Player>@<domination:Integer>*

REQUIRES COMMENTING

*!]
The player has a number called domination. The domination of the player is usually 0.


A time based rule (this is the mindflayer spawns rule):
	if mindflayer spawned is 0 and diaper quest is 0 and the remainder after dividing time-earnings by 417 < time-seconds:
		let M be a random off-stage mind flayer;
		let R be (a random number between 1 and 5) + (a random number between 2 and 6);
		if debugmode > 0, say "Mindflayer check: [the raw intelligence of the player - the starting intelligence of the player] | [R].";
		if R < the raw intelligence of the player - the starting intelligence of the player:
			set up M;
			now mindflayer spawned is 1;
			say "You feel a strange pressure in your mind for just a moment[if debugmode > 0] (The mindflayer has just been spawned!)[end if].";
			if the player is in the Dungeon:
				now M is in a random placed sandy room;
				while M is nearby or M is in the location of the player or the location of M is an unplaced room:
					now M is in a random placed sandy room;
			otherwise if the player is in the Woods:
				now M is in a random placed dodgy room;
				while M is nearby or M is in the location of the player or the location of M is an unplaced room:
					now M is in a random placed dodgy room;
			otherwise if the player is in the Hotel:
				now M is in a random placed modern room;
				while M is nearby or M is in the location of the player or the location of M is an unplaced room:
					now M is in a random placed modern room;
			otherwise if the player is in the Mansion:
				now M is in a random placed haunted room;
				while M is nearby or M is in the location of the player or the location of M is an unplaced room:
					now M is in a random placed haunted room.

A later time based rule (this is the mindflayer quest rule):
	if mindflayer spawned is 1 and mindflayer quest is 0:
		say "You hear a strange tapping sound, and suddenly a voice rings out as though from a PA system! [second custom style]'Testing, testing. Is this thing on? Hello, testers! It appears a monster from a not-yet-implemented area has inadvertently been introduced into the live test area. We[']re not really sure how this happened, but this does highlight the importance of your job as testers. We don[']t seem to be able to despawn it ourselves, if one of you could be a dear and destroy it so we can analyse its data we would really appreciate it.[roman type]";
		now mindflayer quest is 1;
	if mindflayer quest is 1 and the number of alive mind flayers is 0:
		say "The PA system comes alive again. [second custom style]'Oh wonderful. Nintendolls thanks you for your contribution to the completion of this testing phase! The standard bug bounty has been credited to your winnings, how lucky for you! Oh, and if it dropped anything feel free to keep it, it[']s an item from later in the game so it[']s probably pretty powerful.'[roman type]";
		now mindflayer quest is 2.


A time based rule (this is the mindflayer domination rule):
	if the domination of the player > 0: [Revised Mind Flayer Domination Attack, starts by checking for domination at all]
		if domination-time - (a random number between the domination of the player and 40) < 0:
			decrease the domination of the player by 1;
			now domination-time is 30;
			if (a random number between 1 and 3 < 3) and (the arousal of the player < maximum arousal / 2):
				say "Swirling images of sex begin to fill your mind, and you hear a voice in your head! [first custom style]'Your holes burn to be filled.'[roman type][line break]You are so aroused you could burst!";
				now the arousal of the player is maximum arousal;
			otherwise if the location of the player is smoky and the largeness of breasts < max breast size:
				say "You see images of yourself with incredible breasts, and you hear a voice in your head! [first custom style]'Breathe deep and become the [whore] you know yourself to be.'[roman type][line break]You fall to your knees!";
				try silently kneeling;
			otherwise if (a random number between 1 and 3 < 3) and (the raw semen taste addiction of the player < 20):
				say "Images of erect penises fill your mind, and you hear a voice in your head! [first custom style]'You hunger to taste the prize inside of us.'[roman type][line break]You feel a sudden strange longing to fill your mouth with [manly-penis]!";
				SemenTasteAddictUp 1;
			otherwise if (a random number between 1 and 2 < 3)	and (the humiliation of the player < 40000):
				say "You see images of yourself mindlessly complying as men use every part of your body, and you hear a voice in your head! [first custom style]'A man chooses, an object obeys.'[roman type][line break]You feel less and less like a person!";
				humiliate 400;
			otherwise: 
				say "Images of erect penises fill your mind, and you hear a voice in your head! [first custom style]'Put us in you and revel in serving us.'[roman type][line break]You feel a sudden strange longing to fill your holes with [manly-penis]!";
				SexAddictUp 1;
		otherwise:
			decrease domination-time by 1.
				[Digesting souls- preliminary version definitely way too strong but it has to be in the game to balance it]

Mindflayer Quest ends here.
