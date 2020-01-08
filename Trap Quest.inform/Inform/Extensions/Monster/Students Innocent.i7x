Students Innocent by Monster begins here.

An innocent student is a kind of student. Understand "nervous" as an innocent student.

To say MediumDesc of (M - an innocent student):
	say "nervous [rank-colour of item described] student [student-name of item described]".

To decide which number is the dedication of (M - an innocent student): [We can use this for various calculations to check which students do what]
	decide on a random number between 0 and 3.

To decide which number is the unique vindictiveness of (M - an innocent student): [We can use this for various calculations to check which students do what]
	decide on a random number between 0 and 1.

To decide which number is the heel-skill of (M - an innocent student):
	decide on 0.


Part - Hailey

student-hailey is an innocent student.

The text-shortcut of student-hailey is "stha".

Figure of hailey is the file "NPCs/School/Student/student7.png".

To decide which figure-name is the monster-image of (M - student-hailey):
	decide on figure of hailey.

To say MonsterDesc of (M - student-hailey):
	say "This skinny brunette is wearing white short shorts and a pink bra. [if the current-rank of M is 1]You can tell the colour of [his of M] bra because the navy top covering it is rather sheer in parts. [end if][big his of M] smile looks [if the current-rank of M is 1]very warm and genuine[otherwise]a little forced[end if].".

The max-rank of student-hailey is 2.

To update name of (M - student-hailey):
	if the current-rank of M is 1:
		now the student-name of M is "Hailey";
		now the student-print of M is "new girl";
	otherwise:
		now the student-name of M is "Harley";
		now the student-print of M is "babydoll in training".

To say StoryAnswer of (M - student-hailey):
	say "[speech style of M]'I asked my boyfriend what would make him happy and he said he wanted me to try out this place, so here I am. [if the current-rank of M is 1]I'll do[otherwise]I'm doing[end if] my best...'[roman type][line break]".

Part - Default Conversation

To say WhoAnswer of (M - an innocent student):
	say "[speech style of M]'My name is [student-name of M][if the current-rank of M > the min-rank of M], or so I've been told. I didn't realise I was going to have to change my name[end if]...'[roman type][line break]".

To say WhereAnswer of (M - an innocent student):
	say "[speech style of M]'[if the rank of the player <= 1]We're in some kind of special school. To get good at making other people happy.'[otherwise]I dunno, some of the things they want us to do are pretty crazy. Surely there's another way?'[end if][roman type][line break]".

To say EscapeAnswer of (M - an innocent student):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's a few more rooms, like a junk room, and a sewing room, and I think that's about all I've seen so far.'[otherwise]I've not got any better an idea than you, I'm afraid! I'm looking forward to finding out though.'[end if][roman type][line break]".

To say AdviceAnswer of (M - an innocent student):
	say "[speech style of M]'I was kind of hoping you'd have advice for me!'[roman type][line break]".

To compute teaching of (M - an innocent student):
	say "[speech style of M]'Ha ha, no, I'm not a teacher!'[roman type][line break]".


Students Innocent ends here.
