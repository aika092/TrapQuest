Teachers Pink Diamond by Monster begins here.

To say MediumDesc of (M - a pink-diamond-teacher):
	say "pink diamond teacher [teacher-name of M]".


Part - Pink Diamond Teacher Hyacinthe

teacher-hyacinthe is a pink-diamond-teacher.

The text-shortcut of teacher-hyacinthe is "tehy".

Figure of hyacinthe is the file "NPCs/School/Teacher/teacher9.png".

To decide which figure-name is the monster-image of (M - teacher-hyacinthe):
	decide on figure of hyacinthe.

To say MonsterDesc of (M - teacher-hyacinthe):
	say "This tall thin Asian [man of M] is wearing a lilac coloured corset connected to a lilac coloured frilly skirt with two distinct layers. The frills then descent to ground all around [his of M] rear half, giving [him of M] a trail of lilac fabric wherever [he of M] goes. [big his of M] short white court heels, perfect posture, elegant gait and welcoming smile give [him of M] an aura of dignity and grace.".

The teacher-name of teacher-hyacinthe is "Hyacinthe".

To say WhoAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'Oh what a lovely question, thank you for asking. I like to think that I help people let out who they truly are deep inside, and feel proud about it rather than ashamed.'[roman type][line break]".

To say WhereAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'[if the rank of the player <= 1]Somewhere you can feel completely safe. Welcome to your new home!'[otherwise]Oh darling, I can tell you're on the right track already! A burning desire to improve yourself and reach the next rung on the ladder is the most important quality you can have.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'Oh honey, I would love to let you skip ahead and find out that sort of thing already, but it wouldn't be fair on the other students now, would it? But if you put your mind to it I just know that you'll be able to find out for yourself in no time.'[roman type][line break]".

To say StoryAnswer of (M - a teacher-hyacinthe):
	say "[speech style of M]'Our beloved headmistress keeps this place going, as a safe haven from the outside world, where everyone is completely free to become exactly who they were born to be.'[roman type][line break]".

To say AdviceAnswer of (M - teacher-hyacinthe):
	say "[speech style of M]'What's important is that you become PROUD of yourself for what you really are. If you try to fight it, nobody will be happy. But if you embrace your true self, then we can all have a lot of fun. That's the lesson you need to not just listen to, but wholly understand.'[roman type][line break]".

To compute teaching of (M - teacher-hyacinthe):
	say "[speech style of M]'[if the rank of the player < 4]Oh sweetie, one day soon I'm sure you'll be ready for my lessons, but as of right now I'm afraid you haven't progressed enough to be able to handle what awaits you in the pink diamond classroom[otherwise if the rank of the player is 4]Yes dear, that's why I'm here[otherwise]I'm afraid I've taught you all that I can. You're ready for what lies ahead[end if].'[roman type][line break]".



quiz-lesson is a lesson. The lesson-teacher of quiz-lesson is teacher-hyacinthe.
quiz-lesson has a number called questionCorrect.

A diaper quest fix rule:
	now the lesson-teacher of quiz-lesson is teacher-hannah.

Definition: quiz-lesson (called L) is lesson-appropriate:
	if the player is not a february 2019 top donator, decide no;
	if the number of alive lesson-appropriate students is 0, decide no; [There must be another student]
	if diaper quest is 1:
		if the incontinence of the player >= the max-incontinence of the player, decide no;
	otherwise if asshole is actually occupied or (the player is male and the size of penis is 0):
		decide no;
	decide yes.


