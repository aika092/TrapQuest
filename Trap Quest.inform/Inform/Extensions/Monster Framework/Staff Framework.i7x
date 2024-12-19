Staff Framework by Monster Framework begins here.

A staff member is a kind of monster. A staff member is intelligent. A staff member is usually female.

Definition: a staff member is controlling: decide no. [Will they grab onto subduing clothing e.g. a clitoris lead?]

Definition: a staff member is a generic-unlocker: decide yes.

Definition: a staff member is motionless-when-defeated: decide yes.

Definition: a staff member is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

To compute monstermotion of (M - a staff member):
	if playerRegion is not school and M is undefeated:
		say "BUG: [BigNameDesc of M] has followed the player out of the school. Please report along with a description of what recently happened. Region: [playerRegion]; Location: [location of M]; Player location: [location of the player].";
		now M is in School01;
	otherwise if a random number between 1 and 4 < the number of staff member in the location of the player or (the player is at least partially immobile and (a random number between 1 and 2 is 1 or there is a teacher in the location of the player)):
		compute room leaving of M.

[Definition: a staff member is messy:
	if it is diaper-enslaved and diaper messing >= 6, decide yes;
	decide no.]

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
To decide which number is the bimbo tolerance of (M - a staff member):
	decide on 100. [If we don't make this prohibitively high, there can be some weird difficult-to-debug outcomes surrounding the overriding of uniquely unfriendly above, where the NPC is objectifying but friendly, and somehow attacking while friendly.]
To decide which number is the bab tolerance of (M - a staff member):
	decide on 100.

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
	interest M;
	calm M;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if detention chair is grabbing the player:
		compute detention chair tease of M;
	otherwise if armband is worn and playerRegion is school:
		unless there is a currently-in-progress assembly:
			compute student perception of M;
	otherwise:
		compute nonstudent perception of M.

To FavourDown (M - a staff member) by (N - a number):
	if latest-top-malfunction is not 0 and M is reactive, now latest-top-malfunction is earnings; [If an intelligent interested NPC has lost favour with the player for whatever reason that probably means they would have seen a nip slip if one existed. So we'll say one didn't exist.]
	if N > 0 and armband is not worn, decrease the favour of M by N.

To compute student perception of (M - a staff member):
	if the diaper-duration of M > 0 and the number of worn diaper is 0:
		say "[big he of M] swiftly walks up to you and holds [if diaper messing < 3]a hand to the front[otherwise]hands to the front and back[end if] of your crotch, pushing firmly to get a good feel.[line break][speech style of M]'HEY! Where is your diaper?! You're in big trouble, you naughty baby!'[roman type][line break]";
		anger M;
	otherwise if the bladder of M >= 1000 and M is able to use a free use urinal:
		compute free use urinal perception of M;
	otherwise if the diaper-duration of M > 0:
		compute diaper check of M;
	otherwise if M is male and M is groping:
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
	if M is undefeated:
		if diaper quest is 1:
			say "[BigNameDesc of M] claps and smiles whilst proudly watching you![line break][speech style of M]'[one of]Well done, you made it[or]Good [boy of the player][or]Who's a big [boy of the player][in random order]!'";
		otherwise:
			say "[BigNameDesc of M] watches you almost unblinkingly, as if supervising you![line break][speech style of M]'[one of]Good [boy of the player]s don't need privacy[or]Good, your exhibitionism is coming along nicely[then at random]!'";
		say "[roman type][line break][strongHumiliateReflect]".

To compute diaper mess reaction of (M - a staff member):
	say "[BigNameDesc of M] [one of]smiles[or]bites [his of M] lip[or]smirks knowingly[then at random] while watching you silently.[roman type][line break][strongHumiliateReflect]".

To say ClothesPeeReaction of (M - a staff member):
	if M is interested:
		if diaper quest is 1:
			if M is friendly:
				say "[BigNameDesc of M] [one of]shakes [his of M] head[or]tuts disappointedly[at random].[line break][speech style of M]'[one of]Should have worn a diaper[or]Learning your lesson the hard way, I see[or]Well, that must be pretty embarrassing. You could have saved yourself the humiliation if you'd just worn a diaper[in random order].'[roman type][line break]";
			otherwise:
				say "[BigNameDesc of M] smirks as [he of M] watches you.";
		otherwise:
			say "[BigNameDesc of M] [one of]smirks[or]grins[or]smiles[at random], as if [he of M] finds it [one of]hot[or]endearing[or]cute[at random].";
	otherwise:
		say "[BigNameDesc of M] doesn't look at you directly or say anything, so it's hard to gauge [his of M] reaction.".

To say NastyTrapReactFlav of (M - a staff member):
	say "[BigNameDesc of M] [one of]looks very pleased[or]cackles to [himself of M][or]grins widely[in random order].[line break][speech style of M]'[one of]And thus, progress is made.'[or]I have to give you an A+ for effort.'[in random order][roman type][line break]".

To compute boring spit reaction of (M - a staff member):
	say "[BigNameDesc of M] smirks [one of]at you[or]subtly[or]and looks right at you[in random order]. [slightHumiliateReflect]".

To compute disgusting spit reaction of (M - a staff member):
	compute boring spit reaction of M.

Part - Protection

To reset staff boredom: [when the player attacks a student, staff members shouldn't stay bored in the same room]
	repeat with M running through uninterested staff members in the location of the player:
		deinterest M; [resets boredom to 0]
		check perception of M.

To compute (M - a staff member) protecting against (X - a monster):
	if the health of X < the maxhealth of X or X is wrangling a body part:
		say "[speech style of M]'[if X is staff member]Another rebellion?!'[otherwise]NO FIGHTING! BOTH OF YOU ON THE GROUND!'[end if][roman type][line break][BigNameDesc of M] turns aggressive.";
		anger M;
	otherwise:
		say "[BigNameDesc of M] seems to be watching you out of the corner of [his of M] eye.";

To compute interaction of (M - a staff member):
	if M is undefeated and M is not caged:
		if armband is not worn and there is fucked-silly alive staff member:
			compute M protecting against headmistress; [There's a rebellion afoot!]
		otherwise if the player is in danger:
			compute protection of M;
		otherwise if the current-errand of M is completed:
			compute errand completion of M.

To compute (M - a staff member) protecting against (X - nurse): [The nurse assaults the player on the bed, and this shouldn't upset the staff!]
	if armband is not worn, compute M protecting against headmistress. [There's a rebellion afoot!]

To compute (M - a staff member) seeking (D - a direction): [Staff members don't stalk the player around the school in normal circumstances.]
	if the friendly boredom of M >= 0 and M is interested and M is friendly and the player is not in danger:
		distract M;
	otherwise:
		blockable move M to D;
		compute monstermotion reactions of M.

Part - Combat

To make (M - a staff member) expectant: [Staff members do not wait a turn before punishing the player]
	if M is unfriendly and M is not survived, now M is triumphant;
	do nothing.

This is the staff member unique punishment rule:
	if the player is at least partially immobile and current-monster is not wrangling a body part: [Otherwise the staff member just holds a defeated wrangled player forever]
		do nothing;
	otherwise if there is a worn armband: [No staff members have yet been attacked and no students killed]
		if the assemblyCount of locked-toilets-shame-assembly > 0 and diaper lover > 0 and the number of worn diapers is 0:
			compute nurse diapering of current-monster;
		otherwise:
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
		say CombatProvokedReaction of M;
		if armband is held, now armband is in Holding Pen;
		now the sleep of M is 0;
	otherwise:
		say "[big he of M] screams even louder!".

To say CombatProvokedReaction of (M - a staff member):
	say "[big he of M] [if M is asleep]wakes up! [big he of M][end if][if armband is held]makes an arcane gesture, and a split second later your [MediumDesc of armband] has vanished![line break][speech style of M]'Traitor! You're going straight to the dungeons after this!'[roman type][line break][otherwise][one of]snarls in[or]growls with[at random] [one of]pain[or]frustration[or]anger[at random].[end if]";

Definition: a staff member is automatically banishable: decide yes. [Will this NPC automatically resolve their disappearance rather than giving the player options on what to do?]
To say BanishFleeFlav of (M - a staff member):
	say DefeatFlav of M.
To compute banishment of (M - a staff member):
	now M is fucked-silly;
	now the health of M is 1;
	[-- First, if the person has it, drop an intensely personal item --]
	compute maybe drop dick by M;
	if there are things carried by M:
		say "Your [list of things carried by M] [if the number of things carried by M > 1]are[otherwise]is[end if] also left behind.";
		repeat with K running through things carried by M:
			now K is in the location of the player;
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

To decide which number is the freebie-reluctance of (M - a staff member):
	decide on 99.


Part - Teachers

A teacher is a kind of staff member. A teacher has a text called teacher-name. Understand the teacher-name property as describing a teacher.
Definition: a teacher is motionless-when-defeated: decide no.

A sapphire-teacher is a kind of teacher. Understand "sapphire" as a sapphire-teacher.
An emerald-teacher is a kind of teacher. Understand "emerald" as an emerald-teacher.
A ruby-teacher is a kind of teacher. Understand "ruby" as a ruby-teacher.
A pink-diamond-teacher is a kind of teacher. Understand "pink", "diamond" as a pink-diamond-teacher.
A diamond-teacher is a kind of teacher. [Understand "diamond" as a diamond-teacher.]

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

To say ToiletReactionFlav of (M - a staff member):
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


To say MasturbationAfterFlav of (M - a teacher):
	say "After this [he of M] seems satisfied, and [if refractoryperiod > 0]flexes [his of M] wrist muscles in pride.[otherwise if the player is a bit horny][MasturbationTeaseFlav of M][otherwise]pulls back.[end if][line break][speech style of M]'Right, run along now!'[roman type][line break][if hot-tub is in the location of M]It doesn't seem like [he of M] is going to let you stay here.[end if]".

To compute masturbation aftermath of (M - a teacher):
	say MasturbationAfterFlav of M;
	dislodge M;
	FavourUp M;
	say MasturbationAftermath of M;
	calm M.

To say conventional greeting of (M - a teacher):
	say "'Hi [if M is presenting as male]Sir[otherwise]Miss[end if]. Do you have a minute?'";

To consider angry punishment of (M - a staff member):
	if the player is getting lucky:
		say AngryForgiveness of M;
		say GotLuckyFlav;
	otherwise:
		compute angry punishment of M.

To say AngryForgiveness of (M - a staff member):
	say "[one of][speech style of M]'I should punish you, but I have a busy day today.'[roman type][line break][or][speech style of M]'You deserve a punishment for that... But I'm on my break right now. So I'll let you off, this one time.'[roman type][line break][in random order]".

Part - Lessons

A lesson is a kind of object. A lesson has a teacher called lesson-teacher.

To say LessonTitle of (L - a lesson):
	say "Unnamed lesson with [NameDesc of lesson-teacher of L]".

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

Selkie wonders about the possibility of a less extreme option, in which the extreme angle is something like a gangbang that's also viewed via cam of the player's friends and family members? Or streamed live to social media in the real world?
]

An all later time based rule (this is the class-time cooldown rule):
	if class-time < 1000 and armband is not solid gold and (playerRegion is not Hotel or Hotel40 is discovered) and (playerRegion is not Mansion or Mansion32 is discovered): [We use 1000 to represent that the player hasn't been to a class before.] [Players who are in the hotel looking for the warp portal shouldn't be penalised]
		let CS be time-seconds;
		if playerRegion is not School or class-time <= 0, decrease class-time by CS;
		if armband is worn:
			let LF1 be lessonFrequency * -1;
			let LF2 be lessonFrequency * -2;
			let LF3 be lessonFrequency * -3;
			let LF4 be lessonFrequency * -4;
			if class-time <= 0 and class-time + CS > 0:
				say "[bold type]Your [ShortDesc of armband] begins to beep like an alarm clock![line break][variable custom style][one of]That must be my first reminder that I need to return to class...[or]Time for class again...[stopping][roman type][line break]";
			otherwise if class-time <= LF1 and class-time + CS > LF1:
				say "[bold type]Your [ShortDesc of armband] beeps like an alarm clock again![line break][variable custom style]That's the 2nd beep. If it beeps a 5th time, I get detention.[roman type][line break]";
			otherwise if class-time <= LF2 and class-time + CS > LF2:
				say "[bold type]Your [ShortDesc of armband] beeps like an alarm clock again![line break][variable custom style]That's the 3rd beep. If it beeps a 5th time, I get detention.[roman type][line break]";
			otherwise if class-time <= LF3 and class-time + CS > LF3:
				say "[bold type]Your [ShortDesc of armband] beeps like an alarm clock again![line break][variable custom style]That's the 4th beep. If it beeps a 5th time, I get detention.[roman type][line break]";
			otherwise if class-time <= LF4 and class-time + CS > LF4:
				say "[bold type]Your [ShortDesc of armband] beeps like an alarm clock again![line break][variable custom style]That's the 5th beep. I'm in trouble...[roman type][line break]".

Definition: a lesson (called L) is correctly-situated:
	if lesson-room is School14 and the lesson-teacher of L is sapphire-teacher, decide yes;
	if lesson-room is School18 and the lesson-teacher of L is emerald-teacher, decide yes;
	if lesson-room is School29 and the lesson-teacher of L is ruby-teacher, decide yes;
	if lesson-room is School30 and the lesson-teacher of L is pink-diamond-teacher, decide yes;
	if lesson-room is School32 and the lesson-teacher of L is diamond-teacher, decide yes;
	decide no.

Definition: a teacher is correctly-ranked: decide no.
Definition: a sapphire-teacher is correctly-ranked:
	if armband is sapphire, decide yes;
	decide no.
Definition: an emerald-teacher is correctly-ranked:
	if armband is emerald, decide yes;
	decide no.
Definition: a ruby-teacher is correctly-ranked:
	if armband is ruby, decide yes;
	decide no.
Definition: a pink-diamond-teacher is correctly-ranked:
	if armband is pink diamond, decide yes;
	decide no.
Definition: a diamond-teacher is correctly-ranked:
	if armband is pure diamond, decide yes;
	decide no.

Definition: a lesson is correctly-ranked:
	if the lesson-teacher of it is correctly-ranked, decide yes;
	decide no.

Definition: a lesson is lesson-appropriate: decide yes.
To decide which number is the min-students of (L - a lesson):
	decide on 1.

Definition: a lesson (called L) is appropriate:
	if the lesson-teacher of L is emerald-teacher and the breast-enhancement of nurse < 0 and the lesson-teacher of tits-lesson is alive: [If the player was recently instructed to get a breast enhancement and went through with it, it takes top priority]
		if L is tits-lesson, decide yes;
		otherwise decide no;
	if condom-timer of condom-lesson > 0:
		if L is condom-lesson, decide yes;
		otherwise decide no;
	if ((diaper quest is 1 and the lesson-teacher of L is emerald-teacher) or (diaper quest is 0 and the lesson-teacher of L is ruby-teacher)) and L is not pain-lesson and the lesson-teacher of pain-lesson is alive and (the player is wrist bound or the player is ankle bound or portal gag is worn), decide no; [Most if not all other emerald lessons should let releasing the bondage from the pain lesson take priority]
	if the lesson-teacher of L is alive and the lesson-teacher of L is undefeated and the number of alive lesson-appropriate students >= the min-students of L and L is lesson-appropriate, decide yes;
	decide no.

Report going north:
	now lesson-room is the location of the player;
	compute potential lesson.

To decide which number is lessonFrequency:
	decide on 225 * slower timers.

lessonJustDone is initially false.
totalLessonCount is a number that varies.

To compute potential lesson:
	if lesson-room is a lecture academic room and armband is worn and armband is not solid gold and the armband-print of armband is not "new recruit":
		if debugmode > 0:
			say "Class time tracker is at [class-time]; less than [lessonFrequency * -4] = detention.";
		now chosen-lesson is a random correctly-ranked appropriate lesson;
		if cheatsenabled:
			if class-time >= lessonFrequency * -4:
				let LL be the list of correctly-ranked appropriate lessons;
				if the number of entries in LL > 1:
					say "There are [number of entries in LL] available lessons. Because you have enabled [if debugmode > 0]debug[otherwise]cheater[end if] mode, you have the option to choose a specific one.[line break]";
					let N be 1;
					reset multiple choice questions;
					repeat with L running through LL:
						set numerical response N to "[LessonTitle of L]";
						increase N by 1;
					set numerical response 0 to "randomise normally";
					compute multiple choice question;
					if player-numerical-response is not 0, now chosen-lesson is entry player-numerical-response in LL;
		if class-time < (lessonFrequency * -4): [arrived too late for class]
			compute detention of lesson-teacher of chosen-lesson;
			now class-time is -1;
		otherwise:
			now genericAssemblyHappened is false;
			if lessonJustDone is true and a random number between 1 and 2 is 1: [player is trying to do several lessons in a row, which means they might get a random annoying assembly]
				let A be a random appropriate assembly; [first let's look at the really cool and specific assemblies]
				if A is not assembly: [if there are no cool specific assemblies, we look for a generic assembly]
					now genericAssemblyTime is true;
					let A be a random appropriate assembly;
					now genericAssemblyTime is false;
				if A is assembly: [execute the assembly and tell the code below not to run]
					now genericAssemblyHappened is true;
					say WalkOverStartFlav of A;
					set up A;
					compute start of A;
			if genericAssemblyHappened is false: [only happens if we didn't have an assembly]
				if chosen-lesson is not lesson: [there's no eligible lessons for some reason]
					compute solo lesson;
				otherwise:
					if chosen-lesson is correctly-situated:
						set up chosen-lesson;
						try looking;
						display focus stuff;
						render buffered stuff;
						compute early lesson progression stuff;
						compute teaching of chosen-lesson;
						compute late lesson progression stuff;
						temporaryYesNoBackgroundReset;
					otherwise:
						say "Your rank is [accessory-colour of armband], so there's no lesson for you here.".

To compute early lesson progression stuff:
	if the wont-change of nurse > 0, decrease the wont-change of nurse by 1;
	if predicamentJustDone is true and (class-time is 1000 or class-time < 0), now predicamentJustDone is false;
	now lessonJustDone is true.

To compute late lesson progression stuff:
	increase totalLessonCount by 1;
	now class-time is lessonFrequency / slower timers;
	if student-interaction-time > 10, now student-interaction-time is 10; [soon, a student might want something from you]
	[let B be (the rank of the player * 3) - the bimbo of the player;
	if B > 0, increase class-time by B * 60;] [Lessons are spaced further apart if the player isn't slutty enough for them]
	if the breast-enhancement of nurse is not 0:
		decrease the breast-enhancement of nurse by 1; [If the player has had a lesson since they were instructed to get a breast enhancement, this should end that side-quest.]
		if the breast-enhancement of nurse is 0, say "[bold type]You realise that you should now be able to visit the nurse again without [him of the nurse] giving you a breast enhancement.[roman type][line break]".

To compute teaching of (L - an object):
	say "BUG - Tried to compute teaching of [L], but it doesn't exist.".

To set up (L - a lesson):
	optimise students;
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

To compute solo lesson:
	let L be the location of the player;
	let M be yourself;
	if L is School14 and armband is sapphire:
		now M is a random alive undefeated sapphire-teacher;
	otherwise if L is School18 and armband is emerald:
		now M is a random alive undefeated emerald-teacher;
	otherwise if L is School29 and armband is ruby:
		now M is a random alive undefeated ruby-teacher;
	otherwise if L is School30 and armband is pink diamond:
		now M is a random alive undefeated pink-diamond-teacher;
	otherwise if L is School32:
		now M is a random alive undefeated diamond-teacher;
	if M is nothing and headmistress is alive and headmistress is undefeated, now M is headmistress;
	if M is nothing, now M is a random alive undefeated teacher;
	if M is nothing:
		say "There is nobody available to run your lesson.";
	otherwise if M is yourself:
		say "Your rank is [accessory-colour of armband], so there's no lesson for you here.";
	otherwise:
		compute early lesson progression stuff;
		compute solo lesson of M;
		compute late lesson progression stuff.

To compute solo lesson of (M - staff member):
	repeat with X running through monsters in lesson-room:
		regionally place X;
		bore X;
	now M is in lesson-room;
	bore M;
	say "[BigNameDesc of M] enters the room shortly after you. There's nobody else with [him of M].[line break][speech style of M]'Looks like you're my only student today. We'll have to get creative with your lesson, then.'[roman type][line break]";
	if armband is solid gold:
		say "[BigNameDesc of M] stretches [his of M] arms.[line break][speech style of M]'You're already solid gold rank, too. Can we just do this another time? I'm tired.'[roman type][line break][BigNameDesc of M] shoos you away.";
	otherwise if diaper quest is 0 and armband is ruby and gloryhole is in School19 and face is not actually occupied:
		compute gloryhole lesson of M;
	otherwise:
		say "[BigNameDesc of M] stretches [his of M] arms.[line break][speech style of M]'Ugh, I can't think of anything right now. Let's just pretend this went well. Here's your coveted promotion.'[roman type][line break][BigNameDesc of M] waves a hand in your direction.";
		if armband is pure diamond, now armband is solid gold;
		if armband is pink diamond, now armband is pure diamond;
		if armband is ruby, now armband is pink diamond;
		if armband is emerald, now armband is ruby;
		if armband is sapphire, now armband is emerald;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		now the armband-print of armband is "solo student";
		say ClothingDesc of armband.

To compute gloryhole lesson of (M - a monster):
	say "[speech style of M]'[if M is staff member]Let's test your cocksucking skills[otherwise]This is where a worthless piece of shit like you belongs[end if].'[roman type][line break][BigNameDesc of M] leads you to the Changing Rooms, and forces you to your knees.";
	drag to School19 by M;
	now the stance of the player is 1;
	say "Your face is brought near to the bottom hole, and suddenly a magic force grips you, pulling your mouth up against the hole. Within moments, a large [if the oral sex addiction of the player > 5]juicy [end if][manly-penis] pushes through, into your mouth. It's easily long enough to hit the back of your throat, causing you to gag[if the oral sex addiction of the player > 7] slightly[end if].";
	now gloryhole is penetrating face;
	now gloryhole is grabbing the player;
	now busy is 1;
	now the turns trapped of gloryhole is 0;
	if M is student, say "[speech style of M]'Don't you dare resist, now, you cock-hungry slut.'[roman type][line break]";
	say "Do you want to resist? ";
	if the player is consenting:
		try resisting;
		if M is student:
			say "[BigNameDesc of M] growls.[line break][speech style of M]'You still don't get it, do you? I'm going to keep making your life miserable until you learn your proper place.'[roman type][line break]";
			HappinessDown M;
		otherwise:
			say "[speech style of M]'A poor choice. I see you're not ready for promotion after all.'[roman type][line break]";
	otherwise:
		try submitting;
		if M is staff member:
			say "[speech style of M]'Well done, [he of male-m] seems to like you. I've seen enough already to know you deserve this.'[roman type][line break][BigNameDesc of M] waves a hand in your direction.";
			now armband is pink diamond;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Gloria";
			now the armband-print of armband is "gloryhole guzzler";
			say ClothingDesc of armband;
		otherwise:
			say "[BigNameDesc of M] laughs at you.[line break][speech style of M]'I knew it. You're such a slut.'[roman type][line break][moderateHumiliateReflect][line break][speech style of M]'Have fun now!'[roman type][line break]";
	if M is staff member: [student's `satisfy` function is called in the `compute default bullying` function]
		say "[speech style of M]'Have fun now!'[roman type][line break]";
		satisfy M;
	try M going south.



Part - Assembly

An assembly is a kind of object.
An assembly has a number called assemblyTime. [number of rounds left]
An assembly has a number called assemblyCount. [number of times this assembly has happened]
Definition: an assembly is currently-in-progress:
	if the assemblyTime of it > 0, decide yes;
	decide no.
To decide which monster is the assemblyAnnouncer of (A - an assembly):
	decide on headmistress.
Definition: an assembly is eligible: decide no.
Definition: an assembly (called A) is appropriate:
	if A is eligible and the assemblyAnnouncer of A is alive, decide yes;
	decide no.

A generic-assembly is a kind of assembly.
genericAssemblyTime is initially false. [Sometimes we want to just have any assembly happen]
genericAssemblyHappened is initially false. [Sometimes we need to track this]
Definition: an generic-assembly (called A) is appropriate:
	if genericAssemblyTime is true and A is eligible and the assemblyCount of A is 0 and the assemblyAnnouncer of A is alive, decide yes;
	decide no.


To set up (A - an assembly):
	repeat with ST running through alive students:
		now ST is in School16;
		interest ST;
		now ST is unconcerned;
	now the assemblyAnnouncer of A is in School16;
	now the assemblyAnnouncer of A is interested;
	now the player is in School16;
	increase the assemblyCount of A by 1.

To say WarpPortalStartFlav of (A - an assembly):
	say "As you stumble through the warp portal, you find yourself in the assembly hall. The other students are already here. ".

To say WalkOverStartFlav of (A - an assembly):
	let M be a random alive undefeated correctly-ranked teacher;
	if M is nothing, now M is a random alive undefeated teacher;
	if M is nothing, now M is a random alive undefeated staff member;
	now M is in the location of the player;
	say "Nobody is here except [M].[line break][speech style of M]'What are you doing here? It's not time for class right now, it's time for assembly first! Quick, come with me!'[roman type][line break][BigNameDesc of M] drags you to the [School16]! The other students are already here. ";
	now M is in School16;

To compute start of (A - an assembly):
	say AssemblyStartFlav of A;
	now the assemblyTime of A is the assemblyTurns of A;
	repeat with M running through monsters in the location of the player:
		if M is not interested, say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]".

To decide which number is the assemblyTurns of (A - an assembly):
	decide on 1.

To say AssemblyStartFlav of (A - an assembly):
	say "[NameDesc of the assemblyAnnouncer of A] steps up onto the podium at the front.".

An all time based rule (this is the assembly computation rule):
	let A be a random currently-in-progress assembly;
	if A is assembly:
		if the player is in School16 and (the assemblyTime of A <= 1 or the player is not in danger):
			execute A;
			decrease the assemblyTime of A by 1;
			if the assemblyTime of A <= 0, conclude A;
		otherwise:
			conclude A. [failsafe]

Check going when the player is in School16 and there is a currently-in-progress assembly:
	say "There seems to be some kind of force-field preventing you from leaving via the doorway until assembly is over." instead.

Check standing when the player is in School16 and the player is prone and there is a currently-in-progress assembly:
	say "There seems to be some kind of magical force preventing you from standing up until assembly is over." instead.

To execute (A - an assembly):
	say "[speech style of the assemblyAnnouncer of A]'Actually, I've changed my mind, I've got nothing important to say. Run along now, classes are starting soon.'[roman type][line break]";
	conclude A.

To conclude (A - an assembly):
	if the assemblyAnnouncer of A is friendly, satisfy the assemblyAnnouncer of A;
	repeat with ST running through students in School16:
		if ST is in the location of the player, try ST going south;
		regionally place ST;
		now the boredom of ST is 0;
		if ST is unfriendly, deinterest ST;
		otherwise distract ST;
		now ST is unleashed;
	now the assemblyTime of A is 0;
	if genericAssemblyHappened is true:
		now genericAssemblyHappened is false;
		now lessonJustDone is false. [prevents a generic assembly from happening twice in a row]

soiled-diaper-assembly is an assembly.
Definition: soiled-diaper-assembly is eligible:
	if diaper messing >= 7 and there is a soiled-diaper in the School, decide yes;
	decide no.
To say AssemblyStartFlav of (A - soiled-diaper-assembly):
	repeat with SD running through soiled-diaper:
		if SD is in the school, now SD is in the location of the player;
	let M be the assemblyAnnouncer of A;
	say "[line break][speech style of M]'It has come to my attention that one of you has been leaving their filth in my halls.'[roman type][line break][big he of M] is holding up a soiled diaper, which [he of M] then throws on the ground right at your feet.[line break][speech style of M]'That's right, I know who's responsible. I want everyone here to know it too, and to take part in reminding [NameBimbo] of just how bad [his of the player] diapers smell.'[roman type][line break]".

To decide which number is the assemblyTurns of (A - soiled-diaper-assembly):
	decide on a random number between 2 and 4.

To execute (A - soiled-diaper-assembly):
	let M be the assemblyAnnouncer of A;
	let ST be a random student in the location of the player;
	let SD be a random soiled-diaper in the location of the player;
	say "[BigNameDesc of ST] [one of]smirks[or]laughs[or]harrumphs[or]grimaces[or]grins[in random order] as [he of ST] takes the [MediumDesc of SD] and smushes it into your face.";
	slowDelicateUp 1;
	compute MessyDiaperFacesit of SD; [grossness addiction will be handled in here]
	if the assemblyTime of A is 1, say "[speech style of M]'Okay, that's enough. And [NameBimbo], make sure you take your disgusting mess with you this time.'[roman type][line break]With that instruction from [NameDesc of M], the assembly appears to be over.".

egg-assembly is an assembly.
Definition: egg-assembly is eligible:
	if there is an egg in the School and asshole is not actually occupied, decide yes;
	decide no.
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
			if the egg-origin of SD is a thing, add the egg-origin of SD to the small-egg-origins of belly;
		otherwise if SD is medium egg:
			say "[big he of ST] eases it in with a noisy squelch.";
			assfill 1 medium eggs;
			if the egg-origin of SD is a thing, add the egg-origin of SD to the medium-egg-origins of belly;
		otherwise:
			say "[big he of ST] slowly forces the massive egg in with a satisfied grunt. It's so big!";
			assfill 1 large eggs;
			if the egg-origin of SD is a thing, add the egg-origin of SD to the large-egg-origins of belly;
		now SD is penetrating asshole;
		ruin asshole;
		destroy SD;
	otherwise:
		now the assemblyTime of A is 1;
	say "[one of]You hear amused gasps and giggles from your fellow students[or]Whispers, gasps, and laughter rain down on you from the student body[or]Muttered comments like 'Slut', 'Check the gape!' and '[big he of the player]'s really enjoying that'! rise from all around you, down on the floor on your knees[or]Jeers, catcalls, and gasps match the pointing fingers of your shocked peers[in random order].";
	if the assemblyTime of A is 1, say "[speech style of M]'Okay, that's it for today. And [NameBimbo], make sure you don't leave your disgusting eggs in my halls again.'[roman type][line break]With that instruction from [NameDesc of M], the assembly appears to be over.".

Check squatting when egg-assembly is currently-in-progress:
	say "This doesn't seem like a sensible time to antagonise [NameDesc of headmistress] by doing that." instead.

Check wearing when egg-assembly is currently-in-progress:
	say "This doesn't seem like a sensible time to antagonise [NameDesc of headmistress] by doing that." instead.

Check replacing when egg-assembly is currently-in-progress:
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
	say "[ST] is at the front, talking to [NameDesc of M] with a furious look on [his of ST] face.";
	now most-recent-leaver is ST.

To execute (A - student-furious-assembly):
	let M be headmistress;
	let ST be most-recent-leaver;
	say "[BigNameDesc of ST] spits on the ground when [he of ST] sees you.[line break][speech style of ST]'There [he of the player] is. I'm sorry but I just can't take it any more. Every moment of my time here, [NameBimbo] has been trying to make my life miserable. I can't be around [him of the player] any more. If [he of the player] stays, I walk.'[roman type][line break][BigNameDesc of M] has an equally furious frown, and looks from [NameDesc of ST] to you, then back to [him of ST].[line break][speech style of M]'[NameBimbo] is clearly guilty of disturbing the peace in my academy. This is a severe crime, on par with inciting a rebellion. I will punish [him of the player] dearly, with a nice long stay in my dungeons.'[roman type][line break]With a snap of [his of M] fingers, you are on your knees and somehow unable to move! You try to protest but you find yourself unable to make any noise![line break][speech style of M]'As for you, [student-name of ST], don't think I have been blind. I am aware of your part in this rivalry; you are not guilt-free. You can have your wish - you are henceforth expelled from this academy. ";
	if diaper quest is 1 or gloryhole is off-stage, say "For your crimes, I place this curse on you. It shall be active whenever you are within ten miles of my academy.'[roman type][line break]With another snap of [his of M] fingers, you watch [NameDesc of ST][']s belly bulge to an insanely huge size! As you watch, [if diaper quest is 1 and diaper messing < 3]a fountain of [urine] spurts from [his of ST] crotch, soiling [his of ST] clothes and quickly leaking to the floor. The [urine] keeps going until [his of ST] belly has completely deflated[otherwise if diaper quest is 1]an insane amount of poop starts to slither its way out of [his of ST] backdoor and into [his of ST] underwear. The giant mess just keeps and keeps coming, blarting and spurting until [his of ST] belly has returned to a normal size[otherwise]fountains of [semen] spurts from [his of ST] mouth and asshole, soiling [his of ST] clothes and quickly leaking to the floor. The [semen] keeps going until [his of ST] belly has completely deflated[end if]! Then in the next instant, [his of ST] belly explodes out to maximum size and it all starts again![line break][speech style of M]'I would find a way to leave my zone of influence, and quickly.'[roman type][line break][BigNameDesc of ST] shrieks, gags, and then waddles from the room as fast as [his of ST] wobbling legs can carry [him of ST], [his of ST] belly emptying and refilling itself repeatedly as [he of ST] does!";
	otherwise say "Go, leave now.'[roman type][line break][BigNameDesc of ST] looks panicked for a moment, like [he of ST] is expecting further retribution from [NameDesc of headmistress], but nothing comes.[line break][speech style of ST]'I'm just... free to leave? Okay...'[roman type][line break][BigNameDesc of ST] very slowly inches out of the room, as if with every step [he of ST] is entirely sure that [NameDesc of headmistress] is going to change [his of headmistress] mind and do something horrible to [him of ST] the moment [his of ST] foot touches the floor. But nothing happens.";
	say "Once [he of ST] has cleared the room, all eyes return to you.";
	destroy ST;
	compute headmistress dungeon locking.

new-fuckhole-assembly is an assembly.
Definition: new-fuckhole-assembly is eligible:
	if diaper quest is 0 and headmistress is alive and headmistress is undefeated and most-recent-leaver is a student and gloryhole is on-stage and the player is possessing a penis, decide yes;
	decide no.

To say AssemblyStartFlav of (A - new-fuckhole-assembly):
	say "[BigNameDesc of headmistress] casts [his of headmistress] eyes over the crowd of students.".

To execute (A - new-fuckhole-assembly):
	now school-fuckhole is in the location of gloryhole;
	now the fuckhole-person of school-fuckhole is most-recent-leaver;
	if most-recent-leaver is listed in recent-leavers, remove most-recent-leaver from recent-leavers;
	now most-recent-leaver is nothing;
	destroy gloryhole;
	now the fuckhole-rule of school-fuckhole is a random number between 1 and 5;
	if bukkake fetish is 1 and (the fuckhole-rule of school-fuckhole is 2 or the fuckhole-rule of school-fuckhole is 3), now the fuckhole-rule of school-fuckhole is 0;
	if the fuckhole-rule of school-fuckhole is 2:
		let B be a random off-stage fetish appropriate fluid vulnerable bra;
		if B is nothing, now B is random fetish appropriate fluid vulnerable bra;
		now B is in the location of school-fuckhole;
	if the fuckhole-rule of school-fuckhole >= 4, now the buttcondoms of school-fuckhole is 1;
	say "[speech style of headmistress]'I've... ah... recently... [']acquired['] a new fuckhole. It shall be replacing the gloryholes in the changing rooms. You must only use it once per visit to the school. Anyone caught breaking the usage rules will be punished.'[roman type][line break][big he of headmistress] thinks for a moment, and then says[line break][speech style of headmistress][FuckholeRuleDesc][roman type][line break]".

locked-toilets is initially false.
locked-toilets-assembly is an assembly.
Definition: locked-toilets-assembly is eligible:
	if locked-toilets is false and headmistress is alive and headmistress is undefeated and watersports mechanics is 1:
		if genericAssemblyTime is true, decide yes;
		repeat with R running through academic rooms:
			if the urine-puddle of R > 0, decide yes;
	decide no.

To say AssemblyStartFlav of (A - locked-toilets-assembly):
	say "[BigNameDesc of headmistress] casts [his of headmistress] eyes over the crowd of students.".

To execute (A - locked-toilets-assembly):
	now locked-toilets is true;
	now headmistress is carrying academy-toilet-key;
	let L be School01;
	repeat with R running through academic rooms:
		if the urine-puddle of R > 0 and L is not School10, now L is R;
	say "[speech style of headmistress]'It has come to my attention that a puddle of urine was found in the [L]. It would appear that the pupils in this school are in need of some serious bladder training. Therefore, henceforth, until we determine once and for all which of you can hold in your pee and which of you are naughty wetters, using the toilet is a privilege. The toilets will be locked, and you will have to come to me to ask for the key to use them. Furthermore, you must bring a teacher with you when you use the toilet, to act as a witness and to retrieve the toilet key when you are finished. Is that clear?'[roman type][line break]Everyone murmurs assent.[line break][speech style of headmistress]'To be clear, [bold type]you are not allowed to use any other toilet or urinal either - even ones outside of this Academy[speech style of headmistress], and if we catch you, you best believe you'll be in for a world of trouble.'[roman type][line break]Twirling the solitary toilet key on its key ring around [his of headmistress] index finger, [NameDesc of headmistress] marches from the hall.".

Report going when the player is in School10:
	if locked-toilets is false and watersports mechanics is 1: [this is how we get a urine puddle in the first place]
		let ST be a random student in School10;
		if ST is nothing, now ST is a random student in School05;
		if ST is student and the current-rank of ST > a random number between 1 and 2:
			if ST is ditzy student or (diaper quest is 1 and ST is innocent student) or (diaper quest is 0 and ST is nasty student):
				if ST is in School05, try ST going south;
				if ST is innocent student:
					say "[BigNameDesc of ST] is rushing to remove [his of ST] clothes.[line break][speech style of ST]'No no no no no!'[roman type][line break][BigNameDesc of ST] hasn't made it in time, and soils [himself of ST]. There's so much pee that some leaks through the legholes to the ground. [big he of ST] clenches [his of ST] eyes shut and looks away from you.[line break][speech style of ST]'This never happened, okay?'[roman type][line break]";
				otherwise if ST is nasty student:
					say "[BigNameDesc of ST] pulls [his of ST] pussy-flaps open and bucks [his of ST] hips towards you as [he of ST] unleashes a big stream of piss onto the floor.[line break][speech style of ST]'Clean that up me, skank.'[roman type][line break][big he of ST] gives you the middle finger and turns back towards the door.";
				otherwise:
					say "[BigNameDesc of ST] suddenly starts urinating. There's so much that it [if diaper quest is 1]leaks and [end if]flows down to the ground, creating a big puddle. [BigNameDesc of ST] just shrugs.[line break][speech style of ST]'Oh well!'[roman type][line break][big he of ST] gives you a shameless, carefree grin and turns to leave.";
				UrinePuddleUp 6;
				distract ST;
				now ST is moved.

To check school toilet supervision:
	if the player is in School10:
		let M be a random undefeated staff member in the location of the player;
		if M is monster:
			say "[speech style of M]'Now remember to lock it up again, and then give the key back to the [ShortDesc of headmistress].'[roman type][line break]";
			satisfy M;
		otherwise:
			now M is a random undefeated staff member in School05;
			if M is nothing:
				repeat with X running through on-stage undefeated staff members:
					if (X is in School04 or X is in School06 or X is in School16) and a random number between 1 and 2 is 1:
						now M is X;
			if M is a monster:
				if M is not in School05, now M is in School05;
				try M going south;
				say "[M] has caught you using the toilet![line break][speech style of M]'What's this?! You know you aren't allowed to use the toilet without supervision! It's detention for you!'[roman type][line break]";
				compute detention of M;
			otherwise:
				let M be a random student in the location of the player;
				if M is nothing, let M be a random student in School05;
				if M is nothing:
					repeat with X running through on-stage students:
						if (X is in School04 or X is in School06 or X is in School16) and a random number between 1 and 2 is 1:
							now M is X;
				if M is monster:
					if M is not in the location of the player and M is not in School05, now M is in School05;
					if M is in School05:
						try M going south;
						say "[M] has caught you using the toilet!";
					otherwise:
						say "[M]'s eyes widen!";
					let D be the dedication of M;
					if D > 1: [caught in the act]
						FavourDown M;
						interest M;
						if M is friendly:
							say "[speech style of M]'You're supposed to have a teacher supervising you to do that!'[roman type][line break]";
						otherwise:
							let X be a random alive unleashed teacher;
							if X is a monster:
								say "[big he of M] tuts.[line break][speech style of M]'Naughty naughty, breaking the rules. I think you need punishing. Get on your knees and put your head in the toilet, or I'm calling a teacher!'[roman type][line break]Do you let [him of M] bully you?";
								if the player is consenting:
									now the stance of the player is 1;
									compute swirlie of M;
								otherwise:
									now X is in the location of the player;
									say "[speech style of M]'MISS! MISS! Come quick! [NameBimbo] is using the toilet without a teacher!'[roman type][line break]Before you have time to lock the toilet back up, [X] has come running and caught you red-handed holding the key, with the recently flushed toilet behind you.[line break][speech style of M]'It's detention for you, you naughty minx!'[roman type][line break]";
									compute detention of X;
					otherwise: [needs to pee too]
						interest M;
						if M is friendly:
							say "[speech style of M]'You have the key?! [big please], I need to go too!'[roman type][line break]";
							reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
							set numerical response 1 to "Let [him of M] have the key.";
							set numerical response 2 to "Let [him of M] use the toilet, but keep the key and force [him of M] to use the toilet in front of you.";
							set numerical response 3 to "Refuse to let [him of M] use the toilet.";
							if player-numerical-response is 1:
								now academy-toilet-key is carried by M;
								say "[speech style of M]'Thank you so much!'[roman type][line break][big he of M] takes the key, and you turn to make a quick exit to the north.";
								now another-turn-stored-action is going north;
								now another-turn is 1;
								HappinessUp M by 1;
							otherwise if player-numerical-response is 2:
								say "[speech style of M]'This is so embarrassing...'[roman type][line break][BigNameDesc of M] whines, but allows you to watch as [he of M] sits on the toilet and tinkles away. Causing [him of M] humiliation makes you feel better about yourself.";
								strongDignify;
								let X be M;
								repeat with Z running through on-stage undefeated staff members:
									if Z is in School04 or Z is in School06 or Z is in School16, now X is Z;
								if X is teacher and there is an appropriate eligible team-predicament:
									now X is in School05;
									try X going south;
									say "[X] has caught [NameDesc of M] using the toilet![line break][speech style of X]'What's this?! You know you aren't allowed to use the toilet without supervision! And [NameBimbo], what are you doing holding the key? You're both in on this, aren't you! It's detention for you both!'[line break][speech style of M]'What?! No, [please] no!'[roman type][line break]But there's nothing [NameDesc of M] can do to prevent [himself of M] from being dragged out into the hallway and towards the reception, along with you.";
									compute detention joint predicament of X with M;
							otherwise:
								HappinessDown M by 2;
								if M is unfriendly:
									say "[speech style of M]'Fuck you! I'll just have to take it then!'[roman type][line break]";
								otherwise:
									say "[speech style of M]'You're so mean! I'm going to wet myself!!!'[roman type][line break]";
	otherwise:
		if headmistress is alive and headmistress is undefeated and the player is getting unlucky:
			now headmistress is in the location of the player;
			interest headmistress;
			anger headmistress;
			say "As you move to get up, you spot [NameDesc of headmistress] in the corner of your eye. [big he of headmistress] is advancing on you quickly, looking furious.[line break][speech style of headmistress]'You thought you could just get away with breaking the rules?! I SAID NO TOILETS AT ALL!!! Including ones outside the Academy!'[roman type][line break]";

missing-key-assembly is an assembly.
Definition: missing-key-assembly is eligible:
	if locked-toilets is true and headmistress is alive and headmistress is undefeated and academy-toilet-key is on-stage and academy-toilet-key is not carried by a monster, decide yes;
	decide no.

To say AssemblyStartFlav of (A - missing-key-assembly):
	say "[BigNameDesc of headmistress] addresses you directly.".

To execute (A - missing-key-assembly):
	say "[speech style of headmistress]'There you are! Everyone, this is the [boy of the player] I gave the key to, and [he of the player] never returned it, and that's the reason we've all got bladders filled to bursting. I'm going to have to make new locks, and a new key, and find a way to remove the existing locks. Meanwhile, [NameBimbo] will be spending some time in the dungeon, reflecting on the consequences of [his of the player] negligence!'[roman type][line break]";
	now academy-toilet-key is carried by headmistress;
	compute headmistress dungeon locking.

locked-toilets-shame-assembly is an assembly.
Definition: locked-toilets-shame-assembly is eligible: decide no.

To say AssemblyStartFlav of (A - locked-toilets-shame-assembly):
	say "[BigNameDesc of headmistress] addresses you directly.".

To execute (A - locked-toilets-shame-assembly):
	say "[speech style of headmistress]'There you are! Everyone, this is the [boy of the player] who pissed all over the floor in the toilets. I know! Disgusting! So, here's a new rule: ";
	if watersports fetish is 1:
		say "[NameBimbo]'s mouth [if diaper swapping >= 2]and diaper are officially FREE USE URINALS[otherwise] is officially a FREE USE URINAL[end if]. Anyone who needs to piss, can come up to this nasty fucking tramp and demand to use [his of the player] face-hole[if diaper swapping >= 2] or diaper[end if] as their own personal toilet. Right there. Straight away. If [he of the player] refuses, you have my permission to tell a teacher and we will ensure that just punishment is served. Alternatively, feel free to beat the fucking disgusting [cunt] up yourself. I don't give a fuck. ";
	if diaper lover > 0:
		say "[NameBimbo] is now required to wear diapers at all times. Anyone who catches [him of the player] out of diapers has my permission to tackle [him of the player] to the ground, subdue [him of the player], and take [him of the player] to the nurse for punishment and forced diapering. ";
		repeat with M running through staff members:
			now the diaper-duration of M is 99999;
	if watersports fetish is 1 and WC collar is actually summonable:
		summon WC collar locked;
		say "And one more thing...'[roman type][line break][BigNameDesc of headmistress] places a [MediumDesc of WC collar] around your neck!";
		let K be a random off-stage specific-key;
		if K is a thing, compute headmistress locking WC collar with K;
		say severeHumiliateReflect;
	otherwise:
		say "You are all dismissed.'[roman type][line break][severeHumiliateReflect]".

To compute free use urinal perception of (M - a monster):
	if M is eager to use a diaper urinal:
		say "[speech style of M]'[if the player is upright]Get on your knees, urinal[otherwise]Hey there, urinal[end if], I'm going to [one of]piss[or]go tinkles[or]go wee-wee[as decreasingly likely outcomes] in your diaper now!'[roman type][line break]";
		if the player is upright:
			say "Get on your knees and consent to being used as a diaper urinal by [NameDesc of M]?";
			if the player is bimbo consenting:
				now auto is 1;
				try kneeling;
				now auto is 0;
			otherwise:
				anger M;
				if M is unfriendly, say "[speech style of M]'[if M is student]No! You're supposed to get[otherwise]Rebellious [bitch]! Get[end if] on your knees NOW!'[roman type][line break]";
		if the player is prone:
			compute diaper urinal use of M;
	otherwise:
		say "[speech style of M]'[if the player is upright]Get on your knees, urinal[otherwise]Hey there, urinal[end if], I'm going to [one of]piss[or]empty my bladder[or]go to the toilet[as decreasingly likely outcomes] over your face now!'[roman type][line break]";
		if the player is upright:
			say "Get on your knees and consent to being used as a urinal by [NameDesc of M]?";
			if the player is bimbo consenting:
				now auto is 1;
				try kneeling;
				now auto is 0;
			otherwise:
				anger M;
				if M is unfriendly, say "[speech style of M]'[if M is student]No! You're supposed to get[otherwise]Rebellious [bitch]! Get[end if] on your knees NOW!'[roman type][line break]";
		if the player is prone:
			say "[BigNameDesc of M] happily stands over you and grabs you by the head, directing your face towards [his of M] crotch. A few moments later, [he of M] releases a torrent of piss over your hair and face.";
			FacePiss from M;
			satisfy M.


tattoo-assembly is a generic-assembly.
Definition: tattoo-assembly is eligible:
	if nintendolls-logo tattoo is not worn and the rank of the player > 1, decide yes;
	decide no.

To say AssemblyStartFlav of (A - tattoo-assembly):
	say "[BigNameDesc of headmistress] casts [his of headmistress] eyes over the crowd of students.".

To execute (A - tattoo-assembly):
	say "[speech style of headmistress]'I have decided that all students of emerald rank and above should get matching tattoos of our academy's logo! They will go below your chest, and be imbued with a magical effect that increases your balance... and docility... when wearing high heels. Anyone who refuses will be demoted one rank.'[roman type][line break]";
	let LST be the list of students in the location of the player;
	let N be 0;
	let T be 0;
	repeat with ST running through LST:
		if the current-rank of ST > 1:
			increase N by 1;
			say "[BigNameDesc of headmistress] turns to [ST].[line break][speech style of headmistress]'You [if N is 1]first[otherwise]next[end if].'[roman type][line break]";
			let D be the dedication of ST + the current-rank of ST;
			if D > a random number between 1 and 4:
				say "[BigNameDesc of ST] nods, and presents [his of ST] torso to [NameDesc of headmistress]. One magic zap later, [NameDesc of ST] has the Nintendolls logo branded on [his of ST] stomach.";
				if T is 0:
					try examining nintendolls-logo tattoo;
					now T is 1;
			otherwise:
				say "[BigNameDesc of ST] backs away, shaking [his of ST] head. [BigNameDesc of headmistress] tuts, and clicks [his of headmistress] fingers.";
				demote ST;
	say "Finally, [NameDesc of headmistress] turns to you.[paragraph break]Do you let [him of headmistress] give you a tattoo? ";
	if the player is bimbo consenting:
		say "You gulp and nod. [BigNameDesc of headmistress] points an index finger at you, and a moment later the magic brand has appeared on your skin.";
		summon nintendolls-logo tattoo;
		say "Some of the power from the magic spell lingers in your body.";
		MagicPowerUp 1;
	otherwise:
		say "You protect your stomach with your arms. [BigNameDesc of headmistress] shakes [his of headmistress] head in disappointment, and then clicks [his of headmistress] fingers. Your armband transforms!";
		if armband is emerald, now armband is sapphire;
		if armband is ruby, now armband is emerald;
		if armband is pink diamond, now armband is ruby;
		if armband is pure diamond, now armband is pink diamond;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		now the armband-print of armband is "hesitant";
		say ClothingDesc of armband;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	say "[BigNameDesc of headmistress] turns to leave.[line break][speech style of headmistress]'That is all. You are all dismissed!'[roman type][line break]".


hip-assembly is a generic-assembly.
Definition: hip-assembly is eligible:
	if diaper quest is 0 and the player is not bottom heavy, decide yes;
	decide no.

To execute (A - hip-assembly):
	say "[speech style of headmistress]'I have been informed that several students have been overheard discussing how jealous they are of my incredible waist-to-hip ratio. So I have decided to share the joy around.'[roman type][line break][big he of headmistress] waves [his of headmistress] hand around, and as [he of headmistress] does, every student in the hall finds their hips visibly widening! Some shriek with shock and horror, but others sound audibly pleased with their new extra-feminine proportions.";
	HipUp 1;
	say "[BigNameDesc of headmistress] blow kisses to the room.[line break][speech style of headmistress]'You are all very welcome!'[roman type][line break]And with that, [he of headmistress] leaves the room.";
	try headmistress going south;
	regionally place headmistress.


drink-assembly is a generic-assembly.
Definition: drink-assembly is eligible:
	if the rank of the player < 3, decide no;
	now drinking-target is nothing;
	if the player is not able to drink, decide no;
	if watersports fetish is 1 or diaper quest is 1 or a2m fetish >= 2 or lactation fetish is 1, decide yes;
	decide no.

To say AssemblyStartFlav of (A - drink-assembly):
	say "[BigNameDesc of headmistress] is standing next to a table with a royal red cloth draped over it. Sitting on the table is large metal chalice.".

To execute (A - drink-assembly):
	say "[speech style of headmistress]'At this academy, you are all one big family. And as such, you should all drink from the same cup.'[roman type][line break]";
	if a2m fetish >= 2:
		say "[BigNameDesc of headmistress] takes the chalice and holds it underneath [his of headmistress] butt. And then [he of headmistress] grunts and pushes... causing a stream of water to gush out of [his of headmistress] butthole and into the large drinking vessel, filling it to the brim.";
	otherwise if watersports fetish is 1:
		say "[BigNameDesc of headmistress] takes the chalice and holds it underneath [his of headmistress] crotch. And then [he of headmistress] relaxes and pushes... and pisses straight into the large drinking vessel, filling it to the brim.";
	otherwise:
		say "[BigNameDesc of headmistress] turns around and takes out [his of headmistress] breasts. And then [he of headmistress] spends a somewhat awkward 30 seconds milking [himself of headmistress], until the chalice is half full of [his of headmistress] breastmilk.";
	say "[line break]And then [he of headmistress] begins to hand it around the room.[line break][speech style of headmistress]'This ritual is critically important for your development. Anyone who refuses to drink a mouthful will be [bold type]expelled[speech style of headmistress].'[roman type][line break]And so one by one, each student finds themselves holding their nose and gulping down a mouthful of the chalice's sordid contents.";
	let M be headmistress;
	repeat with ST running through students in the location of the player:
		if the favour of ST < the aggro limit of ST - 4, now M is ST;
	if M is a student:
		say "When the chalice makes its way to [M], [he of M] just makes a gagging sound.[line break][speech style of M]'Sorry, but no way. I'm out of here.'[roman type][line break][big he of M] moves to leave, but before [he of M] can make it even a couple of steps, [NameDesc of headmistress] interrupts.[line break][speech style of headmistress]'Fine then, so be it. But here, take this parting gift.'[roman type][line break][BigNameDesc of M]'s armband disappears, and at the same time, a pink collar appears around [his of M] neck. It has a metal heart at the front. [BigNameDesc of M] squeaks in surprise, and immediately tries to remove it, but can't find a latch.[line break][speech style of headmistress]'Think of this as your final assignment. You won't be able to remove the collar until you put that mouth to good use. And until then, you're going to find yourself getting thirsty much faster than normal.'[roman type][line break][BigNameDesc of M] runs from the room, sobbing.";
		destroy M;
	say "Finally the chalice is passed to you. Can you really bring yourself to drink an entire mouthful of this [if a2m fetish >= 2]water that came out of [his of headmistress] asshole[otherwise if watersports fetish is 1][urine][otherwise][milk][end if]? ";
	if the player is bimbo consenting:
		say "You bring the chalice to your lips, fill your mouth, and then gulp it down. ";
		if a2m fetish >= 2:
			StomachUp 2;
			say severeHumiliateReflect;
		otherwise if watersports fetish is 1:
			StomachUrineUp 2;
			say moderateHumiliateReflect;
		otherwise:
			StomachMilkUp 2;
			say moderateHumiliateReflect;
		say "You hand the chalice back to [NameDesc of headmistress], who nods with approval. Today you have all formed a bond that shall never be broken. Dismissed!";
	otherwise:
		say "You refuse to take hold of the disgusting chalice.[line break][speech style of headmistress]'Disappointing.'[roman type][line break][BigNameDesc of headmistress] says, and as [he of headmistress] does, your armband disappears.";
		only destroy armband;
		if heart-collar is actually summonable:
			say "At the same time, a pink collar with a metal heart appears around your neck! You can sense that it is significantly speeding up how quickly you digest food and drink!";
			summon heart-collar cursed;
			if diaper quest is 0:
				now the quest of heart-collar is cum-swallowing-quest;
			otherwise:
				now the quest of heart-collar is candy-eating-quest;
				DigestionTimerUp 600;
			now heart-collar is respiration;
			say QuestFlav of heart-collar;
		say "The world in front of you begins to fade, and then you realise you are being teleported away.";
		teleport to Dungeon10.


disgrace-assembly is a generic-assembly.
Definition: disgrace-assembly is eligible:
	repeat with N running from 1 to the number of filled rows in the Table of Published Disgraces:
		choose row N in the Table of Published Disgraces;
		if the lastwitnessed entry is 0, decide yes;
Definition: disgrace-assembly is appropriate: [can happen more than once]
	if genericAssemblyTime is true and the assemblyAnnouncer of disgrace-assembly is alive and disgrace-assembly is eligible, decide yes;
	decide no.

To execute (A - disgrace-assembly):
	say "[speech style of headmistress]'I thought you should all get to see [one of]something rather incredible I found on the Internet today[or]another one of [NameBimbo][']s latest claims to Internet fame[stopping].'[roman type][line break][big he of headmistress] clicks a button on a small remote control, and a large overhead projector turns on... showing you.";
	let disgrace-viewed be false;
	repeat with N running from 1 to the number of filled rows in the Table of Published Disgraces:
		if disgrace-viewed is false:
			choose row N in the Table of Published Disgraces;
			if the lastwitnessed entry is 0:
				now disgrace-viewed is true;
				say DisgracePost N;
				say "Several of the other students cackle mercilessly. ";
				let S be HUMILIATION-BASE * DisgracePostImpact N;
				say DisgracePostReaction strength S;
				humiliate S / 5;
				now lastwitnessed entry is time-earnings;
				say "[one of]This is the most humiliated you've ever felt in your life[or][if the player is shameless]You feel like you've become rather desensitised to this sort of humiliation by this point[otherwise]You're fed up with being humiliated like this[end if][stopping].";
				if the published entry matches the text "hypnoheaven", compute agent reveal;
	if the player is shameless:
		say "You just shrug, and wait for them to get bored and move on with their day, which eventually of course, they all do.";
	otherwise:
		say "You storm out of the hall, the sound of vindictive laughter following you out into the hall.";
		teleport to School05.



Part - Detention

[Now part of the compute swimming in swimming pool function.
Report Showering:
	if the player is in School20 and armband is worn:
		let M be a random staff member in the location of the player;
		if M is nothing and a random number between 1 and 2 is 1, now M is a random alive undefeated teacher;
		if M is monster:
			say "[speech style of M]'Um, NO! No going in the swimming pool without permission!'[roman type][line break]";
			compute detention of M.]

detention-turns is a number that varies.

An all later time based rule (this is the detention decay rule):
	if detention-turns > 0, decrease detention-turns by 1.

To compute detention of (M - a staff member):
	now M is in the location of the player;
	let specificDetention be 0;
	let ST be M;
	now lessonJustDone is false;
	if the player is the donator:
		repeat with S running through students in the location of the player:
			if the health of S < the maxhealth of S, now ST is S;
	if the health of M < the maxhealth of M:
		say GenericDetention of M;
	otherwise if ST is student and there is an appropriate eligible team-predicament:
		say "[BigNameDesc of M] looks from you, to [NameDesc of ST], then back at you.[line break][speech style of M]'I think you two need some time together, so that you can learn to co-exist peacefully...'[roman type][line break]";
		now specificDetention is 1;
		compute detention joint predicament of M with ST;
	otherwise if the player is in a lecture academic room and class-time < (lessonFrequency * -3):
		say LateDetention of M;
	otherwise:
		say GenericDetention of M;
	if specificDetention is 0:
		if diaper quest is 0 and a random number between 1 and 2 is 1, compute remedial detention of M;
		otherwise compute chair detention of M.

To say LateDetention of (M - a staff member):
	say "[BigNameDesc of M] stares at you. It looks like [he of M] has been waiting for you.[line break][speech style of M]'YOU'RE LATE! Class is already over! It's detention for you, young Miss. Come with me now!'[roman type][line break]".

To say GenericDetention of (M - a staff member):
	say "[BigNameDesc of M] looks furious.[line break][speech style of M]'It's DETENTION for you, young Miss. Come with me now!'[roman type][line break]".

dq-staff-detention is a diaper punishment. the priority of dq-staff-detention is 5.

To say EnticeFlav of (M - a monster) for (P - dq-staff-detention):
	say "[speech style of M]'It's DETENTION for you, young Miss. Get on your knees at once!'[roman type][line break]".

To compute punishment of (P - a dq-staff-detention):
	follow the unique punishment rule of current-monster.

Definition: a dq-staff-detention (called P) is appropriate:
	if current-monster is staff member, decide yes;
	decide no.

To compute detention joint predicament of (M - a monster) with (ST - a student):
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
	now executing-predicament is true;
	now temporaryYesNoResetNeeded is false;
	maybe execute P;
	set up predicament clothing for P;
	increase the times-completed of P by 1;
	temporaryYesNoBackgroundReset;
	[now predicamentJustDone is true;] [We should probably still let the player jump back in for a trophy if they want to]

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
		if detention chair is not grabbing the player, refresh the graphics-window.

To compute wand chair detention:
	repeat with M running through uninterested alive students:
		if the boredom of M <= 0, check seeking 1 of M; [NPCs make their way to watch the spectacle]
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
			strongHumiliate;[it's extra humiliating because you had to thank them]
		otherwise:
			say "[one of]You feel the camera on the edge of your vision, watching you[or]You know the camera is pointing right at you[at random]. Thank [NameDesc of M]? ";
			if the player is bimbo consenting:
				say "[variable custom style]'Thank you for putting me in my place, [if M is female]Ma'am[otherwise]Sir[end if].'[roman type][line break]";
				say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame, unable to look [him of M] in the eye as you [if the delicateness of the player < 3]growl[otherwise if the delicateness of the player < 6]mutter[otherwise]recite[end if] the words.";
				strongHumiliate;
			otherwise:
				say "[if the delicateness of the player < 3]You say nothing and stick out your tongue at the camera[otherwise if the delicateness of the player < 6]You avert your eyes from the camera and say nothing[otherwise]You quickly avert your eyes from the camera, trying not to tremble as you purposefully say nothing[end if], fully aware that you've probably just earned an extra thirty seconds on the chair[one of] before you'll be released[or][stopping].";
				increase detention-turns by 2;
	otherwise:
		say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame.";
		moderateHumiliate.

This is the detention orgasm announcement rule:
	if detention chair is grabbing the player and the player is able to speak:
		if the player is feeling submissive or the fatigue of the player > 350:
			say "You hear the camera in the corner focusing on you, and loudly blurt out the truth.[line break][variable custom style]'[one of]I CAME FROM BEING IN DETENTION!'[or]MY DETENTION PUNISHMENT JUST MADE ME CUM!'[or]ANYONE WHO CAN SEE ME SHOULD KNOW I JUST CAME FROM BEING IN DETENTION!'[in random order][roman type][line break]";
			repeat with M running through reactive monsters:
				say detention orgasm reaction of M;
				moderateHumiliate;
			strongHumiliate;
			decrease detention-turns by a random number between 3 and 10;
		otherwise:
			say "[one of]You can't help but feel like you're being watched right now[or]You know you can't pretend that didn't just happen[or]The camera in the corner is pointing right at you[or]You know the camera was pointing right at you when you came[at random]. Announce that you just came? ";
			if the player is bimbo consenting:
				say "[variable custom style]'[one of]GUESS WHO JUST CAME FROM BEING IN DETENTION!'[or]I[']M A [if diaper quest is 1]NAUGHTY BABY[otherwise]DIRTY SLUT[end if] WHO CAME FROM BEING IN DETENTION!'[or]LOOK AT ME! DETENTION MADE ME CUM!'[or]MY DETENTION PUNISHMENT JUST MADE ME CUM!'[or]ANYONE WHO CAN SEE ME SHOULD KNOW I JUST CAME FROM BEING IN DETENTION!'[in random order][roman type][line break]";[TODO: more interesting + nearby monsters react]
				repeat with M running through reactive monsters:
					say detention orgasm reaction of M;
					moderateHumiliate;
				strongHumiliate;
				decrease detention-turns by a random number between 3 and 10;
			otherwise:
				say "You [if the delicateness of the player < 2]look right at the camera, refusing to say anything[otherwise]look away from the camera and say nothing[end if][if the number of monsters in the location of the player > 0], hoping your silence will prevent anyone around you from catching on[end if], with the knowledge that if the staff watching you through the camera can tell that you came, you've probably just failed to earn any bonus time towards your release.";
				repeat with M running through reactive monsters:
					if (the player is possessing a penis and penis is exposed and a random number between 1 and 2 is 1) or a random number between 1 and 4 is 1:[it's a lot harder to hide an orgasm when you just jizzed everywhere]
						say detention orgasm reaction of M;
						moderateHumiliate;
		rule succeeds.
The detention orgasm announcement rule is listed last in the orgasm resolution rules.

To compute detention internet publish:
	if the number of blank rows in the Table of Published Disgraces > 0:
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of "a high quality video of you sat on a chair with a wand vibrator, announcing that you are orgasming during detention,";
		now the published entry is the substituted form of "has been posted on the website disciplinedundergrads.xxx";
		now the severity entry is 3;
		now the popularity entry is 4;
		now the timestamp entry is earnings;
		now the lastwitnessed entry is 0;
		now the deletedtime entry is -1;
		now the viewsfuzz entry is a random number between 1 and 4;
		say "[variable custom style][one of]I really hope this video doesn't find its way[or]Why do I get the feeling that these orgasm declarations are getting uploaded[stopping] to the internet...[roman type][line break]".


To say detention orgasm reaction of (M - a monster):
	say "[speech style of M]'[one of]Wow, so you're really enjoying your punishment THAT much?'[or]What kind of desperate slut actually has an orgasm from something like that?'[or]Is that why you earned yourself a detention? So everyone could watch you cum?'[or]So, you got in trouble on purpose then?'[or]I hope I don't get detention after you.'[in random order][roman type][line break][BigNameDesc of M] can't help but watch you.";
	FavourDown M.

To say detention orgasm reaction of (M - a teacher):
	say "[speech style of M]'[one of]If you enjoy the punishment that much, maybe you should be the one to clean the floor when you're done.'[or]Pathetic. That wand isn't even on the highest setting.'[or]Honestly, you haven't even been in the chair that long.'[in random order][roman type][line break][BigNameDesc of M] rolls [his of M] eyes as [he of M] watches you.".

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
	say "[if the delicateness of the player > 10]You crawl over to the [detention chair] and pull yourself into it[otherwise if the delicateness of the player > 4][BigNameDesc of M] drags you over to the [detention chair] and waits as you obediently pull yourself into it[otherwise][BigNameDesc of M] drags you over to the [detention chair], cruelly pinching your ear until you pull yourself into it[end if]. [big he of M] quickly straps you in place as a giant screen slowly lowers from the ceiling.[line break][speech style of M]'[one of]This is an advanced class, for YOUR benefit. Pay attention.[or]Pay attention this time.'[stopping][roman type][line break][big he of M] slides a pair of headphones into place over your ears, quickly leaving the room as the screen flickers to life and a [one of]syncopated[or]familiar[stopping] rhythm begins playing.";
	if diaper quest is 0, say "A large, well-lit room fades onto the screen, and the music's volume slowly rises as a gorgeous [if tg fetish > 0]transsexual [end if]pornstar struts in from out of frame, wearing a form-fitting latex dress.[line break][first custom style]'Welcome to my classroom, students. Shut off your minds and let your bodies pay attention.'[roman type][line break]The pulsing, rhythm of the music creates a hypnotic swirling effect that burns itself into your vision, and you suddenly realise how [if the player is solely possessing a penis]hard[otherwise if the player is solely possessing a vagina]wet[otherwise]horny[end if] you've gotten as the screen fades to black and 'Chapter 1' appears in the centre of the frame. You have no choice but to fight off the hypnosis until you're released!";
	otherwise say "PLACEHOLDER";
	compute mandatory room leaving of M;
	now M is in Holding Pen;
	now School13 is bossed;
	now the stance of the player is 1;
	now detention chair is grabbing the player.

To compute rem chair detention:
	if detention chair is grabbing the player:
		if detention-turns > 0:
			let N be a random number between (the intelligence of the player * -1) and 10;
			say RemHypnoContent;
			if N < -9:
				say "The music thumps relentlessly as you [if the sex addiction of the player < 5]do your best to ignore[otherwise]space out through[end if] the rest of the chapter, heart pounding as you [if the sex addiction of the player < 5]try not to watch[otherwise]watch[end if] the graphic sex on the screen.";
				Arouse 50;
			otherwise if N < -3:
				say "The music thumps relentlessly as you struggle through the rest of the chapter, feeling slight echoes of what the professor's interns are doing to her body.";
				trivialHumiliate;
				Arouse 100;
				FatigueUp 3;
			otherwise if N < 6:
				say "The music washes over you as you [if the sex addiction of the player < 5]reluctantly[otherwise]struggle to[end if] take in the rest of the chapter, feeling echoes of what the professor's interns are doing to her body.";
				slightHumiliate;
				Arouse 100;
				FatigueUp 7;
			otherwise:
				say "The music washes over you as [if the intelligence of the player > 10]you attentively take in[otherwise]your mind absorbs[end if] the rest of the chapter, feeling everything the professor's interns are doing to her body.";
				slightHumiliate;
				RandomAddictUp 1;
				Arouse 300;
				FatigueUp 10;
		otherwise:
			let M be a random staff member in Holding Pen;
			if M is nothing:
				if headmistress is alive and headmistress is undefeated, now M is headmistress;
				otherwise now M is a random alive undefeated staff member;
			if M is staff member:
				now M is in the location of the player;
				say "The camera pans over the professor's body, zooming in [if bukkake fetish is 1]on the cum plastered all over her face[otherwise if diaper quest is 0]on her gaping holes[otherwise]PLACEHOLDER[end if] as the hypnotic pattern finally fades and the syncopated rhythm winds down.[line break][first custom style]'That's all for today ladies. Study hard!'[roman type][line break]The screen flickers off, and a few moments pass before [NameDesc of M] re-enters the room and frees you from your bindings.";
				distract M;
				compute room leaving of M;
				regionally place M;
				now the location of the player is not bossed;
			otherwise:
				say "BUG: There's no teacher to summon to release the player. The player will be released anyway so the game doesn't freeze!";
			if class-time < 0, now class-time is 0;
			now detention chair is not grabbing the player.

To say RemHypnoContent:
	if diaper quest is 0, say "[one of]The camera pans over the professor's body as she's being spit-roasted by two of her interns.[line break][first custom style]'Mnaa mun humnd mnurphrmr.'[roman type][line break][or]The camera zooms in on the professor's asshole as three of her interns pound her at once.[line break][first custom style]'Your sphincter is a muscle, ladies. Always be tight for your man, but never too tight for more!'[roman type][line break][or]The camera zooms in on the professor's face, following the lines of spit ruining her makeup as her interns take turns fucking her face.[line break][first custom style]'Glk! Glk! Glk! Glk!'[roman type][line break][or]The camera zooms in as the professor's interns take turns smacking her in the face. She grins straight into the camera as her hands deftly pump their cocks.[line break][first custom style]'You're always happy to be used, ladies. Only frown because it's over.'[roman type][line break][or]The camera pans slowly as the professor rides one of her interns, zooming in [if tg fetish > 0]on her hand as she rapidly pumps her own cock[otherwise]on her hand as she plays with her clit[end if].[line break][first custom style]'Only pleasure during his pleasure, ladies.'[roman type][line break][in random order]";
	otherwise say "PLACEHOLDER".


Book - Ultimate Lesson Actor


An ultimate-lesson-actor is a kind of monster. An ultimate-lesson-actor is male. There are 4 ultimate-lesson-actors. The text-shortcut of an ultimate-lesson-actor is "voi". Understand "manly", "womanly", "voice" as ultimate-lesson-actor.
An ultimate-lesson-actor has a text called the specific-man-title.
An ultimate-lesson-actor has a figure-name called the specific-man-image. The specific-man-image of ultimate-lesson-actor is figure of small image.
Definition: an ultimate-lesson-actor is specific-man:
	if current-predicament is porno-predicament and the player is in Predicament01, decide yes;
	decide no.
To say ShortDesc of (M - an ultimate-lesson-actor):
	say "[if M is specific-man][man of M][otherwise]voice[end if]".
To say MediumDesc of (M - an ultimate-lesson-actor):
	say "[if M is specific-man][specific-man-title of M] [man of M][otherwise][man of M]ly voice[end if]".
To say FuckerDesc of (M - an ultimate-lesson-actor):
	say "the [if M is specific-man][MediumDesc of M][otherwise][FuckingDesc of M][end if]".
To say BigFuckerDesc of (M - an ultimate-lesson-actor):
	say "The [if M is specific-man][MediumDesc of M][otherwise][FuckingDesc of M][end if]".
To say FuckingDesc of (M - an ultimate-lesson-actor):
	let B be a random body part penetrated by M;
	say "[one of]stranger[or]anonymous [man of M][or][man of M][at random][if B is body part] [one of]in[or]fucking[or]sliding in and out of[or]plowing[or]thrusting in and out of[as decreasingly likely outcomes] your [variable B][end if]".
To say MonsterDesc of (M - an ultimate-lesson-actor):
	if M is specific-man, say "A [MediumDesc of M].";
	otherwise say "Who knows what this [man of M] looks like. You know nothing about [him of M][if the player is not in a predicament room], other than [he of M] clearly is a high ranking member of this institution[end if]. You'll probably never find out who [he of M] is.".
To compute action (N - a number) of (M - an ultimate-lesson-actor):
	if M is in a predicament room:
		if current-predicament is business-briefcase-predicament and the sex-length of M is 0 and current-predicament is ass-to-mouth-agreed and M is penetrating asshole, now the sex-length of M is a random number between 1 and 2; [sometimes extends the length of the scene, and guarantees it always ends with oral creampie]
		if (current-predicament is gloryhole-key-predicament or current-predicament is business-briefcase-predicament) and current-predicament is ass-to-mouth-agreed and the sex-length of M > 0:
			if M is penetrating face:
				dislodge M;
				now M is penetrating asshole;
				say "[one of]After finishing cleaning off[or]After you're done hoovering up the sordid mix of saliva and butt-juice from[or]When you've finished sucking it all off[in random order] [NameDesc of M][']s [manly-penis], you turn around [one of]to return [his of M] [manly-penis] to the depths of your [asshole][or]and inch your [asshole] back onto [his of M] [manly-penis][or]to once again impale yourself on [his of M] length[or]and push [his of M] [manly-penis] back into your [asshole], one inch at a time[then at random]. [one of]Once [he of M][']s back inside[or]After [he of M][']s bottomed out inside you once again[cycling], you [one of]resume the anal sex, moving your hips back and forth along [his of M] length[or]recommence bouncing up and down on [his of M] meaty dick[or]get to work coating [his of M] head and shaft with the taste of your ass once more[then at random].";
				ruin asshole;
			otherwise:
				dislodge M;
				now M is penetrating face;
				say "[one of]You pull forward, allowing [NameDesc of M][']s [manly-penis] to fall out of your [asshole] with a soft 'pop'[or]You gently ease [NameDesc of M][']s thick shaft out of your [asshole][in random order], [one of]and then turn around to approach it with your face[or]before turning around[in random order]. [if the grossness addiction of the player >= 14][one of]Secretly excited about the depravity of it all, [or]You fight back a strong desire to touch yourself as [or]You lick your lips greedily before [or]Salivating with anticipation, [in random order][otherwise if the grossness addiction of the player >= 7][one of]You lick your lips nervously before [or]You force yourself not to hesitate before [or]Holding your breath, [or]Doing your best not to think too hard about what you're doing, [in random order][otherwise][one of]Doing your best to suppress your revulsion, [or]You fight back the urge to retch as [or]Holding your breath and pinching your nose, [or]Desperately trying not to think about what you're doing, [in random order][end if]you [one of]envelop the recently-sodomising stick with your [LipDesc][or]get to work sucking your own ass juices off this anonymous [man of M][']s [manly-penis][or]get to work licking up your own ass sweat[or]start to slurp the bitter wetness off [his of M] bulbous tip[or]use your mouth and tongue to clean off [his of M] [manly-penis][in random order].";
				TasteGrossOut 7;
				say strongHumiliateReflect;
			decrease the sex-length of M by 1;
		otherwise if M is penetrating face:
			if (current-predicament is not gloryhole-key-predicament or gloryhole-key-predicament is not ass-to-mouth-agreed) and a random number between 1 and 3 > 1:
				say "[one of]You bob your head up and down, [if the humiliation of the player < 10000]eyes screwed shut in shame[otherwise if the sex addiction of the player < 10 or current-predicament is gloryhole-key-predicament]eyes closed[otherwise]looking up at the art of the fireman's hunky body[end if] as you submissively polish [his of M] shaft[or]You make [if the oral sex addiction of the player < 4]quiet[otherwise if the oral sex addiction of the player < 6]distinct[otherwise]exaggerated[end if] slurping noises as you suck [FuckerDesc of M][']s [manly-penis], [if the oral sex addiction of the player < 3]determined to get this over and done with as soon as possible[otherwise if the oral sex addiction of the player < 5]determined to get [him of M] off as soon as possible[otherwise]determined to get [him of M] shooting off in your mouth as soon as possible[end if][or][BigFuckerDesc of M] thrusts back and forth through the gloryhole to complement the [if the oral sex addiction of the player > 5]enthusiastic [otherwise if the oral sex addiction of the player < 4]slow [end if]bobbing of your head[or][BigFuckerDesc of M] holds [himself of M] completely still, [if the sex addiction of the player < 7]forcing[otherwise if the oral sex addiction of the player < 6]encouraging[otherwise]allowing[end if] you to do all the work[or][BigFuckerDesc of M] grunts in pleasure as your tongue runs over the head of [his of M] [manly-penis][or][BigFuckerDesc of M] chuckles to [himself of M] as you submissively pleasure [his of M] [manly-penis] with your mouth[in random order][if current-predicament is gloryhole-predicament]. [one of]You can't stop thinking about how everything is being recorded, and your cheeks burn.[or][stopping][otherwise].[end if]";
			otherwise:
				BlowCount;
				if M is wrapped:
					say "[one of][BigFuckerDesc of M] pushes forward as far as [he of M] can go, hissing through [his of M] teeth as [his of M] condom fills with warmth.[or][BigFuckerDesc of M][']s [DickDesc of M] throbs powerfully, firing off load after load of warm [semen] into the condom.[in random order]";
					if lycra-bodysuit is in Toilet01:
						say "After [he of M] pulls away, you hear [him of M] fumbling with the condom for a few moments.";
						UsedCondomUp lycra-bodysuit from M;
					orgasm M;
					dislodge M;
					now M is not wrapped;
				otherwise if [current-predicament is nun-walk-predicament and ]player-gagging is false:
					say "[BigFuckerDesc of M] grunts as [he of M] fills your mouth with [his of M] salty load.";
					FaceFill semen by the semen load of M;
					orgasm M;
					if the player is in Toilet02 and current-predicament is gloryhole-predicament and the semen-spat of gloryhole-predicament is 0, say "[bold type]If you spit it out, you will be penalised.[roman type][line break]";
					if current-predicament is gloryhole-predicament, suggest swallowing;
					if current-predicament is gloryhole-key-predicament or current-predicament is business-briefcase-predicament:
						if current-predicament is business-briefcase-predicament or (the keys-agreed of gloryhole-key-predicament > 0 and a random number between 1 and 2 is 1):
							say "[speech style of M]'Swallow it. Or the deal's off.'[roman type][line break]";
							reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
							set numerical response 1 to "swallow";
							set numerical response 2 to "pretend to swallow";
							set numerical response 3 to "refuse to swallow";
							compute multiple choice question;
							if player-numerical-response is 1:
								compute swallowing;
							otherwise if player-numerical-response is 2:
								say "You do your best to make an exaggerated gulping sound.";
								if a random number between 1 and 3 is 1:
									say "[speech style of M]'I can tell that was fake, you naughty slut. That's it, you get nothing.'[roman type][line break]";
									if current-predicament is business-briefcase-predicament, make video go gloryhole viral;
									otherwise now the keys-agreed of gloryhole-key-predicament is 0;
								otherwise:
									now player-numerical-response is 1;
							otherwise if player-numerical-response is 3:
								say "[variable custom style]'Uh-uh.'[roman type][line break]You make it clear that this would be a step too far for you.";
								if current-predicament is business-briefcase-predicament:
									if the player is getting unlucky:
										say "[speech style of M]'Well then, you just sucked my cock for nothing.'[roman type][line break][GotUnluckyFlav]";
										make video go gloryhole viral;
									otherwise:
										say "[speech style of M]'Ugh, whatever.'[roman type][line break]";
								otherwise:
									say "[speech style of M]'Fine. [if the keys-agreed of gloryhole-key-predicament is 1]But you just lost your rights to this key[otherwise]But for that, instead of [the keys-agreed of gloryhole-key-predicament] keys, I'm only going to give you [the keys-agreed of gloryhole-key-predicament - 1][end if].'[roman type][line break]";
									decrease the keys-agreed of gloryhole-key-predicament by 1;
				otherwise: [Deepthroat cumshot]
					compute deepthroat creampie of M;
				if current-predicament is gloryhole-predicament:
					increase the cocks-sucked of gloryhole-predicament by 1;
					if id-poster is in Toilet01 and the remainder after dividing the cocks-sucked of gloryhole-predicament by 2 is 0, say "[speech style of M]'[one of]Thanks a lot[or]Good job[in random order], [NameBimbo].'[line break][variable custom style][one of]'Wait what?! How do you know my name?!'[or]How does [he of M] know my name?! What can [he of M] see on [his of M] side of the wall?![stopping][roman type][line break]";
					say "With [one of]an ashamed[or]a satisfied[or]a giddy[purely at random] noise, [NameDesc of M] pulls [his of M] [manly-penis] back through the hole and quickly [one of]leaves[or]makes [himself of M] scarce[or]flees the scene[in random order].[line break][variable custom style]That's [cocks-sucked of gloryhole-predicament] down[if the cocks-sucked of gloryhole-predicament is 1]. I could go retrieve my key now, but unless I suck four more [manly-penis]s, the CCTV footage of what I just did will be uploaded to the internet and sent to my friends...[otherwise if the cocks-sucked of gloryhole-predicament < 5]...[otherwise]. I'm done![end if][roman type][line break]";
				otherwise if current-predicament is gloryhole-key-predicament:
					if gloryhole-key-predicament is ass-to-mouth-agreed:
						AnalSexAddictUp 1;
						now gloryhole-key-predicament is not ass-to-mouth-agreed;
					compute gloryhole key resolution of M;
				otherwise if current-predicament is business-briefcase-predicament:
					if business-briefcase-predicament is not predicament-failed:
						say "You sigh with relief as you see the card pushed through the hole. You successfully avoided disaster! You quickly scrunch it into a ball and flush it down the toilet, never to be seen again.";
					say "[BigNameDesc of M] leaves the toilets.";
				otherwise:
					say "With [one of]an ashamed[or]a satisfied[or]a giddy[purely at random] noise, [NameDesc of M] pulls [his of M] [manly-penis] back through the hole and quickly [one of]leaves[or]makes [himself of M] scarce[or]flees the scene[in random order].[if current-predicament is nun-walk-predicament and the semen volume of face < 4 and the semen volume of face > 0][line break][variable custom style]I've got some cum now... but is it enough to make sure I still have some left if I accidentally lose some on the way home?[roman type][line break][end if]";
				destroy M;
		otherwise if M is penetrating a fuckhole: [currently only gloryhole-key-predicament and free-use-fuckhole-predicament]
			let F be a random fuckhole penetrated by M;
			if the sex-length of M > 0:
				if current-predicament is free-use-fuckhole-predicament, say "[one of]You [if the player is proud]screw your eyes shut in shame[otherwise]look down at the ground[end if] as [FuckerDesc of M][']s [manly-penis] thrusts in and out of your [variable F][or]You breathe heavily as [FuckerDesc of M] pleasures [his of M] [manly-penis] with your defenseless [variable F][or][BigFuckerDesc of M] thrusts back and forth, enjoying the [if the openness of F <= the girth of M]tight[otherwise]gentle[end if] grip of your [variable F][or][BigFuckerDesc of M] buries [himself of M] deep inside your [variable F] with a set of long, hard thrusts[or][BigFuckerDesc of M] sighs with delight at the feeling of your [variable F] around [his of M] [manly-penis][or][BigFuckerDesc of M] is not holding back [his of M] sexual groans and grunts as [he of M] enjoys the feeling of [his of M] [manly-penis] moving in and out of your [variable F][or][BigFuckerDesc of M] grabs your [AssDesc] as [he of M] slams in and out of your [variable F][or][BigFuckerDesc of M] treats your [variable F] as [his of M] own personal faceless onahole, pumping in and out of your [variable F] without regards for your feelings[in random order].";
				otherwise say "[one of]You slowly move your hips back and forward, [if the humiliation of the player < 10000]eyes screwed shut in shame[otherwise]looking down at the ground[end if] as you ride [FuckerDesc of M][']s [manly-penis][or]You breathe heavily as you pleasure [FuckerDesc of M][']s [manly-penis] with your [variable F][or][BigFuckerDesc of M] thrusts back and forth through the gloryhole to complement the [if the relevant sex addiction of the player > 5]enthusiastic [otherwise if the relevant sex addiction of the player < 4]slow [end if] movement of your [variable F][or][BigFuckerDesc of M] holds [himself of M] completely still, [if the sex addiction of the player < 7]forcing[otherwise if the relevant sex addiction of the player < 6]encouraging[otherwise]allowing[end if] you to do all the work with your [variable F][or][BigFuckerDesc of M] sighs with delight at the feeling of your [variable F] around [his of M] [manly-penis][or][BigFuckerDesc of M] is not holding back [his of M] sexual groans and grunts as [he of M] enjoys the feeling of [his of M] [manly-penis] moving in and out of your [variable F][in random order].";
				ruin F;
				decrease the sex-length of M by 1;
			otherwise:
				if F is vagina, FuckCount;
				otherwise AnalCount;
				say CreampieFlav of M in F;
				compute M finishing in F;
				if current-predicament is gloryhole-key-predicament:
					if gloryhole-key-predicament is ass-to-mouth-agreed:
						OralSexAddictUp 1;
						now gloryhole-key-predicament is not ass-to-mouth-agreed;
					compute gloryhole key resolution of M;
				destroy M;
	otherwise if slimy-portal-creature is grabbing the player:
		decrease the sex-length of M by 1;
		if M is penetrating face:
			if the sex-length of M > 0:
				say "[one of]You [if the player is proud]screw your eyes shut in shame[otherwise]look down at the ground[end if] as [FuckerDesc of M][']s [manly-penis] thrusts in and out of your mouth[or]You breathe heavily as [FuckerDesc of M] pleasures [his of M] [manly-penis] with your face[or][BigFuckerDesc of M] thrusts back and forth, enjoying the tight grip of your [LipDesc][or][BigFuckerDesc of M] buries [himself of M] deep inside your throat with a set of long, hard thrusts[or][BigFuckerDesc of M] sighs with delight at the feeling of your [LipDesc] around [his of M] [manly-penis][or][BigFuckerDesc of M] is not holding back [his of M] sexual groans and grunts as [he of M] enjoys the feeling of [his of M] [manly-penis] moving in and out of your mouth[or]slams in and out of your mouth[or][BigFuckerDesc of M] treats your [LipDesc] and throat as [his of M] own personal faceless onahole, pumping in and out of your mouth without regards for your feelings[in random order].";
			otherwise:
				BlowCount;
				if M is wrapped:
					say "[one of][BigFuckerDesc of M] pushes forward as far as [he of M] can go, hissing through [his of M] teeth as [his of M] condom fills with warmth.[or][BigFuckerDesc of M][']s [DickDesc of M] throbs powerfully, firing off load after load of warm [semen] into the condom.[in random order]";
					orgasm M;
					dislodge M;
				otherwise: [Deepthroat cumshot]
					compute deepthroat creampie of M;
		otherwise if M is penetrating a fuckhole:
			let F be a random fuckhole penetrated by M;
			if the sex-length of M > 0:
				say "[one of]You [if the player is proud]screw your eyes shut in shame[otherwise]look down at the ground[end if] as [FuckerDesc of M][']s [manly-penis] thrusts in and out of your [variable F][or]You breathe heavily as [FuckerDesc of M] pleasures [his of M] [manly-penis] with your defenseless [variable F][or][BigFuckerDesc of M] thrusts back and forth, enjoying the [if the openness of F <= the girth of M]tight[otherwise]gentle[end if] grip of your [variable F][or][BigFuckerDesc of M] buries [himself of M] deep inside your [variable F] with a set of long, hard thrusts[or][BigFuckerDesc of M] sighs with delight at the feeling of your [variable F] around [his of M] [manly-penis][or][BigFuckerDesc of M] is not holding back [his of M] sexual groans and grunts as [he of M] enjoys the feeling of [his of M] [manly-penis] moving in and out of your [variable F][or][BigFuckerDesc of M] grabs your [AssDesc] as [he of M] slams in and out of your [variable F][or][BigFuckerDesc of M] treats your [variable F] as [his of M] own personal faceless onahole, pumping in and out of your [variable F] without regards for your feelings[in random order].";
				ruin F;
			otherwise:
				if F is vagina, FuckCount;
				otherwise AnalCount;
				say CreampieFlav of M in F;
				compute M finishing in F;
		if the sex-length of M <= 0:
			say "With [one of]a satisfied[or]a giddy[purely at random] noise, [NameDesc of M] pulls [his of M] [manly-penis] out of you and quickly [one of]leaves[or]makes [himself of M] scarce[or]flees the scene[in random order].";
			now M is not wrapped;
			destroy M.

To say FriendlySexResistFlav of (M - an ultimate-lesson-actor):
	say "[if M is not penetrating face][variable custom style]'[one of]I can't take any more[or]Screw this[stopping]!'[roman type][line break][otherwise if the player is able to make sounds][variable custom style][muffled sounds][roman type][line break][end if]";
	say "Fed up, you pull away from [NameDesc of M][']s [manly-penis][if M is penetrating face], coughing and spluttering as you do[end if].".
To compute FriendlySexRelease of (M - an ultimate-lesson-actor):
	if current-predicament is business-briefcase-predicament:
		say "[speech style of M]'Fucking useless whore! That's it...'[roman type][line break]";
		make video go gloryhole viral;
	otherwise:
		say "[BigNameDesc of M] makes [one of]a disappointed[or]a frustrated[or]an annoyed[in random order] sound[if current-predicament is gloryhole-predicament] and then leaves[end if].[line break][MissedGloryholeCock]";
	dislodge M;
	destroy M.
To check perception of (M - an ultimate-lesson-actor):
	do nothing.
To compute perception of (M - an ultimate-lesson-actor):
	do nothing.
Definition: an ultimate-lesson-actor is uniquely reactive:
	if current-predicament is free-use-fuckhole-predicament and it is in Toilet02 and the player is in Toilet02, decide yes;
	decide no.
Definition: an ultimate-lesson-actor is anticipating-climax: decide no.
Figure of unseen actor is the file "NPCs/School/unseen1.png".
To decide which figure-name is the monster-image of (M - an ultimate-lesson-actor):
	if M is specific-man and the specific-man-image of M is not figure of small image, decide on the specific-man-image of M;
	decide on figure of unseen actor.
Definition: an ultimate-lesson-actor is human: decide yes.
Definition: an ultimate-lesson-actor (called M) is dark skinned:
	if M is penetrating a fuckhole and slimy-portal-creature is bbc-fuck and slimy-portal-creature is grabbing the player, decide yes;
	if M is penetrating face and slimy-portal-creature is bbc-oral and slimy-portal-creature is grabbing the player, decide yes;
	if M is specific-man:
		if the specific-man-title of M matches the text "black" or the specific-man-title of M matches the text "dark" or the specific-man-title of M matches the text "ebony" or the specific-man-title of M matches the text "African", decide yes;
	decide no.
To decide which number is the girth of (M - an ultimate-lesson-actor):
	if M is penetrating a fuckhole and slimy-portal-creature is demon-fuck and slimy-portal-creature is grabbing the player, decide on 6;
	if M is penetrating face and slimy-portal-creature is demon-oral and slimy-portal-creature is grabbing the player, decide on 6;
	if M is dark skinned, decide on 5;
	decide on 2.
Definition: an ultimate-lesson-actor is able to remove cursed plugs: decide yes. [Can the monster remove all plugs & gags?]
To set up sex length of (M - an ultimate-lesson-actor) in (B - a body part):
	set up sex length (a random number between 1 and 2) of M in B.
To compute sudden floor squirt disapproval of (M - an ultimate-lesson-actor):
	if M is in Toilet02 and current-predicament is free-use-fuckhole-predicament, say "[speech style of M]'[one of]Holy shit, was that someone else's cum?!'[or]You're fucking gross.'[or]I guess I'm not the first guy to fuck this Free Use whore today, then...'[or]Woah!'[or]Holy shit, that nearly hit me!'[or]Fucking ASSCUM?!'[cycling][roman type][line break]".
To compute SelectionFailure of (M - an ultimate-lesson-actor):
	say "You feel a [LongDickDesc of M] shoved [one of]up against your torso[or]into your hand's grip[or]against your cheek[in random order] and moved around as [NameDesc of M] waits for an available hole.".
To say AnalDefloweringFlav of (M - an ultimate-lesson-actor):
	say "Suddenly you feel a hard [manly-penis] pushing against, and into your virgin [asshole]. You reflect on how disgraceful it is that you're losing your anal virginity to a [man of M] who you don't even know what [he of M] looks like, never mind what [his of M] name is...".
To say VaginalDefloweringFlav of (M - an ultimate-lesson-actor):
	say "A single tear is caught by your blindfold as [FuckerDesc of M][']s [DickDesc of M] pierces your hymen, removing your virginity forever. Shame bubbles up inside of you as [he of M] slides deeper and deeper into your [vagina], settling heavily in your core as [he of M] bottoms out. [BigFuckerDesc of M] slowly begins to thrust.[line break][variable custom style]I'll likely never find out the name of the [man of M] who took my virginity. The shame...[roman type][line break]".
To say NormalMouthPenetrationFlav of (M - an ultimate-lesson-actor):
	say "[BigFuckerDesc of M] pinches your nose, shoving [his of M] [DickDesc of M] in your mouth as soon as you try to breathe.".
To compute facial climax of (M - an ultimate-lesson-actor):
	TimesSubmittedUp M by 1;
	BlowCount;
	if M is wrapped:
		compute wrapped climax of M in face;
	otherwise: [Internal cumshot]
		compute deepthroat creampie of M;
	if M is penetrating face, orgasm satisfy M.[dislodges him automatically]
To compute deepthroat creampie of (M - an ultimate-lesson-actor):
	get deepthroat creampie image for M;
	say DeepthroatCreampie of M;
	now the throating of M is 1;
	StomachSemenUp the semen load of M;
	if M is in Toilet02:
		orgasm M;
		dislodge M.
To say DeepthroatCreampie of (M - an ultimate-lesson-actor):
	if M is in Toilet02:
		say "Without warning, [one of][FuckerDesc of M] tightens [his of M] grip, hissing through [his of M] teeth as [he of M] cums straight down your throat.[or][FuckerDesc of M][']s [DickDesc of M] throbs powerfully, firing off load after load of warm [semen] down your throat.[in random order]";
	otherwise:
		say DefaultDeepthroatCreampie of M.
To compute (M - an ultimate-lesson-actor) attacking (C - a clothing):
	if C is crotch-zipped:
		say UnzipFlav of M at C;
		ZipDown C;
	otherwise if C is locked:
		compute M unlocking C;
	otherwise if the chosen-orifice of M is breasts and C is actually top-displacable:
		compute M topdisplacing C;
	otherwise if C is displacable:
		compute M displacing C;
	otherwise if C is rippable:
		compute M ripping C;
	otherwise:
		compute M destroying C.
To compute sudden objectification of (M - an ultimate-lesson-actor):
	do nothing.
To compute condom request choice of (M - an ultimate-lesson-actor):
	if total used condoms > 0:
		say AutomaticCondomFlav of M;
		now M is wrapped.
To say CondomPinFlav of (M - an ultimate-lesson-actor) on (C - a clothing):
	if M is awake, say "[BigNameDesc of M] ties the used condom to your [ShortDesc of C].";
	otherwise say "Completely of its own accord, the used condom suddenly zips from [NameDesc of M] and flies through the air until it hits your [ShortDesc of C].".
To compute labour to (M - an ultimate-lesson-actor):
	say DefaultBirthScene.
To compute fatherhood to (M - an ultimate-lesson-actor):
	dislodge M.

Staff Framework ends here.
