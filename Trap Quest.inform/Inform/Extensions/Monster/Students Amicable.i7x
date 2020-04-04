Students Amicable by Monster begins here.

An amicable student is a kind of student. Understand "friendly" as an amicable student.

To say MediumDesc of (M - an amicable student):
	say "friendly [rank-colour of M] student [student-name of M]".

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

Students Amicable ends here.
