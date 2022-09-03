Students Amicable by Monster begins here.

An amicable student is a kind of student. Understand "friendly" as an amicable student.

Definition: an amicable student is unfriendly rather than friendly:
	decide no.

To say MediumDesc of (M - an amicable student):
	say "friendly [rank-colour of M] student [student-name of M]".
To say NameDesc of (M - an amicable student):
	say "[input-style]friendly [student-name of M][roman type]".
To say BigNameDesc of (M - an amicable student):
	say "[input-style]Friendly [student-name of M][roman type]".

To decide which number is the unique vindictiveness of (M - an amicable student): [We can use this for various calculations to check which students do what]
	decide on 0.

To say DisapprovalFlav of (M - an amicable student):
	say "[BigNameDesc of M] [one of]looks shocked[or]makes an uncertain face[or]coughs politely[in random order].[line break][speech style of M]'[one of]Are you okay?'[or]Um, I'm not sure that's really appropriate...'[or]Maybe tone it down a bit, hun...'[in random order][roman type][line break]".

To compute student perception of (M - an amicable student):
	say "[one of][big he of M] waves enthusiastically[or][big he of M] smiles warmly[at random].";
	compute appearance assessment of M.

To compute appearance assessment of (M - an amicable student):
	if diaper quest is 1 and the saved cringe appearance of the player >= the saved appearance of the player and the saved cringe appearance of the player - 4 > the cringe tolerance of M:
		say FarGoneBabAppearanceAssessment of M;
		FavourDown M by 2;
		distract M;
	otherwise if diaper quest is 1 and the saved cringe appearance of the player >= the saved appearance of the player and the saved cringe appearance of the player > the cringe tolerance of M:
		say BabAppearanceAssessment of M;
		FavourDown M;
		if M is unfriendly, distract M;
	otherwise if the saved appearance of the player - 4 > the outrage tolerance of M:
		say FarGoneAppearanceAssessment of M;
		FavourDown M by 2;
		distract M;
	otherwise if the saved appearance of the player > the outrage tolerance of M:
		say LewdAppearanceAssessment of M;
		FavourDown M;
		if M is unfriendly, distract M;
	otherwise if the class of the player is schoolgirl:
		say "[line break][speech style of M]'That outfit looks great on you!'[roman type][line break]";
	otherwise if the player is a sissy:
		say "[line break][speech style of M]'You look adorable in those clothes! Did your boyfriend pick those out for you?'[roman type][line break]";
	otherwise if the class of the player is princess:
		say "[line break][speech style of M]'Hey Princess! I'm glad you finally decided to come to class! Everyone was wondering when you'd stop being so stubborn.'[roman type][line break]";
	otherwise:
		say "[line break][speech style of M]'[if the times-met of M < 2]Hello, have we met?'[otherwise][one of]Hi!'[or]Hello there!'[at random][end if][roman type][line break]";

Part - Default Conversation

To compute nonstudent perception of (M - an amicable student):
	say "[speech style of M]'[one of]Uh-oh[or]Oh no[or]Wait a second[or]Um, hold on[or]OMG[in random order], [one of]I think you left your armband at home[or]you must have left your armband in your last class[or]someone stole your armband[or]your armband is missing[at random]! I have to find a teacher!'[roman type][line break][big he of M] frantically walks away!";
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
		say "[speech style of M]'Leave [him of the player] alone!'[roman type][line break]";
		compute X receiving 2 damage from M;
	otherwise if X is staff member:
		unless X is nurse:
			say "[speech style of M]'Eek! [NameBimbo] is fighting the teachers!'[roman type][line break][BigNameDesc of M] turns to run away.";
			anger M;
	otherwise:
		say "[speech style of M]'[one of]Eek! I'm telling a teacher[or]Stay there, I'm getting a teacher[at random]!'[roman type][line break][BigNameDesc of M] turns to run away.";
		now the scared of M is 100;
		FavourDown M.

Book - Rosie

student-rosie is an amicable student.

