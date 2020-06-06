Staff Framework by Monster Framework begins here.

A staff member is a kind of monster. A staff member is intelligent. A staff member is usually female.

Definition: a staff member is controlling: decide no. [Will they grab onto subduing clothing e.g. a clitoris lead?]

Definition: a staff member is motionless-when-defeated: decide yes.

Definition: a staff member is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

To compute monstermotion of (M - a staff member):
	if playerRegion is not school and M is undefeated:
		say "BUG: [BigNameDesc of M] has followed the player out of the school. Please report along with a description of what recently happened. Region: [playerRegion]; Location: [location of M]; Player location: [location of the player].";
		now M is in School01;
	otherwise if a random number between 1 and 4 is 1 or (the player is at least partially immobile and (a random number between 1 and 2 is 1 or there is a teacher in the location of M)):
		compute room leaving of M.

Definition: a staff member is messy if it is diaper-enslaved and diaper messing >= 6.

To say FullMonsterDesc of (M - a staff member):
	say ImageDesc of M;
	if M is fucked-silly, say "[BigNameDesc of M] is lying unconscious on the floor.";
	otherwise say MonsterDesc of M;
	if M is undefeated, say StaffDesc of M.

To say StaffDesc of (M - a staff member):
	say "[big he of M] is wearing a black armband which says 'STAFF' in large [rank-colour of M] letters.".

To say rank-colour of (M - a staff member):
	if M is sapphire-teacher:
		say "sapphire";
	otherwise if M is emerald-teacher:
		say "emerald";
	otherwise if M is ruby-teacher:
		say "ruby";
	otherwise if M is pink-diamond-teacher:
		say "pink diamond";
	otherwise if M is diamond-teacher:
		say "pure diamond";
	otherwise:
		say "solid gold".

To decide which number is the starting difficulty of (M - a staff member):
	decide on 10.

To set up (M - a staff member):
	reset M;
	now the monstersetup of M is 1;
	while M is in School01 or M is in School33 or M is in School34 or M is in School35 or M is off-stage:
		now M is in a random placed academic room;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	uniquely set up M.

To uniquely set up (M - a staff member):
	do nothing.

To regionally place (M - a staff member):
	while M is not in the school or M is in the location of the player or M is nearby:
		now M is in a random schoolplaced room.

Definition: a staff member is human: decide yes.

Definition: a staff member is uniquely unfriendly: decide no.

staff-combat-warning is initially false.

Check slapping a staff member:
	unless the player is purposefully rebelling, say "Action cancelled." instead.
Check kneeing a staff member:
	unless the player is purposefully rebelling, say "Action cancelled." instead.
Check kicking a staff member:
	unless the player is purposefully rebelling, say "Action cancelled." instead.

Definition: yourself is purposefully rebelling:
	[if staff-combat-warning is false and the noun is friendly and armband is worn:
		say "Initiating combat in the school can be rather punishing. Do you know what you're doing? ";
		if the player is not consenting, decide no;]
	decide yes.

To compute perception of (M - a staff member):
	now M is interested;
	calm M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if detention chair is grabbing the player:
		compute detention chair tease of M;
	otherwise if armband is worn and M is in the school:
		unless there is an active assembly, compute student perception of M;
	otherwise:
		compute nonstudent perception of M.

To compute student perception of (M - a staff member):
	if M is male and M is groping:
		compute grope of M.

To compute nonstudent perception of (M - a staff member):
	say "[speech style of M]'You! Where is your armband?!'[roman type][line break][big he of M] takes an aggressive stance.";
	anger M.

To compute (M - a staff member) reacting to armband replacement:
	if M is in the location of the player, say "[ArmbandCalming of M]";
	calm M.

To say ArmbandCalming of (M - a staff member):
	if M is unfriendly, say "[BigNameDesc of M] calms down.".

To compute toilet reaction of (M - a staff member):
	if diaper quest is 1:
		say "[BigNameDesc of M] claps and smiles whilst proudly watching you![line break][speech style of M]'[one of]Well done, you made it[or]Good [boy of the player][or]Who's a big [boy of the player][in random order]!'";
	otherwise:
		say "[BigNameDesc of M] watches you almost unblinkingly, as if supervising you![line break][speech style of M]'[one of]Good [boy of the player]s don't need privacy[or]Good, your exhibitionism is coming along nicely[then at random]!'";
	say "[roman type][line break][strongHumiliateReflect]".

To say NastyTrapReactFlav of (M - a staff member):
	say "[BigNameDesc of M] [one of]looks very pleased[or]cackles to [himself of M][or]grins widely[in random order].[line break][speech style of M]'[one of]And thus, progress is made.'[or]I have to give you an A+ for effort.'[in random order][roman type][line break]".

Part - Protection

To compute (M - a staff member) protecting against (X - a monster):
	if the health of X < the maxhealth of X:
		say "[speech style of M]'[if X is staff member]Another rebellion?!'[otherwise]NO FIGHTING! BOTH OF YOU ON THE GROUND!'[end if][roman type][line break][BigNameDesc of M] turns aggressive.";
		anger M;
	otherwise:
		say "[BigNameDesc of M] seems to be watching you out of the corner of [his of M] eye.";

