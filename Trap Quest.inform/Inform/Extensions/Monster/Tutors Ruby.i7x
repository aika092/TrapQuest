Tutors Ruby by Monster begins here.

condom-training is a training session. condom-training has a number called condom-timer.
Definition: condom-training is training-appropriate:
	if the player is the donator and condom fetish >= 2, decide yes;
	decide no.
To say TrainingSessionTitle of (L - condom-training):
	say "Wearing Used Condoms".

To say MediumDesc of (M - a ruby-tutor):
	say "ruby tutor [tutor-name of M]".

chess-training is a training session.
To say TrainingSessionTitle of (L - chess-training):
	say "Chess Match".
chess-training has a number called chess-victor.
chess-training has a monster called chess-opponent.
chess-training has a number called lost-pieces.
chess-training has a number called trainee-lost-pieces.
chess-training has a number called trainee-rectum.
chess-training has a number called trainee-diaper.
chess-training has a number called aggression.
chess-training has a number called trainee-aggression.
chess-training has a number called trapping-move. trapping-move is 999.
chess-training has a number called safe-move. safe-move is 999.
chess-training has a number called great-move. great-move is 999.
chess-training has a number called trainee-trapping-move.
chess-training has a number called trainee-safe-move.
chess-training has a number called trainee-great-move.
chess-training has a number called chess-turn.
chess-training has a number called chess-cutscene.

chess table is a thing. chess table is not portable. The text-shortcut of chess table is "chss". The printed name of chess table is "[TQlink of chess table]chess table[TQxlink of chess table]".

eating-training is a training session. The training-tutor of eating-training is tutor-hannah.
Definition: eating-training is training-appropriate:
	if (diaper quest is 0 or diaper messing >= 3) and the player is able to eat, decide yes;
	decide no.
To say TrainingSessionTitle of (L - eating-training):
	say "Eating Competition".

To compute teaching of (L - eating-training):
	allocate 40 seconds;
	let M be the training-tutor of L;
	say "[BigNameDesc of M] guides you all to the Food Hall.";
	repeat with N running through monsters in Facility17: [Clear out the Food Hall of unnecessary NPCs]
		now N is in Facility02;
	repeat with N running through monsters in the location of M:
		now N is in Facility17;
	now the player is in Facility17;
	let maxWinners be the number of people in Facility17 / 2;
	say "[speech style of M]'Today we're going to have a little eating competition.'[roman type][line break][BigNameDesc of M] waves [his of M] hand towards the countless bowls of food travelling around the conveyor belts.[line break][speech style of M]'[if maxWinners > 1]I'm going to choose a random number between 1 and [maxWinners]. That's the number of people who ate the most who will get promoted. So it might be only the person who eats the most who gets promoted, or it might be lots of you[otherwise]The person who eats the most will get promoted[end if]. Once you fail to swallow a mouthful for more than six seconds, you'll be eliminated.'[roman type][line break][if diaper quest is 0][big he of M] licks [his of M] lips.[line break][speech style of M]'[tutor-name of a random diamond-tutor] and I have put a lot of work into seasoning all these meals with our cum, so you'd better be a grateful bunch and eat your fill.'[roman type][line break][end if]";
	let LP be a list of people;
	add yourself to LP;
	repeat with ST running through trainees in the location of the player:
		add ST to LP;
		now the trainingInt1 of ST is 0; [how much have they eaten]
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
							if the flesh volume of belly > a random number between 1 and 9:
								say "Your impressive gut manages to handle fitting a bit more food inside without hurting too badly.";
							otherwise:
								say "Forcing more food into your already full belly makes it cramp painfully.";
								PainUp 10;
						if diaper quest is 0, StomachSemenUp 1;
						StomachFoodUp 1;
						trigger bowl-wisp-quest;
					otherwise:
						say "You refuse to try and force any more of the slimy stuff down!";
						add yourself to E;
				otherwise:
					if a random number between -2 and the dedication of N is -2: [They give up]
						say "[BigNameDesc of N] [if the trainingInt1 of N is 0][one of]takes one look at the gross food and almost gags. [big he of N] pulls [himself of N] away[or]has one tentative taste of the mushy stuff and then spits it back out into the bowl in disgust[cycling].[otherwise if the trainingInt1 of N < a random number between 3 and 4][one of]makes a gagging sound and shakes [his of N] head. It looks like [he of N] can't take any more.[or]keeps munching away but can't seem to bring [himself of N] to swallow any more...[or]sighs deeply and takes a step back. It looks like [he of N][']s had enough.[in random order][otherwise][one of]groans as [he of N] staggers back and falls to the ground.[or]grunts as [he of N] falls to the floor, unable to eat another morsel.[or]tries to force down more but it immediately comes straight back up with a disgusting sound![line break][variable custom style]Yuck![roman type][line break][in random order][end if]";
						add N to E;
					otherwise:
						say "[BigNameDesc of N] [if the trainingInt1 of N is 0][one of]winces as [he of N] chews through a mouthful of the slimy stuff[or]takes a few seconds to bring [himself of N] to gulp down [his of N] first taste of the goop[or]also makes a face as [he of N] swallows [his of N] first disgusting mouthful[stopping].[otherwise if the trainingInt1 of N < a random number between 2 and 3][one of]forces [his of N] way through another nasty mouthful.[or]gulps down some more with a determined look on [his of N] face.[or]fights against [his of N] gag reflex to shovel more of the slimy stuff down.[or]manages to keep going.[or]swallows down more of the goop.[in random order][otherwise][one of]has slowed but is still going.[or]makes an exaggerated sound as [he of N] forces [himself of N] to swallow even more.[or]gags but manages to gulp down another mouthful of the slime.[or]half-chokes as [he of N] gets even more of it down into [his of N] stomach.[or]powers through even more of the mushy food![in random order][end if]";[Selkie: You could also count how many have gagged and spat stuff back up, adding that to the difficulty of the player resisting doing the same.
						Aika: I like the idea that there's some additional grossness penalty to eating some more after someone has spat some back. TODO]
						increase the trainingInt1 of N by 1;
		if the number of entries in E > 0:
			say "[speech style of M]'";
			repeat with N running through E:
				say "[if N is yourself][NameBimbo][otherwise][trainee-name of N][end if], ";
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
		say "[if N is yourself][NameBimbo][otherwise][trainee-name of N][end if][if actualWinners is 2] and [otherwise], [end if]";
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
			repeat with ST running through trainees in the location of the player:
				if ST is not listed in F, HappinessDown ST;
		otherwise:
			promote N;
	if yourself is listed in F, update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]

Tutors Ruby ends here.
