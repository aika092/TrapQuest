Teachers Ruby by Monster begins here.

To say MediumDesc of (M - a ruby-teacher):
	say "ruby teacher [teacher-name of M]".

chess-lesson is a lesson.
chess-lesson has a number called chess-victor.
chess-lesson has a monster called chess-opponent.
chess-lesson has a number called lost-pieces.
chess-lesson has a number called student-lost-pieces.
chess-lesson has a number called student-rectum.
chess-lesson has a number called student-diaper.
chess-lesson has a number called aggression.
chess-lesson has a number called student-aggression.
chess-lesson has a number called trapping-move. trapping-move is 999.
chess-lesson has a number called safe-move. safe-move is 999.
chess-lesson has a number called great-move. great-move is 999.
chess-lesson has a number called student-trapping-move.
chess-lesson has a number called student-safe-move.
chess-lesson has a number called student-great-move.
chess-lesson has a number called chess-turn.
chess-lesson has a number called chess-cutscene.

chess table is a thing. chess table is not portable. The text-shortcut of chess table is "chss". The printed name of chess table is "[TQlink of chess table]chess table[TQxlink of chess table]".

To say PracticalAssessment of (M - a teacher) to (N - a number) with (C - a number):
	if C <= a random number between 8 and 16:
		say "[speech style of M]'[one of]Oh damn I'm getting close! Fuck! [or]Hnnnng! Not long now... [or]Oh god yes I can feel it coming soon... [or]Shit, I can't hold back too much longer. [or]Shit, if you do that too much I'm gonna blow! [in random order]Okay STOP! [one of]Next! Come on, hurry up!'[or]Why hasn't the next person started already!'[or]Come on, where's the next whore?!'[in random order][roman type][line break][BigNameDesc of M] [one of]breathes heavily[or]is panting as [he of M] speaks[or]demands aggressively[or]slaps [his of M] hips with impatience[or]growls with rising pleasure[in random order].";
	otherwise if C <= a random number between 15 and 25:
		if N > a random number between 1 and 3, say "[speech style of M]'[one of]Yes, right there, that's the spot! [or]Oh yes keep doing exactly that! [or]Fuck, that feels incredible! Good job, slut! [or]Yes you beautiful whore, that's what I'm talking about! [or]Oh god yes, just like that! [in random order]";
		otherwise say "[speech style of M]'[one of]Good enough. [or]Haha, is that the best you can do? [or]Not bad, slut! [or]Could be worse, that's for sure. [in random order]";
		say "Okay STOP! [one of]Let's keep this line moving, people!'[or]Next slut, get going already!'[or]Next in line, now's your time.'[or]Let's keep this gravy train going.'[or]Next!'[or]Next [please]!'[or]Time for a different whore!'[in random order][roman type][line break][BigNameDesc of M] [one of]grins happily[or]is clearly enjoying [himself of M][or]continues to bark orders[or]growls with pleasure[in random order].";
	otherwise:
		if N > a random number between 1 and 3, say "[speech style of M]'[one of]Ooh, good job! [or]I like what you've got! [or]What a good slut! [or]Just like a proper whore. Well done! [or]Good effort! [or]Impressive technique! [or]Excellent display. [in random order]";
		otherwise say "[speech style of M]'[one of]Bo-ooring. [or]Bah, try harder next time. [or]Too delicate. Put more effort in next time. [or]Is that really the best you can do? [or]You're not going to be the one to make me cum like that. [in random order]";
		say "Okay STOP! [one of]Your time's up. Now head to the back of the line, and the next girl at the front of the queue, you're up.'[or]Head to the back, you'll get another turn soon.'[or]That's it, keep the line moving. You're getting the idea.'[or]Next one, let's go.'[or]Next [please]!'[or]Next [slut]!'[stopping][roman type][line break][BigNameDesc of M] [one of]barks [his of M] commands with controlled authority[or]lies back and waits patiently[or]stays horizontal as [he of M] tells everyone what to do[or]snaps [his of M] fingers as [he of M] finishes speaking[or]licks [his of M] lips and smiles[or]remains rock hard as [he of M] waits[in random order].";

To decide which number is the practical dirtiness of (M - a student):
	decide on 3.
To decide which number is the practical dirtiness of (M - a nasty student):
	decide on 2.
To decide which number is the practical dirtiness of (M - a ditzy student):
	decide on 4.
To decide which number is the practical dirtiness of (M - an innocent student):
	decide on 1.
To decide which number is the practical dirtiness of (M - a tryhard student):
	decide on 6.

eating-lesson is a lesson.
Definition: eating-lesson is lesson-appropriate if (diaper quest is 0 or diaper messing >= 3) and the player is able to eat.

