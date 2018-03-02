Staff Framework by Monster Framework begins here.

A staff member is a kind of monster. A staff member is intelligent. A staff member is usually female.

Definition: a staff member (called M) is school dwelling:
	decide yes.

The description of a staff member is "[FullMonsterDesc of item described]".

To say FullMonsterDesc of (M - a staff member):
	if images visible is 1, display monster-image of M;
	say MonsterDesc of M;
	say StaffDesc of M.

To say MonsterDesc of (M - a staff member):
	say "This staff member seems to be missing [his of M] description!".

To say StaffDesc of (M - a staff member):
	say "[Big he of M] is wearing a black armband which says 'STAFF' in large [rank-colour of M] letters.".

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
	decide on 9.

To set up (M - a staff member):
	reset M;
	now the monstersetup of M is 1;
	while M is in School01 or M is off-stage:
		now M is in a random placed academic room;
	now the difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To regionally place (M - a staff member):
	while M is not in the school or M is in the location of the player or M is nearby:
		now M is in a random schoolplaced room.

Definition: a staff member (called M) is human:
	decide yes.

To compute perception of (M - a staff member):
	now M is interested;
	calm M;
	say "The [M] notices you[if the player is sluttily dressed]. [otherwise]!  [end if]";
	if detention chair is grabbing the player:
		compute detention chair tease of M;
	otherwise if armband is worn:
		compute student perception of M;
	otherwise:
		compute nonstudent perception of M.

To compute student perception of (M - a staff member):
	do nothing.

To compute nonstudent perception of (M - a staff member):
	say "[speech style of M]'You!  Where is your armband?!'[roman type][line break][Big he of M] takes an aggressive stance.";
	anger M.

To compute (M - a staff member) reacting to armband replacement:
	if M is in the location of the player, say "[ArmbandCalming of M]";
	calm M.

To say ArmbandCalming of (M - a staff member):
	if M is unfriendly, say "The [M] calms down.".

Part - Protection

To compute (M - a staff member) protecting against (X - a monster):
	say "[speech style of M]'[if X is staff member]Another rebellion?!'[otherwise]NO FIGHTING!'[end if][roman type][line break]The [M] turns aggressive.";
	anger M.

Part - Combat

This is the staff member unique punishment rule:
	if there is a worn armband: [No staff members have yet been killed]
		compute detention of current-monster;
		repeat with M running through unfriendly staff members:
			calm M;
	otherwise:
		compute current-monster dungeon locking;
	rule succeeds.

The unique punishment rule of a staff member is usually the staff member unique punishment rule.


Part - Defeat

To compute unique death of (M - a staff member):
	say "The [M] slumps to the ground. Before [he of M] disappears, [he of M] mutters some words under [his of M] breath. Suddenly your [armband] fizzles into thin air!";
	now armband is in Holding Pen.


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
	say "[variable custom style]'[if the rank of the player is 1]Where [one of]are we?'[or]am I?'[at random][otherwise]What's the best way to increase my rank?'[end if][roman type][line break]".

To say EscapeQuestion of (M - a staff member):
	say "[variable custom style]'What stuff is there to find deeper in the school?'[roman type][line break]".

To say StoryQuestion of (M - a staff member):
	say "[variable custom style]'What's up with this place?'[roman type][line break]".

To say AdviceQuestion of (M - a staff member):
	say "[variable custom style]'Any advice for an eager student?'[roman type][line break]".

To say WhoAnswer of (M - a staff member):
	say "[speech style of M]'I should clearly be teaching you not to ask stupid questions!'[roman type][line break]".

To say WhereAnswer of (M - a staff member):
	say "[speech style of M]'[if the rank of the player is 1]Geez, you're pretty far gone, aren't you?'[otherwise]Ranks are earned, and not without effort. It's important you realise that.'[end if][roman type][line break]".

To say EscapeAnswer of (M - a staff member):
	say "[speech style of M]'Wouldn't you like to know.'[roman type][line break]".

To say StoryAnswer of (M - a staff member):
	say "[speech style of M]'This institution has been around longer than any of its members, that's for sure. Its origins are still surrounded in mystery.'[roman type][line break]".

To say AdviceAnswer of (M - a staff member):
	say "[speech style of M]'Don't take off your armband.'[roman type][line break]".

To compute teaching of (M - a staff member):
	say "[speech style of M]'Is that supposed to be some kind of joke?'[roman type][line break]".

