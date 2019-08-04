School Stuff by TQ Only Stuff begins here.


Definition: chess-lesson is lesson-appropriate: decide no.

To say chess moves:
	say "".

To compute chess soiling:
	do nothing.


Part - Kissing Lesson


kissing-lesson is a lesson. The lesson-teacher of kissing-lesson is teacher-angela.

To compute teaching of (L - kissing-lesson):
	allocate 40 seconds;
	now bigGameLoop is 2;
	let M be the lesson-teacher of L;
	say "[speech style of M]'Oral skillz 101.'[roman type][line break][BigNameDesc of M] holds [his of M] hands behind [his of M] back as [he of M] addresses you all.[line break][speech style of M]'[one of]Your teeth, your lips, your tongue... all are incredibly important toolz at your dizpozal[or]It zeemz zat you all ztill require more vork in zis department[stopping].'[roman type][line break][big he of M] licks [his of M] lips.[line break][speech style of M]'Yez... a complete examination iz required. Each of you vill take turnz to kizz me. Eizer you vill be leaving viz a promotion... or you vill be leaving viz a little upgrade...'[roman type][line break]";
	repeat with ST running through students in the location of the player:
		say "[speech style of M]'[student-name of ST], [one of]come here[or]you next[or]your turn[then at random].'[roman type][line break]";
		let STEffort be the dedication of ST;
		say "[BigNameDesc of ST] [one of]tenderly[or]gingerly[or]bravely[or]courageously[at random] walks up to [BigNameDesc of M] and then [one of]proceeds to lock lips with [him of M] in front of the whole class[or]takes [his of ST] turn kissing [him of M][stopping]. [if STEffort < 2]The kiss only lasts for a few seconds before [NameDesc of ST] pulls away[otherwise if STEffort is 2]The kiss looks rather passionate from where you're standing, but when [NameDesc of M] tries to grab [his of ST] buttocks, [he of ST] squeaks and pulls away[otherwise if STEffort is 3]The kiss lasts for quite some time, both of them enthusiastically holding each other's butts as they taste each other's saliva. You think you can even hear some moaning[otherwise]The kiss lasts a very long time, both of them humming loudly with pleasure as they feel each other all over, including [NameDesc of ST] letting [NameDesc of M] touch [his of ST] crotch[end if]. ";
		if a random number between 2 and 4 > STEffort:
			say "[BigNameDesc of M] [one of]frowns[or]sighs[or]clicks [his of M] tongue[in random order].[line break][speech style of M]'Not good enough for a promotion today, darling. Zo inztead I must give you a punishment... Okay, until the next time I zee you for clazz... [one of]you cannot hear people zpeak until you have firzt tazted their tongue[or]you can only experienze zexual pleazure vile kizzing anozer [man of ST][or]everyzing you eat vill tazte like my deliciouz zaliva[or]your mouth vill be in a permanent pouting [']O['][in random order].'[roman type][line break]And with a snap of [his of M] fingers, you know that the punishment has been sealed with magic. [BigNameDesc of ST] whimpers and returns to [his of ST] desk.";
		otherwise if ST is promotable:
			say "[BigNameDesc of M] [one of]licks [his of M] lips[or]sighs with delight[or]smiles coyly[in random order].[line break][speech style of M]'Oh yez, you clearly know vat you are doing... Fine, you may go.'[roman type][line break]";
			promote ST;
		otherwise:
			say "[BigNameDesc of M] spends a while thinking before speaking.[line break][speech style of M]'I do not zink you dezerve punishment... but I cannot grant you ze rank of emerald juzt yet. I vill leave you alone for today.'[roman type][line break]";
	let KissRating be (the lips of face) + (the oral sex addiction of the player / 2);
	say "[speech style of M]'Okay [NameBimbo], let'z zee vat you can do.[roman type][line break]You find yourself walking to the front until your face is inches from [teacher-name of M][']s.[big he of M] pouts and slightly opens [his of M] lips, revealing [his of M] waiting tongue. It looks like you could choose to make the first move - this would be rather embarrassing to do in front of all your classmates, but may well earn you brownie points with [teacher-name of M]. Do you make the first move?";
	let tonguedPerson be the player;
	if the player is consenting:
		increase KissRating by 1;
		say "You close your eyes and move your face forward until your lips touch, tilting your head slightly to allow them to lock. [teacher-name of M] moans with satisfaction. [severeHumiliateReflect] You could push your tongue into [his of M] mouth, and take control, or wait for [his of M] to push into yours. Do you want to attempt to assert dominance?";
		if the player is consenting:
			say "You begin to push your tongue inside [teacher-name of M][']s mouth, surprising [him of M]. [big he of M] blocks with [his of M] own tongue, and they slither on top of each other for a few seconds as you fight to enter each other's mouths. The feeling of [his of M] tongue on yours [if the player is a bit horny]arouses you further[otherwise]turns you on a little[end if]. Eventually ";
			if a random number between 1 and the delicateness of the player < 7:
				say "[teacher-name of M] gives way, and allows your tongue to slip beyond [his of M] teeth.";
				now tonguedPerson is M;
			otherwise:
				say "your bravery subsides and you relent, allowing your superior to explore the insides of your mouth.";
			arouse 400 * ((4 + the oral sex addiction of the player) / 4);
			finally arouse the delayed arousal of the player;
			update arousal;
			DelicateDown 1;
		otherwise:
			say "You keep your tongue inside your own mouth, and after a moment, [teacher-name of M][']s tongue joins it, exploring the mouth as [he of M] takes the lead.";
	otherwise:
		say "[teacher-name of M] tuts at your hesitation and then grabs you by the back of your head, forcing your lips together in a seal, where [he of M] immediately forces [his of M] tongue into your mouth and towards your throat. With [his of M] tongue in your mouth, it definitely feels like [he of M] is in command.";
	let endN be a random number between 4 and 8;
	let N be 0;
	let player-groped-level be -1;
	while N < endN:
		increase N by 1;
		increase KissRating by 1;
		if tonguedPerson is the player:
			say "Would you like to try and push your tongue into [teacher-name of M][']s mouth?";
			if the player is consenting:
				say "Your tongues slither on top of each other for a few seconds as you fight to push [teacher-name of M][']s tongue back into [his of M] mouth. The feeling of [his of M] tongue on yours [if the player is a bit horny]arouses you further[otherwise]turns you on a little[end if]. ";
				if a random number between 1 and the delicateness of the player < a random number between 1 and 9:
					say "[teacher-name of M] gives way, and your tongues are now touching in [his of M] mouth.";
					now tonguedPerson is M;
				otherwise:
					say "[teacher-name of M] doesn't relent, and [his of M] tongue remains firmly inside your mouth. Your failed attempt at domination makes you feel a bit more submissive.";
					SilentlyDelicateUp 1;
				arouse 200 * ((4 + the oral sex addiction of the player) / 4);
				check for arousal change;
		otherwise:
			say "[teacher-name of M] [one of]uses [his of M] tongue to play with yours in [his of M] mouth[or]massages your tongue with [his of M] lips[or]lets you lick [his of M] lips[or]sucks your saliva off of your tongue[at random], ";
			if a random number between the delicateness of the player and 20 > a random number between 1 and 20:
				say "but then when [he of M] senses an opening, [he of M] manages to shove your tongue back into your mouth and take control!";
				now tonguedPerson is the player;
			otherwise:
				say "[one of]mainly allowing you to take[or]seemingly impressed at how long you are maintaining[or]perhaps enjoying the feeling of being in less[in random order] control.";
			arouse 400 * ((4 + the oral sex addiction of the player) / 4);
			check for arousal change;
		if tonguedPerson is the player:
			increase player-groped-level by 1;
			say "[teacher-name of M] [if player-groped-level is 0]grabs your [AssDesc] with both hands, with some force. You think you can hear some snickering from behind you[otherwise if player-groped-level is 1]moves one hand to your [BreastDesc] and begins to grope you[otherwise if player-groped-level is 2]moves the hand that was kneading your [AssDesc] to your [genitals], and begins playing with you down there[otherwise]keeps stroking you down below[end if]. Do you pull away and end the kiss? ";
			if the player is consenting:
				now N is 10;
				say "You wrestle free and step back.";
			otherwise:
				say "You feel humiliated that you've let [him of M] [one of][or]continue to [stopping]do this to you in front of your classmates! [strongHumiliateReflect]";
				arouse 500 + (1000 * player-groped-level);
				if player-groped-level > 1:
					if vagina is orgasming:
						say "After you have finished squealing with pleasure into [teacher-name of M][']s mouth, [he of M] lets the kiss end.";
						OralSexAddictUp 1;
				check for arousal change;
				increase KissRating by 1;
		otherwise:
			say "[teacher-name of M] [if player-groped-level is -1]submits to your kiss, moaning enthusiastically[otherwise if player-groped-level is 0]lets you play with [his of M] tongue as [he of M] continues to knead your [AssDesc][otherwise if player-groped-level is 1]swirls [his of M] tongue with yours as [he of M] continues to fondle you[otherwise]submits to your oral probing and focuses on playing with your [genitals] and [BreastDesc][end if]. Do you pull away and end the kiss? ";
			if the player is consenting:
				now N is 10;
				say "You wrestle free and step back.";
			otherwise:
				say "Even though you don't feel as humiliated[one of] because you're in control[or][stopping], [his of M] touch continues to turn you on.";
				arouse 500 + (1000 * player-groped-level);
				if player-groped-level > 1:
					if vagina is orgasming:
						say "After you have finished squealing with pleasure into [teacher-name of M][']s mouth, [he of M] lets the kiss end.";
						OralSexAddictUp 1;
				check for arousal change;
				increase KissRating by 1;
	if N < 10: [Teacher pulls away]
		say "Finally, [NameDesc of M] pulls away and lets go of you.";
		increase KissRating by 1;
	otherwise:
		say "[teacher-name of M] [one of]tuts[or]harrumphs[in random order] with mild disappointment.";
	say "[speech style of M]'[if KissRating < 3]That was abysmal[otherwise if KissRating < 5]That was rather poor[otherwise if KissRating < 7]I've had worse[otherwise if KissRating < 10]Not bad at all[otherwise]Marvellous[end if]. ";
	if a random number between 4 and 10 <= KissRating:
		say "Yes, I think you've learned enough here.'[roman type][line break]";
		now armband is emerald;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Candy";
		now the armband-print of armband is "consummate kisser";
		say ClothingDesc of armband;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	otherwise:
		say "You can do better, I think. Especially with a little help...'[roman type][line break]";
		if a random number between 1 and (2 + artificial enhancements fetish) > the lips of face:
			say "[BigNameDesc of M] brings you forward for one more kiss. As your lips touch this time, you feel yours growing in size! By the time you've pulled away, they have changed from [LipDesc] to ";
			increase the lips of face by 1; [Not using LipsUp on purpose]
			say "[LipDesc]!";
			display lips cutscene;
		otherwise:
			say "You can't see anything else happen, but something inside your brain seems... [if the oral sex addiction of the player < 5]less resistant to the idea of using[otherwise]more eager to use[end if] your mouth for pleasure.";
			OralSexAddictUp 1;
	say "[big he of M] ushers you back to your seat and then addresses the whole class.[line break][speech style of M]'Zat iz it for today! Clazz dizmizzed!'[roman type][line break]";
	now bigGameLoop is 0;
	conclude consenting.


