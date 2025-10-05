Skeleton Key by Consumables begins here.

An unlock-key is a kind of collectible. Understand "key" as an unlock-key. The tradability of an unlock-key is usually 13.

The inventoryFocusPriority of an unlock-key is -15.

Figure of key is the file "Items/Collectibles/key3.png".
To decide which figure-name is the examine-image of (K - an unlock-key):
	decide on Figure of key.

Definition: an unlock-key is immune to change: decide yes.

To decide what number is the original price of (C - an unlock-key):
	decide on 5.

A specific-key is a kind of unlock-key. There are 8 specific-keys. The printed name of specific-key is "[TQlink of item described]key[lock-desc][shortcut-desc][TQxlink of item described][verb-desc of item described]".
When play begins:
	let V be 1;
	repeat with K running through specific-keys:
		now the text-shortcut of K is the substituted form of "key[V]";
		increase V by 1.

Figure of chastity key is the file "Items/Collectibles/key5.jpg".
Figure of collar key is the file "Items/Collectibles/key6.jpg".
Figure of bondage key is the file "Items/Collectibles/key7.jpg".
Figure of gag key is the file "Items/Collectibles/key8.png".
Figure of clothing key is the file "Items/Collectibles/key9.jpg".

To decide which figure-name is the examine-image of (K - a specific-key):
	let C be a random thing covered by K;
	if C is chastity bond, decide on Figure of chastity key;
	if C is neckwear, decide on Figure of collar key;
	if C is gag, decide on Figure of gag key;
	if C is bondage, decide on Figure of bondage key;
	decide on Figure of clothing key.

To say ExamineDesc of (K - a specific-key):
	let K be item described;
	let C be a random thing covered by K;
	say "This small key looks like it is made to fit a specific lock[if C is a thing]. Indeed, you are pretty sure that it would fit the keyhole on [NameDesc of C][end if].".

To say lock-desc:
	say locking-desc of item described.

To say locking-desc of (K - a thing):
	let C be a random thing covered by K;
	if C is a thing, say " (for the [ShortDesc of C])".

To say RequestFlav of (K - a specific-key):
	let C be a random thing covered by K;
	if C is a held thing, say "'Please, is there anything I could do for you to consider giving me the key to my [ShortDesc of C]?'";
	otherwise say "'Please, is there anything I could do for you to consider giving me your [ShortDesc of K]?'".

To compute (M - a monster) locking (C - a clothing) with (K - an object):
	if C is worn:
		say LockDeclarationFlav of M for C;
		say LockFlav of M for C;
		now C is locked;
		if M is intelligent:
			if K is specific-key:
				now K is covering C;
				now M is carrying K;
				add K to the taxableItems of M;
				[if M is student or M is staff member or M is not threatening, add K to the tradableItems of M;]
				say LockAfterFlav of M for C;
			say LockCommentFlav of M for C;
		otherwise if K is specific-key:
			say "Then you can do nothing but watch as [NameDesc of K] surges back into the air, before flying off to another unknown part of this world. Where has it ended up? Will you be able to find it on the ground somewhere, or will someone else pick it up first?! You wish you had a way of knowing...";
			now K is in a random placed visited roomstandard room;
		now C is not temporarily-unlocked;
	otherwise:
		say "Bug: [C] is not worn when we tried to get [M] to lock it on you.".

recently-used-key is an object that varies.

To compute (M - a monster) keylocking (C - a clothing):
	now recently-used-key is random off-stage specific-key;
	if recently-used-key is a thing, compute M locking C with recently-used-key.

To say LockDeclarationFlav of (M - a monster) for (C - a clothing):
	if M is intelligent, say "[speech style of M]'[one of]I reckon this will do wonders for your obedience.'[or]Hold still, this will only take a moment...'[or]If I have anything to say about it, you'll be wearing this for a long time...'[in random order][roman type][line break]".
