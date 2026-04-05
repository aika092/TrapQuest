Trainees Innocent by Monster begins here.

An innocent trainee is a kind of trainee. Understand "nervous" as an innocent trainee.

To say MediumDesc of (M - an innocent trainee):
	say "nervous [rank-colour of M] trainee [trainee-name of M]".
To say NameDesc of (M - an innocent trainee):
	say "[input-style]nervous [trainee-name of M][roman type]".
To say BigNameDesc of (M - an innocent trainee):
	say "[input-style]Nervous [trainee-name of M][roman type]".

To decide which number is the dedication of (M - an innocent trainee): [We can use this for various calculations to check which trainees do what]
	decide on a random number between 0 and 3.

To decide which number is the unique vindictiveness of (M - an innocent trainee): [We can use this for various calculations to check which trainees do what]
	decide on a random number between 0 and 1.

To decide which number is the heel-skill of (M - an innocent trainee):
	decide on 0.

Part - Hailey

trainee-hailey is an innocent trainee.
The max-rank of trainee-hailey is 3.

The text-shortcut of trainee-hailey is "trha".

Figure of hailey rank 1 is the file "NPCs/Facility/Trainee/trainee7a.png".
Figure of hailey rank 2 is the file "NPCs/Facility/Trainee/trainee7b.png".
Figure of hailey rank 2 diapered is the file "NPCs/Facility/Trainee/trainee7c.png".

To decide which figure-name is the monster-image of (M - trainee-hailey):
	if current-rank of M is 1, decide on figure of hailey rank 1;
	if diaper quest is 1, decide on figure of hailey rank 2 diapered;
	decide on figure of hailey rank 2.

To say MonsterDesc of (M - trainee-hailey):
	say "This skinny brunette has reddish highlights in [his of M] hair, and is wearing a pink crop top. [if the current-rank of M is 1]You can tell [he of M][']s quite the babe - the strings of [his of M] G-string are exposed at the sides of [his of M] hips, hanging out the side of [his of M] sexy low-waisted exercise shorts[otherwise if diaper quest is 0][big his of M] appearance has definitely become more slutty than when you first met [him of M] - [big his of M] exercise shorts have been replaced with a very short miniskirt (which still exposes the sides of [his of M] hips), [he of M][']s now wearing a collar, and [he of M] is also adorned with several items that give off [']alt[']/raver/clubber vibes, including fishnet stockings, multiple bracelets and anklets, eye-catching tattoos, and nipple studs that are partially visible, poking provocatively through the thin fabric of [his of M] crop top[otherwise][big his of M] top now has pink hearts decorating it, as do [his of M] socks. A large pacifier sits on a cord around [his of M] neck, and [his of M] g-string and exercise shorts have been replaced by a very thick white diaper[end if]. [big his of M] warm smile [if the current-rank of M is 1]looks very genuine[otherwise]has been replaced with a tense, clearly somewhat embarrassed expression[end if].".


To update name of (M - trainee-hailey):
	if the current-rank of M is 1:
		now the trainee-name of M is "Hailey";
		now the trainee-print of M is "babe next door";
	otherwise:
		now the trainee-name of M is "Harley";
		if diaper quest is 1, now the trainee-print of M is "baby[if the current-rank of M <= 2][boy of M][end if] in training";
		otherwise now the trainee-print of M is "babe in training".

To say StoryAnswer of (M - trainee-hailey):
	say "[speech style of M]'I asked my boyfriend what would make him happy and he said he wanted me to try out this place, so here I am. [if the current-rank of M is 1]I'll do[otherwise]I'm doing[end if] my best...'[roman type][line break]".


Book - Anya

trainee-anya is a innocent trainee.

The text-shortcut of trainee-anya is "tran".