To compute teaching of (L - quiz-lesson):
	let quizMessing be 0;
	let questionWins be 0;
	let M be lesson-teacher of L;
	say "[BigNameDesc of M] scans the room.[line break][speech style of M]'Today we'll be testing [NameBimbo][']s ability to think under pressure. I need one volunteer from the rest of you, who will need to put your trust in [him of the player], since you'll get promoted if [he of the player] wins, and if [he of the player] fails... you'll be the one most upset.'[roman type][line break]";
	let ST be a random friendly promotable nasty student in the location of the player;
	if ST is nothing, now ST is a random friendly nasty student in the location of the player;
	if ST is nothing, now ST is a random friendly promotable student in the location of the player;
	if ST is nothing, now ST is a random promotable student in the location of the player;
	if ST is nothing, now ST is a random friendly student in the location of the player;
	if ST is nothing, now ST is a random student in the location of the player;
	say "[BigNameDesc of ST] puts up [his of ST] hand.[line break][speech style of ST]'[if ST is nasty student]A chance at getting promoted without having to do anything? I'm in!'[otherwise]I trust [him of the player]. I'll do it.'[end if][line break][speech style of M]'Well volunteered! Well if you and [NameBimbo] come up to the front, we'll get this quiz show underway!'[roman type][line break][one of]You gulp.[line break][variable custom style]'Quiz show?'[roman type][line break][or][stopping]";
	if diaper quest is 1:
		if diaper messing >= 7 and asshole is not actually occupied, now quizMessing is 1;
		let D be a random worn knickers;
		if D is not dry clean diaper:
			if D is clothing, now D is carried by the player;
			now D is a random off-stage diaper;
			if there is an off-stage plain diaper, now D is a random off-stage plain diaper;
			clean D;
			summon D;
			say "[BigNameDesc of M] gets you a clean [ShortDesc of D] and forces you to wear it in front of your classmates. You turn red but obey [him of M], allowing [him of M] to put you in your new padding.";
			display stuff;
			display clothing-focus stuff;
		say "[BigNameDesc of M] gets [NameDesc of ST] to lie on [his of ST] back, where [he of M] locks [him of ST] in metal ankle spreaders and separate wristcuffs. [BigNameDesc of M] then locks you in identical ankle spreaders, and guides you to kneel over [NameDesc of ST] so that your padded butt is above [his of ST] face. Finally, [NameDesc of M] locks large metal cuffs around your thighs, and connects them to [NameDesc of ST][']s wristcuffs, so that each of [his of ST] hands is stuck right next to your thighs, with nothing to hold onto except the rear of your diaper.";
		say "[BigNameDesc of M] snaps [his of M] fingers and you feel your [if quizMessing is 1]bowels[otherwise]bladder[end if] expanding rapidly, to the point where it's actually painful![line break][variable custom style]'Ow ow ow[one of]! What the hell is going on?!'[or]!'[stopping][roman type][line break]";
		say "[BigNameDesc of M] addresses the entire class.[line break][speech style of M]'[NameBimbo] [if quizMessing is 1]has just been filled up with about seven meals worth of spicy curry[otherwise]has just had [his of the player] bladder filled up to the point where [he of the player][']s going to burst any moment[end if]. Unfortunately, [he of the player] can't get to the toilet right now, [he of the player][']s a bit stuck on top of [student-name of ST][']s face. I'm going to ask [him of the player] some multiple choice questions. Once [he of the player] gets two IN A ROW correct, the two of them will be promoted, and more importantly [he of the player] will be able to try to rush to use the loo like a grown up. But every time [he of the player] gets one wrong, I'm going to cast a clever little spell on [him of the player] which will make [him of the player] have to choose between losing control, or becoming a little more incontinent and diaper-dependent in the future.'[roman type][line break][BigNameDesc of ST] [one of]squeals with anxiety from below you.[line break][speech style of ST]'What?! Oh no! [if ST is nasty student]Don't you dare[otherwise]Please don't[end if] go number [quizMessing + 1] on my face, [NameBimbo]...'[roman type][line break][BigNameDesc of ST] does not sound amused at all![or]shifts uncomfortably from [his of ST] position stuck underneath you.[stopping]";
	otherwise:
		if the player is female and the number of worn clitoris piercing is 0:
			say "[speech style of M]'First things first...'[roman type][line break][BigNameDesc of M] doesn't even move an inch, but all of a sudden a jewelled piercing has appeared out of nowhere and forced itself into your clitoris! For a moment the pain is unbelievably extreme, and then the next moment it's mostly gone, leaving a dull throbbing in its place.";
			PainUp 1;
			summon normal clit piercing;
		otherwise if the player is male:
			say "[speech style of M]'First things first...'[roman type][line break][BigNameDesc of M] takes the smallest metal cuff you've ever seen and clamps it around the top of your scrotum. It feels weird, and you certainly won't be able to get it off past your balls any time soon.";
		say "[speech style of M]'And you're going to need this, my dear.'[roman type][line break][BigNameDesc of ST] shrieks in surprise and pain as a large stud piercing appears in [his of ST] tongue! It's so large that [he of ST] visibly seems uncomfortable with [his of ST] tongue completely inside of [his of ST] mouth - [his of ST][']s tongue new natural position is lolling out of [his of ST] mouth.";
		say "Next, [NameDesc of M] gets you to go on all fours, and then cuffs you behind your back, so you are forced to lean on your head with your ass in the air. [big he of M] then gets a funnel connected to a tube with an enema nozzle at the end, and puts the nozzle up your [asshole]! ";
		if watersports fetish is 1:
			say "[big he of M] holds the funnel above your [AssDesc].[line break][speech style of M]'Who needs a piss?'[roman type][line break]One by one, some eagerly, some hesitantly, the other students approach the funnel and use it to piss directly into your belly! By the time they are all done, your innards are bursting full of hot [urine].";
			increase the urine volume of belly by 25; [We don't use the AssFull function because we don't want to allow the overflow function]
		say "Next, [NameDesc of M] produces a large clear bottle full of a creamy liquid. [big he of M] begins to pour it down the funnel.[line break][speech style of M]'Yes, I think a couple of pints of thick [if mythical creature fetish is 1]bull [end if]semen will work just perfectly.'[roman type][line break]";
		if the total fill of belly < belly limit, AssFill (belly limit - total fill of belly);
		say "[BigNameDesc of M] removes the enema nozzle and then turns to [NameDesc of ST].[line break][speech style of M]'Okay [student-name of ST], why don't you show me what you've got by licking [NameBimbo][']s [if the player is female]clit[otherwise]balls[end if] for me?'[roman type][line break][BigNameDesc of ST] moves to comply, getting on all fours behind you, and then moving [his of ST] tongue towards your crotch, when suddenly, [italic type]CLANK! [roman type][his of ST] tongue piercing snaps magnetically onto your [if the player is female]clit piercing[otherwise]scrotum ring[end if], connecting the two together! [one of]While [NameDesc of ST] squeals with shock, [or][stopping][NameDesc of M] takes this moment to cuff [NameDesc of ST][']s hands behind [his of ST] back. Now neither of you can reach where you are joined by a powerful magnet, and the only way to separate would be to crawl away from each other, which would be very painful, especially for you.";
		say "[BigNameDesc of M] addresses the entire class.[line break][speech style of M]'As you might be able to tell, these two are in a bit of a predicament now. I can hear [NameBimbo][']s belly gurgling from here... if [he of the player] can't hold on, it's looking pretty bad for [student-name of ST][']s mouth and face! Now, I'm going to ask [NameBimbo] some multiple choice questions. Once [he of the player] gets two IN A ROW correct, the two of them will be promoted, and more importantly [he of the player] will be released from the cuffs, and will be able to separate the piercings, and then rush to the toilet. But every time [he of the player] gets one wrong, we're going to sit here and wait for a minute.'[roman type][line break][BigNameDesc of ST] quietly whines with anxiety from behind you, unable to do anything about the fact that [his of ST] mouth is open and tongue waiting right in front of your [asshole].";
		display stuff;
	repeat with Q running through quiz-lesson-questions:
		reset Q;
	while questionWins >= 0 and questionWins < 2:
		let Q be a random eligible quiz-lesson-question;
		if Q is a quiz-lesson-question:
			if debugmode > 1, say "Debug info: Chosen [question for Q][line break]";
			set up Q;
			appropriate-cutscene-display figure of quiz lesson with priority 4;
			execute Q;
			if the questionCorrect of L is 1:
				increase questionWins by 1;
				say "[speech style of M]'Hmph. That's correct. [if questionWins < 2][one of]Moving on then[or]Let's try this one[or]This one should be more difficult[in random order][otherwise]And that means[end if]...'[roman type][line break]";
			otherwise:
				now questionWins is 0;
				let CA be correctAnswer of Q;
				say "[speech style of M]'Hah, no[if the maxAnswer of Q > 0], the answer was [CA][otherwise if CA > 0], the answer was [entry CA of the possible-answers of Q][otherwise] (BUG - no correct answer)[end if]. [one of]And now for the fun bit[or]And you know what that means[or]So, I get to do this again[then at random]...'[roman type][line break][BigNameDesc of M] places a hand on your belly and concentrates. You feel your [if diaper quest is 1 and quizMessing is 0]bladder[otherwise]sphincter[end if] beg to allow itself to be loosened. You know that if you resist, [if diaper quest is 1]you'll end up a little more incontinent[otherwise]it'll hurt[end if]. Do you hold it in?";
				if the player is consenting:
					say "You hold on with everything that you've got.";
					if diaper quest is 1:
						increase incontinence by 1;
						if the incontinence of the player >= the max-incontinence of the player:
							say "But it's no use! ";
							now questionWins is -1;
				otherwise:
					now questionWins is -2;
		otherwise:
			say "BUG: no valid question found. Abandoning...";
			now questionWins is -2;
	if questionWins < 0: [fail]
		if diaper quest is 1:
			say "You emit a pained whine as your floodgates open, and you begin depositing what feels like a gallon of [if quizMessing is 0][urine][otherwise]spicy curry aftermath[end if] on top of [NameDesc of ST][']s face.[line break][speech style of ST]'Nooo you Bit-GLMPH!'[roman type][line break][big his of ST] exclamation is cut off by the seat of your diaper expanding and engulfing [his of ST] face, forcing [him of ST] to desperately breathe what oxygen [he of ST] can through the soiled fabric.[line break][variable custom style]'I'm sorry [student-name of ST], I'm so sorry!'[roman type][line break]You beg [NameDesc of ST] for forgiveness as you [if quizMessing is 0]continue to add to the soggy padding that is covering[otherwise]loudly fill your padding right on top of[end if] [his of ST] eyes, nose and mouth.";
			let D be a random worn diaper;
			if quizMessing is 0, UrineSoakUp D by 20;
			otherwise MessUp D by 40;
			say "[BigNameDesc of M] just cackles.[line break][speech style of M]'How delightfully pathetic! Watch carefully class, this is what you get if you rely on [NameBimbo] to do anything important. In fact, I think we should spend a few minutes letting the lesson properly... [']sink in['].'[roman type][line break]";
			say "And so, even after you've finished emptying yourself, you are made to sit on [NameDesc of ST][']s face with your nasty diaper for a painfully long few minutes, while [he of ST] can do nothing but groan weakly and continue to breathe in your nappy's scent. The other students whisper in hushed tones, and you turn even brighter red. Eventually, finally, [NameDesc of M] frees both of you from the metal restraints.";
		otherwise:
			say "You emit a pained whine as your floodgates open, and you begin powerfully expelling pints of [if watersports fetish is 1]murky[otherwise]creamy[end if] sludge from your [asshole], right onto [NameDesc of ST][']s tongue and into [his of ST] mouth. [big his of ST] face gets coated too, and there's literally nothing [he of ST] can do about it other than cough and splutter as you paint [him of ST] with the [if watersports fetish is 1]butt juices[otherwise]asscum[end if]. It takes several long agonising seconds for your belly to empty itself of its massive load, with a continuous powerful jet of the stuff blasting [NameDesc of ST] right in the kisser. By the time you're done, [he of ST][']s a complete mess, and has a mouthful of gross ass juice [he of ST] doesn't want to swallow.";
			say "[speech style of M]'Oh what's wrong [student-name of ST], are you not in the mood to swallow a big mouthful of [NameBimbo][']s ass-juices? That's fair enough, I think. Since it's [his of the player] fault, it's only fair that [he of the player] swallows the consequences, don't you think?'[roman type][line break][BigNameDesc of M] releases you from your binds, and commandingly pulls your two faces together by the hair.[line break][speech style of M]'Now kiss! And [NameBimbo], I want you to drink everything that [student-name of ST] gives you.'[roman type][line break][big he of M] has you by the hair and you are in no position to resist as [NameDesc of ST] begins to tongue your mouth, snowballing the warm [semen][if watersports fetish is 1] and piss[end if] that has just been in your [asshole] back into your mouth, where you are forced to gulp the [if the semen taste addiction of the player < 6]disgusting[otherwise]thick, strong-tasting[end if] stuff down.";
			empty belly liquids;
			StomachSemenUp 8 - (watersports fetish * 4);
			if watersports fetish is 1:
				StomachUp 4;
				UrineTasteAddictUp 1;
			if watersports fetish is 1, say "[variable custom style][if the semen taste addiction of the player < 6 or the urine taste addiction of the player < 6]Yuck yuck yuck[otherwise if the semen taste addiction of the player < 12 or the urine taste addiction of the player < 12]How humiliating[otherwise]That was surprisingly tasty[end if]![line break]";
			otherwise say "[variable custom style][if the semen taste addiction of the player < 6]I can't believe that not only am I having to drink [semen], but it's [semen] that's been up my own butt[otherwise if the semen taste addiction of the player < 12]Eww, this has been in my butt[otherwise]That was just as delicious as [semen] that hasn't been up my butt[end if]![line break]";
			say "[speech style of M]'Wow, look at how fast you gobbled all that down! You're even more of a greedy slut than I thought! Maybe there's hope for you yet.'[roman type][line break][BigNameDesc of M] teases you as [he of M] gives you [ShortDesc of hair] one final sharp tug before letting you go.";
		FavourDown ST by 10;
		say "[speech style of M]'Well, there's nothing much to say except better luck next time [NameBimbo], that's all for today. Class dismissed!'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] claps [his of M] hands and the bondage keeping you knelt on top of [NameDesc of ST][']s face disappears![line break][speech style of M]'You actually did it! Congratulations.'[roman type][line break]";
		promote ST;
		if armband is pink diamond:
			now armband is pure diamond;
		otherwise if armband is ruby:
			now armband is pink diamond;
		otherwise if armband is emerald:
			now armband is ruby;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Chloe";
		now the armband-print of armband is "cute clever-clogs";
		say "[speech style of M]'You probably want to dash for the toilet now, I'd assume? Fair enough. Class dismissed!'[roman type][line break]";
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	say "[if questionWins < 0]Regardless of the outcome, your[otherwise]Your[end if] experience with the quiz has left you feeling smarter!";
	IntUp 1;
	now seconds is 30.



