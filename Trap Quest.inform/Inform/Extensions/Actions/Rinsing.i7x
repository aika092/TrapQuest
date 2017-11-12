Rinsing by Actions begins here.


[!<rinsingItIn:Action>*

REQUIRES COMMENTING

*!]
Rinsing it in is an action applying to two things.

[!<CheckRinsingItIn>+

REQUIRES COMMENTING

+!]
Check rinsing it in:
	if the second noun is not WoodsScenery01 and the second noun is not DungeonScenery03 and the noun is not HotelScenery04 and the second noun is not sacred pool, say "How would that work exactly?" instead;
	if the noun is not clothing, say "You can't clean that in the water!" instead;
	if the semen-soak of the noun is 0 and the milk-soak of the noun is 0 and the urine-soak of the noun is 0, say "That is completely clean already." instead;
	if the noun is diaper:
		say "Are you sure you want to wash a diaper?  It will just absorb even more liquid!";
		unless the player consents:
			say "Action cancelled." instead;
	if the noun is worn, say "You can't wash that out whilst wearing it!" instead;
	if there is a lake monster in the location of the player, say "You can't safely do that with the tentacle monster still lurking in these waters.." instead;
	if the player is flying, say "You aren't even touching the ground!" instead;
	if the player is immobile, say "You're a bit immobile at the moment!" instead.

[!<CarryOutRinsingItIn>+

REQUIRES COMMENTING

+!]
Carry out rinsing it in:
	now seconds is 6;
	let S be the semen-soak of the noun + (the urine-soak of the noun * 2) - the milk-soak of the noun;
	if the second noun is DungeonScenery03, increase the semen-sniffing of a random lake monster by the semen-soak of the noun * 40;
	say "You put the [noun] in the water and twist and squeeze it until all the bodily fluids are gone. [if the second noun is sacred pool and the noun is cursed]Darkness seems to leak out of the [clothing-material of the noun] and into the pool.[otherwise if the second noun is sacred pool and the noun is blessed]The water around it seems to bubble and when you remove it, something about it somehow appears more mundane.[end if]";
	if the second noun is sacred pool:
		if the noun is cursed:
			increase S by 25;
			bless the noun;
		if the noun is blessed:
			decrease S by 50;
			curse the noun;
		pollute S;
	clean the noun;
	now the water-soak of the noun is the soak-limit of the noun.

Understand "rinse [something] in [something]", "clean [something] in [something]", "wash [something] in [something]" as rinsing it in.


Rinsing ends here.
