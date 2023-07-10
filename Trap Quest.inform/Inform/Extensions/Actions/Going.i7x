Going by Actions begins here.

To say GoingSubduedFlav of (C - a clothing):
	say StandSubduedFlav of C.

Check going when the player is at least partially monster stuck:
	if the player is monster fucked:
		if minotaur is penetrating a body part and minotaur is asleep, try waiting instead;
	try resisting instead.

Check going when the player is vine stuck:
	say "The vines are holding you in place!" instead.

Check going while the player is immobile:
	if the player is subdued:
		say GoingSubduedFlav of a random worn subduing clothing;
		try waiting instead;
	if the player is pole stuck, say "You are currently stuck on a dildo[if the player is monster fucked], and also being fucked by the [random monster penetrating a body part][end if]!" instead;
	if the player is drill stuck, say "You are currently stuck on a spinning drill!" instead;
	if the player is hook stuck, say "You don't dare take a step in any direction because the ass hook would just [if the player is anally hook stuck]kill your [asshole][otherwise]wedgie you[end if] more! You're forced on tiptoes as it is!" instead;
	if the player is throne stuck, say "You are stuck on the throne!" instead;
	if the player is horse stuck, say "You are stuck on a wooden horse!" instead;
	if the player is bouncer stuck, say "You are stuck in the baby bouncer!" instead;
	if the stickiness of the player > 0:
		if the player is glue stuck:
			compute glue escaping;
			if the player is not glue stuck, rule succeeds;
		otherwise:
			say "You're stuck to the [one of]floor[or]ground[at random]! You'll need to [bold type]wait[roman type] a bit longer." instead;
	say "You're immobile right now!" instead.

Check going while the throne is triggered:
	Dethrone the player instead.

Check going while the player is clothing stuck:
	say "You can't because your [random worn stuck clothing] is stuck in place!" instead.

Check going east:
	now the travel-direction of the player is east;
	now the travel-opposite of the player is west.

Check going north:
	if the player is in Stairwell03, try going up instead;
	now the travel-direction of the player is north;
	now the travel-opposite of the player is south.

Check going west:
	if the player is in Stairwell02, try going up instead;
	if the location of the player is the room east of Hotel37 and there is an on-stage dominatrix:
		if the scared of a random on-stage dominatrix > 0, say "A metal shutter is in the way. You'll have to wait until it comes back up." instead;
	now the travel-direction of the player is west;
	now the travel-opposite of the player is east.

Check going south:
	if the player is in Mansion01, try going down instead;
	now the travel-direction of the player is south;
	now the travel-opposite of the player is north;

To update travel opposite of (P - a person):
	now the travel-opposite of P is the opposite-direction of the travel-direction of P.

Check going up:
	if there is a golem in the location of the player, say "[bold type][BigNameDesc of golem] [bold type]stands in front of the stairwell, blocking the way. [roman type]You're going to need to deal with [him of golem] first!" instead.

Check going down:
	if there is a golem in the location of the player, say "[bold type][BigNameDesc of golem] [bold type]stands in front of the stairwell, blocking the way. [roman type]You're going to need to deal with [him of golem] first!" instead.

Carry out going up (this is the hotel-setup rule):
	if the player is in Stairwell02:
		if Hotel01 is unplaced:
			set up the hotel;
			follow the setting up hotel monsters rules;
			repeat with M running through alive nonexistent monsters:
				set up M.
			[deploy a random off-stage camera trap in the location of HotelBedPatrons;]

Carry out going up (this is the woods-setup rule):
	if the player is in Stairwell01 and Woods01 is unplaced:
		Set Up The Woods;
		follow the setting up woods monsters rules;
		repeat with M running through alive nonexistent monsters:
			set up M.

Carry out going up (this is the mansion-setup rule):
	if the player is in Stairwell03 and Mansion00 is unplaced:
		Set Up The Mansion;
		follow the setting up mansion monsters rules;
		repeat with M running through alive nonexistent monsters:
			set up M.

Check going east while the player is in Hotel01:
	try going down instead.

Carry out going (this is the changing-region-makes-monsters-have-time-out rule):
	if the noun is up or the noun is down, check monster time out. [player region updates happens in Report phase, so this will happen to the region the player is leaving.]

