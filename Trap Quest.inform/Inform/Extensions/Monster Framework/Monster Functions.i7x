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
	bore M for 300 seconds.

[!<BoreMonsterForNSeconds>+

REQUIRES COMMENTING

+!]
To bore (M - a monster) for (N - a number) seconds:
	dislodge M;
	if N >= 50 and the player is not in Dungeon12, decrease the charge of the dungeon altar by a random number between 1 and 50;
	now M is uninterested;
	now the objectification of M is 0;
	now the babification of M is 0;
	now the friendly boredom of M is 0;
	now the boredom of M is N.

[!<SatisfyMonster>+

REQUIRES COMMENTING

+!]
To satisfy (M - a monster):
	satisfy M for 300 seconds.

[!<SatisfyMonsterForNSeconds>+

REQUIRES COMMENTING

+!]
To satisfy (M - a monster) for (N - a number) seconds:
	if M is interested:
		bore M for N seconds;
		FavourUp M;
		if M is in the location of the player, say "[SatisfiedFlav of M]";
	otherwise:
		bore M for N seconds. [We still want to dislodge etc. even if they weren't interested for some reason.]

[!<SaySatisfiedFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say SatisfiedFlav of (M - a monster):
	say "The [M] seems [if M is intelligent and M is unfriendly]satisfied, and loses[otherwise]to lose[end if] interest.".

[!<SayDeathBrinkOfMonster>+

REQUIRES COMMENTING

+!]
To say DeathBrink of (M - a monster):
	say "The [M] is on the brink of defeat. Do you want to leave her alive and fuck her instead?".

[!<ComputeDeathOfMonster>+

REQUIRES COMMENTING

+!]
To compute death of (M - a monster):
	if the health of M <= 0:
		compute unique death of M;
		if the player-class is succubus:
			increase the souls of the player by 1;
			increase the total-souls of the player by 1;
			say "You feel the soul of the [M] flow into you!";[Gain a soul for defeating an enemy basic implementation]
			dignify 400;[Heal some lost humiliation on eating a soul]
		if a random number between 1 and 3 > 1, loot M; [67% chance]
		if a random number between 1 and 4 is 1, loot M; [25% chance]
		if there are things retained by M:
			say "Your [list of things retained by M] [if the number of things retained by M > 1]are[otherwise]is[end if] also left behind.";
			repeat with K running through things retained by M:
				now K is in the location of the player;
				now M is not retaining K;
				now M is not withholding K;
				compute autotaking K;
		let J be a random worn demon codpiece;
		if J is clothing and M is wenchy and the player is a may 2017 top donator, follow the demon junk punishment rule;
		if M is in the location of the player:
			destroy M;
		if the player is in the woods and giant-statue is active:
			ChargeDown giant-statue by 20;



[!<ComputeUniqueDeathOfMonster>+

REQUIRES COMMENTING

+!]
To compute unique death of (M - a monster):
	say "The [M] drops to the ground, dead. After a couple of seconds, [his of M] body disappears.".

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
	now the times-fucked of M is 0;
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
	if M is released and M is alive and M is not in a placed room and M is not in WoodsBoss01:
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

[!<LootMonster>+

REQUIRES COMMENTING

+!]
To loot (M - a monster):
	let X be a random off-stage plentiful accessory;
	if the class of the player is santa's little helper:
		now X is a random off-stage christmas gift;
	unless X is nothing:
		now X is in the location of the player;
		if X is plentiful accessory:
			let R be a random number from the difficulty of M to (the difficulty of M * 4) / 3;
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
			set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.



Monster Functions ends here.

