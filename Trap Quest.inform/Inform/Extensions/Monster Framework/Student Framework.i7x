Student Framework by Monster Framework begins here.

A student is a kind of monster. A student is intelligent. A student is usually female. The description of a student is "[FullMonsterDesc of item described]".

Definition: a student (called M) is school dwelling:
	decide yes.

The printed name of student is "[if item described is in the location of the player][TQlink of item described][end if][input-style]student [student-name of item described][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". 

To decide which number is the starting difficulty of (M - a student):
	decide on 7.

Definition: a student (called M) is blocker:
	decide no.

To say FullMonsterDesc of (M - a student):
	if images visible is 1, display monster-image of M;
	say MonsterDesc of M;
	say StudentDesc of M.

To say MonsterDesc of (M - a student):
	say "This student seems to be missing [his of M] description!".

To say StudentDesc of (M - a student):
	say "[Big he of M] is wearing an armband which says '[student-name of M] the [student-print of M]' in large [rank-colour of M] letters.".

To set up (M - a student):
	reset M;
	now the monstersetup of M is 1;
	while M is in School01 or M is off-stage:
		now M is in a random placed academic room;
	now the difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	update name of M.

To regionally place (M - a student):
	while M is not in the school or M is in the location of the player or M is nearby:
		now M is in a random schoolplaced room.

Definition: a student (called M) is human:
	decide yes.

Definition: a student (called M) is uniquely unfriendly:
	decide no.

To say NameDesc of (M - a student):
	say "[input-style][student-name of M][roman type]".

To say BigNameDesc of (M - a student):
	say "[input-style][student-name of M][roman type]".


Part - Rank, Name and Print

A student has a number called current-rank. The current-rank of a student is usually 1.
A student has a number called min-rank. The min-rank of a student is usually 1.
A student has a number called max-rank. The max-rank of a student is usually 5.

A student has an indexed text called student-name. The student-name of a student is usually "Anonymous".
A student has an indexed text called student-print. The student-print of a student is usually "student".

Understand the student-name property as describing a student.

To say rank-colour of (M - a student):
	say rank-colour of the current-rank of M.

Definition: a student (called M) is demotable:
	if the min-rank of M < the current-rank of M, decide yes;
	decide no.

Definition: a student (called M) is promotable:
	if the max-rank of M > the current-rank of M, decide yes;
	decide no.

To update name of (M - a student):
	do nothing.

To silently promote (M - a student):
	if M is promotable:
		increase the current-rank of M by 1;
		update name of M.

To silently demote (M - a student):
	if M is demotable:
		decrease the current-rank of M by 1;
		update name of M.

To promote (M - a student):
	if M is promotable:
		say "[BigNameDesc of M][']s armband transforms and [he of M] becomes ";
		silently promote M;
		say "[NameDesc of M]!".

To demote (M - a student):
	if M is demotable:
		say "[BigNameDesc of M][']s armband transforms and [he of M] becomes ";
		silently demote M;
		say "[NameDesc of M]!".

Definition: a student (called M) is lesson-appropriate:
	if chosen-lesson is not lesson, decide no;
	if the current-rank of M is 1 and the lesson-teacher of chosen-lesson is sapphire-teacher, decide yes;
	if the current-rank of M is 2 and the lesson-teacher of chosen-lesson is emerald-teacher, decide yes;
	if the current-rank of M is 3 and the lesson-teacher of chosen-lesson is ruby-teacher, decide yes;
	if the current-rank of M is 4 and the lesson-teacher of chosen-lesson is pink-diamond-teacher, decide yes;
	if the current-rank of M is 5 and the lesson-teacher of chosen-lesson is diamond-teacher, decide yes;
	decide no.


Part - Stats

To decide which number is the heel-skill of (M - a student):
	decide on 1.


Part - Motion

To compute motion of (M - student):
	if a random number between 1 and 4 is 1, compute room leaving of M.

To compute (M - student) seeking (D - a direction):
	compute motion of M.

To compute fleeing of (M - a student):
	now neighbour finder is the location of M;
	let A be a random N-viable direction;
	let P be the room A from the location of M;
	if A is a random N-viable direction and the room A from the location of M is not bossed and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
		try M going A;
	otherwise if A is a random N-viable direction and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
		try M going A;
	repeat with N running through staff members in the location of M:  [Students alert teachers if they have been hurt.]
		now N is interested;
		anger N.

