Going by Actions begins here.

[!<SayGoingSubduedFlavOfClothing>+

REQUIRES COMMENTING

+!]
To say GoingSubduedFlav of (C - a clothing):
	say "[StandSubduedFlav of C]".

[!<CheckGoingWhileThePlayerIsImmobile>+

REQUIRES COMMENTING

+!]
Check going while the player is immobile:
	if the player is subdued:
		say "[GoingSubduedFlav of a random worn subduing clothing]";
		try waiting instead;
	if the player is pole stuck, say "You are currently stuck on a dildo[if the player is monster fucked], and also being fucked by the [random monster penetrating a body part][end if]!" instead;
	if the player is drill stuck, say "You are currently stuck on a spinning drill!" instead;
	if the player is hook stuck, say "You don't dare take a step in any direction because the ass hook would just kill your [asshole] more!  You're forced on tiptoes as it is!" instead;
	if the player is throne stuck, say "You are stuck on the throne!" instead;
	if the player is horse stuck, say "You are stuck on a wooden horse!" instead;
	if the player is bouncer stuck, say "You are stuck in the baby bouncer!" instead;
	if the player is monster stuck:
		if the player is monster fucked:
			if a random monster penetrating a body part is minotaur and the sleep of a random monster penetrating a body part > 0, try waiting instead;
		try resisting instead;
	if the player is vine stuck, say "The vines are holding you in place!" instead;
	if the stickiness of the player > 0:
		if the player is glue stuck:
			compute glue escaping;
			if the player is not glue stuck, rule succeeds;
		otherwise:
			say "You're stuck to the  [one of]floor[or]ground[at random]!" instead;
	say "You're immobile right now!" instead.

[!<CheckGoingWhileTheThroneIsTriggered>+

REQUIRES COMMENTING

+!]
Check going while the throne is triggered:
	Dethrone the player instead.

[!<CheckGoingWhileThePlayerIsClothingStuck>+

REQUIRES COMMENTING

+!]
Check going while the player is clothing stuck:
	say "You can't because your [a random stuck clothing worn by the player] is stuck in place!" instead.

[!<CheckGoingEast>+

REQUIRES COMMENTING

+!]
Check going east:
	now the travel-direction of the player is east;
	now the travel-opposite of the player is west.

[!<CheckGoingNorth>+

REQUIRES COMMENTING

+!]
Check going north:
	if the player is in Stairwell03, try going up instead;
	now the travel-direction of the player is north;
	now the travel-opposite of the player is south.

[!<CheckGoingWest>+

REQUIRES COMMENTING

+!]
Check going west:
	if the player is in Stairwell02, try going up instead;
	if the location of the player is the room east of Hotel37 and there is an on-stage dominatrix:
		if the scared of a random on-stage dominatrix > 0, say "A metal shutter is in the way. You[']ll have to wait until it comes back up." instead;
	now the travel-direction of the player is west;
	now the travel-opposite of the player is east.

[!<CheckGoingSouth>+

REQUIRES COMMENTING

+!]
Check going south:
	if the player is in Mansion01, try going down instead;
	now the travel-direction of the player is south;
	now the travel-opposite of the player is north;

[!<CheckGoingUp>+

REQUIRES COMMENTING

+!]	
Check going up:
	if there is a golem in the location of the player, say "You're going to need to deal with this monster!" instead.

[!<CheckGoingDown>+

REQUIRES COMMENTING

+!]
Check going down:
	if there is a golem in the location of the player, say "You're going to need to deal with this monster!" instead.

[!<TheHotelSetUpRule>+

REQUIRES COMMENTING

+!]
Carry out going up (this is the hotel-setup rule):
	if the player is in Stairwell02:
		if Hotel01 is unplaced:
			set up the hotel;
			follow the setting up hotel monsters rules;
			repeat with M running through alive nonsetup monsters:
				set up M;
			[deploy a random off-stage camera trap in the location of HotelBedPatrons;]
		if a random demon lord is off-stage and the xavier-power of a random mechanic > 4:
			unseal xavier from a random mechanic.

[!<TheWoodsSetUpRule>+

REQUIRES COMMENTING

+!]
Carry out going up (this is the woods-setup rule):
	if the player is in Stairwell01 and Woods01 is unplaced:
		Set Up The Woods;
		follow the setting up woods monsters rules;
		repeat with M running through alive nonsetup monsters:
			set up M.

[!<CheckGoingUpWhenThePlayerIsInStairwell03>+

REQUIRES COMMENTING

+!]
Check going up when the player is in Stairwell03:
	if diaper quest is 1, say "That place seems way too spooky, something is telling you that you can't do that here.  It probably isn't ready for Diaper Quest yet." instead.

[!<TheMansionSetUpRule>+

REQUIRES COMMENTING

+!]
Carry out going up (this is the mansion-setup rule):
	if the player is in Stairwell03 and Mansion00 is unplaced:
		Set Up The Mansion;
		follow the setting up mansion monsters rules;
		repeat with M running through alive nonsetup monsters:
			set up M.

[!<CheckGoingEastWhileThePlayerIsInHotel01>+

REQUIRES COMMENTING

+!]
Check going east while the player is in Hotel01:
	try going down instead.

