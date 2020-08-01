Skeleton Key by Consumables begins here.

An unlock-key is a kind of collectible. Understand "key" as an unlock-key. The tradability of an unlock-key is usually 17. [ally]

skeleton key is an unlock-key. The printed name of skeleton key is "[TQlink of item described]skeleton key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of skeleton key is "skey".

Figure of skeleton key is the file "Items/Collectibles/key1.jpg".

To decide which figure-name is the examine-image of (K - an unlock-key):
	decide on figure of skeleton key.

To say ExamineDesc of (B - skeleton key):
	say "This small key looks like it could fit into any pair of handcuffs, anklecuffs or similar.".

To say RewardFlav of (M - a royal guard) for (T - skeleton key):
	say "[BigNameDesc of M] seems to purposefully let [his of M] [T] drop to the floor.[line break][speech style of M]'Whoops, clumsy me.'[roman type][line break]";

Unlocking is an action applying to one thing.
Check unlocking:
	if the noun is caged monster, say "[if skeleton key is not held]You would need some kind of key to attempt that[otherwise if the noun is not ex-princess]You can't see a keyhole anywhere[otherwise if the number of vibe-wand carried by the noun is 0]You should make sure you've found [him of the noun] a magic wand first[otherwise]You should try giving the key to [him of the noun] instead[end if]." instead;
	if the noun is toilet and the human-toilet-scene of woman-player > 1, compute woman toilet release instead;
	if the noun is not clothing, say "You can only try to unlock bondage." instead;
	if the noun is not locked, say "It's [if the noun is worn cursed clothing]not kept on you with a physical lock, but with a magic curse[otherwise if the noun is worn glued clothing]not kept on you with a physical lock, but with some kind of strong glue[otherwise if the noun is bondage]already unlocked[otherwise]not locked on you[end if]." instead;
	if skeleton key is not held, say "You don't have a key that fits that lock." instead;
	if the player is in danger, say "You can't do that in the middle of combat!" instead.
Carry out unlocking:
	say "[if the noun is wrist bond]With some careful finger work, you[otherwise]You[end if] slot the key into the lock and twist. The lock clicks open! The key dissolves into dust.";
	now the noun is unlocked;
	destroy skeleton key;
	allocate 6 seconds.
Understand "unlock [something]", "unlock [something] with key" as unlocking.

Check inserting an unlock-key into something:
	try unlocking the second noun instead.

Check decanting an unlock-key with something:
	try unlocking the second noun instead.

Check drinking an unlock-key:
	say "On what? Try [bold type]unlock (noun)[roman type] instead." instead.

A later time based rule (this is the defeated prison guard key rule):
	if prison guard is defeated and prison guard is alive and skeleton key is off-stage and prison guard is in the location of the player:
		now skeleton key is in the location of the player;
		say "As [NameDesc of prison guard] shuffles along nearby, a [skeleton key] drops from [his of prison guard] pocket!";
		compute autotaking skeleton key.

toilet-key is an unlock-key. toilet-key is in Holding Pen. [It doesn't start off-stage so that we can easily determine if it's been used yet or not.]
The printed name of toilet-key is "[TQlink of item described]toilet key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of toilet-key is "tkey". Understand "toilet key" as toilet-key.
To say ExamineDesc of (B - toilet-key):
	say "This large key could release someone stuck in place as the hotel's human toilet.".

house-key is an unlock-key.
The printed name of house-key is "[TQlink of item described]house key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of house-key is "hkey". Understand "house key" as house-key.
To say ExamineDesc of (B - house-key):
	say "This small key unlocks your front door.".

Skeleton Key ends here.
