School Dungeon by Rooms begins here.

[East Dungeon]
School33 is an academic room. The printed name of School33 is "Dungeon Hall". "Dungeon cells sit either side of this hidden extension to the hallway.". The shape of School33 is L5/0-0-1-0-1-1. The grid position of School33 is <5,16,6>. [School33 is east of School07.]
School34 is an academic room. The printed name of School34 is "Dungeon Cell". "A dark cell.  The cell has a permanently open doorway, but anyone cuffed to the chains attached to the wall would be unable to leave.". The shape of School34 is L5/0-0-1-0-0-0. The grid position of School34 is <5,16,5>. School34 is south of School33.
School35 is an academic room. The printed name of School35 is "Dungeon Cell". "A dark cell.  The cell has a permanently open doorway, but anyone cuffed to the chains attached to the wall would be unable to leave.". The shape of School35 is L5/0-0-0-0-1-0. The grid position of School35 is <5,16,7>. School35 is north of School33.

To decide which number is the entry-rank of (R - School33):
	decide on 6.
To decide which number is the entry-rank of (R - School34):
	decide on 6.
To decide which number is the entry-rank of (R - School35):
	decide on 6.

To reveal the school dungeon:
	change the east exit of School07 to School33;
	now School33 is seen;
	now School33 is discovered;
	now School34 is seen;
	now School34 is discovered;
	now School35 is seen;
	now School35 is discovered.