To compute teaching of (L - eating-lesson):
	allocate 40 seconds;
	let M be the lesson-teacher of L;
	say "[BigNameDesc of M] guides you all to the Food Hall.";
	repeat with N running through monsters in School17: [Clear out the Food Hall of unnecessary NPCs]
		now N is in School02;
	repeat with N running through monsters in the location of M:
		now N is in School17;
	now the player is in School17;
	let maxWinners be the number of people in School17 / 2;
	say "[speech style of M]'Today we're going to have a little eating competition.'[roman type][line break][BigNameDesc of M] waves [his of M] hand towards the countless bowls of food travelling around the conveyor belts.[line break][speech style of M]'[if maxWinners > 1]I'm going to choose a random number between 1 and [maxWinners]. That's the number of people who ate the most who will get promoted. So it might be only the person who eats the most who gets promoted, or it might be lots of you[otherwise]The person who eats the most will get promoted[end if]. Once you fail to swallow a mouthful for more than six seconds, you'll be eliminated.'[roman type][line break][if diaper quest is 0][big he of M] licks [his of M] lips.[line break][speech style of M]'[teacher-name of a random diamond-teacher] and I have put a lot of work into seasoning all these meals with our cum, so you'd better be a grateful bunch and eat your fill.'[roman type][line break][end if]";
	let LP be a list of people;
	add yourself to LP;
	repeat with ST running through students in the location of the player:
		add ST to LP;
		now the lessonInt1 of ST is 0; [how much have they eaten]
	let F be a list of people; [order in which people stopped eating]
	while the number of entries in LP > 1:
		sort LP in random order;
		let E be a list of people; [list of people who dropped out this round]
		repeat with N running through LP:
			if the number of entries in LP - the number of entries in E > 1:
				if N is yourself:
					say "Do you eat [one of]some of the [if diaper quest is 0]semen-covered[otherwise]gross-looking[end if] mush[or]another mouthful[stopping]?";
					if the player is consenting:
						say "[if the player is overly full or the semen taste addiction of the player < 8]You force yourself to eat more of the gross slimy food.[otherwise if the semen taste addiction of the player < 14]You diligently swallow another mouthful of the slimy goop.[otherwise]You happily shovel down more of the delicious cum-covered mush![end if]";
						if the player is overly full:
							say "Forcing more food into your already full belly makes it cramp painfully.";
							PainUp 1;
						if diaper quest is 0:
							StomachSemenUp 1;
							StomachFoodUp 1;
						otherwise:
							StomachFoodUp 2;
					otherwise:
						say "You refuse to try and force any more of the slimy stuff down!";
						add yourself to E;
				otherwise:
					if a random number between -2 and the dedication of N is -2: [They give up]
						say "[BigNameDesc of N] [if the lessonInt1 of N is 0][one of]takes one look at the gross food and almost gags. [big he of N] pulls [himself of N] away[or]has one tentative taste of the mushy stuff and then spits it back out into the bowl in disgust[cycling].[otherwise if the lessonInt1 of N < a random number between 3 and 4][one of]makes a gagging sound and shakes [his of N] head. It looks like [he of N] can't take any more.[or]keeps munching away but can't seem to bring [himself of N] to swallow any more...[or]sighs deeply and takes a step back. It looks like [he of N][']s had enough.[in random order][otherwise][one of]groans as [he of N] staggers back and falls to the ground.[or]grunts as [he of N] falls to the floor, unable to eat another morsel.[or]tries to force down more but it immediately comes straight back up with a disgusting sound![line break][variable custom style]Yuck![roman type][line break][in random order][end if]";
						add N to E;
					otherwise:
						say "[BigNameDesc of N] [if the lessonInt1 of N is 0][one of]winces as [he of N] chews through a mouthful of the slimy stuff[or]takes a few seconds to bring [himself of N] to gulp down [his of N] first taste of the goop[or]also makes a face as [he of N] swallows [his of N] first disgusting mouthful[stopping].[otherwise if the lessonInt1 of N < a random number between 2 and 3][one of]forces [his of N] way through another nasty mouthful.[or]gulps down some more with a determined look on [his of N] face.[or]fights against [his of N] gag reflex to shovel more of the slimy stuff down.[or]manages to keep going.[or]swallows down more of the goop.[in random order][otherwise][one of]has slowed but is still going.[or]makes an exaggerated sound as [he of N] forces [himself of N] to swallow even more.[or]gags but manages to gulp down another mouthful of the slime.[or]half-chokes as [he of N] gets even more of it down into [his of N] stomach.[or]powers through even more of the mushy food![in random order][end if]";[####Selkie: You could also count how many have gagged and spat stuff back up, adding that to the difficulty of the player resisting doing the same.]
						increase the lessonInt1 of N by 1;
		if the number of entries in E > 0:
			say "[speech style of M]'";
			repeat with N running through E:
				say "[if N is yourself][NameBimbo][otherwise][student-name of N][end if], ";
				remove N from LP;
				add N at entry 1 in F;
			say "you're out.'[roman type][line break]";
	if the number of entries in LP is 1:
		let N be entry 1 in LP;
		say "[if N is yourself]You stop eating since you're the only one left[otherwise][BigNameDesc of N] stops eating as [he of N][']s the only one left[end if].";
		add N at entry 1 in F;
	let actualWinners be a random number between 1 and maxWinners;
	truncate F to actualWinners entries;
	say "[BigNameDesc of M] stands in front of you all and raises [his of M] hands.[line break][speech style of M]'Game Over, everyone! Well done to all. I decided there would be [if actualWinners is 1]only one winner[otherwise][actualWinners] winners[end if] today, so that means... ";
	repeat with N running through F:
		say "[if N is yourself][NameBimbo][otherwise][student-name of N][end if][if actualWinners is 2] and [otherwise], [end if]";
		decrease actualWinners by 1;
	say "you get promoted today. Congratulations!'[roman type][line break]";
	repeat with N running through F:
		if N is yourself:
			if armband is ruby, now armband is pink diamond;
			if armband is emerald, now armband is ruby;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Giggles";
			now the armband-print of armband is "greedy [if diaper quest is 0]cum [end if]guzzler";
			say ClothingDesc of armband;
			repeat with ST running through students in the location of the player:
				if ST is not listed in F, HappinessDown ST;
		otherwise:
			promote N;
	if yourself is listed in F, update students; [an important line which makes boring old students disappear and new cool ones appear]

Teachers Ruby ends here.