Figure of anya rank 1 is the file "NPCs/Facility/Trainee/trainee10a.png".
Figure of anya rank 2 is the file "NPCs/Facility/Trainee/trainee10b.png".
Figure of anya rank 3 is the file "NPCs/Facility/Trainee/trainee10d.png".
Figure of anya rank 2 diaper is the file "NPCs/Facility/Trainee/trainee10c.png".
Figure of anya rank 3 diaper is the file "NPCs/Facility/Trainee/trainee10e.png".

To decide which figure-name is the monster-image of (M - trainee-anya):
	if the current-rank of M is 1:
		decide on figure of anya rank 1;
	otherwise if the current-rank of M is 2:
		if diaper quest is 0, decide on figure of anya rank 2;
		decide on figure of anya rank 2 diaper;
	otherwise:
		if diaper quest is 0, decide on figure of anya rank 3;
		decide on figure of anya rank 3 diaper.

To say MonsterDesc of (M - trainee-anya):
	say "This long ginger-haired beauty has gorgeous big eyes and alluring red lips. A pink latex dress clings tightly to [his of M] form. [if current-rank of M > 1]It has a heart-shaped butt window, which exposes [end if][if current-rank of M > 1 and diaper quest is 0]the majority of [his of M] butt crack. [end if][if current-rank of M is 2 and diaper quest is 1][his of M] diaper. [end if][if current-rank of M > 2 and diaper quest is 1][his of M] extra-thick pink diaper. [end if][if current-rank of M > 2]Also, [his of M] dress is now translucent[end if][if current-rank of M > 2 and diaper quest is 0], exposing [his of M] [vagina]. [otherwise if current-rank of M > 2]. [end if][big he of M] looks [if the current-rank of M is 1]a little shy[otherwise]a bit overwhelmed by how outrageous [his of M] new outfit is[end if].".

The max-rank of trainee-anya is 3.

To update name of (M - trainee-anya):
	now the trainee-print of M is "latex lover";
	if the current-rank of M is 1:
		now the trainee-name of M is "Anya";
	otherwise:
		now the trainee-name of M is "Aya".

To say StoryAnswer of (M - trainee-anya):
	say "[speech style of M]'My nation exports most of the region's latex clothing... So to be the perfect princess, I need to learn how to be a walking, talking latex fasion model.'[roman type][line break]".

To say WhereAnswer of (M - trainee-anya):
	say "[speech style of M]'[if the rank of the player <= 1]This is a place to learn how to be less of a prude. That's why I've been sent here anyway. In this world, to be a proper princess, you have to learn to be a certain sort of person.'[otherwise if diaper quest is 1]Some of the other [sissy-girls] were saying you can't get to the top levels without dedicating yourself to soiling diapers full time. I'm hoping it doesn't come to that...'[otherwise]Some of the other [sissy-girls] were saying you can't get to the top without sucking some [manly-penis]s. I'm hoping it doesn't come to that...'[end if][roman type][line break]".


Part - Default Conversation

To say WhoAnswer of (M - an innocent trainee):
	say "[speech style of M]'My name is [trainee-name of M][if the current-rank of M > the min-rank of M], or so I've been told. I didn't realise I was going to have to change my name[end if]...'[roman type][line break]".

To say WhereAnswer of (M - an innocent trainee):
	say "[speech style of M]'[if the rank of the player <= 1]We're in the ['][training halls][']. To get good at being royalty.'[otherwise]I dunno, some of the things they want us to do are pretty crazy. Surely there's another way?'[end if][roman type][line break]".

To say EscapeAnswer of (M - an innocent trainee):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's a few more rooms, like a junk room, and a sewing room, and I think that's about all I've seen so far.'[otherwise]I've not got any better an idea than you, I'm afraid! I'm looking forward to finding out though.'[end if][roman type][line break]".

To say AdviceAnswer of (M - an innocent trainee):
	say "[speech style of M]'I was kind of hoping you'd have advice for me!'[roman type][line break]".

To compute teaching offer of (M - an innocent trainee):
	say "[speech style of M]'Ha ha, no, I'm not a tutor!'[roman type][line break]".

Trainees Innocent ends here.
