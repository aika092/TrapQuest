Skeleton Key by Consumables begins here.


A skeleton key is a kind of collectible. The printed name of skeleton key is "[TQlink of item described]skeleton key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of skeleton key is "key". There are 5 skeleton keys.

The description of skeleton key is "This small key looks like it could fit into any pair of handcuffs, anklecuffs or similar.".

Unlocking is an action applying to one thing.
Check unlocking:
	if the noun is not bondage, say "You can only unlock bondage." instead;
	if the number of held skeleton keys is 0, say "You don't have a key." instead;
	if the noun is not locked, say "It's already unlocked." instead;
	if the player is in danger, say "You can't do that in the middle of combat!" instead.
Carry out unlocking:
	let K be a random held skeleton key;
	say "[if the noun is wrist bond]With some careful finger work, you[otherwise]You[end if] slot the key into the lock and twist. The lock clicks open!  The key dissolves into dust.";
	now the noun is unlocked;
	destroy K;
	now seconds is 6.
Understand "unlock [something]", "unlock [something] with key" as unlocking.

Check inserting a skeleton key into something:
	try unlocking the second noun instead.

Check decanting a skeleton key with something:
	try unlocking the second noun instead.

Check drinking a skeleton key:
	say "On what? Try [bold type]unlock (noun)[roman type] instead." instead.


Skeleton Key ends here.