To say LockFlav of (M - a monster) for (C - a clothing):
	if M is intelligent, say "With an audible click, [NameDesc of M] locks [NameDesc of C]. You won't be able to take it off without the key!";
	otherwise say "You watch with [horror the bimbo of the player] as a magic key descends from above, surging towards [NameDesc of C] and [if C is bondage]locking it[otherwise]locking the padlock of a tight metal chain that has appeared through the [clothing-material of C] fabric[end if].".
To say LockAfterFlav of (M - a monster) for (C - a clothing):
	say "[BigNameDesc of M] keeps the key!".
To say LockCommentFlav of (M - a monster) for (C - a clothing):
	if C is not temporarily-unlocked, say "[speech style of M]'[one of]I guess you're at my mercy now, aren't you?'[or]If you ever want to be let out, you'd better start acting right.'[or]If you ever want that removed, you'd better start behaving yourself.'[in random order][roman type][line break]".

Definition: a monster (called M) is currently keyholding:
	repeat with K running through specific-keys held by M:
		if K is currently locking, decide yes;
	decide no.

Definition: a specific-key (called K) is currently locking:
	repeat with C running through worn locked clothing:
		if K is covering C, decide yes;
	decide no.

skeleton key is an unlock-key. The printed name of skeleton key is "[TQlink of item described]skeleton key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of skeleton key is "skey". The tradability of a skeleton key is 17. [ally]

Figure of skeleton key is the file "Items/Collectibles/key1.jpg".

To decide which figure-name is the examine-image of (K - skeleton key):
	decide on figure of skeleton key.

To decide what number is the original price of (C - skeleton key):
	decide on 7.

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
	if bondage protection is 0 and chosen-key is skeleton key and there is an unlock-key covering the noun, say "Despite this key being able to fit into many locks, it's too big to fit into the lock on your [ShortDesc of the noun]. [BigNameDesc of the noun] must require a very specific key, probably in the possession of whoever locked it on you in the first place...[line break][variable custom style]I knew I should have spent at least two points on that [']bondage protection['] option...[roman type][line break]" instead;
	if the player is in danger, say "You can't do that in the middle of combat!" instead.
Carry out unlocking:
	allocate 6 seconds;
	if the player is getting unlucky:
		say "You fumble with the lock and end up dropping the key on the floor! ";
		now chosen-key is in the location of the player;
		let M be a random threatening reactive monster;
		if M is a monster:
			say "[line break][BigNameDesc of M] snatches the key off of the floor before you can stop [him of M]!";
			if M is friendly:
				say "[speech style of M]'[one of]Yoink! If you want this back, you'll have to do something for me first!'[or]Oh, for me? Thank you! Hehehe...'[cycling][roman type][line break]";
			otherwise:
				say "[speech style of M]'[one of]Yoink! Finders keepers, hahaha!'[or]I'll take that! Hahaha!'[cycling][roman type][line break]";
			now chosen-key is carried by M;
			say GotUnluckyFlav;
		otherwise:
			say "Oops, better try again! [GotUnluckyFlav]";
	otherwise:
		say "[if the noun is wrist bond]With some careful finger work, you[otherwise]You[end if] slot the key into the lock and twist. The lock clicks open! The key dissolves into dust.";
		unlock the noun;
		check stealing of chosen-key;
		destroy chosen-key;
		force clothing-focus redraw.
Understand "unlock [something]", "unlock [something] with key" as unlocking.

To lock (C - a clothing):
	now C is locked;
	if newbie tips is 1, say "[one of][newbie style]Newbie Tip: Oh dear, this item is locked! You'll need a key rather than a blessing to make it removable. Unfortunately the prison guard [unless there is an alive prison guard]who is about to spawn [end if]in the Dungeon isn't going to give you the key immediately. Instead, [he of prison guard] is going to wait until your 'sentence' is over, which will take a decent amount of time. Of course, if you could defeat [him of prison guard] in combat I'm sure you'd be able to salvage a key from [his of prison guard] corpse.[roman type][line break][or][stopping]".