A quiz-lesson-question is a kind of object.
A quiz-lesson-question has a number called askedAlready.
A quiz-lesson-question has a list of texts called possible-answers.
A quiz-lesson-question has a number called minAnswer.
A quiz-lesson-question has a number called maxAnswer.
A quiz-lesson-question has a number called correctAnswer.
Definition: a quiz-lesson-question is appropriate: decide yes.
Definition: a quiz-lesson-question (called Z) is eligible:
	if Z is not appropriate, decide no;
	repeat with Q running through quiz-lesson-questions:
		if Q is not Z and the askedAlready of Q < the askedAlready of Z and Q is appropriate, decide no;
	decide yes.
To set up (Q - a quiz-lesson-question):
	say "Bug - No function coded for this question.";
To say question for (Q - a quiz-lesson-question):
	say "Missing question goes here";
To execute (Q - a quiz-lesson-question):
	ask question of Q;
	process answer of Q;

To ask question of (Q - a quiz-lesson-question):
	say "[speech style of lesson-teacher of quiz-lesson]'[question for Q]?'[roman type][line break]";
	if the maxAnswer of Q > 0: [number question]
		repeat with N running from the minAnswer of Q to the maxAnswer of Q:
			say "[link][N][end link] ";
		say line break;
	otherwise: [text question]
		let N be 1;
		repeat with T running through the possible-answers of Q:
			say "[link][N]) [T][as][N][end link][line break]";
			increase N by 1.
