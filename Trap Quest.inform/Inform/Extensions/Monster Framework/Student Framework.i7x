Student Framework by Monster Framework begins here.

A student is a kind of monster. A student is intelligent. A student is usually female. A student has a number called timesBullied. A student can be clitLeaded.

A student has a number called lessonInt1. [Can be used to track various things in a lesson]

Definition: a student is school dwelling: decide yes.

To say ShortDesc of (M - a student):
	say student-name of M.
To say MediumDesc of (M - a student):
	say "[rank-colour of item described] student [student-name of item described]".

To decide which number is the starting difficulty of (M - a student):
	decide on 6 + the current-rank of M.

Definition: a student is blocker: decide no.

To say FullMonsterDesc of (M - a student):
	say ImageDesc of M;
	say MonsterDesc of M;
	say StudentDesc of M.

To say MonsterDesc of (M - a student):
	say "This student seems to be missing [his of M] description!".

To say StudentDesc of (M - a student):
	say "[if M is clitLeaded]A thin silver chain dangling from [his of M] groin confirms that [he of M] is still wearing [his of M] new permanent clitoris lead piercing. [end if][big he of M] is wearing an armband which says '[student-name of M] the [student-print of M]' in large [rank-colour of M] letters.".

To set up (M - a student):
	reset M;
	now the monstersetup of M is 1;
	while M is in School01 or M is in School33 or M is in School34 or M is in School35 or M is off-stage:
		now M is in a random placed academic room;
	now the difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	if the current-rank of M < the min-rank of M, now the current-rank of M is the min-rank of M;
	update name of M.

To regionally place (M - a student):
	while M is not in the school or M is in the location of the player or M is nearby:
		now M is in a random schoolplaced room.

Definition: a student is human: decide yes.

Definition: a student is uniquely unfriendly: decide no.

To say NameDesc of (M - a student):
	say "[input-style][student-name of M][roman type]".
To say BigNameDesc of (M - a student):
	say "[input-style][student-name of M][roman type]".
To say FuckerDesc of (M - a student):
	say "[student-name of M]".
To say BigFuckerDesc of (M - a student):
	say "[student-name of M]".


Part - Rank, Name and Print

A student has a number called current-rank. The current-rank of a student is usually 1.
A student has a number called min-rank. The min-rank of a student is usually 1.
A student has a number called max-rank. The max-rank of a student is usually 5.

Definition: a student (called M) is rank1:
	if the current-rank of M is 1, decide yes;
	decide no.
Definition: a student (called M) is rank2:
	if the current-rank of M is 2, decide yes;
	decide no.
Definition: a student (called M) is rank3:
	if the current-rank of M is 3, decide yes;
	decide no.
Definition: a student (called M) is rank4:
	if the current-rank of M is 4, decide yes;
	decide no.
Definition: a student (called M) is rank5:
	if the current-rank of M is 5, decide yes;
	decide no.

A student has an indexed text called student-name. The student-name of a student is usually "Anonymous".
A student has an indexed text called student-print. The student-print of a student is usually "student".

Understand the student-name property as describing a student.

To say rank-colour of (M - a student):
	say rank-colour of the current-rank of M.

Definition: a student (called M) is demotable:
	if the min-rank of M < the current-rank of M:
		repeat with ST running through alive students:
			if ST is not M and the current-rank of ST is the current-rank of M,	decide yes; [There must be at least 1 student of each rank. So we can't demote this person unless they're not the only one left.]
	decide no.

Definition: a student (called M) is promotable:
	if the max-rank of M > the current-rank of M:
		repeat with ST running through alive students:
			if ST is not M and the current-rank of ST is the current-rank of M,	decide yes; [There must be at least 1 student of each rank. So we can't promote this person unless they're not the only one left.]
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


Part - Updating Students


school-earnings-latest is a number that varies. [let's track how long it's been since the player last stepped into the school]