Part - Perception

To compute perception of (M - a student):
	now M is interested;
	calm M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed]. [otherwise]!  [end if]";
	if detention chair is grabbing the player:
		compute detention chair tease of M;
	otherwise if armband is worn:
		compute student perception of M;
	otherwise:
		compute nonstudent perception of M.

To compute student perception of (M - a student):
	say "[one of]It doesn't look like [he of M] is going to engage you in conversation unless you start it.[or][stopping]";

To compute nonstudent perception of (M - a student):
	say "[speech style of M]'[one of]What the hell[or]Oh my god[or]Erm[or]Wait a second[or]Hold on a minute[or]OMFG[in random order], where is your armband?!'[roman type][line break][Big he of M] starts to run away!";
	anger M;
	now the scared of M is 100.

To compute (M - a student) reacting to armband replacement:
	if M is in the location of the player, say "[ArmbandCalming of M]";
	calm M.

To say ArmbandCalming of (M - a student):
	if the health of M >= the maxhealth of M:
		if M is unfriendly, say "[BigNameDesc of M] calms down.";
		now the scared of M is 0.

Part - Protection

To compute (M - a student) protecting against (X - a monster):
	say "[speech style of M]'[if X is staff member]Eek!  [NameBimbo] is fighting the teachers!'[otherwise][one of]Eek!  I'm telling a teacher[or]Stay there, I'm getting a teacher[at random]!'[end if][roman type][line break][BigNameDesc of M] turns to run away.";
	now the scared of M is 100;
	anger M.

dq-student-flee is a diaper punishment.  the priority of dq-student-flee is 5.

To compute punishment of (P - a dq-student-flee):
	now the scared of current-monster is 100;
	compute fleeing of current-monster.

Definition: a dq-student-flee (called P) is appropriate:
	if current-monster is student, decide yes;
	decide no.

Part - Damage

To compute damage of (M - a student):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "[big he of M] [if the sleep of M > 0]wakes up, [end if]screams, and turns to run away!";
			now M is interested;
			now the sleep of M is 0;
			now the scared of M is 100;
		otherwise:
			say "[big he of M] screams even louder!";
	otherwise:
		compute death of M.

Part - Conversation

To say FirstResponse of (M - a student):
	say "[speech style of M]'Hello.'[roman type][line break]".

To say RepeatResponse of (M - a student):
	say "[speech style of M]'Hello again.'[roman type][line break]".
	
To say WhoQuestion of (M - a student):
	say "[variable custom style]'What's your name?'[roman type][line break]".

To say WhereQuestion of (M - a student):
	say "[variable custom style]'[if the rank of the player is 1]Where [one of]are we?'[or]am I?'[at random][otherwise]What's the best way to increase my rank?'[end if][roman type][line break]".

To say EscapeQuestion of (M - a student):
	say "[variable custom style]'What stuff is there to find deeper in the school?'[roman type][line break]".

To say AdviceQuestion of (M - a student):
	say "[variable custom style]'Any advice for an eager student?'[roman type][line break]".
	
To say WhoAnswer of (M - a student):
	say "[speech style of M]'My name is [student-name of M], at least until a teacher changes it!'[roman type][line break]".

To say WhereAnswer of (M - a student):
	say "[speech style of M]'[if the rank of the player is 1]We're in [slut school].'[otherwise]The better you are at being a good girl, the higher rank you'll be able to reach.'[end if][roman type][line break]".

To say StoryAnswer of (M - a student):
	say "[speech style of M]'I came to this school to learn to be a better [if diaper quest is 1]girl[otherwise]slut[end if]. What more do you need to know?'[roman type][line break]".

To say EscapeAnswer of (M - a student):
	say "[speech style of M]'Nicer, cosier rooms, that's for sure. And maybe even some cool items.'[roman type][line break]".

To say AdviceAnswer of (M - a student):
	say "[speech style of M]'You should try and pace yourself. Trying to jump in the deep end before you're ready probably won't go well.'[roman type][line break]".

To compute teaching of (M - a student):
	say "[speech style of M]'Err, that's what the teachers are here for...'[roman type][line break]".

To decide which number is the annoyance threshold of (M - a student):
	decide on 999999.

Student Framework ends here.