To process answer of (Q - a quiz-lesson-question):
	let CL be -999;
	while CL is -999:
		now CL is the chosen letter - 48;
		if the maxAnswer of Q > 0: [number question]
			if CL < the minAnswer of Q or CL > the maxAnswer of Q:
				now CL is -999;
				say "Input not understood. Press a number between 1 and [the maxAnswer of Q].";
		otherwise:
			if CL < 1 or CL > the number of entries in the possible-answers of Q:
				now CL is -999;
				say "Input not understood. Press a number between 1 and [the number of entries in the possible-answers of Q].";
	if CL is the correctAnswer of Q:
		now the questionCorrect of quiz-lesson is 1;
	otherwise:
		now the questionCorrect of quiz-lesson is 0.


To reset (Q - a quiz-lesson-question):
	truncate the possible-answers of Q to 0 entries;
	now the askedAlready of Q is 0.

To set up number answers for (Q - a quiz-lesson-question):
	let R be a random number from -2 to 0;
	if the correctAnswer of Q + R < 0, now R is 0 - the correctAnswer of Q;
	if the correctAnswer of Q + R > 7, now R is 7 - the correctAnswer of Q;
	now the minAnswer of Q is the correctAnswer of Q + R;
	now the maxAnswer of Q is the correctAnswer of Q + R + 2.