Part - Rochelle / Roger

teacher-rochelle is a ruby-teacher. teacher-rochelle is tq-only. teacher-rochelle is male.

Definition: teacher-rochelle is presenting as male if futanari fetish is 0.

The text-shortcut of teacher-rochelle is "tero".

Figure of rochelle is the file "NPCs/School/Teacher/teacher7.png".
Figure of roger is the file "NPCs/School/Teacher/teacher8.png".

To decide which figure-name is the monster-image of (M - teacher-rochelle):
	if lady fetish is 1 or futanari fetish is 1, decide on figure of rochelle;
	decide on figure of roger.

To decide which number is the girth of (M - teacher-rochelle):
	decide on 7.

To say LongDickDesc of (M - teacher-rochelle):
	say "huge thick [DickDesc of M]";

To say MonsterDesc of (M - teacher-rochelle):
	if futanari fetish is 0, say "This tall naked man has a muscular chiselled chest and a very decent sized penis swinging between [his of M] legs. [big he of M] looks permanently bored.";
	otherwise say "Even if [his of M] armband didn't make it clear that this dirty blonde woman with her smart black top and tartan scarf is a teacher, there's no avoiding noticing [his of M] [LongDickDesc of M] swinging from [his of M] crotch. Its 9.5 inch length and equally impressive girth must put it in the top 1% of [manly-penis]s.".

The teacher-name of teacher-rochelle is "Rochelle".

To uniquely set up (M - teacher-rochelle):
	if futanari fetish is 0, now the teacher-name of M is "Roger".

To say WhoAnswer of (M - teacher-rochelle):
	say "[speech style of M]'I'd have thought that was pretty obvious. I teach dumb girls like you how to properly service a [DickDesc of M].'[roman type][line break]".

To say WhereAnswer of (M - teacher-rochelle):
	say "[speech style of M]'[if the rank of the player <= 1]Somewhere people can be safe while learning how not to look like a helpless idiot in the bedroom.'[otherwise]All it takes is putting in more... [']dedication['] than your peers.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-rochelle):
	say "[speech style of M]'Things that only properly trained whores are allowed to see.'[roman type][line break]".

To say StoryAnswer of (M - a teacher-rochelle):
	say "[speech style of M]'While the outside world still considers cock worship a [']not a real qualification['], we see things a bit differently here.'[roman type][line break]".

To say AdviceAnswer of (M - teacher-rochelle):
	say "[speech style of M]'Get used to the taste of cum.'[roman type][line break]".

To compute teaching of (M - teacher-rochelle):
	say "[speech style of M]'Of course... Meet me in the hot tub after hours and I'll give you a good seeing to.'[roman type][line break]".

To say angry punishment insult of (M - teacher-rochelle):
	say "[speech style of M]'Fucking bitch! How dare a slut like you reject your own devoted teacher. I'll show you how to be a proper whore.'[roman type][line break]".

Definition: teacher-rochelle is willing to let go: decide yes.

To compute FriendlySexRelease of (M - teacher-rochelle):
	if M is willing to let go:
		say "[BigNameDesc of M] pulls out in a huff.";
		dislodge M;
		compute angry punishment of M;
		satisfy M;
	otherwise:
		say FriendlySexReleaseRefusalFlav of M.

To compute labour to (M - teacher-rochelle):
	if playerRegion is School:
		compute pregnancy clothing displacement;
		say "[PregFlav]A human head pushes its way out of your cunt, agonisingly slowly and painfully. Finally the head has passed through, and after a final push at the shoulders, the birthing is complete. You pick your child up off the floor and start to cradle it in your arms. The [father] appears almost as if on cue! [PregFlav of the father]Severing the umbilical cord, [he of M] pulls the baby from your hands, wraps it in a soft blanket and then carries it away.[line break][variable custom style][if the bimbo of the player < 8]That is definitely for the best.[otherwise if the bimbo of the player < 14]I guess I don't really have anywhere to raise a baby in here, anyway.[otherwise]Oh good, that means I can busy myself with finding a new stud to breed me again![end if][roman type][line break]";
	otherwise:
		say DefaultBirthScene.


The lesson-teacher of eating-lesson is teacher-rochelle.
practical-lesson is a lesson. The lesson-teacher of practical-lesson is teacher-rochelle.

