Students Amicable by Monster begins here.

An amicable student is a kind of student. Understand "friendly" as an amicable student.

To say MediumDesc of (M - an amicable student):
	say "friendly [rank-colour of item described] student [student-name of item described]".

To decide which number is the vindictiveness of (M - an amicable student): [We can use this for various calculations to check which students do what]
	decide on 0.

Part - Rosie

student-rosie is a tq-only amicable student.

The text-shortcut of student-rosie is "stro".

Figure of rosie is the file "NPCs/School/Student/student1.png".

To decide which figure-name is the monster-image of (M - student-rosie):
	decide on figure of rosie.

To say MonsterDesc of (M - student-rosie):
	say "This skinny brunette has pert C-cup breasts pushed seductively together by a red front-tie crop top that is so skimpy it almost looks more like a handkerchief than a piece of clothing. [big his of M] matching red microshorts are similarly tiny[if the current-rank of M is 1], meaning that overall a lot of [his of M] skin is showing[otherwise]and are both unbuttoned and unzipped, making [his of M] overall appearance rather overtly sexual[end if].".

The max-rank of student-rosie is 2.

To update name of (M - student-rosie):
	if the current-rank of M is 1:
		now the student-name of M is "Rose";
		now the student-print of M is "friendly farmgirl";
	otherwise:
		now the student-name of M is "Rosie";
		now the student-print of M is "farmyard fuckdoll".

To decide which number is the starting difficulty of (M - student-rosie):
	decide on 8 + the current-rank of M.[She's farm tough!]

To say StoryAnswer of (M - student-rosie):
	say "[speech style of M]'I'm nothin['] but an honest, hard-workin['] farmer's daughter. Daddy's been strugglin['] to sell crops cuz everyone is goin['] to the shop that opened up down the road last spring. He's trying hard, but the lady that runs the shop wears skimpy clothes n['] flirts with all the customers, and I know the only way to save our farm is lettin['] the customers know I can make [']em horny too! All I need to do is overcome my shyness n['] learn everythin['] I can, then all them customers are gonna come runnin['] back. I know the best slut school in all of Bimbacia won't let me down!'[roman type][line break]".

To say AdviceAnswer of (M - student-rosie):
	say "[speech style of M]'Just do as you're told! I ain't never disobeyed a word a teacher said n['] it never hurt me none!'[roman type][line break]".

To compute teaching of (M - student-rosie):
	say "[speech style of M]'I'm here to learn, not sell my daddy's hard won farmin['] secrets!'[roman type][line break]".

Part - Tiana

student-tiana is a tq-only amicable student.

The text-shortcut of student-tiana is "stti".

Figure of tiana is the file "NPCs/School/Student/student2.png".

To decide which figure-name is the monster-image of (M - student-tiana):
	decide on figure of tiana.

To say MonsterDesc of (M - student-tiana):
	say "This chubby brunette has [if the largeness of breasts > 10]large[otherwise]massive[end if] J-cup breasts which are threatening to burst out of [his of M] plain white bra. [big his of M] red blouse [if the current-rank of M is 2]has a few top buttons undone allowing you to see most of this glorious shiny cleavage[otherwise]and is completely unbuttoned and pulled away, leaving all of [his of M] shiny cleavage on full display[end if]. [big his of M] babydoll pigtails and smiling red lips give [him of M] a friendly, non-threatening demeanour.".

The min-rank of student-tiana is 2.
The max-rank of student-tiana is 3.
The current-rank of student-tiana is 2.

To update name of (M - student-tiana):
	if the current-rank of M is 2:
		now the student-name of M is "Tiana";
		now the student-print of M is "buxom babe";
	otherwise:
		now the student-name of M is "Titania";
		now the student-print of M is "titanic titted tart".

To say StoryAnswer of (M - student-tiana):
	say "[speech style of M]'I first came here because my boobs were tiny and while I wanted a boob-job, I knew I would feel self-conscious once I got my new puppies. Slut School is helping me to feel braver and braver each day, meaning I feel daring enough to show off more and more of these massive puppies!'[roman type][line break]".

To say AdviceAnswer of (M - student-tiana):
	say "[speech style of M]'[one of]It's really hard to get around on your knees when you have tits as big as these puppies. Try to stay on your feet!'[or]You don't always have to wear a bra that fits. Sometimes it only matters that you're close enough.'[at random][roman type][line break]".





Part - Default Conversation

To compute student perception of (M - an amicable student):
	say "[one of][big he of M] waves enthusiastically[or][big he of M] smiles warmly[at random].";
	compute appearance assessment of M.

To compute appearance assessment of (M - an amicable student):
	if the class of the player is schoolgirl:
		say "[line break][speech style of M]'That outfit looks great on you!'[roman type][line break]";
	otherwise if the player is a sissy:
		say "[line break][speech style of M]'You look adorable in those clothes! Did your boyfriend pick those out for you?'[roman type][line break]";
	otherwise if the class of the player is princess:
		say "[line break][speech style of M]'I'm glad you finally decided to come to class! Everyone was wondering when you'd stop being so stubborn.'[roman type][line break]";
	otherwise:
		say "[line break][speech style of M]'[if the times-met of M < 2]Hello, have we met?'[otherwise][one of]Hi!'[or]Hello there!'[at random][end if][roman type][line break]";

To compute nonstudent perception of (M - an amicable student):
	say "[speech style of M]'[one of]Uh oh[or]Oh no[or]Wait a second[or]Um, hold on[or]OMG[in random order], [one of]I think you left your armband at home[or]you must have left your armband in your last class[or]someone stole your armband[or]your armband is missing[at random]! I have to find a teacher!'[roman type][line break][big he of M] frantically walks away!";
	[anger M;]
	now the scared of M is 100.

To say WhoAnswer of (M - an amicable student):
	say "[speech style of M]'My name is [student-name of M], [if the times-met of M < 2][please]d to meet you[otherwise]good to see you again[end if]!'[roman type][line break]".

To say WhereAnswer of (M - an amicable student):
	say "[speech style of M]'[if the rank of the player <= 1]We're in [slut school]! Welcome!'[otherwise]The better you are at being a good girl, the higher rank you'll be able to reach. And if any other students try to give you grief, just ignore them and focus on yourself.'[end if][roman type][line break]".

To say EscapeAnswer of (M - an amicable student):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]Ooh there's some cool stuff, I can tell you that. Just you wait and see!'[otherwise]I've not got any better an idea than you, I'm afraid! I'm looking forward to finding out though.'[end if][roman type][line break]".