To decide which number is the annoyance threshold of (M - a staff member):
	decide on 999999.
	

Part - Teachers

A teacher is a kind of staff member. A teacher has an indexed text called teacher-name. Understand the teacher-name property as describing a teacher.

An emerald-teacher is a kind of teacher. A ruby-teacher is a kind of teacher. A pink-diamond-teacher is a kind of teacher. A diamond-teacher is a kind of teacher.

The printed name of teacher is "[if item described is in the location of the player][TQlink of item described][end if][input-style]teacher[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".


Part - Lessons

A lesson is a kind of object. A lesson has a teacher called lesson-teacher.

class-time is a number that varies. class-time is 1000.

chosen-lesson is an object that varies.

lesson-room is a room that varies.

This is the class-time cooldown rule:
	if class-time < 1000: [We use 1000 to represent that the player hasn't been to a class before]
		decrease class-time by counters-seconds;
		if class-time <= 0 and class-time + counters-seconds > 0 and armband is worn:
			say "[bold type]Your [ShortDesc of armband] begins to beep like an alarm clock!  [line break][variable custom style][one of]Huh?!  Does this mean it's time for the next class or something?[or]Time for class again...[stopping][roman type][line break]".
The class-time cooldown rule is listed in the advance counters rules.

Definition: a lesson (called L) is correctly-ranked:
	if lesson-room is School14 and the lesson-teacher of L is sapphire-teacher, decide yes;
	if lesson-room is School18 and the lesson-teacher of L is emerald-teacher, decide yes;
	if lesson-room is School29 and the lesson-teacher of L is ruby-teacher, decide yes;
	if lesson-room is School30 and the lesson-teacher of L is pink-diamond-teacher, decide yes;
	decide no.

Definition: a lesson (called L) is appropriate:
	if the lesson-teacher of L is alive, decide yes;
	decide no.

Report going north:
	now lesson-room is the location of the player;
	compute potential lesson.

To compute potential lesson:
	if lesson-room is a lecture academic room and armband is worn and the armband-print of armband is not "new recruit":
		if class-time is 1000 or class-time <= 0:
			now chosen-lesson is a random correctly-ranked appropriate lesson;
			if chosen-lesson is not lesson: 
				say "ERROR: No lesson currently coded for this class for the player's current state. If this is an early alpha of the school, it's likely that this content just doesn't exist yet!  Come back soon.";
			otherwise if class-time < -300:
				compute detention of lesson-teacher of chosen-lesson;
			otherwise:
				set up chosen-lesson;
				compute teaching of chosen-lesson;
			now class-time is 300.

To set up (L - a lesson):
	repeat with M running through monsters in lesson-room:
		regionally place M;
		bore M; 
	now the lesson-teacher of L is in lesson-room;
	bore the lesson-teacher of L;
	repeat with M running through alive lesson-appropriate students:
		now M is in lesson-room;
		bore M. [It's important that everyone is bored because otherwise after the lesson they'll all immediately notice the player]

Part - Detention

detention-turns is a number that varies.

This is the detention decay rule:
	if detention-turns > 0, decrease detention-turns by 1.
The detention decay rule is listed in the advance counters rules.

To compute detention of (M - a staff member):
	now M is in the location of the player;
	let R be a random number between 1 and 2;
	if health of M < the maxhealth of M, say GenericDetention of M;
	otherwise say LateDetention of M;
	if R is 1 and diaper quest is 0, compute remedial detention of M;
	otherwise compute chair detention of M.

To say LateDetention of (M - a staff member):
	say "The [M] stares at you. It looks like [he of M] has been waiting for you.[line break][speech style of M]'YOU'RE LATE!  Class is already over!  It's detention for you, young Miss. Come with me now!'[roman type][line break]".

To say GenericDetention of (M - a staff member):
	say "The [M] looks furious. [line break][speech style of M]'It[']s DETENTION for you, young Miss. Come with me now!'[roman type][line break]".

dq-staff-detention is a diaper punishment.  the priority of dq-staff-detention is 5.

To compute punishment of (P - a dq-staff-detention):
	follow the unique punishment rule of current-monster.

Definition: a dq-staff-detention (called P) is appropriate:
	if current-monster is staff member, decide yes;
	decide no.

Section - Chair Detention

To compute TQChairSetup of (M - a staff member):
	let K be a random worn trousers;
	if K is trousers:
		say "[big he of M] rips your [K] off of you.";
		destroy K;
	now K is a random worn knickers;
	if K is knickers:
		say "[big he of M] rips your [K] off of you.";
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
	say "[speech style of M]'[if the health of M < the maxhealth of M]We will not allow aggressive behaviour in this school, as you are about to learn the hard way[otherwise]If you can't get to class on time then you'll have to catch up the hard way[end if]. [if diaper quest is 1 and the number of worn diapers is 0]Put on this diaper and sit.[otherwise]Sit[end if].'[roman type][line break][big he of M] points to the chair with a vibrating wand fixed in the centre. ";
	if diaper quest is 0 or the number of worn diapers is 0, compute TQChairSetup of M;[in TQ underwear is always removed]
	if (diaper quest is 1 or a random number between 0 and 3 < diaper lover) and the number of worn diapers is 0, compute DQChairSetup of M;
	say "[if the delicateness of the player > 10]You crawl over to the [detention chair] and pull yourself into it[otherwise if the delicateness of the player > 4]The [M] drags you over to the [detention chair] and waits as you obediently pull yourself into it[otherwise]The [M] drags you over to the [detention chair] and forces you into it[end if], [if the delicateness of the player > 10]submissively allowing [him of M] to bind[otherwise], quickly binding[end if] you in place with the straps. ";
	if the player is able to speak:
		say "[if the player is able to speak][line break][speech style of M]'[one of]These are the rules: You must announce out loud whenever you orgasm, and whenever someone speaks to you, you must say [']Thank you for putting me in my place, Sir or Ma[']am.'[or]I[']d tell you the rules, but unfortunately we have been through this before.'[stopping][roman type][line break][end if]She points to a camera in the upper corner of the room, facing the chair. [line break][speech style of M]I will be watching. I will release you when I believe you have learned your lesson.'[roman type][line break]";
	otherwise:
		say "[speech style of M]I will release you when I believe you have learned your lesson.'[roman type][line break]";
	compute room leaving of M;
	now M is in Holding Pen;
	repeat with N running through alive students:
		now the boredom of N is 0;
		now N is uninterested;
	repeat with N running through alive staff members:
		now the boredom of N is 0;
		now N is uninterested;
	now the stance of the player is 1;
	now detention chair is grabbing the player;
	now detention chair is detention-wand.

To DetentionChairWait:
	while detention chair is grabbing the player:
		now seconds is 6;
		compute extra turn.

A time based rule (this is the detention chair rule):
	if detention chair is grabbing the player:
		if detention chair is detention-wand:
			compute wand chair detention;
		otherwise:
			compute rem chair detention.

To compute wand chair detention:
	repeat with M running through uninterested alive students:
		if the boredom of M is 0, check seeking 1 of M; [NPCs make their way to watch the spectacle]
	if detention-turns > 0:
		say "The magic wand [one of]buzzes powerfully[or]continues to buzz[stopping]!";[possibly add text here describing arousal so far]
		arouse 500;
		increase the fatigue of the player by 30;
		if vagina is pushed over the edge, vaginally orgasm shamefully;
	otherwise:
		let M be a random staff member in Holding Pen;
		if M is staff member:
			now M is in the location of the player;
			say "The [M] returns and after looking at your exhausted state gives you a wide smirk. [big he of M] doesn't say anything but just releases you from the bindings before sauntering off.";
			distract M;
		otherwise:
			say "BUG: There's no teacher to summon to release the player. The player will be released anyway so that the game doesn't freeze!";
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
			if the delicateness of the player <= 12, say "You're just too tired to fight it, and say the words without hesitation.[line break]";
			say "[variable custom style]'Thank you for putting me in my place, [if M is female]Ma'am[otherwise]Sir[end if].'[roman type][line break]";
			say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame.";
			humiliate 60;[it's extra humiliating because you had to thank them]
		otherwise:
			say "The lens on the camera in the corner seems to increase its focus. Thank the [M]?[line break]"; [###Selkie: That sounds a bit far-fetched. What about: "The red light on the camera glows more intensely"?]
			if the player consents:
				say "[variable custom style]'Thank you for putting me in my place, [if M is female]Ma'am[otherwise]Sir[end if].'[roman type][line break]";
				say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame, unable to look [him of M] in the eye as you [if the delicateness of the player < 3]growl[otherwise if the delicateness of the player < 6]mutter[otherwise]recite[end if] the words.";
				humiliate 75;
			otherwise:
				say "[if the delicateness of the player < 3]You say nothing and stick out your tongue at the camera[otherwise if the delicateness of the player < 6]You avert your eyes from the camera and say nothing[otherwise]You quickly avert your eyes from the camera, trying not to tremble as you purposefully say nothing[end if].";
				increase detention-turns by 2;
	otherwise:
		say "You [one of]shiver[or]shudder[or]cringe[in random order] with shame.";
		humiliate 50.
	

This is the detention orgasm announcement rule:
	if detention chair is grabbing the player and the player is able to speak:
		if the player is feeling submissive or the fatigue of the player > 200:
			say "You hear the camera in the corner focusing on you, and loudly blurt out the truth. [line break][variable custom style]'[one of]I CAME FROM BEING IN DETENTION!'[or]MY DETENTION PUNISHMENT JUST MADE ME CUM!'[or]ANYONE WHO CAN SEE ME SHOULD KNOW I JUST CAME FROM BEING IN DETENTION!'[in random order][roman type][line break]";
			repeat with M running through monsters in the location of the player:
				say detention orgasm reaction of M;
				humiliate 45;
			humiliate 100;
		otherwise:
			say "The lens on the camera in the corner zooms out to focus on you, and you can't help but feel someone on the other end is looking right at you. Announce that you just came?[line break]";
			if the player consents:
				say "[variable custom style]'[one of]GUESS WHO JUST CAME FROM BEING IN DETENTION!'[or]I[']M A [if diaper quest is 1]NAUGHTY BABY[otherwise]DIRTY SLUT[end if] WHO CAME FROM BEING IN DETENTION!'[or]LOOK AT ME! DETENTION MADE ME CUM!'[or]MY DETENTION PUNISHMENT JUST MADE ME CUM!'[or]ANYONE WHO CAN SEE ME SHOULD KNOW I JUST CAME FROM BEING IN DETENTION!'[in random order][roman type][line break]";[TODO: more interesting + nearby monsters react]
				repeat with M running through monsters in the location of the player:
					say detention orgasm reaction of M;
					humiliate 55;
				humiliate 100;
			otherwise:
				say "You [if the delicateness of the player < 2]look right at the camera, refusing to say anything[otherwise]look away from the camera and say nothing[end if][if the number of monsters in the location of the player > 0], hoping your silence will prevent anyone around you from catching on[end if].";
				repeat with M running through monsters in the location of the player:
					if (the player is male and a random number between 1 and 2 is 1) or a random number between 1 and 4 is 1:
						say detention orgasm reaction of M;
						humiliate 40;
				increase detention-turns by 4;
		rule succeeds.
The detention orgasm announcement rule is listed last in the orgasm resolution rules.

To say detention orgasm reaction of (M - a monster):
	say "[speech style of M]'[one of]Wow, so you[']re really enjoying your punishment THAT much?'[or]What kind of desperate slut actually has an orgasm from something like that?'[or]Is that why you earned yourself a detention? So everyone could watch you cum?'[or]So, you got in trouble on purpose then?'[or]I hope I don[']t get detention after you.'[in random order][roman type][line break][M] can't help but watch you.".

To say detention orgasm reaction of (M - a teacher):
	say "[speech style of M]'[one of]If you enjoy the punishment that much, maybe you should be the one to clean the floor when you[']re done.'[or]Pathetic. That wand isn't even on the highest setting.'[or]Honestly, you haven[']t even been in the chair that long.'[in random order][roman type][line break][M] rolls [his of M] eyes as [he of M] watches you.".

[
More detention ideas:

Portfolio
-Player is stripped and has a set number pictures taken of their body. They need to get each picture captioned to end the detention.
-Player is given a picture portfolio and a marker to carry. The player can offer the marker or the portfolio to a student, who will then add a caption.
-The player can caption the pictures themselves, but the ink will erase itself from the picture unless the player has a high enough humiliation level to write something scandalous.
	-bodily fluids will also work as captions.
-The player won't be able to leave the school until they finish the portfolio. Pink pill should still teleport, and fainting should probably end it. 
	-Possibly they won't be able to put clothes back on until they complete it.
-Player has to print out a set number of humiliating pictures and hang them up around campus/hand them out to students

Apology
-Player has to wear the "sorry outfit/collar". They need to visit a set number of staff members in order to take it off.
	-Not sure what the sorry outfit could be.
	-Maybe the outfit involves some really big plugs
	-Possibly it's really gross?
-The player's armband prevents the player from the school until the "sorry item" is gone. Pink pill would still teleport, though, and fainting should probably end the detention.
-The "sorry item" forces the player to apologize to everyone they meet, as long as they are able to speak.
-The apology wouldn't be assigned if the player is wearing a gag, and the player would have their gag confiscated if a teacher saw it.
	-The gameplay here forks for players: They can try to hide and meet as few people as possible on their way to each of the teachers, or try to get away with wearing a gag through each of the halls without meeting a teacher too early.

Hypno
-Player is strapped into a chair and forced to wear headphones, etc. Could be the detention chair or another one. The player is forced to watch a video hypnotizing them to be slutty or something, and there's a narrator that says stuff into the player's ear so waiting around through the punishment duration doesn't get stale.

Hole
-Player has to work a gloryhole for high level students. (timer)

Cup challenge
-The player is cuffed and locked into a gloryhole. The player will be presented a number of opaque cups. The player's detention ends when the timer is finished, or when the player drinks the right cup.
-One cup is milk
-DQ: The other four cups are filled with water
-TQ: The other four cups are filled with semen
-One cup has a birth control pill dissolved in it
-One cup has a negative pill dissolved in it
	-DQ: its that kind of pill.
	-TQ: arousal pill?
-One cup is just the substance.
-One cup has a thing added to it that tells the player's armband detention is over
-Each cup has a volume and weight written on it. The player can get ahead by memorizing what the weight should be per volume of substance and picking the one that's off
-The player will get fucked while they fiddle around with the cups

Aika: I like a lot of these ideas but most of them give the player a way to rebel, which then obviously needs to be handled somehow.
MG: The idea with a lot of these was to give the player a bit of a minigame to play. I think the detention should have ways to minimize its effects built in, that way if the player has already seen this type of detention, they aren't bored, and I think its very thematic to be rebellious during detention.

]

[Two ideas here:
The player watches a pornographic video in class and has to write a report on what insights the narrator had on "<insert idea here>"

The player is strapped into a chair and has to watch a "remedial" seminar to make up for lost class time. Really its a hypno screen that the player has to stare at for a while

]

[player is forced to watch a hypno video]
To compute remedial detention of (M - a staff member):
	now detention chair is detention-remedial;
	now detention-turns is a random number between 8 and 12;
	drag to School13 by M;
	say "[speech style of M]'[if the health of M < the maxhealth of M]Clearly you need extra curriculum if you believe you have the time to be aggressive with teachers[otherwise]If you can't get to class on time then you'll have to catch up the hard way[end if]. Sit.'[roman type][line break][big he of M] points to the chair in the centre of the room.";
	[if diaper quest is 0 or the number of worn diapers is 0, compute TQChairSetup of M;[in TQ underwear is always removed]
	otherwise compute DQChairSetup of M;]
	say "[if the delicateness of the player > 10]You crawl over to the [detention chair] and pull yourself into it[otherwise if the delicateness of the player > 4]The [M] drags you over to the [detention chair] and waits as you obediently pull yourself into it[otherwise]The [M] drags you over to the [detention chair], cruelly pinching your ear until you pull yourself into it[end if]. [big he of M] quickly straps you in place as a giant screen slowly lowers from the ceiling.[line break][speech style of M]'[one of]This is an advanced class, for YOUR benefit. Pay attention.[or]Pay attention this time.'[stopping][roman type][line break]She slides a pair of headphones into place over your head, quickly leaving the room as the screen flickers to life and a [one of]syncopated[or]familiar[stopping] rythm begins playing into your ears.";
	if diaper quest is 0, say "Short clips of [if tg fetish is 1]transexual [end if]pornstars stripping off their clothes appear on the screen, and the music's volume slowly rises as a husky feminine voice begins speaking right into your ear.[line break][first custom style]'Welcome to my classroom, baby. You can call me Mistress Professor. Are you ready for a lesson?'[roman type][line break]A hypnotic swirling pattern fades into the screen as male actors gradually begin to appear in the clips, and you suddenly realize how hard it is to pull your eyes away from the screen. You realize you have no choice but to fight off the hypnosis until you're released!";
	otherwise say "PLACEHOLDER";
	compute room leaving of M;
	now M is in Holding Pen;
	now School13 is bossed;
	now the stance of the player is 1;
	now detention chair is grabbing the player.

To compute rem chair detention:
	if detention chair is grabbing the player:
		if detention-turns > 0:
			let N be a random number between the sex addiction of the player and (the intelligence of the player * -1);
			if N < -9:
				say "[one of]You manage to shut everything out completely, drowning out the professor's voice by humming in your head.[or]You focus on ignoring the professor's voice, visualizing yourself breaking free of the straps.[or]You shut your eyes, focusing everything on keeping the professor's voice from penetrating your thoughts.[or]You tear your eyes away from the screen, focusing on ignoring everything the narrator whispers into your ears.[at random]";
			otherwise if N < -3:
				say "[one of]You manage to tear your eyes away from the screen, but the narrator's voice in your head still sends shivers down your spine![or]You look away from the screen, but the professor's voice still sends tingles through your body.[or]You manage to keep your eyes shut, but you can't shut out the narrator's voice in your head![or]You tears your eyes away from the screen, but the narrator's voice remains loud and clear in your ear![at random]";
				say RemHypnoMantra;
				humiliate TRIVIAL-HUMILIATION + TRIVIAL-HUMILIATION;
			otherwise if N < 6:
				say RemHypnoContent;
				say "[one of]The professor's voice seems to reverberate in your head as you unsuccessfully try to tear your eyes off the screen.[or]Your eyes refuse to look away from the screen, and no matter what you do the voice of the professor continues to penetrate your thoughts![or]You try to keep your eyes shut, but they're glued to the screen! The professor's voice seems to resonate with everything happening in front of you.[or]You can't tear your eyes away from the screen, and you find yourself repeating everything the professor whispers in your ear.[at random]";		
				say RemHypnoMantra;
				humiliate SLIGHT-HUMILIATION;
			otherwise:
				say RemHypnoContent;
				say "[one of]You hang on the professor's every word as you stare at the screen.[or]You don't even think of looking away, taking in the professor's voice as you stare at the screen.[or]You can't help staring at the screen, letting the music reverberate in your head as the professor whispers in your ear.[or]You let the professor's voice wash over you as you take in everything on the screen.[at random]";
				say RemHypnoMantra;
				humiliate SLIGHT-HUMILIATION + TRIVIAL-HUMILIATION;
		otherwise:
			let M be a random staff member in Holding Pen;
			if M is staff member:
				now M is in the location of the player;
				say "Panning clips of pornstars [if bukkake fetish is 1]with cum plastered all over their faces[otherwise if diaper quest is 0]displaying their gaping holes to the camera[otherwise]PLACEHOLDER[end if] cycle on the screen as the hypnotic swirling pattern fades and the syncopated rythm winds down. [line break][first custom style]'Thanks for learning. That's all for today![roman type][line break]The screen flickers off, and a few moments pass before you hear the door unlock and the [M] reenters the room. [big he of M] doesn't say anything as she removes your headphones and frees you from your bindings.";
				distract M;
				now the location of the player is not bossed;
			otherwise:
				say "BUG: There's no teacher to summon to release the player. The player will be released anyway so that the game doesn't freeze!";
			now detention chair is not grabbing the player.
		

To say RemHypnoContent:
	if diaper quest is 0, say "[one of]A clip of a [if tg fetish is 1]transexual [end if]pornstar getting gangbanged by five guys shows on the screen.[or]A zoomed in shot of a pornstar being anally destroyed by two [manly-penis]s at once shows on the screen.[or]The screen shows a pornstar getting her makeup ruined as her partner fucks her face.[or]The screen shows a pornstar grinning as her partner smacks her in the face, slamming his dick in and out of her [asshole].[or]The video shows a pair of [if tg fetish is 1]transexual [end if]pornstars taking turns getting spitroasted by a group of 9 guys.[in random order]";
	otherwise say "PLACEHOLDER".

To say RemHypnoMantra:
	if diaper quest is 0, say "[line break][first custom style]'[one of]Doesn[']t that look good, baby?'[or]Wouldn[']t that feel good, baby?'[or]It always feels good to say yes.'[or]You love saying yes.'[or]No means yes. Yes means yes.'[or]Don[']t you wish that was you?'[or]Let him do it, baby.'[or]One isn[']t enough for you, baby.'[or]Teach him no means yes.'[or]Scream when you want it. Hope they realize the truth when they say you don[']t.'[in random order][roman type][line break]";[The goal of the "hypnosis" is to progress the player toward being fully broken]
	otherwise say "PLACEHOLDER".


Staff Framework ends here.