To check monster time out:
	if playerRegion is not school and doomed < 5 and the number of regionalRelevant monsters >= the regionalMonsterCount of playerRegion:
		let LM be the list of alive willing to have time out regional monsters;
		let E be the number of entries in LM;
		if E > 0: [choose the monster that's been alive the longest]
			if debugmode > 0, say "Choosing an NPC from the following list to give time out: [LM].";
			sort LM in random order;
			let TA be 0;
			let M be entry 1 in LM;
			repeat with N running from 1 to E:
				let NM be entry N of LM;
				if the time-alive of NM > TA:
					now M is NM;
					now TA is the time-alive of NM;
			compute time out of M.

To compute time out of (M - a monster):
	if debugmode > 0, say "[input-style][BigNameDesc of M][input-style] was chosen to take a break from the region, and has been moved off-stage.[roman type][line break]";
	now the time-alive of M is 1;
	deinterest M;
	remove M from play;
	if playerRegion is Dungeon, add M to dungeon-leavers-list;
	if playerRegion is Woods, add M to woods-leavers-list;
	if playerRegion is Hotel, add M to hotel-leavers-list;
	if playerRegion is Mansion, add M to mansion-leavers-list.

Report going up:
	update player region;
	if map images > 0, display entire map;
	if playerRegion is not school:
		compute bladder cleanup;
		compute puddle cleanup;
		compute clothing cleanup.

Report going down:
	update player region;
	if map images > 0, display entire map;
	if playerRegion is not school:
		compute bladder cleanup;
		compute puddle cleanup;
		compute clothing cleanup.

last-puddle-cleanup is a number that varies. last-puddle-cleanup is 999999.
To compute puddle cleanup:
	if earnings < last-puddle-cleanup - 30:
		repeat with R running through placed rooms:
			if the semen-puddle of R > 0:
				decrease the semen-puddle of R by 1;
			if the urine-puddle of R > 0:
				decrease the urine-puddle of R by 1;
			if the milk-puddle of R > 0:
				decrease the milk-puddle of R by 1;
		now last-puddle-cleanup is earnings.

To compute clothing cleanup:
	if the player is able to use their hands:
		repeat with C running through in-play clothing:
			if C is not immune to change and C is not held by an alive person and C is not regional:
				unless C is plentiful accessory, destroy C;
			if C is plentiful regional accessory and C is not held by an alive person:
				if a random number between 1 and 5 > 3: [40% of jewellery is picked up by the region's NPCs]
					let M be a random alive intelligent undefeated regional monster;
					if M is monster, now C is carried by M.


Part 1 - Movement Hindrance Definitions

Definition: yourself is waddling:
	if there is worn waddle-walking clothing, decide yes;
	[if there is a worn diaper cover, decide no;] [diaper covers used to be a good thing]
	let D be a random worn knickers;
	if D is knickers and the waddle-weight of D >= 3, decide yes; [DQBulk of 7, which causes thighs to be spread, gets us exactly to 3 waddle weight when unsoiled]
	decide no.

Definition: yourself is crawling:
	if there is a worn diaper:
		let D be a random worn diaper;
		if the weight of D > 5, decide yes;
	decide no.

Definition: yourself is wobbling:
	repeat with H running through heels worn by the player:
		if H is not platform heels and H is not wedge heels and the heel-height of H > 3 and the heel skill of the player < 7, decide yes;
		if heel-height of H > 5 and the heel skill of the player < 7, decide yes;

Definition: yourself is hobbling:
	if there is worn crotch-displaced trousers, decide yes;
	if the player is ankle bound, decide yes;
	repeat with C running through worn crotch-in-place hobble-skirted clothing:
		if C is not slitted, decide yes;
	decide no.

Definition: yourself is swaying:
	if there is worn blessed yoga pants, decide no;
	if the weight of hips > 16, decide yes;
	decide no.

Definition: yourself is staggering:
	if the largeness of belly > 3, decide yes;
	decide no.

Definition: yourself is squirming:
	if there is an insertable object penetrating a fuckhole, decide yes;
	decide no.

movement-reduction-flav-said is initially false. [This gets reset every round in the 'reset flags' function.]

[!<DecideWhichNumberIstheMovementReductionOfThePlayer>+

This is all the things that reduce movement capabilities when standing but do not inherently increase trip hazard.

+!]
To decide which number is the movement reduction of the player:
	let X be 0;
	let T be "";
	let OH be the obstacle-hindrance of the location of the player;
	if OH > 0:
		increase X by OH;
		if movement-reduction-flav-said is false:
			now movement-reduction-flav-said is true;
			now T is ObstacledDesc of the location of the player;
	if there is a worn ball-and-chain:
		increase X by 6;
		if movement-reduction-flav-said is false:
			now movement-reduction-flav-said is true;
			now T is the substituted form of "Your [ShortDesc of a random worn ball-and-chain] is severely hindering your movement!";
	if giant-teddy is worn:
		increase X by 8;
		if movement-reduction-flav-said is false:
			now movement-reduction-flav-said is true;
			now T is the substituted form of "Your extremely heavy [MediumDesc of giant-teddy] is significantly slowing down your movement!";
	if quiz-partner is worn:
		increase X by 6;
		if movement-reduction-flav-said is false:
			now movement-reduction-flav-said is true;
			now T is the substituted form of "The bondage connecting you to [student-name of the bound-target of quiz-partner] is severely hindering your movement!";
	if diaper-box is worn:
		if diaper-box is diaper-dumped:
			increase X by 25;
			if movement-reduction-flav-said is false:
				now movement-reduction-flav-said is true;
				now T is the substituted form of "The used diapers in [NameDesc of diaper-box] are obstructing the majority of your vision, making it impossible to move quickly!";
		otherwise:
			increase X by 5;
			if movement-reduction-flav-said is false:
				now movement-reduction-flav-said is true;
				now T is the substituted form of "The heavy and unwieldy [MediumDesc of diaper-box] is affecting your balance, making it difficult to move quickly!";
	if the player is upright:
		if skirt-tray-vibrator is worn:
			let C be the max-cakes of skirt-tray-vibrator - the cakes-taken of skirt-tray-vibrator;
			if C > 0:
				increase X by 5;
				if movement-reduction-flav-said is false:
					now movement-reduction-flav-said is true;
					now T is the substituted form of "Having to be careful to try and balance the [if C is 1]last remaining cake[otherwise][C] remaining cakes[end if] on your [MediumDesc of skirt-tray-vibrator] is hindering your ability to move quickly!";
		if current-predicament is team-girlfriends-predicament and the player is in a predicament room and the defaultLeftTarget of arms is girlfriend-partner:
			increase X by 17;
			if movement-reduction-flav-said is false:
				now movement-reduction-flav-said is true;
				now T is the substituted form of "Having your body carefully pressed against [NameDesc of team-predicament-partner] makes you move significantly less quickly!";
		if the player is waddling:
			let WW be a random worn waddle-walking clothing;
			let K be a random worn knickers;
			let D be 0;
			if WW is clothing:
				if the waddle-weight of K > 6:
					now D is the waddle-weight of K;
					now WW is K;
				otherwise:
					now D is 6;
			otherwise:
				now WW is K;
				now D is the waddle-weight of K;
			increase X by D;
			if movement-reduction-flav-said is false and D > 0:
				now movement-reduction-flav-said is true;
				if WW is diaper and the waddle-weight of WW is D:
					now T is the substituted form of "[if D > 8]Your comically exaggerated waddling caused by your extremely bloated [ShortDesc of WW] makes it almost impossible[otherwise if D > 6]Your extremely awkward waddling caused by your bloated [ShortDesc of WW] makes it extremely difficult[otherwise if D > 4]Your very awkward waddling caused by your bulky [ShortDesc of WW] makes it extremely difficult[otherwise]Your awkward walking caused by your [ShortDesc of WW] makes it difficult[end if] to move quickly!";
				otherwise if WW is waddle-walking:
					now T is the substituted form of "Your extremely awkward waddling caused by the magic effect of your [WW] makes it impossible to move quickly!";
				otherwise: [messed knickers]
					now T is the substituted form of "Your awkward waddling caused by the [if D > 6]giant lumps of[otherwise if D > 4]huge amount of[otherwise]uncomfortable[end if] mess in the back of your [ShortDesc of WW] makes it very difficult to move quickly!";
		if the player is squirming:
			repeat with F running through insertable objects penetrating a fuckhole:
				increase X by the girth of F / 3;
				if movement-reduction-flav-said is false:
					now movement-reduction-flav-said is true;
					now T is the substituted form of "Your [F] is significantly affecting the way you walk, restricting your movement!";
		if the player is swaying:
			increase X by 2;
			if the weight of hips > 17, increase X by 2;
			if movement-reduction-flav-said is false:
				now movement-reduction-flav-said is true;
				now T is the substituted form of "[if the weight of hips > 17]The comically exaggerated[otherwise if the weight of hips > 11]The exaggerated[otherwise]The[end if] swaying of your [ShortDesc of hips] is significantly affecting the way you walk, restricting your movement!";
		let H be a random worn heels;
		if H is heels:
			let Hi be the hindrance of H;
			if Hi > 0:
				increase X by Hi;
				if movement-reduction-flav-said is false:
					now movement-reduction-flav-said is true;
					now T is the substituted form of "Your [if Hi >= 4]dangerous imbalance[otherwise if Hi >= 2]precarious imbalance[otherwise]lack of perfect balance[end if] in your [ShortDesc of H] is hindering your movement.";
		if the football-possessor of football is the player:
			increase X by 3;
			if movement-reduction-flav-said is false:
				now movement-reduction-flav-said is true;
				now T is the substituted form of "Dribbling the football makes you move significantly less quickly!";
	otherwise:
		increase X by the crawling hindrance of the player;
		if movement-reduction-flav-said is false:
			now movement-reduction-flav-said is true;
			now T is the substituted form of "The fact that you are crawling slows you down.";
	if the player is hobbling:
		increase X by 4;
		if movement-reduction-flav-said is false:
			now movement-reduction-flav-said is true;
			now T is the substituted form of "Your [if the player is ankle bound]ankle bondage[otherwise if there is worn crotch-displaced trousers][ShortDesc of random worn crotch-displaced trousers][otherwise]hobble skirt[end if] is severely restricting your movement!";
	if the player is staggering:
		increase X by 2;
		if the largeness of belly > 5, increase X by 2;
		if the largeness of belly > 7, increase X by 2;
		if the largeness of belly > 8, increase X by 2;
		if movement-reduction-flav-said is false:
			now movement-reduction-flav-said is true;
			now T is the substituted form of "[if the largeness of belly > 7]The huge size of your [ShortDesc of belly] is making it extremely unwieldy, and[otherwise if the largeness of belly > 5]The large size of your [ShortDesc of belly][otherwise]Your [ShortDesc of belly][end if] is significantly affecting the way you walk, restricting your movement!";
	now another-turn-flavour is "[T]";
	decide on X.

To decide which number is the crawling hindrance of the player:
	decide on 5.

To decide which number is the movement bonus of the player:
	let X be 0;
	if the player is prone:
		if the class of the player is catgirl or puppy mittens is worn:
			decrease X by the number of worn nudism-disabling clothing; [The more worn clothing, the worse this is]
			if there are worn cat themed big-gloves or puppy mittens is worn, increase X by the crawling hindrance of the player * 2;
		if there are worn mittens, increase X by the crawling hindrance of the player * 2;
	if the player is upright and there is worn rollerskates, increase X by the crawling hindrance of the player;
	repeat with S running through worn speed clothing:
		increase X by 3;
	decide on X.

Part 2 - Tripping

To decide which number is the trip hazard of the player:
[This is all the things that could make the player trip regardless of whether they are wearing heels (but including heels).]
	if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed, decide on 0;
	let X be 0;
	let H be a random worn hindrance-enabling shoes;
	if H is shoes, increase X by the hindrance of H;
	increase X by the slipperiness of the location of the player;
	increase X by the number of currently-wrangled body parts * 4;
	let Q be the largeness of hair - 14;
	if the player is ponytailed, decrease Q by 3;
	if the player is pigtailed, decrease Q by 6;
	if Q > 0, increase X by Q;
	if X < 0, decide on 0;
	if anchor collar is worn, decide on X / 2;
	decide on X.

The trip reasons rules is a rulebook.

This is the tripped over extremely long hair rule:
	if the largeness of hair > 14:
		say "You trip over your extremely long [HairColour] [HairStyle] and end up on your knees instead!";
		rule succeeds.
The tripped over extremely long hair rule is listed last in the trip reasons rules.

This is the slipped on huge puddle rule:
	if the urine-puddle of the location of the player > 15:
		say "You slip on the pool of [urine] underneath your feet!";
		rule succeeds;
	otherwise if the milk-puddle of the location of the player > 15:
		say "You slip on the pool of [milk] underneath your feet!";
		rule succeeds;
	otherwise if the semen-puddle of the location of the player > 15:
		say "You slip on the pool of [semen] underneath your feet!";
		rule succeeds.
The slipped on huge puddle rule is listed last in the trip reasons rules.

This is the slipped on puddle rule:
	if the urine-puddle of the location of the player > 0:
		say "You slip on the puddle of [urine] underneath your feet!";
		rule succeeds;
	otherwise if the milk-puddle of the location of the player > 0:
		say "You slip on the puddle of [milk] underneath your feet!";
		rule succeeds;
	otherwise if the semen-puddle of the location of the player > 0:
		say "You slip on the puddle of [semen] underneath your feet!";
		rule succeeds;
	otherwise if the sprinkle-puddle of the location of the player > 0:
		say "You slip on the fine layer of [SprinkleLiquid of a random sprinkle trap in the location of the player] on the ground!";
		rule succeeds.
The slipped on puddle rule is listed last in the trip reasons rules.

This is the tripped on stumbling heels rule:
	if there is a worn stumbling heels:
		say "Your [printed name of a random worn heels] cause you to lose your footing!";
		rule succeeds.
The tripped on stumbling heels rule is listed last in the trip reasons rules.

This is the tripped from cursed yoga pants rule:
	if there is a worn cursed yoga pants:
		say "Your [printed name of a random worn yoga pants] somehow cause you to lose your footing!";
		rule succeeds.
The tripped from cursed yoga pants rule is listed last in the trip reasons rules.

This is the tripped on heels rule:
	if there is a worn heels:
		say "Whilst trying to walk around in your [printed name of a random worn heels], you clumsily lose your footing!";
		rule succeeds.
The tripped on heels rule is listed last in the trip reasons rules.

This is the default trip flavour rule:
	say "Whilst trying to walk, you trip and fall to your knees!";
	rule succeeds.
The default trip flavour rule is listed last in the trip reasons rules.

Part 3 - Main Going Function

[This is a long function because the order of considerations is quite important here!]
Check going:
	if the noun is not a direction, say "This verb is used by specifying a direction: north, east, south, west, up or down." instead;
	now the player-motion of the player is 1; [Until we decide the player has failed to move, they are assumed to have succeeded at moving]
	now the location of the player is discovered; [Just in case it didn't become discovered on the way in]
	[Going is a resisting activity.]
	if the player is live fucked, try resisting instead;
	repeat with C running through stuck worn clothing:
		say "Your [printed name of C] is stuck, and it's stopping you from moving!" instead;
	if the player is flying, say "You're not even touching the ground!" instead;
	let S be the strength of the player + 15;
	if seconds is 0:
		let L be the room noun from the location of the player;
		if trap warning is 1:
			repeat with ST running through revealed sprinkle traps in L:
				unless ST is expired:
					say "There is a sprinkler currently dispensing [SprinkleLiquid of ST] in that room, are you sure you want to try and go that way? ";
					unless the player is in agreement, say "You change your mind." instead;
			repeat with ST running through revealed hypno traps in L:
				unless ST is expired:
					say "There is a hypno trap currently displaying [hypno content of ST] in that room. Are you sure you want to try and go that way? ";
					unless the player is in agreement, say "You change your mind." instead;
			repeat with ST running through revealed haunted mirror traps in L:
				unless ST is expired:
					say "There is currently an uncovered haunted mirror in that room. Are you sure you want to try and go that way? ";
					unless the player is in agreement, say "You change your mind." instead;
		if areYouSure is 1:
			if futanari-slutty-sister is in L:
				unless futanari-slutty-sister is asleep or futanari-slutty-sister is off-stage or the wealth of the player < 20:
					say "You can see [if the number of alive slutty sisters > 1]the two [boy of futanari-slutty-sister]s[otherwise]one of the [boy of futanari-slutty-sister]s[end if] who put you into the virtual reality capsule in that room. You'll probably have to fight them. [if the player is prone][bold type]You are currently on your knees, which usually seems to result in fights not going your way.[roman type] [end if]Are you sure you want to try and go that way? ";
					unless the player is bimbo consenting, say "You change your mind." instead;
		if areYouSure is 1 and robomatron is alive and robomatron is in L and robomatron is awake and the wealth of the player >= 20:
			say "You can see a large scary robot dressed like a nanny. You'll probably have to fight it. [if the player is prone][bold type]You are currently on your knees, which usually seems to result in fights not going your way.[roman type] [end if]Are you sure you want to try and go that way? ";
			unless the player is bimbo consenting, say "You change your mind." instead;
	if seconds is 0:
		if the player is upright:
			allocate 3 seconds; [From this point on, movement takes 3 seconds and triggers a turn, even if it fails.]
		otherwise:
			allocate arm use; [one arm needed to crawl]
			allocate 6 seconds;
	repeat with M running through expectant monsters:
		now the last-interaction of M is 0; [Naughty player, moving is not submissive! Monsters are not delayed by a going action.]
	[The player has a chance of involuntarily standing up when super light and moving.]
	if seconds is 3 or seconds is 6:
		if the player is prone and the player is zeroG:
			say "You try to crawl forward but by pushing on the ground with your extremely light body, [bold type]you inadvertently stand up.[roman type][line break]";
			silently try standing;
		if the player is prone and a random number between -3 and 3 > the weight of the player:
			say "You try to crawl forward but by pushing on the ground with your extremely light body, [bold type]you inadvertently stand up.[roman type][line break]";
			silently try standing;
		if vampiress is chain-tethering:
			check tethering;
			if vampiress is chain-tethering:
				if the strength roll of vampiress > the strength of the player:
					say TetherMove;
					now another-turn is 1 instead;
				otherwise:
					compute TetherBust;
		[Firstly, monsters each get a chance to block the player, this is only likely to happen if the player has low dexterity or lots of movement reductions.]
		if (the noun is up or the noun is down) and golem is in the location of the player and golem is uninterested, check guaranteed perception of golem; [golem wakes up to block if present]
		repeat with M running through combative-or-blocking monsters:
			if M is successfully blocking:
				allocate 2 seconds;
				say "[another-turn-flavour] [MovementBlock of M][if smokeMoving is true]Despite the smoke, you couldn't get away! Drat![end if]" instead; [In the 'successfully blocking' check we fill `another-turn-flavour` with the details of the main thing slowing the player down.]
		[All these checks only take place if the player is WALKING as opposed to crawling.]
		if the player is upright:
			[Here we increase heel experience. NB even if the player falls over, they still gain heel experience.]
			if there are worn heels:
				let C be a random heels worn by the player;
				[Posture training makes heel skill experience go up faster]
				repeat with D running through worn posture training clothing:
					increase the heel time of the player by 1;
					unless D is cursed, increase the heel time of the player by 2;
				[Computing heel skill experience: Queen of Hearts / Spades heels prevent this experience gain]
				unless C is queen-of-hearts heels or C is queen-of-spades heels:
					let K be the heel-height of C - the raw heel skill of the player;
					if C is platform heels, decrease K by 2;
					if K < 1, now K is 1;
					increase the heel time of the player by K;
			[Now we check if the player trips over because of trip hazards in their current situation]
			let X be the trip hazard of the player;
			let D be a random number between 0 and 25; [NB dexterity is NOT used here, only when dealing with monsters and traps.]
			if tutorial is 1:
				now D is X + 1;
				if the player is in Tutorial02, decrease X by 1;
			if debuginfo > 0 and X > 0, say "[input-style]Walking check: d26-1 ([D]) | ([X - 1].5) trip likelihood[roman type][line break]";
			if X > 0 and D is X and there are worn heels, say "You feel very unstable, and are barely managing to keep your balance on your [ShortDesc of random worn heels]!"; [The player barely managed to succeed the roll.]
			if D < X:
				follow the trip reasons rules; [Here we explain to the player why they tripped]
				FearUp 4;
				[if there is a worn heels, say "[if the heel skill of the player < 4][line break][first custom style][one of]How humiliating...[or]I haven't really gotten the hang of walking in heels yet...[or]How degrading![in random order][otherwise][line break][second custom style][one of]I'm such a klutz![or]How clumsy of me![or]I'm getting better at it though![or]How humiliating... but in a fun way.[in random order][end if][roman type][line break]";]
				if the player is upright, try kneeling;
				if autostand is 1 and the player is prone, now delayed stand is 1; [We've made the player kneel, and now if autostand is 1 we flag up that the player should try to stand after the next turn.]
				say "[bold type]You are still in the [location of the player].[roman type]" instead;
			otherwise:
				[Fat burning (exercise) only happens when the player does NOT trip over.]
				increase the fat-burning of the player by 1;
				let H be a random worn hindrance-enabling shoes;
				if H is shoes, increase the fat-burning of the player by a random number from 0 to the hindrance of H;
		[All these checks only take place if the player is CRAWLING as opposed to walking.]
		if the player is prone:
			[We want to warn the player if they're going to crawl into a room they previously triggered a pink smoke trap in.]
			if trap warning is 1 and the player is air breathing vulnerable and the player is able to breathe:
				if the room noun from the location of the player is smoky:
					say "There is [if playerRegion is Mansion]blackish-green[otherwise]pink[end if] smoke in that room, and you are on your knees...";
					reset multiple choice questions;
					set numerical response 1 to "Continue crawling and breathing";
					set numerical response 2 to "Continue crawling, and start to hold your breath";
					set numerical response 3 to "Cancel the action";
					compute multiple choice question;
					if player-numerical-response is 2, try ManuallyBreathing;
					if player-numerical-response is 3:
						allocate 0 seconds; [Because we set it to 3 seconds earlier, if this isn't here then the player loses a turn.]
						say "You change your mind." instead;
			let B2 be (the weight of breasts + (the weight of belly * 3) + the weight of hips) / 5; [the weight of belly is the main limiting factor when trying to crawl.]
			if the pregnancy of the player > 0 and S <= (B2 / 2) + 1, now S is (B2 / 2) + 3; [Pregnant players should not be prevented from ever moving since the pregnancy may have no other way of actually coming out other than a change in location]
			allocate 6 seconds;
			if the weight of breasts < 10:
				if the largeness of belly < 5:
					say "You crawl forward on your hands and knees[if the bimbo of the player > 8], your [AssDesc] high in the air and your face close to the ground[end if].";
				otherwise if the largeness of belly < 8:
					say "You crawl forward on your hands and knees,[if the bimbo of the player > 8] your [AssDesc] high in the air and your face close to the ground, and[end if] your [BellyDesc] [one of]rubbing[or]bumping[or]slipping[at random] along the floor.";
				otherwise:
					say "You crawl forward on your hands and knees, your [BellyDesc] forcing your [AssDesc] high in the air and your face close to the ground.";
			otherwise:
				if the weight of breasts < 15:
					if the largeness of belly < 5:
						say "You crawl forward on your hands and knees, your [BreastDesc] swaying heavily in front of you[if the bimbo of the player > 8], your [AssDesc] high in the air and your face close to the ground[end if].";
					otherwise if the largeness of belly < 8:
						say "You crawl forward on your hands and knees, your [BreastDesc] swaying heavily in front of you,[if the bimbo of the player > 8] your [ShortDesc of hips] high in the air and your face close to the ground, and[end if] your [BellyDesc] [one of]rubbing[or]bumping[or]slipping[at random] along the floor.";
					otherwise:
						say "You crawl forward on your hands and knees, your [BellyDesc] forcing your [ShortDesc of hips] high in the air and your [BreastDesc] to [one of]drag[or]scrape[or]slip[or]bump[at random] along the floor.";
				otherwise:
					if the largeness of belly < 5:
						say "You crawl forward on your hands and knees, shovelling your [BreastDesc] along the ground in front of you[if the bimbo of the player > 8], your [ShortDesc of hips] high in the air and your face close to the ground[end if].";
					otherwise if the largeness of belly < 8:
						say "You crawl forward on your hands and knees, shovelling your [BreastDesc] along the ground in front of you,[if the bimbo of the player > 8] your [ShortDesc of hips] high in the air, and[end if] your [BellyDesc] [one of]rubbing[or]bumping[or]slipping[at random] along the floor.";
					otherwise:
						say "You manage to shovel your [BreastDesc] and [BellyDesc] along the ground and crawl forward.";
			[otherwise:
				forbid crawling instead;] [Since the player can just choose to faint when they want, this will do for now.]
	[Some traps trigger as you try and leave the room. If they are triggered, they often prevent movement.]
	if an untriggered pressure trap is in the location of the player or an untriggered wire trap is in the location of the player:
		now the room-entering of the player is 0;
		choose a trap to trigger;
		if the player-motion of the player is 0, say "[bold type]You are still in the [printed name of the location of the player][roman type]." instead; [Some traps will have set player-motion to 0. This means the player hasn't successfully moved from this room.]
	if the player is triggering a clumsy action, do nothing instead;
	[The player is successfully moving! For sure! So, anything location specific needs to go here, since if we put it as a "carry out" function, we may have already moved.]
	[Here we reset paddle traps.]
	repeat with Y running through swing traps in the location of the player:
		repeat with D running through dispensers in the location of Y:
			if the doses of D > 0:
				now Y is untriggered;
				now Y is unrevealed;
	[Finally we handle portals.]
	let W be a random warp portal in the location of the player;
	if W is warp portal and the noun is the covered-direction of W:
		if playerRegion is dungeon and location of hotel portal is not discovered and location of mansion portal is not discovered and class-time < 1000 and class-time > 0 and armband is worn and armband is not solid gold and the player is the donator:
			say "Your armband hasn't beeped yet. If you enter the school before it's beeped even once, even if you take a lesson, you won't be able to access the Extra Credit Zone. Are you sure you want to enter the academy early?";
			if the player is not consenting:
				now seconds is 0;
				say "Action cancelled." instead;
		if W is school portal and (class-time is 1000 or class-time <= 0) and armband is worn and armband is not solid gold and there is an alive undefeated correctly-ranked teacher, say "Your armband pulls you away, not wanting to let you leave! Perhaps you need to attend class first?" instead;
		if the player is glue stuck:
			say "You stretch and strain towards the portal, and finally feel it take a grip on you!";
			compute raw glue escaping a random glue in the location of the player with 1;
		teleport via W instead;
		do nothing instead; [Shouldn't be necessary but it is. Go figure.]
	[#LXorDD]
	if players-dick-is-detached > 0 and a random number between 1 and 50 is 1:
		say "[if players-detached-dick is in Dungeon41]You get a brief sensation of someone wiping your detached dick and then putting it back down[otherwise if players-detached-dick is pick-uppable]You feel a brief, faint vibration in your detached dick, like it's lying on the ground and something just walked past it[otherwise]You feel[one of][or], once again,[stopping] [one of][or]a sudden sensation from [at random]your missing dick, feeling someone - or some[i]thing[/i] - handling it. You feel it being [one of]slapped a couple of times against some hard surface[or]submerged in water and waved about[or]roughly wiped down[or]waved around and waggled[at random], and then [one of]tossed up in the air and caught[or]slapped against flesh[or]slapped against something leathery[or]struck against something small that squishes against it which is then picked off[or]it dipped in something warm, stirring it around, then withdrawn and licked all over[or]something warm and wet envelops it, sliding up and down over it for seconds and then minutes[as decreasingly likely outcomes]. Then it's wrapped up... and then nothing.";
		swap dick in; [So there's a penis there while the function runs]
		passively stimulate penis;
		swap dick out. [and switch it back out]

The clumsiness rules is a rulebook.

Definition: yourself is triggering a clumsy action:
	if clumsy is 0, decide no;
	follow the clumsiness rules;
	if the rule succeeded, decide yes;
	decide no.

This is the player trips on lever rule:
	if the player is upright and the player is in the location of DungeonScenery06:
		let M be a random alive caged dungeon boss;
		if M is monster and a random number between 1 and 4 is 1:
			allocate 2 seconds;
			now M is unleashed;
			say "[bold type]In a moment of clumsiness, you begin to trip over! [roman type]You watch with shock and disbelief as you fall over directly towards the lever. There's nothing you can do as your body weight pushes the lever from up to down! You hear a mechanism whirring, and what sounds like a metal door swing open. Oh dear.";
			progress quest of lever-quest;
			progress quest of insanity-quest;
			say aprilFoolsClumsyFlav;
			rule succeeds.
The player trips on lever rule is listed in the clumsiness rules.

slow-move-this-turn is a number that varies. [0: Moving normally; 1: Moving hindered but not forced to move slowly; 2: Moved slowly]

Carry Out Going (this is the monsters-go-next rule):
	if seconds is 3 or seconds is 6:
		now slow-move-this-turn is 0;
		if the noun is not up and the noun is not down:
			compute slow movement;
			if the player is upright or a random number between 1 and 5 is 1, compute bsound; [putting this here to make sure it always happens before NPCs move]
			if slow-move-this-turn is 0 and the player is upright:
				let speed-demon-clothing be nothing;
				repeat with C running through worn speed clothing:
					if a random number between -5 and 50 < the magic-modifier of C, now speed-demon-clothing is C;
				if speed-demon-clothing is clothing:
					now seconds is 1;
					say "You feel extra-speedy thanks to your [speed-demon-clothing]!";
					if newbie tips is 1, say "[one of][newbie style]On extra-speedy turns, NPCs don't get to move.[roman type][line break][or][stopping]";
					repeat with M running through alive simulated monsters:
						now M is moved;
	if seconds is 3 or seconds is 6:
		if the player is in a predicament room:
			repeat with M running through alive bystanders:
				compute movement of M;
		let R be the room noun from the location of the player; [NPCs in the room that the player is entering don't move yet]
		repeat with M running through alive simulated monsters:
			unless M is vine boss or M is in R or M is moved, compute turn 2 of M; [if the player used a smoke bomb, we may have flagged monsters in the room as 'moved', and we need to catch that here]

previous-slow-movement-flavour is a text that varies.

To decide which text is LongerToMove:
	decide on "It takes you longer than usual to move.".

To compute slow movement:
	if the player-motion of the player is 1 and another-turn is 0:
		if the player is moving slowly:
			now another-turn is 1;
			now slow-move-this-turn is 2;
			if previous-slow-movement-flavour is another-turn-flavour:
				now another-turn-flavour is LongerToMove;
			otherwise:
				now previous-slow-movement-flavour is another-turn-flavour;
				now another-turn-flavour is the substituted form of "[another-turn-flavour] [LongerToMove]";
			repeat with M running through uninterested monsters:
				now M is stalled; [This prevents NPCs who are just about to notice the player in turn 1 from getting an extra action before the player can react in turn 2.]
		otherwise if the player is upright:
			if the player is wobbling or the player is hobbling or the player is swaying or the player is staggering:
				now slow-move-this-turn is 1;
				let R be a random number from 1 to 7;
				if R is 1, say "You shuffle along as fast as your [if there is a worn ball-and-chain][ShortDesc of a random worn ball-and-chain][otherwise if the player is ankle bound][ShortDesc of random worn ankle-bound clothing][otherwise if there is worn crotch-displaced trousers][random worn crotch-displaced trousers][otherwise if there is a worn hobble-skirted clothing]hobble skirt[otherwise if there is an insertable object penetrating a fuckhole][ShortDesc of random insertable object penetrating a fuckhole][otherwise if the player is staggering][ShortDesc of belly][otherwise if the player is swaying][HipDesc][otherwise if the player is wobbling]inexperience at walking in high heels[otherwise]nervous legs[end if] [if there is a worn diaper]and [ShortDesc of random diaper worn by the player] [end if][if there are worn heels]and [ShortDesc of random heels worn by the player] [end if]will let you.";
				if the strut of the player is 1:
					now the strut of the player is 0;
					say "[bold type]The awkwardness of it forces you to stop strutting.[roman type][line break]";
			otherwise if the player is waddling:
				now slow-move-this-turn is 1;
				if the strut of the player is 1:
					now the strut of the player is 0;
					say "[bold type]The awkwardness of wearing a diaper forces you to stop strutting.[roman type][line break]";
				otherwise:
					let R be a random number from 1 to 7;
					if R is 1:
						let X be the weight of a random diaper worn by the player;
						say "[if X > 5]You walk very slowly with the most exaggerated waddle, caused by your [one of]almost impossibly inflated[or]extremely bloated[or]ridiculously oversized[in random order] diaper.[otherwise if X > 3]Your movement is significantly slowed because your [one of]incredibly inflated[or]very bloated[or]oversized[in random order] diaper is forcing you to waddle instead of walk.[otherwise]Your movement is slightly hampered by the way that your [one of]inflated[or]bloated[or]expanded[in random order] diaper is making you waddle.[end if]";
						humiliate X * SLIGHT-HUMILIATION;
			otherwise if the strut of the player is 1 and there is a worn heels:
				say "[one of]You strut provocatively to the [travel-direction of the player].[or][or][or][or][or][or][or][or][or][or][or][or][cycling]";
			otherwise if a random number from the bimbo of the player to 150 < 6 and there are worn stiletto heels or there are worn boots:
				if playerRegion is Dungeon, say "You are shamefully aware of the lewd 'click-clack' that your [printed name of a random worn heels] make on the stone floor as you walk.";
			otherwise if the semen coating of thighs > 4 and a random number from 1 to (15 - the semen coating of thighs) is 1:
				say "You leave footprints of [semen] as you walk.".

Definition: yourself is moving slowly:
	if there is worn stuck clothing, decide no;
	if the player is immobile, decide no; [if the player is stuck after moving something might be happening every turn, so it would rude and weird to punish them with an extra turn of slow movement]
	let MR be the movement reduction of the player;
	let MB be the movement bonus of the player;
	let MT be MR - MB;
	let R be a random number between 1 and 20;
	if debuginfo > 1 or (debuginfo > 0 and R <= MT), say "[input-style]Fast movement check: d20 ([R]) | ([MT]) = ([MR].5) Current movement penalty - ([MB]) current movement bonus[roman type][line break]";
	if R <= MT, decide yes;
	decide no.

Carry out going while the player is in Dungeon41:
	let flav-said be 0;
	repeat with C running through held store things:
		if Dungeon41 is guarded:
			if flav-said is 0, say "[BigNameDesc of shopkeeper] sees you trying to leave.[line break][first custom style]'[one of]Stop, thief!'[or]Guards! Guards! Arrest this thieving whore!'[or]Where do you think you're going with that, bitch?'[or]Oi, you haven't paid for that!'[purely at random][roman type][line break]An alarm bell rings throughout the whole dungeon. Looks like you're in trouble with the law!";
			repeat with M running through alive royal guards:
				deinterest M;
				if M is asleep and M is in the location of the player, say "[BigNameDesc of M] hears the alarm and wakes up!";
				now the sleep of M is 0;
			interest shopkeeper;
			anger shopkeeper;
			now flav-said is 1;
		progress quest of stealing-quest.

Part 4 - Trap Triggers

Report going:
	Do important going resolution.

To do important going resolution:
	if an untriggered pressure trap is in the location of the player or an untriggered wire trap is in the location of the player or a sticky trap is in the location of the player:
		now the room-entering of the player is 1;
		choose a trap to trigger;
	if the location of the player is Dungeon12:
		remove all interest.

To remove all interest:
	if the number of interested monsters > 0:
		say "Safe in [if the class of the player is princess]your[otherwise]the princess['][end if] royal chambers, you feel [one of]the heavy gaze of the monsters of the game lifted from you[or]the monsters of the game lose interest in you[or]like you are no longer being stalked[at random].";
		repeat with M running through interested monsters:
			bore M;
			if the number of placed jungle rooms > 1:
				if M is in Woods01:
					summon M in the Woods;
				if M is in Hotel01:
					summon M in the Hotel;
				if M is in Mansion01:
					summon M in the Mansion.

To Choose A Trap To Trigger:
	now the player-motion of the player is 1;
	if debugmode is 1, say "Detecting if there is a correct facing trap to trigger...[paragraph break]";
	let R be a random number between 1 and 2;
	if the room-entering of the player is 0:
		if R is 1:
			if the player is walking past a wire trap:
				Test a wire trap;
			otherwise:
				if the player is walking past a pressure trap, test a pressure trap;
		otherwise:
			if the player is walking past a pressure trap:
				Test a pressure trap;
			otherwise:
				if the player is walking past a wire trap, test a wire trap;
	otherwise:
		let WasUpright be whether or not the player is upright;
		if WasUpright is true and the player is walking past a sticky trap:
			test a sticky trap;
		otherwise if R is 1:
			if the player is walking into a wire trap:
				Test a wire trap;
			otherwise:
				if the player is walking into a pressure trap, test a pressure trap;
		otherwise:
			if the player is walking into a pressure trap:
				Test a pressure trap;
			otherwise:
				if the player is walking into a wire trap, test a wire trap;
		[This seems a very natural thing to do: if they fall over through some other cause and there's glue here, they may fall into it!]
		if WasUpright is true and the player is prone and the location of the player is glue-puddled:
			check glue tripping.

Definition: yourself is walking past a sticky trap:
	repeat with T running through sticky traps in the location of the player:
		decide yes;
	decide no.

To Test a Sticky Trap:
	let CT be a random camera trap in the location of the player;
	if agent is ready for next agent scene:
		compute next agent scene;
	otherwise:
		let D be a random number from 1 to the dexterity of the player;
		let R be a random number between 5 and 10;
		if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed:
			if debuginfo > 0, say "[input-style]Trap balance check: Automatic success from living belt of sturdiness[roman type][line break]";
			now D is 9999;
		otherwise if debuginfo > 0:
			say "[input-style]Trap balance check: dexterity d[dexterity of the player] ([D]) [if there are worn sandals]+ sandals bonus (4) = [D + 4] [end if]| ([R].5) d6+4.5 hazard difficulty[roman type][line break]";
		if there is a worn sandals, increase D by 4;
		let T be a random untriggered sticky trap in the location of the player;
		say "The [if playerRegion is Woods]floor in this room is particularly soft and your [feet] get momentarily stuck[otherwise if playerRegion is Mansion]floor in this part of the mansion is very uneven[otherwise]wooden floor in this room has been recently polished[end if][run paragraph on]";
		if D < R:
			say "[if playerRegion is Woods], which knocks you off balance![otherwise] which causes you to slip and fall![end if]";
			try kneeling;
			if T is trap:
				say StickyTriggerFlav of T;
				now focused-thing is T;
				trigger T;
			if autostand is 1 and the player is prone, now delayed stand is 1; [We've made the player kneel, and now if autostand is 1 we flag up that the player should try to stand after the next turn.]
		otherwise:
			say StickyTriggerFail of T.

To say StickyTriggerFlav of (T - a trap):
	say "As your hands hit the ground, you feel a pressure pad depress underneath them! [one of]That can't be good.[or]Oh dear...[or]Not again...[or]Dammit.[stopping]".
To say StickyTriggerFail of (T - an object):
	say ". You manage to avoid falling over!".

Definition: yourself is walking into a pressure trap:
	if the player is zeroG or the player is on tiptoes, decide no;
	repeat with T running through untriggered pressure traps in the location of the player:
		if the trap-direction of T is the travel-opposite of the player, decide yes;
	decide no.

Definition: yourself is walking past a pressure trap:
	if the player is zeroG or the player is on tiptoes, decide no;
	repeat with T running through untriggered pressure traps in the location of the player:
		if the trap-direction of T is the travel-direction of the player, decide yes;
	decide no.

To Test A Pressure Trap:
	if there is worn sandals:
		do nothing;
	otherwise if there is an untriggered triggered pressure trap in the location of the player and the player is not getting unlucky:
		say "You recall that one of the stone slabs here triggers a trap, and carefully avoid it.";
	otherwise if the player is upright:
		say "[bold type]You feel the stone slab underneath your feet depress as you step on it...[if there is an untriggered triggered pressure trap in the location of the player][line break][variable custom style][one of]Oh crap, I forgot about that[or]Whoops[cycling]![end if][roman type][line break]";
		let A be a random number between 1 and the dexterity of the player;
		let B be a random number between 1 and the dexterity of the player;
		let R be A + B;
		let D be a random number between 11 and 20;
		if debuginfo > 0, say "[input-style]Pressure plate reaction check: dexterity d[dexterity of the player] ([A]) + dexterity d[dexterity of the player] ([B * 1]) ";
		if debuginfo > 0, say "= [R] | [D].5 = (d10+10.5) pressure pad difficulty[roman type][line break]";
		if R > 13:
			say "With lightning reflexes, you manage to take your weight off of that foot before it triggers!";
			repeat with T running through pressure traps in the location of the player:
				now T is triggered; [the player knows about it]
		otherwise:
			trigger a pressure trap;
	otherwise:
		let B be the largeness of breasts;
		say "[bold type]As you crawl your hand touches a stone slab that starts to depress, but you quickly avoid putting too much of your weight onto the slab, avoiding triggering the trap.[roman type][line break]";
		if B > 16:
			say " However, as your [BreastDesc] cross the pressure pad, their weight manages to trigger the trap! Whoops![line break]";
			trigger a pressure trap;
		[otherwise:
			say "[bold type]As you crawl your hand touches a stone slab that starts to depress.[roman type] You fail to react in time and trigger a trap![line break]";
			trigger a pressure trap.]

To Trigger A Pressure Trap:
	let N be 0;
	if the room-entering of the player is 0:
		repeat with T running through untriggered pressure traps in the location of the player:
			if the trap-direction of T is the travel-direction of the player and N is 0:
				now focused-thing is T;
				trigger T;
				now N is 1;
	otherwise:
		repeat with T running through untriggered pressure traps in the location of the player:
			if the trap-direction of T is the travel-opposite of the player and N is 0:
				now focused-thing is T;
				trigger T;
				now N is 1.

Definition: yourself is walking into a wire trap:
	repeat with T running through wire traps in the location of the player:
		if the trap-direction of T is the travel-opposite of the player, decide yes;
	decide no.

Definition: yourself is walking past a wire trap:
	repeat with T running through wire traps in the location of the player:
		if the trap-direction of T is the travel-direction of the player, decide yes;
	decide no.

To Test A Wire Trap:
	let T be a random revealed relevant tripwire trap in the location of the player;
	if the player is upright:
		let A be a random number between 2 and the intelligence of the player;
		let B be a random number between 2 and the intelligence of the player;
		let R be A + B;
		if there is a worn sandals, increase R by 4;
		if debuginfo > 0, say "[input-style]Tripwire spot check: intelligence d[intelligence of the player - 1]+1 ([A]) + intelligence d[intelligence of the player - 1]+1 ([B * 1]) ";
		[If the wire is known to be there, we want it to be substantially easier to avoid whilst standing.]
		if T is tripwire trap:
			let C be a random number between 1 and 10;
			increase R by C + the memory of T;
			if debuginfo > 0, say "+ previously encountered bonus d10 ([C]) [if the memory of T > 0]+ recently encountered bonus ([the memory of T]) [end if]";
		if there are worn rollerskates and playerRegion is Dungeon:
			decrease R by (15 - the dexterity of the player);
			if debuginfo > 0, say "- rollerskates penalty (15) + rollerskates dexterity bonus ([the dexterity of the player]) ";
		if debuginfo > 0, say "= [R] | (15.5) tripwire difficulty[roman type][line break]";
		if R > 15:
			let AnkB be a random worn ankle-bound clothing;
			say "[bold type]You [if there are worn rollerskates]manage to leap[otherwise if AnkB is clothing]carefully sidestep[otherwise]gracefully step[end if] over [if playerRegion is Mansion]a protruding floorboard[otherwise]a tripwire[end if].[roman type][line break]";
		otherwise:
			if there are worn rollerskates and playerRegion is Dungeon, say "[bold type][if T is tripwire trap]Your rollerskates make it incredibly difficult to clear the tripwire[otherwise]You skate straight into a tripwire[end if]![roman type][line break]";
			otherwise say "[bold type]You were too busy concentrating on [if the soreness of asshole > 6]your sore [asshole][otherwise]other things[end if], and you walked right into a [if playerRegion is Mansion]raised floorboard[otherwise]tripwire[end if]![roman type] Oops![line break]";
			trigger a wire trap;
	otherwise:
		if the largeness of breasts < 16 or playerRegion is Mansion:
			say "[bold type]You crawl [if playerRegion is Mansion]over a protruding floorboard.[otherwise]under a tripwire.[end if][roman type][line break]";
		otherwise:
			say "[bold type]You try to crawl under a tripwire. but your [BreastDesc] stop you lowering your body enough. The wire gets caught on your [if the class of the player is princess]tiara[otherwise]shoulders[end if]![roman type][line break]";
			trigger a wire trap;
	if T is nothing, place permanent triggered wire.

To Trigger A Wire Trap:
	let T be a random untriggered relevant wire trap in the location of the player;
	if T is nothing, now T is a random relevant tripwire trap in the location of the player; [Let's try and find a tripwire instead]
	unless T is nothing:
		now focused-thing is T;
		trigger T.

To Place Permanent Triggered Wire:
	let W be a random off-stage tripwire trap;
	unless W is nothing:
		if the room-entering of the player is 0, now the trap-direction of W is the travel-direction of the player;
		otherwise now the trap-direction of W is the travel-opposite of the player;
		now W is in the location of the player;
		now W is wire;
		now W is not untriggered; [This is so in the future we prefer to trigger wire traps that aren't just tripwires.]
		now W is revealed.

Report going when playerRegion is Woods:
	let C be a random worn skirted clothing;
	if C is clothing and another-turn is 0 and the number of stuck worn clothing is 0 and the player is prone and there is worn skirted tearable clothing and the player is getting very unlucky:
		say "[bold type]Your [ShortDesc of C] gets snagged on a piece of foliage![roman type][line break]Moving risks damaging it beyond repair. [GotUnluckyFlav]";
		now C is stuck;
		follow the handle snagged clothing rule.

This is the handle snagged clothing rule:
	repeat with C running through worn stuck skirted clothing:
		let M be a random reactive interested unpacified buddy monster;
		if M is monster:
			say "[speech style of M]'Here, let me help you with that.'[roman type][line break][BigNameDesc of M] frees your [ShortDesc of C] from the foliage![line break][speech style of M]'You should be more careful.'[roman type][line break]";
			now C is not stuck;
		otherwise:
			say "What do you want to do about your [MediumDesc of C]?";
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "move forward, destroying it";
			if the player is able to use manual dexterity, set numerical response 2 to "try to free it with your hands";
			set numerical response 0 to "wait and hope someone else helps you";
			compute multiple choice question;
			if player-numerical-response is 1:
				say "You sacrifice your [C], pulling forward, damaging it beyond repair but immediately freeing yourself.";
				destroy C;
			otherwise:
				let R be a random number between 1 and 3;
				if debuginfo > 0 and player-numerical-response is 2, say "[input-style]Snag release roll: d3 ([R]) | (2.5) difficulty[roman type][line break]";
				if R is 3 and player-numerical-response is 2:
					say "You manage to wiggle it free. Phew!";
					now C is not stuck;
				otherwise:
					if player-numerical-response is 2, say "You don't manage it this time. You'll have to try again!";
					add the handle snagged clothing rule to another-turn-rules, if absent;
				now another-turn is 1.


Going ends here.