To compute teaching of (L - practical-lesson):
	allocate 6 seconds;
	say "[BigNameDesc of lesson-teacher of L] gently strokes [his of lesson-teacher of L] [DickDesc of lesson-teacher of L], and you all watch as it slowly hardens, growing even larger in size.[line break][speech style of lesson-teacher of L]'[one of]I think that today we should have our very first practical session together[or]It's time for another practical session, I think[stopping]. With, of course, a chance for some of you to get promoted! The rules are simple: each of you need to get in line and one by one you need to pleasure me. The person that makes me cum will get promoted, as will the slut who I think acted the filthiest. But remember, no ass-to-vag, okay? That's unhealthy.'[roman type][line break]And with that [he of lesson-teacher of L] assorts you into a random order, which ends up having you at the front. You're going to have to go first, it would seem...";
	repeat with W running through worn wrist locking clothing:
		say "With a click of [his of lesson-teacher of L] fingers, your [ShortDesc of W] falls to the ground.";
		now W is in the location of the player;
		now W is unlocked;
	let cum-countdown be a random number between 30 and 40;
	let total-fuck-turns be 0;
	let stimulation-level be 0;
	let slobber-owner be the player;
	let pussy-count be 0;
	let ass-count be 0;
	let player-filthiness be 0;
	let victorious-student be the player;
	let student-filthiness be 0;
	let filthiest-student be a random student in the location of the player;
	now refactoryperiod is 0;
	while cum-countdown > 0:
		increase seconds by 9;
		now stimulation-level is 0;
		finally humiliate the delayed humiliation of the player;
		check for arousal change;
		while stimulation-level <= 0:
			say "You can use your [italic type]hands[roman type][if the largeness of breasts > 5], [italic type]breasts[roman type][end if][if the player is female and ass-count is 0 and vagina is not actually occupied and the number of worn chastity cage is 0], [italic type][vagina][roman type][end if][if asshole is not actually occupied], [italic type][asshole][roman type][end if][if face is not actually occupied] or [italic type]mouth[roman type][end if]. ";
			if the player is female and ass-count > 0 and vagina is not actually occupied and the number of worn chastity cage is 0, say "You aren't allowed to use your [vagina] while there's someone else's ass juices on [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L], as that would be unhealthy.";
			if face is not actually occupied:
				say "[line break]Use your mouth? ";
				unless pussy-count is 0 and ass-count is 0 and slobber-owner is the player, say "(you'll have to slurp up[if pussy-count > 1] [pussy-count] lots of vaginal juices[otherwise if pussy-count > 0] the taste of someone's pussy juice[end if][if pussy-count > 0 and ass-count > 0] and[end if][if ass-count > 1] [ass-count] lots of ass juices[otherwise if ass-count >  0] the taste of someone's butt[end if][if ass-count is 0 and pussy-count is 0] [NameDesc of slobber-owner][']s slobber[end if]). ";
				say "";
				if the player is consenting:
					now the lesson-teacher of L is penetrating face;
					say "You [if the oral sex addiction of the player < 4]hesitantly[otherwise if the oral sex addiction of the player < 8]gracefully[otherwise]greedily[end if] take the [LongDickDesc of lesson-teacher of L] into your mouth. ";
					if the player is a deepthroater:
						say "You skilfully push the massive rod straight down your throat, making proud gagging sounds around it as you do.  You move your head up and down, up and down, essentially fucking your own throat as you do. ";
						increase stimulation-level by 1;
					if player-filthiness < ass-count + pussy-count + stimulation-level:
						now player-filthiness is ass-count + pussy-count + stimulation-level;
						if student-filthiness > 0:
							say "By doing this, you've reduced [NameDesc of filthiest-student][']s chances of winning.";
							if student-filthiness < player-filthiness, FavourDown filthiest-student by 3;
							otherwise FavourDown filthiest-student;
					increase stimulation-level by (the oral sex addiction of the player + a random number between 2 and 4) / 3;
					if ass-count > 0:
						say "The taste of [if ass-count > 1][ass-count] loads of sweaty ass juice[otherwise]tangy ass sweat[end if] [if pussy-count > 1]combined with [pussy-count] helpings of slimy cunt butter [otherwise if pussy-count > 0]combined with the unmistakable taste and texture of pussy juice [end if]overwhelms your senses and makes you retch. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L]. Your cheeks burn with shame[if the player is shameless] and arousal[end if].";
					otherwise if pussy-count > 0:
						say "The taste of [if pussy-count > 1][pussy-count] loads of slippery girl-slime[otherwise]the thin coating of pussy juice[end if] fills your mouth. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L]. Your cheeks burn with shame[if the player is shameless] and arousal[end if].";
					otherwise if slobber-owner is a student:
						say "You can taste [NameDesc of slobber-owner][']s slobbery saliva all over the shaft. It's a bit humiliating to be slurping someone else's spit off of a [DickDesc of lesson-teacher of L]!";
						humiliate 50;
					humiliate (300 * ass-count) + (100 * pussy-count);
					OralSexAddictUp (1 + ass-count + (pussy-count / 2)) / 2;
					say "By the time [NameDesc of lesson-teacher of L] tells you to stop, the only thing coating [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] is your own saliva[unless pussy-count is 0 and ass-count is 0 and slobber-owner is the player]. Everything else is in your stomach and on your tongue[end if].";
					now pussy-count is 0;
					now ass-count is 0;
					now slobber-owner is the player;
					BlowCount;
			if stimulation-level is 0 and the largeness of breasts > 5:
				say "Use your breasts? ";
				if the player is consenting:
					now the lesson-teacher of L is penetrating breasts;
					say "You [if the titfuck addiction of the player < 4]hesitantly[otherwise if the titfuck addiction of the player < 8]gingerly[otherwise]happily[end if] take the waiting [DickDesc of lesson-teacher of L] in between your [ShortDesc of breasts]. ";
					if the titfuck addiction of the player > a random number between 4 and 7:
						say "Your skill and comfort with masturbating a [DickDesc of lesson-teacher of L] with your breasts is made apparent as you use your hands to rub the thick shaft with an enthusiastically fast rhythm and high pressure. ";
						increase stimulation-level by 1;
					otherwise:
						say "You move your body up and down, gently stroking the shaft with your soft flesh. ";
					increase stimulation-level by (the largeness of breasts + a random number between 1 and 4) / 6;
					humiliate 25;
					stimulate breasts;
			if stimulation-level is 0 and the player is female and ass-count is 0 and vagina is not actually occupied and the number of worn chastity cage is 0:
				say "Use your [vagina]? ";
				if the player is consenting:
					now the lesson-teacher of L is penetrating vagina;
					say "You [if the vaginal sex addiction of the player < 4]hesitantly[otherwise if the vaginal sex addiction of the player < 8]gingerly[otherwise]excitedly[end if] clamber on top of [NameDesc of lesson-teacher of L], before spreading yourself with two fingers and guiding [his of lesson-teacher of L] [LongDickDesc of lesson-teacher of L] into your [vagina]. ";
					increase stimulation-level by 5 - ((the openness of vagina + a random number between 1 and 4) / 3);
					if the vaginal sex addiction of the player > a random number between 4 and 7:
						say "You ride [him of lesson-teacher of L] for all you're worth, thrusting your hips back and forth as fast as you can while gripping [his of lesson-teacher of L] shoulders tightly.";
						increase stimulation-level by 2;
						ruin vagina times 2;
					otherwise:
						say "You ride [him of lesson-teacher of L] gently and passionately, softly kneading [his of lesson-teacher of L] chest with one hand as you do.";
						ruin vagina;
					humiliate 25;
					if pussy-count > 0, say "Your pussy juices mix in with the [if pussy-count is 1]stuff that's already there[otherwise]others[end if], thickening the film of girl-slime around [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L]";
					otherwise say "Your [vagina] slowly coats [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L] in its juices.";
					increase pussy-count by 1;
					FuckCount;
			if stimulation-level is 0 and asshole is not actually occupied:
				say "Use your [asshole]? ";
				if the player is consenting:
					now the lesson-teacher of L is penetrating asshole;
					say "You [if the anal sex addiction of the player < 4]hesitantly[otherwise if the anal sex addiction of the player < 8]gingerly[otherwise]excitedly[end if] clamber on top of [NameDesc of lesson-teacher of L], before spreading yourself with two fingers and guiding [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] into your [asshole]. ";
					increase stimulation-level by 5 - ((the openness of asshole + a random number between 1 and 4) / 3);
					if the anal sex addiction of the player > a random number between 4 and 7:
						say "You ride [him of lesson-teacher of L] for all you're worth, bouncing on top of [him of lesson-teacher of L] wildly, the tip of [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] repeatedly bashing hard against the deepest recesses of your [asshole].";
						increase stimulation-level by 2;
						ruin asshole times 2;
					otherwise:
						say "You ride [him of lesson-teacher of L] delicately, using your hands to balance yourself around [his of lesson-teacher of L] loins and avoid accidentally falling and putting your full weight on [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] and your [asshole].";
						ruin asshole;
					humiliate 25;
					if ass-count > 0, say "Your ass sweat mixes in with the [if ass-count > 0 and pussy-count > 0]ass and pussy juice that's already there[otherwise if pussy-count > 1]recent helpings of pussy juice[otherwise if pussy-count > 0]pussy juice[otherwise if ass-count > 1][ass-count] traces already there[otherwise]small amounts that are already there from someone else[end if], to create an even nastier concoction for whoever next puts this [DickDesc of lesson-teacher of L] in their mouth.";
					otherwise say "Whoever next puts this [DickDesc of lesson-teacher of L] in their mouth is going to be able to taste your ass on it.";
					increase ass-count by 1;
					AnalCount;
			if stimulation-level is 0:
				say "Use your hands? ";
				if the player is consenting:
					increase stimulation-level by 1;
					if a random number between 7 and 13 < the sex addiction of the player:
						say "You stroke [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L] and head with both your hands, filling the room with a steady 'schlick schlick schlick' sound.";
						if the player is a pervert, increase stimulation-level by 1;
					otherwise:
						say "You slowly stroke [NameDesc of lesson-teacher of L][']s shaft with one hand.";
			if stimulation-level is 0, say "You have to do something!";[if the player didn't pick anything, go back to the top]
		decrease cum-countdown by stimulation-level;
		TimesSubmittedUp (lesson-teacher of L) by 1;[Each time you perform a sex act on him, it counts as one instance of submissive sex]
		if total-fuck-turns is 0:
			say "Getting to choose how you fuck [him of lesson-teacher of L] has made you feel more dominant!";
			SilentlyDelicateDown 1;
		increase total-fuck-turns by 1;
		if cum-countdown <= 0:
			say "[speech style of lesson-teacher of L]'Yes, yes, YES!!!'[roman type][line break][BigNameDesc of lesson-teacher of L] orgasms and [his of lesson-teacher of L] [DickDesc of lesson-teacher of L] erupts!";
			if the lesson-teacher of L is penetrating an orifice:
				say "Your [variable a random orifice penetrated by the lesson-teacher of L] gets filled!";
				if the lesson-teacher of L is penetrating vagina, PussyFill the semen load of the lesson-teacher of L;
				if the lesson-teacher of L is penetrating asshole, AssFill the semen load of the lesson-teacher of L;
				if the lesson-teacher of L is penetrating face, StomachSemenUp the semen load of the lesson-teacher of L;
			if the lesson-teacher of L is penetrating breasts:
				say "Your [ShortDesc of breasts] get drenched in [semen]!";
				CumTitsUp the semen load of the lesson-teacher of L;
				increase the raw sensitivity of breasts by 1;
		otherwise:
			if the lesson-teacher of L is penetrating face and player-filthiness > 0:
				say "[speech style of lesson-teacher of L]'That's right, swallow it all you [one of]filthy pig[or]nasty cumdump[or]human vacuum cleaner[in random order]!'[roman type][line break][BigNameDesc of lesson-teacher of L] passionately degrades you between moans of approval.[line break][speech style of lesson-teacher of L]'Okay STOP! Next in line, get going, quickly!'[roman type][line break]";
			otherwise:
				say PracticalAssessment of the lesson-teacher of L to stimulation-level with cum-countdown;
		dislodge the lesson-teacher of L;
		repeat with M running through students in the location of the player:
			if cum-countdown > 0:
				now stimulation-level is 0;
				if a random number between 1 and (10 + ((ass-count + ass-count + pussy-count) * 2) - the practical dirtiness of M) is 1 and M is promotable:
					say "[BigNameDesc of M] [one of]moves [his of M] face up to[or]approaches[in random order] [NameDesc of lesson-teacher of L][']s crotch and takes [his of lesson-teacher of L] [LongDickDesc of lesson-teacher of L] into [his of M] mouth. [big he of M] [one of]audibly gags[or]chokes on the length[or]makes rather lewd glugging sounds[in random order] as [he of M] tries to get as much as possible of it into [his of M] [one of]tiny mouth[or]delicate throat[or]gullet[in random order], and [one of]slurp up[or]suck away[in random order] all the [if ass-count + pussy-count > 0]disgusting [end if]juices. After a short while of moving [his of M] head up an down, you hear [him of M] gulp as [he of M] swallows whatever is sloshing around in [his of M] mouth. [if ass-count + pussy-count > 0]After [he of M] pulls away, you see [him of M] wipe [his of M] tongue with disgust. [end if][big his of M] saliva still coats [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L].";
					if ass-count + pussy-count > student-filthiness:
						now filthiest-student is M;
						now student-filthiness is ass-count + ass-count + pussy-count;
					now ass-count is 0;
					now pussy-count is 0;
					now slobber-owner is M;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if ass-count is 0 and M is female and a random number between 1 and (20 - the practical dirtiness of M) <= 10:
					say "[BigNameDesc of M] crouches above [NameDesc of lesson-teacher of L] before carefully lowering [his of M] spread pussy onto [NameDesc of lesson-teacher of L][']s [one of]waiting shaft[or]rock hard rod[or]thick [LongDickDesc of lesson-teacher of L][in random order]. [big he of M] [one of]audibly moans as [he of M] rocks back and forth[or]goes a bit red in the face as [he of M] repeatedly rides up and down the whole length[or]hardly moves at all before [he of M] mewls in a high pitched voice and loses control of [his of M] shuddering body as [he of M] cums hard. [big his of M] leaves her panting and collapsed on top of [NameDesc of lesson-teacher of L], that [LongDickDesc of lesson-teacher of L] still fully embedded inside of [him of M][or]tries to clench [his of M] vaginal muscles as [he of M] rides up and down, to make it tighter for [NameDesc of lesson-teacher of L][or]silently thrusts her hips back and forth, taking on the role of the obedient cowgirl[or]grinds down onto the [DickDesc of lesson-teacher of L] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] teacher[or]quickly gets to bouncing up and down with a steady, smooth rhythm[in random order].";
					increase pussy-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if a random number between 1 and (20 - the practical dirtiness of M) <= 10:
					say "[BigNameDesc of M] crouches above [NameDesc of lesson-teacher of L] before [one of]carefully lowering[or]roughly impaling[or]slowly pushing[in random order] [his of M] [one of]tight little asshole[or]slightly open asshole[or]butthole[in random order] onto [NameDesc of lesson-teacher of L][']s [one of]massive beast[or]long hard shaft[or]waiting dong[in random order]. [big he of M] [one of]audibly whimpers as [he of M] moves [his of M] hips back and forth[or]holds [his of M] breath as [he of M] uses [his of M] thigh muscles to ride up and down the whole length[or]grinds up and down, forward and back for several seconds before suddenly wailing as a sudden anal orgasm wracks [his of M] entire body, causing [him of M] to collapse onto of [NameDesc of lesson-teacher of L], the still fully-hard [DickDesc of lesson-teacher of L] managing to slither its way out of [his of M] butthole with a loud slurp[or]tries to use [his of M] butt muscles to massage [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L] in an almost sensual display[or]somehow makes very loud and wet slapping noises as [his of M] butt rapidly rises and falls on top of [NameDesc of lesson-teacher of L][or]grinds down onto the [DickDesc of lesson-teacher of L] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] teacher with [his of M] tight butthole[or]fucks it at a good steady pace, using [his of M] arms and hands to help balance [himself of M] as [he of M] moves up and down[in random order].";
					increase ass-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise:
					say "[BigNameDesc of M] takes [NameDesc of lesson-teacher of L][']s [DickDesc of lesson-teacher of L] in [if the practical dirtiness of M > 2]both of [his of M] hands[otherwise]one hand[end if] and [one of]gives it long, slow strokes[or]short fast strokes[or]skilful twisting strokes[or]delicate strokes with two fingers, focusing on the head[or]fast tight-gripped pumps[in random order].";
					increase stimulation-level by 1;
				decrease cum-countdown by stimulation-level;
				if cum-countdown <= 0 and M is not promotable, now cum-countdown is 1;
				if cum-countdown <= 0:
					say "[speech style of lesson-teacher of L]'Ugh, that's it, it's coming, COMING!!!'[roman type][line break][BigNameDesc of lesson-teacher of L] bucks [his of lesson-teacher of L] hips as [he of lesson-teacher of L] orgasms! ";
					now victorious-student is M;
				otherwise:
					say PracticalAssessment of the lesson-teacher of L to stimulation-level with cum-countdown;
	say "[if victorious-student is the player]You have[otherwise][BigNameDesc of victorious-student] has[end if] won! ";
	say "[BigNameDesc of lesson-teacher of L] stands up and adjusts [his of lesson-teacher of L] clothes.[line break][speech style of lesson-teacher of L]'Yes, yes, well done, you nasty slut.'[roman type][line break]";
	if victorious-student is the player:
		say "[big he of lesson-teacher of L] waves a hand in your direction.";
		now armband is pink diamond;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Foxxxy";
		now the armband-print of armband is "first-class fuckdoll";
		say ClothingDesc of armband;
	otherwise:
		promote victorious-student;
	if player-filthiness > student-filthiness:
		if victorious-student is the player:
			say "[BigNameDesc of lesson-teacher of L] yawns, but it's unclear if this is because [he of lesson-teacher of L][']s bored or because [he of lesson-teacher of L] just came so hard.[line break][speech style of lesson-teacher of L]'[NameBimbo] was also the filthiest slut by far, so nobody else gets promoted today. Too bad!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of lesson-teacher of L] 'hmm's as [he of lesson-teacher of L] thinks.[line break][speech style of lesson-teacher of L]'[NameBimbo] was the filthiest slut today, so [he of the player] gets promoted too.'[roman type][line break]";
			now armband is pink diamond;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Foxxxy";
			now the armband-print of armband is "filthy facefucker";
			say ClothingDesc of armband;
	otherwise:
		if victorious-student is filthiest-student:
			say "[BigNameDesc of lesson-teacher of L] yawns, but it's unclear if this is because [he of lesson-teacher of L][']s bored or because [he of lesson-teacher of L] just came so hard.[line break][speech style of lesson-teacher of L]'[student-name of victorious-student] was also the filthiest slut by far, so nobody else gets promoted today. Too bad!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of lesson-teacher of L] [']hmm[']s as [he of lesson-teacher of L] thinks.[line break][speech style of lesson-teacher of L]'[student-name of filthiest-student] was the filthiest slut today, so [he of the filthiest-student] gets promoted too.'[roman type][line break]";
			promote filthiest-student;
	update students; [an important line which makes boring old students disappear and new cool ones appear]
	say "[BigNameDesc of lesson-teacher of L] closes [his of lesson-teacher of L] eyes and lazily stretches [his of lesson-teacher of L] arms.[line break][speech style of lesson-teacher of L]'Yep, I'm done. Class dismissed!'[roman type][line break]".





Part - Kaylee / Karl

teacher-kaylee is a diamond-teacher. teacher-kaylee is tq-only. teacher-kaylee is male.

Definition: teacher-kaylee is presenting as male if futanari fetish is 0.

The text-shortcut of teacher-kaylee is "teka".

Figure of kaylee is the file "NPCs/School/Teacher/teacher10.jpg".
Figure of karl is the file "NPCs/School/Teacher/teacher11.jpg".

To decide which figure-name is the monster-image of (M - teacher-kaylee):
	if lady fetish is 1 or futanari fetish is 1, decide on figure of kaylee;
	decide on figure of karl.

To decide which number is the girth of (M - teacher-kaylee):
	decide on 3.

To say LongDickDesc of (M - teacher-kaylee):
	say "long uncut [DickDesc of M]";

To say MonsterDesc of (M - teacher-kaylee):
	if futanari fetish is 0, say "This naked man's impossibly perfect abs and shockingly impressive muscles [if the player is female or the player is a pervert]make you weak at the knees with sexual attraction every time you see [him of M].[otherwise]could attract even the straightest man.[line break][variable custom style]Wait, did I really just think that? I'm attracted to a dude?[roman type][line break][end if]";
	otherwise say "This may be the most perfect, beautiful, youthful, healthy, and sexy woman you've ever seen. [if the player is a pervert]Since[otherwise]You struggle to marry this with the fact that since[end if] [he of M][']s fully naked, you can see that [he of M] has a [LongDickDesc of M] swinging between [his of M] legs instead of a pussy.".

The teacher-name of teacher-kaylee is "Kaylee".

To uniquely set up (M - teacher-kaylee):
	if futanari fetish is 0, now the teacher-name of M is "Karl".

To say WhoAnswer of (M - teacher-kaylee):
	say "[speech style of M]'I like to think of it as less of a [']lesson['] and more of an... initiation.'[roman type][line break]".

To say WhereAnswer of (M - teacher-kaylee):
	say "[speech style of M]'[if the rank of the player <= 1]If you haven't worked that out by now, then Azathot help you.'[otherwise]Stay loose and let it happen.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-kaylee):
	say "[speech style of M]'After you pass my initiation, you'll be allowed to join the VIPs in the school dungeon when we tort... I mean [']entertain['] the prisoner.'[roman type][line break]".

To say StoryAnswer of (M - a teacher-kaylee):
	say "[speech style of M]'If you believe the slut in the dungeon, this whole place is a pocket dimension created by a single powerful entity as a safe and fun place for submissives to let off some steam. What a load of bullshit, haha!'[roman type][line break]".

To say AdviceAnswer of (M - teacher-kaylee):
	say "[speech style of M]'Don't believe in yourself. Believe in me! Believe in the teacher who believes in you. Oh did I say [']Believe in[']? Sorry, I meant [']Fuck['].'[roman type][line break]".

To compute teaching of (M - teacher-kaylee):
	say "[speech style of M]'By the time you get to me, hopefully you'll already know everything you need.'[roman type][line break]".


To compute labour to (M - teacher-kaylee):
	compute labour to teacher-rochelle. [It's identical]

ultimate-lesson is a lesson. The lesson-teacher of ultimate-lesson is teacher-kaylee.

Definition: ultimate-lesson is appropriate if the lesson-teacher of it is alive and the player is an april 2019 top donator.

ultimate-lesson has a number called lesson-completed.
ultimate-lesson has a number called lesson-vetos.

To compute teaching of (L - ultimate-lesson):
	let M be the lesson-teacher of L;
	let LST be the list of students in the location of M;
	say "[BigNameDesc of M] guides you [if the number of entries in LST is 1]and [student-name of entry 1 of LST] [otherwise if the number of entries in LST > 1]all [end if]to kneel down and puts a blindfold over your eyes.[line break][speech style of M]'Try to think of this as less of a lesson and more of an initiation into our inner circle. All you have to do is each obey all our commands and always [bold type]submit[speech style of M] and you'll earn your golden armband. You [if the number of entries in LST > 0]each [end if]get a single time you're allowed to say no. If [if the number of entries in LST > 0]anyone refuses[otherwise]you refuse[end if] to do something more than that, then you [if the number of entries in LST > 0]ALL [end if]fail.'[roman type][line break]You hear the steps of what sounds like about [if the number of entries in LST > 1]at least ten[otherwise][4 * (the number of entries in LST + 1)][end if] [if lady fetish is 1]women[otherwise]men[end if] entering the room, chuckling sadistically and cracking their joints in preparation.";
	now the lesson-completed of ultimate-lesson is 6;
	now the lesson-vetos of ultimate-lesson is 1;
	now the stance of the player is 1;
	repeat with U running through ultimate-fetish-objects:
		now the happened of U is 0;
	let N be 0;
	repeat with U running through ultimate-lesson-actors:
		now U is in DiamondLessonBlindfolded;
		increase N by 1;
		now the text-shortcut of U is the substituted form of "man[N]";
	now the player is in DiamondLessonBlindfolded;
	refresh windows.

To compute lesson veto:
	if the lesson-vetos of ultimate-lesson > 0:
		let M be a random ultimate-lesson-actor;
		let STN be the number of students in the location of the lesson-teacher of ultimate-lesson;
		decrease the lesson-vetos of ultimate-lesson by 1;
		if the lesson-vetos of ultimate-lesson > 0, say "[BigNameDesc of M] growls.[line break][speech style of M]'Fine. But you only have [if the lesson-vetos of ultimate-lesson > 1][lesson-vetos of ultimate-lesson] vetos[otherwise]one veto left[end if].'[roman type][line break]";
		otherwise say "[BigNameDesc of M] snarls.[line break][speech style of M]'That's your last one, cunt. The next time you disobey us, you [if STN > 1]and all your little slut friends [otherwise if STN is 1]and your slut friend [end if]will have failed your initiation.";
	otherwise:
		now the lesson-completed of ultimate-lesson is -1.


An ultimate-lesson-actor is a kind of monster. An ultimate-lesson-actor is male. There are 4 ultimate-lesson-actors.
To say ShortDesc of (M - an ultimate-lesson-actor):
	say "voice".
To say MediumDesc of (M - an ultimate-lesson-actor):
	say "[if lady fetish is 1]wo[end if]manly voice".
To say FuckerDesc of (M - an ultimate-lesson-actor):
	say "the [FuckingDesc of M]".
To say BigFuckerDesc of (M - an ultimate-lesson-actor):
	say "The [FuckingDesc of M]".
To say FuckingDesc of (M - an ultimate-lesson-actor):
	let B be a random body part penetrated by M;
	say "[one of]stranger[or]anonymous [man of M][or][man of M][at random][if B is body part] [one of]in[or]fucking[or]sliding in and out of[or]plowing[or]thrusting in and out of[as decreasingly likely outcomes] your [variable B][end if]".
To say MonsterDesc of (M - an ultimate-lesson-actor):
	say "Who knows what this [man of M] looks like. You know nothing about [him of M], other than [he of M] clearly is a high ranking member of this institution. You'll probably never find out who [he of M] is.".
To compute action (N - a number) of (M - an ultimate-lesson-actor):
	do nothing.
Figure of unseen actor is the file "NPCs/School/unseen1.jpg".
To decide which figure-name is the monster-image of (M - an ultimate-lesson-actor):
	decide on figure of unseen actor.
Definition: an ultimate-lesson-actor is human: decide yes.
Definition: an ultimate-lesson-actor is able to remove cursed plugs: decide yes. [Can the monster remove all plugs & gags?]
To set up sex length of (M - an ultimate-lesson-actor) in (B - a body part):
	set up sex length (a random number between 1 and 2) of M in B.
To compute sex resist punishment of (M - an ultimate-lesson-actor):
	now the lesson-completed of ultimate-lesson is -1.
To compute angry punishment of (M - an ultimate-lesson-actor):
	compute lesson veto.
To compute SelectionFailure of (M - an ultimate-lesson-actor):
	say "You feel a [LongDickDesc of M] shoved [one of]up against your torso[or]into your hand's grip[or]against your cheek[in random order] and moved around as [NameDesc of M] waits for an available hole.".
To say AnalDefloweringFlav of (M - an ultimate-lesson-actor):
	say "Suddenly you feel a hard [manly-penis] pushing against, and into your virgin [asshole]. You reflect on how disgraceful it is that you're losing your anal virginity to a [man of M] who you don't even know what [he of M] looks like, never mind what [his of M] name is...".
To say VaginalDefloweringFlav of (M - an ultimate-lesson-actor):
	say "A single tear is caught by your blindfold as [FuckerDesc of M][']s [DickDesc of M] pierces your hymen, removing your virginity forever. Shame bubbles up inside of you as [he of M] slides deeper and deeper into your [vagina], settling heavily in your core as [he of M] bottoms out. [BigFuckerDesc of M] slowly begins to thrust.[line break][variable custom style]I'll likely never find out the name of the [man of M] who took my virginity. The shame...[roman type][line break]".
To say NormalMouthPenetrationFlav of (M - an ultimate-lesson-actor):
	say "[BigFuckerDesc of M] pinches your nose, shoving [his of M] [DickDesc of M] in your mouth as soon as you try to breathe.".
To compute facial climax of (M - an ultimate-lesson-actor):
	TimesSubmittedUp M by 1;
	BlowCount;
	if M is wrapped:
		compute wrapped climax of M in face;
	otherwise: [Internal cumshot]
		compute deepthroat creampie of M;
	if M is interested and the rounds of sex left of M <= 0:[possibly allows for another round of sex]
		satisfy M.[dislodges him automatically]
To compute sudden objectification of (M - an ultimate-lesson-actor):
	do nothing.


To compute tongue demand of (M - an ultimate-lesson-actor):
	say "[BigNameDesc of M] in front of you gives you an order.[line break][speech style of M]'Hold out your tongue.'[roman type][line break]Do you obey?";
	if the player is bimbo consenting:
		let P be a random off-stage tongue piercing;
		if piercing-fetish is 1 and P is actually summonable and a random number between 1 and 2 is 1:
			summon P cursed;
			say "You suddenly scream in pain as [he of M] uses a red hot needle to give you a tongue piercing!!!";
			PainUp 1;
			say "[big he of M] chuckles with a booming voice.[line break][speech style of M]'Surprise, bitch!'[roman type][line break]";
		otherwise if tattoo-fetish is 1 and cum dumpster lip tattoo is actually summonable and a random number between 1 and 2 is 1:
			summon cum dumpster lip tattoo;
			say "You suddenly scream in shock as somehow, a tattoo is magically applied to the inside of your lips! You can see what it looks like in your mind's eye.";
			try examining cum dumpster lip tattoo;
			say "[big he of M] chuckles with a booming voice.[line break][speech style of M]'What a perfect addition for a cum-chugging whore like you!'[roman type][line break]";
		otherwise if artificial-fetish is 1 and a random number between 1 and 2 is 1 and the lips of face < 3:
			say "[big he of M] takes this opportunity to inject the inside of each of your [LipDesc] with some kind of needle![line break][speech style of M]'Bigger cockpillows make a better cocksucker.'[roman type][line break][big he of M][']s not wrong - you can feel they've been pumped full of some kind of artificial plumper!";
			LipsUp 1;
		otherwise if watersports fetish is 1 and a random number between 1 and 3 is 1:
			say "[speech style of M]'Make sure you swallow every drop.'[roman type][line break]A hissing sound heralds a stream of hot [urine] landing directly into your open waiting mouth.";
			FacePiss from M;
		otherwise if a random number between 1 and 2 is 1:
			let ST be a random student in the location of the lesson-teacher of ultimate-lesson;
			if ST is monster and a random number between 1 and 2 is 1:
				say "You hear [NameDesc of ST] yelp as [he of ST] is dragged towards you, and then [his of ST] asshole is pushed against your tongue. [NameDesc of M] barks an order at [him of ST].[line break][speech style of M]'Go on [student-name of ST], give [NameBimbo] what [he of the player] is asking for.'[roman type][line break][BigNameDesc of ST] mutters a muted apology as [he of ST] pushes out a fresh anal creampie onto your tongue. [BigNameDesc of M] laughs with a vindictive tone and then says just one word to you.";
			otherwise:
				say "You hear a satisfied grunt, and then ropes of salty [semen] splash onto your [if bukkake fetish is 1]face and [end if]tongue.";
				if bukkake fetish is 1, CumFaceUp 3;
			say "[speech style of M]'Swallow.'[roman type][line break]Do you obey?";
			if the player is bimbo consenting:
				say "You obediently swallow the load on your tongue.";
				StomachSemenUp 2;
			otherwise:
				say "You make a disgusted sound and spit it out onto the floor.";
				compute lesson veto;
		otherwise:
			say "[big he of M] spits in your mouth.[line break][speech style of M]'Swallow.'[roman type][line break]Do you obey?";
			if the player is bimbo consenting:
				say "You obediently swallow the stranger's glob of saliva. [strongHumiliateReflect]";
			otherwise:
				say "You make a disgusted sound and spit it out onto the floor.";
				compute lesson veto;
	otherwise:
		compute lesson veto.

To compute anal creampie expel demand of (M - an ultimate-lesson-actor):
	let ST be a random student in the location of the lesson-teacher of ultimate-lesson;
	if ST is student and a random number between 1 and 2 is 1 and face is actually occupied:
		say "You hear a squeak from [NameDesc of ST] and then you feel [his of ST] lips pressed against your [asshole]. [BigNameDesc of M] that recently pulled out of your [asshole] gives you an order.[line break][speech style of M]'Feed [him of ST] my creampie.'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "You screw your eyes shut even tighter and let it rip, filling [NameDesc of ST][']s mouth with your anal load. You hear [him of M] [one of]moan submissively[or]mewl in complaint[at random] and then gulp it all down.";
			empty belly liquids;
		otherwise:
			compute lesson veto;
	otherwise:
		say "You feel something cold and hard pushed against your buttcheeks. [BigNameDesc of M] who recently pulled out of your [asshole] gives you an order.[line break][speech style of M]'Push it out now, slut.'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "You let it rip, filling whatever's behind you with your [if belly liquid types > 1]ass juices[otherwise]ass-cum[end if].";
			if face is not actually occupied:
				say "Moments later you find the vessel pressed against your lips.[line break][speech style of M]'Drink up now, you little cum-whore.'[roman type][line break]Do you obey?";
				if the player is bimbo consenting:
					say "You swallow it all down, gulp by gulp[if the semen taste addiction of the player > 14], and happily lick your [LipDesc] clean afterwards[otherwise if the semen taste addiction of the player < 8], grimacing at the taste and feel of your own ass-cum[end if].";
					StomachSemenUp (the semen volume of belly + 1) / 2;
					StomachUp (the total fluid fill of belly - the semen volume of belly) / 2;
					if the urine volume of belly > 0, UrineTasteAddictUp 1;
				otherwise:
					compute lesson veto;
			otherwise if ST is student:
				say "[speech style of M]'Drink up now, you little cum-whore.'[roman type][line break]You hear [NameDesc of ST] whimper as [he of ST] is made to gulp down your anal excretion.";
			empty belly liquids;
		otherwise:
			compute lesson veto.

To compute anal torture of (M - an ultimate-lesson-actor):
	let LST be the list of students in the location of the lesson-teacher of ultimate-lesson;
	if watersports fetish is 1 and the total squirtable fill of belly <= 30 and a random number between 1 and 5 > 3:
		say "A new [manly-penis] pushes its way into your [asshole]. ";
		now M is penetrating asshole;
		ruin asshole;
		say "[one of]You expect it to begin fucking you, but instead[or]Once again instead of a thrusting motion[stopping] you feel your belly begin to fill from the inside. [big he of M][']s using your asshole as [his of M] urinal! By the time [he of M] finishes and pulls out, you are feeling very full of [urine].";
		AssFill 12 with urine;
		dislodge M;
	otherwise if the number of entries in LST > 1 and face is not actually occupied:
		sort LST in random order;
		let ST1 be entry 1 of LST;
		let ST2 be entry 2 of LST;
		say "[speech style of M]'Human centipede time, bitches!'[roman type][line break]You squeak with surprise as [NameDesc of ST1][']s asshole is pressed against your [LipDesc], while at the same time you hear [NameDesc of ST2] mewl with hesitation as [his of ST2] mouth gets forced against your [asshole]. [if the number of entries in LST > 3]The others make similar noises as you are all arranged in a line, mouth-to-asshole.[otherwise if the number of entries in LST is 3][BigNameDesc of entry 3 of LST] makes a similar noise as [he of entry 3 of LST] is faceplanted between [NameDesc of ST2][']s buttcheeks.[end if][line break][speech style of M]'Well don't just sit there, start licking!'[roman type][line break]You shiver with arousal as [NameDesc of ST2] begins to probe your [asshole] with [his of ST2] tongue. Do you do the same?";
		if the player is bimbo consenting:
			say "You push your tongue as deep into [NameDesc of ST1][']s chute as you dare, and the strong tangy flavours of [semen][if the urine volume of belly > 0], [urine][end if] and ass begin to make you feel a bit lightheaded. [severeHumiliateReflect]";
			if the semen volume of belly + the urine volume of belly > 0:
				say "Then, all of a sudden, you and the other students all begin squeaking in panic at the same time. Your tormentors have begun to tickle each of you at the ribs, and push on your bellies! There's nothing you can do in time to stop what happens next - each of you explodes, filling the mouth of the [boy of ST2] behind you with [semen][if the urine volume of belly > 0] and [urine][end if]. The room fills with the sound of squirting, swallowing and gagging.";
				StomachSemenUp (the semen volume of belly + 1) / 2;
				StomachUp (the total fluid fill of belly - the semen volume of belly) / 2;
				if the urine volume of belly > 0, UrineTasteAddictUp 1;
				empty belly liquids;
			otherwise:
				say "The entire experience is deeply [unless the player is a nympho]shameful but there's no escaping that the feeling of having your asshole tongued so fervently is rather [end if]arousing.";
				arouse 1000;
		otherwise:
			say "You keep your tongue in your mouth, hoping they won't notice.";
			compute lesson veto;
	otherwise:
		say "You hear what sounds like some kind of power drill spinning up behind you![line break][speech style of M]'Spread your asshole wide, slut!'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "Your cheeks go red as you spread your own [asshole] for the [one of]unknown device. In the end it's just as bad as you expect[or]drilldo[stopping]. A massive spinning dong is mercilessly forced into your [asshole], where it continues spinning, overwhelming your senses and threatening to break your mind.";
			now flesh-johnson is penetrating asshole;
			now the size of flesh-johnson is the openness of asshole + 2;
			if the size of flesh-johnson > 10, now the size of flesh-johnson is 10;
			ruin asshole times 2;
			dislodge flesh-johnson;
			if delayed fainting is 0, say "By the time the stranger removes the drilldo, you are panting like a dog and can hardly think.";
		otherwise:
			say "You don't like the sound of that noise! Your hands go to your [asshole], protecting it out of fear.";
			compute lesson veto.


An ultimate-fetish-object is a kind of object. An ultimate-fetish-object has a number called happened.
Definition: an ultimate-fetish-object is eligible if the happened of it is 0.

ultimate-fetish-fertility is an ultimate-fetish-object.
Definition: ultimate-fetish-fertility is eligible if the happened of it is 0 and the player is female and the pregnancy of the player is 0 and pregnancy fetish > 0 and the number of worn chastity cage is 0 and face is not actually occupied.
To execute (U - ultimate-fetish-fertility) for (M - a monster):
	increase the happened of U by 1;
	say "[BigNameDesc of M] whispers in your ear.[line break][speech style of M]'Open wide, slut. We're going to give you a little something that's going to make you hyper-fertile for the next few minutes. There's no way you're leaving this room without a new bun in your belly.'[roman type][line break]Do you open your mouth?";
	if the player is consenting:
		say "As soon as you open your [LipDesc] you feel two fingers pushing some sort of pill into your mouth. You swallow it obediently. Within seconds you can feel a deep throbbing coming from your womb. There's no doubt about it, you're currently hyper-fertile. You can almost feel your ovaries screaming out for as much baby batter as possible.";
		now forcedFertility is true;
	otherwise:
		say "You [unless there is a worn ringagged clothing]keep your mouth closed and [end if]shake your head.[line break][variable custom style]That's not happening![roman type][line break]";
		compute lesson veto.

ultimate-fetish-milking is an ultimate-fetish-object.
Definition: ultimate-fetish-milking is eligible if the milk volume of breasts > 2 and face is not actually occupied.
To execute (U - ultimate-fetish-milking) for (M - a monster):
	increase the happened of U by 1;
	say "Someone grabs hold of your [MediumDesc of breasts] and begins pumping the [milk] out of them. You can hear it being collected into what sounds like a large metal bucket.[line break][speech style of M]'What sound does a cow make, bitch?'[roman type][line break]Do you moo like a cow?";
	if the player is bimbo consenting:
		say "[variable custom style]'Mooooo!'[roman type][line break]Your face goes red with shame as you make your best impression of a cow. ";
		strongHumiliate;
		say "Soon your udders are empty of [milk]. You hear some liquid being poured and then ";
		let ST be a random student in the location of the lesson-teacher of ultimate-lesson;
		if ST is student and a random number between 1 and 2 is 1:
			say "[NameDesc of ST] whimpering and gulping as [he of ST] is made to drink your fresh warm breast milk.";
		otherwise:
			say "a cup brought to your [LipDesc].[line break][speech style of M]'Come on Bessie, drink up. It's nice and fresh, and good for your health.'[roman type][line break]Do you drink your own breast milk?";
			if the player is consenting:
				strongHumiliate;
				say "Your face turns even redder as you allow the unknown [man of M] to feed you your own breast milk.";
				StomachUp 2;
				progress quest of milk-drinking-quest;
			otherwise:
				say "You [unless there is a worn ringagged clothing]clamp your mouth shut and [end if]shake your head.[line break][variable custom style]That's just too weird![roman type][line break]";
				compute lesson veto;
	otherwise:
		say "You [unless there is a worn ringagged clothing]keep your mouth closed and [end if]shake your head.[line break][variable custom style]I'm not a cow![roman type][line break]";
		compute lesson veto;
	MilkDown the milk volume of breasts.




A time based rule (this is the ultimate diamond lesson rule):
	if the player is in DiamondLessonBlindfolded:
		if lesson-completed of ultimate-lesson > 0:
			let LST be the list of students in the location of the lesson-teacher of ultimate-lesson;
			decrease the lesson-completed of ultimate-lesson by 1;
			let E be a random eligible ultimate-fetish-object;
			repeat with M running through ultimate-lesson-actors:
				if delayed fainting is 0 and the lesson-completed of ultimate-lesson >= 0:
					if M is penetrating a body part or a random number between 1 and 6 < the lesson-completed of ultimate-lesson: [Earlier turns are more likely to just be sex]
						compute attack of M;
					otherwise if E is ultimate-fetish-object and a random number between 1 and 8 is 1:
						execute E for M;
						now E is a random eligible ultimate-fetish-object;
					otherwise if face is not actually occupied and a random number between 1 and 10 > 7:
						compute tongue demand of M;
					otherwise if asshole is not actually occupied and a random number between 1 and 4 > 1:
						if the semen volume of belly > 0 and (a random number between 1 and 3 is 1 or the number of entries in LST < 2): [If there are enough students, the human centipede is more fun]
							compute anal creampie expel demand of M;
						otherwise:
							compute anal torture of M;
					otherwise:
						compute attack of M;
		if the lesson-completed of ultimate-lesson <= 0:
			compute conclusion of ultimate-lesson;
		otherwise if the remainder after dividing the lesson-completed of ultimate-lesson by 2 is 1:
			say "[one of]Surviving[or]Enduring[purely at random] [one of][or]another round of [stopping]this [one of]crazy[or]mega[or]giant[as decreasingly likely outcomes] [one of]gangbang[or]orgy[at random] has left you feeling stronger!";
			StrengthUp 1.

To compute conclusion of (L - ultimate-lesson):
	repeat with A running through ultimate-lesson-actors:
		dislodge A;
		remove A from play;
	let M be the lesson-teacher of L;
	now the location of M is discovered;
	repeat with T running through monsters in DiamondLessonBlindfolded:
		unless T is M, now T is in School01;
	repeat with T running through things in DiamondLessonBlindfolded:
		unless T is backdrop, now T is in the location of M;
	let LST be the list of students in the location of M;
	if lesson-completed of ultimate-lesson < 0:
		say "[speech style of M]'Disappointing.'[roman type][line break][BigNameDesc of M] claps [his of M] hands and the strangers all get up and begin to leave, muttering insults at you as they go. Then, your blindfold[if the number of entries in LST > 0]s are[otherwise] is[end if] ripped off.[line break][speech style of M]'[if the number of entries in LST > 0]Despite your best efforts, thanks to [NameBimbo], you all fail. I imagine you might have lost at least one friend today[otherwise]The other teachers thought you were ready. Clearly they were mistaken. I think you would do well to increase your tolerances before you return here[end if], [NameBimbo].'[roman type][line break]After one final look of derision, [NameDesc of M] leaves the room.";
		repeat with ST running through LST:
			FavourDown ST by 5;
	otherwise:
		say "[speech style of M]'That's enough!'[roman type][line break][BigNameDesc of M] claps [his of M] hands and the strangers all get up and begin to leave, whispering lewd insults at you as they go. Then, your blindfold[if the number of entries in LST > 0]s are[otherwise] is[end if] finally removed.";
		if the number of entries in LST > 0:
			say "Congratulations, sluts, you did it. You've become the epitome of modern fuckpuppets. I couldn't be prouder. Now, come kiss my cock and claim your reward.";
			repeat with ST running through LST:
				say "[BigNameDesc of ST] crawls over and [one of]respectfully[or]sloppily[or]happily[in random order] kisses [NameDesc of M][']s [manly-penis].";
				promote ST;
				if the current-rank of ST is 6, now the student-print of ST is "golden gangbang goddess";
		otherwise:
			say "Congratulations, [NameBimbo], you did it. You've become the epitome of a modern fuckpuppet. I couldn't be prouder. Now, come kiss my cock and claim your reward.";
		say "You cross the room and kneel at [NameDesc of M][']s feet, looking up at [his of M] gentle smile.[line break][speech style of M]'Go ahead.'[roman type][line break]You plant your lips on [his of M] cockhead[if the player is feeling dominant], but without breaking eye contact with [him of M] at any time[otherwise] with eyes submissively lowered[end if].";
		now armband is solid gold;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		now the armband-print of armband is "golden gangbang goddess";
		say ClothingDesc of armband;
		if ex-princess is caged:
			say "[BigNameDesc of M] continues to speak.[line break][speech style of M]'Now that you've proven your loyalty to our cause, I've got something special to show you. Come with me!'[roman type][line break][BigNameDesc of M] leads you down to the other end of the school.";
			repeat with N running through monsters in the location of the player:
				now N is in the location of ex-princess;
			now the location of ex-princess is discovered;
			now School33 is discovered;
			teleport to the location of ex-princess;
			now the stance of the player is 0;
			say MonsterDesc of ex-princess;
			say "[BigNameDesc of M] leans against the cell's metal bars.[speech style of M]'This is the [ShortDesc of headmistress][']s favourite toy. And now that you're [if there is a student in the location of the player]all gold-star students[otherwise]a gold-star student[end if], [he of headmistress] has given you permission to play with [him of ex-princess] too. Just try not to break [him of ex-princess].'[roman type][line break]And with that, [NameDesc of M] leaves you behind.";
			compute mandatory room leaving of M.




Part - Minnie

student-minnie is a tq-only amicable student.

The text-shortcut of student-minnie is "stmn".

Figure of minnie is the file "NPCs/School/Student/student23.png".

To decide which figure-name is the monster-image of (M - student-minnie):
	decide on figure of minnie.

To say MonsterDesc of (M - student-minnie):
	say "This tall leggy blonde is wearing, well, [he of M] might as well be wearing nothing at all! [big his of M] nipples are covered by tiny purple sequins pasties shaped like hearts and similar red hearts [if the current-rank of M is 3]barely cover [his of M] pussy[otherwise]don't even cover [his of M] pussy properly, obscuring her clit but leaving her labia fully visible[end if]. [big he of M] has sexy 3 inch red stiletto heels, a pierced belly, and a big friendly smile on [his of M] face. [big he of M] looks extremely comfortable with [his of M] striking appearance - from [his of M] posture and gait [if the current-rank of M is 3]you're almost concerned [he of M] has completely forgotten what [he of M][']s wearing[otherwise]it's very clear that [he of M] absolutely loves looking like this[end if]!".

The min-rank of student-minnie is 3.
The current-rank of student-minnie is 3.
The max-rank of student-minnie is 4.

To update name of (M - student-minnie):
	if the current-rank of M is 3:
		now the student-name of M is "Minnie";
	otherwise:
		now the student-name of M is "Mimi";
	now the student-print of M is "minimalist".

To say StoryAnswer of (M - student-minnie):
	say "[speech style of M]'Isn't it great here? You can be your true self without being weighed down by the rules of [']normal decent society[']. Once I found out they were not only happy with how I want to dress but also wanted to help me become even braver, I knew I wanted to stay here forever!'[roman type][line break]".

To say EscapeAnswer of (M - student-minnie):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's some cool tables and bowls that look like smart people could use them to turn stuff into other stuff! Does that make any sense?'[otherwise]A little birdie told me that what's further inside the school really helps you keep your head screwed on, but I don't really know what that means, to be honest.'[end if][roman type][line break]".

To say AdviceAnswer of (M - student-minnie):
	say "[speech style of M]'Embrace your inner exhibitionist and enjoy yourself!'[roman type][line break]".

To compute teaching of (M - student-minnie):
	say "[speech style of M]'Feeling comfortable in your own skin isn't something you need to be taught, it's just that you need to *unlearn* the idea that people should wear clothes!'[roman type][line break]".




School Stuff ends here.