The text-shortcut of student-rosie is "stro".

To decide which figure-name is the monster-image of (M - student-rosie):
	if the current-rank of M > 1, decide on figure of rank 2 rosie;
	decide on figure of rank 1 rosie.

To say MonsterDesc of (M - student-rosie):
	say "This skinny brunette [if lady fetish is 2]is wearing[otherwise]has pert C-cup breasts pushed seductively together by[end if] a red front-tie crop top that is so skimpy it looks more like a handkerchief than a piece of clothing. [big his of M] matching red microshorts are similarly tiny[if the current-rank of M is 1], meaning that overall a lot of [his of M] skin is showing[otherwise if diaper quest is 1], and are in fact so short that they leave the waistband of [his of M] baby pink diaper exposed. There's no way for [him of M] to hide that fact that [he of M] has been diapered[otherwise] and are both unbuttoned and unzipped, making [his of M] overall appearance rather overtly sexual[end if][if M is kissPunished]. [big his of M] lips have been swollen into large red pillows that look like they were made for sucking [manly-penis][end if].";
	if M is kissPunished and the lips of face < 3, say "[big he of M] notices your stare and eyes your [LipDesc], licking [his of M] own and shivering in pleasure, [his of M] own eyes locked to yours the whole time, as if to say 'We both know you wish your lips were like mine.'".

The max-rank of student-rosie is 2.

To update name of (M - student-rosie):
	if the current-rank of M is 1:
		now the student-name of M is "Rose";
		now the student-print of M is "friendly farmgirl";
	otherwise:
		now the student-name of M is "Rosie";
		now the student-print of M is "farmyard fox".

To decide which number is the starting difficulty of (M - student-rosie):
	decide on 8 + the current-rank of M.[She's farm tough!]

To say StoryAnswer of (M - student-rosie):
	say "[speech style of M]'I'm nothin['] but an honest, hard-workin['] farmer's [son of M]. Daddy's been strugglin['] to sell crops cuz everyone is goin['] to the shop that opened up down the road last spring. He's trying hard, but the lady that runs the shop wears skimpy clothes n['] [if diaper quest is 1]acts all perfect and innocent-like[otherwise]flirts[end if] with all the customers, and I know the only way to save our farm is lettin['] the customers know I can make [']em fall in love with me too! All I need to do is overcome my shyness n['] learn everythin['] I can, then all them customers are gonna come runnin['] back. I know the best [slut school] in all of Bimbacia won't let me down!'[roman type][line break]".

To say AdviceAnswer of (M - student-rosie):
	say "[speech style of M]'Just do as you're told! I ain't never disobeyed a word a teacher said an['] it never hurt me none!'[roman type][line break]".

To compute teaching of (M - student-rosie):
	say "[speech style of M]'I'm here to learn, not sell my daddy's hard won farmin['] secrets!'[roman type][line break]".

To say kissPunishmentDesc of (ST - student-rosie):
	say "Hmm, I zink you vill be encouraged to do better next time, if your lipz are twice ze size".

To compute kissPromotion of (ST - student-rosie):
	let M be the lesson-teacher of kissing-lesson;
	if ST is kissPunished:
		say "[BigNameDesc of M] enjoys one final lick of [NameDesc of ST][']s swollen red lips.[line break][speech style of M]'MUCH better, darling. You clearly learned your lesson vell.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] pouts.[line break][speech style of M]'Zis waz good, and you dezerve promotion... az long az you let me give you a helping hand...'[roman type][line break]You watch as [teacher-name of M] returns for a final kiss. When [his of M] lips meet [student-name of ST][']s, [student-name of ST][']s lips swell and double in size, turning bright red. They look like they've been stung by bees. [big he of ST] lets out a shy squeak but doesn't complain, backing off to explore [his of ST] new sensitive [if the player is a pervert]dick-sucking [end if]lips with [his of ST] hands.";
		now ST is kissPunished;
	promote ST.

Students Amicable ends here.
