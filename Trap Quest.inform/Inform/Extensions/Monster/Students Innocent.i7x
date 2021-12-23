Students Innocent by Monster begins here.

An innocent student is a kind of student. Understand "nervous" as an innocent student.

To say MediumDesc of (M - an innocent student):
	say "nervous [rank-colour of M] student [student-name of M]".

To decide which number is the dedication of (M - an innocent student): [We can use this for various calculations to check which students do what]
	decide on a random number between 0 and 3.

To decide which number is the unique vindictiveness of (M - an innocent student): [We can use this for various calculations to check which students do what]
	decide on a random number between 0 and 1.

To decide which number is the heel-skill of (M - an innocent student):
	decide on 0.

Part - Hailey

student-hailey is an innocent student.
The max-rank of student-hailey is 3.

The text-shortcut of student-hailey is "stha".

Figure of hailey rank 1 is the file "NPCs/School/Student/student7a.png".
Figure of hailey rank 2 is the file "NPCs/School/Student/student7b.png".
Figure of hailey rank 2 diapered is the file "NPCs/School/Student/student7c.png".

To decide which figure-name is the monster-image of (M - student-hailey):
	if current-rank of M is 1, decide on figure of hailey rank 1;
	if diaper quest is 1, decide on figure of hailey rank 2 diapered;
	decide on figure of hailey rank 2.

To say MonsterDesc of (M - student-hailey):
	say "This skinny brunette has reddish highlights in [his of M] hair, and is wearing a pink crop top. [if the current-rank of M is 1]You can tell [he of M][']s quite the babe - the strings of [his of M] g-string are exposed at the sides of [his of M] hips, hanging out the side of [his of M] sexy low-waisted exercise shorts[otherwise if diaper quest is 0][big his of M] appearance has definitely become more slutty than when you first met [him of M] - [big his of M] exercise shorts have been replaced with a very short miniskirt (which still exposes the sides of [his of M] hips), [he of M][']s now wearing a collar, and [he of M] is also adorned with several items that give off [']alt[']/raver/clubber vibes, including fishnet stockings, multiple bracelets and anklets, eye-catching tattoos, and nipple studs that are partially visible, poking provocatively through the thin fabric of [his of M] crop top[otherwise][big his of M] top now has pink hearts decorating it, as do [his of M] socks. A large pacifier sits on a cord around [his of M] neck, and [his of M] g-string and exercise shorts have been replaced by a very thick white diaper[end if]. [big his of M] warm smile [if the current-rank of M is 1]looks very genuine[otherwise]has been replaced with a tense, clearly somewhat embarrassed expression[end if].".


To update name of (M - student-hailey):
	if the current-rank of M is 1:
		now the student-name of M is "Hailey";
		now the student-print of M is "babe next door";
	otherwise:
		now the student-name of M is "Harley";
		if diaper quest is 1, now the student-print of M is "baby[if the current-rank of M <= 2][boy of M][end if] in training";
		otherwise now the student-print of M is "babe in training".

To say StoryAnswer of (M - student-hailey):
	say "[speech style of M]'I asked my boyfriend what would make him happy and he said he wanted me to try out this place, so here I am. [if the current-rank of M is 1]I'll do[otherwise]I'm doing[end if] my best...'[roman type][line break]".


Book - Anya

student-anya is a innocent student.

The text-shortcut of student-anya is "stan".

Figure of anya rank 1 is the file "NPCs/School/Student/student10a.png".
Figure of anya rank 2 is the file "NPCs/School/Student/student10b.png".
Figure of anya rank 3 is the file "NPCs/School/Student/student10c.png".
Figure of anya rank 2 diaper is the file "NPCs/School/Student/student10d.png".
Figure of anya rank 3 diaper is the file "NPCs/School/Student/student10e.png".

To decide which figure-name is the monster-image of (M - student-anya):
	if the current-rank of M is 1:
		decide on figure of anya rank 1;
	otherwise if the current-rank of M is 2:
		if diaper quest is 0, decide on figure of anya rank 2;
		decide on figure of anya rank 2 diaper;
	otherwise:
		if diaper quest is 0, decide on figure of anya rank 3;
		decide on figure of anya rank 3 diaper.

To say MonsterDesc of (M - student-anya):
	say "This long ginger-haired beauty has gorgeous big eyes and alluring red lips. A pink latex dress clings tightly to [his of M] form. [if current-rank of M > 1]It has a heart-shaped butt window, which exposes [end if][if current-rank of M > 1 and diaper quest is 0]the majority of [his of M] butt crack. [end if][if current-rank of M is 2 and diaper quest is 1][his of M] diaper. [end if][if current-rank of M > 2 and diaper quest is 1][his of M] extra-thick pink diaper. [end if][if current-rank of M > 2]Also, [his of M] dress is now translucent[end if][if current-rank of M > 2 and diaper quest is 0], exposing [his of M] [vagina]. [otherwise if current-rank of M > 2]. [end if][big he of M] looks [if the current-rank of M is 1]a little shy[otherwise]a bit overwhelmed by how outrageous [his of M] new outfit is[end if].".

The max-rank of student-anya is 3.

To update name of (M - student-anya):
	now the student-print of M is "latex lover";
	if the current-rank of M is 1:
		now the student-name of M is "Anya";
	otherwise:
		now the student-name of M is "Aya".

To say StoryAnswer of (M - student-anya):
	say "[speech style of M]'I'm a latex fashion model but my agent says I'm too shy in front of a camera to properly make it big. He suggested I come here to learn how to [']loosen up[']...'[roman type][line break]".

To say WhereAnswer of (M - student-anya):
	say "[speech style of M]'[if the rank of the player <= 1]This is a place to learn how to be less of a prude. That's why I've been sent here anyway.'[otherwise if diaper quest is 1]Some of the other [sissy-girls] were saying you can't get to the top of the fetish modelling businses without soiling yourself on camera. I'm hoping it doesn't come to that...'[otherwise]Some of the other [sissy-girls] were saying you can't get to the top without sucking some [manly-penis]s. I'm hoping it doesn't come to that...'[end if][roman type][line break]".


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
