Trainees Nasty by Monster begins here.

A nasty trainee is a kind of trainee. Understand "mean" as a nasty trainee.

To decide which number is the aggro limit of (M - a nasty trainee): [The number at which they turn unfriendly]
	decide on 12.
To decide which number is the freebie-reluctance of (M - a nasty trainee):
	decide on 99.

To say MediumDesc of (M - a nasty trainee):
	say "mean [rank-colour of M] trainee [trainee-name of M]".
To say NameDesc of (M - a nasty trainee):
	say "[input-style]nasty [trainee-name of M][roman type]".
To say BigNameDesc of (M - a nasty trainee):
	say "[input-style]Nasty [trainee-name of M][roman type]".

To decide which number is the unique vindictiveness of (M - a nasty trainee): [We can use this for various calculations to check which trainees do what]
	decide on a random number between 2 and 4.

To say FarGoneAppearanceAssessment of (M - a nasty trainee):
	say "[BigNameDesc of M] screws up [his of M] face when [he of M] sees you.[line break][speech style of M]'[one of]What the fuck, freak?! Get away from me!!!'[or]OMG, you disgusting whore! Fuck off, just being near you is bad for my reputation.'[or]You are literally the most disgusting person I've ever seen.'[in random order][roman type][line break]".

To say LewdAppearanceAssessment of (M - a nasty trainee):
	say "[BigNameDesc of M] looks at you with distaste.[line break][speech style of M]'[one of]Look what the cat dragged in. You look like shit.'[or]Err, slut alert. Stop trying so hard, fuckface, you're making the rest of us look bad.'[or]Um, this is a place of education, not a brothel. Piss off, whore.'[in random order][roman type][line break]".

To say ToiletReactionFlav of (M - a nasty trainee):
	if the current-rank of M > 4, say "[BigNameDesc of M] stares at you, smirking. [slightHumiliateReflect]";
	otherwise say "[BigNameDesc of M] scowls at you.[line break][speech style of M]'[one of]Don't do that in front of me, you tramp!'[or]You really are disgusting.'[or]Perverted exhibitionist freak.'[in random order][roman type][line break][strongHumiliateReflect]".


Part - Belinda

trainee-belinda is a nasty trainee.

Definition: a trainee is scrunchie-giving:
	if it is trainee-belinda, decide yes;
	decide no.

The text-shortcut of trainee-belinda is "trbe".

Figure of belinda is the file "NPCs/Facility/Trainee/trainee15.jpg".

To decide which figure-name is the monster-image of (M - trainee-belinda):
	decide on figure of belinda.

To say MonsterDesc of (M - trainee-belinda):
	say "This skinny [man of M] has blonde pigtails and an unfriendly scowl. [big he of M] is wearing a tight indigo belly-exposing latex top with a diamond-shaped cleavage window and matching latex pants and long fingerless gloves[if the current-rank of M > 1]. [big he of M] has a tattoo that reads 'Daddy's [big boy of M]' on [his of M] left arm, and you could swear [his of M] top is a tiny bit more translucent than before[end if][if the scrunchies-donated of M is 0]. [big he of M] has two spare scrunchies on [his of M] wrist[otherwise]. [big he of M] has one spare scrunchie left on [his of M] wrist[end if].".

The max-rank of trainee-belinda is 2.

To update name of (M - trainee-belinda):
	if the current-rank of M is 1:
		now the trainee-name of M is "Belinda";
		now the trainee-print of M is "rubber rebel";
	otherwise:
		now the trainee-name of M is "Belle";
		now the trainee-print of M is "lil monster".

To say StoryAnswer of (M - trainee-belinda):
	say "[speech style of M]'[big princes] in my kingdom are expected to act all bratty. [if the current-rank of M is 1]Apparently this place is going to convince me it's fun to act like a bratty [sissy-girl]. We'll see...'[otherwise]So I'm training to be a bratty babygirl. I think I've got the attitude for this role already, hah!'[end if][roman type][line break]".

Part - Lucy

trainee-lucy is a nasty trainee.

The text-shortcut of trainee-lucy is "trlu".

Figure of lucy is the file "NPCs/Facility/Trainee/trainee12.png".

To decide which figure-name is the monster-image of (M - trainee-lucy):
	decide on figure of lucy.

To say MonsterDesc of (M - trainee-lucy):
	say "This tall blonde is wearing a tartan miniskirt and a [if the current-rank of M is 3]slightly sheer [end if]crop top. Knee-high white cotton stockings sit snug under [his of M] neat black court shoes. [if the current-rank of M is 3 and diaper quest is 1]You think you can detect that [his of M] skirt is bulging slightly - you reckon [he of M] might be wearing a diaper now! [end if][big he of M] looks down at you with a [if the current-rank of M is 1]furious[otherwise]mocking[end if] sneer.".

The max-rank of trainee-lucy is 3.
The current-rank of trainee-lucy is 2.