To compute background student promotions: [Happens whenever the player returns to the school via warp portal]
	if school-earnings-latest is 0:
		now school-earnings-latest is earnings;
	otherwise:
		repeat with M running through alive students: [Essentially what we do here is limit background promotions to one every 150 seconds that passes in the game universe, and make sure that no student is promoted to fill the same role that another already has (so there should be no more than 5 students in a class with the player)]
			if the max-rank of M < the rank of the player:
				destroy M; [just to catch anyone who fell through the update students net somehow]
			otherwise if the current-rank of M < the rank of the player and school-earnings-latest - earnings >= 150:
				repeat with N running through alive students:
					if the current-rank of M is the current-rank of N - 1: [checking the ones 1 higher for ones that already fill the same role]
						unless (M is innocent student and N is innocent student) or (M is ditzy student and N is ditzy student) or (M is tryhard student and N is tryhard student) or (M is nasty student and N is nasty student) or (M is amicable student and N is amicable student):
							silently promote M;
							decrease school-earnings-latest by 150.


Part - Stats

To decide which number is the heel-skill of (M - a student):
	decide on 1.

To decide which number is the dedication of (M - a student): [We can use this for various calculations to check which students do what]
	decide on a random number between 1 and 3.

To decide which number is the vindictiveness of (M - a student): [We can use this for various calculations to check which students do what]
	decide on a random number between 1 and 2.


Part - Motion

To compute monstermotion of (M - student):
	if a random number between 1 and 4 is 1, compute room leaving of M.

To compute (M - student) seeking (D - a direction):
	compute monstermotion of M.

To compute fleeing of (M - a student):
	now neighbour finder is the location of M;
	let A be a random N-viable direction;
	let P be the room A from the location of M;
	if A is a random N-viable direction and the room A from the location of M is not bossed and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
		try M going A;
	otherwise if A is a random N-viable direction and P is not the location of the player and the number of barriers in P is 0 and the number of barriers in the location of M is 0:
		try M going A;
	repeat with N running through staff members in the location of M:[Students alert teachers if they have been hurt.]
		now N is interested;
		anger N.

Part - Perception

To compute perception of (M - a student):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if detention chair is grabbing the player:
		compute detention chair tease of M;
	otherwise if armband is worn:
		unless there is an active assembly:
			if M is amicable student and M is unfriendly:
				say "You see [him of M] frown, and it looks like [he of M][']s about to say something angry, but then decides to forgive you instead.";
				calm M;
			if M is friendly:
				compute student perception of M;
			otherwise:
				compute bully perception of M;
	otherwise:
		compute nonstudent perception of M.

To compute student perception of (M - a student):
	say "[one of]It doesn't look like [he of M] is going to engage you in conversation unless you start it.[or][stopping]";

To compute nonstudent perception of (M - a student):
	say "[speech style of M]'[one of]What the hell[or]Oh my god[or]Erm[or]Wait a second[or]Hold on a minute[or]OMFG[in random order], where is your armband?!'[roman type][line break][big he of M] starts to run away!";
	anger M;
	now the scared of M is 100.

To compute (M - a student) reacting to armband replacement:
	if M is in the location of the player, say "[ArmbandCalming of M]";
	calm M.

To say ArmbandCalming of (M - a student):
	if the health of M >= the maxhealth of M:
		if M is unfriendly, say "[BigNameDesc of M] calms down.";
		now the scared of M is 0.

To say SatisfiedFlav of (M - a student):
	if M is in the location of the player and M is not dying, say "[BigNameDesc of M] seems satisfied, and loses interest.[if M is friendly][line break][speech style of M]'Okay, we're cool now. Just don't you dare piss me off again.'[roman type][line break]".

To say SatisfiedFlav of (M - a nasty student):
	if M is in the location of the player and M is not dying, say "[BigNameDesc of M] seems satisfied, and loses interest.[line break][speech style of M]'What a [one of]wimp[or]loser[or][if the player is male]faggot[otherwise]pathetic little girl[end if][in random order].'[roman type][line break]".