quiz-woods-candy is a quiz-lesson-question.
Definition: quiz-woods-candy is appropriate if there is a candy machine in a placed jungle room and the askedAlready of it is 0.
To say question for (Q - quiz-woods-candy):
	say "In which of these places in the woods is there a candy machine";
To set up (Q - quiz-woods-candy):
	truncate the possible-answers of Q to 0 entries;
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is a random number between 1 and 3;
	let N be 1;
	while N <= 3:
		let T be "";
		if N is the correctAnswer of Q:
			repeat with C running through candy machines:
				if C is in a placed jungle room, now T is the substituted form of "[printed name of the location of C]";
			if T is "":
				say "BUG - tried to set up woods candy question and failed to find it.";
			otherwise if T is listed in the possible-answers of Q:
				now N is 0; [start again]
				truncate the possible-answers of Q to 0 entries;
			otherwise:
				add T to the possible-answers of Q;
		otherwise:
			now T is the substituted form of "[printed name of a random placed jungle room]";
			if T is listed in the possible-answers of Q:
				decrease N by 1; [try again]
			otherwise:
				add T to the possible-answers of Q;
		increase N by 1.

quiz-candy is a quiz-lesson-question.
Definition: quiz-candy is appropriate:
	if Woods01 is not placed, decide no;
	repeat with C running through candy machines:
		if the recent uses of C > 0, decide yes;
	decide no.
