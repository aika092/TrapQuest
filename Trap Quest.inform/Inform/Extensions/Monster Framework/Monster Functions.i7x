Monster Functions by Monster Framework begins here.

To interest (M - a monster):
	now M is interested;
	now the boredom of M is 0;
	now the latest-appearance of M is the appearance of the player;
	if diaper quest is 1, now the latest-cringe of M is the cringe appearance of the player;
	uniquely interest M.

To uniquely interest (M - a monster):
	do nothing.

To deinterest (M - a monster):
	bore M for 0 seconds.

To distract (M - a monster):
	bore M for 50 seconds.

To bore (M - a monster):
	bore M for 500 seconds.

To bore (M - a monster) for (N - a number) seconds:
	compute common boredom of M for N seconds;
	compute unique boredom of M;
	now M is uninterested;
	now the boredom of M is N;
	if M is diaper-instructing, now the boredom of M is the boredom of M / 2. [Diaper checks happen more frequently]

To compute unique boredom of (M - a monster):
	do nothing.

To compute common boredom of (M - a monster) for (N - a number) seconds:
	dislodge M;
	now M is not enticed;
	now the throating of M is 0;
	now the objectification of M is 0;
	now the babification of M is 0;
	now the friendly boredom of M is 0;
	now the last-tripped of M is 0;
	now M is not trip-warned;
	now the wrangle-bonus of M is 0;
	now the temporary-damage-reduction of M is 0;
	if debugmode > 1, say "Deinteresting [ShortDesc of M] for [N] seconds. Latest appearance seen is [latest-appearance of M].";
	compute common latest appearance reset of M;
	[now the latest-appearance of M is the appearance of the player;
	if debugmode > 1, say "Latest appearance seen is now [latest-appearance of M].";
	if diaper quest is 1, now the latest-cringe of M is the cringe appearance of the player;]
	now M is not diaper-committed;
	now M is not double-diaper-committed;
	now M is not tickle-testing;
	now M is not diaperMessReacted;
	now the dismissRefused of M is 0;
	reset orifice selection of M; [Otherwise they would be biased towards doing the same thing again, which is lame.]
	repeat with K running through things rejected by M:
		now M is not rejecting K;
	if N >= 50 and playerRegion is not School and the player is not in Dungeon12:[Dungeon12 is the Royal Chambers. We don't want to let the player farm by going in and out of the Royal Chambers.]
		let R be a random number between 1 and 50;
		decrease the charge of the dungeon altar by R;
		decrease the charge of the elder altar by R;
	check unlock timestamping of M.

To compute common latest appearance reset of (M - a monster):
	now the latest-appearance of M is 0;
	if diaper quest is 1, now the latest-cringe of M is 0.

To satisfy (M - a monster):
	satisfy M for 500 seconds.

To satisfy (M - a monster) for (N - a number) seconds:
	if M is interested:
		bore M for N seconds;
		FavourUp M;
		if M is in the location of the player:
			if M is awake, say SatisfiedFlav of M;
			progress quest of nice-quest;
		if the health of M <= the maxhealth of M / 2, progress quest of chosen-one-quest;
	otherwise:
		bore M for N seconds; [We still want to dislodge etc. even if they weren't interested for some reason.]
	compute unlock satisfaction of M;
	compute unique satisfaction of M.

To check unlock timestamping of (M - a monster):
	if M is currently keyholding:
		if the locked-timestamp of M is 0:
			now the locked-timestamp of M is earnings;
	otherwise:
		now the locked-timestamp of M is 0.

To compute unlock satisfaction of (M - a monster):
	if M is in the location of the player and M is currently keyholding:
		if the locked-timestamp of M is 0: [just in case]
			now the locked-timestamp of M is earnings; [just in case]
		otherwise if the locked-timestamp of M is not earnings:
			let locked-duration be the locked-timestamp of M - earnings;
			if locked-duration < 0, now locked-duration is 10000;
			let FV be (the favour of M - the aggro limit of M) * 50;
			let LD be locked-duration + FV;
			let R be a random number between 1 and LD;
			if debuginfo > 0, say "[input-style][MediumDesc of M] satisfied key use check: Seconds since lock ([locked-duration]) + favour rating ([FV]) = [LD]; d[LD] = [R] | [unlock threshold of M].5 unlock threshold of [MediumDesc of M][roman type][line break]";
			if R > the unlock threshold of M:
				say SatisfiedUnlockFlav of M;
				repeat with K running through currently locking specific-keys held by M:
					let C be a random worn locked clothing covered by K;
					say "[BigNameDesc of M] uses [his of M] [NameDesc of K] to unlock your [C]!";
					unlock C;
			check unlock timestamping of M.

To decide which number is the unlock threshold of (M - a monster):
	decide on 300.

To say SatisfiedUnlockFlav of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]Actually[or]On second thoughts[cycling], [one of]I guess you've been locked in that for long enough, now[or]I shouldn't keep you locked in that forever now, should I[or]it would be excessively cruel to keep you locked up like that any longer[in random order].'[roman type][line break]".

To compute unique satisfaction of (M - a monster):
	do nothing.

To say SatisfiedFlav of (M - a monster):
	if M is in the location of the player and M is not dying:
		let U be false;
		if M is intelligent and M is unfriendly, now U is true; [This check can cause a line break]
		say "[BigNameDesc of M] seems [if U is true]satisfied, and loses[otherwise]to lose[end if] interest.".

Part - Destroying

To destroy (M - a monster):
	now M is dying.

To finally destroy (M - a monster):
	if M is carrying players-detached-dick:
		compute taking away detached dick from M;
		describe detached dick dropping;
	if M is carrying portal-cock-ring:
		if the player is in the location of M:
			say cock ring drops to the ground with "You watch as the";
		now portal-cock-ring is in the location of M;
	uniquely destroy M;
	if the player is in the location of M, decrease the charge of the dungeon altar by the difficulty of M * 10;
	if the player is in the location of M, decrease the charge of the elder altar by the difficulty of M * 10;
	now the collar-pulled of M is 0;
	now M is not soul-stolen;
	now the time-alive of M is 0;
	now the sex-length of M is 0;
	now the times-met of M is 0;
	if M is bride-consort:
		now the ceremony of betrothal-quest is true;
		progress quest of betrothal-quest;
	compute pedestal interruption of M;
	remove M from play;
	if debugmode > 1, say "[BigNameDesc of M] is now in [location of M].";
	now the monstersetup of M is 0;
	reset M.

To reset (M - a monster): [We do this when the player faints to all monsters, even if they are remaining in play.]
	if M is masturbating the player, now masturbation-swimming is false;
	unique reset M;
	deinterest M; [this includes dislodging]
	now M is not dying;
	now the sleep of M is 0;
	now the scared of M is 0;
	now the last-interaction of M is 0;
	now the health of M is the maxhealth of M;
	now the bladder of M is a random number between 0 and 900;
	now the loot dropped of M is 0;
	now the refractory-period of M is 0;
	now the current-errand of M is no-errand;
	now the current-reward of M is no-reward;
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
	now the blue-balls of M is 0.

To compute generic item gain of (M - a monster):
	let itemSelection be a list of things;
	let itemOwned be false;
	if diaper lover > 0 or bukkake fetish > 0:
		repeat with C running through the tradableItems of M:
			if C is pocketwipes, now itemOwned is true;
		if itemOwned is false:
			let T be a random off-stage pocketwipes;
			if T is a thing, add T to itemSelection;
	now itemOwned is false;
	if diaper quest is 0:
		repeat with C running through the tradableItems of M:
			if C is lubricant, now itemOwned is true;
		if itemOwned is false:
			let T be a random off-stage lubricant;
			if T is a thing, add T to itemSelection;
	now itemOwned is false;
	repeat with C running through the tradableItems of M:
		if C is electric fan, now itemOwned is true;
	if itemOwned is false:
		let T be a random off-stage electric fan;
		if T is a thing, add T to itemSelection;
	now itemOwned is false;
	repeat with C running through the tradableItems of M:
		if C is bandage, now itemOwned is true;
	if itemOwned is false:
		let T be a random off-stage bandage;
		if T is a thing, add T to itemSelection;
	now itemOwned is false;
	repeat with C running through the tradableItems of M:
		if C is alchemy product, now itemOwned is true;
	if itemOwned is false:
		let T be a random off-stage shop-eligible alchemy product;
		if T is a thing, add T to itemSelection;
	now itemOwned is false;
	repeat with C running through the tradableItems of M:
		if C is snack, now itemOwned is true;
	if itemOwned is false:
		let T be a random off-stage snack;
		if T is a thing, add T to itemSelection;
	let T be a random off-stage eligible trinket;
	if T is a thing, add T to itemSelection;
	if the number of entries in itemSelection > 0:
		sort itemSelection in random order;
		add entry 1 of itemSelection to the tradableItems of M, if absent.

To loot (M - a monster):
	let X be nothing;
	sort the taxableItems of M in random order;
	sort the taxableItems of M in reverse tradability order;
	repeat with T running through the taxableItems of M:
		if T is off-stage or T is carried by M, now X is T;
	if X is a thing:
		if X is clothing, blandify and reveal X;
		if X is alchemy product:
			now X is bland;
			now X is sure;
		now X is in the location of the player;
		compute loot dropping of X by M;
		increase the loot dropped of M by 1;
		compute autotaking X;
	otherwise:
		standard loot M.

To standard loot (M - a monster):
	let X be a random off-stage plentiful accessory;
	if the class of the player is santa's little helper, now X is a random off-stage christmas gift;
	unless X is nothing:
		if X is plentiful accessory, compute appraisal of X from M;
		if X is clothing, blandify and reveal X;
		if X is alchemy product:
			now X is bland;
			now X is sure;
		now X is in the location of the player;
		compute loot dropping of X by M;
		increase the loot dropped of M by 1;
		compute autotaking X.

To compute gift dropping of (X - a thing) by (M - a monster):
	say "[BigNameDesc of M] [if the loot dropped of M > 0]also [end if][if M is dying or M is not in the location of the player]dropped[otherwise]drops[end if] a [printed name of X]!".

To compute loot dropping of (X - a thing) by (M - a monster):
	unless M is dying, now the owner of X is M;
	compute gift dropping of X by M.

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
