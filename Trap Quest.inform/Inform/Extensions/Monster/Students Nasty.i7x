Students Nasty by Monster begins here.

A nasty student is a kind of student. Understand "mean" as a nasty student.

To decide which number is the aggro limit of (M - a nasty student): [The number at which they turn unfriendly]
	decide on 12.
To decide which number is the freebie-reluctance of (M - a nasty student):
	decide on 99.

To say MediumDesc of (M - a nasty student):
	say "mean [rank-colour of M] student [student-name of M]".
To say NameDesc of (M - a nasty student):
	say "[input-style]nasty [student-name of M][roman type]".
To say BigNameDesc of (M - a nasty student):
	say "[input-style]Nasty [student-name of M][roman type]".

To decide which number is the unique vindictiveness of (M - a nasty student): [We can use this for various calculations to check which students do what]
	decide on a random number between 2 and 4.

To say FarGoneAppearanceAssessment of (M - a nasty student):
	say "[BigNameDesc of M] screws up [his of M] face when [he of M] sees you.[line break][speech style of M]'[one of]What the fuck, freak?! Get away from me!!!'[or]OMG, you disgusting whore! Fuck off, just being near you is bad for my reputation.'[or]You are literally the most disgusting person I've ever seen.'[in random order][roman type][line break]".

To say LewdAppearanceAssessment of (M - a nasty student):
	say "[BigNameDesc of M] looks at you with distaste.[line break][speech style of M]'[one of]Look what the cat dragged in. You look like shit.'[or]Err, slut alert. Stop trying so hard, fuckface, you're making the rest of us look bad.'[or]Um, this is a place of education, not a brothel. Piss off, whore.'[in random order][roman type][line break]".

To say ToiletReactionFlav of (M - a nasty student):
	if the current-rank of M > 4, say "[BigNameDesc of M] stares at you, smirking. [slightHumiliateReflect]";
	otherwise say "[BigNameDesc of M] scowls at you.[line break][speech style of M]'[one of]Don't do that in front of me, you tramp!'[or]You really are disgusting.'[or]Perverted exhibitionist freak.'[in random order][roman type][line break][strongHumiliateReflect]".

Part - Lucy

student-lucy is a nasty student.

The text-shortcut of student-lucy is "stlu".

Figure of lucy is the file "NPCs/School/Student/student12.png".

To decide which figure-name is the monster-image of (M - student-lucy):
	decide on figure of lucy.

To say MonsterDesc of (M - student-lucy):
	say "This tall blonde is wearing a tartan miniskirt and a [if the current-rank of M is 3]slightly sheer [end if]crop top. Knee-high white cotton stockings sit snug under [his of M] neat black court shoes. [if the current-rank of M is 3 and diaper quest is 1]You think you can detect that [his of M] skirt is bulging slightly - you reckon [he of M] might be wearing a diaper now! [end if][big he of M] looks down at you with a [if the current-rank of M is 1]furious[otherwise]mocking[end if] sneer.".

The max-rank of student-lucy is 3.
The current-rank of student-lucy is 2.

To update name of (M - student-lucy):
	if the current-rank of M is 1:
		now the student-name of M is "Lucinda";
		now the student-print of M is "basic bitch";
	otherwise if the current-rank of M is 2:
		now the student-name of M is "Lucy";
		now the student-print of M is "boisterous brat";
	otherwise:
		now the student-name of M is "Lucky";
		now the student-print of M is "feisty fiend".

To say WhoAnswer of (M - student-lucy):
	say "[speech style of M]'[if the current-rank of M is 1]Thanks to YOU, I have to be [student-name of M] again. I'll never forget what you did to me, you [bitch].'[otherwise]You can call me Queen [student-name of M][end if].'[roman type][line break]".

To say StoryAnswer of (M - student-lucy):
	say "[speech style of M]'I came here of my own volition. Someone has to show the rest of you tramps how to act right.'[roman type][line break]".

To say EscapeAnswer of (M - student-lucy):
	say "[speech style of M]'Aww, the wimpy little [bitch] wants to know the school's secrets. You don't deserve to know anything, tramp!'[roman type][line break]".

To say AdviceAnswer of (M - student-lucy):
	say "[speech style of M]'[if the current-rank of M is 1]Yeah. Watch your fucking back[otherwise]Nothing I could say would stop you from being a pathetic little worm[end if]!'[roman type][line break]".

Part - Default Conversation

To compute nonstudent perception of (M - a nasty student):
	say "[speech style of M]'Your days are numbered if you keep walking around here with no armband.'[roman type][line break][big he of M] walks away!";
	now the scared of M is 50.

[The nasty student has the protection function of a normal monster.]
To compute (M - a nasty student) protecting against (X - a monster):
	compute default protecting of M.

To say FirstTimeBullyDemandFlav of (M - a nasty student):
	say "[speech style of M]'[one of]It's not your lucky day today. Get on your knees, [bitch].'[or]Guess what? I'll go easy on you if you get on your knees right now.'[or]You look pretty fun to mess with. Get on your knees.'[at random][roman type][line break]".

To say FirstTimeBullyFlav of (M - a nasty student):
	say "[speech style of M]'[one of]It's not your lucky day, [bitch].'[or]You look pretty fun to mess with. I wonder if you'll even fight back.'[at random][roman type][line break]".

To say RepeatBullyDemandFlav of (M - a nasty student):
	say "[speech style of M]'[one of]Well, well, well, look who it is. Get on your knees, [bitch].'[or]How dare you STAND in my presence? Get on your knees, worm!'[or]I'm sorry, did I give you permission to be on your feet in my presence? Get on the ground, now!'[at random][roman type][line break]".

To say RepeatBullyFlav of (M - a nasty student):
	say "[speech style of M]'[one of]Well, well, well, look who it is. My favourite footrest.'[or]Oops! I bet you weren't hoping to run into me today, huh?'[or]Oh, what perfect timing!'[at random][roman type][line break]".

To say FirstResponse of (M - a nasty student):
	say "[big he of M] narrows [his of M] eyes.[line break][speech style of M]'What the fuck do you want?'[roman type][line break]".

To say RepeatResponse of (M - a nasty student):
	say FirstResponse of M.

To say WhoAnswer of (M - a nasty student):
	say "[speech style of M]'Can't you fucking read my armband? The name's [student-name of M]. For now.'[roman type][line break]".

To say WhereAnswer of (M - a nasty student):
	say "[speech style of M]'[if the rank of the player <= 1]A place where ugly bitches like you get turned into cute girls like me.'[otherwise]Are you asking for ways to cheat? You're a real piece of work, aren't you?'[end if][roman type][line break]".

To say EscapeAnswer of (M - a nasty student):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]Hah, if you want to know you have to earn the privilege!'[otherwise]Even if I knew, I wouldn't tell you.'[end if][roman type][line break]".

To say AdviceAnswer of (M - a nasty student):
	say "[speech style of M]'Quit now before you end up in the School Dungeon.'[roman type][line break]".

To compute teaching offer of (M - a nasty student):
	say "[speech style of M]'Why would I? I don't owe you anything.'[roman type][line break]".

To compute friendly drink of (M - a nasty student):
	say "[speech style of M]'Do I look like I'm in the mood to help you out?!'[roman type][line break]".

To say detention chair tease of (M - a nasty student):
	say "[speech style of M]'[one of]Bahahah, you really are the worst, aren't you?'[or]You should just give up, you know. Someone like you is never going to make it in a place like this.'[or]Nyer nyer, look at the loser on [his of the player] punishment chair. Enjoying yourself, [bitch]?'[in random order][roman type][line break]".

Students Nasty ends here.