To say question for (Q - quiz-candy):
	say "Which candy machine have you most recently used?";
To set up (Q - quiz-candy):
	increase the askedAlready of Q by 1;
	truncate the possible-answers of Q to 0 entries;
	let N be 1;
	repeat with C running through candy machines:
		if C is in a labyrinth room:
			add "Dungeon" to the possible-answers of Q, if absent;
		otherwise if C is in a jungle room:
			add "Woods" to the possible-answers of Q, if absent;
		otherwise if C is in a modern room:
			add "Hotel" to the possible-answers of Q, if absent;
		otherwise:
			add "Mansion" to the possible-answers of Q, if absent;
		if the recent uses of C > 0, now the correctAnswer of Q is N;
		increase N by 1;


quiz-dog is a quiz-lesson-question.
To say question for (Q - quiz-dog):
	say "What's the name of the [ShortDesc of hellhound] that lives in the creepy mansion";
To set up (Q - quiz-dog):
	increase the askedAlready of Q by 1;
	let N be a random number between 1 and 4;
	while N > 1:
		decrease N by 1;
		let T be the substituted form of "[PossiblePetName]"; [So we start listing the names at a random point in the sequence]
	while N < 4:
		let T be the substituted form of "[PossiblePetName]";
		add T to the possible-answers of Q, if absent;
		now N is the number of entries in the possible-answers of Q;
		if T matches the text DogPetName, now the correctAnswer of Q is N;