To compute interaction of (M - a staff member):
	if M is undefeated and M is not caged:
		if armband is not worn and there is fucked-silly alive staff member, compute M protecting against headmistress; [There's a rebellion afoot!]
		otherwise compute protection of M.

To compute (M - a staff member) protecting against (X - nurse): [The nurse assaults the player on the bed, and this shouldn't upset the staff!]
	if armband is not worn, compute M protecting against headmistress. [There's a rebellion afoot!]

To compute (M - a staff member) seeking (D - a direction): [Staff members don't stalk the player around the school.]
	if M is friendly and the player is not in danger:
		distract M;
	otherwise:
		try M going D;
		compute monstermotion reactions of M.

Part - Combat

To make (M - a staff member) expectant: [Staff members do not wait a turn before punishing the player]
	if M is unfriendly and M is not survived, now M is triumphant;
	do nothing.

This is the staff member unique punishment rule:
	if the player is at least partially immobile:
		do nothing;
	otherwise if there is a worn armband: [No staff members have yet been attacked and no students killed]
		compute detention of current-monster;
		repeat with M running through unfriendly staff members:
			calm M;
	otherwise if ex-princess is not guarding: [If ex-princess is guarding we're in the rescue mission fight which has its own unique ending, see "the school rescue fight rule"]
		compute current-monster dungeon locking;
	rule succeeds.

The unique punishment rule of a staff member is usually the staff member unique punishment rule.

Part - Damage

To compute damage reaction of (M - a staff member):
	if M is uninterested or M is friendly or armband is held:
		say "[big he of M] [if M is asleep]wakes up! [big he of M][end if][if armband is held]makes an arcane gesture, and a split second later your [MediumDesc of armband] has vanished![line break][speech style of M]'Traitor! You're going straight to the dungeons after this!'[roman type][line break][otherwise][one of]snarls in[or]growls with[at random] [one of]pain[or]frustration[or]anger[at random].[end if]";
		if armband is held, now armband is in Holding Pen;
		now the sleep of M is 0;
	otherwise:
		say "[big he of M] screams even louder!".

Definition: a staff member is automatically banishable: decide yes. [Will this NPC automatically resolve their disappearance rather than giving the player options on what to do?]
To say BanishFleeFlav of (M - a staff member):
	say DefeatFlav of M.
To compute banishment of (M - a staff member):
	now M is fucked-silly;
	now the health of M is 1;
	if there are things retained by M:
		say "Your [list of things retained by M] [if the number of things retained by M > 1]are[otherwise]is[end if] also left behind.";
		repeat with K running through things retained by M:
			now K is in the location of the player;
			now M is not retaining K;
			now M is not withholding K;
			compute autotaking K;
	if M is not in the school, now M is in School01.

To say DefeatFlav of (M - a staff member):
	say "[BigNameDesc of M] collapses, and [if M is in the school]is left sprawled on the floor. [big he of M] won't be getting up any time soon[otherwise][his of M] body disappears[end if].".

Part - Conversation

To say FirstResponse of (M - a staff member):
	let E be the extra lives of the player;
	say "[speech style of M]'Good [if E is 1]morning[otherwise if E is 2]evening[otherwise if E is 3]afternoon[end if].'[roman type][line break]".

To say RepeatResponse of (M - a staff member):
	let E be the extra lives of the player;
	say "[speech style of M]'Good [if E is 1]morning[otherwise if E is 2]evening[otherwise if E is 3]afternoon[end if], Miss [NameBimbo]'[roman type][line break]".

To say WhoQuestion of (M - a staff member):
	say "[variable custom style]'What do you teach?'[roman type][line break]".

To say WhereQuestion of (M - a staff member):
	say "[variable custom style]'[if the rank of the player <= 1]Where [one of]are we?'[or]am I?'[at random][otherwise]What's the best way to increase my rank?'[end if][roman type][line break]".

To say EscapeQuestion of (M - a staff member):
	say "[variable custom style]'What stuff is there to find deeper in the school?'[roman type][line break]".

To say StoryQuestion of (M - a staff member):
	say "[variable custom style]'What's up with this place?'[roman type][line break]".

To say AdviceQuestion of (M - a staff member):
	say "[variable custom style]'Any advice for an eager student?'[roman type][line break]".

To say WhoAnswer of (M - a staff member):
	say "[speech style of M]'I should clearly be teaching you not to ask stupid questions!'[roman type][line break]".

To say WhereAnswer of (M - a staff member):
	say "[speech style of M]'[if the rank of the player <= 1]Geez, you're pretty far gone, aren't you?'[otherwise]Ranks are earned, and not without effort. It's important you realise that.'[end if][roman type][line break]".

To say EscapeAnswer of (M - a staff member):
	say "[speech style of M]'Wouldn't you like to know.'[roman type][line break]".

To say StoryAnswer of (M - a staff member):
	say "[speech style of M]'This institution has been around longer than any of its members, that's for sure. Its origins are still surrounded in mystery.'[roman type][line break]".

To say AdviceAnswer of (M - a staff member):
	say "[speech style of M]'Don't take off your armband.'[roman type][line break]".

To compute teaching of (M - a staff member):
	say "[speech style of M]'[one of]Is that supposed to be some kind of joke?'[or]Haha, very funny.'[or]Are you trying to insult me or something?'[in random order][roman type][line break]".

To compute friendly drink of (M - a staff member):
	say "[speech style of M]'There is a drinks machine in the Food Hall.'[roman type][line break]".

To decide which number is the annoyance threshold of (M - a staff member):
	decide on 999999.

Part - Teachers

A teacher is a kind of staff member. A teacher has an indexed text called teacher-name. Understand the teacher-name property as describing a teacher.
Definition: a teacher is motionless-when-defeated: decide no.

A sapphire-teacher is a kind of teacher. Understand "sapphire" as a sapphire-teacher.
An emerald-teacher is a kind of teacher. Understand "emerald" as an emerald-teacher.
A ruby-teacher is a kind of teacher. Understand "ruby" as a ruby-teacher.
A pink-diamond-teacher is a kind of teacher. Understand "pink", "diamond" as a pink-diamond-teacher.
A diamond-teacher is a kind of teacher. Understand "diamond" as a diamond-teacher.

To say NameDesc of (M - a teacher):
	say "[input-style][teacher-name of M][roman type]".
To say BigNameDesc of (M - a teacher):
	say "[input-style][teacher-name of M][roman type]".
To say FuckerDesc of (M - a teacher):
	say teacher-name of M.
To say BigFuckerDesc of (M - a teacher):
	say teacher-name of M.
To say ShortDesc of (M - a teacher):
	say teacher-name of M.
To say MediumDesc of (M - a teacher):
	say "teacher [teacher-name of M]".

To say DismissalRequestVixen of (M - a staff member):
	say "'[if the player is a nympho and diaper quest is 0]Look! Over there! Those students are having unauthorised sex[otherwise if the player is a nympho]Look! Over there! That student needs a diaper change[otherwise if the intelligence of the player < 6]Look, over there! A distraction[otherwise][one of]Quick, quick, there's a fight going on over there[or]We need a teacher! Some students are getting violent! Over there[in random order][end if]!'".

To say DismissalResponseVixen of (M - a staff member):
	say "[speech style of M]'[if M is interested]Is that meant to be a joke?'[otherwise]What?! I'm on my way! YOU OVER THERE! COME HERE AT ONCE!'[end if][roman type][line break]".

To decide which number is the DismissalPowerToilet of (M - a staff member):
	if the rank of the player > 3 or the diaper-duration of headmistress > 0, decide on -100;
	if the rank of the player <= 1, decide on 100;
	decide on 2.

To say DismissalResponseToilet of (M - a staff member):
	say "[speech style of M]'[if M is interested]Oh come on dear, I don't think you're responsible enough to be allowed to do that unsupervised[otherwise if diaper quest is 0]You should work on your exhibitionism. Peeing in front of people can be very exciting, you know[otherwise]Okay, well done on making it to the potty in time, darling[end if].'[roman type][line break]".

To say ToiletPeeReaction of (M - a staff member):
	if diaper quest is 0:
		say "[BigNameDesc of M] touches [himself of M] as [he of M] watches.[line break][speech style of M]'[one of]Adorable[or]There's a good little exhibitionist[or]How lewd[in random order].'[roman type][line break]";
	otherwise if the diaper-duration of headmistress > 0:
		say "[BigNameDesc of M] frowns.[line break][speech style of M]'In the future, I'll give you detention, probably.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] [one of]claps [his of M] hands[or]smiles caringly[or]applauds[then at random].[line break][speech style of M]'[one of]Great job[or]There's a good little grown-up[or]Using the potty like a big [boy of the player]! Great job[in random order], [honey of M].'[roman type][line break]".

To decide which number is the DismissalPowerBursting of (M - a staff member):
	if the rank of the player > 3 or the diaper-duration of headmistress > 0, decide on -100;
	decide on 2.

To say DismissalResponseBursting of (M - a staff member):
	if there is a worn diaper:
		say "[speech style of M]'[if M is interested]Well go ahead, I'm not stopping you[otherwise]Hmm, I'll allow you some privacy this time[end if]. Barely continent [boy of the player]s like you need to learn to use your nappies in front of people without being embarrassed about it.'[roman type][line break]";
	otherwise if diaper quest is 1:
		say "[speech style of M]'Well this is why you should be kept in nappies, [honey of M]. [if M is interested]I'm afraid it's important that if you wet yourself before you can make it to the potty, I'm here to witness it and inform the Headmistress.'[otherwise]Now run along to the toilet. I hope next time I see you, you've changed your mind in that department.'[end if][roman type][line break]";
	otherwise:
		say "[speech style of M]'[if M is interested]I think I'd like to see that[otherwise]I presume you know where the toilets are[end if].'[roman type][line break]".

To say DismissalResponseStalker of (M - a staff member):
	say DismissalResponseDefault of M.

To say DismissalResponseDefault of (M - a staff member):
	say "[speech style of M]'I beg your pardon, young one?! I will tell you when you're allowed to proceed unsupervised in these halls[if M is not interested]. Now run along before I change my mind[end if].'[roman type][line break]".

Part - Lessons

A lesson is a kind of object. A lesson has a teacher called lesson-teacher.

class-time is a number that varies. class-time is 1000.

chosen-lesson is an object that varies.

lesson-room is a room that varies.

[Lesson "style guide," lifted from discord

Firstly all classes should have a way to promote both the player and the students. Doesn't need to happen every time but it would be good to have it happen a lot of the time. Secondly I prefer it when classes give some kind of the decision to the player, even if it's just whether to participate in the 'test' at the end or not. But this isn't mandatory.

Sapphire classes should be something that is at least vaguely feasible as being interpreted in how to act like a proper lady.

Emerald classes can be lewd but not involve sex. The focus begins to shift over to being attractive and submissive to dominants, or men. Body modification will be very present here. Maybe one or more lessons to do with latex.

Ruby classes will begin to include sexual acts, including vanilla with real penises. Practising oral on dildos, drinking cum but not from the tap, that sort of thing, and then also there will be a male teacher who does 'practical' sessions.

Pink Diamond classes will take sex to the next level - sex is just the foreplay and the real competition is how you can degrade yourself further during or after sex. For example, snowballing / felching cum from others, wearing used condoms, etc. I imagine that watersports and similar degrading acts go here too. Anal sex probably goes here. Fucking two guys at the same time.

Pure diamond classes (the final level) - I imagine there won't be many of these at all. One would just be some unholy mix of the above, a gangbang (or orgy) with all the worst stuff - felching anal creampies, lots of watersports if enabled, bondage, attempted mass insemination, maybe it's blindfolded, etc.
And the other pure diamond class would be fucking an inhuman beast, or tentacle monster, if enabled.

###Selkie wonders about the possibility of a less extreme option, in which the extreme angle is something like a gangbang that's also viewed via cam of the player's friends and family members? Or streamed live to social media in the real world?
]

An all later time based rule (this is the class-time cooldown rule):
	if class-time < 1000 and armband is not solid gold and (playerRegion is not Hotel or Hotel40 is discovered) and (playerRegion is not Mansion or Mansion32 is discovered): [We use 1000 to represent that the player hasn't been to a class before.] [Players who are in the hotel looking for the warp portal shouldn't be penalised]
		let CS be time-seconds;
		if class-time <= 0 and playerRegion is Woods, now CS is (CS + 1) / 2; [Woods is further away from the school so school time moves slower here.]
		if playerRegion is not School or class-time <= 0, decrease class-time by CS;
		if class-time <= 0 and class-time + CS > 0 and armband is worn:
			say "[bold type]Your [ShortDesc of armband] begins to beep like an alarm clock![line break][variable custom style][one of]Huh?! Does this mean it's time for the next class or something?[or]Time for class again...[stopping][roman type][line break]".

Definition: a lesson (called L) is correctly-situated:
	if lesson-room is School14 and the lesson-teacher of L is sapphire-teacher, decide yes;
	if lesson-room is School18 and the lesson-teacher of L is emerald-teacher, decide yes;
	if lesson-room is School29 and the lesson-teacher of L is ruby-teacher, decide yes;
	if lesson-room is School30 and the lesson-teacher of L is pink-diamond-teacher, decide yes;
	if lesson-room is School32 and the lesson-teacher of L is diamond-teacher, decide yes;
	decide no.

Definition: a teacher is correctly-ranked: decide no.
Definition: a sapphire-teacher is correctly-ranked if armband is sapphire.
Definition: an emerald-teacher is correctly-ranked if armband is emerald.
Definition: a ruby-teacher is correctly-ranked if armband is ruby.
Definition: a pink-diamond-teacher is correctly-ranked if armband is pink diamond.
Definition: a diamond-teacher is correctly-ranked if armband is pure diamond.

Definition: a lesson is correctly-ranked if the lesson-teacher of it is correctly-ranked.

Definition: a lesson is lesson-appropriate: decide yes.

Definition: a lesson (called L) is appropriate:
	if the lesson-teacher of L is emerald-teacher and the breast-enhancement of nurse is not 0 and the lesson-teacher of tits-lesson is alive: [If the player was recently instructed to get a breast enhancement, it takes top priority]
		if L is tits-lesson, decide yes;
		otherwise decide no;
	if the lesson-teacher of L is emerald-teacher and L is not pain-lesson and the lesson-teacher of pain-lesson is alive and (the player is wrist bound or the player is ankle bound or portal gag is worn), decide no; [Most if not all other emerald lessons should let releasing the bondage from the pain lesson take priority]
	if the lesson-teacher of L is alive and the lesson-teacher of L is undefeated and L is lesson-appropriate, decide yes;
	decide no.

Report going north:
	now lesson-room is the location of the player;
	compute potential lesson.

To decide which number is lessonFrequency:
	decide on 150.

totalLessonCount is a number that varies.

To compute potential lesson:
	if lesson-room is a lecture academic room and armband is worn and armband is not solid gold and the armband-print of armband is not "new recruit":
		if debugmode > 0, say "Class time tracker is at [class-time]; less than [lessonFrequency * -3] = detention.";
		if class-time is 1000 or class-time <= 0:
			now chosen-lesson is a random correctly-ranked appropriate lesson;
			if chosen-lesson is not lesson:
				say "ERROR: No lesson currently coded for this class for the player's current state. If this is an early alpha of the school, it's likely that this content just doesn't exist yet! Come back soon. For now, we'll change the timer so that the game thinks you've had a lesson.";
				now class-time is lessonFrequency;
			otherwise if class-time < (lessonFrequency * -3):
				compute detention of lesson-teacher of chosen-lesson;
				now class-time is lessonFrequency;
			otherwise:
				if chosen-lesson is correctly-situated:
					set up chosen-lesson;
					progress quest of next-lesson-quest;
					refresh the clothing-focus-window;
					try looking;
					display focus stuff;
					render buffered stuff;
					if the wont-change of nurse > 0, decrease the wont-change of nurse by 1;
					now class-time is lessonFrequency;
					compute teaching of chosen-lesson;
					increase totalLessonCount by 1;
					let B be (the rank of the player * 3) - the bimbo of the player;
					repeat with C running through worn clothing:
						if the quest of C is next-lesson-quest, increase B by 2;
					if B > 0, increase class-time by B * 60; [Lessons are spaced further apart if the player isn't slutty enough for them]
					if the breast-enhancement of nurse is not 0:
						decrease the breast-enhancement of nurse by 1; [If the player has had a lesson since they were instructed to get a breast enhancement, this should end that side-quest.]
						if the breast-enhancement of nurse is 0, say "[bold type]You realise that you should now be able to visit the nurse again without [him of the nurse] giving you a breast enhancement.[roman type][line break]";
				otherwise:
					say "Your rank is [accessory-colour of armband], so there's no lesson for you here.".

To compute teaching of (L - an object):
	say "BUG - Tried to compute teaching of [L], but it doesn't exist.".

To set up (L - a lesson):
	repeat with M running through monsters in lesson-room:
		regionally place M;
		bore M;
	now the lesson-teacher of L is in lesson-room;
	bore the lesson-teacher of L;
	repeat with M running through alive lesson-appropriate students:
		now M is in lesson-room;
		bore M; [It's important that everyone is bored because otherwise after the lesson they'll all immediately notice the player]
	while the number of students in lesson-room > 5:
		let ST be a random student in lesson-room;
		regionally place ST;
		if ST is not in lesson-room, now the boredom of ST is 0.

Part - Assembly

An assembly is a kind of object.
An assembly has a number called assemblyTime.
Definition: an assembly is active if the assemblyTime of it > 0.
To decide which monster is the assemblyAnnouncer of (A - an assembly):
	decide on headmistress.
Definition: an assembly is eligible: decide no.
Definition: an assembly (called A) is appropriate:
	if A is eligible and the assemblyAnnouncer of A is alive, decide yes;
	decide no.

To set up (A - an assembly):
	repeat with ST running through alive students:
		now ST is in School16;
		now ST is interested;
		now ST is unconcerned;
	now the assemblyAnnouncer of A is in School16;
	now the assemblyAnnouncer of A is interested;
	now the player is in School16;
	compute start of A.

To compute start of (A - an assembly):
	say AssemblyStartFlav of A;
	now the assemblyTime of A is the assemblyTurns of A;
	repeat with M running through monsters in the location of the player:
		say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]".

To decide which number is the assemblyTurns of (A - an assembly):
	decide on 1.

To say AssemblyStartFlav of (A - an assembly):
	say "As you stumble through the warp portal, you find yourself in the assembly hall. A lot of other students are also filing in, and [NameDesc of the assemblyAnnouncer of A] is at the front, ready to lead assembly.".

An all time based rule (this is the assembly computation rule):
	let A be a random active assembly;
	if A is assembly:
		if the player is in School16 and (the assemblyTime of A <= 1 or the player is not in danger):
			execute A;
			decrease the assemblyTime of A by 1;
			if the assemblyTime of A <= 0, conclude A;
		otherwise:
			conclude A. [failsafe]

Check going when the player is in School16 and there is an active assembly:
	say "There seems to be some kind of forcefield preventing you from leaving via the doorway until assembly is over." instead.

Check standing when the player is in School16 and the player is prone and there is an active assembly:
	say "There seems to be some kind of magical force preventing you from standing up until assembly is over." instead.

To execute (A - an assembly):
	say "[speech style of the assemblyAnnouncer of A]'Actually, I've changed my mind, I've got nothing important to say. Run along now, classes are starting soon.'[roman type][line break]";
	conclude A.

To conclude (A - an assembly):
	if the assemblyAnnouncer of A is friendly, satisfy the assemblyAnnouncer of A;
	repeat with ST running through students in the location of the player:
		try ST going south;
		regionally place ST;
		now the boredom of ST is 0;
		now ST is unleashed;
	now the assemblyTime of A is 0.

soiled-diaper-assembly is an assembly.
Definition: soiled-diaper-assembly is eligible if there is a soiled-diaper in the School.
To say AssemblyStartFlav of (A - soiled-diaper-assembly):
	repeat with SD running through soiled-diaper:
		if SD is in the school, now SD is in the location of the player;
	let M be the assemblyAnnouncer of A;
	say "As you stumble through the warp portal, you find yourself in the assembly hall. A lot of other students are also filing in, and [NameDesc of M] is at the front, ready to lead assembly.[line break][speech style of M]'It has come to my attention that one of you has been leaving their filth in my halls.'[roman type][line break][big he of M] is holding up a soiled diaper, which [he of M] then throws on the ground right at your feet.[line break][speech style of M]'That's right, I know who's responsible. I want everyone here to know it too, and to take part in reminding [NameBimbo] of just how bad her diapers smell.'[roman type][line break]".

To decide which number is the assemblyTurns of (A - soiled-diaper-assembly):
	decide on a random number between 2 and 4.

To execute (A - soiled-diaper-assembly):
	let M be the assemblyAnnouncer of A;
	let ST be a random student in the location of the player;
	let SD be a random soiled-diaper in the location of the player;
	say "[BigNameDesc of ST] [one of]smirks[or]laughs[or]harrumphs[or]grimaces[or]grins[in random order] as [he of ST] takes the [MediumDesc of SD] and smushes it into your face until you are forced to breathe the horrible smell. Your [one of]mind reels with shame[or]feeling of self-resentment continues to grow, from the shame[stopping].";
	DelicateUp 1;
	if the assemblyTime of A is 1, say "[speech style of M]'Okay, that's enough. And [NameBimbo], make sure you take your disgusting mess with you this time.'[roman type][line break]With that instruction from [NameDesc of M], the assembly appears to be over.".

egg-assembly is an assembly.
Definition: egg-assembly is eligible if there is an egg in the School and asshole is not actually occupied.
To say AssemblyStartFlav of (A - egg-assembly):
	repeat with SD running through eggs:
		if SD is in the school, now SD is in the location of the player;
	let M be the assemblyAnnouncer of A;
	now the stance of the player is 1;
	say "As you stumble through the warp portal, you find yourself in the assembly hall. A lot of other students are also filing in, and [NameDesc of M] is at the front, ready to lead assembly.[line break][speech style of M]'It has come to my attention that one of you has been using my halls as a dumping ground for their perverse discarded objects.'[roman type][line break][big he of M] points to the table in front of [him of M], upon which [if the number of eggs in the location of the player > 1]are the eggs you left in the school[otherwise]is [NameDesc of a random egg in the location of the player][end if].[line break][speech style of M]'That's right, I know who's responsible. I want everyone here to know it too, and to take part in reminding [NameBimbo] where [his of the player] eggs belong: UP [caps his of the player] ASSHOLE.'[roman type][line break]With a snap of [his of M] fingers, you are on your knees and your [asshole] is exposed to all your peers.";
	repeat with C running through ass covering clothing:
		if C is displacable, now C is crotch-displaced;
		otherwise now C is in the location of the player.

To decide which number is the assemblyTurns of (A - egg-assembly):
	decide on the number of eggs in the location of the player.

To execute (A - egg-assembly):
	let M be the assemblyAnnouncer of A;
	let ST be a random student in the location of the player;
	let SD be a random egg in the location of the player;
	if SD is nothing, let SD be a random held egg;
	if SD is egg:
		say "[BigNameDesc of ST] [one of]smirks[or]laughs[or]harrumphs[or]grimaces[or]grins[in random order] as [he of ST] takes [NameDesc of SD] and pushes it up against your [asshole]. ";
		if SD is small egg:
			say "[big he of ST] pushes it in with a quiet 'pop'.";
			assfill 1 small eggs;
		otherwise if SD is medium egg:
			say "[big he of ST] eases it in with a noisy squelch.";
			assfill 1 medium eggs;
		otherwise:
			say "[big he of ST] slowly forces the massive egg in with a satisfied grunt. It's so big!";
			assfill 1 large eggs;
		now SD is penetrating asshole;
		ruin asshole;
		destroy SD;
	otherwise:
		now the assemblyTime of A is 1;
	say "[one of]You hear amused gasps and giggles from your fellow students[or]Whispers, gasps, and laughter rain down on you from the student body[or]Muttered comments like 'Slut', 'Check the gape!' and '[big he of the player]'s really enjoying that'! rise from all around you, down on the floor on your knees[or]Jeers, catcalls, and gasps match the pointing fingers of your shocked peers[in random order].";
	if the assemblyTime of A is 1, say "[speech style of M]'Okay, that's it for today. And [NameBimbo], make sure you don't leave your disgusting eggs in my halls again.'[roman type][line break]With that instruction from [NameDesc of M], the assembly appears to be over.".

Check squatting when egg-assembly is active:
	say "This doesn't seem like a sensible time to antagonise [NameDesc of headmistress] by doing that." instead.

Check wearing when egg-assembly is active:
	say "This doesn't seem like a sensible time to antagonise [NameDesc of headmistress] by doing that." instead.

Check replacing when egg-assembly is active:
	say "This doesn't seem like a sensible time to antagonise [NameDesc of headmistress] by doing that." instead.

student-furious-assembly is an assembly.
Definition: student-furious-assembly is eligible:
	if headmistress is alive and headmistress is undefeated:
		repeat with ST running through alive students:
			if the favour of ST < the aggro limit of ST - 6:
				decide yes;
	decide no.

To say AssemblyStartFlav of (A - student-furious-assembly):
	let M be headmistress;
	let ST be a random alive student;
	repeat with STT running through alive students:
		if the favour of STT < the aggro limit of STT - 6, now ST is STT;
	say "As you stumble through the warp portal, you find yourself in the assembly hall. A lot of the other students are already here, and [ST] is at the front, talking to [NameDesc of M] with a furious look on [his of ST] face.";
	now ST is unleashed. [This is how we flag to the execute function which student we decided on.]

To execute (A - student-furious-assembly):
	let M be headmistress;
	let ST be a random alive unleashed student;
	say "[BigNameDesc of ST] spits on the ground when [he of ST] sees you.[line break][speech style of ST]'There [he of the player] is. I'm sorry but I just can't take it any more. Every moment of my time here, [NameBimbo] has been trying to make my life miserable. I can't be around [him of the player] any more. If [he of the player] stays, I walk.'[roman type][line break][BigNameDesc of M] has an equally furious frown, and looks from [NameDesc of ST] to you, then back to [him of ST].[line break][speech style of M]'[NameBimbo] is clearly guilty of disturbing the peace in my school. This is a severe crime, on par with inciting a rebellion. I will punish [him of the player] dearly, with a nice long stay in my dungeons.'[roman type][line break]With a snap of [his of M] fingers, you are on your knees and somehow unable to move! You try to protest but you find yourself unable to make any noise![line break][speech style of M]'As for you, [student-name of ST], don't think I have been blind. I am aware of your part in this rivalry; you are not guilt-free. You can have your wish - you are henceforth expelled from this school. For your crimes, I place this curse on you. It shall be active whenever you are within ten miles of my school.'[roman type][line break]With another snap of [his of M] fingers, you watch [NameDesc of ST][']s belly bulge to an insanely huge size! As you watch, [if diaper quest is 1 and diaper messing < 3]a fountain of [urine] spurts from [his of ST] crotch, soiling [his of ST] clothes and quickly leaking to the floor. The [urine] keeps going until [his of ST] belly has completely deflated[otherwise if diaper quest is 1]an insane amount of poop starts to slither its way out of [his of ST] backdoor and into [his of ST] underwear. The giant mess just keeps and keeps coming, blarting and spurting until [his of ST] belly has returned to a normal size[otherwise]fountains of [semen] spurts from [his of ST] mouth and asshole, soiling [his of ST] clothes and quickly leaking to the floor. The [semen] keeps going until [his of ST] belly has completely deflated[end if]! Then in the next instant, [his of ST] belly explodes out to maximum size and it all starts again![line break][speech style of M]'I would find a way to leave my zone of influence, and quickly.'[roman type][line break][BigNameDesc of ST] shrieks, gags, and then waddles from the room as fast as [his of ST] wobbling legs can carry [him of ST], [his of ST] belly emptying and refilling itself repeatedly as [he of ST] does! Once [he of ST] has cleared the room, all eyes return to you.";
	destroy ST;
	compute headmistress dungeon locking.

Part - Detention

Report Showering:
	if the player is in School20 and armband is worn:
		let M be a random staff member in the location of the player;
		if M is nothing and a random number between 1 and 2 is 1, now M is a random alive undefeated teacher;
		if M is monster:
			say "[speech style of M]'Um, NO! No going in the swimming pool without permission!'[roman type][line break]";
			compute detention of M.

detention-turns is a number that varies.

An all later time based rule (this is the detention decay rule):
	if detention-turns > 0, decrease detention-turns by 1.

To compute detention of (M - a staff member):
	now M is in the location of the player;
	let specificDetention be 0;
	let ST be M;
	if (diaper quest is 0 and the player is a december 2019 top donator) or (diaper quest is 1 and the player is a december 2019 diaper donator):
		repeat with S running through students in the location of the player:
			if the health of S < the maxhealth of S, now ST is S;
	if the health of M < the maxhealth of M:
		say GenericDetention of M;
	otherwise if ST is student and there is an appropriate eligible team-predicament:
		say "[BigNameDesc of M] looks from you, to [NameDesc of ST], then back at you.[line break][speech style of M]'I think you two need some time together, so that you can learn to co-exist peacefully...'[roman type][line break]";
		now specificDetention is 1;
		now ST is in School01;
		drag to School01 by M;
		now team-predicament-partner is ST;
		let P be a random appropriate team-predicament;
		now current-predicament is P;
		say "[paragraph break]The warp portal's destination is set to the Extra Credit Zone, and then [NameDesc of team-predicament-partner] is pushed into the warp portal alongside you! You're both going in at the same time!";
		[now the destination of W is the Dungeon;]
		display entire map;
		say "As you go through the portal, you feel your clothing stolen away by some invisible forces!";
		set up predicament status;
		now team-predicament-partner is interested;
		update appearance level;
		now the latest-appearance of team-predicament-partner is the appearance of the player;
		if diaper quest is 1, now the latest-cringe of team-predicament-partner is the cringe appearance of the player;
		now turnsWithSoiledDiaper is 0;
		now the printed name of Predicament01 is "Abandoned Warehouse";
		repeat with R running through predicament rooms:
			totally clean R;
		if the body soreness of the player > 4, now the body soreness of the player is 4;
		execute P;
		increase the times-completed of P by 1;
		now temporaryYesNoBackground is Figure of small image;
		[now predicamentJustDone is true;] [We should probably still let the player jump back in for a trophy if they want to]
	otherwise if class-time < (lessonFrequency * -3):
		say LateDetention of M;
	otherwise:
		say GenericDetention of M;
	if specificDetention is 0:
		if diaper quest is 0 and a random number between 1 and 2 is 1, compute remedial detention of M;
		otherwise compute chair detention of M.

To say LateDetention of (M - a staff member):
	say "[BigNameDesc of M] stares at you. It looks like [he of M] has been waiting for you.[line break][speech style of M]'YOU'RE LATE! Class is already over! It's detention for you, young Miss. Come with me now!'[roman type][line break]".

To say GenericDetention of (M - a staff member):
	say "[BigNameDesc of M] looks furious.[line break][speech style of M]'It[']s DETENTION for you, young Miss. Come with me now!'[roman type][line break]".

dq-staff-detention is a diaper punishment. the priority of dq-staff-detention is 5.

To compute punishment of (P - a dq-staff-detention):
	follow the unique punishment rule of current-monster.

Definition: a dq-staff-detention (called P) is appropriate:
	if current-monster is staff member, decide yes;
	decide no.

Section - Chair Detention

To compute TQChairSetup of (M - a staff member):
	let K be a random worn trousers;
	if K is trousers:
		say "[big he of M] rips your [ShortDesc of K] off of you.";
		destroy K;
	now K is a random worn knickers;
	if K is knickers:
		say "[big he of M] rips your [ShortDesc of K] off of you.";
		destroy K.

To compute DQChairSetup of (M - a staff member):
	let D be a random off-stage disposable diaper;
	if D is nothing, now D is a random disposable diaper;
	summon D;
	say "[big he of M] forces a [ShortDesc of D] around your loins.".

To compute chair detention of (M - a staff member):
	now detention chair is detention-wand;
	now detention-turns is a random number between 15 and 25;
	drag to School13 by M;
	say "[speech style of M]'[if the health of M < the maxhealth of M]We will not allow aggressive behaviour in this school, as you are about to learn the hard way[otherwise if class-time < (lessonFrequency * -3)]If you can't get to class on time then you'll have to catch up the hard way[otherwise]There's only one way you'll learn your lesson, isn't there[end if]. [if diaper quest is 1 and the number of worn diapers is 0]Put on this diaper and sit[otherwise]Sit[end if].'[roman type][line break][big he of M] points to the chair with a vibrating wand fixed in the centre. ";
	if diaper quest is 0 or the number of worn diapers is 0, compute TQChairSetup of M;[in TQ underwear is always removed]
	if (diaper quest is 1 or a random number between 0 and 3 < diaper lover) and the number of worn diapers is 0, compute DQChairSetup of M;
	say "[if the delicateness of the player > 10]You crawl over to the [ShortDesc of detention chair] and pull yourself into it[otherwise if the delicateness of the player > 4][BigNameDesc of M] drags you over to the [ShortDesc of detention chair] and waits as you obediently pull yourself into it[otherwise][BigNameDesc of M] drags you over to the [ShortDesc of detention chair] and forces you into it[end if], [if the delicateness of the player > 10]submissively allowing [him of M] to bind[otherwise]quickly binding[end if] you in place with the straps. ";
	if the player is able to speak:
		say "[if the player is able to speak][line break][speech style of M]'[one of]These are the rules: You must announce out loud whenever you orgasm, and whenever someone speaks to you, you must say [']Thank you for putting me in my place, Sir or Ma'am.[']'[or]I'd tell you the rules, but unfortunately we have been through this before.'[stopping][roman type][line break][end if][big he of M] points to a camera in the upper corner of the room, facing the chair.[line break][speech style of M]'I will be watching. I will release you when I believe you have learned your lesson.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'I will release you when I believe you have learned your lesson.'[roman type][line break]";
	compute mandatory room leaving of M;
	now M is in Holding Pen;
	repeat with N running through alive students:
		deinterest N;
	repeat with N running through alive staff members:
		deinterest N;
	now the stance of the player is 1;
	now detention chair is grabbing the player;
	now detention chair is detention-wand;
	display entire map. [So that the detention thing takes over the map window]

To DetentionChairWait:
	while detention chair is grabbing the player:
		allocate 6 seconds;
		compute extra turn.

An all time based rule (this is the detention chair rule):
	if detention chair is grabbing the player:
		if detention chair is detention-wand:
			compute wand chair detention;
		otherwise:
			compute rem chair detention;
		if detention chair is not grabbing the player, refresh map-window.

To compute wand chair detention:
	repeat with M running through uninterested alive students:
		if the boredom of M is 0, check seeking 1 of M; [NPCs make their way to watch the spectacle]
	if detention-turns > 0:
		say "The magic wand [one of]buzzes powerfully[or]continues to buzz[stopping]!";[possibly add text here describing arousal so far]
		FatigueUp 30;
		stimulate vagina from detention chair; [TODO NEXT: modify detention chair's stimulation value]
	otherwise:
		let M be a random staff member in Holding Pen;
		if M is nothing:
			if headmistress is alive and headmistress is undefeated, now M is headmistress;
			otherwise now M is a random alive undefeated staff member;
		if M is staff member:
			now M is in the location of the player;
			say "[BigNameDesc of M] returns and after looking at your exhausted state gives you a wide smirk. [big he of M] doesn't say anything but just releases you from the bindings before sauntering off.";
			distract M;
		otherwise:
			say "BUG: There's no teacher to summon to release the player. The player will be released anyway so that the game doesn't freeze!";
		if class-time < 0, now class-time is 0;
		dislodge detention chair.

To compute detention chair tease of (M - a monster):
	say "[detention chair tease of M][detention chair tease response of M]";
	now the boredom of M is 300;
	now M is uninterested.

To say detention chair tease of (M - a monster):
	say "[speech style of M]'[one of]Hah! You enjoying yourself there, [honey of M]?'[or]Geez, it's like you get off on humiliation or something.'[or]You must be pretty dumb if you can't even get to class on time.'[in random order][roman type][line break]".

To say detention chair tease of (M - a teacher):
	say "[speech style of M]'[one of]Hmmph. I wouldn't be surprised if I saw you in here again.'[or]Pathetic.'[or]Hah. You're not even worthy of being teased.'[in random order][roman type][line break]".

To say detention chair tease response of (M - a monster):
	if the player is able to speak:[Possibly mention a camera being in the room so low delicateness players have an incentive to obey]
		if the delicateness of the player > 12 or the fatigue of the player > 200:
			if the delicateness of the player <= 12, say "You're just too tired to fight it, and say the words without hesitation.[line break]";[if we say this, it's because the player is really fatigued]
			say "[variable custom style]'Thank you for putting me in my place, [if M is female]Ma'am[otherwise]Sir[end if].'[roman type][line break]";
			say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame.";
			humiliate 60;[it's extra humiliating because you had to thank them]
		otherwise:
			say "[one of]You feel the camera on the edge of your vision, watching you[or]You know the camera is pointing right at you[at random]. Thank [NameDesc of M]? ";
			if the player is bimbo consenting:
				say "[variable custom style]'Thank you for putting me in my place, [if M is female]Ma'am[otherwise]Sir[end if].'[roman type][line break]";
				say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame, unable to look [him of M] in the eye as you [if the delicateness of the player < 3]growl[otherwise if the delicateness of the player < 6]mutter[otherwise]recite[end if] the words.";
				humiliate 75;
			otherwise:
				say "[if the delicateness of the player < 3]You say nothing and stick out your tongue at the camera[otherwise if the delicateness of the player < 6]You avert your eyes from the camera and say nothing[otherwise]You quickly avert your eyes from the camera, trying not to tremble as you purposefully say nothing[end if], fully aware that you've probably just earned an extra thirty seconds on the chair[one of] before you'll be released[or][stopping].";
				increase detention-turns by 2;
	otherwise:
		say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame.";
		humiliate 50.

This is the detention orgasm announcement rule:
	if detention chair is grabbing the player and the player is able to speak:
		if the player is feeling submissive or the fatigue of the player > 350:
			say "You hear the camera in the corner focusing on you, and loudly blurt out the truth. [line break][variable custom style]'[one of]I CAME FROM BEING IN DETENTION!'[or]MY DETENTION PUNISHMENT JUST MADE ME CUM!'[or]ANYONE WHO CAN SEE ME SHOULD KNOW I JUST CAME FROM BEING IN DETENTION!'[in random order][roman type][line break]";
			repeat with M running through reactive monsters:
				say detention orgasm reaction of M;
				humiliate 45;
			humiliate 100;
			decrease detention-turns by a random number between 3 and 10;
		otherwise:
			say "[one of]You can't help but feel like you're being watched right now[or]You know you can't pretend that didn't just happen[or]The camera in the corner is pointing right at you[or]You know the camera was pointing right at you when you came[at random]. Announce that you just came? ";
			if the player is bimbo consenting:
				say "[variable custom style]'[one of]GUESS WHO JUST CAME FROM BEING IN DETENTION!'[or]I[']M A [if diaper quest is 1]NAUGHTY BABY[otherwise]DIRTY SLUT[end if] WHO CAME FROM BEING IN DETENTION!'[or]LOOK AT ME! DETENTION MADE ME CUM!'[or]MY DETENTION PUNISHMENT JUST MADE ME CUM!'[or]ANYONE WHO CAN SEE ME SHOULD KNOW I JUST CAME FROM BEING IN DETENTION!'[in random order][roman type][line break]";[TODO: more interesting + nearby monsters react]
				repeat with M running through reactive monsters:
					say detention orgasm reaction of M;
					humiliate 55;
				humiliate 100;
				decrease detention-turns by a random number between 3 and 10;
			otherwise:
				say "You [if the delicateness of the player < 2]look right at the camera, refusing to say anything[otherwise]look away from the camera and say nothing[end if][if the number of monsters in the location of the player > 0], hoping your silence will prevent anyone around you from catching on[end if], with the knowledge that if the staff watching you through the camera can tell that you came, you've probably just failed to earn any bonus time towards your release.";
				repeat with M running through reactive monsters:
					if (the player is male and penis is exposed and a random number between 1 and 2 is 1) or a random number between 1 and 4 is 1:[it's a lot harder to hide an orgasm when you just jizzed everywhere]
						say detention orgasm reaction of M;
						humiliate 40;
		rule succeeds.
The detention orgasm announcement rule is listed last in the orgasm resolution rules.

To say detention orgasm reaction of (M - a monster):
	say "[speech style of M]'[one of]Wow, so you're really enjoying your punishment THAT much?'[or]What kind of desperate slut actually has an orgasm from something like that?'[or]Is that why you earned yourself a detention? So everyone could watch you cum?'[or]So, you got in trouble on purpose then?'[or]I hope I don[']t get detention after you.'[in random order][roman type][line break][BigNameDesc of M] can't help but watch you.";
	FavourDown M.

To say detention orgasm reaction of (M - a teacher):
	say "[speech style of M]'[one of]If you enjoy the punishment that much, maybe you should be the one to clean the floor when you[']re done.'[or]Pathetic. That wand isn't even on the highest setting.'[or]Honestly, you haven[']t even been in the chair that long.'[in random order][roman type][line break][BigNameDesc of M] rolls [his of M] eyes as [he of M] watches you.".

[
More detention ideas:

Hole
-Player has to work a gloryhole for high level students. (timer)

Tutoring
-Player is paired up with a student of higher or equal rank(or lower rank if absolutely necessary)
-Sex here, maybe?

Conference(maybe this would be better as a thing that happens naturally)
-The player is taken to the headmistress, who contacts someone the player knows (ex, room-mate 1, room-mate 2, room-mate 1 and 2)
-The person comments on the player's appearance somehow, and (maybe) has the chance to mess with the player remotely

]

[player is forced to watch a hypno video]
To compute remedial detention of (M - a staff member):
	now detention chair is detention-remedial;
	now detention-turns is 8;
	drag to School13 by M;
	say "[speech style of M]'[if the health of M < the maxhealth of M]Clearly you need extra curriculum if you believe you have the time to be aggressive with teachers[otherwise]If you can't get to class on time then you'll have to catch up the hard way[end if]. Sit.'[roman type][line break][big he of M] points to the chair in the centre of the room.";
	[if diaper quest is 0 or the number of worn diapers is 0, compute TQChairSetup of M;[in TQ underwear is always removed]
	otherwise compute DQChairSetup of M;]
	say "[if the delicateness of the player > 10]You crawl over to the [detention chair] and pull yourself into it[otherwise if the delicateness of the player > 4][BigNameDesc of M] drags you over to the [detention chair] and waits as you obediently pull yourself into it[otherwise][BigNameDesc of M] drags you over to the [detention chair], cruelly pinching your ear until you pull yourself into it[end if]. [big he of M] quickly straps you in place as a giant screen slowly lowers from the ceiling.[line break][speech style of M]'[one of]This is an advanced class, for YOUR benefit. Pay attention.[or]Pay attention this time.'[stopping][roman type][line break][big he of M] slides a pair of headphones into place over your ears, quickly leaving the room as the screen flickers to life and a [one of]syncopated[or]familiar[stopping] rhythm begins playing.";
	if diaper quest is 0, say "A large, well-lit room fades onto the screen, and the music's volume slowly rises as a gorgeous [if tg fetish > 0]transsexual [end if]pornstar struts in from out of frame, wearing a form-fitting latex dress. [line break][first custom style]'Welcome to my classroom, students. Shut off your minds and let your bodies pay attention, girls.'[roman type][line break]The pulsing, rhythmic effect of the music creates a hypnotic swirling effect that burns itself into your vision, and you suddenly realise how [if the player is male]hard[otherwise if the player is female]wet[otherwise]horny[end if] you've gotten as the screen fades to black and 'Chapter 1' appears in the centre of the frame. You have no choice but to fight off the hypnosis until you're released!";
	otherwise say "PLACEHOLDER";
	compute mandatory room leaving of M;
	now M is in Holding Pen;
	now School13 is bossed;
	now the stance of the player is 1;
	now detention chair is grabbing the player.

To compute rem chair detention:
	if detention chair is grabbing the player:
		if detention-turns > 0:
			let C be a random number between 2 and 40;
			let N be a random number between the sex addiction of the player and (the intelligence of the player * -1);
			say RemHypnoContent;
			if N < -9:
				say "The music thumps relentlessly as you [if the sex addiction of the player < 5]do your best to ignore[otherwise]space out through[end if] the rest of the chapter, heart pounding as you [if the sex addiction of the player < 5]try not to watch[otherwise]watch[end if] the graphic sex on the screen.";
				Arouse 50;
			otherwise if N < -3:
				say "The music thumps relentlessly as you struggle through the rest of the chapter, feeling slight echoes of what the professor's interns are doing to her body.";
				humiliate TRIVIAL-HUMILIATION + TRIVIAL-HUMILIATION;
				Arouse 100;
				FatigueUp 3;
			otherwise if N < 6:
				say "The music washes over you as you [if the sex addiction of the player < 5]reluctantly[otherwise]struggle to[end if] take in the rest of the chapter, feeling echoes of what the professor's interns are doing to her body.";
				humiliate SLIGHT-HUMILIATION;
				Arouse 100;
				FatigueUp 7;
			otherwise:
				say "The music washes over you as [if the intelligence of the player > 10]you attentively take in[otherwise]your mind absorbs[end if] the rest of the chapter, feeling everything the professor's interns are doing to her body.";
				humiliate SLIGHT-HUMILIATION + TRIVIAL-HUMILIATION;
				if a random number between 1 and 4 is 1, RandomAddictUp 1;
				Arouse 300;
				FatigueUp 10;
		otherwise:
			let M be a random staff member in Holding Pen;
			if M is nothing:
				if headmistress is alive and headmistress is undefeated, now M is headmistress;
				otherwise now M is a random alive undefeated staff member;
			if M is staff member:
				now M is in the location of the player;
				say "The camera pans over the professor's body, zooming in [if bukkake fetish is 1]on the cum plastered all over her face[otherwise if diaper quest is 0]on her gaping holes[otherwise]PLACEHOLDER[end if] as the hypnotic pattern finally fades and the syncopated rhythm winds down. [line break][first custom style]'That's all for today ladies. Study hard!'[roman type][line break]The screen flickers off, and a few moments pass before [NameDesc of M] re-enters the room and frees you from your bindings.";
				distract M;
				compute room leaving of M;
				regionally place M;
				now the location of the player is not bossed;
			otherwise:
				say "BUG: There's no teacher to summon to release the player. The player will be released anyway so the game doesn't freeze!";
			if class-time < 0, now class-time is 0;
			now detention chair is not grabbing the player.

To say RemHypnoContent:
	if diaper quest is 0, say "[one of]The camera pans over the professor's body as she's being spit-roasted by two of her interns. [line break][first custom style]'Mnaa mun humnd mnurphrmr.'[roman type][line break][or]The camera zooms in on the professor's asshole as three of her interns pound her at once.[line break][first custom style]'Your sphincter is a muscle, ladies. Always be tight for your man, but never too tight for more!'[roman type][line break][or]The camera zooms in on the professor's face, following the lines of spit ruining her makeup as her interns take turns fucking her face.[line break][first custom style]'Glk! Glk! Glk! Glk!'[roman type][line break][or]The camera zooms in as the professor's interns take turns smacking her in the face. She grins straight into the camera as her hands deftly pump their cocks.[line break][first custom style]'You're always happy to be used, ladies. Only frown because it's over.'[roman type][line break][or]The camera pans slowly as the professor rides one of her interns, zooming in [if tg fetish > 0]on her hand as she rapidly pumps her own cock[otherwise]on her hand as she plays with her clit[end if].[line break][first custom style]'Only pleasure during his pleasure, ladies.'[roman type][line break][in random order]";
	otherwise say "PLACEHOLDER".

Staff Framework ends here.