[!<ReportGoingUp>+

REQUIRES COMMENTING

+!]
Report going up:
	if map images is 1, display entire map.

[The region-setup rule is listed before the monsters-go-next rule in the carry out going rulebook.]

[!<ReportGoingDown>+

REQUIRES COMMENTING

+!]
Report going down:
	if map images is 1, display entire map;

Part 1 - Movement Hindrance Definitions

[!<YourselfIsWaddling>+

REQUIRES COMMENTING

+!]
Definition: yourself is waddling:
	if there is a worn diaper:
		let D be a random worn diaper;
		if the weight of D > 2, decide yes;
	decide no.

[!<YourselfIsCrawling>+

REQUIRES COMMENTING

+!]
Definition: yourself is crawling:
	if there is a worn diaper:
		let D be a random worn diaper;
		if the weight of D > 5, decide yes;
	decide no.

[!<YourselfIsWobbling>+

REQUIRES COMMENTING

+!]
Definition: yourself is wobbling:
	repeat with H running through heels worn by the player:
		if H is not platform heels and H is not wedge heels and the heel-height of H > 3 and the heel skill of the player < 7, decide yes;
		if heel-height of H > 5 and the heel skill of the player < 7, decide yes;

[!<YourselfIsHobbling>+

REQUIRES COMMENTING

+!]
Definition: yourself is hobbling:
	if there is worn crotch-displaced trousers, decide yes;
	if the player is ankle bound, decide yes;
	if there is a worn crotch-in-place hobble-skirted clothing, decide yes;
	decide no.

[!<YourselfIsSwaying>+

REQUIRES COMMENTING

+!]
Definition: yourself is swaying:
	if there is worn blessed yoga pants, decide no;
	if the weight of hips > 16, decide yes;
	decide no.

[!<YourselfIsStaggering>+

REQUIRES COMMENTING

+!]
Definition: yourself is staggering:
	if the largeness of belly > 3, decide yes;
	decide no.

[!<YourselfIsSquirming>+

REQUIRES COMMENTING

+!]
Definition: yourself is squirming:
	if there is an insertable object penetrating a fuckhole, decide yes;
	decide no.


[!<movementReductionFlavSaid:Integer>*

REQUIRES COMMENTING

*!]
movement-reduction-flav-said is a number that varies.  movement-reduction-flav-said is 0. [This gets reset every round in the 'reset flags' function.]

[!<DecideWhichNumberIstheMovementReductionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the movement reduction of the player:
[This is all the things that reduce movement capabilities when standing but do not inherently increase trip hazard.]
	let X be 0;
	let flav-said be 0;
	if the player is hobbling:
		increase X by 4;
		if movement-reduction-flav-said is 0:
			say "Your [if the player is ankle bound]ankle bondage[otherwise if there is worn crotch-displaced trousers][random worn crotch-displaced trousers][otherwise]hobble skirt[end if] is severely restricting your movement[one of], making it significantly easier for monsters to stop you from escaping[or][stopping]!";
			now movement-reduction-flav-said is 1;
	if the player is staggering:
		increase X by 2;
		if the largeness of belly > 5, increase X by 2;
		if the largeness of belly > 7, increase X by 2;
		if the largeness of belly > 8, increase X by 2;
		if movement-reduction-flav-said is 0:
			say "[if the largeness of belly > 7]The huge size of your [ShortDesc of belly] is making it extremely unwieldy, and[otherwise if the largeness of belly > 5]The large size of your [ShortDesc of belly][otherwise]Your [ShortDesc of belly][end if] is significantly affecting the way you walk, restricting your movement[one of] and making it significantly easier for monsters to stop you from escaping[or][stopping]!";
			now movement-reduction-flav-said is 1;
	if there is a worn diaper:
		let D be the weight of a random worn diaper;
		increase X by D;
		if movement-reduction-flav-said is 0 and D > 1:
			say "[if D > 4]Your comically exaggerated waddling caused by your extremely bloated diaper makes it almost impossible[otherwise if D > 2]Your extremely awkward waddling caused by your bloated diaper makes it extremely difficult[otherwise]Your awkward walking caused by your large diaper makes it difficult[end if] to move quickly[one of] and is making it significantly easier for monsters to stop you from escaping[or][stopping]!";
			now movement-reduction-flav-said is 1;
	if the player is squirming:
		repeat with F running through insertable objects penetrating a fuckhole:
			increase X by the girth of F / 3;
			if movement-reduction-flav-said is 0:
				say "Your [F] is significantly affecting the way you walk, restricting your movement[one of] and making it significantly easier for monsters to stop you from escaping[or][stopping]!";
				now movement-reduction-flav-said is 1;
	if the player is swaying:
		increase X by 2;
		if the weight of hips > 17, increase X by 2;
		if movement-reduction-flav-said is 0:
			say "[if the weight of hips > 17]The comically exaggerated swaying of your [HipDesc][otherwise if the weight of hips > 11]The exaggerated swaying of your [HipDesc][otherwise]The swaying of your [HipDesc][end if] is significantly affecting the way you walk, restricting your movement[one of] and making it significantly easier for monsters to stop you from escaping[or][stopping]!";
			now movement-reduction-flav-said is 1;
	decide on X.

Part 2 - Tripping

[!<DecideWhichNumberIsTheTripHazardOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the trip hazard of the player:
[This is all the things that could make the player trip regardless of whether they are wearing heels (but including heels).]
	if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed, decide on 0;
	let X be 0;
	if there are worn heels:
		repeat with C running through worn clothing:
			increase X by the hindrance of C;
	increase X by the slipperiness of the location of the player;
	[if attack-type is 3, increase X by 3; [Kicks make tripping by monsters this turn easier]
	if attack-type is 2, increase X by 1; [Knees make tripping by monsters this turn easier]]
	let Q be the largeness of hair - 14;
	if the player is ponytailed, decrease Q by 3;
	if the player is pigtailed, decrease Q by 6;
	if Q > 0, increase X by Q;
	decide on X.

[!<tripReasonsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The trip reasons rules is a rulebook.

[!<TheTrippedOverExtremelyLongHairRule>+

REQUIRES COMMENTING

+!]
This is the tripped over extremely long hair rule:
	if the largeness of hair > 14:
		say "You trip over your extremely long [HairColour] [HairStyle] and end up on your knees instead!";
		rule succeeds.
The tripped over extremely long hair rule is listed last in the trip reasons rules.

[!<TheSlippedOnHugePuddleRule>+

REQUIRES COMMENTING

+!]
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

[!<TheSlippedOnPuddleRule>+

REQUIRES COMMENTING

+!]
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

[!<TheTrippedOnStumblingHeelsRule>+

REQUIRES COMMENTING

+!]
This is the tripped on stumbling heels rule:
	if there is a worn stumbling heels:
		say "Your [printed name of a random worn heels] cause you to lose your footing!";
		rule succeeds.
The tripped on stumbling heels rule is listed last in the trip reasons rules.

[!<TheTrippedFromCursedYogaPantsRule>+

REQUIRES COMMENTING

+!]
This is the tripped from cursed yoga pants rule:
	if there is a worn cursed yoga pants:
		say "Your [printed name of a random worn yoga pants] somehow cause you to lose your footing!";
		rule succeeds.
The tripped from cursed yoga pants rule is listed last in the trip reasons rules.

[!<TheTrippedOnHeelsRule>+

REQUIRES COMMENTING

+!]
This is the tripped on heels rule:
	if there is a worn heels:
		say "Whilst trying to walk around in your [printed name of a random worn heels], you clumsily lose your footing!";
		rule succeeds.
The tripped on heels rule is listed last in the trip reasons rules.

[!<TheDefaultTripFlavourRule>+

REQUIRES COMMENTING

+!]
This is the default trip flavour rule:
	say "Whilst trying to walk, you trip and fall to your knees!";
	rule succeeds.
The default trip flavour rule is listed last in the trip reasons rules.

Part 3 - Main Going Function


[This is a long function because the order of considerations is quite important here!]	
[!<CheckGoing>+

REQUIRES COMMENTING

+!]
Check going:
	now the location of the player is discovered; [Just in case it didn't become discovered on the way in]
	[Going is a resisting activity.]
	if the player is live fucked, try resisting instead;
	repeat with C running through stuck worn clothing:
		say "Your [printed name of C] is stuck, and it's stopping you from moving!" instead;
	if the player is flying, say "You're not even touching the ground!" instead;
	let S be the strength of the player + 15;
	repeat with ST running through revealed sprinkle traps in the room noun from the location of the player:
		unless ST is expired:
			say "There is a sprinkler currently dispensing [SprinkleLiquid of ST] in that room, are you sure you want to try and go that way? [yesnolink] ";
			unless the player consents, say "You change your mind." instead;
	repeat with ST running through revealed hypno traps in the room noun from the location of the player:
		unless ST is expired:
			say "There is a hypno trap currently displaying [hypno content of ST] in that room.  Are you sure you want to try and go that way? [yesnolink] ";
			unless the player consents, say "You change your mind." instead;
	repeat with ST running through revealed haunted mirror traps in the room noun from the location of the player:
		unless ST is expired:
			say "There is currently an uncovered haunted mirror in that room.  Are you sure you want to try and go that way? [yesnolink] ";
			unless the player consents, say "You change your mind." instead;
	repeat with ST running through futanari slutty sisters in the room noun from the location of the player:
		unless the sleep of ST > 0:
			say "You can see [if the number of alive slutty sisters > 1]the two girls[otherwise]one of the girls[end if] who put you into the virtual reality capsule in that room.  You'll probably have to fight them.  [if the player is prone][bold type]You are currently on your knees, which usually seems to result in fights not going your way.[roman type]  [end if]Are you sure you want to try and go that way? [yesnolink] ";
			unless the player consents, say "You change your mind." instead;
	repeat with ST running through robomatron in the room noun from the location of the player:
		unless the sleep of ST > 0:
			say "You can see a large scary robot dressed like a nanny.  You'll probably have to fight it.  [if the player is prone][bold type]You are currently on your knees, which usually seems to result in fights not going your way.[roman type]  [end if]Are you sure you want to try and go that way? [yesnolink] ";
			unless the player consents, say "You change your mind." instead;
	now seconds is 3; [From this point on, movement takes 3 seconds and triggers a turn, even if it fails.]
	repeat with M running through expectant monsters:
		now the last-interaction of M is 0; [Naughty player, moving is not submissive!  Monsters are not delayed by a going action.]
	[The player has a chance of involuntarily standing up when super light and moving.]
	if the player is prone and the player is zeroG:
		say "You try to crawl forward but by pushing on the ground with your extremely light body, you inadvertently stand up.";
		silently try standing;
	if the player is prone and a random number between -3 and 3 > the weight of the player:
		say "You try to crawl forward but by pushing on the ground with your extremely light body, you inadvertently stand up.";
		silently try standing;
	if there is a worn tethering lipstick collar:
		if a random number between (the strength of the player / 2) and the strength of the player < a random number between 8 and 13:
			say "[TetherMove]";
			now another-turn is 1 instead;
	[All these checks only take place if the player is WALKING as opposed to crawling.]
	if the player is upright:
		[Firstly, monsters each get a chance to block the player, this is only likely to happen if the player has low dexterity or lots of movement reductions.]
		repeat with M running through dangerous monsters in the location of the player:
			let R be a random number from the dexterity of the player to ((the difficulty of M * 2) - the movement reduction of the player); [When we check the movement reduction of the player for the first time in a round, if it is significant, it outputs text explaining why the player is struggling to move away from the monster.]
			if R < the difficulty of M and M is blocker:
				now seconds is 2;
				say "[MovementBlock of M]" instead;
		[Here we increase heel experience.  NB even if the player falls over, they still gain heel experience.]
		if there are worn heels:
			let C be a random heels worn by the player;
			[Posture training makes heel skill experience go up faster]
			repeat with D running through posture training clothing worn by the player:
				increase the heel time of the player by 1;
				unless D is cursed, increase the heel time of the player by 2;
			[Computing heel skill experience: Queen of Hearts heels prevent this experience gain]
			unless C is queen of hearts heels:
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
		if debugmode is 1, say "Walking attempt: Player ([D].5 | [X] Heels)[line break]";
		if D is X and there are worn heels, say "You feel very unstable, and are barely managing to keep your balance on your [printed name of random worn heels]!"; [The player barely managed to succeed the roll.]
		if D < X:
			follow the trip reasons rules; [Here we explain to the player why they tripped]
			if there is a worn heels, say "[if the heel skill of the player < 4][first custom style][one of]How humiliating...[or]I haven't really gotten the hang of walking in heels yet...[or]How degrading![in random order][otherwise][second custom style][one of]I'm such a klutz![or]How clumsy of me![or]I'm getting better at it though![or]How humiliating.. but in a fun way.[in random order][end if][roman type]";
			try kneeling;
			if autostand is 1 and the player is prone, now delayed stand is 1; [We've made the player kneel, and now if autostand is 1 we flag up that the player should try to stand after the next turn.]
			say "[bold type]You are still in the [location of the player].[roman type]" instead;
		otherwise:
			[Fat burning (exercise) only happens when the player does NOT trip over.]
			increase the fat-burning of the player by 1;
			if there are worn heels:
				let H be a random worn heels;
				increase the fat-burning of the player by a random number from 0 to the hindrance of H;
		if the player is crawling: [Stupidly huge diapers will always cause major issues, this is separate to tripping hazards so that we can very accurately control the chances of it occurring.]
			let Di be a random diaper worn by the player;
			let R be a random number between 1 and 10;
			if the weight of Di is 6: [Very very big]
				if R > 8: [20% chance]
					say "Your baby-like waddling caused by your extremely bloated [printed name of Di] causes you to stumble, and you don't make it very far this turn.  [bold type]You are still in the [location of the player][roman type].";
					say "[variable custom style]Maybe I should crawl for now instead?[roman type][line break]" instead;
				otherwise if R > 6: [25% chance (assuming we didn't fall over)]
					if the humiliation of the player < 15000, say "You waddle forward, cringing with humiliation about the size of your diaper and the babyish way you are walking.";
			otherwise: [Cartoonishly big]
				if R > 5: [50% chance]
					say "Your [printed name of Di] is so big you can hardly move!  Your waddle is so extreme that you can only take the tiniest of steps.  You don't make it very far this turn.  [bold type]You are still in the [location of the player][roman type]." instead;
				otherwise: [100% chance (assuming we didn't fall over)]
					say "Your [printed name of Di] is so big you can hardly move!  Your waddle is so extreme that you can only take the tiniest of steps.  It takes a lot of effort to make it to the door of the next room, but you manage it this time.";
					say "[variable custom style]Maybe I should crawl for now instead?[roman type][line break]";	
		otherwise: [Okay, the player is definitely not falling over! Assuming there are no super-giant diapers, let's output some flavour text to the player and deal with some other potential situations.]
			if the player is wobbling or the player is hobbling or the player is swaying or the player is staggering:
				let R be a random number from 1 to 7;
				if R is 1, say "You shuffle along as fast as your [if the player is ankle bound][printed name of random ankle bond worn by the player][otherwise if there is worn crotch-displaced trousers][random worn crotch-displaced trousers][otherwise if there is a worn hobble-skirted clothing]hobble skirt[otherwise if there is an insertable object penetrating a fuckhole][printed name of random insertable object penetrating a fuckhole][otherwise if the player is staggering][ShortDesc of belly][otherwise if the player is swaying][HipDesc][otherwise if the player is wobbling]inexperience at walking in high heels[otherwise]nervous legs[end if] [if there is a worn diaper]and [printed name of random diaper worn by the player] [end if][if there are worn heels]and [printed name of random heels worn by the player] [end if]will let you.";
			otherwise if the player is waddling:
				if the strut of the player is 1:
					now the strut of the player is 0;
					say "[bold type]The awkwardness of wearing a diaper forces you to stop strutting.[roman type][line break]";
				otherwise:	
					let R be a random number from 1 to 7;
					if R is 1:
						let X be the weight of a random diaper worn by the player;
						say "[if X > 5]You walk very slowly with the most exaggerated waddle, caused by your [one of]almost impossibly inflated[or]extremely bloated[or]ridiculously oversized[in random order] diaper.[otherwise if X > 3]Your movement is significantly slowed because your [one of]incredibly inflated[or]very bloated[or]oversized[in random order] diaper is forcing you to waddle instead of walk.[otherwise]Your movement is slightly hampered by the way that your [one of]inflated[or]bloated[or]expanded[in random order] diaper is making you waddle.[end if]";
						humiliate X * 10;
			otherwise if there is a worn cowbell and a random number between 1 and 15 is 1:
				say "Your cowbell [one of]rings[or]continues to ring[stopping] loudly as you walk.";
			otherwise if the strut of the player is 1 and there is a worn heels:
				let R be a random number from the bimbo of the player to 23;
				if R is 23, say "You strut provocatively to the [travel-direction of the player].";
			otherwise if a random number from the bimbo of the player to 150 < 6 and there are worn stiletto heels or there are worn boots:
				if the player is in the Dungeon, say "You are shamefully aware of the lewd 'click-clack' that your [printed name of a random worn heels] make on the stone floor as you walk.";
			otherwise if the semen coating of thighs > 4 and a random number from 1 to (15 - the semen coating of thighs) is 1:
				say "You leave footprints of [semen] as you walk.";
	[All these checks only take place if the player is CRAWLING as opposed to walking.]
	if the player is prone:
		[We want to warn the player if they're going to crawl into a room they previously triggered a pink smoke trap in.]
		if the noun is a direction: [We do this just in case the player says "go wardrobe" or something retarded like that.]
			if the room noun from the location of the player is smoky:
				say "There is [if the player is in the Mansion]blackish-green[otherwise]pink[end if] smoke in that room, and you are on your knees.  Are you sure you want to try and crawl that way? [yesnolink] ";
				unless the player consents:
					now seconds is 0; [Because we set it to 3 seconds earlier, if this isn't here then the player loses a turn.]
					say "You change your mind." instead;
		let B2 be (the weight of breasts + (the weight of belly * 3) + the weight of hips) / 5; [the weight of belly is the main limiting factor when trying to crawl.]
		repeat with M running through dangerous monsters in the location of the player:
			let E be 1;
			if M is insane gladiator or M is wild gladiator, increase E by 10;
			if the class of the player is catgirl or the class of the player is puppygirl, now E is (the number of worn nudism-disabling clothing * 20) - 120; [The more worn clothing, the worse this is]
			if the class of the player is adult baby and there are worn mittens, now E is -100; [So a 1 in 11 chance or so for a difficulty 10 monster]
			if a random number between E and (the difficulty of M + 3) > 2 and M is blocker, say "[MovementBlock of M]" instead;
			otherwise say "[if M is blocker]You manage to quickly crawl past the [M] before [he of M] can catch you![end if]";
		if S > (B2 / 2) + 1: [If this isn't true, the player will never be able to crawl, even with 0 fatigue.]
			let R be a random number from 0 to the fatigue of the player;
			if debugmode is 1, say "[line break]Player [S * 1] | [(R / 10) + (B2 / 2)] Knees[paragraph break]";
			if S < (R / 10) + (B2 / 2): [High fatigue combined with heavy body can prevent the player from crawling this turn.]
				delay crawling instead;
			otherwise:
				if the weight of breasts < 10:
					if the largeness of belly < 5:
						say "You crawl forward on your hands and knees[if the bimbo of the player > 8], your [HipDesc] high in the air and your face close to the ground[end if].";
					otherwise if the largeness of belly < 8:
						say "You crawl forward on your hands and knees,[if the bimbo of the player > 8] your [HipDesc] high in the air and your face close to the ground, and[end if] your [BellyDesc] rubbing along the floor.";
					otherwise:
						say "You crawl forward on your hands and knees, your [BellyDesc] forcing your [HipDesc] high in the air and your face close to the ground.";
				otherwise:
					if the weight of breasts < 15:
						if the largeness of belly < 5:
							say "You crawl forward on your hands and knees, your [BreastDesc] swaying heavily in front of you[if the bimbo of the player > 8], your [HipDesc] high in the air and your face close to the ground[end if].";
						otherwise if the largeness of belly < 8:
							say "You crawl forward on your hands and knees, your [BreastDesc] swaying heavily in front of you,[if the bimbo of the player > 8] your [ShortDesc of hips] high in the air and your face close to the ground, and[end if] your [BellyDesc] rubbing along the floor.";
						otherwise:
							say "You crawl forward on your hands and knees, your [BellyDesc] forcing your [ShortDesc of hips] high in the air and your [BreastDesc] to drag along the floor.";
					otherwise:
						if the largeness of belly < 5:
							say "You crawl forward on your hands and knees, shovelling your [BreastDesc] along the ground in front of you[if the bimbo of the player > 8], your [ShortDesc of hips] high in the air and your face close to the ground[end if].";
						otherwise if the largeness of belly < 8:
							say "You crawl forward on your hands and knees, shovelling your [BreastDesc] along the ground in front of you,[if the bimbo of the player > 8] your [ShortDesc of hips] high in the air, and[end if] your [BellyDesc] rubbing along the floor.";
						otherwise:
							say "You manage to shovel your [BreastDesc] and [BellyDesc] along the ground and crawl forward.";
				if there is a worn cowbell and a random number between 1 and 15 is 1, say "Your cowbell continues to ring loudly as you walk.";
				now seconds is 6;
		otherwise:
			forbid crawling instead; [Since the player can just choose to faint when they want, this will do for now.]
	[Some traps trigger as you try and leave the room.  If they are triggered, they often prevent movement.]
	if an untriggered pressure trap is in the location of the player or an untriggered wire trap is in the location of the player:
		now the room-entering of the player is 0;
		choose a trap to trigger;
		if the motion of the player is 0, say "[bold type]You are still in the [printed name of the location of the player][roman type]." instead; [Some traps will have set motion to 0.  This means the player hasn't successfully moved from this room.]
	[The player is successfully moving!  For sure!  So, anything location specific needs to go here, since if we put it as a "carry out" function, we may have already moved.]
	[Here we reset paddle traps.]
	repeat with Y running through swing traps in the location of the player:
		repeat with D running through dispensers in the location of Y:
			if the doses of D > 0:
				now Y is untriggered;
				now Y is unrevealed;
	[Finally we handle portals.]
	let W be a random warp portal in the location of the player;
	if the noun is north and W is warp portal:
		if the player is glue stuck:
			say "You stretch and strain towards the portal, and finally feel it take a grip on you!";
			compute raw glue escaping a random glue in the location of the player with 1;
		teleport via W instead.

[!<TheMonstersGoNextRule>+

REQUIRES COMMENTING

+!]
Carry Out Going (this is the monsters-go-next rule):
	repeat with M running through alive simulated monsters:
		unless M is vine boss, compute turn 2 of M;


[!<DelayCrawling>+

REQUIRES COMMENTING

+!]
To Delay Crawling:
	now seconds is 6;
	if the fatigue of the player > the fatigue of the player / 2:
		if the largeness of belly > 6:
			say "Your legs are feeling quite weak, and your hands can hardly reach the ground thanks to your [BellyDesc][if the largeness of breasts > 9] and [BreastDesc][end if], which is stopping you from being able to crawl effectively.  Try again?";
		otherwise:
			if the largeness of belly < 4 and the weight of breasts > 18:
				say "Your legs are feeling quite weak, and your [BreastDesc] keep your chest pinned to the ground, which is stopping you from being able to crawl effectively.  Try again?";
			otherwise if the largeness of belly < 4 and the largeness of breasts < 7:
				say "You struggle to find the energy to crawl forward. Try again?";
			otherwise if the largeness of belly < 4:
				say "The combination of your fatigue and [BreastDesc] are making it slightly difficult to crawl, try again?";
			otherwise:
				say "The combination of your fatigue[if the largeness of breasts >= 7], [BreastDesc][end if] and [BellyDesc] are making it slightly difficult to crawl, try again?";
	otherwise if the largeness of breasts + the largeness of belly < 10:
		say "[one of]Your legs are feeling quite weak, so you stay still on your knees while they recover a bit more.  Try again?[or]Your arms wobble as you try to crawl, causing you to stop and take a breath.  Woah, better try again?[or]The feebleness of your girly arms is making it a bit difficult to even crawl.  Try again?[purely at random]";
	otherwise:
		if the largeness of belly > 6:
			say "Your hands can hardly reach the ground thanks to your [BellyDesc][if the largeness of breasts > 9] and [BreastDesc][end if], stopping you from being able to crawl effectively.  Try again?";
		otherwise:
			if the weight of belly < 12 and the weight of breasts > 18, say "Your [BreastDesc] keep your chest pinned to the ground, and are stopping you from being able to crawl effectively.  Try again?";
			otherwise say "The combination of your [BreastDesc] and [BellyDesc] are making it slightly difficult to crawl, try again?".

[!<ForbidCrawling>+

REQUIRES COMMENTING

+!]
To Forbid Crawling:
	if the largeness of belly < 4:
		say "Your [BreastDesc] are just too big to shovel along the ground.  You're going to have to wait until you can stand up again.";
	otherwise:
		if the largeness of belly > 7:
			say "Your [BellyDesc] is so big[if the largeness of breasts > 13] and your [BreastDesc] are so bloated[end if] that you're struggling to get a grip on the ground.  You're going to have to wait until your belly deflates or you can manage to stand up again.";
		otherwise:
			if the strength of the player < 6, say "Your arm muscles are too weak to help you crawl.  You're going to have to wait until you can stand up again.";
			otherwise say "The combination of your [BreastDesc] and your [BellyDesc] are preventing you from crawling at all.  You're going to have to wait until you can stand up again.".

[!<SayMovementBlockOfMonster>+

REQUIRES COMMENTING

+!]
To say MovementBlock of (M - a monster):
	say "The [M] manages to get in front of you and block your path, slowing down your movement!";

[!<CarryOutGoingWhileThePlayerIsInDungeon41AndDungeon41IsGuarded>+

REQUIRES COMMENTING

+!]
Carry out going while the player is in Dungeon41 and Dungeon41 is guarded:
	let X be the number of held stolen clothing;
	let flav-said be 0;
	let S be a random shopkeeper;
	repeat with C running through store clothing held by the player:
		if S is not mating:
			if flav-said is 0, say "The shopkeeper sees you trying to leave.  [first custom style]'[one of]Stop Thief!'[or]Guards!  Guards!  Arrest this thieving whore!'[or]Where do you think you're going with that, bitch?'[or]Oi, you haven't paid for that!'[purely at random][roman type][line break]An alarm bell rings throughout the whole dungeon.  Looks like you're in trouble with the law!";
			now C is stolen;
			repeat with M running through alive royal guards:
				deinterest M;
				if the sleep of M > 0 and M is in the location of the player, say "The [M] hears the alarm and wakes up!";
				now the sleep of M is 0;
			now S is interested;
			anger S;
		otherwise:
			if flav-said is 0, say "[first custom style]'The mother of my daughter can take what she wants.  I hope you find it useful!'[roman type][line break]";
			now C is normal;
		now flav-said is 1.

		
Part 4 - Trap Triggers

[!<ReportGoing>+

REQUIRES COMMENTING

+!]
Report going:
	now the location of the player is discovered;
	if map images is 1:
		map-draw the location of the player;
	[if there is a worn cowbell:
		repeat with M running through uninterested released nearby monsters:
			[Since adding the fairy-suckling attack, the "and M is not fairy" is commented out]
			if the sleep of M is 0 and the boredom of M < 30 [and M is not fairy] :
				if M is gladiator:
					if the player is top heavy:
						calm M;
					otherwise if extreme proportions fetish is 0:
						if the largeness of breasts > 7, calm M;
					otherwise:
						if the largeness of breasts > 13, calm M;
					if M is unfriendly, now the variety of M is the largeness of breasts + 1;
				if M is unfriendly:
					now the boredom of M is 0;
					now M is interested;	
					say "The [M] is attracted by the sound of your cowbell!  Uh-oh.";]
	if an untriggered pressure trap is in the location of the player or an untriggered wire trap is in the location of the player or a sticky trap is in the location of the player:
		now the room-entering of the player is 1;
		choose a trap to trigger.

[!<ReportGoing>+

REQUIRES COMMENTING

+!]
Report going:
	if the location of the player is Dungeon12:
		remove all interest.

[!<RemoveAllInterest>+

REQUIRES COMMENTING

+!]
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

[!<ChooseATrapToTrigger>+

REQUIRES COMMENTING

+!]
To Choose A Trap To Trigger:
	now the motion of the player is 1;
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
		let WasUpright be  whether or not the player is upright;
		if WasUpright is true and (the player is walking past a sticky trap or the location of the player is glue-puddled):
			if R is 1:
				if the player is walking past a sticky trap:
					test a sticky trap;
				otherwise:
					check glue tripping;
			otherwise:
				if the location of the player is glue-puddled:
					check glue tripping;
				otherwise:
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


[!<YourselfIsWalkingPastAStickyTrap>+

REQUIRES COMMENTING

+!]
Definition: yourself is walking past a sticky trap:
	repeat with T running through sticky traps in the location of the player:
		decide yes;
	decide no.

[!<TestAStickyTrap>+

REQUIRES COMMENTING

+!]
To Test a Sticky Trap:
	let D be a random number from 1 to the dexterity of the player;
	if there is a worn sandals, increase D by 4;
	if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed, now D is 9999;
	say "The [if the player is in the Woods]floor in this room is particularly soft and your [feet] get momentarily stuck[otherwise if the player is in the Mansion]floor in this part of the mansion is very uneven[otherwise]wooden floor in this room has been recently polished[end if][run paragraph on]";
	if D < a random number between 5 and 10:
		say "[if the player is in the Woods], which knocks you off balance![otherwise] which causes you to slip and fall![end if]";
		try kneeling;
		let T be a random untriggered sticky trap in the location of the player;
		if T is trap:
			say StickyTriggerFlav of T;
			trigger T;
		if autostand is 1 and the player is prone, now delayed stand is 1; [We've made the player kneel, and now if autostand is 1 we flag up that the player should try to stand after the next turn.]
	otherwise:
		say ".  You manage to avoid falling over!".

To say StickyTriggerFlav of (T - a trap):
	say "As your hands hit the ground, you feel a pressure pad depress underneath them!  [one of]That can't be good.[or]Oh dear...[or]Not again...[or]Dammit.[stopping]".


[!<YourselfIsWalkingIntoAPressureTrap>+

REQUIRES COMMENTING

+!]
Definition: yourself is walking into a pressure trap:
	repeat with T running through all untriggered pressure traps in the location of the player:
		if the trap-direction of T is the travel-opposite of the player, decide yes;
	decide no.

[!<YourselfIsWalkingPastAPressureTrap>+

REQUIRES COMMENTING

+!]
Definition: yourself is walking past a pressure trap:
	repeat with T running through all untriggered pressure traps in the location of the player:
		if the trap-direction of T is the travel-direction of the player, decide yes;
	decide no.

[!<TestAPressureTrap>+

REQUIRES COMMENTING

+!]
To Test A Pressure Trap:
	let B be the largeness of breasts;
	if the player is upright:
		say "[bold type]You feel the stone slab underneath your feet depress as you step on it...[roman type][line break]";
		trigger a pressure trap;
	otherwise:
		let R be ((a random number between 0 and the dexterity of the player) + (a random number between 0 and the dexterity of the player));
		if there is a worn sandals, increase R by 4;
		if debugmode is 1, say "Player [R] | 13.5 Pressure Pad[line break]";
		if R > 13:
			say "[bold type]As you crawl your hand touches a stone stab that starts to depress, but you quickly avoid putting too much of your weight onto the slab, avoiding triggering the trap.[roman type][line break]";
			if B > 16:
				say "  However, as your [BreastDesc] crosses the pressure pad, their weight manages to trigger the trap!  Whoops![line break]";
				trigger a pressure trap;
		otherwise:
			say "[bold type]As you crawl your hand touches a stone stab that starts to depress.[roman type]  You fail to react in time and trigger a trap![line break]";
			trigger a pressure trap.


[!<TriggerAPressureTrap>+

REQUIRES COMMENTING

+!]
To Trigger A Pressure Trap:
	let N be 0;
	if the room-entering of the player is 0:
		repeat with T running through untriggered pressure traps in the location of the player:
			if the trap-direction of T is the travel-direction of the player and N is 0:
				trigger T;
				now N is 1;
	otherwise:
		repeat with T running through untriggered pressure traps in the location of the player:
			if the trap-direction of T is the travel-opposite of the player and N is 0:
				trigger T;
				now N is 1.				



[!<YourselfIsWalkingIntoAWireTrap>+

REQUIRES COMMENTING

+!]
Definition: yourself is walking into a wire trap:
	repeat with T running through wire traps in the location of the player:
		if the trap-direction of T is the travel-opposite of the player, decide yes;
	decide no.

[!<YourselfIsWalkingPastAWireTrap>+

REQUIRES COMMENTING

+!]
Definition: yourself is walking past a wire trap:
	repeat with T running through wire traps in the location of the player:
		if the trap-direction of T is the travel-direction of the player, decide yes;
	decide no.
	

[!<TestAWireTrap>+

REQUIRES COMMENTING

+!]
To Test A Wire Trap:
	let T be a random revealed relevant tripwire trap in the location of the player;
	if the player is upright:
		let A be a random number between 2 and the intelligence of the player;
		let B be a random number between 2 and the intelligence of the player;
		let R be A + B;
		if there is a worn sandals, increase R by 4;
		if debugmode is 1, say "Player [A] + [B * 1] ";
		[If the wire is known to be there, we want it to be substantially easier to avoid whilst standing.]
		if T is tripwire trap:
			let C be a random number between 0 and 15;
			increase R by C + the memory of T;
			if debugmode is 1, say "+ [C] + [the memory of T] ";
		if debugmode is 1, say "= [R] | 15.5 Wire Trigger[line break]";
		if R > 15:
			say "[bold type]You [if there is worn ankle bond]carefully sidestep[otherwise]gracefully step[end if] over [if the location of the player is in the Mansion]a protruding floorboard[otherwise]a tripwire[end if].[roman type][line break]";
		otherwise:
			say "[bold type]You were too busy concentrating on [if the soreness of asshole > 6]your sore [asshole][otherwise]other things[end if], and you walked right into a [if the location of the player is in the Mansion]raised floorboard[otherwise]tripwire[end if]![roman type]  Oops![line break]";
			trigger a wire trap;
	otherwise:
		if the largeness of breasts < 16 or the location of the player is in the Mansion:
			say "[bold type]You crawl [if the location of the player is in the Mansion]over a protruding floorboard.[otherwise]under a tripwire.[end if][roman type][line break]";
		otherwise:
			say "[bold type]You try to crawl under a tripwire. but your [BreastDesc] stop you lowering your body enough.  The wire gets caught on your [if the class of the player is princess]tiara[otherwise]shoulders[end if]![roman type][line break]";
			trigger a wire trap;
	if T is nothing, place permanent triggered wire.

[!<TriggerAWireTrap>+

REQUIRES COMMENTING

+!]
To Trigger A Wire Trap:
	let T be a random untriggered relevant wire trap in the location of the player;
	if T is nothing, now T is a random relevant tripwire trap in the location of the player; [Let's try and find a tripwire instead]
	unless T is nothing:
		trigger T.

[!<PlacePermanentTriggeredWire>+

REQUIRES COMMENTING

+!]
To Place Permanent Triggered Wire:
	let W be a random off-stage tripwire trap;
	unless W is nothing:
		if the room-entering of the player is 0, now the trap-direction of W is the travel-direction of the player;
		otherwise now the trap-direction of W is the travel-opposite of the player;
		now W is in the location of the player;
		now W is wire;
		now W is not untriggered; [This is so in the future we prefer to trigger wire traps that aren't just tripwires.]
		now W is revealed.
			

Going ends here.
