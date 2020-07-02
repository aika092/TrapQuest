Poking by Actions begins here.

[!<poking:Action>*

REQUIRES COMMENTING

*!]
poking is an action applying to one thing.

[!<CheckPoking>+

REQUIRES COMMENTING

+!]
Check poking:
	if the noun is caged monster, say "You can't reach [him of the noun] through the cage!" instead;
	if the noun is not monster or timeBombTime > 0:
		allocate 2 seconds;
		say "You poke [if the noun is monster][him of the noun][otherwise]it[end if]. Nothing happens." instead;
	if the noun is awake:
		let handU be 0;
		if the player is able to use their hands, now handU is 1;
		say "You poke [NameDesc of the noun][if handU is 0] with your nose[end if].";
		now the boredom of the noun is 0;
		FavourDown the noun;
		allocate 2 seconds;
		if the noun is interested:
			say "The [noun] [if the noun is intelligent and the noun is unfriendly]is unaffected[otherwise if the noun is intelligent]seems confused but doesn't say anything[otherwise]ignores you[end if].";
		otherwise:
			if the noun is woman-barbara:
				if the woman-status of woman-barbara is 0 and woman-barbara is stranger:
					compute basic greeting to the noun;
				otherwise:
					say "[BigNameDesc of the noun] is now paying attention to you.";
					now woman-barbara is interested;
			otherwise:
				compute correct perception of the noun;
		do nothing instead.

[!<CarryOutPoking>+

REQUIRES COMMENTING

+!]
Carry out poking:
	compute poking of the noun.

[!<ComputePokingOfMonster>+

REQUIRES COMMENTING

+!]
To compute poking of (M - a monster):
	say "[BigNameDesc of M] wakes up, startled!";
	now the sleep of M is 0;
	decrease the favour of M by 1;
	allocate 2 seconds;
	progress quest of poking-quest;
	compute correct perception of M.

Understand "poke [something]", "awake [something]", "wake [something]" as poking.

Poking ends here.