To FavourDown (M - a student) by (N - a number):
	if the class of the player is cheerleader and a random number between 1 and 2 is 1, decrease N by 1;
	if N > 0:
		decrease the favour of M by N;
		say "You can tell that [BigNameDesc of M] is [if M is friendly][one of]not happy[or]irritated[or]frustrated[in random order][otherwise][one of]pissed off[or]furious[or]angry[in random order] with you[end if].".

To FavourDown (M - an amicable student) by (N - a number):
	do nothing.

Part - Protection

To compute (M - a student) protecting against (X - a monster):
	say "[speech style of M]'[if X is staff member]Eek! [NameBimbo] is fighting the teachers!'[otherwise][one of]Eek! I'm telling a teacher[or]Stay there, I'm getting a teacher[at random]!'[end if][roman type][line break][BigNameDesc of M] turns to run away.";
	now the scared of M is 100;
	anger M.

dq-student-flee is a diaper punishment. the priority of dq-student-flee is 5.

To compute punishment of (P - dq-student-flee):
	now the scared of current-monster is 100;
	compute fleeing of current-monster.

Definition: dq-student-flee is appropriate if current-monster is student and armband is not worn.

Part - Bullying

[Called when a student beats a player in combat.]
This is the bullying rule:
	increase the timesBullied of current-monster by 1;
	if the player is in School17: [Food Hall]
		compute food hall bullying of current-monster;
	otherwise if diaper quest is 1: [Should be unnecessary, but failsafe]
		compute dq bullying of current-monster;
	otherwise:
		compute tq bullying of current-monster;
	rule succeeds.
The unique punishment rule of a student is usually the bullying rule.

student-bully-food-hall is a diaper punishment. The priority of student-bully-food-hall is 5.
Definition: student-bully-food-hall is appropriate if current-monster is student and the player is in School17.
To compute punishment of (P - student-bully-food-hall):
	compute food hall bullying of current-monster.

student-bully-swirlie is a diaper punishment. The priority of student-bully-swirlie is 3.
Definition: student-bully-swirlie is appropriate:
	if current-monster is not student, decide no;
	if there is worn wet knickers or the location of the player is toilets, decide yes;
	decide no.
To compute punishment of (P - student-bully-swirlie):
	if the location of the player is not toilets, drag to School10 by current-monster;
	let K be a random worn knickers;
	say "[speech style of current-monster]'[if there is worn wet knickers][one of]Dumb baby! This is where you're supposed to go potty, not in your pants[or]Why are your [ShortDesc of K] wet? Don't you know you're supposed to piss in here?[or]You're such a pathetic baby you couldn't make it to this toilet without wetting your [ShortDesc of K][in random order][otherwise][one of]Trying to get a good look at the toilet? How about an even closer one[or]Oh yes, let's take a good look at big [boy of the player] potty, the one you probably can't even make it in time to[in random order][end if]!'[roman type][line break]";
	compute swirlie of current-monster.

To compute swirlie of (M - a monster):
	say "[BigNameDesc of M] grabs you by the head and dunks your face into the toilet water, and then flushes the water around you. It's deeply humiliating!";
	severeHumiliate;
	let swirlieResisting be 0;
	if the player is not feeling submissive:
		say "Do you want to resist? ";
		if the player is reverse bimbo consenting, now swirlieResisting is 1;
	if swirlieResisting is 1:
		say "You buck and thrash and refuse to go down without a fight, screaming bubbles of anger into the swirling water. After a couple of seconds, [NameDesc of M] loses [his of M] grip and is forced to let you go.[line break][speech style of M]'[one of]Fucking [bitch]. I guess you haven't learned your lesson yet[or]Fucking idiot, you're supposed to keep your head under for the whole thing. That's it. I'm still mad at you. We'll do this again soon[in random order].'[roman type][line break]";
		bore M;
	otherwise:
		say "You hold your breath and let your limbs hang limp and allow [him of M] to finish the flush cycle. Afterwards [he of M] wrenches you up by your [MediumDesc of hair] and throws you to the ground.[line break][speech style of M]'[one of]I guess you've learned your lesson. For now[or]Yeah. That's what I thought[or]It seems like you know love getting swirlies, huh? You didn't even fight back[cycling].'[roman type][line break]";
		now the stance of the player is 1;
		DelicateUp 1;
		satisfy M.

