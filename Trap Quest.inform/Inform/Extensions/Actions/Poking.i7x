Poking by Actions begins here.

poking is an action applying to one thing.

Check poking:
	if the noun is caged monster, try dominating the noun;
	allocate 2 seconds;
	if the noun is not monster or timeBombTime > 0, say "You poke [if the noun is monster][him of the noun][otherwise]it[end if]. Nothing happens." instead.

Carry out poking:
	compute poking of the noun.

To compute poking of (M - a monster):
	let handU be 0;
	if the player is able to use their hands, now handU is 1;
	allocate 2 seconds;
	say "You poke [NameDesc of M][if handU is 0] with your nose[end if].";
	if M is awake or M is defeated:
		now the boredom of M is 0;
		if M is not student, FavourDown M with consequences;
		if M is interested:
			if M is student and M is friendly:
				HappinessDown M;
				if M is unfriendly, distract M;
			otherwise if M is orc:
				say "[speech style of M]'Ah, you wish to play a hand of cards?'[roman type][line break][BigNameDesc of M] replies.";
				execute talk-orc-poker for M;
		otherwise if M is defeated:
			if M is awake:
				say "[BigNameDesc of M] is now [if M is fucked-silly]somewhat aware of your presence[otherwise]paying attention to you[end if].";
				now M is interested;
			otherwise:
				say "[BigNameDesc of M] doesn't wake up. [big he of M][']s out cold.";
		otherwise:
			if M is woman-player:
				if the woman-status of woman-player is 0 and woman-player is stranger:
					compute basic greeting to M;
				otherwise:
					say "[BigNameDesc of M] is now paying attention to you.";
					now woman-player is interested;
			otherwise:
				check guaranteed perception of M;
	otherwise:
		compute annoyed awakening of M.

To compute annoyed awakening of (M - a monster):
	say "[BigNameDesc of M] wakes up, startled!";
	now the sleep of M is 0;
	deinterest M;
	FavourDown M;
	progress quest of poking-quest;
	check guaranteed perception of M.

Understand "poke [something]", "awake [something]", "wake [something]" as poking.

Poking ends here.