[Matches default
To say AdviceAnswer of (M - an amicable student):
	say "[speech style of M]'You should try and pace yourself. Trying to jump in the deep end before you're ready probably won't go too well.'[roman type][line break]".]

To compute teaching of (M - an amicable student):
	say "[speech style of M]'Haha, no, I'm not a teacher!'[roman type][line break]".

To say detention chair tease of (M - an amicable student):
	say "[speech style of M]'[one of]Oh baby, it looks like you're struggling there. I hope they let you out soon. Oh also, you look pathetic, by the way. Sorry. But it's true.'[or]I've been told I'm supposed to tease you. So, here I am. You do look pretty ridiculous right now, I guess.'[in random order][roman type][line break]".

To compute (M - an amicable student) protecting against (X - a monster):
	if M is buddy and X is nasty student:
		say "[speech style of M]'Leave [him of the player] alone!'[roman type][line break][BigNameDesc of M] slaps [NameDesc of X]";
		compute X receiving 2 damage from M;
	otherwise if X is staff member:
		say "[speech style of M]'Eek! [NameBimbo] is fighting the teachers!'[roman type][line break][BigNameDesc of M] turns to run away.";
		anger M;
	otherwise:
		say "[speech style of M]'[one of]Eek! I'm telling a teacher[or]Stay there, I'm getting a teacher[at random]!'[roman type][line break][BigNameDesc of M] turns to run away.";
		now the scared of M is 100;
		FavourDown M.

Students Amicable ends here.

