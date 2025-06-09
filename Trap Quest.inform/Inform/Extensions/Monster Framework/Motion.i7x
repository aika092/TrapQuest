Motion by Monster Framework begins here.

To compute guarding action of (M - a monster):
	compute default motion actions of M.

To check motion of (M - a monster):
	check default motion of M.

To check default motion of (M - a monster):
	if lagdebug is true:
		say "Default motion of [M]...";
		wait 200 ms before continuing;
	if M is penetrating a body part:
		dislodge M;
	if M is undefeated:
		if lagdebug is true:
			say "Default motion actions...";
			wait 200 ms before continuing;
		compute default motion actions of M;
		if M is toilet desiring:
			if debugmode > 0 and verbose-debug > 0, say "[MediumDesc of M] is toilet seeking...";
			if lagdebug is true, wait 200 ms before continuing;
			compute toilet seeking of M;
		otherwise:
			if lagdebug is true:
				say "Monstermotion...";
				wait 200 ms before continuing;
			compute monstermotion of M;
	otherwise:
		compute monstermotion of M;
	now M is moved.

Definition: a monster (called M) is toilet desiring:
	if M is a urinater and the bladder of M >= 1000, decide yes;
	decide no.

To compute default motion actions of (M - a monster):
	if diaper messing >= 6 and M is willing to punish untidiness and the player is not in the location of M: [While the NPC idly wanders, it can pick up leftover soiled diapers]
		repeat with D running through soiled-diaper in the location of M:
			[if M is in the location of the player, say "[BigNameDesc of M] picks up [NameDesc of D] with a disgusted look on [his of M] face.";] [could never happen]
			now D is carried by M;
			now the boredom of M is 0;
		repeat with D running through dirty diapers in the location of M:
			[if M is in the location of the player, say "[BigNameDesc of M] picks up [NameDesc of D] with a disgusted look on [his of M] face.";] [could never happen]
			now D is carried by M;
			now the boredom of M is 0;
	if M is intelligent and M is uninterested:
		repeat with D running through unlock-key in the location of M:
			unless M is royal guard and D is skeleton key:
				if M is in the location of the player, say "[BigNameDesc of M] picks up [NameDesc of D] with an intrigued look on [his of M] face.";
				now D is carried by M;
				now the boredom of M is 0;
	if players-detached-dick is in the location of M: [#LXorDD]
		let X be 0;
		if M is aeromancer:
			now X is the latex-transformation of the player / 2; [They're more interested the more TF-ed you are]
		otherwise if M is djinn:
			now X is 3;
		otherwise if M is intelligent:
			increase X by 1;
		if a random number between 1 and 10 < X:
			compute handing over detached dick to M;
			say "You feel something grab your detached dick[if the player is in the location of M], right in front of you, just before you can![otherwise] - wherever that may be. Wah![end if]";

To compute monstermotion of (M - a monster): [This is default wandering if function is left undefined for a specific monster]
	compute room leaving of M.

To compute dismissal room leaving of (M - a monster):
	let L be the location of M;
	let N be 30;
	now the travel-opposite of the player is down;
	while N > 0 and M is in L:
		compute room leaving of M;
		decrease N by 1;

To compute mandatory room leaving of (M - a monster):
	let L be the location of M;
	let N be 30;
	now the travel-opposite of the player is down;
	while N > 0 and M is in L:
		compute room leaving of M;
		decrease N by 1;
	while N > -15 and M is in L:
		decrease N by 1;
		if debugmode is 1, say "Forced to regionally place [MediumDesc of M] as there was no other way for [him of M] to leave.";
		regionally place M.

To blockable move (M - a monster) to (D - a direction):
	if debugmode > 1, say "[M] blockable moving [D].";
	if M is in the location of the player:
		if debugmode > 1, say "player is moving (currently counts as being in [location of the player]) and [M] is trying to move [D], so [if D is the travel-opposite of the player]MOVEMENT IS BLOCKED[otherwise]movement is still allowed[end if].";
		if D is not the travel-opposite of the player, try M going D;
	otherwise:
		if D is not listed in the Nviables of the location of M:
			now Neighbour Finder is the location of M;
			if debugmode > 1, say "[M] failed to move [D] because it is not in the Nviables of [the location of M] - [Nviables of the location of M].";
			if M is airborne and Neighbour Finder is a no-roof jungle room:
				let GS be the vector sum of the grid position of Neighbour Finder and the vector of D;
				let R be the room at GS;
				if R is not solid rock and R is no-roof:
					if the player is in Neighbour Finder:
						say "[BigNameDesc of M] takes flight, and soars over the foliage to the [D].";
					now M is in R;
					if the player is in R:
						say "[BigNameDesc of M] soars over the foliage from the [opposite-direction of D].";
						if M is not interested and the boredom of M <= 0, check perception of M; [the NPC gets the jump on the player]
				otherwise:
					say "BUG - [M] tried to move [D] from [Neighbour Finder] to [R] but that should not be possible.";
		otherwise:
			if debugmode > 1, say "Trying [M] going [D].";
			try M going D.

To compute room leaving of (M - a monster): [This CANNOT be replaced with a function that potentially doesn't make them leave the room, for any NPC. Some while loops rely on this to eventually succeed or the game will freeze. 'blockable move' function is acceptable because when we compute mandatory room leaving we set travel-opposite to down]
	if lagdebug is true:
		say "Room leaving...";
		wait 200 ms before continuing;
	if M is in Dungeon11 or M is in Dungeon10:
		blockable move M to east;
	otherwise if M is in School33 and M is uninterested:
		blockable move M to west;
	otherwise:
		now neighbour finder is the location of M;
		if lagdebug is true:
			say "Choosing direction...";
			wait 200 ms before continuing;
		let A be a random N-viable direction;
		if M is airborne and neighbour finder is a no-roof jungle room, now A is a random A-viable direction;
		if lagdebug is true:
			say "Chosen [A]...";
			wait 200 ms before continuing;
		if debugmode > 1, say "[input-style][MediumDesc of M] chooses [A].[roman type][line break]";
		if A is a direction and a random number between 1 and 100 > 55:
			let P be the room A from the location of M;
			if P is unbossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
				blockable move M to A;
				compute monstermotion reactions of M.

To compute toilet seeking of (M - a monster):
	if M is a diaper wetter:
		compute diaper wetting of M;
	otherwise:
		compute default toilet seeking of M.

Definition: a monster is closest-toilet-preferring: decide no.

To set up toilet preference of (M - a monster):
	let LR be a list of rooms;
	let TR be Holding Pen;
	if M is in an academic room:
		add School10 to LR;
		if School35 is seen and (M is not student or the current-rank of M >= 6), add School35 to LR; [non-gold students are unaware of secret area even after it is revealed]
	otherwise if M is in a modern room:
		repeat with R running through placed modern rooms:
			if R is not use-the-floor, add R to LR;
	otherwise if M is in a haunted room:
		repeat with R running through placed haunted rooms:
			if R is not use-the-floor, add R to LR;
	otherwise if M is in a jungle room:
		repeat with R running through jungle rooms:
			if R is not use-the-floor, add R to LR;
	otherwise if M is in a labyrinth room:
		repeat with R running through labyrinth rooms:
			if R is not use-the-floor, add R to LR;
	let LRE be the number of entries in LR;
	if LRE > 0:
		if LRE > 1:
			if M is closest-toilet-preferring:
				let D be 99999;
				repeat with R running through LR: [find the closest one]
					let DX be the distance of R from the location of M;
					if DX < D:
						now D is DX;
						now TR is R;
			otherwise:
				sort LR in random order;
				now TR is entry 1 in LR;
		otherwise: [only one valid target]
			now TR is entry 1 in LR;
	now the target-toilet of M is TR.

Definition: a monster (called M) is able to use the toilet:
	if M is woman-player and the woman-status of M >= 30, decide no;
	if M is able to use a free use urinal, decide yes;
	if the location of M is use-the-floor or (locked-toilets is true and M is in School10 and academy-toilet-key is not held by M), decide no;
	decide yes.

Definition: a monster (called M) is able to use a free use urinal:
	if playerRegion is school and M is intelligent and M is in the location of the player and M is interested and the assemblyCount of locked-toilets-shame-assembly > 0 and (watersports fetish is 1 or M is eager to use a diaper urinal), decide yes;
	decide no.

To compute default toilet seeking of (M - a monster):
	let L be the location of M;
	if M is able to use the toilet:
		compute toilet use of M;
	otherwise:
		let TR be the target-toilet of M;
		let ATKM be M;
		if TR is not regional and M is regional, set up toilet preference of M;
		if TR is regional:
			let A be down;
			let X be the location of academy-toilet-key;
			if locked-toilets is true and TR is School10 and academy-toilet-key is not held by M:
				let KM be a random monster carrying academy-toilet-key;
				if KM is a monster:
					now X is the location of KM;
					now ATKM is KM;
				let XD be the best route from L to X through unbossed rooms;
				if XD is a direction, now A is XD;
			otherwise:
				let AD be the best route from L to TR through unbossed rooms;
				if AD is a direction, now A is AD;
			if M is student: [students can't go where they can't go]
				let P be the room A from L;
				if the entry-rank of P > the entry-rank of L and the entry-rank of P > the current-rank of M, now A is down;
			if A is not down:
				let P be the room A from L;
				if the number of barriers in P is 0 and the number of barriers in the location of M is 0:
					if debugmode > 1, say "[BigNameDesc of M] is going [A] to try to use the toilet at [TR][if locked-toilets is true and TR is School10 and academy-toilet-key is not held by M] (needs to get key at [X])[end if][if locked-toilets is true and TR is School10 and academy-toilet-key is not held by M and there is a monster carrying academy-toilet-key] (key held by [random monster carrying academy-toilet-key])[end if][line break]";
					blockable move M to A;
					compute monstermotion reactions of M;
					if ATKM is not M: [academy toilet key is held by another monster]
						if ATKM is in L and the bladder of ATKM < 1000 and (M is not student or ATKM is not headmistress): [there's a special cutscene for a student asking the headmistress for the key]
							if the player is in L, say "[BigNameDesc of M] takes [NameDesc of academy-toilet-key] from [NameDesc of ATKM].";
							now academy-toilet-key is carried by M;
					otherwise if academy-toilet-key is in L:
						if the player is in L, say "[BigNameDesc of M] takes [NameDesc of academy-toilet-key] from the ground.";
						now academy-toilet-key is carried by M;
			otherwise: [Failed to find a valid path to target]
				compute room leaving of M;
		otherwise: [Failed to find a legal toilet target]
			compute room leaving of M.

To compute bladder cleanup:
	repeat with M running through monsters:
		if M is regional:
			let unable-to-pee be false;
			if playerRegion is school and locked-toilets is true:
				if academy-toilet-key is held by the player:
					now unable-to-pee is true;
				otherwise:
					let X be a random person carrying academy-toilet-key;
					if X is a person:
						if X is not regional, now unable-to-pee is true;
					otherwise:
						if academy-toilet-key is not regional, now unable-to-pee is true;
			if unable-to-pee is true:
				if a random number between 1 and 3 > 1, now M is in School10;
			otherwise:
				now the bladder of M is the remainder after dividing the bladder of M by 1060. [Everybody is assumed to have instantly gone to the toilet when they reached 1060 bladder]

To compute toilet use of (M - a monster): [If called during standard wandering motion, this MUST cause bladder to empty or NPCs might get stuck]
	if M is able to use a free use urinal:
		compute free use urinal perception of M;
	otherwise:
		if M is in the location of the player or (debugmode > 0 and verbose-debug > 0):
			if M is not in the location of the player, say input-style;
			if M is caged and the location of M is School35:
				say "[BigNameDesc of M] uses the toilet at the back of [his of M] cell to relieve [his of M] bladder.";
			otherwise if the location of M is toilets:
				say "[BigNameDesc of M] uses the toilet to relieve [his of M] bladder.";
			otherwise if the location of M is urinals:
				say "[BigNameDesc of M] uses a urinal to relieve [his of M] bladder.";
			otherwise:
				say "[BigNameDesc of M] urinates into [NameDesc of water-body].";
			if M is not in the location of the player, say roman type;
		now the bladder of M is 0.

To compute diaper wetting of (M - a monster): [This MUST cause bladder to empty or NPCs might get stuck]
	if M is in the location of the player, say "[BigNameDesc of M] sighs pleasantly, and you're pretty sure [he of M] is wetting [his of M] diaper.";
	now the bladder of M is 0.

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
					say "[one of]The smell of the glue has filled the room and spread beyond.[line break][variable custom style]Would any monsters have learned to hunt for stuck prey?[roman type][line break][or]As you strain at the glue, you try to keep your panicked panting to a minimum.[or][line break][variable custom style]I hope the smell and my struggles don't attract 'attention'![roman type][line break][or]With the smell of the glue spreading, you try to contain your groans as you struggle against the glue's grip.[or]It'd be just awful if a monster found you while you were helpless![or]You can't help moaning as the pungent glue holds you in its relentless grip.[at random]";
				otherwise:
					say "Thankfully, the smell of the glue has faded".

To check seeking (N - a number) of (M - a monster):
	check default seeking N of M.

To check default seeking (N - a number) of (M - a monster):
	if M is unleashed or M is unconcerned, check forced seeking N of M.

To check forced seeking (N - a number) of (M - a monster):
	[If N is 2, we need to flag that the monster has had its movement for the round and does not get to act again.]
	if debugmode > 0, say "[BigNameDesc of M] is following the player.";
	if M is regional:
		let L be the location of M;
		let P be the location of the player;
		let direction-searching be true;
		if M is airborne and L is a no-roof jungle room:
			repeat with D running through directions:
				if direction-searching is true and (D is north or D is east or D is west or D is south):
					let GS be the vector sum of the grid position of L and the vector of D;
					let R be the room at GS;
					if R is not solid rock and R is no-roof and the player is in R:
						now M is in R;
						let DD be the best route from L to P through placed regional rooms;
						unless D is DD, say "[BigNameDesc of M] soars over the foliage from the [opposite-direction of D].";
						if M is not interested and the boredom of M <= 0, check perception of M; [the NPC gets the jump on the player]
						now direction-searching is false;
		if direction-searching is true:
			let D be the best route from L to P through placed regional rooms;
			if debugmode > 0, say "[BigNameDesc of M] has worked out that [he of M] should go [D].";
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
		compute non-regional seeking of M.

To compute non-regional seeking of (M - a monster):
	compute default non-regional seeking of M.

To compute default non-regional seeking of (M - a monster):
	if M is in Stairwell01 or M is in Stairwell02 or M is in Stairwell03 or M is in Hotel29 or M is in Woods01 or M is in Hotel01 or M is in Mansion01 or there is a warp portal in the location of M, compute mandatory room leaving of M; [Move them away from the entrance]
	deinterest M.

To decide which number is the seek roll of (M - a monster):
	if the friendly boredom of M < 0 and M is friendly, decide on 1;
	decide on a random number between 0 and 3. [Most monsters have a 75% chance of successfully moving.]

To compute (M - a monster) seeking (D - a direction): [Default Compute Seeking if not specified for the monster.]
	blockable move M to D;
	compute monstermotion reactions of M.

Check someone going:
	if there is a barrier in the location of the player, stop the action.

To compute fleeing of (M - a monster): [Default Compute Fleeing if not specified for the monster.]
	compute default fleeing of M.

To compute default fleeing of (M - a monster):
	if M is scarable:
		now neighbour finder is the location of M;
		let A be a random N-viable direction;
		if A is a direction and a random number between 1 and 100 > 40:
			let P be the room A from the location of M;
			if P is unbossed and the number of barriers in P is 0 and the number of barriers in the location of M is 0 and the player is not in P:
				blockable move M to A.

The motion reaction rules is a rulebook.

To compute monstermotion reactions of (M - a monster): [If the NPC stumbles across the player this turn, they should react appropriately if they catch the player urinating, etc.]
	if M is reactive:
		now current-monster is M; [Just to make sure]
		follow the motion reaction rules.

This is the monster notices the player urinating rule:
	if player-urinating is 1:
		severeHumiliate;
		if there is a pee covering diaper:
			say DiaperDeclaration of current-monster;
		otherwise if there is a pee covering clothing:
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
	decrease the boredom of M by seconds;
	if the boredom of M <= 0 and the boredom of M + seconds > 0, compute boredom reset of M;
	if the waitress-boredom of M > 0:
		decrease the waitress-boredom of M by seconds;
		if the waitress-boredom of M <= 0, now the waitress-boredom of M is 0.

To compute boredom reset of (M - a monster):
	now the boredom of M is 0.

To compute sleep reduction of (M - a monster):
	if M is asleep:
		decrease the sleep of M by seconds;
		if the M is awake:
			now the sleep of M is 0;
			if M is in the location of the player and M is undefeated, say "[BigNameDesc of M] wakes up! [if M is unfriendly]Uh-oh...[end if]".

To compute periodic healing of (M - a monster):
	if the blind-status of M > 0:
		decrease the blind-status of M by 1;
		if the blind-status of M is 0 and M is in the location of the player and M is awake, say "[BigNameDesc of M] is no longer blind!";
	if the paralyse-status of M > 0:
		decrease the paralyse-status of M by 1;
		if the paralyse-status of M is 0 and M is in the location of the player and M is awake, say "[BigNameDesc of M] is no longer paralysed!";
	if the poison-status of M > 0:
		decrease the poison-status of M by 1;
		if the poison-status of M is 0 and M is in the location of the player and M is awake, say "[BigNameDesc of M] is no longer poisoned!";
	if M is awake:
		if M is uninterested, MonsterHeal M by 2;[Uninterested monsters heal every turn.]
	otherwise:
		MonsterHeal M by 4.[Sleeping monsters always get to heal, and they heal double]

To MonsterHeal (M - a monster) by (N - a number):
	if the health of M < the maxhealth of M:
		increase the health of M by N;
		if the health of M > the maxhealth of M, now the health of M is the maxhealth of M.[Overhealing is not allowed]

To decide which number is the messRefractoryLimit of (M - a monster):
	decide on -800.

Definition: a monster (called M) is just messing:
	if M is diaper-enslaved and M is messy and the refractory-period of M + 4 > the messRefractoryLimit of M, decide yes;
	decide no.

To compute periodic recovery of (M - a monster):
	unless the class of the player is princess and M is asleep, decrease the refractory-period of M by 4;
	if watersports mechanics is 1:
		increase the bladder of M by a random number between 5 and 15;
		[if M is not simulated and M is a urinater and the bladder of M >= a random number between 1000 and 10000, now the bladder of M is 0;] [this is handled in 'compute bladder cleanup']
	if M is just messing:
		compute mess moment of M;
	otherwise if the class of the player is princess and bride-consort is M:
		if the refractory-period of M <= 0:
			if the refractory-period of M > -4, say "A strange tingle passes through your body[if the player is very horny], and you suddenly find yourself stricken with need[end if] as thoughts of the [bride-consort] begin to swirl around inside your head. Somehow, you know you won't be able to satisfy yourself at all until you see to [his of M] needs.[line break][variable custom style][if the player is not a pervert]Ugh, it's not my job to get anyone off! Stop messing with my head, game![otherwise if the sex addiction of the player < 12]I guess I should go see [him of M] quick so I can get it over with.[otherwise]Looks like [he of M] needs my help. I don't want to keep [him of M] waiting![end if][roman type][line break]";
			Arouse 10.[The princess will get a little hornier every turn her consort goes unsatisfied]

To compute mess moment of (M - a monster):
	if M is in the location of the player, compute default mess moment of M.

To compute default mess moment of (M - a monster):
	say SuddenMessFlav of M;
	if the diaper addiction of the player < 8:
		say "The sight and sounds of [NameDesc of M][']s episode disgust you, lowering your arousal.";
		cool down 3000;
	otherwise if the diaper addiction of the player > 13:
		say "You can't help but find the sight and sounds of [NameDesc of M][']s episode deeply arousing.";
		arouse 3000.

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
