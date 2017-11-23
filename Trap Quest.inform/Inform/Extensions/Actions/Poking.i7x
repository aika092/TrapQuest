Poking by Actions begins here.

[!<poking:Action>*

REQUIRES COMMENTING

*!]
poking is an action applying to one thing.

[!<CheckPoking>+

REQUIRES COMMENTING

+!]
Check poking:
	[if the player is immobile, say "You're a bit busy!" instead;]
	if the player is not a living sex doll:
		unless the player is able to manually use their hands, say "" instead;
	if the noun is not monster:
		now seconds is 2;
		say "You poke it.  Nothing happens." instead;
	if the noun is awake:
		say "You poke the [noun].";
		decrease the favour of the noun by 1;
		if the noun is interested:
			say "The [noun] [if the noun is intelligent and the noun is unfriendly]is unaffected[otherwise if the noun is intelligent]seems confused but doesn't say anything[otherwise]ignores you[end if].";
		otherwise:
			compute correct perception of the noun;
		now seconds is 2 instead.

[!<CarryOutPoking>+

REQUIRES COMMENTING

+!]	
Carry out poking:
	compute poking of the noun.

[!<ComputePokingOfMonster>+

REQUIRES COMMENTING

+!]
To compute poking of (M - a monster):
	say "The [M] wakes up, startled!";
	now the sleep of M is 0;
	decrease the favour of M by 1;
	now seconds is 2;
	compute correct perception of M.
			
Understand "poke [something]", "awake [something]", "wake [something]" as poking.


Poking ends here.
