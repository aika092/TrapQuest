Repairing by Actions begins here.

[!<repairing:Action>*

REQUIRES COMMENTING

*!]
Repairing is an action applying to two things.

[!<CheckRepairing>+

REQUIRES COMMENTING

+!]
Check repairing:
	let M be the noun;
	let N be the second noun;
	if the noun is not ripped clothing, say "That doesn[']t need to be repaired!" instead;
	if the player is not in School09, say "You need to be at a crafting table to do this!" instead;
	if N is not clothing, say "You can[']t patch clothing with this!" instead;
	if the clothing-material of M is not the clothing-material of N, say "You need [clothing-material of M] to repair this!" instead;
	if N is worn, say "You need to take the [N] off first.".

[!<CarryOutRepairing>+

REQUIRES COMMENTING

+!]
Carry out repairing:
	say "You use some scissors to cut the [second noun] into several pieces and use them to help patch the hole in the [noun]. With a bit of sewing, it's completely repaired!";
	repair the noun;
	only destroy the second noun;
	now seconds is 6.
	
Understand "repair [something] with [something]", "patch [something] with [something]", "patch up [something] with [something]", "mend [something] with [something]", "fix [something] with [something]" as repairing.


Repairing ends here.

