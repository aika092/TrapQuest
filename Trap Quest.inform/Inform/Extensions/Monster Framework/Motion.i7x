Motion by Monster Framework begins here.

To check motion of (M - a monster):
	if M is penetrating a body part:
		dislodge M;
	if M is undefeated and M is willing to punish untidiness and the player is not in the location of M: [While the NPC idly wanders, it can pick up leftover soiled diapers]
		repeat with D running through soiled-diaper in the location of M:
			now D is in Holding Pen;
			now D is retained by M;
	compute monstermotion of M;
	now M is moved.

To compute monstermotion of (M - a monster): [This is default wandering if function is left undefined for a specific monster]
	compute room leaving of M.

To compute mandatory room leaving of (M - a monster):
	let L be the location of M;
	let N be 30;
	now the travel-opposite of the player is down;
	while N > 0 and M is in L:
		compute room leaving of M;
		decrease N by 1;
	while N > -15 and M is in L:
		decrease N by 1;
		regionally place M.

To compute room leaving of (M - a monster): [This CANNOT be replaced with a function that potentially doesn't make them leave the room, for any NPC. Some while loops rely on this to eventually succeed or the game will freeze.]
	if M is in Dungeon11 or M is in Dungeon10:
		try M going east;
	otherwise if M is in School33 and M is uninterested:
		try M going west;
	otherwise:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		if A is not the travel-opposite of the player: [This is allowed because when we compute mandatory room leaving we set the travel-opposite to down]
			let P be the room A from the location of M;
			if A is a random N-viable direction and P is unbossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
				try M going A;
				compute monstermotion reactions of M;
			otherwise if A is a random N-viable direction and P is unbossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
				try M going A;
				compute monstermotion reactions of M.

[N is a nearby monster, in case we want to say something specific about hearing that type of monster nearby.]
To say AttractionWorry of (N - a monster):
	[We don't want to read this every time each monster senses the player.]
	if a random number between 1 and 20 > 1:
		do nothing;
	otherwise:
		let M be a random monster in the location of the player;
		if M is a monster:
			[If there's a monster right here, the player probably isn't going to worry about a nearby monster? Or would they? Hmm.]
			do nothing;[We do nothing instead of explicitly "compute correct kneeling reaction of M" because that's automatically done by the "Report kneeling when the player is in danger and seconds > 1" rule. If we did it here too, we'd get two messages in a row.]
		otherwise:
			if the player is glue stuck:
				let G be a random glue in the location of the player;
				if the smell-duration of G > 0:
					say "[one of]The smell of the glue has filled the room and spread beyond. [line break][variable custom style]Would any monsters have learned to hunt for stuck prey?[roman type][line break][or]As you strain at the glue, you try to keep your panicked panting to a minimum.[or][line break][variable custom style]I hope the smell and my struggles don't attract 'attention'![roman type][line break][or]With the smell of the glue spreading, you try to contain your groans as you struggle against the glue's grip.[or]It'd be just awful if a monster found you while you were helpless![or]You can't help moaning as the pungent glue holds you in its relentless grip.[at random]";
				otherwise:
					say "Thankfully, the smell of the glue has faded".

To check seeking (N - a number) of (M - a monster):
	[If N is 2, we need to flag that the monster has had its movement for the round and does not get to act again.]
	if M is unleashed or M is unconcerned:
		if M is regional:
			let L be the location of M;
			let P be the location of the player;
			let D be the best route from L to P through placed rooms;
			if D is a direction:
				now neighbour finder is L;
				let L2 be the room D from the location of M;
				if D is N-viable:
					if the player is glued seductively and P is unbossed and the number of barriers in L2 is 0 and the number of barriers in L is 0:
						compute M seeking D;
						say AttractionWorry of M;
					otherwise if the seek roll of M > 0 and P is unbossed and the number of barriers in L2 is 0 and the number of barriers in L is 0:
						compute M seeking D;
			if N is 2, now M is moved;
		otherwise:
			if M is in Stairwell01 or M is in Stairwell02 or M is in Stairwell03 or M is in Hotel29 or M is in Woods01 or M is in Hotel01 or M is in Mansion01 or there is a warp portal in the location of M, compute mandatory room leaving of M; [Move them away from the entrance]
			deinterest M.

To decide which number is the seek roll of (M - a monster):
	decide on a random number between 0 and 3. [Most monsters have a 75% chance of successfully moving.]

To compute (M - a monster) seeking (D - a direction): [Default Compute Seeking if not specified for the monster.]
	try M going D;
	compute monstermotion reactions of M.

Check someone going:
	if there is a barrier in the location of the player, stop the action.

To compute fleeing of (M - a monster): [Default Compute Fleeing if not specified for the monster.]
	if M is scarable:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		let P be the room A from the location of M;
		if A is a random N-viable direction and the room A from the location of M is unbossed and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			try M going A;
		otherwise if A is a random N-viable direction and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
			try M going A.

The motion reaction rules is a rulebook.

To compute monstermotion reactions of (M - a monster): [If the NPC stumbles across the player this turn, they should react appropriately if they catch the player urinating, etc.]
	if M is reactive:
		now current-monster is M; [Just to make sure]
		follow the motion reaction rules.

This is the monster notices the player urinating rule:
	if player-urinating is 1:
		humiliate 200;
		if there is a worn pee covering diaper:
			say DiaperDeclaration of current-monster;
		otherwise if there is a worn pee covering clothing:
			say ClothesPeeDeclaration of current-monster;
		otherwise:
			say GroundPeeDeclaration of current-monster;
		if current-monster is unfriendly and current-monster is uninterested:
			now current-monster is interested;
			say "[BigNameDesc of current-monster] looks [if the player is upright]like [he of current-monster] wants to fight[otherwise]aggressive[end if]!".
The monster notices the player urinating rule is listed in the motion reaction rules.

To compute monster sleeping:
	repeat with M running through alive monsters:
		compute sleeping of M.

To compute sleeping of (M - a monster):
	compute scared reduction of M;
	compute boredom reduction of M;
	compute periodic healing of M;
	compute periodic recovery of M;
	compute sleep reduction of M;[needs to come after healing and recovery]
	if M is simulated, compute unique periodic effect of M;
	compute unique unsimulated periodic effect of M;
	decrease the teaseTimer of M by 1;
	if the last-interaction of M > 0, decrease the last-interaction of M by 1.

To compute scared reduction of (M - a monster):
	if the scared of M > 0:
		decrease the scared of M by seconds;
		if the scared of M < 0, now the scared of M is 0.

To compute boredom reduction of (M - a monster):
	if the boredom of M > 0:
		decrease the boredom of M by seconds;
		if the boredom of M <= 0:
			now the boredom of M is 0;
	if the waitress-boredom of M > 0:
		decrease the waitress-boredom of M by seconds;
		if the waitress-boredom of M <= 0:
			now the waitress-boredom of M is 0.

To compute sleep reduction of (M - a monster):
	if M is asleep:
		decrease the sleep of M by seconds;
		if the M is awake:
			now the sleep of M is 0;
			if M is in the location of the player, say "[BigNameDesc of M] wakes up! [if M is unfriendly]Uh-oh...[end if]".

To compute periodic healing of (M - a monster):
	if the M is awake:
		if M is uninterested, MonsterHeal M by 2;[Uninterested monsters heal every turn.]
	otherwise:
		MonsterHeal M by 4.[Sleeping monsters always get to heal, and they heal double]

To MonsterHeal (M - a monster) by (N - a number):
	if the health of M < the maxhealth of M:
		increase the health of M by N;
		if the health of M > the maxhealth of M, now the health of M is the maxhealth of M.[Overhealing is not allowed]

To decide which number is the messRefractoryLimit of (M - a monster):
	decide on -800.

To compute periodic recovery of (M - a monster):
	unless the class of the player is princess and M is asleep, decrease the refractory-period of M by 4;
	if M is messy and the refractory-period of M + 4 > the messRefractoryLimit of M:
		if M is in the location of the player, say SuddenMessFlav of M;
	otherwise if the class of the player is princess and princess-consort is M:
		if the refractory-period of M <= 0:
			if the refractory-period of M > -4, say "A strange tingle passes through your body[if the player is very horny], and you suddenly find yourself stricken with need[end if] as thoughts of the [princess-consort] begin to swirl around inside your head. Somehow, you know you won't be able to satisfy yourself at all until you see to [his of M] needs.[line break][variable custom style][if the player is not a pervert]Ugh, it's not my job to get anyone off! Stop messing with my head, game![otherwise if the sex addiction of the player < 12]I guess I should go see [him of M] quick so I can get it over with.[otherwise]Looks like [he of M] needs my help. I don't want to keep [him of M] waiting![end if][roman type][line break]";
			Arouse 10.[The princess will get a little hornier every turn her consort goes unsatisfied]

To say SuddenMessFlav of (M - a monster):
	say "[speech style of M]'Hnnnng...'[roman type][line break]All of a sudden, [NameDesc of M][']s belly grumbles and then you hear a cacophony of awful sounds as [he of M] fills [his of M] diaper.[line break][variable custom style][one of]Oh come on! So I guess I'm supposed to change [him of M]?[or]Uh-oh. Somebody needs a change...[stopping][roman type][line break]".

To compute unique periodic effect of (M - a monster):
	do nothing.
To compute unique unsimulated periodic effect of (M - a monster):
	do nothing.

To compute survival reward of (C - a clothing):
	do nothing.

To compute survival rewards:
	if the remainder after dividing the number of survived monsters by 2 is 0:
		say "[bold type]You feel like you're getting better at avoiding and escaping monsters![roman type][line break]";
		if the number of regional dangerous monsters is 0:
			if the bimbo of the player < 7:
				say "[variable custom style][one of]Phew, I think I got away![or]I got away again![stopping]";
			otherwise if the bimbo of the player < 13:
				say "[second custom style][one of]Are they not still chasing me?[or]They gave up chasing me again?[stopping]";
			otherwise:
				say "[second custom style][one of]Are they not still chasing me?[or]They gave up chasing me again?[stopping]";
			say "[roman type][line break]";
		if the raw intelligence of the player > the raw dexterity of the player, DexUp 1;
		otherwise IntUp 1;
	repeat with C running through worn clothing:
		compute survival reward of C.

Motion ends here.