To lock (C - diaper-stack):
	let D be entry (the number of entries in the list of stacked diapers) in the list of stacked diapers;
	if D is clothing, now D is locked;
	now C is locked.

To unlock (C - a clothing):
	now C is unlocked;
	keyfree C.
To unlock (C - diaper-stack):
	let D be entry (the number of entries in the list of stacked diapers) in the list of stacked diapers;
	if D is clothing:
		unlock D;
		keyfree D;
	now C is unlocked;
	keyfree C.

To keyfree (C - a clothing):
	repeat with K running through unlock-keys covering C:
		if K is in the location of the player or K is held, say "[BigNameDesc of K] crumbles to dust.";
		destroy K.

To uniquely destroy (K - an unlock-key):
	repeat with M running through monsters:
		if K is listed in the taxableItems of M, remove K from the taxableItems of M;
		if K is listed in the tradableItems of M, remove K from the tradableItems of M;
	repeat with C running through things covered by K:
		now K is not covering C.

Check inserting an unlock-key into something:
	try unlocking the second noun instead.

Check decanting an unlock-key with something:
	try unlocking the second noun instead.

Check drinking an unlock-key:
	say "On what? Try [bold type]unlock (noun)[roman type] instead." instead.

A later time based rule (this is the defeated prison guard key rule):
	if prison guard is defeated and prison guard is alive and prison guard is in the location of the player:
		add skeleton key to the tradableItems of prison guard, if absent.

academy-toilet-key is an unlock-key.
The printed name of academy-toilet-key is "[TQlink of item described]academy toilet key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of academy-toilet-key is "akey". Understand "academy toilet", "toilet key" as academy-toilet-key.
Figure of toilet key is the file "Items/Collectibles/key4.png".
To decide which figure-name is the examine-image of (K - academy-toilet-key):
	decide on Figure of toilet key.
To say ExamineDesc of (B - academy-toilet-key):
	say "This key unlocks the padlocks in the academy's toilets.".
To decide which number is the bartering value of (K - academy-toilet-key) for (M - headmistress):
	if M is unfriendly, decide on 1;
	decide on 10.
To compute resolution of (M - headmistress) taking (T - academy-toilet-key):
	if M is unfriendly:
		say MonsterTakeFlav of M to T;
		satisfy M;
	otherwise:
		say MonsterTakeFlav of M to T.
To say FriendlyOfferFlav of (T - academy-toilet-key):
	say "'I'm all done now.'".
To say MonsterOfferAcceptFlav of (M - headmistress) to (T - academy-toilet-key):
	say "[speech style of M]'Good [boy of the player].'[roman type][line break]".


human-toilet-key is an unlock-key. human-toilet-key is in Holding Pen. [It doesn't start off-stage so that we can easily determine if it's been used yet or not.]
The printed name of human-toilet-key is "[TQlink of item described]human toilet key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of human-toilet-key is "tkey". Understand "human toilet", "toilet key" as human-toilet-key.
To decide which figure-name is the examine-image of (K - human-toilet-key):
	decide on Figure of toilet key.
To say ExamineDesc of (B - human-toilet-key):
	say "This key could release someone stuck in place as the hotel's human toilet.".

house-key is an unlock-key.
Figure of house key is the file "Items/Collectibles/key2.png".
To decide which figure-name is the examine-image of (K - house-key):
	decide on Figure of house key.
The printed name of house-key is "[TQlink of item described]house key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of house-key is "hkey". Understand "house key" as house-key.
To say ExamineDesc of (B - house-key):
	say "This small key unlocks your front door.".

bike-lock-key is an unlock-key.
The printed name of bike-lock-key is "[TQlink of item described]bike lock key[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of bike-lock-key is "blkey". Understand "bike", "lock", "lock key" as bike-lock-key.
To say ExamineDesc of (B - bike-lock-key):
	say "This small key unlocks the bike lock in the women's toilets.".

Skeleton Key ends here.