To update name of (M - trainee-lucy):
	if the current-rank of M is 1:
		now the trainee-name of M is "Lucinda";
		now the trainee-print of M is "basic bitch";
	otherwise if the current-rank of M is 2:
		now the trainee-name of M is "Lucy";
		now the trainee-print of M is "boisterous brat";
	otherwise:
		now the trainee-name of M is "Lucky";
		now the trainee-print of M is "feisty fiend".

To say WhoAnswer of (M - trainee-lucy):
	say "[speech style of M]'[if the current-rank of M is 1]Thanks to YOU, I have to be [trainee-name of M] again. I'll never forget what you did to me, you [bitch].'[otherwise]You can call me Queen [trainee-name of M][end if].'[roman type][line break]".

To say StoryAnswer of (M - trainee-lucy):
	say "[speech style of M]'I'm already technically the Queen of my kingdom, but I came here anyway of my own volition. Someone has to show the rest of you tramps how to act right.'[roman type][line break]".

To say EscapeAnswer of (M - trainee-lucy):
	say "[speech style of M]'Aww, the wimpy little [bitch] wants to know the place's secrets. You don't deserve to know anything, tramp!'[roman type][line break]".

To say AdviceAnswer of (M - trainee-lucy):
	say "[speech style of M]'[if the current-rank of M is 1]Yeah. Watch your fucking back[otherwise]Nothing I could say would stop you from being a pathetic little worm[end if]!'[roman type][line break]".

Part - Default Conversation

To compute nontrainee perception of (M - a nasty trainee):
	say "[speech style of M]'Your days are numbered if you keep walking around here with no armband.'[roman type][line break][big he of M] walks away!";
	now the scared of M is 50.

[The nasty trainee has the protection function of a normal monster.]
To compute (M - a nasty trainee) protecting against (X - a monster):
	compute default protecting of M.

To say FirstTimeBullyDemandFlav of (M - a nasty trainee):
	say "[speech style of M]'[one of]It's not your lucky day today. Get on your knees, [bitch].'[or]Guess what? I'll go easy on you if you get on your knees right now.'[or]You look pretty fun to mess with. Get on your knees.'[at random][roman type][line break]".

To say FirstTimeBullyFlav of (M - a nasty trainee):
	say "[speech style of M]'[one of]It's not your lucky day, [bitch].'[or]You look pretty fun to mess with. I wonder if you'll even fight back.'[at random][roman type][line break]".

To say RepeatBullyDemandFlav of (M - a nasty trainee):
	say "[speech style of M]'[one of]Well, well, well, look who it is. Get on your knees, [bitch].'[or]How dare you STAND in my presence? Get on your knees, worm!'[or]I'm sorry, did I give you permission to be on your feet in my presence? Get on the ground, now!'[at random][roman type][line break]".

To say RepeatBullyFlav of (M - a nasty trainee):
	say "[speech style of M]'[one of]Well, well, well, look who it is. My favourite footrest.'[or]Oops! I bet you weren't hoping to run into me today, huh?'[or]Oh, what perfect timing!'[at random][roman type][line break]".

To say FirstResponse of (M - a nasty trainee):
	say "[big he of M] narrows [his of M] eyes.[line break][speech style of M]'What the fuck do you want?'[roman type][line break]".

To say RepeatResponse of (M - a nasty trainee):
	say FirstResponse of M.

To say WhoAnswer of (M - a nasty trainee):
	say "[speech style of M]'Can't you fucking read my armband? The name's [trainee-name of M]. For now.'[roman type][line break]".

To say WhereAnswer of (M - a nasty trainee):
	say "[speech style of M]'[if the rank of the player <= 1]A place where ugly bitches like you get turned into cute girls like me.'[otherwise]Are you asking for ways to cheat? You're a real piece of work, aren't you?'[end if][roman type][line break]".

To say EscapeAnswer of (M - a nasty trainee):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]Hah, if you want to know you have to earn the privilege!'[otherwise]Even if I knew, I wouldn't tell you.'[end if][roman type][line break]".

To say AdviceAnswer of (M - a nasty trainee):
	say "[speech style of M]'Quit now before you end up in the Training Dungeon.'[roman type][line break]".

To compute teaching offer of (M - a nasty trainee):
	say "[speech style of M]'Why would I? I don't owe you anything.'[roman type][line break]".

To compute friendly drink of (M - a nasty trainee):
	say "[speech style of M]'Do I look like I'm in the mood to help you out?!'[roman type][line break]".

To say reconditioning chair tease of (M - a nasty trainee):
	say "[speech style of M]'[one of]Bahahah, you really are the worst, aren't you?'[or]You should just give up, you know. Someone like you is never going to make it in a place like this.'[or]Nyer nyer, look at the loser on [his of the player] punishment chair. Enjoying yourself, [bitch]?'[in random order][roman type][line break]".

Trainees Nasty ends here.
