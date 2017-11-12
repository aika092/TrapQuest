Creepiness by Every Turn begins here.

A time based rule (this is the creepiness rule):
	if the player is in the mansion, compute creepiness.


[!<creepiness:Integer>*

REQUIRES COMMENTING

*!]
creepiness is a number that varies. creepiness is usually 0.
[!<ComputeCreepiness>+

REQUIRES COMMENTING

+!]
To compute creepiness:[first implementation of "creeping" of ghosts in non-garlic rooms.]
	if the location of the player is garlic or the player is not in the mansion:
		if creepiness > 0, decrease creepiness by 5;[The player will have to hide for a couple turns to completely shake off the ghosts, but it shouldn't take too long]
	otherwise if (creepiness > a random number between 10 and 20) and the number of alive ghosts * 30 < creepiness and there is an off-stage ghost:[player has to be in the mansion for a while before multiple ghosts start messing with them]
		let M be a random off-stage ghost;[Sometimes this summons the jismbodied ghost, but you have to "kill" it first.]
		say "Something in the air changes, and you look over your shoulder to see a pinprick of light in the doorway, slowly growing into a [M].";
		set up M;
		now M is in the location of the player;
		decrease creepiness by ((6 - game difficulty) * the number of on-stage ghosts) + 30;[it's almost certain you'll see one if something catches you, but it's very unlikely to get more than 2 at a time.]
	otherwise:
		say "[one of][if creepiness > 9]Tension seems to linger in the air around you, and you can't help but feel something will burst out at you at any moment.[end if][or][or][or][if creepiness > 6]You can't shake the feeling that you are being watched.[end if][or][or][cycling]";
		increase creepiness by 1.


Creepiness ends here.