student-bully is a diaper punishment. The priority of student-bully is 1.
Definition: student-bully is appropriate if current-monster is student.
To compute punishment of (P - student-bully):
	compute angry punishment of current-monster;
	satisfy current-monster.

To compute bully perception of (M - a student):
	anger M;
	if the player is upright:
		if the timesBullied of M is 0, say FirstTimeBullyDemandFlav of M;
		otherwise say RepeatBullyDemandFlav of M;
		say "Do you get on your knees? ";
		if the player is bimbo consenting:
			now auto is 1;
			try kneeling;
			now auto is 0;
	otherwise:
		if the timesBullied of M is 0, say FirstTimeBullyFlav of M;
		otherwise say RepeatBullyFlav of M;
	if the player is prone:
		follow the bullying rule;
	otherwise:
		say BullyCombatFlav of M.

To say FirstTimeBullyDemandFlav of (M - a student):
	say "[speech style of M]'[one of]Oh it's you. I'm so fucking angry with you. You know what, I think I want you on your knees, [bitch], to get what's coming to you.'[or]I've been looking for you, [bitch]. It's time for revenge. Get on your knees.'[or]I'm going to show you why it was a bad idea to make an enemy of me. Get on your knees.'[in random order][roman type][line break]".

To say FirstTimeBullyFlav of (M - a student):
	say "[speech style of M]'[one of]Oh good, you're on your knees already. That makes it easy for me to give you what you've had coming for a while now.'[or]Oh good, on your knees, begging for forgiveness without me even having to ask. That's a good step in the right direction. This is the next.'[or]Well, well, well, look who's come crawling along, looking for forgiveness. Let me see, how should I thank you properly?'[in random order][roman type][line break]".


To say RepeatBullyDemandFlav of (M - a student):
	say "[speech style of M]'[one of]Hmph, you're still around? I'll teach you to show your face around here again. Knees. Now.'[or]I'm still mad with you. Clearly you still haven't learned how to win friends and influence people. Get on your knees.'[or]Show me how much you want to earn my friendship back, [NameBimbo]. Beg for my forgiveness.'[in random order][roman type][line break]".

To say RepeatBullyFlav of (M - a student):
	say "[speech style of M]'[one of]Well since you're already on your knees, I guess you know I haven't forgiven you yet.'[or]I'm still mad with you.'[or][NameBimbo] the traitor. Seeking forgiveness, hmm?'[in random order][roman type][line break]".


To say BullyCombatFlav of (M - a student):
	say "[speech style of M]'[one of]I guess you really want to fight.'[or]Oops, looks like you pissed me off.'[or]Now I'm mad. Come on then.'[at random][roman type][line break]".

