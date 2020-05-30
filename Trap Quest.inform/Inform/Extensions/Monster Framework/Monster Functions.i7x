Monster Functions by Monster Framework begins here.

[!<DeinterestMonster>+

REQUIRES COMMENTING

+!]
To deinterest (M - a monster):
	bore M for 0 seconds.

[!<DistractMonster>+

REQUIRES COMMENTING

+!]
To distract (M - a monster):
	bore M for 50 seconds.

[!<BoreMonster>+

REQUIRES COMMENTING

!]
To bore (M - a monster):
	bore M for 500 seconds.

[!<BoreMonsterForNSeconds>+

REQUIRES COMMENTING

+!]
To bore (M - a monster) for (N - a number) seconds:
	dislodge M;
	compute common boredom of M for N seconds;
	now M is uninterested;
	now the boredom of M is N.

To compute common boredom of (M - a monster) for (N - a number) seconds:
	now M is unseduced;
	now the objectification of M is 0;
	now the babification of M is 0;
	now the friendly boredom of M is 0;
	if debugmode > 1, say "Deinteresting [ShortDesc of M]. Latest appearance seen is [latest-appearance of M]. Refreshing...";
	now the latest-appearance of M is the appearance of the player;
	if debugmode > 1, say "Latest appearance seen is now [latest-appearance of M].";
	if diaper quest is 1, now the latest-cringe of M is the cringe appearance of the player;
	now M is not diaper-committed;
	now M is not double-diaper-committed;
	now the dismissRefused of M is 0;
	if N >= 50 and the player is not in Dungeon12 and playerRegion is not School, decrease the charge of the dungeon altar by a random number between 1 and 50.

[!<SatisfyMonster>+

REQUIRES COMMENTING

+!]
To satisfy (M - a monster):
	satisfy M for 500 seconds.

[!<SatisfyMonsterForNSeconds>+

REQUIRES COMMENTING

+!]
To satisfy (M - a monster) for (N - a number) seconds:
	if M is interested:
		bore M for N seconds;
		FavourUp M;
		if M is in the location of the player and M is awake:
			say SatisfiedFlav of M;
			progress quest of nice-quest;
	otherwise:
		bore M for N seconds. [We still want to dislodge etc. even if they weren't interested for some reason.]

[!<SaySatisfiedFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say SatisfiedFlav of (M - a monster):
	if M is in the location of the player and M is not dying:
		let U be 0;
		if M is intelligent and M is unfriendly, now U is 1; [This check can cause a line break]
		say "[BigNameDesc of M] seems [if U is 1]satisfied, and loses[otherwise]to lose[end if] interest.".

Part - Destroying

[!<DestroyMonster>+

REQUIRES COMMENTING

+!]
To destroy (M - a monster):
	if the player is in the location of M, decrease the charge of the dungeon altar by the difficulty of M * 10;
	now M is dying.

[!<FinallyDestroyMonster>+

REQUIRES COMMENTING

+!]
To finally destroy (M - a monster):
	uniquely destroy M;
	now the times-met of M is 0;
	now the blue-balls of M is 0;
	now the times-submitted of M is 0;
	now the times-dominated of M is 0;
	now the sex-length of M is 0;
	now the collar-pulled of M is 0;
	remove M from play;
	reset M.

[!<ResetMonster>+

REQUIRES COMMENTING

+!]
To reset (M - a monster): [We do this when the player faints to all monsters, even if they are remaining in play.]
	now M is not dying;
	deinterest M; [this includes dislodging]
	now the questioned of M is 0;
	now the sleep of M is 0;
	now the scared of M is 0;
	now the last-interaction of M is 0;
	now the health of M is the maxhealth of M;
	now the loot dropped of M is 0;
	now the refactory-period of M is 0;
	FavourReset M;
	repeat with K running through things rejected by M:
		now K is in the location of the player;
		now M is not rejecting K;
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

To loot (M - a monster):
	standard loot M.

To standard loot (M - a monster):
	let X be a random off-stage plentiful accessory;
	if the class of the player is santa's little helper, now X is a random off-stage christmas gift;
	unless X is nothing:
		now X is in the location of the player;
		if X is plentiful accessory, compute appraisal of X from M;
		say LootFlav of X by M;
		increase the loot dropped of M by 1;
		compute autotaking X.

To say LootFlav of (X - a thing) by (M - a monster):
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