quiz-fairies is a quiz-lesson-question.
Definition: quiz-fairies is appropriate if Woods01 is placed.
To say question for (Q - quiz-fairies):
	say "How many fairies are there in the woods right now";
To set up (Q - quiz-fairies):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of alive fairy;
	set up number answers for Q.


quiz-tentacles is a quiz-lesson-question.
Definition: quiz-tentacles is appropriate if tentacle fetish is 1 and the number of alive tentacle monsters < 10.
To say question for (Q - quiz-tentacles):
	say "How many tentacle monsters are there in the world right now";
To set up (Q - quiz-tentacles):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of alive tentacle monsters;
	set up number answers for Q.


quiz-humans is a quiz-lesson-question.
To say question for (Q - quiz-humans):
	say "How many humans are there in the dungeon right now";
To set up (Q - quiz-humans):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of human monsters in the dungeon;
	set up number answers for Q.

quiz-junk is a quiz-lesson-question.
Definition: quiz-junk is appropriate if the number of clothing in School15 < 10.
To say question for (Q - quiz-junk):
	say "How many items of clothing are there in the junk room right now";
To set up (Q - quiz-junk):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the number of clothing in School15;
	set up number answers for Q.

quiz-wealth is a quiz-lesson-question.
Definition: quiz-wealth is appropriate if the wealth of the player > 0 and the wealth of the player < 10.
To say question for (Q - quiz-wealth):
	say "What's the total value of all the jewellery you're wearing";
To set up (Q - quiz-wealth):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is the wealth of the player;
	set up number answers for Q.

quiz-lessons is a quiz-lesson-question.
Definition: quiz-lessons is appropriate if totalLessonCount < 10.
To say question for (Q - quiz-lessons):
	say "How many lessons have you attended before this one";
To set up (Q - quiz-lessons):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is totalLessonCount;
	set up number answers for Q.

quiz-orgasms is a quiz-lesson-question.
Definition: quiz-orgasms is appropriate if totalOrgasmCount < 10.
To say question for (Q - quiz-orgasms):
	say "How many orgasms have you had";
To set up (Q - quiz-orgasms):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is totalOrgasmCount;
	set up number answers for Q.

quiz-snacks is a quiz-lesson-question.
Definition: quiz-snacks is appropriate if snacks-found < 10.
To say question for (Q - quiz-snacks):
	say "How many beneficial snacks have you found in containers";
To set up (Q - quiz-snacks):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is snacks-found;
	set up number answers for Q.

quiz-patrons is a quiz-lesson-question.
Definition: quiz-patrons is appropriate if patronbed uses > 0 and patronbed uses < 10.
To say question for (Q - quiz-patrons):
	say "How many times have you worked as a [if diaper quest is 1]professional baby slave[otherwise]whore[end if] at a hotel bed";
To set up (Q - quiz-patrons):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is patronbed uses;
	set up number answers for Q.

quiz-throne is a quiz-lesson-question.
Definition: quiz-throne is appropriate if timesSat of the throne < 10.
To say question for (Q - quiz-throne):
	say "How many times have you sat on the royal throne";
To set up (Q - quiz-throne):
	increase the askedAlready of Q by 1;
	now the correctAnswer of Q is timesSat of the throne;
	set up number answers for Q.







hypno-lesson is a lesson. The lesson-teacher of hypno-lesson is teacher-hyacinthe.
hypno-lesson has a number called traitor-hypno.

Definition: hypno-lesson (called L) is lesson-appropriate:
	if the player is not an april 2019 top donator, decide no;
	if chess-lesson is appropriate, decide no; [Chess lesson is way better at the moment]
	decide yes.