To compute tq bullying of (M - a student):
	let R be a random number between 1 and 4;
	if R is 1 and asshole is exposed:
		let P be a random sex toy penetrating asshole;
		if P is clothing:
			say "[speech style of M]'Why do you have that in your ass? It obviously doesn't fit you, tryhard [bitch].'[roman type][line break][BigNameDesc of M] smacks your ass, making sure [his of M] palm connects with your [ShortDesc of P] so you feel it all the way inside your [asshole].";
		otherwise:
			now P is a random off-stage plentiful dong;
			let pN be the openness of asshole - size of P;
			say "[speech style of M]'You look like you need something hard to work on for a little while.'[roman type][line break][BigNameDesc of M] pulls out a [ShortDesc of P], [if pN < 0]laughing cruelly at your whimper of pain as [he of M] roughly forces it into your [asshole][otherwise if pN < 3]slamming it into your [asshole][end if] and harshly swats your ass. [big his of M] palm makes full contact with the bottom of the [ShortDesc of P], making you feel it all the way inside.";
			summon P;
		ruin asshole times 2;
	otherwise if R <= 2 and watersports fetish is 1:
		say PissDrinkThreat of M;
		FacePiss from M;
	otherwise:
		compute angry punishment of M;
	satisfy M.

To say angry punishment insult of (M - a student):
	say "[speech style of M]'Your outfit is fucking ugly.'[roman type][line break]".

To say angry punishment accessory confiscation of (M - a student):
	say "[speech style of M]'[one of]Give me your lunch money, [bitch][or]Haha, YOINK[cycling]!'[roman type][line break]".

To say angry punishment clothing destruction of (M - a student) on (C - a clothing):
	say "[speech style of M]'Trust me, you're going to look way hotter like this!'[roman type][line break]".

To compute dq bullying of (M - a student):[TODO]
	compute angry punishment of M;
	Bore M.

To compute food hall bullying of (M - a student):
	say "[speech style of M]'[one of]I'm thirsty, [bitch], which means you're going to get some soda for me[or]Come over here, [bitch]. You'll be my drink dispenser today[or]I'm thirsty. You know what to do, [bitch][then at random]!'[roman type][line break][BigNameDesc of M] drags you over to the [drink-machine] by your [MediumDesc of hair] and places [his of M] paper cup under the nozzle. [big he of M] tugs sharply on your [ShortDesc of hair] and you wince with pain.";
	compute sybian sitting;
	say "[BigNameDesc of M] takes the cup and [one of]takes a long gleeful gulp[or]sips it delicately as if it contains a fine nectar[in random order].[line break][speech style of M]'[one of]Ah, the sweet taste of karma[or]This tastes so much better when my clit isn't sore from sitting on that thing[or]Delicious. Good [boy of the player][in random order].'[roman type][line break]";
	satisfy M.



Part - Damage

To compute damage of (M - a student):
	if the health of M > 0:
		if M is uninterested or M is friendly:
			say "[big he of M] [if M is asleep]wakes up, [end if]screams, and turns to run away!";
			now M is interested;
			now the sleep of M is 0;
			now the scared of M is 100;
		otherwise:
			say "[big he of M] screams even louder!";
	otherwise:
		compute death of M.

To compute unique death of (M - a student):
	say "[BigNameDesc of M] slumps to the ground.";
	let N be a random staff member in the location of the player;
	if N is monster and armband is held:
		say "[BigNameDesc of N] growls with anger.[line break][speech style of N]'You've done it now.'[roman type][line break]As [NameDesc of M][']s body melts into nothingness, [NameDesc of N] mutters some words under [his of N] breath. Suddenly your [armband] fizzles into thin air!";
		now armband is in Holding Pen;
	otherwise:
		say "[big his of M] body quickly disappears.".

Part - Conversation

To say FirstResponse of (M - a student):
	say "[speech style of M]'Hello.'[roman type][line break]".

To say RepeatResponse of (M - a student):
	say "[speech style of M]'Hello again.'[roman type][line break]".

To say WhoQuestion of (M - a student):
	say "[variable custom style]'What's your name?'[roman type][line break]".

To say WhereQuestion of (M - a student):
	say "[variable custom style]'[if the rank of the player <= 1]Where [one of]are we?'[or]am I?'[at random][otherwise]What's the best way to increase my rank?'[end if][roman type][line break]".

To say EscapeQuestion of (M - a student):
	say "[variable custom style]'What stuff is there to find deeper in the school?'[roman type][line break]".