Carry out going west when the location of the player is School33:
	reveal the school dungeon. [if we've exited via the secret doorway then we can return]

dungeon-favour is a number that varies.
dungeon-time is a number that varies.

A time based rule (this is the dungeon sentence progress rule):
	if dungeon chains is worn:
		increase dungeon-time by time-seconds;
		if dungeon-time > 45 and the player is not immobile:
			now dungeon-time is 0;
			let M be a random alive teacher;
			compute dungeon checkup of M.

To compute (M - a monster) dungeon locking:
	reveal the school dungeon;
	now dungeon-favour is 0;
	say "[DungeonLockPrepFlav of M]";
	drag to School34 by M;
	compute dungeon chain binding of M;
	say "[DungeonLockAfterFlav of M]";
	compute dungeon drink confiscating of M;
	compute dungeon long term challenge of M;
	say "[DungeonLockLeaveFlav of M]";
	try M going north;
	repeat with N running through alive students:
		distract N;
	repeat with N running through alive staff members:
		distract N.

To compute dungeon chain binding of (M - a monster):
	say "[DungeonLockFlav of M]";
	now dungeon chains is worn by the player;
	now dungeon chains is stuck;
	now dungeon chains is locked;
	let W be a random pair of handcuffs;
	say "You are locked into ankle chains.[if W is actually summonable][M] also puts you in handcuffs![end if]";
	if W is actually summonable, summon W locked;
	now W is bound-behind;
	repeat with C running through things penetrating face:
		say "[M] removes your [ShortDesc of C], presumably to make sure that you are still able to drink.";
		now C is in Dungeon33.

To say DungeonLockPrepFlav of (M - a monster):
	say "[speech style of M]'This has only ever been necessary once before.'[roman type][line break]The [M] grabs your arm.  ".

To say DungeonLockFlav of (M - a monster):
	say "[speech style of M]'Hold still.'[roman type][line break]".

To say DungeonLockAfterFlav of (M - a monster):
	say "[speech style of M]'You will be let out when we believe you have learned your lesson.  I guess how long that takes is up to you.'[roman type][line break]".
	
To compute dungeon drink confiscating of (M - a monster):
	if there is a held bottle, say "[DungeonDrinkFlav of M]";
	repeat with B running through held bottles:
		now B is in School33.

To say DungeonDrinkFlav of (M - a monster):
	say "[speech style of M]'You won't be needing these.'[roman type][line break]The [M] confiscates all of your drinks!".

To say DungeonLockLeaveFlav of (M - a monster):
	say "With that [he of M] turns to leave you alone.".

To compute dungeon long term challenge of (M - a monster):
	if mythical creature fetish is 1 or tentacle fetish is 1 or inhuman pregnancy > 1:
		compute dungeon tentacle challenge of M;
	otherwise:
		compute pink smoke challenge of M;

To compute dungeon tentacle challenge of (M - a monster):
	let T be a random off-stage tentacle monster;
	if T is monster:
		now T is newborn;
		set up T;
		now T is in the location of the player;
		now the sleep of T is 7;
		say DungeonTentacleDeclarationFlav of M.

To say DungeonTentacleDeclarationFlav of (M - a monster):
	say "[speech style of M]'BRING IT IN!'[roman type][line break][M] calls behind [him of M] and two students carry a grey mass into the room between you. As they drop it next to you, you realise what it is - a sleeping tentacle monster![line break][speech style of M]'Each time this fucks you, it will grow larger. So if I were you I would want to get out of here as soon as possible.'[roman type][line break]".

To compute pink smoke challenge of (M - a monster):
	now School34 is smoky;
	say DungeonSmokeDeclarationFlav of M.

To say DungeonSmokeDeclarationFlav of (M - a monster):
	say "[speech style of M]'Release the gas!'[roman type][line break][M] calls behind [him of M] and moments later pink smoke fills the bottom of your cell![line break][speech style of M]'I imagine you'll enjoy the feeling of resting down here, but try not to get too addicted, or maybe you'll never want to leave!'[roman type][line break]".

To compute dungeon checkup of (M - a monster):
	now M is in the location of the player;
	say DungeonCheckupArrivalFlav of M;
	compute dungeon test of M;
	check dungeon release of M;
	say DungeonCheckupDepartureFlav of M;
	try M going north.

To say DungeonCheckupArrivalFlav of (M - a monster):
	say "[M] [bold type]appears at your cell entrance![roman type][line break]".

To say DungeonCheckupDepartureFlav of (M - a monster):
	say "[M] turns to leave.[roman type][line break]".
	
To check dungeon release of (M - a monster):
	if dungeon-favour > 3:
		say "[speech style of M]'I guess you have served your time.'[roman type][line break][M] releases you from the ankle chains!";
		now dungeon chains is in the location of the player;
		repeat with C running through worn locked clothing:
			say "[big he of M] unlocks your [ShortDesc of C]!";
			now C is unlocked;
		now armband is worn by the player;
		say "Your [ShortDesc of armband] reappears on your arm!";
	otherwise:
		say "[speech style of M]'Good. [if dungeon-favour > 2]You're getting close to earning your release. Keep going[otherwise]Keep it up and we'll think about letting you go[end if].'[roman type][line break]";

A dungeon-test is a kind of object.
dungeon-test-monster is an object that varies.
Definition: a dungeon-test (called T) is eligible:
	decide yes.

To compute dungeon test of (M - a monster):
	now dungeon-test-monster is M;
	execute a random eligible dungeon-test.

dungeon-food-test is a dungeon-test.
Definition: dungeon-food-test (called T) is eligible:
	if the player is hungry, decide yes;
	decide no.
To execute (T - dungeon-food-test):
	let M be dungeon-test-monster;
	say "[speech style of M]'Here's your food, little slave.'[roman type][line break][M] drops a dog bowl in front of you! It's filled with mushy peas[if watersports fetish is 1] drowned in [urine][otherwise if diaper quest is 0] drowned in [semen][end if].  Do you [if the player is upright]get down on your knees and [end if]eat it? [yesnolink]";
	if the player consents:
		StomachFoodUp 1;
		say "You [if the player is upright]kneel and [end if] begin to eat the degrading meal without the use of your hands. You feel thoroughly humiliated as the [M] watches you with a mocking sneer.  When you are finished [he of M] takes the bowl away.";
		humiliate 200;
		if watersports fetish is 1:
			UrineTasteAddictUp 1;
		otherwise if diaper quest is 0:
			SemenTasteAddictUp 1;
		otherwise:
			DelicateUp 1;
		now the stance of the player is 1;
		increase dungeon-favour by 1;
	otherwise:
		say "When [he of M] sees that you're not going to eat, [he of M] harrumphs.[line break][speech style of M]'Fine, have it your way. You're not going to earn your release that way, though.'[roman type][line break]".

dungeon-degradation-test is a dungeon-test.
To execute (T - dungeon-degradation-test):
	let M be dungeon-test-monster;
	say "[speech style of M]'What are you?'[roman type][line break]It looks like [he of M] wants you to admit your inferiority. Can you bring yourself to do it? [yesnolink]";
	if the player consents:
		say "[variable custom style]'[if the humiliation of the player > 30000][one of]A pathetic useless worm[or]A good-for-nothing slave[or]Whatever my superiors tell me I am[in random order][otherwise if diaper quest is 1][one of]A baby slave[or]An incontinent diaper slave[or]Your loyal baby servant, [daddy of M][or]A perverted diaper addict[in random order][otherwise][one of]A cock-hungry slut[or]A shameless nympho[or]A brainless bimbo[or]A set of fuckholes[in random order][end if].'[roman type][line break]You look at the ground [if the humiliation of the player <= 30000]and sniffle with humiliation [end if]as you say the words. [M] seems satisfied.";
		DelicateUp 1;
		humiliate 400;
		increase dungeon-favour by 1;
	otherwise:
		say "[big he of M] frowns at your silence.[line break][speech style of M]'Disappointing.  Clearly your stay hasn't been long enough yet.'[roman type][line break]".

dungeon-oral-test is a dungeon-test.
Definition: dungeon-oral-test (called T) is eligible:
	if diaper quest is 0, decide yes;
	decide no.
To execute (T - dungeon-oral-test):
	let M be dungeon-test-monster;
	if M is male:
		say "[big he of M] positions [his of M] [manly-penis] in front of your mouth.  [speech style of M]'Suck it.'[roman type][line break]Do you perform fellatio on [him of M]? [yesnolink]";
	otherwise:
		say "[big he of M] bends over, pushing [his of M] ass into your face and more importantly [his of M] asshole over your mouth.  [speech style of M]'Lick it.'[roman type][line break]Do you perform anilingus on [him of M]? [yesnolink]";
	if the player consents:
		say "You [if M is male]accept [his of M] rod into your mouth and begin to work[otherwise]push your tongue into [his of M] sweaty hole and begin to lick[end if] away.  [big he of M] seems happy to let you do all of the work, holding [himself of M] completely still.  Even though it's not dirty, your tongue is still able to detect that unmistakable taste of ass[if M is male] - [he of M] must have recently been ruining some poor other student's butt[end if]. After what can't have been much more than ten seconds [M] seems satisfied.  It doesn't look like [he of M] intends for you to bring [him of M] to orgasm right now, and [he of M] withdraws.  [if the oral sex addiction of the player > 4]You are so used to bringing your partners to completion that this leaves you feeling somewhat uncomfortable![otherwise]You're just glad that it was all over so quickly.[end if]";
		OralSexAddictUp 1;
		humiliate 100;
		increase dungeon-favour by 1;
	otherwise:
		say "[big he of M] growls at your lack of compliance.[line break][speech style of M]'You'd really rather stay here even longer?  Fine by me.'[roman type][line break]".



School Dungeon ends here.
