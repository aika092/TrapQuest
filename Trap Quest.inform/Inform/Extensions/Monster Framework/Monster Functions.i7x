Monster Functions by Monster Framework begins here.

To deinterest (M - a monster):
	bore M for 0 seconds.

To distract (M - a monster):
	bore M for 50 seconds.

To bore (M - a monster):
	bore M for 500 seconds.

To bore (M - a monster) for (N - a number) seconds:
	dislodge M;
	compute common boredom of M for N seconds;
	now M is uninterested;
	now the boredom of M is N;
	if M is diaper-instructing, now the boredom of M is the boredom of M / 2. [Diaper checks happen more frequently]

To compute common boredom of (M - a monster) for (N - a number) seconds:
	now M is unseduced;
	now the throating of M is 0;
	now the objectification of M is 0;
	now the babification of M is 0;
	now the friendly boredom of M is 0;
	now the last-tripped of M is 0;
	if debugmode > 1, say "Deinteresting [ShortDesc of M]. Latest appearance seen is [latest-appearance of M]. Refreshing...";
	now the latest-appearance of M is the appearance of the player;
	if debugmode > 1, say "Latest appearance seen is now [latest-appearance of M].";
	if diaper quest is 1, now the latest-cringe of M is the cringe appearance of the player;
	now M is not diaper-committed;
	now M is not double-diaper-committed;
	now the dismissRefused of M is 0;
	reset orifice selection of M; [Otherwise they would be biased towards doing the same thing again, which is lame.]
	repeat with K running through things rejected by M:
		now M is not rejecting K;
	if N >= 50 and playerRegion is not School and the player is not in Dungeon12:[Dungeon12 is the Throne Room. We don't want to let the player farm by going in and out of the Royal Chambers.]
		decrease the charge of the dungeon altar by a random number between 1 and 50;
		if the charge of hotel altar > 0, decrease the charge of hotel altar by a random number between 1 and 50;

To satisfy (M - a monster):
	satisfy M for 500 seconds.

To satisfy (M - a monster) for (N - a number) seconds:
	if M is interested:
		bore M for N seconds;
		FavourUp M;
		if M is in the location of the player:
			if M is awake, say SatisfiedFlav of M;
			progress quest of nice-quest;
	otherwise:
		bore M for N seconds. [We still want to dislodge etc. even if they weren't interested for some reason.]

To say SatisfiedFlav of (M - a monster):
	if M is in the location of the player and M is not dying:
		let U be 0;
		if M is intelligent and M is unfriendly, now U is 1; [This check can cause a line break]
		say "[BigNameDesc of M] seems [if U is 1]satisfied, and loses[otherwise]to lose[end if] interest.".

Part - Destroying

To destroy (M - a monster):
	if the player is in the location of M, decrease the charge of the dungeon altar by the difficulty of M * 10;
	if the player is in the location of M and the charge of hotel altar > 0, decrease the charge of hotel altar by the difficulty of M * 10;
	now M is dying.

To finally destroy (M - a monster):
	uniquely destroy M;
	now the times-met of M is 0;
	now the blue-balls of M is 0;
	now the times-submitted of M is 0;
	now the times-dominated of M is 0;
	now the sex-length of M is 0;
	now the collar-pulled of M is 0;
	now M is not soul-stolen;
	remove M from play;
	reset M.

To reset (M - a monster): [We do this when the player faints to all monsters, even if they are remaining in play.]
	unique reset M;
	now M is not dying;
	deinterest M; [this includes dislodging]
	now the sleep of M is 0;
	now the scared of M is 0;
	now the last-interaction of M is 0;
	now the health of M is the maxhealth of M;
	now the loot dropped of M is 0;
	now the refractory-period of M is 0;
	FavourReset M;
	if M is unleashed and M is alive and M is not in a placed room and M is not in WoodsBoss01:
		if M is in the Dungeon:
			now M is in a random placed labyrinth room;
		otherwise if M is in the Woods:
			if there is a placed jungle room:
				now M is in a random placed jungle room;
			otherwise:
				finally destroy M;
		otherwise if M is in the Hotel:
			if there is a placed modern room:
				now M is in a random placed modern room;
			otherwise:
				finally destroy M;
		otherwise if M is in the Mansion:
			if there is a placed haunted room:
				now M is in a random placed haunted room;
			otherwise:
				finally destroy M.

To unique reset (M - a monster):
	do nothing.

To loot (M - a monster):
	let X be nothing;
	sort the taxableItems of M in random order;
	sort the taxableItems of M in reverse tradability order;
	repeat with T running through the taxableItems of M:
		if T is off-stage or T is carried by M, now X is T;
	if X is a thing:
		now X is in the location of the player;
		if X is clothing, blandify and reveal X;
		if X is alchemy product:
			now X is bland;
			now X is sure;
		compute loot dropping of X by M;
		increase the loot dropped of M by 1;
		compute autotaking X;
	otherwise:
		standard loot M.

To standard loot (M - a monster):
	let X be a random off-stage plentiful accessory;
	if the class of the player is santa's little helper, now X is a random off-stage christmas gift;
	unless X is nothing:
		now X is in the location of the player;
		if X is plentiful accessory, compute appraisal of X from M;
		if X is clothing, blandify and reveal X;
		if X is alchemy product:
			now X is bland;
			now X is sure;
		compute loot dropping of X by M;
		increase the loot dropped of M by 1;
		compute autotaking X.

To compute loot dropping of (X - a thing) by (M - a monster):
	say "[BigNameDesc of M] [if the loot dropped of M > 0]also [end if][if M is dying or M is not in the location of the player]dropped[otherwise]drops[end if] a [printed name of X]!".

To compute appraisal of (X - an accessory) from (M - a monster):
	let R be a random number from the difficulty of M to (the difficulty of M * 4) / 3;
	set jewellery value of X to R.

To set jewellery value of (X - an accessory) to (R - a number):
	if R < 5:
		now X is sapphire;
	otherwise if R < 9:
		now X is emerald;
	otherwise if R < 13:
		now X is ruby;
	otherwise if R < 17:
		now X is pink diamond;
	otherwise if R < 22:
		now X is pure diamond;
	otherwise:
		now X is solid gold;
	set shortcut of X.

To orgasm bore (M - a monster):
	orgasm M;
	bore M.

To orgasm bore (M - a monster) for (N - a number) seconds:
	orgasm M;
	bore M for N seconds.

To orgasm satisfy (M - a monster):
	orgasm M;
	satisfy M.

To orgasm satisfy (M - a monster) for (N - a number) seconds:
	orgasm M;
	satisfy M for N seconds.

To orgasm dislodge (M - a monster):
	orgasm M;
	dislodge M.

Monster Functions ends here.