To say AdviceQuestion of (M - a student):
	say "[variable custom style]'Any advice for an eager student?'[roman type][line break]".

To say WhoAnswer of (M - a student):
	say "[speech style of M]'My name is [student-name of M], at least until a teacher changes it!'[roman type][line break]".

To say WhereAnswer of (M - a student):
	say "[speech style of M]'[if the rank of the player <= 1]We're in [slut school].'[otherwise]The better you are at being a good girl, the higher rank you'll be able to reach.'[end if][roman type][line break]".

To say StoryAnswer of (M - a student):
	say "[speech style of M]'I came to this school to learn to be a better [if diaper quest is 1][boy of M][otherwise]slut[end if]. What more do you need to know?'[roman type][line break]".

To say EscapeAnswer of (M - a student):
	say "[speech style of M]'Nicer, cosier rooms, that's for sure. And maybe even some cool items.'[roman type][line break]".

To say AdviceAnswer of (M - a student):
	say "[speech style of M]'You should try and pace yourself. Trying to jump in the deep end before you're ready probably won't go well.'[roman type][line break]".

To compute teaching of (M - a student):
	say "[speech style of M]'Err, that's what the teachers are here for...'[roman type][line break]".

To decide which number is the annoyance threshold of (M - a student):
	decide on 999999.


To say DismissalRequestVixen of (M - a student):
	say "'[if the player is a nympho and diaper quest is 0]Look! Over there! Those students are having unauthorised sex[otherwise if the player is a nympho]Look! Over there! That student is going in [his of M] nappy[otherwise if the intelligence of the player < 6]Look, over there! A distraction[otherwise]Didn't you hear? There's a fight going on over there[end if]!'".

To say DismissalResponseVixen of (M - a student):
	say "[speech style of M]'[if M is interested]Haha, pull the other one.'[otherwise]OMG! I'll be right there!'[end if][roman type][line break]".

To decide which number is the DismissalPowerToilet of (M - a student):
	if the rank of the player <= 1, decide on 100;
	decide on 2.

To say DismissalResponseToilet of (M - a student):
	 say "[speech style of M]'[if M is interested]Nu-uh. If you're going to go, you're going to have to let me watch[otherwise if diaper quest is 0]Bo-oring. Fine[otherwise]Fine. But you should really think about using diapers, it'll make the teachers more happy with you[end if].'[roman type][line break]".

To say ToiletPeeReaction of (M - a student):
	if diaper quest is 0:
		say "[BigNameDesc of M] touches [himself of M] as [he of M] watches.[line break][speech style of M]'[one of]I don't know why I find this so hot, but I do. What's wrong with me[or]Are you getting off on the fact that I'm watching you[or]Do you know how hot you look right now[in random order]?'[roman type][line break][moderateHumiliateReflect]";
	otherwise if the diaper-duration of headmistress > 0:
		say "[BigNameDesc of M] frowns.[line break][speech style of M]'In the future, I'll rat you out to a teacher, probably.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] [one of]pouts[or]whines quietly[or]harrumphs[then at random].[line break][speech style of M]'[one of]How come you can make it so easily and I'm still struggling?'[or]I was sure you weren't going to make in time.'[or][big he of the player] made it. Drat.'[then at random][roman type][line break]";
		FavourDown M.

To decide which number is the DismissalPowerBursting of (M - a student):
	decide on 2.

To say DismissalResponseBursting of (M - a student):
	if there is a worn diaper:
		say "[speech style of M]'[if M is interested]Ooh, goody! I can't wait to watch your face as you wet your nappy in front of me[otherwise]Fair enough[end if].'[roman type][line break]";
	otherwise:
		say "[speech style of M]'[if M is interested]Uh-oh, [NameBimbo][']s gonna wet [himself of the player]! Come and see[otherwise]Don't let the teachers catch you having an accident[end if]!'[roman type][line break]".




Student Framework ends here.

