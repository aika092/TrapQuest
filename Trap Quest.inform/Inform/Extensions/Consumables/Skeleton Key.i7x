Skeleton Key by Consumables begins here.

An unlock-key is a kind of collectible. Understand "key" as an unlock-key. The tradability of an unlock-key is usually 13.

A specific-key is a kind of unlock-key. There are 8 specific-keys. The printed name of specific-key is "[TQlink of item described]key[lock-desc][shortcut-desc][TQxlink of item described][verb-desc of item described]".
When play begins:
	let V be 1;
	repeat with K running through specific-keys:
		now the text-shortcut of K is the substituted form of "key[V]";
		increase V by 1.

To say ExamineDesc of (K - a specific-key):
	say "This small key looks like it is made to fit a specific lock.".

To say lock-desc:
	let K be item described;
	let C be a random thing covered by K;
	if C is a thing, say " (for the [ShortDesc of C])".

To compute (M - a monster) locking (C - a clothing) with (K - an object):
	if C is worn:
		say LockDeclarationFlav of M for C;
		say LockFlav of M for C;
		now C is locked;
		if K is specific-key:
			now K is covering C;
			now M is carrying K;
			add K to the taxableItems of M;
			add K to the tradableItems of M;
		say LockAfterFlav of M for C;
		say LockCommentFlav of M for C;
	otherwise:
		say "Bug: [C] is not worn when we tried to get [M] to lock it on you.".

To say LockDeclarationFlav of (M - a monster) for (C - a clothing):
	if M is intelligent, say "[speech style of M]'[one of]I reckon this will do wonders for your obedience.'[or]Hold still, this will only take a moment...'[or]If I have anything to say about it, you'll be wearing this for a long time...'[in random order][roman type][line break]".
To say LockFlav of (M - a monster) for (C - a clothing):
	say "With an audible click, [NameDesc of M] locks [NameDesc of C]. You won't be able to take it off without the key!".
To say LockAfterFlav of (M - a monster) for (C - a clothing):
	say "[BigNameDesc of M] keeps the key!".
To say LockCommentFlav of (M - a monster) for (C - a clothing):
	if M is intelligent, say "[speech style of M]'[one of]I guess you're at my mercy now, aren't you?'[or]If you ever want to be let out, you better start acting right.'[in random order][roman type][line break]".

skeleton key is an unlock-key. The printed name of skeleton key is "[TQlink of item described]skeleton key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of skeleton key is "skey". The tradability of a skeleton key is 17. [ally]

Figure of skeleton key is the file "Items/Collectibles/key1.jpg".

To decide which figure-name is the examine-image of (K - an unlock-key):
	decide on figure of skeleton key.

To say ExamineDesc of (B - skeleton key):
	say "This small key looks like it could fit into any pair of handcuffs, anklecuffs or similar.".

To say RewardFlav of (M - a royal guard) for (T - skeleton key):
	say "[BigNameDesc of M] seems to purposefully let [his of M] [T] drop to the floor.[line break][speech style of M]'Whoops, clumsy me.'[roman type][line break]";

chosen-key is an object that varies.

Unlocking is an action applying to one thing.
Check unlocking:
	if the noun is caged monster, say "[if skeleton key is not held]You would need some kind of key to attempt that[otherwise if the noun is not ex-princess]You can't see a keyhole anywhere[otherwise if the number of vibe-wand carried by the noun is 0]You should make sure you've found [him of the noun] a magic wand first[otherwise]You should try giving the key to [him of the noun] instead[end if]." instead;
	if the noun is toilet and the human-toilet-scene of woman-player > 1, compute woman toilet release instead;
	if the noun is not clothing, say "You can only try to unlock bondage." instead;
	if the noun is not locked, say "It's [if the noun is worn cursed clothing]not kept on you with a physical lock, but with a magic curse[otherwise if the noun is worn glued clothing]not kept on you with a physical lock, but with some kind of strong glue[otherwise if the noun is bondage]already unlocked[otherwise]not locked on you[end if]." instead;
	now chosen-key is skeleton key;
	repeat with K running through held unlock-keys:
		if K is covering the noun, now chosen-key is K;
	if chosen-key is not held, say "You don't have a key that fits that lock[if chosen-key is in the location of the player] (you need to pick it up first)[end if]." instead;
	if the player is in danger, say "You can't do that in the middle of combat!" instead.
Carry out unlocking:
	allocate 6 seconds;
	if the player is getting unlucky:
		say "You fumble with the lock and end up dropping the key on the floor! Oops, better try again! [GotUnluckyFlav]";
		now chosen-key is in the location of the player;
	otherwise:
		say "[if the noun is wrist bond]With some careful finger work, you[otherwise]You[end if] slot the key into the lock and twist. The lock clicks open! The key dissolves into dust.";
		now the noun is unlocked;
		check stealing of chosen-key;
		destroy chosen-key.
Understand "unlock [something]", "unlock [something] with key" as unlocking.

To uniquely destroy (K - an unlock-key):
	repeat with C running through things covered by K:
		now K is not covering C.

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

academy-toilet-key is an unlock-key.
The printed name of academy-toilet-key is "[TQlink of item described]academy toilet key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of academy-toilet-key is "akey". Understand "academy toilet", "toilet key" as academy-toilet-key.
To say ExamineDesc of (B - academy-toilet-key):
	say "This key unlocks the padlocks in the academy's toilets.".
To decide which number is the bartering value of (K - academy-toilet-key) to (M - headmistress):
	decide on 1.
To say FriendlyOfferFlav of (T - academy-toilet-key):
	say "'I'm all done now.'".
To say MonsterOfferAcceptFlav of (M - headmistress) to (T - academy-toilet-key):
	say "[speech style of M]'Good [boy of the player].'".


human-toilet-key is an unlock-key. human-toilet-key is in Holding Pen. [It doesn't start off-stage so that we can easily determine if it's been used yet or not.]
The printed name of human-toilet-key is "[TQlink of item described]human toilet key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of human-toilet-key is "tkey". Understand "human toilet", "toilet key" as human-toilet-key.
To say ExamineDesc of (B - human-toilet-key):
	say "This large key could release someone stuck in place as the hotel's human toilet.".

house-key is an unlock-key.
The printed name of house-key is "[TQlink of item described]house key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of house-key is "hkey". Understand "house key" as house-key.
To say ExamineDesc of (B - house-key):
	say "This small key unlocks your front door.".

Skeleton Key ends here.
