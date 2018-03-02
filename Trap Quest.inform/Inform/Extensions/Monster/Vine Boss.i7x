Vine Boss by Monster begins here.

A vine boss is a kind of monster. A vine boss is usually neuter.

1 vine boss is in WoodsBoss01. Understand "monstrous" as a monster when the item described is vine boss. Figure of Vine Boss is the file "NPCs/Bosses/vineboss1.png". The printed name of vine boss is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]monstrous vine boss[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The description of vine boss is usually "[VineBossDesc]". The text-shortcut of vine boss is "vb".

To say VineBossDesc:
	if images visible is 1, display the Figure of Vine Boss;
	say "[one of]A 10 foot mass of seething plant matter, with primitive club-like arms and a pair of beady red eyes. Its body is supported by a trunk of interwoven vines, but the centre and top looks vaguely like a giant flower.[or]A sentient mass of seething plant matter. Its [']body['] is supported by a vast network of living vines, all of which seem to perk up at your presence. You can feel invisible eyes peering at you from the giant pink flower that makes its [']head['] boring holes through your skull.[in random order]";
	say "[if the bimbo of the player > 15][line break][second custom style][one of]I can't get away. I guess I'll just have to get on my knees then![or]It looks strong! Strong enough to hold me down for a good LONG time![in random order][otherwise if the bimbo of the player > 5][line break][variable custom style][one of]I'm trapped down here. I wonder what it's going to do to me.[or]Some of these vines look a lot like bellends. Oh no...[or]If the vines are penises, I wonder where its balls are.[in random order][otherwise if the player is female][line break][first custom style][one of]It's terrifying![or]What is THAT?![or]I don't think I can fight it...but I don't think I have any choice.[or]I don't want any of those vines to touch me.[or]It looks extremely powerful.[in random order][otherwise][first custom style][one of]I'm getting a final boss vibe here.[or]I'm not scared, but...I still want to get out of here.[or]It would be less scary with tits.[or]Nowhere to run. Me or the monster.[or]It looks pretty powerful. But it can't be prepared for THESE GUNS![in random order][end if][roman type][line break]".

To set up (M - a vine boss):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 10;
	now the health of M is the maxhealth of M.

Definition: a vine boss (called M) is concealment immune: [Can the monster ignore salves of concealment, butt slut, etc.]
	decide yes.

Definition: a vine boss (called M) is able to remove cursed plugs: [Can the monster remove all butt plugs?]
	decide yes.

This is the remove inappropriate bossfights rule:
	let M be a random vine boss;
	remove M from play;
	repeat with V running through vines:
		destroy V.
The remove inappropriate bossfights rule is listed in the diaper quest fix rules.

Part 1 - Perception

Definition: a vine boss (called M) is uniquely unfriendly:
	decide yes.

To compute perception of (M - a vine boss):
	say "The [M] notices you, and roars!  Time to decide: fight or flight?".

To say BecomesBoredFlav of (M - a vine boss):
	say "The [M] seems to lose interest in you for now.".

Part 2 - Combat

Section 1 - Attack

To TimesFuckedUp (M - a vine boss) by (N - a number):
	DirectTimesFuckedUp M by N;
	if the class of the player is princess, compute vine betrothal;
	if giant-statue is active, ChargeDown giant-statue by 40.

To compute vine betrothal:
	let S be a random royal scepter;
	if debugmode > 0, say "princess-consort is [princess-consort][line break]";
	if S is worn:
		say "Your [printed name of S] pulses, and a pleasant feeling wells up inside of you.";
		FatigueDown 50;[Small concession to help you avoid unwanted gangbangs right after]
		if the charge of S < 3, increase the charge of S by 1;
	otherwise if S is actually summonable:
		if princess-consort is the throne:
			now princess-consort is a random vine boss;
			now S is worn by the player;
			say "You find yourself peering wistfully at the ground below you, and somehow, you know that under there something is looking up at you. A [printed name of S] appears in your hand, as if to symbolize the blossoming of your connection.";
			now the player is vine-cursed.

To compute (M - a vine boss) removing (C - a thing): [This is used for removing insertables]
	let F be a random orifice penetrated by M;
	say "Using a particularly nimble vine, the [M] effortlessly pulls out your [printed name of C] and discards it onto the floor.";
	now C is in the location of the player;
	if C is anal beads:
		if F is vagina, ruin vagina times the notch-taken of C / 2;
		otherwise ruin asshole times the notch-taken of C / 2;
	dislodge C.

To compute (M - a vine boss) attacking (C - a clothing): [This should change for any special flavour or varied mechanics on how the clothing is removed.]
	say "Using a particularly nimble vine, the [M] effortlessly rips off your [printed name of C], destroying it.";
	destroy C.

The vine boss attack rules is a rulebook. The priority attack rules of a vine boss is usually the vine boss attack rules.

The latex punishment rule of a vine boss is usually the no latex punishment rule.

This is the vine boss ultimate victory attack rule:
	if there is an actually occupied fuckhole and the player is vine fucked:
		let V be a random vines penetrating a fuckhole;
		if the TrapNo of V is 3 and the player is female and the womb volume of vagina > 3:
			say "As the vines near their climax, the monster grabs you with its 'hands' and pulls you up to its flowery mouth. Using the vines in your pussy it pushes you into its huge chasm of a mouth and swallows you whole. ";
			if image cutscenes is 1, display figure of vine boss cutscene 1;
			say "Your body falls into its belly of vines and soon you are being completely filled in your [fuckholes] and mouth. The vines pump and pump [semen] into your body, and you can feel your body straining with the pressure of being filled so much. You feel like you are about to explode!";
			now delayed fainting is 1;
		otherwise if the TrapNo of V is 3 and the player is male and the total fill of belly > 13 or there is a worn slimegirl:
			say "As the vines near their climax, the monster grabs you with its 'hands' and pulls you up to its flowery mouth. Using the vines in your ass it pushes you into its huge chasm of a mouth and swallows you whole. ";
			if image cutscenes is 1, display figure of vine boss cutscene 1;
			say "Your body falls into its belly of vines and soon you are being completely filled in both your [asshole] and your mouth. The vines pump and pump [semen] into your body, and you can feel your body straining with the pressure of being filled so much. You feel like you are about to explode!";
			now delayed fainting is 1;
	if delayed fainting is 1:
		repeat with V running through vines in the location of the player:
			destroy V;
		now the fainting reason of the player is 16;
		rule succeeds.
The vine boss ultimate victory attack rule is listed last in the vine boss attack rules.

This is the do nothing while the player is vine fucked rule:
	if the player is vine fucked, rule succeeds.
The do nothing while the player is vine fucked rule is listed last in the vine boss attack rules.

This is the vine boss spawns more vines rule:
	if the number of vines in the location of the player is 0 or a random number between -6 and 4 > the number of vines in the location of the player:
		say "The [current-monster] roars as [if the number of aggressive vines in the location of the player > 0]more [end if]vines squirm through the dirt towards you!";
		let V be a random off-stage vines;
		now V is in the location of the player;
		now V is revealed;
		now the TrapNo of V is 0;
		rule succeeds.
The vine boss spawns more vines rule is listed last in the vine boss attack rules.

This is the vine boss attacking ass covering clothing rule:
	let C be a random worn top level ass protection clothing;
	if C is clothing:
		compute current-monster attacking C;
		rule succeeds.
The vine boss attacking ass covering clothing rule is listed last in the vine boss attack rules.

This is the vine boss removing butt plug rule:
	let C be a random worn insertable thing penetrating asshole;
	if C is a thing:
		compute current-monster removing C;
		rule succeeds.
The vine boss removing butt plug rule is listed last in the vine boss attack rules.

This is the vine boss attacking pussy covering clothing rule:
	let C be a random worn top level protection clothing;
	if C is clothing:
		compute current-monster attacking C;
		rule succeeds.
The vine boss attacking pussy covering clothing rule is listed last in the vine boss attack rules.

This is the vine boss removing cunt plug rule:
	let C be a random worn insertable thing penetrating vagina;
	if C is a thing:
		compute current-monster removing C;
		rule succeeds.
The vine boss removing cunt plug rule is listed last in the vine boss attack rules.

This is the vine boss makes the player sore rule:
	let R be a random number between 1 and 2;
	if R is 1:
		say "The [current-monster] strikes at your body with a strong vine!  Oof!";
		BodyRuin 1;
	rule succeeds.
The vine boss makes the player sore rule is listed last in the vine boss attack rules.

Section 2 - Damage

To compute damage of (M - a vine boss):
	if the health of M > 0:
		say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.

To say DamageReactHealthy of (M - a vine boss):
	say "The giant vine beast does not seem to react to your attacks as if it can't feel pain!".

To say DamageReactDamaged of (M - a vine boss):
	say "The giant vine beast seems confused by your ongoing ability to fight!".

To say DamageReactTired of (M - a vine boss):
	say "The vine beast [one of]is now screeching, it clearly now realises it might lose this fight![or]screeches but does not stop defending its lair![stopping]".

To say DamageReactWeak of (M - a vine boss):
	say "The vine beast continues screeching, huge chunks of dying vegetation falling from the ceiling as it fights on.".

To compute unique death of (M - a vine boss):
	let B be a random writhing vine;
	say "With one final screech, the life leaves all of the vines that make up the beast, and all the vines in the room around you. They slowly and gracefully fall to the ground in a large pile. Victory!  Searching the pile, you find a single, now harmless looking [printed name of B] that is still slightly alive!";
	repeat with V running through vines:
		destroy V;
	now B is in the location of the player;
	compute autotaking B.

To loot (M - a vine boss):
	let X be a random off-stage plentiful ring;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.


Vine Boss ends here.