To compute teaching of (L - hypno-lesson):
	let M be lesson-teacher of L;
	let STN be the number of students in the location of the player;
	let ST be a random student in the location of the player;
	say "[BigNameDesc of M] sits on the ground, legs crossed. Several candles surround the edges of the room, providing the only light. [if STN > 1]The other students are also sitting cross-legged, in a semi-circle in front of [him of M]. [big he of M] beckons you to come join them[otherwise if STN is 1][BigNameDesc of ST] is sitting to [his of M] left, also cross-legged. You are beckoned to come sit to [NameDesc of M][']s right[otherwise][big he of M] beckons you to come sit with [him of M][end if].[line break][speech style of M]'Today is about learning to let your inhibitions go, through... [']breathing exercises[']. Come, sit with me, close your eyes, and listen to my voice.'[roman type][line break]The air in the room is heavy, and this, combined with your closed eyes and [NameDesc of M][']s hypnotic humming, quickly takes you into a deep trance. You feel real magic power surging from [NameDesc of M] into your body and soul.[paragraph break]";
	MagicPowerUp 2;
	say "[first custom style]'Help your friends.'[line break]'Your friends need your help.'[line break]'Encourage your friends.'[line break]'Your friends need a little push.'[line break]'Support your friends.'[line break]'Your friends need to be better.'[line break][second custom style]She's not slutty enough.[line break][first custom style]'Help your friends be sexy.'[line break]'Help your friends get sex.'[line break]'Help your friends choose sex.'[second custom style]Help my friends choose submission.[line break][first custom style]'Help your friends have fun.'[line break]'Being submissive is fun.'[line break]'Your friends trust you.'[line break]'Trust your friends to be submissive.'[line break][second custom style]It's not betraying their trust...[line break][first custom style]'Betray them if you must.'[line break][second custom style]They trust me to support them.[line break][first custom style]'You support them to be the best them.'[line break][second custom style]I support them to be the best them.[line break][first custom style]'Then betray them to support them.'[line break][second custom style]I...[roman type][paragraph break]Do you fight against the hypnosis? (If you do, you imagine you probably won't get promoted.) ";
	if the player is consenting:
		say "[second custom style]I won't betray my friends.[roman type][paragraph break]You open your eyes to find that [NameDesc of M] is staring directly at you, smiling gently, but with something cold in [his of M] eyes.[line break][speech style of M]'Disappointing.'[roman type][line break]";
	otherwise:
		say "[second custom style]I... betray my friends.[roman type][paragraph break]You open your eyes to find that [NameDesc of M] is staring directly at you, smiling gently, but with something cold in [his of M] eyes.[line break][speech style of M]'Oh yes [NameBimbo], you've passed with flying colours.'[roman type][line break]";
		now the traitor-hypno of L is 3;
		now armband is pure diamond;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Scarlet";
		now the armband-print of armband is "scandal";
		say ExamineDesc of armband;
	repeat with S running through students in the location of the player:
		say "[BigNameDesc of M] turns to [NameDesc of S].";
		if S is promotable:
			say "[speech style of M]'You've done well today, [student-name of S].'[roman type][line break]";
			promote S;
		otherwise if S is demotable and armband is pure diamond:
			say "[big he of S] looks terrified.[line break][speech style of S]'No, this is wrong, this is so wrong[one of]! I won't wanna... I can't remember what, but I know it's bad[or][stopping]!'[roman type][line break][big he of S] looks at you.[line break][speech style of S]'What have you let [him of M] do to you?!'[roman type][line break]";
			FavourDown S by 3;
			say "[BigNameDesc of M] looks furious.[line break][speech style of M]'You clearly do not deserve to be here yet, you useless tramp.[roman type][line break]";
			demote S;
		otherwise:
			say "[speech style of M]'There's still too much [one of]hesitance[or]reluctance[or]rebellion[then at random] in you, [student-name of S]. Maybe next time.'[roman type][line break]";
	if armband is pure diamond, update students. [an important line which makes boring old students disappear and new cool ones appear]






Teachers Pink Diamond ends here.
