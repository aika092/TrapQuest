School Stuff by TQ Only Stuff begins here.

teacher-hannah is a ruby-teacher.
The lesson-teacher of pledge-lesson is headmistress.

To set up gym lesson of (M - a monster):
	say "[speech style of M]'[one of]Today's lesson takes place on the racetrack[or]You know what time it is[stopping]. Follow me to the gym, little ones!'[roman type][line break]";
	allocate 35 seconds;
	repeat with N running through monsters in the location of the player:
		if N is student or N is M, now N is in School23;
	now the player is in School23.

Part - Kissing Lesson

kissing-lesson is a lesson. The lesson-teacher of kissing-lesson is teacher-angela. kissing-lesson has a number called lesson-variant.
[A game universe initialisation rule:
	now the lesson-variant of kissing-lesson is a random number between 0 and 1.]

Definition: kissing-lesson is lesson-appropriate:
	if face is not actually occupied, decide yes;
	decide no.

To compute teaching of (L - kissing-lesson):
	allocate 40 seconds;
	now bigGameLoop is 3; [tells the game not to refresh any windows]
	let M be the lesson-teacher of L;
	say "[speech style of M]'Oral skillz 10[lesson-variant of L + 1].'[roman type][line break][BigNameDesc of M] holds [his of M] hands behind [his of M] back as [he of M] addresses you all.[line break][speech style of M]'[one of]Your teeth, your lips, your tongue... all are incredibly important toolz at your dizpozal[or]It zeemz zat you all ztill require more vork in zis department[stopping].'[roman type][line break]";
	now the arousal of the player is minimum arousal;
	now the delayed arousal of the player is 0;
	check for arousal change;
	if the number of students in the location of M > 2 and the lesson-variant of L is 1:
		[now the lesson-variant of L is 0;]
		compute group kissing lesson of M;
	otherwise:
		compute french kissing lesson of M;
		if the player is the donator, now the lesson-variant of L is 1;
	now bigGameLoop is 0;
	conclude consenting;
	set up rank one students. [lots of students can get promoted in this lesson and it would be good to introduce some new sapphire ones afterwards to make sure we aren't running out]

To compute group kissing lesson of (M - a staff member):
	say "[big he of M] licks [his of M] lips.[line break][speech style of M]'Ve vill play a little game wiz zis candy.'[roman type][line break][BigNameDesc of M] holds up a relatively large purple spherical candy. It looks like it's the type that melts very slowly in your mouth.[line break][speech style of M]'You vill each take turnz choozing someone to kizz. If ze perzon you kizz has ze candy, zey are allowed to pazz it into your mouth. Ze candy iz lazed with a ztrong aphrodeziac - not long after you tazte it, it vill make you feel very fuzzy inzide. Ze longer you zucked on it, ze more powerful ze effect. When ze candy is all melted, whoever haz managed to control zeir urges and not do anyzing inappropriate to zemselvez, vill get promoted.'[roman type][line break]Gosh, that was all a little bit confusing to listen to, but you believe you've understood the gist of it:[paragraph break]* You will be taking turns choosing someone to kiss.[line break]* If that person has the candy in their mouth, they can pass it to you.[line break]* Having the candy in your mouth makes you horny, but with a slight delay.[line break]* The game ends when the candy melts. Anyone who doesn't orgasm, gets promoted.[paragraph break][speech style of M]'And now... Let uz begin!'[roman type][line break][BigNameDesc of M] closes [his of M] hand around the candy and then opens it again. The candy has disappeared.[line break][speech style of M]'The candy iz now in one of your mouthz. I vill not say who.'[roman type][line break]";
	now refractoryperiod is 0;
	let currentCandy be a random person in the location of the player;
	if currentCandy is M, now currentCandy is the player;
	if currentCandy is the player, say "You feel the hard, slightly slimy sphere appear in your own mouth. [bold type]The candy has started with you![roman type][line break]";
	let arousalList be a list of people; [delayed arousal]
	add currentCandy to arousalList;
	add M to arousalList;
	add M to arousalList;
	let candySucks be 5 * the number of people in the location of the player;
	repeat with ST running through students in the location of the player:
		now the lessonInt1 of ST is 0; [arousal]
	let LSK be the list of students in the location of the player;
	let LST be the list of students in the location of the player;
	add yourself to LST;
	let LSP be the list of students in the location of the player; [people to be promoted]
	add yourself to LSP;
	sort LST in random order;
	while entry 1 in LST is currentCandy:
		sort LST in random order;
	say "[speech style of M]'You vill take turnz in ze following order: ";
	let STE be the number of entries in LST;
	let STE2 be STE;
	repeat with ST running through LST:
		decrease STE2 by 1;
		if ST is student, say "[student-name of ST][run paragraph on]";
		otherwise say "[NameBimbo][run paragraph on]";
		say "[if STE2 > 1], [otherwise if STE2 is 1] and finally [otherwise], and then back to ze ztart. Now go!'[roman type][line break][end if]";
	let STX be 1;
	while candySucks > 0:
		let CC be currentCandy;
		let ST be entry STX in LST;
		let KT be ST; [kiss target placeholder]
		if ST is yourself:
			say "It's your turn to choose someone to kiss.";
			reset multiple choice questions;
			repeat with SK running through LSK:
				set next numerical response to "[SK]";
			compute multiple choice question;
			now KT is entry player-numerical-response in LSK;
			say "You [one of]approach[or]walk over to[in random order] [student-name of KT] and pull [him of KT] into a deep kiss. ";
		otherwise:
			while KT is ST:
				let R be a random number between 1 and STE;
				now KT is entry R in LST;
			say "[BigNameDesc of ST] [one of]chooses[or]advances on[or]steps over to[or]approaches[or]kisses[or]snogs[in random order] [YouDesc of KT]. ";
		let STArousal be 0;
		if ST is a student, now STArousal is the lessonInt1 of ST;
		otherwise now STArousal is the arousal of the player;
		let KTArousal be 0;
		if KT is a student, now KTArousal is the lessonInt1 of KT;
		otherwise now KTArousal is the arousal of the player;
		let mostAroused be ST;
		let mostArousal be STArousal;
		let leastAroused be ST;
		let leastArousal be STArousal;
		if STArousal >= KTArousal:
			now leastAroused is KT;
			now leastArousal is KTArousal;
		otherwise:
			now mostAroused is KT;
			now mostArousal is KTArousal;
		if mostAroused is a student, increase mostArousal by the dedication of mostAroused * 400;
		otherwise increase mostArousal by the sex addiction of the player * 400;
		if leastAroused is a student, increase leastArousal by the dedication of leastAroused * 400;
		otherwise increase leastArousal by the sex addiction of the player * 400;
		if mostArousal < 1000:
			if mostAroused is a student:
				say "[student-name of mostAroused] [one of]stands back and leans foward[or]keeps [his of mostAroused] body away[or]looks a bit stiff[or]looks a little awkward[or]seems a little uncertain[or]keeps [his of mostAroused] hands by [his of mostAroused] side[in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a student][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
				if leastAroused is a student, say "and [student-name of leastAroused] [one of]looks just as uncomfortable[or]looks just as unsure[or]doesn't look particularly enthusiastic either[or]is similarly visibly hesitant[in random order].";
			otherwise:
				say "[student-name of leastAroused] [one of]stays as stiff as a rock[or]is clearly not too comfortable[or]doesn't open [his of leastAroused] lips any more than [he of leastAroused] has to[in random order].";
		otherwise if mostArousal < 3000:
			if mostAroused is a student:
				say "[student-name of mostAroused] [one of]tries to maintain eye contact[or]touches [if leastAroused is a student][student-name of leastAroused]'s[otherwise]your[end if] arms[or]bites [his of mostAroused] lip[or]flutters [his of mostAroused] eyelashes[in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a student][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
				if leastArousal < 1000:
					if leastAroused is a student, say "while [student-name of leastAroused] [one of]just looks uncomfortable[or]squirms with discomfort[or]stands there awkwardly[in random order].";
					otherwise say "but you feel too self-conscious to reciprocate.";
				otherwise:
					if leastAroused is a student, say "and [student-name of leastAroused] [one of]seems intrigued[or]doesn't seem to mind[or]appears to be comfortable with it[in random order].";
					otherwise say "and you [one of]discover that you're finding the kiss somewhat pleasant yourself[or]find yourself enjoying it[stopping].";
			otherwise:
				say "You kiss [him of leastAroused] somewhat eagerly and aggressively, ";
				if leastArousal < 1000, say "but [he of leastAroused] doesn't [one of]reciprocate[or]respond with the same energy[in random order].";
				otherwise say "and [he of leastAroused] responds in turn, kissing back you just as enthusiastically.";
		otherwise if mostArousal < 5000:
			if mostAroused is a student:
				say "[student-name of mostAroused] [one of]energetically explores [if leastAroused is a student][student-name of leastAroused]'s[otherwise]your[end if] mouth with [his of mostAroused] tongue[or]embraces [if leastAroused is a student][student-name of leastAroused][otherwise]you[end if][or]holds [if leastAroused is a student][student-name of leastAroused]'s[otherwise]your[end if] cheeks with [his of mostAroused] hands[or]lets out a little moan[in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a student][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
				if leastArousal < 1000:
					if leastAroused is a student, say "and [student-name of leastAroused] [one of]is visibly uncomfortable[or]clenches [his of leastAroused] fists with shame[in random order].";
					otherwise say "which feels way too intimate for you.";
				otherwise if leastArousal < 3000:
					if leastAroused is a student, say "but [student-name of leastAroused] [one of]seems a bit more hesitant[or]can't bring [himself of leastAroused] to fully reciprocate[in random order].";
					otherwise say "which leaves you feel nervous but also gets your blood pumping.";
				otherwise:
					if leastAroused is a student, say "and [student-name of leastAroused] [one of]happily rubs [his of leastAroused] hands on top of [hers of mostAroused][or]responds by placing [his of leastAroused] hands on [student-name of mostAroused]'s hips[in random order].";
					otherwise say "and you happily massage [his of mostAroused] tongue with yours.";
			otherwise:
				say "You place your hands on [his of leastAroused] hips as you explore [his of leastAroused] lips, ";
				if leastArousal < 1000:
					say "but you can feel [him of leastAroused] [one of]tensing up[or]gently pulling away[in random order].";
				otherwise if leastArousal < 3000:
					say "but [he of leastAroused] doesn't [one of]reciprocate[or]respond with the same energy[in random order].";
				otherwise:
					say "and [he of leastAroused] responds in turn, kissing back you just as enthusiastically.";
		otherwise if mostArousal < 8000:
			if mostAroused is a student:
				say "[student-name of mostAroused] [one of]explores [if leastAroused is a student][student-name of leastAroused]'s[otherwise]your[end if] body with [his of mostAroused] hands[or]runs [his of mostAroused] hands up and down [if leastAroused is a student][student-name of leastAroused]'s[otherwise]your[end if] sides[or]pulls [if leastAroused is a student][student-name of leastAroused] in close with one hand on [his of leastAroused] back and one behind [his of leastAroused] head[otherwise]you in close with one hand on your back and one behind your head[end if][in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a student][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
			otherwise:
				say "You enthusiastically search for [his of leastAroused] tongue with your own, while rubbing your hands up and down [his of leastAroused] sides, ";
			if leastArousal < 1000:
				if leastAroused is a student, say "while [student-name of leastAroused] [one of]tries weakly to pull away[or]squeaks with indignation[in random order].";
				otherwise say "which makes you squeak with discomfort.";
			otherwise if leastArousal < 3000:
				if leastAroused is a student, say "but [student-name of leastAroused] [one of]looks a bit uncomfortable[or]just sort of stands there awkwardly[in random order].";
				otherwise say "which makes you squirm with uncertainty.";
			otherwise if leastArousal < 5000:
				if leastAroused is a student, say "and [student-name of leastAroused] [one of]lets it happen[or]makes no move to resist[in random order].";
				otherwise say "which makes you feel funny.";
			otherwise:
				if leastAroused is a student, say "and [student-name of leastAroused] [one of]happily responds in kind[or]does the same back[in random order].";
				otherwise say "and you eagerly do the same back.";
				if mostAroused is the player, passively stimulate belly from leastAroused;
				otherwise increase the lessonInt1 of mostAroused by 150;
			if leastAroused is the player, passively stimulate belly from mostAroused;
			otherwise increase the lessonInt1 of leastAroused by 150;
		otherwise if mostArousal < 10000:
			if mostAroused is a student:
				say "[student-name of mostAroused] [one of]grabs [if leastAroused is a student][student-name of leastAroused]'s[otherwise]your[end if] butt with both hands[or]puts one hand on [if leastAroused is a student][student-name of leastAroused]'s[otherwise]your[end if] chest and the other on [if leastAroused is a student][his of leastAroused][otherwise]your[end if] butt[or]molests [if leastAroused is a student][student-name of leastAroused]'s[otherwise]your[end if] chest with both hands[in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a student][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
			otherwise:
				say "You knead [his of leastAroused] [one of]breasts[or]buttocks[in random order] with your hands, ";
			if leastArousal < 1000:
				if leastAroused is a student, say "causing [student-name of leastAroused] to [one of]grunt in dismay[or]squeal with indignation[in random order].";
				otherwise say "turning you on against your will.";
				if mostAroused is the player, HappinessDown leastAroused;
			otherwise if leastArousal < 3000:
				if leastAroused is a student, say "while [student-name of leastAroused] [one of]just looks a bit annoyed at [if mostAroused is a student][student-name of mostAroused]'s[otherwise]your[end if] forwardness[or]mewls with irritation[in random order].";
				otherwise say "which makes you feel awkward and perturbed.";
			otherwise if leastArousal < 5000:
				if leastAroused is a student, say "while [student-name of leastAroused] [one of]places [his of leastAroused] hands on [if mostAroused is a student][student-name of mostAroused]'s[otherwise]your[end if] hips[or]opts for the somewhat milder approach of holding [student-name of mostAroused] at the waist[or]gently hugs [if mostAroused is a student][him of mostAroused][otherwise]you[end if] back[in random order].";
				otherwise say "while you gingerly embrace [him of mostAroused] back.";
			otherwise if leastArousal < 8000:
				if leastAroused is a student, say "while [student-name of leastAroused] [one of]runs [his of leastAroused] hands up and down [if mostAroused is a student][student-name of mostAroused]'s[otherwise]your[end if] sides[or]holds [if mostAroused is a student][student-name of mostAroused][otherwise]you[end if] close and moans happily into [his of mostAroused] mouth[in random order].";
				otherwise say "and you find yourself melting under [his of mostAroused] touch.";
			otherwise:
				if leastAroused is a student, say "and [student-name of leastAroused] [one of]grasps [if mostAroused is a student][him of mostAroused][otherwise]you[end if] in the same places[or]does the same back[in random order], creating a rather erotic view.";
				otherwise say "and you enthusiastically grab the same parts of [his of mostAroused] body.";
				if mostAroused is the player, passively stimulate hips from leastAroused;
				otherwise increase the lessonInt1 of mostAroused by 400;
			if leastAroused is the player, passively stimulate hips from mostAroused;
			otherwise increase the lessonInt1 of leastAroused by 400;
		otherwise:
			if mostAroused is a student:
				say "[student-name of mostAroused] [one of]grabs [if leastAroused is a student][student-name of leastAroused]'s butt with both hands, tucks one leg around [student-name of leastAroused][']s, and grinds [his of mostAroused] body up against [hers of leastAroused][otherwise]your butt with both hands, tucks one leg around yours, and grinds [his of mostAroused] body up against yours[end if][or]pulls [if leastAroused is a student][student-name of leastAroused] as close as [he of mostAroused] can and grinds [his of mostAroused] genitals up against [hers of leastAroused][otherwise]you as close as [he of mostAroused] can and grinds [his of mostAroused] genitals up against yours[end if][in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a student][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
			otherwise:
				say "You explore [his of leastAroused] [one of]breasts[or]buttocks[or]tits and ass[in random order] with your hands and grind your crotch on [hers of leastAroused], ";
				increase the lessonInt1 of leastAroused by 1000;
			if leastArousal < 1000:
				if leastAroused is a student, say "causing [student-name of leastAroused] to [one of]frantically push away from [if mostAroused is a student][him of leastAroused][otherwise]you[end if][or]to snarl angrily[in random order].";
				otherwise say "causing you to push away on instinct, but not before [he of mostAroused]'s already made you feel a bit funny inside.";
				if mostAroused is the player, HappinessDown leastAroused;
			otherwise if leastArousal < 3000:
				if leastAroused is a student, say "but [student-name of leastAroused] [one of]makes a frustrated noise[or]squeals with panic[in random order].";
				otherwise say "making you shiver with discomfort, but also arousal.";
				if mostAroused is the player, HappinessDown leastAroused;
			otherwise if leastArousal < 5000:
				if leastAroused is a student, say "leaving [student-name of leastAroused] [one of]stunned and unsure how to respond[or]unsure what to do with [his of leastAroused] hands[or]moaning involuntarily[in random order].";
				otherwise say "making you feel all tingly inside.";
			otherwise if leastArousal < 8000:
				if leastAroused is a student, say "while [student-name of leastAroused] [one of]stands there, shuddering with pleasure[or]moans lewdly into [his of mostAroused] mouth[in random order].";
				otherwise say "and you find yourself shaking with pleasure.";
			otherwise if leastArousal < 10000:
				if leastAroused is a student, say "while [student-name of leastAroused] [one of]holds onto [if mostAroused is student][student-name of mostAroused]'s[otherwise]your[end if] buttocks and moans with pleasure[or]feels up [if mostAroused is student][student-name of mostAroused]'s[otherwise]your[end if] chest and mewls with delight[in random order].";
				otherwise say "and you find yourself moaning with delight as you feel up [his of mostAroused] [one of]breasts[or]buttocks[or]tits and ass[in random order].";
				if mostAroused is the player, passively stimulate hips from leastAroused;
			otherwise:
				if leastAroused is a student, say "and [student-name of leastAroused] [one of]pushes back just as hard, equally eager to bump and grind [if mostAroused is student]their[otherwise]your[end if] sex organs together[or]responds with extremely sexual noises, pushing [his of leastAroused] own genitals forward as much as [he of leastAroused] can[in random order].";
				otherwise say "and you rub back just as hard. It feels incredible!";
				if mostAroused is the player, stimulate vagina from leastAroused;
				otherwise increase the lessonInt1 of mostAroused by 1000;
			if leastAroused is the player, stimulate vagina from mostAroused;
			if mostAroused is the player, stimulate vagina from leastAroused;
			if leastAroused is a student, increase the lessonInt1 of leastAroused by 1000;
			if mostAroused is a student, increase the lessonInt1 of mostAroused by 1000;
		repeat with STM running through LST:
			if STM is not ST and STM is not KT:
				if STM is student and the lessonInt1 of STM > a random number between 10000 and 20000:
					say "[BigNameDesc of STM] can't help but [one of]touch [himself of STM][or]masturbate[or]finger [himself of STM][or]play with [himself of STM][in random order]";
					increase the lessonInt1 of STM by a random number between 750 and 1500;
					if the lessonInt1 of STM > a random number between 12000 and 15000:
						say "! [big he of STM] [one of]orgasms[or]cums[or]climaxes[in random order] hard, [one of]turning red after [he of STM] realises what [he of STM]'s done in front of everyone else[or]squeaking with shame after [he of STM] has come down from [his of STM] electric high[in random order].";
						if STM is listed in LSP, remove STM from LSP;
						now the lessonInt1 of STM is 0;
					otherwise:
						say "!";
				otherwise if STM is the player and the arousal of the player >= maximum arousal:
					say "You can't help but reach down and [one of]masturbate[or]play with[or]rub[in random order] yourself through your clothes!";
					if the player is able to orgasm and a random number between 1 and 2 is 1, vaginally orgasm shamefully;
		if refractoryperiod > 0:
			if the player is listed in LSP, remove the player from LSP;
			now refractoryperiod is 0;
		let candyReceiver be M;
		if KT is currentCandy:
			now candyReceiver is ST;
		otherwise if ST is currentCandy:
			now candyReceiver is KT;
		if currentCandy is the player and candyReceiver is not M:
			reset multiple choice questions;
			set numerical response 1 to "Push the candy into [student-name of candyReceiver][']s mouth.";
			set numerical response 2 to "Keep the candy in your mouth.";
			compute multiple choice question;
			if player-numerical-response is 1:
				say "As you lock lips with [student-name of candyReceiver], you push the candy in. [one of][big he of candyReceiver] lets out a tiny squeak of surprise[or][big his of candyReceiver] grip on you strengthens slightly, but [he of candyReceiver] doesn't say anything[or]subtly shudders as [he of candyReceiver] is forced to accept it into [his of candyReceiver] mouth[in random order]. [bold type][student-name of candyReceiver] now has the candy.[roman type][line break]";
				if the lessonInt1 of candyReceiver < 1500, HappinessDown candyReceiver;
			otherwise:
				now candyReceiver is M;
		otherwise if candyReceiver is the player:
			say "After you lock lips, you feel [student-name of currentCandy] pushing the candy into your mouth. Uh-oh. [bold type]You now have the candy in your mouth. [roman type]It feels [if candySucks > 4 * the number of students in the location of the player]about as big as it was at the start[otherwise if candySucks > 3 * the number of students in the location of the player]about two thirds as big as it was at the start[otherwise if candySucks > 2 * the number of students in the location of the player]about half as big as it was at the start[otherwise if candySucks > the number of students in the location of the player]about a third as big as it was at the start[otherwise]like it's almost all gone[end if].";
			TasteGrossOut 3;
		otherwise if candyReceiver is not M:
			let STXX be STX;
			if STXX is STE, now STXX is 1;
			otherwise increase STXX by 1;
			let STXR be a random number between 1 and 4;
			if STXR is 4 or (currentCandy is entry STXX in LST and STXR is 3), now candyReceiver is M; [student decided not to pass on the candy]
		if candyReceiver is not M, now currentCandy is candyReceiver;
		let ALE be the number of entries in arousalList;
		let AST be entry ALE in arousalList;
		let candyArousal be a random number between 750 and 1500;
		if AST is student:
			increase the lessonInt1 of AST by candyArousal;
		otherwise if AST is the player:
			say "[bold type]Some [one of][or]more [stopping]of the candy's aphrodesiac enters your blood stream from your stomach![roman type][line break]";
			arouse candyArousal;
			if the arousal of the player + the delayed arousal of the player < aroused-limit, now the delayed arousal of the player is aroused-limit - the arousal of the player; [after tasting the candy, the player always becomes aroused]
			check for arousal change;
		add currentCandy at entry 1 in arousalList;
		truncate arousalList to ALE entries;
		if STX is STE, now STX is 1;
		otherwise increase STX by 1;
		decrease candySucks by 1;
		if candySucks <= 0, say "[if currentCandy is a student][BigNameDesc of currentCandy] speaks up.[line break][speech style of currentCandy]'Um, the candy just finished dissolving in my mouth.'[otherwise]The candy finishes dissolving in your mouth.[line break][variable custom style]'Um, guys, the candy's gone.'[end if][roman type][line break]The game is over!";
	say "[BigNameDesc of M] claps [his of M] hands.[line break][speech style of M]'Zat is it! Let'z zee now...'[roman type][line break][big he of M] looks around at your crotches.";
	let LSPE be the number of entries in LSP;
	if LSPE is 0:
		say "[speech style of M]'All of you dizgraced yourzelvez! Nobody pazzez!'[roman type][line break]";
	otherwise if LSPE is the number of entries in LST:
		say "[speech style of M]'All of you pazzed! Congratulationz!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'";
		repeat with ST running through LSP:
			say "[if ST is student][student-name of ST][otherwise][NameBimbo][end if][if LSPE > 1], [otherwise if LSPE is 1] and [otherwise] [end if]";
		say "- you pazz. Ze otherz should be embarrazzed of zemselvez.'[roman type][line break]";
	repeat with ST running through LSP:
		if ST is student, promote ST;
	if the player is listed in LSP:
		now armband is emerald;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Sweetie";
		now the armband-print of armband is "super snogger";
		say ClothingDesc of armband;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	say "[big he of M] waves [his of M] arms.[line break][speech style of M]'Zat iz it for today! Clazz dizmizzed!'[roman type][line break]".




To compute french kissing lesson of (M - a staff member):
	say "[big he of M] licks [his of M] lips.[line break][speech style of M]'Yez... a complete examination iz required. Each of you vill take turnz to kizz me. Eizer you vill be leaving viz a promotion... or you vill be leaving viz a little upgrade...'[roman type][line break]";
	repeat with ST running through students in the location of the player:
		say "[speech style of M]'[student-name of ST], [one of]come here[or]you next[or]your turn[then at random].'[roman type][line break]";
		let STEffort be the dedication of ST;
		say "[BigNameDesc of ST] [one of]tenderly[or]gingerly[or]bravely[or]courageously[at random] walks up to [BigNameDesc of M] and then [one of]proceeds to lock lips with [him of M] in front of the whole class[or]takes [his of ST] turn kissing [him of M][stopping]. [if STEffort < 2]The kiss only lasts for a few seconds before [NameDesc of ST] pulls away[otherwise if STEffort is 2]The kiss looks rather passionate from where you're standing, but when [NameDesc of M] tries to grab [his of ST] buttocks, [he of ST] squeaks and pulls away[otherwise if STEffort is 3]The kiss lasts for quite some time, both of them enthusiastically holding each other's butts as they taste each other's saliva. You think you can even hear some moaning[otherwise]The kiss lasts a very long time, both of them humming loudly with pleasure as they feel each other all over, including [NameDesc of ST] letting [NameDesc of M] touch [his of ST] crotch[end if]. ";
		if a random number between 2 and 4 > STEffort:
			say "[BigNameDesc of M] [one of]frowns[or]sighs[or]clicks [his of M] tongue[in random order].[line break][speech style of M]'Not good enough for a promotion today, darling. Zo inztead I must give you a punishment... [kissPunishmentDesc of ST].'[roman type][line break]And with a snap of [his of M] fingers, you know that the punishment has been sealed with magic. [BigNameDesc of ST] whimpers and returns to [his of ST] desk.";
			now ST is kissPunished;
		otherwise if ST is promotable:
			compute kissPromotion of ST;
		otherwise:
			say "[BigNameDesc of M] spends a while thinking before speaking.[line break][speech style of M]'I do not zink you dezerve punishment... but I cannot grant you ze rank of emerald juzt yet. I vill leave you alone for today.'[roman type][line break]";
	let KissRating be (the lips of face) + (the oral sex addiction of the player / 2);
	say "[speech style of M]'Okay [NameBimbo], let'z zee vat you can do.[roman type][line break]You find yourself walking to the front until your face is inches from [teacher-name of M][']s.[big he of M] pouts and slightly opens [his of M] lips, revealing [his of M] waiting tongue. It looks like you could choose to make the first move - this would be rather embarrassing to do in front of all your classmates, but may well earn you brownie points with [teacher-name of M]. ";
	suggest swallowing;
	if the total volume of face > 0:
		say "You close your eyes and move your face forward until your lips touch, tilting your head slightly to allow them to lock. [teacher-name of M] moans with satisfaction... until you push your [MouthfulDesc] into [his of M] mouth, surprising [him of M]. [big he of M] pulls away, spluttering with panic for a moment until [he of M] manages to gather [his of M] wits. The class is gasping and snickering. You give [NameDesc of M] a sly smirk.";
		if the player is getting unlucky:
			say "[speech style of M]'DETENTION! DETENTION FOR YOU RIGHT NOW!'[roman type][line break]Uh-oh, looks like you caught [him of M] in a bad mood...[line break][GotUnluckyFlav]";
			compute chair detention of M;
		otherwise:
			say "[variable custom style]'You pulled away first!'[roman type][line break]You point out cheekily. [BigNameDesc of M] harrumphs.[line break][speech style of M]'Very clever! I have never had a student bezt me in zis way. Fine, you can have your promotion.'[roman type][line break]";
			now armband is emerald;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Kara";
			now the armband-print of armband is "conniving kisser";
			say ClothingDesc of armband;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
			say "[big he of M] ushers you back to your seat and then addresses the whole class.[line break][speech style of M]'Zat iz it for today! Clazz dizmizzed!'[roman type][line break]";
	otherwise:
		say "Do you make the first move?";
		let tonguedPerson be the player;
		if the player is consenting:
			say "You close your eyes and move your face forward until your lips touch, tilting your head slightly to allow them to lock. [teacher-name of M] moans with satisfaction. [severeHumiliateReflect]You begin to push your tongue inside [teacher-name of M][']s mouth, surprising [him of M]. [big he of M] blocks with [his of M] own tongue, and they slither on top of each other for a few seconds as you fight to enter each other's mouths. The feeling of [his of M] tongue on yours [if the player is a bit horny]arouses you further[otherwise]turns you on a little[end if]. Eventually ";
			if a random number between 1 and the delicateness of the player < 7:
				say "[teacher-name of M] gives way, and allows your tongue to slip beyond [his of M] teeth.";
				now tonguedPerson is M;
				repeat with ST running through tryhard students in the location of the player:
					FavourUp ST;
			otherwise:
				say "your bravery subsides and you relent, allowing your superior to explore the insides of your mouth.";
				repeat with ST running through ditzy students in the location of the player:
					FavourUp ST;
			passively stimulate face from M times 2;
			finally arouse the delayed arousal of the player;
			update arousal;
			DelicateDown 1;
		otherwise:
			say "[teacher-name of M] tuts at your hesitation and then grabs you by the back of your head, forcing your lips together in a seal, where [he of M] immediately forces [his of M] tongue into your mouth and towards your throat. With [his of M] tongue in your mouth, it definitely feels like [he of M] is in command. At least you feel like you managed to keep some self-respect intact by not being over-eager.";
			Dignify 250;
			repeat with ST running through innocent students in the location of the player:
				FavourUp ST;
		let endN be a random number between 6 and 9;
		let N be 0;
		let player-groped-level be -1;
		while N >= 0 and N < endN:
			increase N by 1;
			let KR be player-groped-level + 2;
			increase KissRating by a random number between 1 and KR;
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			say "[if tonguedPerson is the player][teacher-name of M][']s tongue is currently in your mouth - [he of M] has control[otherwise]Your tongue is currently in [his of M] mouth - you have control[end if]. [if player-groped-level >= 0 and tonguedPerson is the player][big he of M][otherwise if player-groped-level >= 0]But [he of M] already[end if] [if player-groped-level is 0]has [his of M] hands on your [AssDesc].[otherwise if player-groped-level is 1]has one hand on your [AssDesc] and one hand on your [BreastDesc].[otherwise if player-groped-level > 1]has one hand on your [BreastDesc] and the other on your [genitals]![end if][line break]";
			set numerical response 1 to "pull away and end the kiss[if newbie tips is 1] (have you entertained [teacher-name of teacher-angela] enough to avoid punishment?)[end if]";
			set numerical response 2 to "keep kissing[if newbie tips is 1 and tonguedPerson is the player and player-groped-level < 2] ([teacher-name of M] gets more handsy, increasing stimulation in future rounds)[otherwise if newbie tips is 1 and tonguedPerson is the player] ([teacher-name of M] deals double vaginal stimulation while you allow her to retain full control of the situation)[end if]";
			if tonguedPerson is the player, set numerical response 3 to "try to regain control by pushing your tongue into [his of M] mouth[if newbie tips is 1 and player-groped-level < 2] (gross yourself out this turn to try and prevent [teacher-name of M] from getting more handsy)[otherwise if newbie tips is 1] (gross yourself out this turn but if you succeed in getting [his of M] tongue out of your mouth you'll significantly reduce overall stimulation)[end if]";
			compute multiple choice question;
			if player-numerical-response is 1:
				now N is 10;
				say "You wrestle free and step back.";
			otherwise:
				if tonguedPerson is M:
					let RD be a random number between 1 and the dexterity of the player;
					let RM be a random number between 1 and the difficulty of M;
					if debuginfo > 0, say "[input-style]Tongue defence check: Dexterity (d[dexterity of the player]) = [RD] | [RM].5 = (d[difficulty of M]) [teacher-name of M] difficulty rating[roman type][line break]";
					say "[teacher-name of M] [one of]uses [his of M] tongue to play with yours in [his of M] mouth[or]massages your tongue with [his of M] lips[or]lets you lick [his of M] lips[or]sucks your saliva off of your tongue[at random], ";
					if RM >= RD:
						say "but then when [he of M] senses an opening, [he of M] manages to shove your tongue back into your mouth and take control!";
						now tonguedPerson is the player;
					otherwise:
						say "every now and then trying to push past, but not being able to find an opening.";
					[passively stimulate face from M times 2;
					check for arousal change;]
				if player-numerical-response is 3:
					say "Your tongues slither on top of each other for a few seconds as you fight to push [teacher-name of M][']s tongue back into [his of M] mouth. The fact that your peers can see you eagerly leaning into the kiss makes you blush. [moderateHumiliateReflect][line break]The sloppiness of your two tongues pressing energetically against each other is a little gross.";
					GrossOut 3;
					if player-groped-level is 1:
						repeat with IST running through innocent students in the location of the player:
							say "[one of][IST] can't believe that you're kissing [teacher-name of M] so passionately, considering how [he of M][']s treating your body like a piece of meat.[or][stopping]";
							FavourDown IST;
					let RS be a random number between 1 and the strength of the player;
					let RM be a random number between 1 and the difficulty of M;
					if debuginfo > 0, say "[input-style]Tongue wrestle check: Strength (d[strength of the player]) = [RS] | [RM].5 [teacher-name of M] difficulty rating[roman type][line break]";
					if RS > RM:
						say "[teacher-name of M] gives way, and your tongues are now touching in [his of M] mouth.";
						now tonguedPerson is M;
					otherwise:
						say "[teacher-name of M] doesn't relent, and [his of M] tongue remains firmly inside your mouth.";
					[passively stimulate face from M;
					check for arousal change;]
				if tonguedPerson is M:
					say "[teacher-name of M] [if player-groped-level is -1]submits to your kiss, moaning enthusiastically[otherwise if player-groped-level is 0]lets you play with [his of M] tongue as [he of M] continues to knead your [AssDesc][otherwise if player-groped-level is 1]swirls [his of M] tongue with yours as [he of M] continues to fondle you[otherwise]submits to your oral probing and focuses on playing with your [genitals] and [BreastDesc][end if].";
				otherwise:
					say "[teacher-name of M] [if player-groped-level is -1]passionately explores your mouth with [his of M] tongue, making over-the-top kissing sounds[otherwise if player-groped-level is 0]continues to knead your [AssDesc] as [he of M] lovingly decorates your tongue with [his of M] saliva[otherwise if player-groped-level is 1]hums happily as [he of M] explores your mouth and gropes your body[otherwise]moans with pleasure as [he of M] idly tongues your mouth and focuses on playing with your [genitals] and [BreastDesc][end if].";
				if player-groped-level >= 0:
					say "You feel humiliated that you've let [him of M] [one of][or]continue to [stopping]touch you in front of your classmates! [if player-groped-level >= 2][severeHumiliateReflect][otherwise if player-groped-level >= 1][strongHumiliateReflect][otherwise][slightHumiliateReflect][end if]";
				if player-groped-level >= 2:
					repeat with IST running through innocent students in the location of the player:
						FavourDown IST;
				passively stimulate face from M;
				if player-groped-level >= 0, passively stimulate hips from M;
				if player-groped-level >= 1, passively stimulate breasts from M;
				if player-groped-level >= 2:
					passively stimulate vagina from M;
					if tonguedPerson is the player, passively stimulate vagina from M; [it's double stimulation to let her tongue you as well]
					if vagina is orgasming:
						repeat with ST running through students in the location of the player:
							FavourDown ST;
						say "After you have finished squealing with pleasure into [teacher-name of M][']s mouth, [he of M] lets the kiss end.";
						OralSexAddictUp 1;
						now N is -1;
				if (N is 1 or N > 2) and N < 9 and tonguedPerson is the player: [round 2 has no progression. balance attempt to make being entirely submissive less of a shit option]
					increase player-groped-level by 1;
					say "[teacher-name of M] [if player-groped-level is 0]grabs your [AssDesc] with both hands, with some force. You think you can hear some snickering from behind you[otherwise if player-groped-level is 1]moves one hand to your [BreastDesc] and begins to grope you[otherwise if player-groped-level is 2]moves the hand that was kneading your [AssDesc] to your [genitals], and begins playing with you down there[otherwise]keeps stroking you down below[end if]. ";
				check for arousal change;
		if N < 10: [Teacher pulls away]
			say "Finally, [NameDesc of M] pulls away and lets go of you.";
			increase KissRating by 10;
		otherwise:
			say "[teacher-name of M] [one of]tuts[or]harrumphs[in random order] with mild disappointment.";
		if N >= 0:
			say "[speech style of M]'[if KissRating < 4]That was abysmal[otherwise if KissRating < 6]That was rather poor[otherwise if KissRating < 8]I've had worse[otherwise if KissRating < 11 or N >= 10]Not bad at all[otherwise]Marvellous[end if]. ";
			let RK be a random number between 8 and 13;
			if RK > KissRating:
				say "[if KissRating >= 6]But you can do[otherwise]You can do much[end if] better, I think. Especially with a little help...'[roman type][line break]";
				if a random number between 1 and (2 + artificial enhancements fetish) > the lips of face:
					say "[BigNameDesc of M] brings you forward for one more kiss. As your lips touch this time, you feel yours growing in size! By the time you've pulled away, they have changed from [LipDesc] to ";
					increase the lips of face by 1; [Not using LipsUp on purpose]
					say "[LipDesc]!";
					display lips cutscene;
				otherwise:
					say "You can't see anything else happen, but something inside your brain seems... [if the oral sex addiction of the player < 5]less resistant to the idea of using[otherwise]more eager to use[end if] your mouth for pleasure.";
					OralSexAddictUp 1;
			if RK - 2 <= KissRating:
				say "[if RK > KissRating][speech style of M]'Still[otherwise]Yes[end if], I think you've learned enough here.'[roman type][line break]";
				now armband is emerald;
				say "You watch as the ID card inside your armband transforms!";
				if RK > KissRating:
					now the armband-title of armband is "Kara";
					now the armband-print of armband is "confident kisser";
				otherwise:
					now the armband-title of armband is "Kandi";
					now the armband-print of armband is "keen kisser";
				say ClothingDesc of armband;
				update students; [an important line which makes boring old students disappear and new cool ones appear]
		otherwise: [player orgasmed]
			say "[speech style of M]'You pushed yourzelf too far, it vould zeem, and embarrazzed yourzelf in front of ze whole claz. Next time, try to take more control. I zink ze humiliation you've juzt zuffered iz punishment enough though, don't you?'[roman type][line break]";
		say "[big he of M] ushers you back to your seat and then addresses the whole class.[line break][speech style of M]'Zat iz it for today! Clazz dizmizzed!'[roman type][line break]".

To say kissPunishmentDesc of (ST - a student):
	say "Okay, until the next time I zee you for clazz... [one of]you cannot hear people zpeak until you have firzt tazted their tongue[or]you can only experienze zexual pleazure vile kizzing anozer [man of ST][or]everyzing you eat vill tazte like my deliciouz zaliva[or]your mouth vill be in a permanent pouting [']O['][in random order]".

To compute kissPromotion of (ST - a student):
	let M be the lesson-teacher of kissing-lesson;
	say "[BigNameDesc of M] [one of]licks [his of M] lips[or]sighs with delight[or]smiles coyly[in random order].[line break][speech style of M]'Oh yez, you clearly know vat you are doing... Fine, you may go.'[roman type][line break]";
	promote ST.

Part - Seraphina

teacher-seraphina is an emerald-teacher.

The text-shortcut of teacher-seraphina is "teas".

Figure of seraphina is the file "NPCs/School/Teacher/teacher4a.png".
Figure of enslaved seraphina is the file "NPCs/School/Teacher/teacher4b.png".

To decide which figure-name is the monster-image of (M - teacher-seraphina):
	if M is defeated, decide on figure of enslaved seraphina;
	decide on figure of seraphina.

To say MonsterDesc of (M - teacher-seraphina):
	if lady fetish is 2:
		say "This short, stocky [man of M] has wavy brown hair sitting above a confident and slightly vindictive expression. [big his of M] steampunk style gothic corset exudes a feeling of sex appeal and power.";
	otherwise:
		if M is defeated, say "[teacher-name of M][']s steampunk outfit has been removed at the crotch and breasts. [big his of M] heaving chest is now on complete display[if lactation fetish is 1], and seems to be uncontrollably lactating[end if]. [big his of M] arms and hands appear to be unable to move from their current position - holding a flat silver serving tray up under [his of M] hefty bosom, as if preparing them for 'serving', whilst painfully trapping [his of M] own nipples under [his of M] thumbs. [big his of M] huge cleavage is decorated with flavoured chocolate and strawberry sauce which has been used to spell 'Free Fuck Meat' across [his of M] chest, and finished with a dollop of whipped cream and a cherry for good measure.";
		otherwise say "This short, stocky lady has wavy brown hair sitting above a confident and slightly vindictive expression. [big his of M] steampunk style, including gothic corset, would be rather unique and eye-catching if it wasn't for the fact that all eyes are invariably drawn to [his of M] huge breasts which are pushing the overbust section of [his of M] corset to its limits.".

The teacher-name of teacher-seraphina is "Seraphina".

Definition: teacher-seraphina is fetish appropriate:
	if max breast size >= 8, decide yes;
	decide no.

To say WhoAnswer of (M - teacher-seraphina):
	say "[speech style of M]'Can you not guess what [']assets['] I bring to the table?'[roman type][line break]".

To say WhereAnswer of (M - teacher-seraphina):
	say "[speech style of M]'[if the rank of the player <= 1]Exactly where you need to be.'[otherwise]Leave your ego at the door.'[end if][roman type][line break]".

To say AdviceAnswer of (M - teacher-seraphina):
	say "[speech style of M]'Just always remember - bigger is better. No exceptions!'[roman type][line break]".

To say EnslavedDominationFlav of (M - teacher-seraphina):
	if the player is able to eat:
		say "You hook two fingers inside [NameDesc of M][']s cunt and pull [him of M] a step closer. [big he of M] just whimpers timidly as [he of M] allows you to eat some tasty whipped cream off of [his of M] exposed chest.";
		StomachFoodUp 1;
	otherwise:
		say "You roughly push the bottom of [NameDesc of M][']s tray upwards, forcing [his of M] chest into [his of M] face, covering [him of M] in the whipped cream and sauce that had been used to decorate [his of M] exposed breasts.[line break][speech style of M]'Thank you for humiliating me, [if the player is presenting as male]Master[otherwise]Mistress[end if] [NameBimbo]...'[roman type][line break][BigNameDesc of M] quietly mutters. A few seconds later, the princess's magic causes the cream and sauce to redecorate [his of M] chest, just as it had been a few moments ago.".
To decide which number is the EnslavedDominationThreshold of (M - teacher-seraphina):
	decide on 14000.

tits-lesson is a lesson. The lesson-teacher of tits-lesson is teacher-seraphina.
Definition: tits-lesson is lesson-appropriate:
	if the player is top heavy and the largeness of breasts < 6, decide no;
	decide yes.

To compute teaching of (L - tits-lesson):
	let M be the lesson-teacher of L;
	if lady fetish is 2, say "[speech style of M]'Nipples.'[roman type][line break][NameDesc of M] stands at the front of the room with [his of M] hands at [his of M] hips, [his of M] nipples chains waving back and forth in front of [him of M] as [he of M] breathes.[line break][speech style of M]'Sissies are better than women. Do you know why? Breasts. That's right. Women have it easy. Women are lazy. Sissies do not have it easy. Sissies work hard, and to beat women at their own game, sissies must make full use of what assets they have.'[roman type][line break]";
	otherwise say "[speech style of M]'Breasts.'[roman type][line break][NameDesc of M] stands at the front of the room with [his of M] hands at [his of M] hips, [his of M] giant chest gently heaving up and down in front of [him of M] as [he of M] breathes.[line break][speech style of M]'A woman's most important seductive tool, and a great symbol of her power. Why is it then, that so many of you fools do not spend your lives seeking new ways to enhance and empower your primary assets?'[roman type][line break]";
	allocate 35 seconds;
	if the player is top heavy or the largeness of breasts >= 12 or the breast-enhancement of nurse < 0:
		if the breast-enhancement of nurse < 0 or breasts is lewdly exposed or the number of worn top-placed low cut or higher nipple covering clothing is 0:
			if lady fetish is 2:
				say "[NameDesc of M] gestures at you.[line break][speech style of M]'This is what all women could look like. She is a woman who has truly striven for perfection, and I am proud to call her my superior.'[roman type][line break][NameDesc of M] strides over to you and then takes a step behind you, grabbing each of your breasts with one of [his of M] hands, squeezing them gently.[line break][speech style of M]'The texture, the shape, the sheer weight of these puppies screams [']power['], don't you think? I wouldn't even try to compete with this cutie for attention in a club or bar.'[roman type][line break]After a [if there is worn rigid actually breast covering clothing]final big squeeze[otherwise]cheeky tweak of your nipples[end if], [big he of M] lets go.[line break][speech style of M]'There is nothing more that I can teach you. Try to leave some knowledge for the rest of us.'[roman type][line break]";
			otherwise:
				say "[NameDesc of M] gestures at you.[line break][speech style of M]'Now this is a [if the largeness of breasts > 5]woman who has truly striven for perfection, and I am proud to call her my equal.'[roman type][line break][NameDesc of M] strides over to you and then takes a step behind you, grabbing each of your large breasts with one of [his of M] hands, squeezing them gently.[line break][speech style of M]'The texture, the shape, the sheer weight of these puppies screams [']power['], don't you think? I wouldn't want to try and compete with this cutie for attention in a club or bar[otherwise]special case, there seems to be some special magic keeping these puppies small and disappointing.'[roman type][line break][NameDesc of M] strides over to you and then takes a step behind you, grabbing each of your nipples with one of [his of M] hands, squeezing them painfully.[line break][speech style of M]'Still, even itty bitties like this can be fun to play with, I think[end if].'[roman type][line break]After a [if there is worn rigid actually breast covering clothing]final big squeeze[otherwise]cheeky tweak of your nipples[end if], [big he of M] lets go.[line break][speech style of M]'There is nothing more I need to teach you. You may proceed.'[roman type][line break]";
			now armband is ruby;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Juggz";
			now the armband-print of armband is "buxom beauty";
			say ClothingDesc of armband;
			let S be a random demotable nasty student in the location of the player;
			if S is student:
				say "[S] complains loudly.[line break][speech style of S]'This is bullshit! You can't promote a basic bitch like [him of the player] just for looking like a slutty tramp!'[roman type][line break][M] flashes [him of S] a furious stare.[line break][speech style of M]'[NameBimbo] is the epitome of beauty! You don't deserve to be in my class. No, you don't even deserve to share a rank with these other students!'[roman type][line break]";
				demote S;
				say "[NameDesc of S] gasps in dismay.[line break][speech style of S]'Oh come on!'[roman type][line break][big he of S] scowls at you.[line break][speech style of S]'I'm not going to forgive you for this!'[roman type][line break]";
				HappinessDown S by 4;
			if the lewdly exposed outrage of breasts is too humiliating:
				say "You try to make it look like you're holding your breasts proudly as you walk out of the room.";
				try going south;
				say "[variable custom style]Gosh, that was so embarrassing! But I think I got away with pretending that I liked having my breasts on display. Now I should really put on some less revealing clothes![roman type][line break]";
			otherwise:
				say "You hold your breasts proudly as you walk out of the room.";
				try going south;
				say "[variable custom style]Hehe, having massive tits really does make life easy![roman type][line break]";
			allocate 12 seconds;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
		otherwise:
			say "[NameDesc of M] gestures at you.[line break][speech style of M]'Now this is a woman who has truly striven for perfection, but look at that clothing! There's nowhere near enough cleavage showing. It's almost like she is ashamed of the size of her massive titties. That just won't do!'[roman type][line break][big he of M] actually looks rather angry.[line break][variable custom style]Uh-oh...[roman type][line break][big he of M] opens the ancient-looking book that [he of M] is holding and turns it to a certain page. [big he of M] begins reciting a chant in a very bizarre sounding language.[line break][speech style of M]'PUJ VLTU[']BE[']JAJ!'[roman type][line break]The book glows with dark energy which then shoots out and strikes you in the chest! You feel powerful magic surging through your veins.";
			MagicPowerUp 4;
			repeat with C running through worn actually breast covering clothing:
				say "Your [ShortDesc of C] disintegrates in a burst of black flame!";
				destroy C;
			if topless temporary fetish is 0:
				say "You suddenly feel very comfortable with having your [BreastDesc] on full display. In fact, the idea of wearing something that covers you up now feels just objectively... wrong. Your magnificent mammaries and proudly erect nipples are destined to be gazed upon! It would be wrong of you to deprive anyone of that wonderful privilege.";
				now topless temporary fetish is 20;
			say "[speech style of M]'That's better! Now we can clearly see that these ta-tas definitely deserve a promotion.'[roman type][line break]";
			now armband is ruby;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Juggz";
			now the armband-print of armband is "topless talent";
			say ClothingDesc of armband;
			say "[BigNameDesc of M] smirks.[line break][speech style of M]'Well I think that's enough excitement for one day! Hopefully you've all learned something about what it TRULY means to own a pair of proper boobs. [NameBimbo] will certainly have to learn [his of the player] lesson the practical way - TWENTY TIMES, in in fact. Anyway, until next time.'[roman type][line break][big he of M] disbands the class.";
	otherwise if (the breast-enhancement of nurse is not 0 or a random number between 1 and 2 is 1) and the number of worn chest tattoos is 0 and (breasts is showing cleavage or the number of worn actually not-top-displacable fully covering clothing is 0):
		let S be random student in the location of the player;
		say "[big he of M] opens a desk drawer and retrieves several black marker pens.[line break][speech style of M]'Today we will be helping each other learn to be proud of displaying their [if lady fetish is 2]flat chests[otherwise]cleavage[end if]. Firstly, let's split into groups.'[roman type][line break][NameDesc of M] assigns people into pairs. You are partnered with [NameDesc of S].[line break][speech style of M]'You will each be writing a phrase on your partner's [if lady fetish is 2]cleavage[otherwise]chest[end if]. I want you to come up with something cheeky that will make the wearer's titty-meat nice and eye catching. Don't worry, it's not permanent.'[roman type][line break]Each pair is handed a pen. You are given the pen for your pair, so you go first. [if the player is a nympho]A naughty thought comes to your mind, and you write 'stick your dick here'[otherwise if the player is a pervert]After thinking for a few moments you write 'one for the wank bank'[otherwise]You struggle to think of anything inventive, and end up just writing 'hot stuff'[end if] on [NameDesc of S][']s cleavage.[line break]But then it's [his of S] turn. [big he of S] takes the pen off you and ";
		compute tits marker choice of S;
		if the initial outrage of marker chest tattoo - 2 is too humiliating:
			say "[variable custom style]There's just NO WAY I could let myself be seen like this outside of this room, surely?![roman type][line break]";
		otherwise if the initial outrage of marker chest tattoo is too humiliating:
			say "[variable custom style]Oh come on! Surely this is too far?![roman type][line break]";
		otherwise if the initial outrage of marker chest tattoo + 2 is too humiliating:
			say "[variable custom style]Oh gosh, am I really considering walking around with this written on my cleavage? What will people think?![roman type][line break]";
		otherwise if the initial outrage of marker chest tattoo is too boring:
			say "[variable custom style]Pfft, boring! I could have come up with something way better.[roman type][line break]";
		otherwise:
			say "[variable custom style]I guess this isn't too bad.[roman type][line break]";
		say "[BigNameDesc of M] makes you stand in a line so that [he of M] can inspect your titty graffiti. Eventually [he of M] reaches you and makes you puff our your chest as [he of M] reads the small black letters.";
		compute tits marker reaction of S;
		say "[big he of M] coughs loudly and then raises [his of M] voice.[line break][speech style of M]'Okay, let's raise the stakes a bit. I have a spell that can turn any ink into a permanent tattoo. Anyone who says they are willing to have their words become a permanent public declaration on their bosom will graduate this class and become a ruby student. Anyone interested?'[roman type][line break]Do you volunteer to have the words '[tattoo-title of marker chest tattoo]' permanently inked on your chest? ";
		if the player is bimbo consenting:
			say "Everybody looks awkward and casts their eyes downward, but you cause the silence to be broken by a few awed gasps as you raise your hand.[line break][speech style of M]'Oh yes, I had a feeling about you.'[roman type][line break][NameDesc of M] grins and with a flourish of [his of M] spellbook, everybody's words disappear from their chest, except yours. You test your own ink with a finger and find that it indeed will not rub off or smudge at all. However, at least you can feel that some of the magic power that [NameDesc of M] used has remained in your veins.";
			MagicPowerUp 3;
			now marker chest tattoo is worn by the player;
			try examining marker chest tattoo;
			HappinessUp S by 2;
			say "[speech style of M]'What a brave girl you are! Well, as promised, here you go.'[roman type][line break]";
			now armband is ruby;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Coco";
			now the armband-print of armband is "compliant canvas";
			say ClothingDesc of armband;
			update students; [an important line which makes boring old students disappear and new cool ones appear]
			say "[M] folds [his of M] arms, looking very pleased with [himself of M].[line break][speech style of M]'All right, class dismissed.'[roman type][line break]";
		otherwise:
			say "Everybody looks awkward and casts their eyes downward, and a long silence comes over the room. Eventually [NameDesc of M] speaks.[line break][speech style of M]'Disappointing.'[roman type][line break]With a flourish of [his of M] spellbook, everybody's words disappear from their chest. [one of]You can feel that a small amount of the magic power that [NameDesc of M] just used has remained in your veins.[@ MagicPowerUp 1][or][stopping][line break][big he of M] sounds genuinely downcast.[line break][speech style of M]'You all need to work on your bravery for the next time we convene. Class dismissed.'[roman type][line break]";
	otherwise:
		let S be a random promotable student in the location of the player;
		if student-abbi is in the location of the player, now S is student-abbi; [She's large breasted after all]
		if student-tiana is in the location of the player, now S is student-tiana; [She's super huge breasted after all]
		say "[NameDesc of M] makes you all stand and practise a few poses that are designed to emphasise your breasts, including pushing your shoulders back, squeezing your tits in between your arms, and bending over at the waist. Soon you are all tired and [he of M] looks satisfied.[line break][speech style of M]'Okay, that's enough for today. [if S is student][student-name of S], you have made brilliant progress since you first started coming to my classes. I think you deserve a promotion. For the rest of you, [end if]I'm going to assign you some optional [']homework[']. I've informed the nurse of our little problems here... and I do mean little. So the next time you go to visit [him of nurse], you can expect [him of nurse] to be giving each and everyone one of you a nice... enhancement. If you don't want it, then you'd better not go see [him of nurse] before the next time we meet.'[roman type][line break]With that, [NameDesc of M] packs up [his of M] things and begins to walk for the door.[line break][speech style of M]'Until next time, then!'[roman type][line break]";
		if S is student, promote S;
		now the breast-enhancement of nurse is 2. [It will immediately get reduced to 1 by the code in "To compute potential lesson"]

To compute tits marker choice of (S - a student):
	say "thinks for a few moments [himself of S] before taking the pen to your skin. ";
	let R be a random number between 1 and 3;
	if R is 1:
		now the tattoo-title of marker chest tattoo is "photos welcome";
	otherwise if R is 2:
		now the tattoo-title of marker chest tattoo is "I love being topless";
	otherwise:
		now the tattoo-title of marker chest tattoo is "please stare at my tits";
	now the tattoo-outrage of marker chest tattoo is 8;
	say "[big he of S] writes '[tattoo-title of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a student):
	say "[speech style of lesson-teacher of tits-lesson]'Hmm, this is fine. Nothing special, but does the job. Not bad, [student-name of S].'[roman type][line break]".

To compute tits marker choice of (S - a ditzy student):
	say "umms to [himself of S] for a few moments [himself of S] before making a gleeful 'ooh!' sound and then taking the pen to your skin. ";
	let R be a random number between 1 and 3;
	if R is 1:
		now the tattoo-title of marker chest tattoo is "fuckballs";
	otherwise if R is 2:
		now the tattoo-title of marker chest tattoo is "fuck bags";
	otherwise:
		now the tattoo-title of marker chest tattoo is "cock pillows";
	now the tattoo-outrage of marker chest tattoo is 11;
	say "[big he of S] writes '[tattoo-title of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a ditzy student):
	say "[speech style of lesson-teacher of tits-lesson]'Hmm. A bit crude, but I guess it does the job. You'd certainly get more attention.'[roman type][line break]".

To compute tits marker choice of (S - a nasty student):
	say "doesn't hesitate before taking the pen to your skin. ";
	let R be a random number between 1 and 3;
	if R is 1:
		now the tattoo-title of marker chest tattoo is "ugly bitches need bigger boobs";
	otherwise if R is 2:
		now the tattoo-title of marker chest tattoo is "worthless whore with mediocre boobs";
	otherwise:
		now the tattoo-title of marker chest tattoo is "please look at my disgusting tits";
	now the tattoo-outrage of marker chest tattoo is 13;
	say "[big he of S] grins a wide, evil grin and then writes '[tattoo-title of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a nasty student):
	say "[speech style of lesson-teacher of tits-lesson]'No, no no! This is all wrong. Who would want such a horrible message written on their breasts?! Get it together, [student-name of S].'[roman type][line break]".

To compute tits marker choice of (S - a tryhard student):
	say "doesn't hesitate before taking the pen to your skin. ";
	let R be a random number between 1 and 2;
	if R is 1:
		now the tattoo-title of marker chest tattoo is "it's hard not to look isn't it?";
	otherwise:
		now the tattoo-title of marker chest tattoo is "if you can read this you owe me a drink";
	now the tattoo-outrage of marker chest tattoo is 10;
	say "[big he of S] has a scheming grin as [he of S] writes '[tattoo-title of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a tryhard student):
	say "[speech style of lesson-teacher of tits-lesson]'Great idea, [student-name of S]! I love it. Attention grabbing without being too crass.'[roman type][line break]".

Part - Rochelle / Roger

teacher-rochelle is a ruby-teacher. teacher-rochelle is male.

Definition: teacher-rochelle is presenting as male:
	if futanari fetish is 0, decide yes;
	decide no.
Definition: teacher-rochelle is refusing to propose: [won't propose when she might need to teach]
	if the rank of the player < 4, decide yes;
	decide no.

The text-shortcut of teacher-rochelle is "tero".

Figure of rochelle is the file "NPCs/School/Teacher/teacher7a.png".
Figure of slave rochelle is the file "NPCs/School/Teacher/teacher7b.png".
Figure of roger is the file "NPCs/School/Teacher/teacher8a.png".
Figure of slave roger is the file "NPCs/School/Teacher/teacher8b.png".

To decide which figure-name is the monster-image of (M - teacher-rochelle):
	if lady fetish is 1 or futanari fetish > 0, decide on figure of rochelle;
	decide on figure of roger.

To decide which figure-name is the pacified-image of (M - teacher-rochelle):
	if lady fetish is 1 or futanari fetish > 0, decide on figure of slave rochelle;
	decide on figure of slave roger.

To decide which number is the girth of (M - teacher-rochelle):
	decide on 7.

To say LongDickDesc of (M - teacher-rochelle):
	say "huge thick [DickDesc of M]";

To say MonsterDesc of (M - teacher-rochelle):
	if M is pacified:
		if lady fetish is 1 or futanari fetish > 0, say "This poor big-dicked futa has a unique chastity cage locked around [his of M] loins. It has a strict tight belt to keep it in place and to keep [his of M] pussy blocked off, and a large clear plastic cage to contain [his of M] [LongDickDesc of M]. The exact tight fit of the cage seems to be preventing [him of M] from losing [his of M] erection. But even if [he of M] fucks someone, [he of M][']s not going to be able to feel a thing. [big he of M] is also wearing some new piercings - two nipples piercings and a belly button piercing - connected by a gold chain, completing the 'sex slave' look[unless playerRegion is school]. [big his of M] butt is a raw shade of red - evidence of a recent rough spanking session[end if].";
		otherwise say "The cuffed ankles, wrists cuffed behind [his of M] back and the ballgag tightly strapped in [his of M] mouth are hardly noticeable thanks to the two huge pink ribbons that now constitute this big-dicked [man of M][']s only clothing. One is around [his of M] neck, the other around the base of [his of M] [LongDickDesc of M], mostly covering it. It would appear that either due to magic or just the sheer emasculation of [his of M] new appearance, [he of M] can no longer get hard.";
	otherwise:
		say "Even if [his of M] armband didn't make it clear that this grinning [man of M] is a teacher, there's no avoiding noticing [his of M] [LongDickDesc of M] swinging from [his of M] crotch. Its 9.5 inch length and equally impressive girth must put it in the top 1% of [manly-penis]s.".

The teacher-name of teacher-rochelle is "Rochelle".

To uniquely set up (M - teacher-rochelle):
	if futanari fetish is 0, now the teacher-name of M is "Roger".

To say WhoAnswer of (M - teacher-rochelle):
	say "[speech style of M]'I'd have thought that was pretty obvious. I teach dumb [boy of the player]s like you how to properly service a [DickDesc of M].'[roman type][line break]".

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
	say "[speech style of M]'Fucking [bitch]! How dare a slut like you reject your own devoted teacher. I'll show you how to be a proper whore.'[roman type][line break]".

Definition: teacher-rochelle is willing to let go: decide yes.

To compute FriendlySexRelease of (M - teacher-rochelle):
	if M is willing to let go:
		say "[BigNameDesc of M] pulls out in a huff.";
		dislodge M;
		consider angry punishment of M;
		satisfy M;
	otherwise:
		say FriendlySexReleaseRefusalFlav of M.

To compute labour to (M - teacher-rochelle):
	if playerRegion is School:
		compute pregnancy clothing displacement;
		say "[PregFlav]A human head pushes its way out of your cunt, agonisingly slowly and painfully. Finally the head has passed through, and after a final push at the shoulders, the birthing is complete. You pick your child up off the floor and start to cradle it in your arms. [BigNameDesc of the father] appears almost as if on cue! [PregFlav of the father]Severing the umbilical cord, [he of M] pulls the baby from your hands, wraps it in a soft blanket and then carries it away.[line break][variable custom style][if the bimbo of the player < 8]That is definitely for the best.[otherwise if the bimbo of the player < 14]I guess I don't really have anywhere to raise a baby in here, anyway.[otherwise]Oh good, that means I can busy myself with finding a new stud to breed me again![end if][roman type][line break]";
	otherwise:
		say DefaultBirthScene.

To say EnslavedDominationFlav of (M - teacher-rochelle):
	say "You grab [NameDesc of M] by the [manly-penis] and pull [him of M] into you. [if the player is able to speak][variable custom style]'Not so tough now, are you? Wimp.'[roman type][line break][otherwise]You stare into [his of M] eyes to let [him of M] know who's in charge. [end if][big he of M] just whimpers timidly and makes sure not to move lest [his of M] member accidentally get pulled so hard it hurts.".
To decide which number is the EnslavedDominationThreshold of (M - teacher-rochelle):
	decide on 18000.

practical-lesson is a lesson. The lesson-teacher of practical-lesson is teacher-hyacinthe.

To compute teaching of (L - practical-lesson):
	allocate 6 seconds;
	let TL be the lesson-teacher of L;
	let DL be teacher-rochelle;
	now DL is in the location of the player;
	say "[if TL is not DL][speech style of TL]'For this lesson, I am going to need some help from Teacher [teacher-name of DL].'[roman type][line break]You watch as [NameDesc of DL] enters the room, joining [NameDesc of TL] at the front.[line break][end if][speech style of TL]'Today we will be learning about how by being especially filthy, you can better service cocks and win the hearts of your Masters.'[roman type][line break]";
	say "[BigNameDesc of DL] gently strokes [his of DL] [DickDesc of DL], and you all watch as it slowly hardens, growing even larger in size.[line break][speech style of TL]'The rules are simple: each of you need to get in line and one by one you will do your best to pleasure the [manly-penis]. Up to [bold type]three people[speech style of TL] can get promoted: the person that makes it cum, the slut who I think acted the filthiest, and the person who used the most different parts of their body. EXCEPT hand-jobs, which are for prudes. [if a2m fetish is 0]The special rule for today is that no anal sex is allowed[otherwise]And remember, no ass-to-vag, okay? That's unhealthy[end if]. Finally, [bold type]each time you perform a sexual act but fail to convince me that you're enjoying it, you'll get a punishment. [speech style of TL]Your Masters aren't going to be [please]d if they can tell you heart isn't really in it.'[roman type][line break]And with that, [he of TL] sorts you into a random order, which ends up having you at the front. You're going to have to go first, it would seem...";
	say "You reflect on how you feel about your different options.";
	if face is not actually occupied, follow the oral sex addiction description rule;
	if the player is possessing a vagina and vagina is not actually occupied and the number of worn chastity bond is 0, follow the vaginal sex addiction description rule;
	if asshole is not actually occupied and a2m fetish > 0, follow the anal sex addiction description rule;
	if the largeness of breasts > 5, follow the titfuck addiction description rule;
	repeat with W running through worn wrist locking clothing:
		say "With a click of [his of DL] fingers, your [ShortDesc of W] falls to the ground.";
		now W is in the location of the player;
		unlock W;
	let cum-countdown be a random number between 30 and 40;
	let total-fuck-turns be 0;
	let stimulation-level be 0;
	let slobber-owner be the player;
	let pussy-count be 0;
	let ass-count be 0;
	let player-filthiness be 0;
	let victorious-student be the player;
	let student-filthiness be 0;
	repeat with ST running through students in the location of the player:
		now the lessonInt1 of ST is 0; [we are going to use binary to try which body parts they've used: 1st bit is asshole, 2nd is vagina, 3rd is mouth]
	let LB be a list of body parts; [list of what body parts the player has used]
	let filthiest-student be a random student in the location of the player;
	now refractoryperiod is 0;
	let LST be the list of students in the location of the player;
	sort LST in random order;
	while cum-countdown > 0:
		increase seconds by 9;
		now stimulation-level is 0;
		finally humiliate the delayed humiliation of the player;
		check for arousal change;
		while stimulation-level <= 0:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			if face is not actually occupied:
				if pussy-count is 0 and ass-count is 0 and slobber-owner is the player, set numerical response 1 to "use your mouth";
				otherwise set numerical response 1 to "use your mouth (you'll have to slurp up[if pussy-count > 1] [pussy-count] lots of vaginal juices[otherwise if pussy-count > 0] the taste of someone's pussy juice[end if][if pussy-count > 0 and ass-count > 0] and[end if][if ass-count > 1] [ass-count] lots of ass juices[otherwise if ass-count > 0] the taste of someone's butt[end if][if ass-count is 0 and pussy-count is 0] [NameDesc of slobber-owner][']s slobber[end if])";
			if the player is possessing a vagina and vagina is not actually occupied and the number of worn chastity bond is 0:
				if ass-count is 0, set numerical response 2 to "use your pussy";
				otherwise say "You aren't allowed to use your [vagina] while there's someone else's ass juices on [NameDesc of DL][']s [DickDesc of DL], as that would be unhealthy.";
			if asshole is not actually occupied and a2m fetish > 0, set numerical response 3 to "use your asshole";
			if the largeness of breasts > 5, set numerical response 4 to "use your breasts";
			set numerical response 0 to "just use your hand";
			compute multiple choice question;
			let enthusiasm be (the arousal of the player / 2500) - 2;
			if player-numerical-response is 1:
				now DL is penetrating face;
				add face to LB, if absent;
				increase enthusiasm by the oral sex addiction of the player;
				if ass-count > 0:
					if the grossness addiction of the player >= 13 + ass-count, increase enthusiasm by 10;
					if the grossness addiction of the player <= 7 + ass-count, decrease enthusiasm by 10;
				otherwise if pussy-count > 0:
					if the grossness addiction of the player >= 7 + pussy-count, increase enthusiasm by 5;
					if the grossness addiction of the player <= pussy-count, decrease enthusiasm by 5;
				say "You [if enthusiasm < 7]hesitantly[otherwise if enthusiasm < 14]gracefully[otherwise]greedily[end if] take the [LongDickDesc of DL] into your mouth. ";
				if the throatskill of the player is 1 and enthusiasm >= 7:
					say "You skilfully push the massive rod straight down your throat, making proud gagging sounds around it as you do. You move your head up and down, up and down, essentially fucking your own throat as you do. ";
					increase stimulation-level by 3;
				if player-filthiness < ass-count + pussy-count + stimulation-level:
					now player-filthiness is ass-count + pussy-count + stimulation-level;
					if student-filthiness > 0:
						say "By doing this, you've reduced [NameDesc of filthiest-student][']s chances of winning.";
						if student-filthiness < player-filthiness, HappinessDown filthiest-student by 3;
						otherwise HappinessDown filthiest-student;
				increase stimulation-level by (enthusiasm + a random number between 0 and 2) / 3;
				if ass-count > 0:
					say "The taste of [if ass-count > 1][ass-count] loads of sweaty ass juice[otherwise]tangy ass sweat[end if] [if pussy-count > 1]combined with [pussy-count] helpings of slimy cunt butter [otherwise if pussy-count > 0]combined with the unmistakable taste and texture of pussy juice [end if]overwhelms your senses and makes you retch. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of DL][']s [DickDesc of DL].";
					TasteGrossOut 6 + ass-count;
				otherwise if pussy-count > 0:
					say "The taste of [if pussy-count > 1][pussy-count] loads of slippery girl-slime[otherwise]the thin coating of pussy juice[end if] fills your mouth. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of DL][']s [DickDesc of DL].";
					TasteGrossOut pussy-count;
				otherwise if slobber-owner is a student:
					say "You can taste [NameDesc of slobber-owner][']s slobbery saliva all over the shaft. It's a bit humiliating to be slurping someone else's spit off of a [DickDesc of DL]!";
				humiliate (300 * ass-count) + (100 * pussy-count);
				OralSexAddictUp 1;
				say "By the time [NameDesc of DL] tells you to stop, the only thing coating [his of DL] [DickDesc of DL] is your own saliva[unless pussy-count is 0 and ass-count is 0 and slobber-owner is the player]. Everything else is in your stomach and on your tongue[end if].";
				now pussy-count is 0;
				now ass-count is 0;
				now slobber-owner is the player;
				BlowCount;
			otherwise if player-numerical-response is 2:
				now DL is penetrating vagina;
				add vagina to LB, if absent;
				increase enthusiasm by the vaginal sex addiction of the player;
				say "You [if enthusiasm < 4]hesitantly[otherwise if enthusiasm < 8]gingerly[otherwise]excitedly[end if] clamber on top of [NameDesc of DL], before spreading yourself with two fingers and guiding [his of DL] [LongDickDesc of DL] into your [vagina]. ";
				increase stimulation-level by 5 - ((the openness of vagina + a random number between 1 and 4) / 3);
				if enthusiasm > a random number between 4 and 7:
					say "You ride [him of DL] for all you're worth, thrusting your hips back and forth as fast as you can while gripping [his of DL] shoulders tightly.";
					increase stimulation-level by 2;
					ruin vagina times 2;
				otherwise:
					say "You ride [him of DL] gently and passionately, softly kneading [his of DL] chest with one hand as you do.";
					ruin vagina;
				humiliate 25;
				if pussy-count > 0, say "Your pussy juices mix in with the [if pussy-count is 1]stuff that's already there[otherwise]others[end if], thickening the film of girl-slime around [NameDesc of DL][']s [DickDesc of DL].";
				otherwise say "Your [vagina] slowly coats [NameDesc of DL][']s [DickDesc of DL] in its juices.";
				increase pussy-count by 1;
				FuckCount;
				HappinessUp entry 1 in LST; [she's happy she's been given the option of vag]
			otherwise if player-numerical-response is 3:
				now DL is penetrating asshole;
				add asshole to LB, if absent;
				increase enthusiasm by the anal sex addiction of the player;
				say "You [if enthusiasm < 4]hesitantly[otherwise if enthusiasm < 8]gingerly[otherwise]excitedly[end if] clamber on top of [NameDesc of DL], before spreading yourself with two fingers and guiding [his of DL] [DickDesc of DL] into your [asshole]. ";
				increase stimulation-level by 5 - ((the openness of asshole + a random number between 1 and 4) / 3);
				if enthusiasm > a random number between 4 and 7:
					say "You ride [him of DL] for all you're worth, bouncing on top of [him of DL] wildly, the tip of [his of DL] [DickDesc of DL] repeatedly bashing hard against the deepest recesses of your [asshole].";
					increase stimulation-level by 2;
					ruin asshole times 2;
				otherwise:
					say "You ride [him of DL] delicately, using your hands to balance yourself around [his of DL] loins and avoid accidentally falling and putting your full weight on [his of DL] [DickDesc of DL] and your [asshole].";
					ruin asshole;
				humiliate 25;
				if ass-count > 0, say "Your ass sweat mixes in with the [if ass-count > 0 and pussy-count > 0]ass and pussy juice that's already there[otherwise if pussy-count > 1]recent helpings of pussy juice[otherwise if pussy-count > 0]pussy juice[otherwise if ass-count > 1][ass-count] traces already there[otherwise]small amounts that are already there from someone else[end if], to create an even nastier concoction for whoever next puts this [DickDesc of DL] in their mouth.";
				otherwise say "Whoever next puts this [DickDesc of DL] in their mouth is going to be able to taste your ass on it.";
				increase ass-count by 1;
				AnalCount;
			otherwise if player-numerical-response is 4:
				now DL is penetrating breasts;
				add breasts to LB, if absent;
				increase enthusiasm by the titfuck addiction of the player;
				say "You [if enthusiasm < 4]hesitantly[otherwise if enthusiasm < 8]gingerly[otherwise]happily[end if] take the waiting [DickDesc of DL] in between your [ShortDesc of breasts]. ";
				if the titfuck addiction of the player > a random number between 4 and 7:
					say "Your skill and comfort with masturbating a [DickDesc of DL] with your breasts is made apparent as you use your hands to rub the thick shaft with an enthusiastically fast rhythm and high pressure. ";
					increase stimulation-level by 1;
				otherwise:
					say "You move your body up and down, gently stroking the shaft with your soft flesh. ";
				increase stimulation-level by (the largeness of breasts + a random number between 1 and 4) / 6;
				humiliate 25;
				stimulate breasts;
				repeat with ST running through nasty students in the location of the player:
					HappinessDown ST by 1;
					say "[speech style of ST]'[one of]Show-off.'[or]Do you think you're better than me just because you have big tits?'[or]That's not fair!'[or]Coward, use your holes like the rest of us!'[at random][roman type][line break]";
			otherwise:
				increase stimulation-level by 1;
				increase enthusiasm by the sex addiction of the player;
				if a random number between 7 and 13 < enthusiasm:
					say "You stroke [NameDesc of DL][']s [DickDesc of DL] and head with both your hands, filling the room with a steady 'schlick schlick schlick' sound.";
					if the player is a pervert, increase stimulation-level by 1;
				otherwise:
					say "You slowly stroke [NameDesc of DL][']s shaft with one hand.";
				repeat with ST running through students in the location of the player:
					if the dedication of ST > a random number between 0 and 2, HappinessDown ST by 1;
				increase enthusiasm by 10; [the player can always pretend to be enjoying this]
			if enthusiasm < 4:
				say "[BigNameDesc of TL] shakes [his of TL] head.[line break][speech style of TL]'[one of]Wrong, wrong, wrong! It looks like you hate doing that. I don't care what you actually feel inside, you need to be able to put on a slutty grin and act like you love it. Take this as punishment[or]You still look like you hate it. You need another punishment. Take this[stopping]!'[roman type][line break]";
				if player-numerical-response is 4:
					say "[BigNameDesc of TL] touches your [BreastDesc], causing them to grow!";
					BustUp 2;
				otherwise if player-numerical-response is 1 and the lips of face < max lip size:
					say "[BigNameDesc of TL] touches your [LipDesc], causing them to grow!";
					LipsUp 1;
					say "You now have [LipDesc].";
				otherwise:
					say "[BigNameDesc of TL] plants an outstretch hand on your [AssDesc] with a loud THWACK!";
					PainUp 10;
		decrease cum-countdown by stimulation-level;
		TimesSubmittedUp (DL) by 1;[Each time you perform a sex act on him, it counts as one instance of submissive sex]
		if total-fuck-turns is 0:
			say "Getting to choose how you fuck [him of DL] has made you feel more dominant!";
			SilentlyDelicateDown 1;
		increase total-fuck-turns by 1;
		if cum-countdown <= 0:
			say "[speech style of DL]'Yes, yes, YES!!!'[roman type][line break][BigNameDesc of DL] orgasms and [his of DL] [DickDesc of DL] erupts!";
			if DL is penetrating an orifice:
				say "Your [variable a random orifice penetrated by DL] gets filled!";
				if DL is penetrating vagina, PussyFill the semen load of DL;
				if DL is penetrating asshole, AssFill the semen load of DL;
				if DL is penetrating face, StomachSemenUp the semen load of DL;
			if DL is penetrating breasts:
				say "Your [ShortDesc of breasts] get drenched in [semen]!";
				AnnouncedSquirt semen on breasts by the semen load of DL;
				BreastsSensitivityUp 1;
			orgasm DL;
		otherwise:
			if DL is penetrating face and player-filthiness > 0:
				say "[speech style of DL]'That's right, swallow it all you [one of]filthy pig[or]nasty cumdump[or]human vacuum cleaner[in random order]!'[roman type][line break][BigNameDesc of DL] passionately degrades you between moans of approval.[line break][speech style of DL]'Okay STOP! Next in line, get going, quickly!'[roman type][line break]";
			otherwise:
				say PracticalAssessment of DL to stimulation-level with cum-countdown;
		dislodge DL;
		repeat with M running through LST:
			if cum-countdown > 0:
				now stimulation-level is 0;
				let VagChance be 9;
				if a2m fetish is 0, now VagChance is 14;
				if a random number between 1 and (7 + ((ass-count + ass-count + pussy-count) * 2) - the practical dirtiness of M) is 1 and M is promotable:
					if the remainder after dividing the lessonInt1 of M by 2 is 0, increase the lessonInt1 of M by 1; [set bit 1 to 1]
					say "[BigNameDesc of M] [one of]moves [his of M] face up to[or]approaches[in random order] [NameDesc of DL][']s crotch and takes [his of DL] [LongDickDesc of DL] into [his of M] mouth. [big he of M] [one of]audibly gags[or]chokes on the length[or]makes rather lewd glugging sounds[in random order] as [he of M] tries to get as much as possible of it into [his of M] [one of]tiny mouth[or]delicate throat[or]gullet[in random order], and [one of]slurp up[or]suck away[in random order] all the [if ass-count > 0]disgusting [end if]juices. After a short while of moving [his of M] head up an down, you hear [him of M] gulp[if a2m fetish >= 2] as [he of M] swallows whatever is sloshing around in [his of M] mouth[end if]. [if ass-count > 0]After [he of M] pulls away, you see [him of M] wipe [his of M] tongue with disgust. [end if][big his of M] saliva still coats [NameDesc of DL][']s [DickDesc of DL].";
					if ass-count + pussy-count > student-filthiness:
						now filthiest-student is M;
						now student-filthiness is ass-count + ass-count + pussy-count;
					now ass-count is 0;
					now pussy-count is 0;
					now slobber-owner is M;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if ass-count is 0 and M is female and lady fetish < 2 and a random number between 1 and (20 - the practical dirtiness of M) <= VagChance:
					if the remainder after dividing the lessonInt1 of M by 4 < 2, increase the lessonInt1 of M by 2; [set bit 2 to 1]
					say "[BigNameDesc of M] crouches above [NameDesc of DL] before carefully lowering [his of M] spread pussy onto [NameDesc of DL][']s [one of]waiting shaft[or]rock hard rod[or]thick [LongDickDesc of DL][in random order]. [big he of M] [one of]audibly moans as [he of M] rocks back and forth[or]goes a bit red in the face as [he of M] repeatedly rides up and down the whole length[or]hardly moves at all before [he of M] mewls in a high pitched voice and loses control of [his of M] shuddering body as [he of M] cums hard. This leaves [him of M] panting and collapsed on top of [NameDesc of DL], that [LongDickDesc of DL] still fully embedded inside of [him of M][or]tries to clench [his of M] vaginal muscles as [he of M] rides up and down, to make it tighter for [NameDesc of DL][or]silently thrusts [his of M] hips back and forth, taking on the role of the obedient cowgirl[or]grinds down onto the [DickDesc of DL] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] teacher[or]quickly gets to bouncing up and down with a steady, smooth rhythm[in random order].";
					increase pussy-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if a2m fetish > 0 and a random number between 1 and (20 - the practical dirtiness of M) <= 10:
					if the remainder after dividing the lessonInt1 of M by 8 < 4, increase the lessonInt1 of M by 4; [set bit 3 to 1]
					say "[BigNameDesc of M] crouches above [NameDesc of DL] before [one of]carefully lowering[or]roughly impaling[or]slowly pushing[in random order] [his of M] [one of]tight little asshole[or]slightly open asshole[or]butthole[in random order] onto [NameDesc of DL][']s [one of]massive beast[or]long hard shaft[or]waiting dong[in random order]. [big he of M] [one of]audibly whimpers as [he of M] moves [his of M] hips back and forth[or]holds [his of M] breath as [he of M] uses [his of M] thigh muscles to ride up and down the whole length[or]grinds up and down, forward and back for several seconds before suddenly wailing as a sudden anal orgasm wracks [his of M] entire body, causing [him of M] to collapse onto of [NameDesc of DL], the still fully-hard [DickDesc of DL] managing to slither its way out of [his of M] butthole with a loud slurp[or]tries to use [his of M] butt muscles to massage [NameDesc of DL][']s [DickDesc of DL] in an almost sensual display[or]somehow makes very loud and wet slapping noises as [his of M] butt rapidly rises and falls on top of [NameDesc of DL][or]grinds down onto the [DickDesc of DL] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] teacher with [his of M] tight butthole[or]fucks it at a good steady pace, using [his of M] arms and hands to help balance [himself of M] as [he of M] moves up and down[in random order].";
					increase ass-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise:
					say "[BigNameDesc of M] takes [NameDesc of DL][']s [DickDesc of DL] in [if the practical dirtiness of M > 2]both of [his of M] hands[otherwise]one hand[end if] and [one of]gives it long, slow strokes[or]short fast strokes[or]skilful twisting strokes[or]delicate strokes with two fingers, focusing on the head[or]fast tight-gripped pumps[in random order].";
					increase stimulation-level by 1;
				decrease cum-countdown by stimulation-level;
				if cum-countdown <= 0 and M is not promotable, now cum-countdown is 1;
				if cum-countdown <= 0:
					say "[speech style of DL]'Ugh, that's it, it's coming, COMING!!!'[roman type][line break][BigNameDesc of DL] bucks [his of DL] hips as [he of DL] orgasms! ";
					now victorious-student is M;
				otherwise:
					say PracticalAssessment of DL to stimulation-level with cum-countdown;
	say "[if victorious-student is the player]You have[otherwise][BigNameDesc of victorious-student] has[end if] won! ";
	say "[BigNameDesc of DL] stands up and adjusts [his of DL] clothes.[line break][speech style of DL]'Yes, yes, well done, you nasty slut.'[roman type][line break]";
	if victorious-student is the player:
		say "[big he of DL] waves a hand in your direction.";
		now armband is pure diamond;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Foxxxy";
		now the armband-print of armband is "first-class fuckdoll";
		say ClothingDesc of armband;
	otherwise:
		promote victorious-student;
	if player-filthiness > student-filthiness:
		if victorious-student is the player:
			say "[BigNameDesc of DL] yawns, but it's unclear if this is because [he of DL][']s bored or because [he of DL] just came so hard.[line break][speech style of DL]'[NameBimbo] was also the filthiest slut by far, so nobody else gets promoted today. Too bad!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of DL] 'hmm's as [he of DL] thinks.[line break][speech style of DL]'[NameBimbo] was the filthiest slut today, so [he of the player] gets promoted too.'[roman type][line break]";
			now armband is pure diamond;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Foxxxy";
			now the armband-print of armband is "filthy facefucker";
			say ClothingDesc of armband;
	otherwise:
		if victorious-student is filthiest-student:
			say "[BigNameDesc of DL] yawns, but it's unclear if this is because [he of DL][']s bored or because [he of DL] just came so hard.[line break][speech style of DL]'[student-name of victorious-student] was also the filthiest slut by far, so nobody else gets promoted today for that. Too bad!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of DL] [']hmm's as [he of DL] thinks.[line break][speech style of DL]'[student-name of filthiest-student] was the filthiest slut today, so [he of the filthiest-student] gets promoted too.'[roman type][line break]";
			promote filthiest-student;
	repeat with M running through LST:
		now the lessonInt2 of M is 0;
		if the remainder after dividing the lessonInt1 of M by 2 is 1, increase the lessonInt2 of M by 1; [she used her mouth at some point]
		if the remainder after dividing the lessonInt1 of M by 4 >= 2, increase the lessonInt2 of M by 1; [she used her vagina at some point]
		if the remainder after dividing the lessonInt1 of M by 8 >= 4, increase the lessonInt2 of M by 1; [she used her asshole at some point]
	sort LST in reverse lessonInt2 order;
	let M be entry 1 in LST;
	if the number of entries in LB > the lessonInt2 of M or (the number of entries in LB is the lessonInt2 of M and a random number between 1 and 2 is 1), now M is the player;
	if M is victorious-student or M is filthiest-student:
		say "[speech style of DL]'[if M is student][student-name of M][otherwise][NameBimbo][end if] was also the slut who used the most body parts, so nobody else gets promoted today. So sad!'[roman type][line break]";
	otherwise:
		say "[speech style of DL]'[if M is student][student-name of M][otherwise][NameBimbo][end if] was the slut who used the most body parts!'[roman type][line break]";
		if M is student:
			promote M;
		otherwise:
			now armband is pure diamond;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Fanny";
			now the armband-print of armband is "[if the player is possessing a vagina]three[otherwise]two[end if]-hole fuckdoll";
			say ClothingDesc of armband;
	if M is the player:
		repeat with ST running through LST:
			if the current-rank of ST < 4 and the lessonInt2 of ST is the number of entries in LB:
				if ST is not amicable student, say "[one of][BigNameDesc of ST] whines to the teacher.[line break][speech style of ST]'But I used the same number of holes! It's not fair!'[roman type][line break][or][stopping]";
				HappinessDown ST;
	update students; [an important line which makes boring old students disappear and new cool ones appear]
	distract DL;
	say "[BigNameDesc of DL] closes [his of DL] eyes and lazily stretches [his of DL] arms.[line break][speech style of DL]'Yep, I'm done.'[roman type][line break][BigNameDesc of TL] smiles.[line break][speech style of TL]'Great job everyone. Class dismissed!'[roman type][line break]".

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
		say "Okay STOP! [one of]Your time's up. Now head to the back of the line, and the next girl at the front of the queue, you're up.'[or]Head to the back, you'll get another turn soon.'[or]That's it, keep the line moving. You're getting the idea.'[or]Next one, let's go.'[or]Next please!'[or]Next [slut]!'[stopping][roman type][line break][BigNameDesc of M] [one of]barks [his of M] commands with controlled authority[or]lies back and waits patiently[or]stays horizontal as [he of M] tells everyone what to do[or]snaps [his of M] fingers as [he of M] finishes speaking[or]licks [his of M] lips and smiles[or]remains rock hard as [he of M] waits[in random order].";

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


Part - Swimming Lesson

swimming-lesson is a lesson. The lesson-teacher of swimming-lesson is teacher-hyacinthe.

Definition: swimming-lesson is lesson-appropriate:
	if diaper quest is 0 and the number of alive lesson-appropriate students > 0, decide yes;
	decide no. [There must be another student]

To decide which number is the swimming-strength of (M - a student):
	decide on the dedication of M.

To compute teaching of (L - swimming-lesson):
	allocate 40 seconds;
	now bigGameLoop is 3; [tells the game not to refresh any windows]
	let M be the lesson-teacher of L;
	say "[BigNameDesc of M] guides you all to the diving board next to the deep end of the swimming pool.";
	repeat with N running through monsters in School22: [Clear out the stand of unnecessary NPCs]
		now N is in School02;
	repeat with N running through monsters in School20: [Clear out the swimming pool of unnecessary NPCs]
		now N is in School02;
	repeat with N running through monsters in the location of M:
		now N is in School20;
	now School22 is discovered;
	now School20 is discovered;
	now School19 is discovered;
	now the player is in School20;
	let LST be the list of students in School20;
	say "[speech style of M]'I'm sure you've been wondering what we use this pool for. Well, it works very well as a test of will. [if the number of entries in LST > 0]Each of you has[otherwise]You have[end if] your promotion waiting for you, at the bottom of this pool.'[roman type][line break][BigNameDesc of M] produces a [if there is a student in the location of the player]set of weighted balls, each with one of your names on it, and launches them[otherwise]weighted ball and launches it[end if] into the pool, where it quickly disappears towards the bottom of the creamy goop.[line break][speech style of M]'There will be race from the far end of the swimming pool, the deep end, back to this end here. You don't HAVE to take part - nobody's forcing you to do anything in this school. Everyone is allowed to take one weight out of the pool with them. You can't go back in once you get out. Whoever's name is on a weight that's not in the pool at the end of the race, gets promoted. After a minute or two, there'll be a fun... [']event['] that'll affect everyone who's still in the pool. After that, nobody else still waiting here will be allowed to get in the pool.[roman type][line break]";
	let SM be a random off-stage fetish appropriate string monokini;
	if the class of the player is adventurer and SM is clothing:
		now SM is in the location of the player;
		say "[BigNameDesc of M] produces a set of super-slutty swimming outfits:[line break][FullExamineDesc of SM][speech style of M]'Did you know? In this world, wearing a swimming outfit massively increases your ability to swim. Crazy, but true. So, anyone who wants to change into one of these is welcome to. But, you should be aware, you won't be allowed to wear any other clothes, and they're covered in glue so might take you time to get them off. So... who wants one?'[roman type][line break]Take a [ShortDesc of SM]? ";
		if the player is consenting:
			say "[if there is worn cursed nudism-disabling clothing or there is worn locked nudism-disabling clothing or there is worn glued nudism-disabling clothing][BigNameDesc of M] helps you remove all your clothing. [otherwise if there is worn nudism-disabling removable clothing]You remove all your clothing. [end if]";
			repeat with C running through worn nudism-disabling removable clothing:
				unless C is armband or C is bag of holding or C is plentiful accessory or C is headgear, now C is in the location of the player;
			summon SM uncursed;
			gluify SM;
			say "You put on [NameDesc of SM], and feel the glue sealing it to your skin.";
			force immediate clothing-focus redraw;
	say "[BigNameDesc of M] gets you to line up in front of the edge of the pool.[line break][speech style of M]'On your marks, get set, GO!'[roman type][line break]";
	let playerDistance be 0; [How far has the player travelled in the pool?]
	let playerWeight be 0; [What is the ID of the weight held by the player?]
	let LInPool be a list of people; [Who's currently in the pool?]
	let LCumBlinded be a list of people; [Who has dipped their head down under the cum and therefore can't see much any more?]
	let LOutOfPool be a list of people; [In order, who has left the pool?]
	let LWeights be the list of students in the location of the player; [List of weights with everyone's name on. Static]
	let eventTimer be a random number between 7 and 11;
	add yourself to LWeights;
	sort LWeights in random order;
	let NWeights be the number of entries in LWeights;
	repeat with ST running through LST:
		now lessonInt1 of ST is 0; [student's distance through the cum pool]
		now lessonInt2 of ST is 0; [ID of weight grabbed by the student]
	let semenAddictionCounter be 0; [Used to make semen addiction go up periodically]
	let poolCrazyEvent be 0; [When the first player gets out of the pool, this flags that a crazy event takes place.]
	let CPS be a random worn condom pinnable swimsuit; [Used as the target for the swimming condoms event]
	if CPS is nothing, now CPS is a random worn condom pinnable clothing;
	let raceOver be 0;
	while raceOver is 0:
		let LDivers be a list of people; [Who is trying to use the diving board this turn?]
		let LWeightDivers be a list of people; [Which people are about to dive for a weight?]
		if playerDistance is 0 and eventTimer > 0:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "lower yourself into the pool";
			set numerical response 2 to "dive into the pool from the diving board";
			set numerical response 3 to "wait";
			compute multiple choice question;
			if player-numerical-response is 1:
				say "You ease yourself into the pool, ensuring that your chin remains above the surface of the [semen].";
				now playerDistance is 1;
				add the player to LInPool;
				compute cum pool coating;
				trigger swim-wisp-quest;
			otherwise if player-numerical-response is 2:
				add the player to LDivers;
			otherwise:
				say "You hold back for now.";
		otherwise if the player is listed in LInPool: [Player swimming block]
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			if playerDistance >= 10, set next numerical response to "Get out of the pool!";
			otherwise set next numerical response to "swim towards the shallow end[one of] (once you go too far, you won't be able to pick up a new weight)[or][stopping]";
			if yourself is listed in LCumBlinded, set next numerical response to "wipe the cum from your eyes";
			if playerDistance < 5:
				say "[one of]Due to the slant at the bottom of the pool, you know that all the weights are at the bottom of the deepest few metres of the pool.[or][stopping]";
				let TXT be "";
				if playerWeight > 0:
					let WeightName be entry playerWeight of LWeights;
					now TXT is " (dropping the weight with [if WeightName is yourself]your[otherwise][NameDesc of WeightName][']s[end if] name back into the [semen] pool)";
				set next numerical response to "dive for a weight[TXT]";
			otherwise:
				say "[one of][bold type]You've now gone too far away from the deep end of the pool to have a chance to find a weight below you.[roman type][line break][or][stopping]";
			if playerWeight > 0:
				let WeightName be entry playerWeight of LWeights;
				set next numerical response to "drop the weight with [if WeightName is yourself]your[otherwise][NameDesc of WeightName][']s[end if] name back into the [semen] pool";
			set next numerical response to "wait";
			compute multiple choice question;
			let CNR be the chosen numerical response;
			if the CNR matches the text "swim":
				let D be a random number between 1 and ((the dexterity of the player / 10) + (the number of worn swimming themed wearthing * 2));
				if D > 1 and playerWeight > 0, decrease D by 1;
				say "You make [if D <= 1]slow[otherwise if D is 2]decent[otherwise if D is 3]excellent[otherwise]rapid[end if] progress towards the shallow end[if playerWeight > 0], [one of]hampered by the heavy weight in your hand[or]slowed down by the weight[purely at random][end if].";
				increase playerDistance by D;
				if playerDistance >= 10, say "[bold type]You make it to the end of the pool![roman type][line break]";
			otherwise if the CNR matches the text "wipe":
				say "You spend some time clearing the thick goop from your eyes so you can see more clearly again.";
				remove yourself from LCumBlinded;
				now the semen coating of face is 8; [greater than 8 causes the cum blinded status icon]
			otherwise if the CNR matches the text "dive":
				add yourself to LWeightDivers;
			otherwise if the CNR matches the text "drop":
				let WeightName be entry playerWeight of LWeights;
				say "You drop [if WeightName is yourself]your[otherwise][NameDesc of WeightName][']s[end if] weight back into the pool, freeing your hands.";
				if WeightName is student:
					if WeightName is listed in LCumBlinded, say "[BigNameDesc of WeightName] doesn't seem to notice that you've dropped [his of WeightName] weight, probably because of all the sticky [semen] plastered across [his of WeightName] eyes.";
					otherwise HappinessDown WeightName by 2; [If they can see, they're upset that you've dropped the weight back down]
				now playerWeight is 0;
			otherwise if the CNR matches the text "Get out":
				remove yourself from LInPool;
				add yourself to LOutOfPool;
				say "You heave yourself out of the pool[if yourself is listed in LCumBlinded] and begin wiping the [semen] from your eyes[end if].";
				if yourself is listed in LCumBlinded, remove yourself from LCumBlinded;
				if playerWeight > 0:
					let friendWeight be entry playerWeight in LWeights;
					if friendWeight is a student, HappinessUp friendWeight by 3;
		sort LST in random order;
		repeat with ST running through LST:
			if the lessonInt1 of ST is 0 and eventTimer > 0: [they haven't jumped in yet]
				if a random number between 0 and 8 <= the dedication of ST: [They jump in]
					if a random number between 0 and 4 <= the dedication of ST: [They want to use the diving board]
						add ST to LDivers;
					otherwise:
						say "[BigNameDesc of ST] runs to the edge of the pool, and [one of]with only a moment's hesitation, [or]after a brief pause, [or]immediately [at random]jumps into the pool of [semen].";
						increase the lessonInt1 of ST by 1;
						add ST to LInPool;
			otherwise if ST is listed in LInPool: [they're in the pool already]
				if the lessonInt2 of ST is 0 and the lessonInt1 of ST < 4 and a random number between 0 and 5 <= the dedication of ST:
					add ST to LWeightDivers;
				otherwise if the lessonInt1 of ST >= 10: [Student considers getting out of the pool]
					if the number of entries in LOutOfPool > 0 or a random number between 0 and the dedication of ST is 0: [It's bad to be the first one out]
						say "[BigNameDesc of ST] heaves [himself of ST] out of the pool.";
						remove ST from LInPool;
						add ST to LOutOfPool;
						if ST is listed in LCumBlinded, remove ST from LCumBlinded;
					otherwise:
						say "[BigNameDesc of ST] [one of]is at the end of the pool but doesn't get out yet[or]hovers at the end of the pool, but doesn't get out yet[or]decides not to get out of the pool yet[then at random].";
				otherwise:
					let WeightName be ST;
					if the lessonInt2 of ST > 0, now WeightName is entry (lessonInt2 of ST) of LWeights;
					if ST is listed in LCumBlinded and a random number between 0 and the dedication of ST is 0:
						say "[BigNameDesc of ST] stops to wipe some [semen] from [his of ST] eyes.";
						remove ST from LCumBlinded;
					otherwise if (WeightName is not ST and a random number between 1 and 5 < the vindictiveness of ST) or (WeightName is yourself and ST is unfriendly):
						say "[BigNameDesc of ST] suddenly stops and [bold type]decides to drop [if WeightName is yourself]your[otherwise][NameDesc of WeightName][']s[end if] [bold type]weight back in the pool![if WeightName is yourself][line break][variable custom style]Shit![end if][roman type][line break]";
						now the lessonInt2 of ST is 0;
					otherwise:
						let SWIM be a random number between 1 and the swimming-strength of ST;
						if SWIM > 1 and the lessonInt2 of ST > 0, decrease SWIM by 1;
						say "[BigNameDesc of ST] swims towards the shallow end of the pool. [big he of ST] [if SWIM is 1][one of]doesn't get too far[or]only manages to progress by a couple of metres[or]makes poor progress[at random].[otherwise if SWIM is 2][one of]makes impressive progress[or]manages to travel a few metres[or]successfully makes decent progress[at random].[otherwise]makes incredible progress![end if]";
						increase the lessonInt1 of ST by SWIM;
						if the lessonInt1 of ST >= 10, say "[big he of ST] reaches the end of the pool.";
		[Now we handle all the people going for the diving board at the same time]
		let NDivers be the number of entries in LDivers;
		if NDivers > 1:
			let NList be NDivers;
			if the player is listed in LDivers:
				decrease NList by 1;
				repeat with PX running through LDivers:
					if PX is student:
						decrease NList by 1;
						say "[NameDesc of PX][if NList > 1], [otherwise if NList is 1] and [end if]";
				say " [if NDivers is 2]is[otherwise]are[end if] going for the diving board at the same time as you! Do you hold back? ";
				if the player is consenting, remove yourself from LDivers;
			otherwise:
				repeat with PX running through LDivers:
					decrease NList by 1;
					say "[NameDesc of PX][if NList > 1], [otherwise if NList is 1] and [end if]";
				say " are going for the diving board at the same time as each other!";
		let LActualDivers be a list of people; [We can't remove items from a list while iterating through it, or bad things happen with pointers, so the best way is to create a new list]
		repeat with PX running through LDivers:
			if PX is yourself:
				add PX to LActualDivers;
			otherwise:
				if a random number between 0 and 4 <= the dedication of PX, add PX to LActualDivers;
				otherwise say "[BigNameDesc of PX] [one of]hesitates[or]holds back[at random].";
		if the number of entries in LActualDivers > 1:
			if yourself is listed in LActualDivers:
				say "You sprint for the diving board, but ";
				let NStudentDivers be the number of entries in LActualDivers - 1;
				repeat with PX running through LActualDivers:
					if PX is student:
						decrease NStudentDivers by 1;
						say "[NameDesc of PX][if NStudentDivers > 1], [otherwise if NStudentDivers is 1] and [end if]";
				say " also [if the number of entries in LActualDivers is 2]tries[otherwise]try[end if] to dive off of the board at the same time! You [if the number of entries in LActualDivers is 2]all [end if]crash into each other and fall into the pool at the deep end, gaining no ground and getting completely submerged in the [semen]!";
				repeat with PX running through LActualDivers:
					add PX to LInPool, if absent;
					if PX is student:
						now the lessonInt1 of PX is 1;
						add PX to LCumBlinded;
						HappinessDown PX by 3;
					otherwise:
						now playerDistance is 1;
						add yourself to LCumBlinded;
						compute cum pool coating;
						compute cum pool face coating;
				trigger swim-wisp-quest;
			otherwise:
				let NStudentDivers be the number of entries in LActualDivers;
				repeat with PX running through LActualDivers:
					decrease NStudentDivers by 1;
					say "[NameDesc of PX][if NStudentDivers > 1], [otherwise if NStudentDivers is 1] and [end if]";
				say " [if the number of entries in LActualDivers > 2]all [end if]try to dive off of the board at the same time! You cringe as they crash into each other and fall into the pool at the deep end together, gaining no ground and getting completely submerged in the [semen]!";
				repeat with PX running through LActualDivers:
					add PX to LInPool, if absent;
					now the lessonInt1 of PX is 1;
					add PX to LCumBlinded;
		otherwise if the number of entries in LActualDivers > 0:
			let PX be entry 1 in LActualDivers;
			if PX is yourself:
				say "You gracefully jump off of the diving board, managing to get about a third of the way across the length of the pool before plummeting into the warm [semen]. Your body is instantly coated with the [if the semen addiction of the player < 7]disgusting[otherwise if the semen addiction of the player < 14]goopy[otherwise]glorious[end if] stuff. As you sink through it, your hands manage to clasp around a weight!";
				now playerDistance is 4;
			otherwise:
				say "[BigNameDesc of PX] launches off of the diving board, gaining a huge amount of distance, before disappearing beneath the surface!";
				now the LessonInt1 of PX is 4;
			add PX to LWeightDivers;
			add PX to LInPool, if absent;
			if PX is the player, compute cum pool coating;
		repeat with ST running through LWeightDivers:
			if ST is listed in LActualDivers:
				if ST is yourself, say "You return to the surface, taking quick gasps of breath as you wipe the [semen] from your eyes in order to inspect the name on the weight.";
				otherwise say "[BigNameDesc of ST] comes back up quickly, [his of ST] face and hair now completely drenched in [semen]. [big he of ST] is holding a weight in [his of ST] hand.";
			otherwise:
				if ST is yourself:
					say "You flip your body downwards and [if the player is listed in LCumBlinded]once again [end if]submerge yourself in search of a weight. You quickly find one, returning to the surface to gasp for air and inspect your prize.";
					now playerWeight is 0;
				otherwise:
					say "[BigNameDesc of ST] dives for a weight! ";
					if ST is listed in LCumBlinded:
						say "[one of][big he of ST] has to spend some time wiping the [semen] away from [his of ST] eyes before [he of ST] can squint at the weight and try to read the name.[or][or][or][at random]";
					otherwise:
						say "[big he of ST] comes back up coughing and spluttering, [his of ST] face and hair now completely drenched in [semen].";
			add ST to LCumBlinded;
			if ST is the player, compute cum pool face coating;
			[This annoyingly complex block ensures that the diver picks up a weight that is not already held by another swimmer]
			if debugmode > 1:
				say "Complex bit starting now...";
				if the player is consenting, do nothing;
			if ST is the player:
				while playerWeight is 0:
					let playerWeight be a random number between 1 and NWeights;
					repeat with XST running through students in the location of ST:
						if the playerWeight is lessonInt2 of XST, now playerWeight is 0; [can't grab the same weight that someone else is already holding]
			otherwise:
				while lessonInt2 of ST is 0:
					now lessonInt2 of ST is a random number between 1 and NWeights;
					repeat with XST running through people in the location of ST:
						if XST is not ST:
							if XST is student:
								if the lessonInt2 of ST is lessonInt2 of XST, now the lessonInt2 of ST is 0; [can't grab the same weight that someone else is already holding]
							otherwise if XST is the player:
								if the lessonInt2 of ST is playerWeight, now the lessonInt2 of ST is 0; [can't grab the same weight that the player is already holding]
			let WeightNameEntry be playerWeight;
			if ST is student, now WeightNameEntry is lessonInt2 of ST;
			let WeightName be entry WeightNameEntry of LWeights;
			if the player is listed in LCumBlinded and ST is not the player, say "[one of]There's too much [semen] in your eyes for you to be able to see what name is on the weight at this distance[or]You can't see the name[stopping].";
			otherwise say "It has [if WeightName is yourself]your[otherwise][NameDesc of WeightName][']s[end if] name on it!";
			if ST is student and ((WeightName is not ST and a random number between -1 and 2 < the vindictiveness of ST) or (WeightName is yourself and ST is unfriendly)):
				say "[big he of ST] drops it back in!";
				now the lessonInt2 of ST is 0;
		decrease eventTimer by 1;
		if eventTimer is 0 and the number of entries in LInPool > 0: [Something crazy happens.]
			say "[bold type]Suddenly the lights turn red and a loud klaxon starts blaring. The timed event that [teacher-name of M] talked about is happening![roman type][line break]";
			if condom fetish >= 2 and CPS is clothing and a random number between 1 and 4 > 1: [Swimming condoms]
				now poolCrazyEvent is 2;
				say "And then it happens: A sea of unused condoms, not in wrappers, rain from the ceiling. They land in the pool all over, and then begin swimming blindly around like leeches, filling up with [semen] from the pool as they move. ";
				if yourself is listed in LInPool and the number of entries in LInPool is 1: [Player is the only person in the pool]
					say "One quickly finds itself bumping into you, where it immediately latches onto your [ShortDesc of CPS]! You try to pull it off, but it's stuck there now, magically pinned in place![line break][variable custom style]Uh-oh...[roman type][line break]";
				otherwise:
					let CondomTarget be entry 1 of LInPool;
					if CondomTarget is yourself, now CondomTarget is entry 2 of LInPool;
					say "You watch as one bumps into [NameDesc of CondomTarget], and immediately latches onto [his of CondomTarget] outfit! [big he of CondomTarget] tries to pull it off, but it's stuck there, refusing to budge! [big he of CondomTarget] now has a used condom permanently attached to [his of CondomTarget] outfit!";
					if yourself is listed in LOutOfPool, HappinessDown CondomTarget;
				say "[bold type]It seems like from now on, [if yourself is listed in LInPool]you [end if][if yourself is listed in LInPool and the number of entries in LInPool > 1]and [end if][if the number of entries in LInPool > 2 or (the number of entries in LInPool > 1 and yourself is not listed in LInPool)]the other swimmers [otherwise if yourself is not listed in LInPool][NameDesc of entry 1 in LInPool][bold type] [end if]will have to evade swimming condoms or get covered in them![roman type][line break]";
			otherwise: [Sudden gape]
				now poolCrazyEvent is 3;
				if yourself is listed in LInPool:
					say "And then it happens. Suddenly your [if the player is possessing a vagina][vagina] and [asshole] are[otherwise][asshole] is[end if] forced open to an insane width, as if a magical invisible speculum was just opened up inside. A strong current of [semen] rushes inside, rapidly filling you to the brim![line break][variable custom style]What the fuck?![roman type][line break][if the number of entries in LInPool > 1]A brief look around tells you that the same thing has happened to the other [end if][if the number of entries in LInPool > 2]students too.[otherwise if the number of entries in LInPool > 1]student too.[end if]";
					if the player is possessing a vagina, PussyFill 20;
					increase the semen volume of belly by 25;
				otherwise:
					say "[if the number of entries in LInPool > 1]The students suddenly start[otherwise][NameDesc of entry 1 in LInPool] starts[end if] screaming. You can't really tell what's going on, but it's clear that something is happening to their bottom half.";
		if poolCrazyEvent is 2:
			repeat with ST running through LInPool:
				if a random number between 1 and 2 is 1:
					if ST is yourself:
						say "A swimming condom connects with you and latches onto your [ShortDesc of CPS]![line break][variable custom style][one of]Shit![or]Not another one![or]I've got to get out of here![then at random][roman type][line break]";
						UsedCondomUp CPS by 1;
					otherwise:
						say "A swimming condom connects with [NameDesc of ST] and latches onto [his of ST] outfit!";
						[if entry 1 in LOutOfPool is yourself, HappinessDown ST;] [this only made sense when the event was triggered by the first person leaving the pool]
		if the player is listed in LInPool:
			decrease semenAddictionCounter by 1;
			if semenAddictionCounter <= 0:
				say "[one of]Your body can't help but react to the [semen] coating it. You shiver as you feel yourself becoming more accustomed to the feeling of being covered in [semen].[if the semen addiction of the player < 10][line break][variable custom style]No! I don't want to get used to this feeling! I've got to get out quickly![roman type][line break][end if][or]Your body continues to grow accustomed to the feeling of [semen].[stopping]";
				SlowSemenAddictUp 1;
				now semenAddictionCounter is (a random number between 1 and 2) + (a random number between 0 and 2) + the square root of the semen addiction of the player;
		if yourself is not listed in LOutOfPool: [List all the details of where everyone is]
			if the number of entries in LOutOfPool + the number of entries in LInPool < (the number of entries in LST + 1): [Some students haven't yet gone into the pool]
				say "[line break][bold type]Not yet in the pool:[roman type][line break]";
				if playerDistance is 0, say "You[line break]";
				repeat with ST running through LST:
					if ST is not listed in LInPool and ST is not listed in LOutOfPool, say "[BigNameDesc of ST][line break]";
			if the number of entries in LInPool > 0:
				let LPoolSection be a list of people;
				repeat with ST running through LInPool:
					if (ST is the player and playerDistance <= 4) or (ST is student and lessonInt1 of ST <= 4), add ST to LPoolSection;
				if the number of entries in LPoolSection > 0:
					say "[line break][bold type]Near the deep end of the pool:[roman type][line break]";
					repeat with ST running through LPoolSection:
						say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is student and lessonInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is student] ([lessonInt1 of ST], [end if][if debugmode > 0 and ST is student and lessonInt2 of ST > 0][NameDesc of entry (lessonInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is student]no weight)[end if][line break]";
				truncate LPoolSection to 0 entries;
				repeat with ST running through LInPool:
					if (ST is the player and playerDistance > 4 and playerDistance <= 7) or (ST is student and lessonInt1 of ST > 4 and lessonInt1 of ST <= 7), add ST to LPoolSection;
				if the number of entries in LPoolSection > 0:
					say "[line break][bold type]Near the middle of the pool:[roman type][line break]";
					repeat with ST running through LPoolSection:
						say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is student and lessonInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is student] ([lessonInt1 of ST], [end if][if debugmode > 0 and ST is student and lessonInt2 of ST > 0][NameDesc of entry (lessonInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is student]no weight)[end if][line break]";
				truncate LPoolSection to 0 entries;
				repeat with ST running through LInPool:
					if (ST is the player and playerDistance > 7) or (ST is student and lessonInt1 of ST > 7), add ST to LPoolSection;
				if the number of entries in LPoolSection > 0:
					say "[line break][bold type]Near the shallow end of the pool:[roman type][line break]";
					repeat with ST running through LPoolSection:
						say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is student and lessonInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is student] ([lessonInt1 of ST], [end if][if debugmode > 0 and ST is student and lessonInt2 of ST > 0][NameDesc of entry (lessonInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is student]no weight)[end if][line break]";
			if the number of entries in LOutOfPool > 0:
				say "[line break][bold type]Out of the pool:[roman type][line break]";
				repeat with ST running through LOutOfPool:
					say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is student and lessonInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is student] ([lessonInt1 of ST], [end if][if debugmode > 0 and ST is student and lessonInt2 of ST > 0][NameDesc of entry (lessonInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is student]no weight)[end if][line break]";
			say line break;
		if the number of entries in LOutOfPool > 0 and the number of entries in LInPool is 0, now raceOver is 1;
	let LWinners be a list of people;
	[repeat with ST running through LOutOfPool:
		add ST to LWinners;
	let STFirstOut be entry 1 in LWinners;
	let STLastOut be entry (the number of entries in LWinners) in LWinners;
	remove STFirstOut from LWinners;
	if STFirstOut is not STLastOut, remove STLastOut from LWinners;]
	repeat with PX running through monsters in the location of the player:
		now PX is in School22;
	now the player is in School22;
	say "[BigNameDesc of M] blows on a whistle.[line break][speech style of M]'Alright, that's the end of that! Good race! Let's see now...'[roman type][line break][BigNameDesc of M] looks around for which weights have been brought of the pool.";
	repeat with ST running through LOutOfPool:
		let WeightID be playerWeight;
		if ST is student, now WeightID is lessonInt2 of ST;
		let WeightName be M;
		if WeightID > 0, now WeightName is entry WeightID of LWeights;
		say "[speech style of M]'[BigNameDesc of ST][speech style of M] [if WeightName is M]didn't bring anybody's[otherwise if WeightName is ST]brought [his of ST] own[otherwise]brought [NameDesc of WeightName][speech style of M][']s[end if] weight out of the pool with [him of ST][if WeightName is not M and WeightName is not listed in LOutOfPool]. [otherwise].'[line break][end if]";
		if WeightName is not M and WeightName is not listed in LOutOfPool:
			say "And to think, [NameDesc of WeightName][speech style of M] didn't even get in the pool[if WeightName is the player]!'[roman type][line break][otherwise]! [end if]";
			if WeightName is the player:
				repeat with ST2 running through students in the location of the player:
					if ST is ST2, HappinessDown ST;
					otherwise FavourDown ST2;
		unless WeightName is M:
			add WeightName to LWinners, if absent;
	say "[speech style of M]'So... [if the number of entries in LWinners is 0]nobody gets promoted! Oh well!'[otherwise if the number of entries in LWinners is 1]only [NameDesc of entry 1 in LWinners][speech style of M] gets promoted today!'[otherwise]I have some promotions to hand out!'[end if][roman type][line break]";
	repeat with ST running through LWinners:
		if ST is student, promote ST;
	if the player is listed in LWinners:
		now armband is pure diamond;
		say "You watch as the ID card inside your armband transforms!";
		if the player is listed in LOutOfPool:
			now the armband-title of armband is "Porcelain";
			now the armband-print of armband is "cum-bath queen";
		otherwise:
			now the armband-title of armband is "";
			now the armband-print of armband is "dead weight";
		say ClothingDesc of armband;
		update students; [an important line which makes boring old students disappear and new cool ones appear]
	say "[BigNameDesc of M] licks [his of M] lips with satisfaction.[line break][speech style of M]'Class dismissed!'[roman type][line break]";
	now bigGameLoop is 0; [tells the game to refresh windows again]
	conclude consenting.


Part - Chess Stuff

The lesson-teacher of chess-lesson is teacher-hyacinthe.
chess-lesson has a number called chess-refused.
chess-lesson has a number called student-urine.
chess-lesson has a number called student-bowl-fill.
chess-lesson has a number called player-bowl-fill.
chess-lesson has a number called student-machine.
chess-lesson has a number called player-machine.
chess-lesson has a number called student-drink-tolerance.
chess-lesson has a number called student-orgasm.
chess-lesson has a number called player-bladder-penalty.

To decide which number is the girth of (C - chess table):
	decide on 3.
To decide which number is the stimulation of (T - chess table) on (F - a body part):
	if the chess-victor of chess-lesson > 0, decide on 8; [game is over, we're in punishment time]
	decide on the player-machine of chess-lesson * 6. [0 or 6 depending on fuck speed]

Definition: chess-lesson is lesson-appropriate:
	if there is worn locked clothing or there is worn glued clothing, decide no;
	if the chess-victor of it is 0 and the chess-refused of it is 0, decide yes;
	decide no.

Figure of chess table is the file "Env/School/chesstable2.jpg".

Figure of chess cutscene 1 is the file "Special/TQChess/playerwincum.jpg".
Figure of chess cutscene 2 is the file "Special/TQChess/playerwinpiss.jpg".
Figure of chess cutscene 3 is the file "Special/TQChess/playerlosscum.jpg".
Figure of chess cutscene 4 is the file "Special/TQChess/playerlosspiss.jpg".

To decide which figure-name is the examine-image of (C - chess table):
	if the chess-victor of chess-lesson is 0, decide on figure of chess table;
	if C is grabbing the player and the map-window is g-present and the focus-window is g-present, decide on figure of no-image-yet; [In this situation we put the image in the map window]
	decide on chess-table-image.

To decide which figure-name is chess-table-image:
	if the chess-victor of chess-lesson is 1:
		if watersports fetish is 1, decide on figure of chess cutscene 2;
		otherwise decide on figure of chess cutscene 1;
	otherwise:
		if watersports fetish is 1, decide on figure of chess cutscene 4;
		otherwise decide on figure of chess cutscene 3.

To say ExamineDesc of (C - chess table):
	if chess-victor of chess-lesson is 1:
		say "The chess table and bondage chair where [MediumDesc of chess-opponent of chess-lesson] is bound in place, a vibrator constantly pounding [his of chess-opponent of chess-lesson] pussy at a brutal rate of five thrusts a second, and a fishbowl full of [if watersports fetish is 1][urine][otherwise][semen][end if] taped to [his of chess-opponent of chess-lesson] head.";
	otherwise:
		say "The chess table and bondage chair where the infamous chess competitions are held[unless C is grabbing the player]. You remember it well[end if].".

Figure of ChessBaseCumLeft is the file "Special/TQChess/BaseCumLeft.jpg".
Figure of ChessBaseCumRight is the file "Special/TQChess/BaseCumRight.jpg".
Figure of ChessBasePissLeft is the file "Special/TQChess/BasePissLeft.jpg".
Figure of ChessBasePissRight is the file "Special/TQChess/BasePissRight.jpg".

Figure of ChessDripsCumLeft is the file "Special/TQChess/DripsCumLeft.png".
Figure of ChessDripsCumRight is the file "Special/TQChess/DripsCumRight.png".
Figure of ChessDripsPissLeft is the file "Special/TQChess/DripsPissLeft.png".
Figure of ChessDripsPissRight is the file "Special/TQChess/DripsPissRight.png".

Figure of ChessEyesCumLeft is the file "Special/TQChess/EyesCumLeft.png".
Figure of ChessEyesCumRight is the file "Special/TQChess/EyesCumRight.png".
Figure of ChessEyesPissLeft is the file "Special/TQChess/EyesPissLeft.png".
Figure of ChessEyesPissRight is the file "Special/TQChess/EyesPissRight.png".

Figure of ChessFullCumLeft is the file "Special/TQChess/FullCumLeft.png".
Figure of ChessFullCumRight is the file "Special/TQChess/FullCumRight.png".
Figure of ChessFullPissLeft is the file "Special/TQChess/FullPissLeft.png".
Figure of ChessFullPissRight is the file "Special/TQChess/FullPissRight.png".

Figure of ChessMouthCumLeft is the file "Special/TQChess/MouthCumLeft.png".
Figure of ChessMouthCumRight is the file "Special/TQChess/MouthCumRight.png".
Figure of ChessMouthPissLeft is the file "Special/TQChess/MouthPissLeft.png".
Figure of ChessMouthPissRight is the file "Special/TQChess/MouthPissRight.png".

Figure of ChessNoseCumLeft is the file "Special/TQChess/NoseCumLeft.png".
Figure of ChessNoseCumRight is the file "Special/TQChess/NoseCumRight.png".
Figure of ChessNosePissLeft is the file "Special/TQChess/NosePissLeft.png".
Figure of ChessNosePissRight is the file "Special/TQChess/NosePissRight.png".

Figure of ChessFuckLeft is the file "Special/TQChess/FuckLeft.png".
Figure of ChessFuckRight is the file "Special/TQChess/FuckRight.png".

To render chess state:
	truncate temporary-map-figures to 0 entries;
	if the chess-turn of chess-lesson is 1:
		if watersports fetish is 1, now temporary-map-figure is Figure of ChessBasePissLeft;
		otherwise now temporary-map-figure is Figure of ChessBaseCumLeft;
	otherwise:
		if watersports fetish is 1, now temporary-map-figure is Figure of ChessBasePissRight;
		otherwise now temporary-map-figure is Figure of ChessBaseCumRight;
	add temporary-map-figure to temporary-map-figures;
	if the student-bowl-fill of chess-lesson >= 12:
		if watersports fetish is 1, add Figure of ChessFullPissLeft to temporary-map-figures;
		otherwise add Figure of ChessFullCumLeft to temporary-map-figures;
	otherwise if the student-bowl-fill of chess-lesson >= 9:
		if watersports fetish is 1, add Figure of ChessEyesPissLeft to temporary-map-figures;
		otherwise add Figure of ChessEyesCumLeft to temporary-map-figures;
	otherwise if the student-bowl-fill of chess-lesson >= 6:
		if watersports fetish is 1, add Figure of ChessNosePissLeft to temporary-map-figures;
		otherwise add Figure of ChessNoseCumLeft to temporary-map-figures;
	otherwise if the student-bowl-fill of chess-lesson >= 3:
		if watersports fetish is 1, add Figure of ChessMouthPissLeft to temporary-map-figures;
		otherwise add Figure of ChessMouthCumLeft to temporary-map-figures;
	if the student-bowl-fill of chess-lesson > 0:
		if watersports fetish is 1, add Figure of ChessDripsPissLeft to temporary-map-figures;
		otherwise add Figure of ChessDripsCumLeft to temporary-map-figures;
	if the player-bowl-fill of chess-lesson >= 12:
		if watersports fetish is 1, add Figure of ChessFullPissRight to temporary-map-figures;
		otherwise add Figure of ChessFullCumRight to temporary-map-figures;
	otherwise if the player-bowl-fill of chess-lesson >= 9:
		if watersports fetish is 1, add Figure of ChessEyesPissRight to temporary-map-figures;
		otherwise add Figure of ChessEyesCumRight to temporary-map-figures;
	otherwise if the player-bowl-fill of chess-lesson >= 6:
		if watersports fetish is 1, add Figure of ChessNosePissRight to temporary-map-figures;
		otherwise add Figure of ChessNoseCumRight to temporary-map-figures;
	otherwise if the player-bowl-fill of chess-lesson >= 3:
		if watersports fetish is 1, add Figure of ChessMouthPissRight to temporary-map-figures;
		otherwise add Figure of ChessMouthCumRight to temporary-map-figures;
	if the player-bowl-fill of chess-lesson > 0:
		if watersports fetish is 1, add Figure of ChessDripsPissRight to temporary-map-figures;
		otherwise add Figure of ChessDripsCumRight to temporary-map-figures;
	if the student-machine of chess-lesson is 1, add Figure of ChessFuckLeft to temporary-map-figures;
	if the player-machine of chess-lesson is 1, add Figure of ChessFuckRight to temporary-map-figures.


To compute teaching of (L - chess-lesson):
	let M be the lesson-teacher of L;
	say "[speech style of M]'The headmistress [one of]has told me it's time for another game of high-stakes speed chess in front of the whole school. I need two brave pink diamond students who can handle some really humiliating situations and are willing to risk becoming the most disrespected person in the entire school[or]still wants [his of headmistress] speed chess event[stopping]. Are any of you up for the challenge?'[roman type][line break][BigNameDesc of M] holds [his of M] hands together, waiting patiently[one of] as [his of M] eyes rove across each member of the student body in turn. You feel a pressure to volunteer as his gaze moves closer and closer to you. You want to look away but feel paralysed. What if there's a punishment for avoiding [his of M] knowing stare?[or]. Once again you feel paralysed as his gaze sweeps the student body.[stopping]";
	let ST be a random promotable student in the location of the player;
	if ST is nothing, now ST is a random student in the location of the player;
	say "After a couple of moments [NameDesc of ST] rises to [his of ST] feet, audibly gulping but with a serious and determined expression on [his of ST] face. But nobody else seems willing to join [him of ST]. It looks like this 'high-stakes speed chess' game is only going to happen if you volunteer to be [NameDesc of ST][']s opponent. Do you take up the challenge? ";
	if the player is bimbo consenting:
		now temporaryYesNoBackground is Figure of no-image-yet; [forces normal map to be drawn during multiple choice, which in turn forces chess state render to be drawn instead]
		say "You stand.";
		repeat with FST running through students in the location of the player:
			unless ST is FST, FavourUp FST;
		say "[BigNameDesc of M] smiles warmly.[line break][speech style of M]'Oh, well volunteered! The headmistress will be so [please]d. First, I'll need your clothing.'[roman type][line break]";
		repeat with C running through worn stealable clothing:
			unless C is plentiful accessory:
				say "[BigNameDesc of M] confiscates your [ShortDesc of C]!";
				dislodge C;
				now C is in School01;
		repeat with C running through worn removable clothing:
			unless C is accessory:
				say "[BigNameDesc of M] releases you from your [ShortDesc of C]!";
				dislodge C;
				now C is in School01;
				unlock C;
		repeat with C running through carried things:
			now C is in School01;
		say "[speech style of M]'If you want any of those back, you'll need to pick them up from Reception later.'[roman type][line break]";
		force immediate clothing-focus redraw;
		repeat with X running through undefeated staff members in the school:
			now X is in School16;
			interest X;
			calm X;
		repeat with X running through undefeated students in the school:
			now X is in School16;
			interest X;
			calm X;
		now the player is in School16;
		let F be asshole;
		if the player is possessing a vagina, now F is vagina;
		now chess table is penetrating F;
		now the arousal of the player is 0;
		update arousal;
		if headmistress is alive, now M is headmistress;
		say "You are led up onto the stage along with [NameDesc of ST], where a unique scene awaits you. Two chairs sit either side of a chess table, but each seat is built like a gynecologist's chair - a V shape keeps the legs spread with the sitter's genitals left fully exposed and accessible. The frames have modern-looking cuffs at the bottom of the front two legs and the end of one arm rest, clearly to keep anyone sitting there locked in place. The chairs and chess table sit inside a massive rectangular transparent tray, which acts like a paddling pool, keeping any and all fluids inside. The chess board has a chess clock next to it, which has a large metal pump connected to it.[paragraph break]You and [NameDesc of ST] are led to the chairs, where you are made to sit, your groins completely exposed and vulnerable. Your ankles are secured in the cuffs. Two pneumatic dildo fucking machines are brought in and set up, the upper halves of the dildos inserted into your [F]s. They begin to fuck each of you, at a very slow but steady pace.[paragraph break]Hollow nose plugs are inserted in your nostrils, and a tube leading from these plugs dangles down to your chest. Large fishbowl-like helmets are placed over your heads, and loosely sealed at the bottom with tape. The tube from your nose runs underneath this tape, allowing you to breathe. Translucent tubes are used to connect the pump device to the tops of the helmets. Now, [NameDesc of M] speaks to everyone.";
		say "[speech style of M]'Welcome to the [one of]second ever[or]third ever[or]latest[stopping] [slut school] Chess Championship! Fame and glory awaits the winner, and, well, the loser might be stuck in their chair for a while. When it's your turn, challengers, the pump will quickly fill your helmet with whatever liquid it can draw from the ground beneath you! It'll slowly dribble out the seal at the bottom but not as quickly as it'll fill up! If your helmet gets filled to the top, your fucking machine will click into overdrive until some drains away. There are two ways to lose: either you get checkmated, or you cum. The winner not only gets promoted but will gain a place in our hall of fame. The loser will get treated to some lovely... one-on-one time with a helmet full of [if watersports fetish is 1][urine][otherwise][semen][end if], and won't get released until, well, until I decide so. Which is usually quite a long time! So, with the stakes made clear, let's get this game underway!'[roman type][line break][big he of M] claps [his of M] hands, making you and [student-name of ST] yelp as you feel your [if a2m fetish >= 2]bellies[otherwise]bladders[end if] suddenly filled with ludicrous amounts of [if watersports fetish is 1][urine][otherwise][semen][end if]! You try to hold on but there's way too much and it's no use. Moments later, both you and [student-name of ST] are [if a2m fetish >= 2]expelling[otherwise]squirting[end if] litres of [if watersports fetish is 1][urine][otherwise][semen][end if] into the perspex tray underneath you, where it pools, spreading out from the middle.";
		say "And then a pump starts. The pungent liquid is slowly sucked up into the pump and begins flowing through the tube and into [NameDesc of ST][']s fishbowl, from whom you hear a muffled [second custom style]Eep![roman type] as it soaks into [his of ST] hair and then begins trickling down [his of ST] face. [big he of ST][']s got the white pieces so must be going first. [big he of ST] quickly moves [his of M] king's pawn two spaces forward and then presses the switch on the chess clock with the same hand. The liquid stops being sent through the tube connected to [his of M] helmet and instead begins to travel towards you! A moment later you are being showered by the stuff that had moments ago been inside the two of you. You quickly stop the flow by matching [his of ST] pawn move with your own mirrored one, and then pressing the button on your side of the clock. Several quick moves from both of you set up the board in a rather even state, and now you properly need to think about your next move. Enough [if watersports fetish is 1][urine][otherwise][semen][end if] has collected in each of your fishbowls that it would flow into your mouths if either of you opened them. The game has truly begun.";
		now chess table is in School16;
		now chess table is grabbing the player;
		now the chess-opponent of chess-lesson is ST;
		now the student-bowl-fill of chess-lesson is 3;
		now the player-bowl-fill of chess-lesson is 3;
		allocate 0 seconds;
		now chess-move-choice is 1;
		reset chess planning;
		now bigGameLoop is 2; [tells the game not to refresh map window after multiple choice]
		if newbie tips is 1, say "[newbie style]In this minigame, your fishbowl helmet filling up can be considered a slowly refilling bank of extra time which you can use to try and find better moves to help you win the chess game. Wait too long too often, however, and you'll quickly find yourself orgasming instead. Keep the pressure up and get ahead of your opponent in the chess game to force them to spend more time thinking. While their helmet is filling up, yours will be draining![roman type][line break]";
		while the chess-victor of chess-lesson is 0:
			compute chess time;
		now bigGameLoop is 0; [tells the game to return to normal map window behaviour]
		MapShowReset;
	otherwise:
		say "You stay firmly seated[if the player is shameless] - chess sounds boring![otherwise], not willing to risk the public shame of losing, and whatever additional punishments that might entail.[end if][line break][speech style of M]'Oh darling, you're all on your own? That's a shame, but understandable, it's a lot to ask of such weak, cowardly students[run paragraph on]";
		if ST is promotable:
			say ". Well then [NameDesc of ST], for your bravery I think you've earned a promotion.'[roman type][line break][BigNameDesc of M] pats [NameDesc of ST] on the head.";
			promote ST;
			say "[speech style of M]'[run paragraph on]";
		otherwise:
			say ". ";
		say "I'm afraid that unless we get two volunteers for this game, we can't have this class. So for now, class is cancelled!'[roman type][line break][big he of M] politely gestures for you all to leave the room.";
		now the chess-refused of chess-lesson is 1;
	allocate 6 seconds.

[The playing chess rules is a rulebook.]

chess-move is a text that varies.
chess-move-choice is a number that varies.
chess-lesson has a number called defensive-move.

To compute chess time:
	let ST be chess-opponent of chess-lesson;
	if chess-turn of chess-lesson is 1: [Opponent takes her turn]
		if the lost-pieces of chess-lesson > 12 or (the lost-pieces of chess-lesson - student-lost-pieces of chess-lesson > 5), compute opponent checkmate;
		otherwise compute opponent chess turn;
		if the chess-turn of chess-lesson is 0 and (the student-lost-pieces of chess-lesson > 12 or (the student-lost-pieces of chess-lesson - lost-pieces of chess-lesson > 5)), compute checkmate;
		now the defensive-move of chess-lesson is 2; [player always takes a couple of turns to find the defensive move when it's their turn]
	otherwise if chess-move-choice > 10:
		now the chess-turn of chess-lesson is 1; [It was the player's turn, but they did their move]
	otherwise if chess-turn of chess-lesson is 0 and the student-urine of chess-lesson > a random number between 6 and 18: [Player waits, opponent pisses]
		say "[BigNameDesc of ST] takes this brief reprieve as an opportunity to release [his of ST] hold on [his of ST] bladder, which trickles down and joins the [urine] beneath your feet.";
		[compute student chess soiling;]
	otherwise if the student-bowl-fill of chess-lesson - the student-drink-tolerance of chess-lesson > a random number between 2 and 11:
		say "[BigNameDesc of ST] drinks some of the [if watersports fetish is 1][urine][otherwise][semen][end if] filling [his of ST] fishbowl.";
		if the student-bowl-fill of chess-lesson > 11, now the student-bowl-fill of chess-lesson is 11; [drinking always stops it getting completely full again straight away]
		if the student-bowl-fill of chess-lesson is 3, now the student-bowl-fill of chess-lesson is 2;
		otherwise decrease the student-bowl-fill of chess-lesson by 2;
		if watersports fetish is 1, increase the student-urine of chess-lesson by 1;
		increase the the student-drink-tolerance of chess-lesson by 1;
	if the chess-victor of chess-lesson is 0:
		if chess-turn of chess-lesson is 0: [Who's getting filled?]
			increase the player-bowl-fill of chess-lesson by 2;
			say "The pump sends [if watersports fetish is 1][urine][otherwise][semen][end if] down the tube and into your fishbowl. It is [if the remainder after dividing player-bowl-fill of chess-lesson by 3 is 2]still[otherwise]now[end if] [if the player-bowl-fill of chess-lesson >= 12]completely full[otherwise if the player-bowl-fill of chess-lesson >= 9]up to your eyes[otherwise if the player-bowl-fill of chess-lesson >= 6]up to your nose[otherwise if the player-bowl-fill of chess-lesson >= 3]up to your mouth[otherwise]nearly up to your mouth[end if].";
			if the player-bowl-fill of chess-lesson > 12, now the player-bowl-fill of chess-lesson is 12;
			if the student-bowl-fill of chess-lesson > 0, decrease the student-bowl-fill of chess-lesson by 1;
		otherwise:
			increase the student-bowl-fill of chess-lesson by 2;
			say "The pump sends [if watersports fetish is 1][urine][otherwise][semen][end if] down the tube and into [NameDesc of ST][']s fishbowl. It is [if the remainder after dividing student-bowl-fill of chess-lesson by 3 is 2]still[otherwise]now[end if] [if the student-bowl-fill of chess-lesson >= 12]completely full[otherwise if the student-bowl-fill of chess-lesson >= 9]up to [his of ST] eyes[otherwise if the student-bowl-fill of chess-lesson >= 6]up to [his of ST] nose[otherwise if the student-bowl-fill of chess-lesson >= 3]up to [his of ST] mouth[otherwise]nearly up to [his of ST] mouth[end if].";
			if the student-bowl-fill of chess-lesson > 12, now the student-bowl-fill of chess-lesson is 12;
			if the player-bowl-fill of chess-lesson > 0, decrease the player-bowl-fill of chess-lesson by 1;
		say "[if watersports fetish is 1]Piss[otherwise]Cum[end if] continues to slowly trickle out of both of your helmets at the bottom[one of], trickling down your neck then down your [BreastDesc][or] and down your body[or] and down your back and front[or], running down you, even between your thighs and over your [genitals][or], front and back, puddling now between your [AssDesc][or], all over you, even down your legs[or], painting your whole body[or][stopping].";
		let F be a random fuckhole penetrated by chess table;
		if the player-bowl-fill of chess-lesson >= 12:
			say "[bold type]The dildo machine in your [variable F] [if the player-machine of chess-lesson is 1]keeps pumping away[otherwise]begins to piston in and out with increasing speed. [roman type]Within moments you're being fucked at a brutal rate of five thrusts a second[end if]!";
			now the player-machine of chess-lesson is 1;
		otherwise if the player-machine of chess-lesson is 1:
			now the player-machine of chess-lesson is 0;
			say "The dildo machine in your [variable F] returns to its slow and steady pace, for now.";
		if the player-machine of chess-lesson is 1:
			ruin F;
		otherwise if the player is not horny:
			stimulate F from chess table;
		if refractoryperiod > 0, compute chess loss;
		if the student-bowl-fill of chess-lesson >= 12 and the chess-victor of chess-lesson is 0:
			say "[bold type]The dildo machine in [student-name of ST][']s [variable F] [if the student-machine of chess-lesson is 1]keeps destroying [his of ST] [F][otherwise]begins to piston in and out of [his of ST] [F] with brutal speed and force[end if]![roman type][line break]";
			now the student-machine of chess-lesson is 1;
			increase the student-orgasm of chess-lesson by 8;
			decrease the the student-drink-tolerance of chess-lesson by 2;
			if the student-orgasm of chess-lesson > a random number between 30 and 60, compute chess win;
		otherwise if the student-machine of chess-lesson is 1:
			now the student-machine of chess-lesson is 0;
			say "[student-name of ST][']s dildo machine slows back down to a much more gentle pace.";
		increase the student-orgasm of chess-lesson by 1;
	if the chess-victor of chess-lesson is 0:
		compute chess players thinking;
		compute wallowing;
		compute hunger and thirst; [actual hunger and thirst numbers will be temporarily overridden (see the definition for 'yourself is thirsty'), but we do need the player to digest normally]
		if watersports fetish is 1:
			if a random number between 1 and 3 is 1:
				compute bladder growth;
				if the bladder of the player > 6:
					increase player-bladder-penalty of chess-lesson by 1;
					say "[bold type][if the player-bladder-penalty of chess-lesson is 1]You are beginning to feel the need to pee, which is making it more difficult for you to concentrate[otherwise]Holding in your pee is making it increasingly difficult to concentrate[end if].[roman type][line break]";
				otherwise:
					now player-bladder-penalty of chess-lesson is 0;
		if delayed urination > 0, compute chess urination;
		finally humiliate the delayed humiliation of the player;
		decrease blush factor by 100;
		if blush factor > 2000, now blush factor is 2000;
		if blush factor < 0, now blush factor is 0;
		check for arousal change;
		update saved stats;
		now focused-thing is ST;
		render chess state;
		if the chess-victor of chess-lesson is 0, say "You have [16 - lost-pieces of chess-lesson] pieces left, and [NameDesc of ST] has [16 - student-lost-pieces of chess-lesson] pieces left. Your fishbowl helmet is [if the player-bowl-fill of chess-lesson >= 12]completely full of[otherwise if the player-bowl-fill of chess-lesson >= 9]filled up to your eyes with[otherwise if the player-bowl-fill of chess-lesson >= 6]filled up to your nose with[otherwise if the player-bowl-fill of chess-lesson >= 3]filled up to your mouth with[otherwise if the player-bowl-fill of chess-lesson > 0]filled a little bit with[otherwise]completely empty of[end if] [if watersports fetish is 1][urine][otherwise][semen][end if], and [NameDesc of ST][']s fishbowl helmet is [if (the player-bowl-fill of chess-lesson / 3) is (the student-bowl-fill of chess-lesson / 3)]also [end if][if the student-bowl-fill of chess-lesson >= 12]completely full of[otherwise if the student-bowl-fill of chess-lesson >= 9]filled up to [his of ST] eyes with[otherwise if the student-bowl-fill of chess-lesson >= 6]filled up to [his of ST] nose with[otherwise if the student-bowl-fill of chess-lesson >= 3]filled up to [his of ST] mouth with[otherwise if the student-bowl-fill of chess-lesson > 0]filled a little bit with[otherwise]completely empty of[end if] [if watersports fetish is 1][urine][otherwise][semen][end if].";
		compute chess move input.

To compute opponent chess turn:
	let ST be the chess-opponent of chess-lesson;
	let competition-factor be the lost-pieces of chess-lesson - the student-lost-pieces of chess-lesson; [A positive number means that the opponent is LOSING the chess game (so they need to spend more time thinking to catch up)]
	decrease competition-factor by (the student-orgasm of chess-lesson / 10) + (the student-bowl-fill of chess-lesson / 4); [The more cum in the fishbowl and closer to orgasm, the more urgent it is for the opponent to make a move]
	if a random number between 5 and 25 < student-urine of chess-lesson:
		say "[BigNameDesc of ST] looks like [he of ST][']s about to make a move, but then [he of ST] squeaks and the next thing you know, [he of ST][']s whining with shame and pissing [himself of ST].";
		[compute student chess soiling;]
	otherwise if a random number between 1 and (11 + competition-factor) > 4 and the student-great-move of chess-lesson > 0: [The more they're winning the orgasm game or losing the chess game, the more time they spend thinking]
		if the student-bowl-fill of chess-lesson - the student-drink-tolerance of chess-lesson > a random number between 2 and 11:
			say "[BigNameDesc of ST] drinks some of the [if watersports fetish is 1][urine][otherwise][semen][end if] filling [his of ST] fishbowl.";
			if the student-bowl-fill of chess-lesson > 11, now the student-bowl-fill of chess-lesson is 11; [drinking always stops it getting completely full again straight away]
			decrease the student-bowl-fill of chess-lesson by 2;
			if watersports fetish is 1, increase the student-urine of chess-lesson by 1;
			increase the student-drink-tolerance of chess-lesson by 1;
		otherwise:
			say "[BigNameDesc of ST] keeps thinking.";
	otherwise if student-great-move of chess-lesson <= 0 and a random number between 1 and 3 > 1:
		if trapping-move of chess-lesson > 1000: [the player was trapping]
			say "[BigNameDesc of ST] smiles proudly as [he of ST] makes [his of ST] move, taking your piece and falling for the trap. [big his of ST] expression falls quickly as [he of ST] sees your surprise move in return, and within the quick few back-and-forth moves that follow, [he of ST] has lost three of [his of ST] pieces and you only lost that initial one.";
			increase student-lost-pieces of chess-lesson by 3;
			increase lost-pieces of chess-lesson by 1;
		otherwise:
			let R be the aggression of chess-lesson;
			unless the lost-pieces of chess-lesson < 13, now R is 0;
			say "[BigNameDesc of ST] smiles proudly as [he of ST] makes [his of ST] move. It's a very clever one, as you can see immediately, and within the quick few back-and-forth moves that follow, [he of ST] has taken [R + 2] of your pieces and lost [if R is 0]none[otherwise]only one[end if] of [his of ST] own.";
			increase student-lost-pieces of chess-lesson by R;
			increase lost-pieces of chess-lesson by R + 2;
		now student-aggression of chess-lesson is 1;
		reset chess planning;
		now the chess-turn of chess-lesson is 0; [This ends their turn]
	otherwise if student-trapping-move of chess-lesson <= 0 and a random number between 1 and 5 > 1:
		say ChessMoveFlav (a random number between 0 and 1) of ST;
		reset chess opponent planning;
		if great-move of chess-lesson > 0, now great-move of chess-lesson is a random number between 1 and 8;
		now student-trapping-move of chess-lesson is 9999; [This is how we flag that trapping is active]
		now the chess-turn of chess-lesson is 0; [This ends their turn]
	otherwise if student-safe-move of chess-lesson <= 0 and a random number between 1 and 5 > 1:
		say "[BigNameDesc of ST] makes a very smart defensive move, blocking off your main line of attack and forcing you go to back to square one with your planning.";
		reset chess planning;
		now student-aggression of chess-lesson is 0;
		now the chess-turn of chess-lesson is 0; [This ends their turn]
	otherwise:
		let R be a random number between 0 and 1;
		unless a random number between 0 and (the lost-pieces of chess-lesson - the student-lost-pieces of chess-lesson) <= 0, now R is 1; [The more pieces up the opponent is, the more chance they have to play aggressive]
		unless a random number between 0 and (the student-lost-pieces of chess-lesson - the lost-pieces of chess-lesson) <= 0, now R is 0; [The more pieces down the opponent is, the more chance they have to play defensive]
		unless a random number between 0 and (the student-lost-pieces of chess-lesson - the lost-pieces of chess-lesson) <= 0, now R is 0; [We do the check twice because a sensible opponent *really* doesn't want to play aggressive if behind!]
		unless the student-lost-pieces of chess-lesson < 14 and the lost-pieces of chess-lesson < 14, now R is 0; [Can't play aggressive when the game is almost over]
		say ChessMoveFlav R of ST;
		if R is 1 and (aggression of chess-lesson is 1 or a random number between 1 and 3 is 1):
			say "After a couple of quick-fire moves [he of ST] has traded a piece with you, and you have both lost out equally.";
			increase student-lost-pieces of chess-lesson by 1;
			increase lost-pieces of chess-lesson by 1;
			reset chess opponent planning;
		now the chess-turn of chess-lesson is 0. [This ends their turn]

To say ChessMoveFlav (N - a number) of (ST - a student):
	say "[BigNameDesc of ST] makes what seems like a rather normal [if N is 1]aggressive[otherwise]defensive[end if] move.";
	now student-aggression of chess-lesson is N.

To decide which number is chess-move-found:
	if a random number between 1 and 5 > 3, decide on 1;
	decide on 0.

To decide which number is chess-random-reset:
	decide on (a random number between 1 and 6) + (a random number between 0 and 2).

To decide which number is chess-great-move-toughness:
	decide on (a random number between 0 and 7) + (a random number between 0 and 1).

To decide which number is chess-safe-move-toughness:
	decide on (a random number between 0 and 4) + (a random number between 0 and 1).

To decide which number is chess-trapping-move-toughness:
	decide on (a random number between 0 and 6) + (a random number between 0 and 1).

To reset chess planning:
	reset chess player planning;
	reset chess opponent planning.

To reset chess player planning:
	reset chess player great planning;
	reset chess player safe planning;
	reset chess player trap planning.

To reset chess player great planning:
	if great-move of chess-lesson <= 0 and the chess-turn of chess-lesson is 1, say "Now that the state of the board has changed, your planned awesome move is no longer possible.";
	if chess-move-found is 1, now great-move of chess-lesson is chess-random-reset + chess-great-move-toughness;
	otherwise now great-move of chess-lesson is 999;
	if the student-lost-pieces of chess-lesson > 12 or the lost-pieces of chess-lesson > 14, now great-move of chess-lesson is 999.

To reset chess player safe planning:
	if safe-move of chess-lesson <= 0 and the chess-turn of chess-lesson is 1, say "Now that the state of the board has changed, your planned safe move is no longer possible.";
	if chess-move-found is 1, now safe-move of chess-lesson is chess-random-reset + chess-safe-move-toughness;
	otherwise now safe-move of chess-lesson is 999;
	if the student-lost-pieces of chess-lesson > 12 or the lost-pieces of chess-lesson > 14, now safe-move of chess-lesson is 999.

To reset chess player trap planning:
	if trapping-move of chess-lesson <= 0 and the chess-turn of chess-lesson is 1, say "Now that the state of the board has changed, your planned move to trap your opponent is no longer possible.";
	if trapping-move of chess-lesson > 1000: [end the trap]
		reset chess opponent great planning;
	if chess-move-found is 1, now trapping-move of chess-lesson is chess-random-reset + chess-trapping-move-toughness;
	otherwise now trapping-move of chess-lesson is 999;
	if the student-lost-pieces of chess-lesson > 12 or the lost-pieces of chess-lesson > 14, now trapping-move of chess-lesson is 999.

To reset chess opponent planning:
	reset chess opponent great planning;
	reset chess opponent safe planning;
	reset chess opponent trap planning.

To reset chess opponent great planning:
	if chess-move-found is 1, now student-great-move of chess-lesson is chess-random-reset + chess-great-move-toughness;
	otherwise now student-great-move of chess-lesson is 999;
	if the lost-pieces of chess-lesson > 12 or the student-lost-pieces of chess-lesson > 14, now student-great-move of chess-lesson is 999.

To reset chess opponent safe planning:
	if chess-move-found is 1, now student-safe-move of chess-lesson is chess-random-reset + chess-safe-move-toughness;
	otherwise now student-safe-move of chess-lesson is 999;
	if the lost-pieces of chess-lesson > 12 or the student-lost-pieces of chess-lesson > 14, now student-safe-move of chess-lesson is 999.

To reset chess opponent trap planning:
	if student-trapping-move of chess-lesson > 1000:
		if great-move of chess-lesson <= 0:
			say "You realise that the great move you thought you spotted was actually a bait, and if you had gone through with it you would have lost a lot more than your opponent!";
			now great-move of chess-lesson is 999; [To prevent extra incorrect flavour when it's reset]
		reset chess player great planning;
	if chess-move-found is 1, now student-trapping-move of chess-lesson is chess-random-reset + chess-trapping-move-toughness;
	otherwise now student-trapping-move of chess-lesson is 999;
	if the lost-pieces of chess-lesson > 12 or the student-lost-pieces of chess-lesson > 14, now student-trapping-move of chess-lesson is 999.

To compute chess players thinking:
	let I be 0;
	let I2 be saved-flat-intelligence - player-bladder-penalty of chess-lesson;
	if I2 > I, now I is I2; [got to make sure we're not going to square root a negative]
	let STI be 3 - ((a random number between 0 and (the student-orgasm of chess-lesson + 2)) / 3);
	if the defensive-move of chess-lesson > 0 and the chess-turn of chess-lesson is 0: [It takes a couple of turns before the player is allowed to make a normal defensive move.]
		if debugmode is 1, say "Player defensive move [defensive-move of chess-lesson] - 1 > [defensive-move of chess-lesson - 1][line break]";
		decrease the defensive-move of chess-lesson by 1;
		if the defensive-move of chess-lesson <= 0:
			say "You have now studied the board long enough to find a [one of]move that isn't too aggressive, and so is less likely to result in anyone losing any pieces[or]normal defensive move[stopping].";
		otherwise if the chess-turn of chess-lesson is 0:
			say "You know you can find a more passive move if you give yourself a little longer to think.";
	if the safe-move of chess-lesson > 0:
		let R be the square root of (a random number between 0 and I);
		if debugmode is 1, say "Player safe move [safe-move of chess-lesson] - [R] > [safe-move of chess-lesson - R][line break]";
		decrease the safe-move of chess-lesson by R;
		if the safe-move of chess-lesson <= 0:
			say "You notice a different move you could take, that would be safe for you and force your opponent to think hard again.";
		otherwise if the chess-turn of chess-lesson is 0:
			if the safe-move of chess-lesson > 900 and the safe-move of chess-lesson < 990:
				say "You are confident there's no extremely safe move available for you to take this turn.";
			otherwise:
				say "There might be a much safer move you can make, but you haven't spotted it yet.";
	if the trapping-move of chess-lesson > 0:
		let R be the square root of (a random number between 0 and I);
		if debugmode is 1, say "Player trapping move [trapping-move of chess-lesson] - [R] > [trapping-move of chess-lesson - R][line break]";
		decrease the trapping-move of chess-lesson by R;
		if the trapping-move of chess-lesson <= 0:
			say "You realise that there's a certain move that you could make that would allow your opponent to make a huge mistake in their next turn if they're not careful.";
		otherwise if the chess-turn of chess-lesson is 0:
			if the trapping-move of chess-lesson > 900 and the trapping-move of chess-lesson < 990:
				say "You are confident there's no clever trap available for you to set up this turn.";
			otherwise:
				say "There might be a way to try and trap [student-name of the chess-opponent of chess-lesson], but you haven't worked one out yet.";
	if the great-move of chess-lesson > 0:
		let R be the square root of (a random number between 0 and I);
		if debugmode is 1, say "Player great move [great-move of chess-lesson] - [R] > [great-move of chess-lesson - R][line break]";
		decrease the great-move of chess-lesson by R;
		if the great-move of chess-lesson <= 0:
			say "You notice a move that looks absolutely brilliant! It seems sure to net you a huge advantage.";
		otherwise if the chess-turn of chess-lesson is 0:
			if the great-move of chess-lesson > 900 and the great-move of chess-lesson < 990:
				say "You are confident there's no particularly amazing move available for you to take this turn.";
			otherwise:
				say "If there is a significantly advantageous move for you to make, you haven't seen it yet.";
	decrease the student-safe-move of chess-lesson by a random number between 1 and STI;
	decrease the student-trapping-move of chess-lesson by a random number between 1 and STI;
	decrease the student-great-move of chess-lesson by a random number between 1 and STI.

To compute chess mouthful:
	say "You draw a [if player-bowl-fill of chess-lesson is 3]small[otherwise]large[end if] mouthful of [if watersports fetish is 1][urine][otherwise][semen][end if] into your mouth and gulp it all down. ";
	if watersports fetish is 1:
		StomachUrineUp 1;
	otherwise:
		StomachSemenUp 1;
	if the player-bowl-fill of chess-lesson > 11, now the player-bowl-fill of chess-lesson is 11; [drinking always gives you a turn's break from the dildo]
	if the player-bowl-fill of chess-lesson > 3, decrease the player-bowl-fill of chess-lesson by 2;
	otherwise decrease the player-bowl-fill of chess-lesson by 1.

To compute chess urination:
	say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder, soaking the pool below your feet with even more [urine] right in front of the entire school body. [severeHumiliateReflect]";
	now the bladder of the player is 0;
	progress temporary incontinence;
	now delayed urination is 0;
	let M be a random monster in the location of the player;
	unless M is the chess-opponent of chess-lesson or M is nothing, compute chess urination reaction of M.

To compute chess soiling:
	do nothing.

To compute chess urination reaction of (M - a monster):
	say "[BigNameDesc of M] snickers as [he of M] watches you add more bodily fluids to your future meal. [moderateHumiliateReflect]".

To compute chess move input:
	say "What do you want to do[one of][or] next[stopping]?";
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	if chess-turn of chess-lesson is 0:
		if the student-lost-pieces of chess-lesson < 14 and the lost-pieces of chess-lesson < 14, set numerical response 1 to "make an aggressive move";
		if defensive-move of chess-lesson <= 0, set numerical response 2 to "make a defensive move";
		if safe-move of chess-lesson <= 0, set numerical response 3 to "make a safe move";
		if trapping-move of chess-lesson <= 0, set numerical response 4 to "make a trapping move";
		if great-move of chess-lesson <= 0, set numerical response 5 to "make a great move";
	if the player-bowl-fill of chess-lesson >= 3, set numerical response 6 to "drink a mouthful of [if watersports fetish is 1][urine][otherwise][semen][end if]";
	if the bladder of the player > 6 and the player is not incontinent, set numerical response 7 to "wet yourself";
	set numerical response 9 to "wait and think";
	set numerical response 0 to "look";
	compute multiple choice question;
	let CNR be the chosen numerical response;
	now chess-move is CNR;
	if chess-move is "look":
		now chess-move-choice is 0; [allow it to happen]
		try looking;
	otherwise if chess-move matches the text "wait":
		now chess-move-choice is 1;
	otherwise if chess-move matches the text "wet":
		now chess-move-choice is 3;
		compute chess urination;
	otherwise if chess-move matches the text "mouthful":
		now chess-move-choice is 4;
		compute chess mouthful;
	otherwise if chess-move matches the text "aggressive":
		now chess-move-choice is 11;
		now aggression of chess-lesson is 1;
		if student-aggression of chess-lesson is 1 or a random number between 1 and 3 is 1:
			say "You make an aggressive move, and within a few quick back-and-forth moves, you have traded a piece with your opponent.";
			increase student-lost-pieces of chess-lesson by 1;
			increase lost-pieces of chess-lesson by 1;
		otherwise:
			say "You make an aggressive move, [one of]hoping there's nothing obvious you've missed[or]hoping you haven't made a mistake[or]hoping to bring the game closer to its conclusion[in random order].";
		reset chess player planning;
	otherwise if chess-move matches the text "defensive":
		now chess-move-choice is 12;
		now aggression of chess-lesson is 0;
		say "You make a defensive move, [one of]trying to make sure you don't accidentally give the opponent an advantage[or]uncertain there wasn't a better move you could have found[or]hoping to stall the game for longer[in random order].";
	otherwise if chess-move matches the text "safe":
		now chess-move-choice is 13;
		now aggression of chess-lesson is 0;
		say "You make a clever safe move, resetting the state of the board and ensuring your opponent can't find any cracks in your defence.";
		reset chess planning;
	otherwise if chess-move matches the text "trapping":
		now chess-move-choice is 14;
		now aggression of chess-lesson is a random number between 0 and 1;
		say "You make an innocent looking move, which makes it look like you've made a mistake but would actually allow you to come out ahead if your opponent takes the bait.";
		reset chess planning;
		now student-great-move of chess-lesson is a random number between 1 and 8;
		now trapping-move of chess-lesson is 9999; [This is how we flag that trapping is active]
	otherwise if chess-move matches the text "great":
		now chess-move-choice is 15;
		now aggression of chess-lesson is 1;
		if student-trapping-move of chess-lesson > 1000: [player was caught by a trap]
			let ST be chess-opponent of chess-lesson;
			say "You grin inwardly as you make your clever move. [BigNameDesc of ST][']s expression doesn't fall but instead it looks like [he of ST] is grinning from behind [his of ST] pacifier gag! [big he of ST] quickly makes a planned move in return, and you realise you've fallen for a clever trap. Within the quick few back-and-forth moves that follow, you lose three of your pieces for only one of [hers of ST].";
			increase student-lost-pieces of chess-lesson by 1;
			increase lost-pieces of chess-lesson by 3;
		otherwise:
			let R be the student-aggression of chess-lesson;
			say "You make a very smart move which after [one of]a couple of clever checks[or]a very sneaky knight fork[or]an impressive bishop fork[in random order] results in your opponent losing [R + 2] pieces and you losing [if R is 0]none at all[otherwise]only one[end if]!";
			increase lost-pieces of chess-lesson by R;
			increase student-lost-pieces of chess-lesson by R + 2;
		now student-trapping-move of chess-lesson is 999; [prevents line about discovering the trap / move no longer possible]
		reset chess planning;
	otherwise:
		say "Bug! I didn't understand that. Please report this bug.";
		now chess-move-choice is -1.

To compute chess loss:
	let ST be the chess-opponent of chess-lesson;
	say "A buzzer sounds as your climax begins to subside. [BigNameDesc of ST] is released from the chair and quickly rips [his of ST] fishbowl from [his of ST] head before forcing [himself of ST] to [his of ST] feet, and performing a sort-of dizzy victory celebration dance as [he of ST] staggers from the stage.";
	compute chess loss punishment.

To compute opponent checkmate:
	let ST be the chess-opponent of chess-lesson;
	say "You see [NameDesc of ST] grin widely from behind [his of ST] fishbowl. One move puts you in [']check['], and there's only one place you can move your king. Another of [NameDesc of ST][']s pieces moves in and boom - it's checkmate. You've lost. [big he of ST] snatches up your king with jubilation and the cuffs holding [his of ST] ankles unlock. [big he of ST] holds the chess piece above [his of ST] head as [he of ST] heaves [himself of ST] out of [his of ST] chair and staggers from the stage to the cheers of the crowd.";
	compute chess loss punishment.

To compute chess win:
	let ST be the chess-opponent of chess-lesson;
	let M be the lesson-teacher of chess-lesson;
	if headmistress is alive, now M is headmistress;
	say "A buzzer sounds as [NameDesc of ST][']s orgasm reaches its crescendo. You are released from the chair and quickly rip your fishbowl from your head before hauling yourself to your feet, and weakly celebrating as you clamber from the stage, exhausted.[line break][speech style of M]'Congratulations [NameBimbo], you've made us proud!'[roman type][line break][BigNameDesc of M] applauds and then waves a hand towards your armband.";
	now armband is pure diamond;
	say "You watch as the ID card inside your armband transforms!";
	if watersports fetish is 1:
		now the armband-title of armband is "Priscilla";
		now the armband-print of armband is "prudent piss-guzzler";
	otherwise:
		now the armband-title of armband is "Constanza";
		now the armband-print of armband is "competitive cum-guzzler";
	say ClothingDesc of armband;
	compute chess win reward.

To compute checkmate:
	let ST be the chess-opponent of chess-lesson;
	let M be the lesson-teacher of chess-lesson;
	if headmistress is alive, now M is headmistress;
	say "This is the end. You see the moves necessary. With increasing urgency you make them, forcing [NameDesc of ST][']s king into a smaller and smaller box before eventually achieving checkmate. You've won! Picking up the white king with pride causes the cuffs holding your ankles to unlock. You keep the chess piece as you clamber with some difficulty out of the chair and stagger from the stage to the cheers and applause of the staff and student body.[line break][speech style of M]'Congratulations [NameBimbo], you've made us proud!'[roman type][line break][BigNameDesc of M] applauds and then waves a hand towards your armband.";
	now armband is pure diamond;
	say "You watch as the ID card inside your armband transforms!";
	if watersports fetish is 1:
		now the armband-title of armband is "Penny";
		now the armband-print of armband is "pensive piss-bucket";
	otherwise:
		now the armband-title of armband is "Starburst";
		now the armband-print of armband is "semen-filled schemer";
	say ClothingDesc of armband;
	compute chess win reward.

To compute chess win reward:
	let F be a random fuckhole penetrated by chess table;
	let ST be the chess-opponent of chess-lesson;
	let M be the lesson-teacher of chess-lesson;
	if headmistress is alive, now M is headmistress;
	dislodge chess table;
	now the chess-victor of chess-lesson is 1;
	now the stomach-food of the player is 2;
	while the player is thirsty:
		increase the stomach-water of the player by 1;
	let ST be the chess-opponent of chess-lesson;
	say "[speech style of M]'And now, it's punishment time!'[roman type][line break]The rest of the student body begins to file out of the hall, as [NameDesc of ST][']s fishbowl quickly fills up to the brim with [if watersports fetish is 1][urine][otherwise][semen][end if], and then the fucking machine begins to ruthlessly pound [his of ST] [F] without hesitation.";
	remove ST from play; [prevents fuckhole acquisition]
	update students; [an important line which makes boring old students disappear and new cool ones appear]
	appropriate-cutscene-display chess-table-image with priority 3;
	now chess piece is carried by the player;
	repeat with X running through monsters in the location of the player:
		distract X;
		compute mandatory room leaving of X;
		regionally place X;
	now nurse is in School11;
	now receptionist is in School01;
	now headmistress is in School08;
	now temporaryYesNoBackground is figure of small image.

To compute chess loss punishment:
	let F be a random fuckhole penetrated by chess table;
	now the chess-victor of chess-lesson is 2;
	now the stomach-food of the player is 2;
	while the stomach-liquid of the player < 3:
		increase the stomach-water of the player by 1;
	let ST be the chess-opponent of chess-lesson;
	let M be the lesson-teacher of chess-lesson;
	if headmistress is alive, now M is headmistress;
	say "[speech style of M]'Congratulations [student-name of ST], you've made us proud!'[roman type][line break]";
	if ST is promotable, promote ST;
	say "[speech style of M]'And now, it's punishment time!'[roman type][line break]The rest of the student body begins to file out of the hall, as your fishbowl quickly fills up to the brim with [if watersports fetish is 1][urine][otherwise][semen][end if], and then the fucking machine ramps up its speed until it's brutally pumping your [variable F] at a rapid rate! [BigNameDesc of M] speaks again.[line break][speech style of M]'Now, let's allow [NameBimbo] to sit and... [']stew['] on [his of the player] failings! Nobody is allowed to release [him of the player], understand? Okay, assembly is over!'[roman type][line break]";
	summon fishbowl-hat locked;
	if watersports fetish is 1, now fishbowl-hat is fishbowl-urine;
	otherwise now fishbowl-hat is fishbowl-cum;
	repeat with X running through monsters in the location of the player:
		distract X;
		compute mandatory room leaving of X;
		regionally place X;
	now nurse is in School11;
	now receptionist is in School01;
	now headmistress is in School08;
	now temporaryYesNoBackground is figure of small image.

An all time based rule (this is the chess table taunting rule):
	if chess table is grabbing the player and the chess-victor of chess-lesson is 2:
		let F be a random fuckhole penetrated by chess table;
		if F is fuckhole:
			say "The fucking machine continues to plow in and out of your [variable F].";
			ruin F;
		repeat with X running through monsters in the location of the player:
			compute mandatory room leaving of X;
		let M be a random alive uncatalogued staff member;
		if M is nurse or M is receptionist or (M is headmistress and the boredom of headmistress > 0):
			now M is a random alive student;
			if M is amicable student, now M is a random alive student; [reduced chance of amicable student]
		now M is catalogued;
		now M is in the location of the player;
		say "You see [NameDesc of M] wander into the assembly hall.";
		if M is headmistress or (M is staff member and headmistress is off-stage and the number of alive uncatalogued staff member is 0):
			say "[speech style of M]'I guess I should let you out before you become a health hazard.'[roman type][line break]With a flick of [his of M] wrist, your ankle bondage is unlocked!";
			dislodge chess table;
			only destroy fishbowl-hat;
		otherwise if M is amicable student:
			say "[speech style of M]'I know I'm not supposed to do this but it's mean to just leave you here forever...'[roman type][line break][big he of M] walks up to the stage and steps on the pad that had been under [NameDesc of chess-opponent of chess-lesson][']s chair. There's a quiet buzzing sound and then your ankle bondage is unlocked!";
			dislodge chess table;
			only destroy fishbowl-hat;
		otherwise:
			compute chess loss taunting of M;
		focus-consider M;
		compute mandatory room leaving of M;
		regionally place M.

To compute chess loss taunting of (M - a monster):
	say "[speech style of M]'[one of]Hahaha, you're still here?! What a noob!'[or]You really are the most pathetic slut in this entire school.'[or]Oh look, it's the loser bitch.'[or]I am GLAD I am not you!'[in random order][roman type][line break][moderateHumiliateReflect][big he of M] [one of]throws you a rude gesture before leaving[or]comes up and patronisingly pats you on the head before leaving you alone[or]takes advantage of your vulnerable position to tickle torture you, but [he of M] quickly grows bored[in random order].".

To compute chess loss taunting of (M - a staff member):
	say "[speech style of M]'[one of]Well if it isn't the loser! Still reflecting on your failings, I see.'[or]You're still stuck here because you deserve to be stuck here. I hope you understand that.'[or]Once a loser, always a loser.'[in random order][roman type][line break][big he of M] doesn't stick around long enough for you to reply.[line break][slightHumiliateReflect]".

To compute chess loss taunting of (M - a nasty student):
	if there is a worn tattoo and the number of worn chest tattoos is 0:
		say "[speech style of M]'Well well well, what do we have here?'[roman type][line break][big he of M] is holding a magic marker in [his of M] hand. [big he of M] walks up to you and straddles your lap, smirking maliciously as [he of M] scribbles [']DISGUSTING FAT UGLY PIG['] permanently onto on your chest.[line break][speech style of M]'I don't think I could have gotten away with writing something this harsh with the teachers watching, but when it's just you and me, who's going to prove that I wrote this? Hahaha.'[roman type][line break]";
		summon marker chest tattoo;
		now the tattoo-title of marker chest tattoo is "DISGUSTING FAT UGLY PIG";
		now the tattoo-outrage of marker chest tattoo is 14;
	otherwise if bottom level lactation cover is rigid clothing:
		say "[BigNameDesc of M] simply comes up to you and pinches your skin, making you squeal in pain!";
		PainUp 10;
	otherwise:
		compute piercing taunt of M.

[###Selkie: this might be better moved out into a piercing-taunt function that could be used in multiple places?]
To compute piercing taunt of (M - a monster):
	if piercing-fetish is 1 and a random number between 1 and 2 is 1:
		let N be a random worn nipple piercing;
		let C be a random worn clit piercing;
		if N is nothing:
			say "[speech style of M]'[one of]'You know, these nipples really need to be pierced, don't they? What's that? You want me to ask the nurse to pierce them for you while you're waiting here?'[or]What? Did that noise mean you want me to find a piercing gun and 'decorate' your slutty nipples?'[or]'When I pierce these nipples, do you want me to suck them first?'[or]'For your piercing, blink once for each gauge of thickness you want?'[or]'When we pierce these nips, blink if you want us to attach a chain between them too.'[cycling][roman type][line break][big he of M] [one of]tugs and twists[or]disdainfully flicks[or]tweaks[or]teases[in random order] your nipples.";
		otherwise:
			say "[big he of M] [one of]tugs and twists[or]disdainfully flicks[or]tweaks[or]teases[in random order] your [ShortDesc of N], toying with them till they darken and stiffen.";
			let CH be a random worn nipple chain;
			if CH is nothing:
				say "[speech style of M]'[one of]'You really get off on piercings, I can tell. I bet you'd like me to attach a big heavy chain to these babies, yeah?'[or]'We're going to find a nice heavy chain to dangle and tug from your piercings.'[or]'It'd be hot if we could lead you around on a chain by these, wouldn't it?'[or]'You gonna beg me to chain you by these?'[or]'They class is working out what chains to get you, [NameBimbo].'[cycling][roman type][line break]";
			otherwise:
				say "[student-name of M] stares directly into your eyes as [he of M] takes hold of your [ShortDesc of CH] and [one of]jiggles it[or]uses it to tug your [BreastDesc] until they [BreastBounceDesc][or]tugs on it different directions, teasing your [BreastDesc][in random order]. [speech style of M]'[one of]'You really get off on piercings, I can tell. I bet you'd like me to attach a big heavy chain to these babies, yeah?'[or]'We're going to find a nice heavy chain to dangle and tug from your piercings.'[or]'It'd be hot if we could lead you around on a chain by these, wouldn't it?'[or]'You gonna beg me to chain you by these?'[cycling][roman type][line break]";
		say "[big he of M] smirks, bending down so you get a faceful of their breasts while [his of M] hands move out of sight between your thighs, and suddenly takes a possessive hold of your [genitals].";
		if player is barbie:
			say "[speech style of M]'[one of]O.M.G! I thought you were a normal girl, but you're really just a sexless Barbie doll pretending to be a real girl[or]'OMG! That's not girl-flat, that's *doll* flat! Ha ha ha! I was gonna offer to get you pierced down there, like I know you'd love - but what'd be the point? Oh my gawd! That's just so weak. I knew you were a loser, but that... I gotta go and tell everyone[or]Oh, that's just better and better - you're not even a real person, are you? You got nothin['] down there! How do you even pee? Ha ha ha[in random order]!'[roman type][line break]";
		otherwise if C is nothing:
			say "[speech style of M]'I bet you'd like us to pierce you down here, too? Maybe fit a chain or a leash to lead you around by your clitty?'[roman type][line break]";
		otherwise:
			say "[big he of M] tugs on your [ClothingDesc of C], grinning wickedly at the sound you make. [speech style of M]'Yeah, you're loving this, you subby little [sissy slut].'[roman type][line break]";
		arouse 100;
	otherwise:
		say "[speech style of M]'[one of]Ooh, look what I've found, all alone and with nobody to protect [him of the player].'[or]What did I hear you just say? Pinch my nipples? That's a weird request, but okay.'[or]'Still here, with your fat nipples all stiff?'[or]'Everyone's trying to work out if you lost because you're stupid, or because you *wanted* to be stuck here like this afterwards.'[cycling][roman type][line break][big he of M] ignores your whining pleas for mercy as [he of M] grabs your nipples with pincer grips and twists them painfully.";
	PainUp 10.

[Part - Kaylee / Karl

teacher-kaylee is a diamond-teacher. teacher-kaylee is male.

Definition: teacher-kaylee is presenting as male:
	if futanari fetish is 0, decide yes;
	decide no.

The text-shortcut of teacher-kaylee is "teka".

Figure of kaylee is the file "NPCs/School/Teacher/teacher10.jpg".
Figure of karl is the file "NPCs/School/Teacher/teacher11.jpg".

To decide which figure-name is the monster-image of (M - teacher-kaylee):
	if lady fetish is 1 or futanari fetish > 0, decide on figure of kaylee;
	decide on figure of karl.

To decide which number is the girth of (M - teacher-kaylee):
	decide on 3.

To say LongDickDesc of (M - teacher-kaylee):
	say "long uncut [manly-penis]".

To say MonsterDesc of (M - teacher-kaylee):
	if lady fetish is 1 or futanari fetish > 0, say "This may be the most perfect, beautiful, youthful, healthy, and sexy [man of M] you've ever seen. [if the player is a pervert]Since[otherwise]You struggle to marry this with the fact that since[end if] [he of M][']s fully naked, you can see that [he of M] has a [LongDickDesc of M] swinging between [his of M] legs[if futanari fetish is 0] instead of a pussy[end if].";
	otherwise say "This naked [man of M]'s impossibly perfect abs and shockingly impressive muscles [if the player is gendered female or the player is a pervert]make you weak at the knees with sexual attraction every time you see [him of M].[otherwise]could attract even the straightest man.[line break][variable custom style]Wait, did I really just think that? I'm attracted to a dude?[roman type][line break][end if]".

The teacher-name of teacher-kaylee is "Kaylee".

To uniquely set up (M - teacher-kaylee):
	if futanari fetish is 0, now the teacher-name of M is "Karl".

To say WhoAnswer of (M - teacher-kaylee):
	say "[speech style of M]'I like to think of it as less of a [']lesson['] and more of an... initiation.'[roman type][line break]".

To say WhereAnswer of (M - teacher-kaylee):
	say "[speech style of M]'[if the rank of the player <= 1]If you haven't worked that out by now, then [Azathot] help you.'[otherwise]Stay loose and let it happen.'[end if][roman type][line break]".

To say EscapeAnswer of (M - teacher-kaylee):
	say "[speech style of M]'After you pass my initiation, you'll be allowed to join the VIPs in the school dungeon when we tort... I mean [']entertain['] the prisoner.'[roman type][line break]".

To say StoryAnswer of (M - a teacher-kaylee):
	say "[speech style of M]'If you believe the slut in the dungeon, this whole place is a pocket dimension created by a single powerful entity as a safe and fun place for submissives to let off some steam. What a load of bullshit, haha!'[roman type][line break]".

To say AdviceAnswer of (M - teacher-kaylee):
	say "[speech style of M]'Don't believe in yourself. Believe in me! Believe in the teacher who believes in you. Oh did I say [']Believe in[']? Sorry, I meant [']Fuck['].'[roman type][line break]".

To compute teaching of (M - teacher-kaylee):
	say "[speech style of M]'By the time you get to me, hopefully you'll already know everything you need.'[roman type][line break]".

To compute labour to (M - teacher-kaylee):
	compute labour to teacher-rochelle.]

ultimate-lesson is a lesson. The lesson-teacher of ultimate-lesson is headmistress.
Definition: ultimate-lesson is lesson-appropriate:
	if pledge-lesson is abandoned, decide yes;
	decide no.
To decide which number is the min-students of (L - ultimate-lesson):
	decide on 0.

ultimate-lesson has a number called lesson-completed.
ultimate-lesson has a number called lesson-vetos.

To compute teaching of (L - ultimate-lesson):
	let M be the lesson-teacher of L;
	now M is guarding; [so she doesn't go walkabout during the lesson]
	let LST be the list of students in the location of M;
	repeat with ST running through LST:
		now ST is guarding;
	say "[BigNameDesc of M] stands waiting for you.[line break][speech style of M]'Yes, that's right, I'm your final instructor.'[roman type][line break][big he of M] guides you [if the number of entries in LST is 1]and [student-name of entry 1 of LST] [otherwise if the number of entries in LST > 1]all [end if]to kneel down and puts a blindfold over your eyes.[line break][speech style of M]'Try to think of this as less of a lesson and more of an initiation into our inner circle. All you have to do is each obey all our commands and always [bold type]submit[speech style of M] and you'll earn your golden armband. You [if the number of entries in LST > 0]each [end if]get a single time you're allowed to say no. If [if the number of entries in LST > 0]anyone refuses[otherwise]you refuse[end if] to do something more than that, then you [if the number of entries in LST > 0]ALL [end if]fail.'[roman type][line break]You hear the steps of what sounds like about [if the number of entries in LST > 1]at least ten[otherwise][4 * (the number of entries in LST + 1)][end if] [if lady fetish is 1]women[otherwise]men[end if] entering the room, chuckling sadistically and cracking their joints in preparation.";
	now the lesson-completed of ultimate-lesson is 8;
	now the lesson-vetos of ultimate-lesson is 1;
	now the stance of the player is 1;
	repeat with U running through ultimate-fetish-objects:
		now the happened of U is 0;
	now the source-room of DiamondLessonBlindfolded is School32;
	repeat with U running through ultimate-lesson-actors:
		set up U;
		now U is in DiamondLessonBlindfolded;
	now the player is in DiamondLessonBlindfolded;
	refresh windows.

A game universe initialisation rule:
	let N be 0;
	repeat with U running through ultimate-lesson-actors:
		increase N by 1;
		now the text-shortcut of U is the substituted form of "man[N]".

This is the other ultimate students get focused rule:
	if the player is in DiamondLessonBlindfolded:
		repeat with T running through people in the the location of (the lesson-teacher of ultimate-lesson):
			focus-consider T.
The other ultimate students get focused rule is listed in the focus finding rules.

To compute lesson veto:
	if the lesson-vetos of ultimate-lesson > 0:
		let M be a random ultimate-lesson-actor;
		let STN be the number of students in the location of the lesson-teacher of ultimate-lesson;
		decrease the lesson-vetos of ultimate-lesson by 1;
		if the lesson-vetos of ultimate-lesson > 0, say "[BigNameDesc of M] growls.[line break][speech style of M]'Fine. But you only have [if the lesson-vetos of ultimate-lesson > 1][lesson-vetos of ultimate-lesson] vetos[otherwise]one veto left[end if].'[roman type][line break]";
		otherwise say "[BigNameDesc of M] snarls.[line break][speech style of M]'That's your last one, [cunt]. The next time you disobey us, you [if STN > 1]and all your little slut friends [otherwise if STN is 1]and your slut friend [end if]will have failed your initiation.'[roman type][line break]";
	otherwise:
		now the lesson-completed of ultimate-lesson is -1.

An ultimate-lesson-actor is a kind of monster. An ultimate-lesson-actor is male. There are 4 ultimate-lesson-actors. The text-shortcut of an ultimate-lesson-actor is "voi". Understand "manly", "womanly", "voice" as ultimate-lesson-actor.
To say ShortDesc of (M - an ultimate-lesson-actor):
	say "voice".
To say MediumDesc of (M - an ultimate-lesson-actor):
	say "[man of M]ly voice".
To say FuckerDesc of (M - an ultimate-lesson-actor):
	say "the [FuckingDesc of M]".
To say BigFuckerDesc of (M - an ultimate-lesson-actor):
	say "The [FuckingDesc of M]".
To say FuckingDesc of (M - an ultimate-lesson-actor):
	let B be a random body part penetrated by M;
	say "[one of]stranger[or]anonymous [man of M][or][man of M][at random][if B is body part] [one of]in[or]fucking[or]sliding in and out of[or]plowing[or]thrusting in and out of[as decreasingly likely outcomes] your [variable B][end if]".
To say MonsterDesc of (M - an ultimate-lesson-actor):
	say "Who knows what this [man of M] looks like. You know nothing about [him of M][if the player is not in a predicament room], other than [he of M] clearly is a high ranking member of this institution[end if]. You'll probably never find out who [he of M] is.".
To compute action (N - a number) of (M - an ultimate-lesson-actor):
	if M is in a predicament room:
		if current-predicament is business-briefcase-predicament and the sex-length of M is 0 and current-predicament is ass-to-mouth-agreed and M is penetrating asshole, now the sex-length of M is a random number between 1 and 2; [sometimes extends the length of the scene, and guarantees it always ends with oral creampie]
		if (current-predicament is gloryhole-key-predicament or current-predicament is business-briefcase-predicament) and current-predicament is ass-to-mouth-agreed and the sex-length of M > 0:
			if M is penetrating face:
				dislodge M;
				now M is penetrating asshole;
				say "[one of]After finishing cleaning off[or]After you're done hoovering up the sordid mix of saliva and butt-juice from[or]When you've finished sucking it all off[in random order] [NameDesc of M][']s [manly-penis], you turn around [one of]to return [his of M] [manly-penis] to the depths of your [asshole][or]and inch your [asshole] back onto [his of M] [manly-penis][or]to once again impale yourself on [his of M] length[or]and push [his of M] [manly-penis] back into your [asshole], one inch at a time[then at random]. [one of]Once [he of M][']s back inside[or]After [he of M][']s bottomed out inside you once again[cycling], you [one of]resume the anal sex, moving your hips back and forth along [his of M] length[or]recommence bouncing up and down on [his of M] meaty dick[or]get to work coating [his of M] head and shaft with the taste of your ass once more[then at random].";
				ruin asshole;
			otherwise:
				dislodge M;
				now M is penetrating face;
				say "[one of]You pull forward, allowing [NameDesc of M][']s [manly-penis] to fall out of your [asshole] with a soft 'pop'[or]You gently ease [NameDesc of M][']s thick shaft out of your [asshole][in random order], [one of]and then turn around to approach it with your face[or]before turning around[in random order]. [if the grossness addiction of the player >= 14][one of]Secretly excited about the depravity of it all, [or]You fight back a strong desire to touch yourself as [or]You lick your lips greedily before [or]Salivating with anticipation, [in random order][otherwise if the grossness addiction of the player >= 7][one of]You lick your lips nervously before [or]You force yourself not to hesitate before [or]Holding your breath, [or]Doing your best not to think too hard about what you're doing, [in random order][otherwise][one of]Doing your best to suppress your revulsion, [or]You fight back the urge to retch as [or]Holding your breath and pinching your nose, [or]Desperately trying not to think about what you're doing, [in random order][end if]you [one of]envelop the recently-sodomising stick with your [LipDesc][or]get to work sucking your own ass juices off this anonymous [man of M][']s [manly-penis][or]get to work licking up your own ass sweat[or]start to slurp the bitter wetness off [his of M] bulbous tip[or]use your mouth and tongue to clean off [his of M] [manly-penis][in random order].";
				TasteGrossOut 7;
				say strongHumiliateReflect;
			decrease the sex-length of M by 1;
		otherwise if M is penetrating face:
			if (current-predicament is not gloryhole-key-predicament or gloryhole-key-predicament is not ass-to-mouth-agreed) and a random number between 1 and 3 > 1:
				say "[one of]You bob your head up and down, [if the humiliation of the player < 10000]eyes screwed shut in shame[otherwise if the sex addiction of the player < 10 or current-predicament is gloryhole-key-predicament]eyes closed[otherwise]looking up at the art of the fireman's hunky body[end if] as you submissively polish [his of M] shaft[or]You make [if the oral sex addiction of the player < 4]quiet[otherwise if the oral sex addiction of the player < 6]distinct[otherwise]exaggerated[end if] slurping noises as you suck [FuckerDesc of M][']s [manly-penis], [if the oral sex addiction of the player < 3]determined to get this over and done with as soon as possible[otherwise if the oral sex addiction of the player < 5]determined to get [him of M] off as soon as possible[otherwise]determined to get [him of M] shooting off in your mouth as soon as possible[end if][or][BigFuckerDesc of M] thrusts back and forth through the gloryhole to complement the [if the oral sex addiction of the player > 5]enthusiastic [otherwise if the oral sex addiction of the player < 4]slow [end if]bobbing of your head[or][BigFuckerDesc of M] holds [himself of M] completely still, [if the sex addiction of the player < 7]forcing[otherwise if the oral sex addiction of the player < 6]encouraging[otherwise]allowing[end if] you to do all the work[or][BigFuckerDesc of M] grunts in pleasure as your tongue runs over the head of [his of M] [manly-penis][or][BigFuckerDesc of M] chuckles to [himself of M] as you submissively pleasure [his of M] [manly-penis] with your mouth[in random order][if current-predicament is gloryhole-predicament]. [one of]You can't stop thinking about how everything is being recorded, and your cheeks burn.[or][stopping][otherwise].[end if]";
			otherwise:
				BlowCount;
				if M is wrapped:
					say "[one of][BigFuckerDesc of M] pushes forward as far as [he of M] can go, hissing through [his of M] teeth as [his of M] condom fills with warmth.[or][BigFuckerDesc of M][']s [DickDesc of M] throbs powerfully, firing off load after load of warm [semen] into the condom.[in random order]";
					if lycra-bodysuit is in Toilet01:
						say "After [he of M] pulls away, you hear [him of M] fumbling with the condom for a few moments.";
						UsedCondomUp lycra-bodysuit from M;
					orgasm M;
					dislodge M;
					now M is not wrapped;
				otherwise if [current-predicament is nun-walk-predicament and ]player-gagging is false:
					say "[BigFuckerDesc of M] grunts as [he of M] fills your mouth with [his of M] salty load.";
					FaceFill semen by the semen load of M;
					orgasm M;
					if the player is in Toilet02 and current-predicament is gloryhole-predicament and the semen-spat of gloryhole-predicament is 0, say "[bold type]If you spit it out, you will be penalised.[roman type][line break]";
					if current-predicament is gloryhole-predicament, suggest swallowing;
					if current-predicament is gloryhole-key-predicament or current-predicament is business-briefcase-predicament:
						if current-predicament is business-briefcase-predicament or (the keys-agreed of gloryhole-key-predicament > 0 and a random number between 1 and 2 is 1):
							say "[speech style of M]'Swallow it. Or the deal's off.'[roman type][line break]";
							reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
							set numerical response 1 to "swallow";
							set numerical response 2 to "pretend to swallow";
							set numerical response 3 to "refuse to swallow";
							compute multiple choice question;
							if player-numerical-response is 1:
								compute swallowing;
							otherwise if player-numerical-response is 2:
								say "You do your best to make an exaggerated gulping sound.";
								if a random number between 1 and 3 is 1:
									say "[speech style of M]'I can tell that was fake, you naughty slut. That's it, you get nothing.'[roman type][line break]";
									if current-predicament is business-briefcase-predicament, make video go gloryhole viral;
									otherwise now the keys-agreed of gloryhole-key-predicament is 0;
								otherwise:
									now player-numerical-response is 1;
							otherwise if player-numerical-response is 3:
								say "[variable custom style]'Uh-uh.'[roman type][line break]You make it clear that this would be a step too far for you.";
								if current-predicament is business-briefcase-predicament:
									if the player is getting unlucky:
										say "[speech style of M]'Well then, you just sucked my cock for nothing.'[roman type][line break][GotUnluckyFlav]";
										make video go gloryhole viral;
									otherwise:
										say "[speech style of M]'Ugh, whatever.'[roman type][line break]";
								otherwise:
									say "[speech style of M]'Fine. [if the keys-agreed of gloryhole-key-predicament is 1]But you just lost your rights to this key[otherwise]But for that, instead of [the keys-agreed of gloryhole-key-predicament] keys, I'm only going to give you [the keys-agreed of gloryhole-key-predicament - 1][end if].'[roman type][line break]";
									decrease the keys-agreed of gloryhole-key-predicament by 1;
				otherwise: [Deepthroat cumshot]
					compute deepthroat creampie of M;
				if current-predicament is gloryhole-predicament:
					increase the cocks-sucked of gloryhole-predicament by 1;
					if id-poster is in Toilet01 and the remainder after dividing the cocks-sucked of gloryhole-predicament by 2 is 0, say "[speech style of M]'[one of]Thanks a lot[or]Good job[in random order], [NameBimbo].'[line break][variable custom style][one of]'Wait what?! How do you know my name?!'[or]How does [he of M] know my name?! What can [he of M] see on [his of M] side of the wall?![stopping][roman type][line break]";
					say "With [one of]an ashamed[or]a satisfied[or]a giddy[purely at random] noise, [NameDesc of M] pulls [his of M] [manly-penis] back through the hole and quickly [one of]leaves[or]makes [himself of M] scarce[or]flees the scene[in random order].[line break][variable custom style]That's [cocks-sucked of gloryhole-predicament] down[if the cocks-sucked of gloryhole-predicament is 1]. I could go retrieve my key now, but unless I suck four more [manly-penis]s, the CCTV footage of what I just did will be uploaded to the internet and sent to my friends...[otherwise if the cocks-sucked of gloryhole-predicament < 5]...[otherwise]. I'm done![end if][roman type][line break]";
				otherwise if current-predicament is gloryhole-key-predicament:
					if gloryhole-key-predicament is ass-to-mouth-agreed:
						AnalSexAddictUp 1;
						now gloryhole-key-predicament is not ass-to-mouth-agreed;
					compute gloryhole key resolution of M;
				otherwise if current-predicament is business-briefcase-predicament:
					if business-briefcase-predicament is not predicament-failed:
						say "You sigh with relief as you see the card pushed through the hole. You successfully avoided disaster! You quickly scrunch it into a ball and flush it down the toilet, never to be seen again.";
					say "[BigNameDesc of M] leaves the toilets.";
				otherwise:
					say "With [one of]an ashamed[or]a satisfied[or]a giddy[purely at random] noise, [NameDesc of M] pulls [his of M] [manly-penis] back through the hole and quickly [one of]leaves[or]makes [himself of M] scarce[or]flees the scene[in random order].[if current-predicament is nun-walk-predicament and the semen volume of face < 4 and the semen volume of face > 0][line break][variable custom style]I've got some cum now... but is it enough to make sure I still have some left if I accidentally lose some on the way home?[roman type][line break][end if]";
				destroy M;
		otherwise if M is penetrating a fuckhole: [currently only gloryhole-key-predicament]
			let F be a random fuckhole penetrated by M;
			if the sex-length of M > 0:
				say "[one of]You slowly move your hips back and forward, [if the humiliation of the player < 10000]eyes screwed shut in shame[otherwise]looking down at the ground[end if] as you ride [FuckerDesc of M][']s [manly-penis][or]You breathe heavily as you pleasure [FuckerDesc of M][']s [manly-penis] with your [variable F][or][BigFuckerDesc of M] thrusts back and forth through the gloryhole to complement the [if the relevant sex addiction of the player > 5]enthusiastic [otherwise if the relevant sex addiction of the player < 4]slow [end if] movement of your [variable F][or][BigFuckerDesc of M] holds [himself of M] completely still, [if the sex addiction of the player < 7]forcing[otherwise if the relevant sex addiction of the player < 6]encouraging[otherwise]allowing[end if] you to do all the work with your [variable F][or][BigFuckerDesc of M] sighs with delight at the feeling of your [variable F] around [his of M] [manly-penis][or][BigFuckerDesc of M] is not holding back [his of M] sexual groans and grunts as [he of M] enjoys the feeling of [his of M] [manly-penis] moving in and out of your [variable F][in random order].";
				ruin F;
				decrease the sex-length of M by 1;
			otherwise:
				if F is vagina, FuckCount;
				otherwise AnalCount;
				say CreampieFlav of M in F;
				compute M finishing in F;
				if gloryhole-key-predicament is ass-to-mouth-agreed:
					OralSexAddictUp 1;
					now gloryhole-key-predicament is not ass-to-mouth-agreed;
				compute gloryhole key resolution of M;
				destroy M.
To say FriendlySexResistFlav of (M - an ultimate-lesson-actor):
	say "[if M is not penetrating face][variable custom style]'[one of]I can't take any more[or]Screw this[stopping]!'[roman type][line break][otherwise if the player is able to make sounds][variable custom style][muffled sounds][roman type][line break][end if]";
	say "Fed up, you pull away from [NameDesc of M][']s [manly-penis][if M is penetrating face], coughing and spluttering as you do[end if].".
To compute FriendlySexRelease of (M - an ultimate-lesson-actor):
	if current-predicament is business-briefcase-predicament:
		say "[speech style of M]'Fucking useless whore! That's it...'[roman type][line break]";
		make video go gloryhole viral;
	otherwise:
		say "[BigNameDesc of M] makes [one of]a disappointed[or]a frustrated[or]an annoyed[in random order] sound[if current-predicament is gloryhole-predicament] and then leaves[end if].[line break][MissedGloryholeCock]";
	dislodge M;
	destroy M.
To check perception of (M - an ultimate-lesson-actor):
	do nothing.
To compute perception of (M - an ultimate-lesson-actor):
	do nothing.
Definition: an ultimate-lesson-actor is anticipating-climax: decide no.
Figure of unseen actor is the file "NPCs/School/unseen1.png".
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
	if M is penetrating face, orgasm satisfy M.[dislodges him automatically]
To compute deepthroat creampie of (M - an ultimate-lesson-actor):
	get deepthroat creampie image for M;
	say DeepthroatCreampie of M;
	now the throating of M is 1;
	StomachSemenUp the semen load of M;
	if M is in Toilet02:
		orgasm M;
		dislodge M.
To say DeepthroatCreampie of (M - an ultimate-lesson-actor):
	if M is in Toilet02:
		say "Without warning, [one of][FuckerDesc of M] tightens [his of M] grip, hissing through [his of M] teeth as [he of M] cums straight down your throat.[or][FuckerDesc of M][']s [DickDesc of M] throbs powerfully, firing off load after load of warm [semen] down your throat.[in random order]";
	otherwise:
		say DefaultDeepthroatCreampie of M.
To compute (M - an ultimate-lesson-actor) attacking (C - a clothing):
	if C is crotch-zipped:
		say UnzipFlav of M at C;
		ZipDown C;
	otherwise if C is locked:
		compute M unlocking C;
	otherwise if the chosen-orifice of M is breasts and C is actually top-displacable:
		compute M topdisplacing C;
	otherwise if C is displacable:
		compute M displacing C;
	otherwise if C is rippable:
		compute M ripping C;
	otherwise:
		compute M destroying C.
To compute sudden objectification of (M - an ultimate-lesson-actor):
	do nothing.
To compute condom request choice of (M - an ultimate-lesson-actor):
	if total used condoms > 0:
		say AutomaticCondomFlav of M;
		now M is wrapped.
To say CondomPinFlav of (M - an ultimate-lesson-actor) on (C - a clothing):
	if M is awake, say "[BigNameDesc of M] ties the used condom to your [ShortDesc of C].";
	otherwise say "Completely of its own accord, the used condom suddenly zips from [NameDesc of M] and flies through the air until it hits your [ShortDesc of C].".
To compute labour to (M - an ultimate-lesson-actor):
	say DefaultBirthScene.

To compute tongue demand of (M - an ultimate-lesson-actor):
	say "[BigNameDesc of M] in front of you gives you an order.[line break][speech style of M]'Hold out your tongue.'[roman type][line break]Do you obey?";
	if the player is bimbo consenting:
		let P be a random off-stage tongue piercing;
		if a random number between 1 and (8 - (piercing-fetish * 6)) is 1 and P is actually summonable:
			summon P cursed;
			say "You suddenly scream in pain as [he of M] uses a red hot needle to give you a tongue piercing!!!";
			PainUp 10;
			say "[big he of M] chuckles with a booming voice.[line break][speech style of M]'Surprise, bitch!'[roman type][line break]";
		otherwise if a random number between 1 and (8 - (tattoo-fetish * 6)) is 1 and cum dumpster lip tattoo is actually summonable and there is a worn tattoo:
			summon cum dumpster lip tattoo;
			say "You suddenly scream in shock as somehow, a tattoo is magically applied to the inside of your lips! You can see what it looks like in your mind's eye.";
			try examining cum dumpster lip tattoo;
			say "[big he of M] chuckles with a booming voice.[line break][speech style of M]'What a perfect addition for a cum-chugging whore like you!'[roman type][line break]";
		otherwise if a random number between 1 and (8 - (artificial-fetish * 6)) is 1 and the lips of face < (2 + artificial enhancements fetish):
			say "[big he of M] takes this opportunity to inject the inside of each of your [LipDesc] with some kind of needle![line break][speech style of M]'Bigger cockpillows make a better cocksucker.'[roman type][line break][big he of M][']s not wrong - you can feel they've been pumped full of some kind of artificial plumper!";
			LipsUp 1;
		otherwise if watersports fetish is 1 and a random number between 1 and 3 is 1:
			say "[speech style of M]'Make sure you swallow every drop.'[roman type][line break]A hissing sound heralds a stream of hot [urine] landing directly into your open waiting mouth.";
			FacePiss from M;
		otherwise if a random number between 1 and 2 is 1:
			let ST be a random student in the location of the lesson-teacher of ultimate-lesson;
			if ST is monster and a2m fetish >= 2 and a random number between 1 and 2 is 1:
				say "You hear [NameDesc of ST] yelp as [he of ST] is dragged towards you, and then [his of ST] asshole is pushed against your tongue. [NameDesc of M] barks an order at [him of ST].[line break][speech style of M]'Go on [student-name of ST], give [NameBimbo] what [he of the player] is asking for.'[roman type][line break][BigNameDesc of ST] mutters a muted apology as [he of ST] pushes out a fresh anal creampie onto your tongue.";
				FaceFill semen by 2;
				now face is anal-origin;
				TasteGrossOut 12;
			otherwise:
				say "You hear a satisfied grunt, and then ropes of salty [semen] splash onto your [if bukkake fetish is 1]face and [end if]tongue.";
				if bukkake fetish is 1, CumFaceUp 3;
				FaceFill semen by 1;
			if the total volume of face > 0:
				say "[BigNameDesc of M] laughs with a vindictive tone and then says just one word to you.[line break][speech style of M]'Swallow.'[roman type][line break]Do you obey?";
				if the player is bimbo consenting:
					say "You obediently swallow the load on your tongue.";
					compute silent swallowing;
				otherwise:
					say "You make a disgusted sound and spit it out onto the floor.";
					compute lesson veto;
		otherwise:
			say "[big he of M] spits in your mouth.[line break][TasteGrossOut 4]";
			if the total volume of face > 0:
				say "[speech style of M]'Swallow.'[roman type][line break]Do you obey?";
				if the player is bimbo consenting:
					say "You obediently swallow the stranger's glob of saliva. [moderateHumiliateReflect]";
				otherwise:
					say "You make a disgusted sound and spit it out onto the floor.";
					compute lesson veto;
	otherwise:
		compute lesson veto.

To compute anal creampie expel demand of (M - an ultimate-lesson-actor):
	let ST be a random student in the location of the lesson-teacher of ultimate-lesson;
	if ST is student and a2m fetish >= 2 and a random number between 1 and 2 is 1 and face is actually occupied:
		say "You hear a squeak from [NameDesc of ST] and then you feel [his of ST] lips pressed against your [asshole]. [BigNameDesc of M] that recently pulled out of your [asshole] gives you an order.[line break][speech style of M]'Feed [him of ST] my creampie.'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "You screw your eyes shut even tighter and let it rip, filling [NameDesc of ST][']s mouth with your anal load. You hear [him of M] [one of]moan submissively[or]mewl in complaint[at random] and then gulp it all down.";
			empty belly liquids;
		otherwise:
			compute lesson veto;
			if the lesson-completed of ultimate-lesson > -1, HappinessUp ST;
	otherwise:
		say "You feel something cold and hard pushed against your buttcheeks. [BigNameDesc of M] who recently pulled out of your [asshole] gives you an order.[line break][speech style of M]'Push it out now, slut.'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "You let it rip, filling whatever's behind you with your [if belly liquid types > 1]ass juices[otherwise]ass-cum[end if].";
			if a2m fetish >= 2:
				if face is not actually occupied:
					say "Moments later you find the vessel pressed against your lips.[line break][speech style of M]'Drink up now, you little cum-whore.'[roman type][line break]Do you obey?";
					if the player is bimbo consenting:
						FaceFill semen by the semen volume of belly;
						FaceFill urine by the urine volume of belly;
						progress quest of creampie-drinking-quest;
					otherwise:
						compute lesson veto;
				otherwise if ST is student:
					say "[speech style of M]'Drink up now, you little cum-whore.'[roman type][line break]You hear [NameDesc of ST] whimper as [he of ST] is made to gulp down your anal excretion.";
			empty belly liquids;
		otherwise:
			compute lesson veto.

To compute anal torture of (M - an ultimate-lesson-actor):
	let LST be the list of students in the location of the lesson-teacher of ultimate-lesson;
	[if debugmode > 0, say "List of other students: [LST].[line break]List of things in mouth: [list of things penetrating face].";]
	if watersports fetish is 1 and the total squirtable fill of belly <= 30 and a random number between 1 and 5 > 3:
		say "A new [manly-penis] pushes its way into your [asshole]. ";
		now M is penetrating asshole;
		ruin asshole;
		say "[one of]You expect it to begin fucking you, but instead[or]Once again instead of a thrusting motion[stopping] you feel your belly begin to fill from the inside. [big he of M][']s using your asshole as [his of M] urinal! By the time [he of M] finishes and pulls out, you are feeling very full of [urine].";
		AssFill 12 with urine;
		dislodge M;
	otherwise if the number of entries in LST > 0 and a2m fetish > 1 and the total squirtable fill of belly is 0:
		say "You hear what sounds like some kind of power drill spinning up behind you![line break][speech style of M]'Spread your asshole wide, slut!'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "It seems like the drilldo must have been for someone else. Instead of what you were expecting, you feel the mushy sensation of a banana shoved inside your [asshole]. After it's all been forced inside, a new [manly-penis] pushes its way in behind it and begins to roughly fuck you, mashing the banana up inside you as it goes in and out.[paragraph break]A short while later, [FuckerDesc of M] ejaculates, combining [his of M] jizz with the banana in your butt.";
			now M is penetrating asshole;
			AnalCount;
			orgasm M;
			dislodge M;
			say "When [he of M] pulls out, a sloppy mess of banana and cum follows, dripping into what sounds like a metal dogbowl.[line break][speech style of M]'Dinner is served, whore!'[roman type][line break]";
			if face is not actually occupied and a random number between 1 and 2 is 1:
				say "Your face is guided down to the dogbowl. Do you eat the banana and cum that has just been in your ass? ";
				if the player is bimbo consenting:
					say "You push your face down and begin to slurp up the mushy stuff; the strong tangy flavours of banana, [semen] and ass coating your tongue. [severeHumiliateReflect]";
					StomachSemenUp 1;
					StomachFoodUp 1;
				otherwise:
					say "You refuse to eat the disgusting stuff.";
					compute lesson veto;
			otherwise:
				sort LST in random order;
				let ST be entry 1 of LST;
				say "You hear [NameDesc of ST] whimper as [he of ST] is forced to eat the slimy banana mush that had just been prepared inside your [asshole].";
	otherwise if the number of entries in LST > 1 and face is not actually occupied and a2m fetish > 0 and (a random number between 1 and 3 is 1 or the total squirtable fill of belly > 0):
		sort LST in random order;
		let ST1 be entry 1 of LST;
		let ST2 be entry 2 of LST;
		say "[speech style of M]'Human centipede time, bitches!'[roman type][line break]You squeak with surprise as [NameDesc of ST1][']s asshole is pressed against your [LipDesc], while at the same time you hear [NameDesc of ST2] mewl with hesitation as [his of ST2] mouth gets forced against your [asshole]. [if the number of entries in LST > 3]The others make similar noises as you are all arranged in a line, mouth-to-asshole.[otherwise if the number of entries in LST is 3][BigNameDesc of entry 3 of LST] makes a similar noise as [he of entry 3 of LST] is face-planted between [NameDesc of ST2][']s buttcheeks.[end if][line break][speech style of M]'Well don't just sit there, start licking!'[roman type][line break]You shiver with arousal as [NameDesc of ST2] begins to probe your [asshole] with [his of ST2] tongue. Do you do the same?";
		if the player is bimbo consenting:
			if a2m fetish >= 2, say "You push your tongue as deep into [NameDesc of ST1][']s chute as you dare, and the strong tangy flavours of [semen][if the urine volume of belly > 0], [urine][end if] and ass begin to make you feel a bit light headed.[TasteGrossOut 9][strongHumiliateReflect]";
			otherwise say "You push your tongue as deep into [NameDesc of ST1][']s chute as you dare[TasteGrossOut 7]. [strongHumiliateReflect]";
			if a2m fetish >= 2 and the semen volume of belly + the urine volume of belly > 0:
				say "Then, all of a sudden, you and the other students all begin squeaking in panic at the same time. Your tormentors have begun to tickle each of you at the ribs, and push on your bellies! There's nothing you can do in time to stop what happens next - each of you explodes, filling the mouth of the [boy of ST2] behind you with [semen][if the urine volume of belly > 0] and [urine][end if]. The room fills with the sound of squirting, swallowing, and gagging.[TasteGrossOut 12]";
				FaceFill semen by the semen volume of belly;
				FaceFill urine by the urine volume of belly;
				empty belly liquids;
				progress quest of creampie-drinking-quest;
			otherwise:
				say "The entire experience is deeply [unless the player is a nympho]shameful but there's no escaping that the feeling of having your asshole tongued so fervently is rather [end if]pleasurable.";
				passively stimulate asshole;
		otherwise:
			say "You keep your tongue in your mouth, hoping they won't notice.";
			compute lesson veto;
			if the lesson-completed of ultimate-lesson > -1, HappinessUp ST1;
	otherwise:
		say "You hear what sounds like some kind of power drill spinning up behind you![line break][speech style of M]'Spread your asshole wide, slut!'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "Your cheeks go red as you spread your own [asshole] for the [one of]unknown device. In the end it's just as bad as you expect[or]drilldo[stopping]. A massive spinning dong is mercilessly forced into your [asshole], where it continues spinning, overwhelming your senses and threatening to break your mind.";
			now flesh-johnson is penetrating asshole;
			now the size of flesh-johnson is the openness of asshole + 2;
			if the size of flesh-johnson > 10, now the size of flesh-johnson is 10;
			ruin asshole times (a random number between 2 and 3);
			dislodge flesh-johnson;
			if delayed fainting is 0, say "By the time the stranger removes the drilldo, you are panting like a dog and can hardly think.";
		otherwise:
			say "You don't like the sound of that noise! Your hands go to your [asshole], protecting it out of fear.";
			compute lesson veto.

An ultimate-fetish-object is a kind of object. An ultimate-fetish-object has a number called happened.
Definition: an ultimate-fetish-object is eligible:
	if the happened of it is 0, decide yes;
	decide no.

ultimate-fetish-slap is an ultimate-fetish-object.
Definition: ultimate-fetish-slap is eligible:
	if breasts is exposed and breasts is not actually occupied and the largeness of breasts > 1, decide yes;
	decide no.
To execute (U - ultimate-fetish-slap) for (M - a monster):
	increase the happened of U by 1;
	say "[BigNameDesc of M] barks out an order in an evil voice.[line break][speech style of M]'Your tits are disgusting, slut. I'm going to spank them. Push your chest out and hold it there.'[roman type][line break]Do you push your [BreastDesc] forward?";
	if the player is consenting:
		say "As soon as you push your chest forward, [FuckerDesc of M] begins slapping them with an open hand.[paragraph break][italic type]SMACK SMACK SMACK[roman type][paragraph break]";
		PainUp 20;
		if a random number between 1 and 5 > 2 and the player is able to speak:
			say "That really, really hurt. Now that they're so sensitive, if [he of M] was to do any more, it would hurt even worse.[speech style of M]'Thank me for abusing your tits, and beg me to slap them some more.'[roman type][line break]Do you thank [him of M]?";
			if the player is bimbo consenting:
				say "Choking back tears, you manage to say[line break][variable custom style]'T-thank you for slapping my disgusting tits, [literalMistress of M]. T-they need more punishment. W-would you please hurt them some more and make me cry?'[roman type][line break][big he of M] does exactly that. Chuckling to [himself of M], [he of M] begins smacking them twice as hard, twice as fast, and twice as many.[paragraph break][italic type]SMACK SMACK SMACK SMACK SMACK SMACK[roman type][paragraph break]By the time [he of M] is finished, you have been reduced to a puddle of tears.";
				PainUp 50;
			otherwise:
				say "You remain silent.[line break][variable custom style]I can't take any more![roman type][line break]";
				compute lesson veto;
	otherwise:
		say "You shake your head.[line break][variable custom style]That's not happening![roman type][line break]";
		compute lesson veto;
	say "[BigNameDesc of M] seems to be done with you for now.".

ultimate-fetish-degrade is an ultimate-fetish-object.
Definition: ultimate-fetish-degrade is eligible:
	if the player is able to speak, decide yes;
	decide no.
To execute (U - ultimate-fetish-degrade) for (M - a monster):
	increase the happened of U by 1;
	say "[BigNameDesc of M] uses two fingers from each hand to pull your mouth wide open.[line break][speech style of M]'Tell us how much of a slut you are.'[roman type][line break]Do you do your best to degrade yourself?";
	if the player is bimbo consenting:
		say "Having your mouth held wide open makes all the words come out in a stupid way.[line break][variable custom style]'I love cock so mush! Pwease hill we wish your cocksh! Ruing wy holesh wish your cocksh! I an jusht a dung piesh of weat to ree ushed ash a cungdunk!'[roman type][paragraph break]All the [men of M] in the room laugh at your pathetic speech. [severeHumiliateReflect]";
	otherwise:
		say "You hesitate. When you do try and say something at least, having your mouth held wide open makes all the words come out in a stupid way.[line break][variable custom style]'Uuuuh... I like shex..'[line break][speech style of M]'Pathetic!'[roman type][line break][BigNameDesc of M] interrupts you.";
		compute lesson veto.

ultimate-fetish-magic is an ultimate-fetish-object.
Definition: ultimate-fetish-magic is eligible:
	if the player is able to speak and the magic power of the player > 0, decide yes;
	decide no.
To execute (U - ultimate-fetish-magic) for (M - a monster):
	increase the happened of U by 1;
	let T be the substituted form of "I [one of]can't wait for my next taste of cum[or]love the feeling of [manly-penis][or]live to serve [men of M][at random]";
	say "[BigNameDesc of M] whispers quietly into your ear.[line break][speech style of M]'Say this nice and loud: ['][T].['] Make sure the whole room can hear you, now.'[roman type][line break]Do you speak the words loudly and clearly?";
	if the player is bimbo consenting:
		say "[variable custom style]'[T]!'[roman type][paragraph break]Too late you feel magic rising up in your body, and realise you've just been tricked into saying the incantation for a spell. You [if the number of students in the location of the lesson-teacher of ultimate-lesson > 0]join the other students in screaming[otherwise]scream[end if] as ";
		if ungape is 0 and a random number between 1 and 2 is 1:
			say "you feel your holes stretched almost impossibly wide by invisible forces.";
			now the openness of asshole is 10;
			if the player is possessing a vagina, now the openness of vagina is 10;
		otherwise:
			say "you feel your body parts try to expand.";
			if the player is not top heavy:
				say "Your chest swells.";
				BustUp 3;
			if weight gain fetish is 1:
				say "Your ass grows fatter.";
				FatAssUp 1;
				if the thickness of hips < max hip size:
					HipUp 1;
					say "Your hips grow wider.";
			otherwise if the thickness of hips < max hip size:
				say "Your hips grow wider.";
				HipUp 2;
			if the lips of face < 2 + artificial enhancements fetish:
				say "Your lips become puffier.";
				LipsUp 1;
			HairUp 2;
		compute spell consequences of M;
	otherwise:
		say "You shake your head. Something doesn't feel quite right about that.";
		compute lesson veto.

ultimate-fetish-fertility is an ultimate-fetish-object.
Definition: ultimate-fetish-fertility is eligible:
	if the happened of it is 0 and the player is possessing a vagina and the pregnancy of the player is 0 and pregnancy fetish > 0 and the number of worn chastity cage is 0 and face is not actually occupied, decide yes;
	decide no.
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
Definition: ultimate-fetish-milking is eligible:
	if the milk volume of breasts > 2 and face is not actually occupied, decide yes;
	decide no.
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

An all time based rule (this is the ultimate diamond lesson rule):
	if the player is in DiamondLessonBlindfolded:
		if lesson-completed of ultimate-lesson > 0:
			let LST be the list of students in the location of the lesson-teacher of ultimate-lesson;
			decrease the lesson-completed of ultimate-lesson by 1;
			let E be a random eligible ultimate-fetish-object;
			repeat with M running through ultimate-lesson-actors:
				if delayed fainting is 0 and the lesson-completed of ultimate-lesson >= 0 and the player is in DiamondLessonBlindfolded: [i think some weird stuff with 'compute extra turn' could cause half of this to happen after the lesson is supposed to be concluded unless we check the location]
					if M is penetrating a body part or a random number between 2 and 7 < the lesson-completed of ultimate-lesson: [Earlier turns are more likely to just be sex]
						compute attack of M;
					otherwise if E is eligible ultimate-fetish-object and a random number between 1 and 8 is 1:
						execute E for M;
						now E is a random eligible ultimate-fetish-object;
					otherwise if face is not actually occupied and a random number between 1 and 10 > 7:
						compute tongue demand of M;
					otherwise if asshole is not actually occupied and the player is not ass protected and a random number between 1 and 4 > 1:
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
	now M is unleashed;
	now the location of M is discovered;
	repeat with T running through monsters in DiamondLessonBlindfolded:
		now T is in School01;
	repeat with T running through things in DiamondLessonBlindfolded:
		unless T is backdrop, now T is in the location of M;
	let LST be the list of students in the location of M;
	if lesson-completed of ultimate-lesson < 0:
		say "[speech style of M]'Disappointing.'[roman type][line break][BigNameDesc of M] claps [his of M] hands and the strangers all get up and begin to leave, muttering insults at you as they go. Then, your blindfold[if the number of entries in LST > 0]s are[otherwise] is[end if] ripped off.[line break][speech style of M]'[if the number of entries in LST > 0]Despite your best efforts, thanks to [NameBimbo], you all fail. I imagine you might have lost at least one friend today[otherwise]The other teachers thought you were ready. Clearly they were mistaken. I think you would do well to increase your tolerances before you return here[end if], [NameBimbo].'[roman type][line break]After one final look of derision, [NameDesc of M] leaves the room.";
		repeat with ST running through LST:
			HappinessDown ST by 5;
			now ST is unleashed;
	otherwise:
		now the armband-print of armband is "golden gangbang goddess"; [needs to go before gold ceremony completion]
		say "[speech style of M]'That's enough!'[roman type][line break][BigNameDesc of M] claps [his of M] hands and the strangers all get up and begin to leave, whispering lewd insults at you as they go. Then, your blindfold[if the number of entries in LST > 0]s are[otherwise] is[end if] finally removed.";
		compute gold ceremony completion of M;
		now armband is solid gold;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "";
		say ClothingDesc of armband;
		compute princess reveal of M.

Volume - STUDENTS

Part - AMICABLE STUDENTS


Book - Tiana

student-tiana is an amicable student.

The text-shortcut of student-tiana is "stti".

Figure of rank 1 tiana is the file "NPCs/School/Student/student2a.png".
Figure of rank 2 tiana normal is the file "NPCs/School/Student/student2b.png".
Figure of rank 2 tiana pierced is the file "NPCs/School/Student/student2bp.png".
Figure of rank 3 tiana normal is the file "NPCs/School/Student/student2c.png".
Figure of rank 3 tiana pierced is the file "NPCs/School/Student/student2cp.png".
Figure of rank 4 tiana normal is the file "NPCs/School/Student/student2d.png".
Figure of rank 4 tiana pierced is the file "NPCs/School/Student/student2dp.png".
Figure of rank 4 tiana cum is the file "NPCs/School/Student/student2dc.png".
Figure of rank 4 tiana cum pierced is the file "NPCs/School/Student/student2dcp.png".

To decide which figure-name is the monster-image of (M - student-tiana):
	if the current-rank of M >= 4:
		if M is clitLeaded:
			if M is cumCovered, decide on Figure of rank 4 tiana cum pierced;
			otherwise decide on Figure of rank 4 tiana pierced;
		otherwise:
			if M is cumCovered, decide on Figure of rank 4 tiana cum;
			otherwise decide on Figure of rank 4 tiana normal;
	if the current-rank of M is 3:
		if M is clitLeaded, decide on Figure of rank 3 tiana pierced;
		otherwise decide on Figure of rank 3 tiana normal;
	if the current-rank of M is 2:
		if M is clitLeaded, decide on Figure of rank 2 tiana pierced;
		otherwise decide on Figure of rank 2 tiana normal;
	decide on figure of rank 1 tiana.

To say MonsterDesc of (M - student-tiana):
	say "This chubby blonde has impressively wide hips and [if the largeness of breasts > 10]large[otherwise]massive[end if] breasts [if the current-rank of M > 1]that seem to have grown even larger since [he of M] got promoted - [end if][if the current-rank of M is 1]stretching out a tight white blouse over a red tartan skirt[otherwise if the current-rank of M is 2][he of M] can no longer do up the top button of [his of M] white blouse, leaving [his of M] red bra and lots of cleavage on display. [big he of M] has also lost [his of M] skirt, meaning you can see all of [his of M] matching red panties[otherwise if the current-rank of M is 2][his of M] white bra has completely fallen open and [he of M] can no longer fit inside [his of M] bra, leaving [his of M] jugs completely on display. [big his of M] red panties are also still entirely uncovered[otherwise][he of M] now plays with them idly at all times. [big he of M] is now completely naked and has a rather sex-addled expression on [his of M] face[end if]. [big his of M] smile gives [him of M] a friendly, non-threatening demeanour.".

To say ClitLeadDesc of (M - student-tiana):
	say "[big his of M] clitoris piercing is connected to nipple piercings by a long gold chain. ".

Definition: student-tiana is fetish appropriate:
	if lady fetish is 2, decide no;
	decide yes.

The max-rank of student-tiana is 4.

To update name of (M - student-tiana):
	if the current-rank of M is 1:
		now the student-name of M is "Tiana";
		now the student-print of M is "buxom babe";
	otherwise if the current-rank of M is 2:
		now the student-name of M is "Titi";
		now the student-print of M is "chunky chested chick";
	otherwise:
		now the student-name of M is "Titania";
		now the student-print of M is "titanic titted tart".

To say StoryAnswer of (M - student-tiana):
	say "[speech style of M]'I first came here because my boobs were tiny and while I wanted a boob-job, I knew I would feel self-conscious once I got my new puppies. [slut school] is helping me to feel braver and braver each day, meaning I feel daring enough to show off more and more of these massive puppies!'[roman type][line break]".

To say AdviceAnswer of (M - student-tiana):
	say "[speech style of M]'[one of]It's really hard to get around on your knees when you have tits as big as these puppies. Try to stay on your feet!'[or]You don't always have to wear a bra that fits. Sometimes it only matters that you're close enough.'[at random][roman type][line break]".

Book - Minnie

student-minnie is an amicable student.

The text-shortcut of student-minnie is "stmn".

Figure of minnie is the file "NPCs/School/Student/student23.png".

To decide which figure-name is the monster-image of (M - student-minnie):
	decide on figure of minnie.

To say MonsterDesc of (M - student-minnie):
	say "This tall leggy blonde is wearing, well, [he of M] might as well be wearing nothing at all! [big his of M] nipples are covered by tiny purple sequins pasties shaped like hearts and similar red hearts [if the current-rank of M is 3 and lady fetish is 2]barely cover [his of M] tiny [DickDesc of M] and balls[otherwise if lady fetish is 2]don't even cover [his of M] crotch properly, leaving [his of M] tiny balls completely visible[otherwise if the current-rank of M is 3]barely cover [his of M] pussy[otherwise]don't even cover [his of M] pussy properly, obscuring [his of M] clit but leaving [his of M] labia fully visible[end if]. [big he of M] has sexy 3 inch red stiletto heels, a pierced belly, and a big friendly smile on [his of M] face. [big he of M] looks extremely comfortable with [his of M] striking appearance - from [his of M] posture and gait [if the current-rank of M is 3]you're almost concerned [he of M] has completely forgotten what [he of M][']s wearing[otherwise]it's very clear that [he of M] absolutely loves looking like this[end if]!".

The min-rank of student-minnie is 3.
The current-rank of student-minnie is 3.
The max-rank of student-minnie is 6.

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

Book - Christi Lynn

student-christi is an amicable student.

The text-shortcut of student-christi is "stch".

Figure of christi is the file "NPCs/School/Student/student31.jpg".

To decide which figure-name is the monster-image of (M - student-christi):
	decide on figure of christi.

To say MonsterDesc of (M - student-christi):
	say "This [sissy-girl]-next-door-looking blonde is wearing nothing [if lady fetish is 2]aside from a brightly coloured chastity cage[otherwise]at all[end if]. [big he of M] seems to be finding it absolutely hilarious that a thick, voluminous creampie is currently oozing out of [if lady fetish is 2][his of M] recently-fucked asshole[otherwise][his of M] shaved recently-fucked pussy[end if].".

The min-rank of student-christi is 5.
The current-rank of student-christi is 5.
The max-rank of student-christi is 6.
The student-name of student-christi is "Christi Lynn". Understand "Christi" as student-christi.
The student-print of student-christi is "creampie craver".

To say StoryAnswer of (M - student-christi):
	say "[speech style of M]'When I first came here, I had a crippling fear of getting [semen] [if bukkake fetish is 1]on me or [end if]in me. But look at me now! I can't get enough of this warm sticky feeling! In fact, I should go find a teacher to give me another helping before this one runs out. The hot tub tends to be the best place to [']accidentally['] bump into one...'[roman type][line break]".

To say EscapeAnswer of (M - student-christi):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]Lots more sex, which means lots more creampies for you and me!!! Just be sure to share, okay?'[end if][roman type][line break]".

To say AdviceAnswer of (M - student-christi):
	say "[speech style of M]'The more you do something here, the more you'll grow to LOVE IT MORE THAN ANYTHING!!!'[roman type][line break]".

To compute teaching of (M - student-christi):
	say "[speech style of M]'If you want to keep cum inside you for as long as possible, [if pregnancy fetish is 1]perhaps to maximise your chances of getting pregnant, [end if]make sure to put some kind of toy inside you! If you're too loose and it's just instantly falling out, try doing it on your knees instead. And then put some panties over the top to keep it in.'[roman type][line break]".

Part - DITZY STUDENTS

Book - Stacey

student-stacey is a ditzy student.

The text-shortcut of student-stacey is "stst".

Figure of stacey is the file "NPCs/School/Student/student17.png".

To decide which figure-name is the monster-image of (M - student-stacey):
	decide on figure of stacey.

To say MonsterDesc of (M - student-stacey):
	say "This sexy [sissy-girl] has a wide-eyed doll-like face with overdone whorish makeup and long wavy platinum blonde hair that curls at the bottom where it reaches [his of M] butt. [big he of M] is wearing a denim crop top on [his of M] top half and frilly pink briefs over [his of M] bubble butt. [big he of M] has a rather vacant expression[if the current-rank of M > 1] and can't stop putting a finger or two in between [his of M] puffed out lips[end if][if artificial enhancements fetish is 1]. [big he of M] has square fake-nails on each finger, completing the 'artificial bimbo' look[end if].".

The max-rank of student-stacey is 3.

To update name of (M - student-stacey):
	if the current-rank of M is 1:
		now the student-name of M is "Stacey";
		now the student-print of M is "sexy simpleton";
	otherwise:
		if the current-rank of M is 2, now the student-name of M is "Starr";
		otherwise now the student-name of M is "Starburst";
		now the student-print of M is "stupid slut".

To say StoryAnswer of (M - student-stacey):
	say "[speech style of M]'My sugar daddy told me I need to go back to school to get smarterer. So I came here! They'll help me think good, right?'[roman type][line break]".

To say WhoAnswer of (M - student-stacey):
	say "[big he of M] checks [his of M] armband.[line break][speech style of M]'Oh yeah I remember now, it's [student-name of M]! *giggle*'[roman type][line break]".

To say WhereAnswer of (M - student-stacey):
	say "[speech style of M]'[if the rank of the player <= 1]We're back at school. This is where dumb girls like us end up!'[otherwise]Ooh, there are ranks? I just thought these arm-thingies were to help us remember our names!'[end if][roman type][line break]".

To say AdviceAnswer of (M - an student-stacey):
	say "[speech style of M]'[if the current-rank of M is 1]I've heard a rumour that the smarterest girls let guys stick it up their butt. But I'm a bit scared to try...'[otherwise]When you suck on a [manly-penis], if you do it for long enough then some [tasty] juice comes out! And the more of that you drink, the more smarterer you get! So I try to get as much of it as possible.'[end if][roman type][line break]".

Book - Bree

student-bree is a ditzy student.

The text-shortcut of student-bree is "stbr".

Figure of bree is the file "NPCs/School/Student/student24.png".

To decide which figure-name is the monster-image of (M - student-bree):
	decide on figure of bree.

To say MonsterDesc of (M - student-bree):
	say "This very well-tanned [man of M] looks very fake. [big his of M] long bleach blonde hair frames a fully made-up face with long fake eye-lashes and full, pouty dicksucking lips[if artificial enhancements fetish is 1] that have almost certainly had some cosmetic enhancement to become quite so thick and pillowy[end if]. [if the current-rank of M > 2][big his of M][otherwise][big he of M] looks slightly shy about the fact that [his of M][end if] [if lady fetish < 2]huge D cup boobs are completely bare, the heavily bronzed skin rendering [his of M] nipples almost completely camouflaged. [big his of M] only item of clothing is a[otherwise]bright yellow chastity cage is peeking out of the[end if] very skimpy pink thongkini covering [his of M] loins, which is decorated with a few lines of pearly beads, one of which has the large pearl letters 'S', 'E', 'X' and 'Y' hanging from it. [big his of M] face seems permanently fixed into a sexy pout, regardless of how [he of M] actually feels inside.".

The min-rank of student-bree is 3.
The current-rank of student-bree is 4.

To update name of (M - student-bree):
	if the current-rank of M is 3:
		now the student-name of M is "Brenda";
	otherwise if the current-rank of M is 4:
		now the student-name of M is "Bree";
	otherwise:
		now the student-name of M is "Brandy";
	now the student-print of M is "blonde bimbo".

To say FirstResponse of (M - student-bree):
	say "[speech style of M]'Hello there, darling.'[roman type][line break]".

To say RepeatResponse of (M - student-bree):
	say "[speech style of M]'Hello again, darling.'[roman type][line break]".

To say WhoAnswer of (M - student-bree):
	say "[speech style of M]'My name's [student-name of M], darling.'[roman type][line break]".

To say WhereAnswer of (M - student-bree):
	say "[speech style of M]'[if the rank of the player <= 1]This is [slut school], darling, welcome!'[otherwise]Oh darling, can't you tell what gets all the praise and glory around these parts?'[end if][roman type][line break]".

To say EscapeAnswer of (M - student-bree):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]Oh darling, there are so many [manly-penis]s to suck! And so little time!'[otherwise]Oh darling, I bet there are even more [manly-penis]s! And even bigger ones too!'[end if][roman type][line break]".

To say AdviceAnswer of (M - student-bree):
	say "[speech style of M]'Darling, you need to [if breasts are lewdly exposed]get those big ol['] titties of yours some more attention! And get a few more [manly-penis]s up in between them...'[otherwise if the largeness of breasts > 3]get your tits out! Why would anyone pay attention to the likes of you while my perfect bazookas are on display and yours aren't?'[otherwise if lady fetish is 2]take your shirt off! Guys love cumming on your tits, even if they aren't big!'[otherwise]get a real rack! Why would anyone pay attention to the likes of you while my perfect bazookas are on display and you don't even have any?'[end if][roman type][line break]".

To compute teaching of (M - student-bree):
	say "[speech style of M]'Oh darling, I'm as dumb as a doormat. The only thing I can teach is how to be air-headed!'[roman type][line break]".

To say StoryAnswer of (M - student-bree):
	say "[speech style of M]'Oh darling, how long do you have? My story begins with my first [manly-penis], it was Brian from maths class, [if TG fetish > 0]or wait, was *I* Brian? And then there was that thing involving that witch... and a curse... my memory is going all fuzzy... huh? What were we talking about?'[roman type][line break][otherwise]and as soon as I got my lips around that thick, juicy shaft of his I was completely addicted, oh [NameBimbo] darling it was just so incredibly dreamy, you have no idea, and the cum... oh the cum! Ahhhh...'[roman type][line break][BigNameDesc of M] seems to drift off into a daydream.[end if]".

Book - Pebbles

student-pebbles is a ditzy student.

The text-shortcut of student-pebbles is "stpe".

Figure of pebbles is the file "NPCs/School/Student/student29.jpg".

To decide which figure-name is the monster-image of (M - student-pebbles):
	decide on figure of pebbles.

To say MonsterDesc of (M - student-pebbles):
	say "This chubby brunette [man of M] has [if lady fetish is 2]a black chastity cage peeking out below his matching [otherwise][his of M] big sagging tits hanging over a[end if] tight black underbust corset. The only other things [he of M]'s wearing are a pink collar and pigtail scrunchies. [if the current-rank of M > 4][big he of M] seems to keep [his of M] tongue out of [his of M] mouth at all times, and keep [his of M] hands in a submissive [']puppy paw['] pose[otherwise]Every now and then [he of M] seems to suddenly remember [he of M][']s supposed to be acting like a puppy, and lolls [his of M] tongue out of [his of M] mouth, panting like a happy dog[end if].".

The min-rank of student-pebbles is 4.
The current-rank of student-pebbles is 5.
The max-rank of student-pebbles is 6.

To update name of (M - student-pebbles):
	now the student-name of M is "Pebbles";
	if weight gain fetish is 1, now the student-print of M is "chubby puppy";
	otherwise now the student-print of M is "obedient petgirl".

To say FirstResponse of (M - student-pebbles):
	say "[speech style of M]'Woof! Oooh! New human!'[roman type][line break]".

To say RepeatResponse of (M - student-pebbles):
	say "[speech style of M]'Woof! Woof! Hello again, human!'[roman type][line break]".

To say WhoAnswer of (M - student-pebbles):
	say "[speech style of M]'Uh... Oh no, I think I've forgotten again! I try not to talk like a human too much, because that makes me forget things. Woof!'[roman type][line break]".

To say WhereAnswer of (M - student-pebbles):
	say "[speech style of M]'[if the rank of the player <= 1]This is [slut school], darling, welcome!'[otherwise]Oh darling, can't you tell what gets all the praise and glory around these parts?'[end if][roman type][line break]".

To say EscapeAnswer of (M - student-pebbles):
	say "[speech style of M]'This is my territory! It's my job to protect it from intruders and make my humans happen. Rawr!'[roman type][line break]".

To say AdviceAnswer of (M - student-pebbles):
	say "[speech style of M]'Brains are bad, don't use your brain! Woof! Speaking is bad. Thoughts are bad. I speak like a dog to help not think hard. Arf!'[roman type][line break]".

To compute teaching of (M - student-pebbles):
	say "[speech style of M]'You can't teach an old dog something something. Arf!'[roman type][line break]".

To say StoryAnswer of (M - student-pebbles):
	say "[BigNameDesc of M][']s eyes go dark and sullen for a moment.[line break][speech style of M]'I was a bad person, and I gave my dog too much food. I was an awful owner. So now I'm being taught to think from the dog's perspective[if weight gain fetish is 1], and I'm made to eat as much food as I can manage[end if]. To become a good [boy of M]. A good [boy of M]... Who's a good [boy of M]? Am I a good [boy of M]? Woof woof!'[roman type][line break]".

Part - INNOCENT STUDENTS

Book - Winnie

student-winnie is a innocent student.

The text-shortcut of student-winnie is "stwi".

Figure of winnie rank 1 is the file "NPCs/School/Student/student8a.png".
Figure of winnie rank 2 is the file "NPCs/School/Student/student8b.png".

To decide which figure-name is the monster-image of (M - student-winnie):
	if the current-rank of M is 1, decide on figure of winnie rank 1;
	decide on figure of winnie rank 2.

To say MonsterDesc of (M - student-winnie):
	say "This dark-skinned, orange-haired [man of M] is wearing a set of black star-patterned stockings and dress[if the current-rank of M > 1] which is so sheer that [his of M] black bra and panties are clearly visible[end if]. [big he of M] looks [if the current-rank of M is 1]a little out of [his of M] comfort zone but still calm and collected[otherwise]a little bit anxious[end if].".

The max-rank of student-winnie is 2.

To update name of (M - student-winnie):
	now the student-print of M is "whore in training";
	if the current-rank of M is 1:
		now the student-name of M is "Winona";
	otherwise:
		now the student-name of M is "Winnie".

To say StoryAnswer of (M - student-winnie):
	say "[speech style of M]'My husband and I have always role played situations where he's my pimp and I'm his dirty hooker. But now we thought, why not try it for real? But if I'm going to do this, I want to do it in a safe controlled environment first. So that's why I'm here.'[roman type][line break]".

To say WhereAnswer of (M - student-winnie):
	say "[speech style of M]'[if the rank of the player <= 1]We're in [slut school], obviously! Not for the faint-hearted, that's for sure. I hope I'm daring enough to go through with this...'[otherwise]I imagine the sluttier we act, the more brownie points we'll earn with the professors.'[end if][roman type][line break]".

To decide which number is the heel-skill of (M - student-winnie):
	decide on -2.

To decide which number is the dedication of (M - student-winnie): [We can use this for various calculations to check which students do what]
	decide on 3.

Book - Nell

student-nell is a innocent student.

The text-shortcut of student-nell is "stnl".

Figure of nell is the file "NPCs/School/Student/student33a.jpg".
Figure of nellie is the file "NPCs/School/Student/student33b.jpg".
Figure of narcissa is the file "NPCs/School/Student/student33c.jpg".

To decide which figure-name is the monster-image of (M - student-nell):
	if the current-rank of M is 3, decide on figure of nell;
	if the current-rank of M is 4, decide on figure of nellie;
	decide on figure of narcissa.

To say MonsterDesc of (M - student-nell):
	say "This tall brunette is wearing [if the current-rank of M is 3]a black and pink one-piece negligee that covers very little skin, and the bra section is cut so low that [his of M] nipples would be slightly on display if [he of M] wasn't shyly covering them with [his of M] hands. [big he of M] doesn't seem ready to expose even a bit of [his of M] areolae to the world[otherwise if the current-rank of M is 4]nothing but a short red skirt and a fishnet top. [big he of M] still doesn't quite seem particularly comfortable in something so revealing, and so is still walking around with [his of M] hands over [his of M] chest, to prevent [his of M] nipples from being on display[otherwise]tall clear platform 'stripper' heels, sexy lace black briefs and a very sheer flimsy white halter-neck top. [big his of M] hands are by [his of M] side - it seems [he of M] has finally found the sexy outfit that leaves [him of M] feeling comfortable enough to not cover [his of M] nipples with [his of M] hands. In fact, [he of M] now looks rather proud[end if].".

The current-rank of student-nell is 3.

To update name of (M - student-nell):
	if the current-rank of M is 3:
		now the student-name of M is "Nell";
		now the student-print of M is "nervous neighbour";
	otherwise if the current-rank of M is 4:
		now the student-print of M is "naughty girl-next-door";
		now the student-name of M is "Nellie";
	otherwise:
		now the student-print of M is "nasty girl-next-door";
		now the student-name of M is "Narcissa".

To say StoryAnswer of (M - student-nell):
	say "[speech style of M]'My neighbour and best friend is such a tool... [he of shopkeeper] only ever sees me as [']one of the guys['], just because I'm cool and act like a tomboy. But... I love [him of shopkeeper], and to capture [his of shopkeeper] attention and prove that I can be [his of shopkeeper] [man of M], I need to learn how to act and dress like the slutty girls do.'[roman type][line break]".

To say EscapeAnswer of (M - student-nell):
	say "[speech style of M]'I don't know. The rumour about the secret sex dungeon can't be true, surely?'[roman type][line break]".

To say AdviceAnswer of (M - student-nell):
	say "[speech style of M]'I really don't. This is not a normal day for me[if the current-rank of M is 5]! I really don't know if I have what it takes to make it through the final lesson[end if]...'[roman type][line break]".

To compute teaching of (M - student-nell):
	say "[speech style of M]'Not unless you need to be taught how to stay still and let ten guys cum all over your face. That's apparently the only thing I've managed to do correctly recently.'[roman type][line break]".

Book - Calamity

student-calamity is a innocent student.

Definition: student-calamity is fetish appropriate:
	if bukkake fetish is 1, decide yes;
	decide no.

The text-shortcut of student-calamity is "stcl".

Figure of calamity is the file "NPCs/School/Student/student30.jpg".

To decide which figure-name is the monster-image of (M - student-calamity):
	decide on figure of calamity.

To say MonsterDesc of (M - student-calamity):
	say "This busty blonde is covered from head to toe in a decent number of cum-shots. [big his of M] grimaced facial expression suggests that [he of M] can't really believe [he of M]'s allowed this to happen.".

The current-rank of student-calamity is 5.
The max-rank of student-calamity is 6.
The student-print of student-calamity is "cum canvas".
The student-name of student-calamity is "Calamity".

To say EscapeAnswer of (M - student-calamity):
	say "[speech style of M]'I've heard rumours there's some kind of secret sinister dungeon, where they keep rebels? To be honest, I think wanting to find out if that's true is the only thing that stopped me from quitting a long time ago.'[roman type][line break]".

To say AdviceAnswer of (M - student-calamity):
	say "[speech style of M]'I really don't. This is not a normal day for me[if the current-rank of M is 5]! I really don't know if I have what it takes to make it through the final lesson[end if]...'[roman type][line break]".

To compute teaching of (M - student-calamity):
	say "[speech style of M]'Not unless you need to be taught how to stay still and let ten guys cum all over your face. That's apparently the only thing I've managed to do correctly recently.'[roman type][line break]".

Part - NASTY STUDENTS

Book - Abbi

student-abbi is a nasty student.

The text-shortcut of student-abbi is "stab".

Figure of abbi is the file "NPCs/School/Student/student11.png".

To decide which figure-name is the monster-image of (M - student-abbi):
	decide on figure of abbi.

To say MonsterDesc of (M - student-abbi):
	say "This larger [man of M] has light brown hair and is wearing a skimpy sexy schoolgirl outfit with matching tartan miniskirt and tie. [big his of M] giant J-cup breasts hang down in front of [him of M] like giant udders, [his of M] [if the current-rank of M > 2]sheer [end if]black top lewdly exposing 80% of [his of M] titty meat and hardly supporting the rest. [big he of M] doesn't look happy.".

The min-rank of student-abbi is 2.
The max-rank of student-abbi is 3.
The current-rank of student-abbi is 2.

Definition: student-abbi is fetish appropriate:
	if lady fetish < 2, decide yes;
	decide no.

To update name of (M - student-abbi):
	if the current-rank of M is 2:
		now the student-name of M is "Abriana";
		if weight gain fetish is 1, now the student-print of M is "chubby cowgirl";
		otherwise now the student-print of M is "curvy cowgirl";
	otherwise:
		now the student-name of M is "Abbi";
		if weight gain fetish is 1, now the student-print of M is "gluttonous moocow";
		otherwise now the student-print of M is "massive moocow".

To say FirstResponse of (M - student-abbi):
	say "[speech style of M]'Fuck off.'[roman type][line break]".

To say RepeatResponse of (M - student-abbi):
	say "[speech style of M]'What the fuck do you want?'[roman type][line break]".

To say StoryAnswer of (M - student-abbi):
	say "[speech style of M]'I made a bet with my boyfriend and lost, so I had to come here. I think you can tell what fetish he has.'[roman type][line break]".

To say WhereAnswer of (M - student-abbi):
	say "[speech style of M]'[if the rank of the player <= 1]Are you literally braindead?'[otherwise]Someone as stupid as you is going to have to guzzle a LOT of cum to make it anywhere in here.'[end if][roman type][line break]".

Book - Katya

student-katya is a nasty student.
[Katya is a real bitch from rank 1 - 3 and then suddenly turns into a submissive doll at rank 4.]
[TODO: her ruby promotion scene can involve her breaking from brat into Stepford wife]

Definition: student-katya is unfriendly rather than friendly:
	if it is not pacified and the current-rank of it < 4, decide yes;
	decide no.

The text-shortcut of student-katya is "stka".

Figure of katherine is the file "NPCs/School/Student/student13a.png".
Figure of kat is the file "NPCs/School/Student/student13b.png".
Figure of katya is the file "NPCs/School/Student/student13c.png".
Figure of kitty is the file "NPCs/School/Student/student13d.jpg".
Figure of cuntwarmer is the file "NPCs/School/Student/student13e.png".

To decide which figure-name is the monster-image of (M - student-katya):
	if the current-rank of M is 1:
		decide on figure of katherine;
	otherwise if the current-rank of M is 2:
		decide on figure of kat;
	otherwise if the current-rank of M is 3:
		decide on figure of katya;
	otherwise if the current-rank of M is 4:
		decide on figure of kitty;
	otherwise:
		decide on figure of cuntwarmer.

To say MonsterDesc of (M - student-katya):
	if lady fetish is 2:
		say "This platinum blonde [man of M] has the perfect sissy body shape[if the current-rank of M > 2 and artificial enhancements fetish is 1] including visibly silicone-enhanced asscheeks and a flawless nose job[end if], and [he of M] seems very comfortable in [his of M] own skin. [if the current-rank of M < 4][big his of M] face doesn't match [his of M] fuckdoll body though - [he of M] looks rather rebellious and level-headed, not the vacant sex-addled look you might expect[otherwise][big his of M] face now displays a much more vacant expression - one of submission and humility[end if]. [if the current-rank of M is 1]A white schoolgirl blouse clings to [his of M] svelte upper torso and [his of M] pink tartan miniskirt is so short you can see a peek of [his of M] skimpy panties when you're on your knees. [big he of M] stands impeccably balanced on [his of M] tall black stiletto heels as if [he of M] was born in them[otherwise if the current-rank of M is 2][big his of M] long-sleeved white leather jacket is fully unbuttoned, exposing [his of M] tartan patterned bra. [big his of M] tiny white microshorts hug [his of M] figure so tightly they almost look like they're painted on[otherwise if the current-rank of M is 3][big he of M]'s wearing nothing except a pair of purple low-rise silk briefs and matching half-cup bra which leaves most of [his of M] body on display[otherwise if the current-rank of M is 4][big he of M][']s [one of]now [or][stopping]wearing a sheer pink negligee over [his of M] svelte chest, so see-through it covers nothing. It matches [his of M] skimpy g-string which is so tiny that even [his of M] tiny [DickDesc of M] is in danger of popping out when [he of M] isn't using [his of M] hands to hold it in. Through the negligee you can see that [his of M] nipples have been covered by crosses of black type that read 'FUCK ME!' in big white letters[otherwise][big he of M] is completely naked, aside from a tiny purple chastity cage, and has a completely vacant expression - it looks like [he of M][']s struggling to think clearly[end if].";
	otherwise:
		say "This platinum blonde [man of M] has the perfect bimbo body shape[if the current-rank of M > 2 and artificial enhancements fetish is 1] including visibly silicone-enhanced fuckballs and a flawless nose job[end if], and [he of M] seems very comfortable in [his of M] own skin. [if the current-rank of M < 4][big his of M] face doesn't match [his of M] fuckdoll body though - [he of M] looks rather rebellious and level-headed, not the vacant sex-addled look you might expect[otherwise][big his of M] face now displays a much more vacant expression - one of submission and humility[end if]. [if the current-rank of M is 1]A white schoolgirl blouse tightly stretches over [his of M] seemingly spherical C-cup tits, and [his of M] pink tartan miniskirt is so short you can see a peek of [his of M] skimpy panties when you're on your knees. [big he of M] stands impeccably balanced on [his of M] tall black stiletto heels as if [he of M] was born in them[otherwise if the current-rank of M is 2][big his of M] long-sleeved white leather jacket is fully unbuttoned, exposing [his of M] tartan patterned bra and round C-cup fuckballs. [big his of M] tiny white microshorts hug [his of M] figure so tightly they almost look like they're painted on[otherwise if the current-rank of M is 3][big he of M][']s wearing nothing except a pair of purple low-rise silk briefs and matching half-cup bra which leaves most of [his of M] D-cup titty flesh on display[otherwise if the current-rank of M is 4][big he of M][']s [one of]now [or][stopping]wearing a sheer pink negligee over [his of M] D-cup tits which is so see-through it covers nothing. It matches [his of M] skimpy g-string which is so tiny you can spy the edges of [his of M] pussy when [he of M] isn't covering it with [his of M] hands. Through the negligee you can see that [his of M] nipples have been covered by crosses of black type that read 'FUCK ME!' in big white letters[otherwise][big he of M] is completely naked and has a completely vacant expression - it looks like [he of M][']s struggling to think clearly[end if].".

The max-rank of student-katya is 6.

To update name of (M - student-katya):
	if the current-rank of M is 1:
		now the student-name of M is "Katherine";
		now the student-print of M is "defiant diva";
	otherwise if the current-rank of M is 2:
		now the student-name of M is "Kat";
		now the student-print of M is "smug sister";
	otherwise if the current-rank of M is 3:
		now the student-name of M is "Katya";
		now the student-print of M is "contemptuous cunt";
	otherwise if the current-rank of M is 4:
		now the student-name of M is "Kitty";
		now the student-print of M is "domesticated doll";
		now the text-shortcut of M is "stki";
	otherwise:
		now the student-name of M is "Cuntwarmer";
		now the student-print of M is "brainless bimbo";
		now the text-shortcut of M is "stcu";
	if the current-rank of M < 4, now the text-shortcut of M is "stkt".

[Once katya is "domesticated," she no longer tries to bully you]
To compute student perception of (M - student-katya):
	if the current-rank of M < 4:
		compute appearance assessment of M;
	otherwise:
		say "[big he of M] makes a face like [he of M][']s not happy with you, but then it seems like [his of M] new training gets the better of [him of M] and [he of M] looks at the ground submissively instead.";

To say FirstResponse of (M - student-katya):
	if lady fetish is 2:
		say "[if the current-rank of M < 4][big he of M] looks at you with pure disgust in [his of M] eyes.[line break][speech style of M]'Do I look like I want to talk to you?'[roman type][line break][otherwise if the current-rank of M is 4][big he of M] crosses [his of M] legs and curtseys politely.[line break][speech style of M]'Thank you for gracing me with your presence. Would you like me to present my clitty for inspection?'[roman type][line break]Before you can reply [he of M] has lifted up [his of M] microskirt and is pushing up [his of M] chastity cage with both hands.[line break][speech style of M]'My job is to keep my ass hot and ready at all times. [big please] watch me as I check its lubrication.'[roman type][line break][big he of M] shoves two fingers into [his of M] ass and begins to pump, until it seems like [he of M] might have forgotten you're even there![otherwise][line break][speech style of M]'Ooh, a friend! [big please], do you know where I can find more cock? I feel so empty and sad when there's no cock inside me!'[roman type][line break][end if]";
	otherwise:
		say "[if the current-rank of M < 4][big he of M] looks at you with pure disgust in [his of M] eyes.[line break][speech style of M]'Do I look like I want to talk to you?'[roman type][line break][otherwise if the current-rank of M is 4][big he of M] crosses [his of M] legs and curtseys politely.[line break][speech style of M]'Thank you for gracing me with your presence. Would you like me to present my [cunt] for inspection?'[roman type][line break]Before you can reply [he of M] has lifted [his of M] microskirt and is spreading [his of M] shaved pussy with both hands.[line break][speech style of M]'My job is to keep this hole hot and ready at all times. [big please] watch me as I check its lubrication.'[roman type][line break][big he of M] shoves two fingers inside [himself of M] and begins to pump, until it seems like [he of M] might have forgotten you're even there![otherwise][line break][speech style of M]'Ooh, a friend! [big please], do you know where I can find more cock? I feel so empty and sad when there's no cock inside me!'[roman type][line break][end if]".

To say WhoAnswer of (M - student-katya):
	say "[speech style of M]'[if the current-rank of M < 4]You are to address me as ['][student-name of M]['], should I allow you to talk to me,[otherwise][student-name of M]['] because the only important thing about me is my[end if] [if lady fetish is 2]asshole[otherwise][cunt][end if].'[roman type][line break]".

To say WhereAnswer of (M - student-katya):
	if the rank of the player is 1, say "[speech style of M]'[if the current-rank of M < 4]We're in a pathetic excuse for an institution that tries to turn people from dominant divas into worthless whimpering worms. But only if you're so weak that you can't resist their techniques[otherwise]It would take a very weird set of events for me to be a domesticated fuckdoll but for you to be rank one. How very unusual. Aika would be very interested to know how that happened. I, err, I mean, welcome to my favourite place, [slut school][end if].'[roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]You've got to make it seem like you're falling for their tricks. But if you're not an idiot, you'll only be pretending[otherwise]Submit to the cock. Worship the cock. Serve the cock. And then if you're lucky, the school will reward you with more cock[end if].'[roman type][line break]".

To say EscapeAnswer of (M - student-katya):
	if the current-rank of M > the rank of the player, say "[speech style of M]'[if the current-rank of M < 4]Why would I discuss such things with a useless twerp like you?'[otherwise]There's loads of great new places where you can serve big yummy [manly-penis]. I can't wait until you can join me!'[end if][roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]I don't know yet, but I plan to be the first sane person here to find out[otherwise]I'm hoping there's even bigger and juicier [manly-penis]s to serve[end if].'[roman type][line break]".

To say AdviceAnswer of (M - student-katya):
	if lady fetish is 2, say "[speech style of M]'[if the current-rank of M < 4]Stay out of my way or you'll live to regret it[otherwise if the current-rank of M is 4]Open your eyes and realise that becoming a living breathing human cock sleeve is so much easier and more fulfilling than trying to think for yourself. And then do what I'm doing, and open your ass as well, so the next thick juicy [manly-penis] can impale you more speedily[otherwise]It's important to stay alive, because otherwise your ass won't be warm any more. And then men wouldn't be able to use it whenever they want. And that would be awful! Except it might mean more [manly-penis]s for me, I guess[end if].'[roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]Stay out of my way or you'll live to regret it[otherwise if the current-rank of M is 4]Open your eyes and realise that becoming a living breathing human cock sleeve is so much easier and more fulfilling than trying to think for yourself. And then do what I'm doing, and open your [cunt] as well, so the next thick juicy [manly-penis] can impale you more speedily[otherwise]It's important to stay alive, because otherwise your [cunt] won't be warm any more. And then men wouldn't be able to use it whenever they want. And that would be awful! Except it might mean more [manly-penis]s for me, I guess[end if].'[roman type][line break]".

To say StoryAnswer of (M - student-katya):
	if lady fetish is 2, say "[speech style of M]'[if the current-rank of M < 4]My pathetic husband thought that just because I signed that pre-nup I would let him walk all over me. Imagine his disappointment when he found out I'd rather just spend his money and socialise at parties than waste all my days at home cooking and cleaning and sucking his gross dick! Have you ever SEEN a foreskin? It's disgusting. He thinks that by sending me here he can get me to 'learn my place' and become his little sissy wife and the perfect subservient fucktoy for him and his friends. But I'm going to use this as an opportunity to crush his spirit further - by proving I can have the body of a Goddess and the sex life of a horny spinster, but still wear the trousers in my marriage and order him around like the worthless dog he is[otherwise if the current-rank of M is 4]My husband sent me here to learn to how to be a proper fuckdoll for anyone who wishes to use me. I'm so lucky to be blessed with the privilege of serving his majestic cock whenever he desires. I must make sure to finger myself every few minutes to keep my pathetic asshole hot and wet at all times. Who knows when the next person will want to use me? A good cock sleeve must be permanently available for instant use[otherwise]My husband is the best! He must be coming to collect me soon. I can't wait until I can fill myself with his glorious [manly-penis], it's been so long! I'm hoping he'll bring his best friends so they can use me whenever they want, too! Ooh and maybe he'll take me to the factory he owns so I can serve the hundreds of cocks there whenever they go on break! It'll all be okay again once I'm stuffed to the brim with [manly-penis][end if].'[roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]My pathetic husband thought that just because I'm as hot as a supermodel I would let him walk all over me. Imagine his disappointment when he found out I'd rather just spend his money and socialise at parties than waste all my days at home cooking and cleaning and sucking his tiny dick! He thinks that by sending me here he can get me to 'learn my place' and become his little housewife and the perfect little subservient fucktoy for him and his friends. But I'm going to use this as an opportunity to crush his spirit further - by proving I can have the body of a Goddess and the sex life of a horny spinster, but still wear the trousers in my marriage and order him around like the worthless dog he is[otherwise if the current-rank of M is 4]My husband sent me here to learn to how to be a proper fuckdoll for anyone who wishes to use me. I'm so lucky to be blessed with the privilege of serving his majestic cock whenever he desires. I must make sure to masturbate every few minutes to keep my pathetic [cunt] hot and wet at all times. Who knows when the next person will want to use me? A good cock sleeve must be permanently available for instant use[otherwise]My husband is the best! He must be coming to collect me soon. I can't wait until I can fill myself with his glorious [manly-penis], it's been so long! I'm hoping he'll bring his best friends so they can use me whenever they want, too! Ooh and maybe he'll take me to the factory he owns so I can serve the hundreds of cocks there whenever they go on break! It'll all be okay again once I'm stuffed to the brim with [manly-penis][end if].'[roman type][line break]".

To compute teaching of (M - student-katya):
	say "[speech style of M]'[if the current-rank of M < 4]I could, if I chose to associate with people this far beneath me[otherwise if the current-rank of M is 4]No, sorry. You have to learn who's in charge the hard way to truly understand your place[otherwise if lady fetish is 2]If you have a smaller penis than your partner, it's your duty to let him do whatever he wants with you. It's just the way of the world![otherwise]Let me teach you how to be a perfect cock-warmer. Step one: Have a [cunt]. Step two: Keep it full of [manly-penis] as much as possible. That's it, I've taught you all I know[end if].'[roman type][line break]".

To compute friendly drink of (M - student-katya):
	say "[speech style of M]'[if the current-rank of M < 4]Do I look like a fucking vending machine to you?'[otherwise]I'm sorry, but the only [tasty] thing I drink nowadays is dick juice. And if you want your own, you'll have to use those lips of yours to earn it yourself!'[end if][roman type][line break]".

Book - Darla

student-darla is a nasty student.

The text-shortcut of student-darla is "stda".

Figure of darla is the file "NPCs/School/Student/student14.png".

To decide which figure-name is the monster-image of (M - student-darla):
	decide on figure of darla.

To say MonsterDesc of (M - student-darla):
	say "This tall babe looks like the pinnacle of traditional western beauty. [big his of M] perfect skinny body is covered only by a lovely pink negligee with criss-crossing straps down the front which leave [if lady fetish is 2][his of M] toned belly on display, and the tiny bulge of [his of M] [DickDesc of M] just shy of popping out[otherwise]most of [his of M] toned belly and C-cup breasts on show[end if]. [big he of M] is holding up [his of M] thick flowing locks of golden hair and looking at you with meanness in [his of M] eyes.".

The min-rank of student-darla is 2.
The max-rank of student-darla is 3.
The current-rank of student-darla is 2.

To update name of (M - student-darla):
	if the current-rank of M is 2:
		now the student-name of M is "Darla";
		now the student-print of M is "glamorous goddess";
	otherwise:
		now the student-name of M is "Darling";
		now the student-print of M is "dazzling diva".

To say StoryAnswer of (M - student-darla):
	say "[speech style of M]'I've come here to prove once and for all I am the perfect [if lady fetish is 2]woman, even if I have a penis. In fact, it's especially because I have a penis[otherwise][man of M][end if]. I shall pass every test with flying colours and rise in the ranks faster than anyone ever has before[if the rank of the player < 4]. Whereas I imagine someone as pathetic as you will take quite some time - assuming you ever manage to rise the ranks at all[otherwise if the rank of the player > the current-rank of M]. Don't think I'll let you rub your rank in my face for long, you slutty bitch[end if]!'[roman type][line break]".

Book - Belinda

student-belinda is a nasty student.

The text-shortcut of student-belinda is "stbe".

Figure of belinda is the file "NPCs/School/Student/student15a.png".
Figure of belle is the file "NPCs/School/Student/student15b.png".

To decide which figure-name is the monster-image of (M - student-belinda):
	if the current-rank of M is 1, decide on figure of belinda;
	otherwise decide on figure of belle.

To say MonsterDesc of (M - student-belinda):
	say "This skinny [man of M] has blonde pigtails and an unfriendly frown. [big he of M] is wearing a tight purple belly-exposing latex top with a cleavage window and purple latex pants[if the current-rank of M > 1]. [big he of M] has a tattoo that reads 'Daddy's [big boy of M]' on [his of M] left arm, and you could swear [his of M] top is a little more translucent than before[end if].".

The max-rank of student-belinda is 2.

To update name of (M - student-belinda):
	if the current-rank of M is 1:
		now the student-name of M is "Belinda";
		now the student-print of M is "rubber rebel";
	otherwise:
		now the student-name of M is "Belle";
		now the student-print of M is "lil monster".

To say StoryAnswer of (M - student-belinda):
	say "[speech style of M]'My boyfriend wants me to call him 'Daddy' [if the current-rank of M is 1]but I'm not too sure. Apparently this place is going to convince me it's fun to act like a bratty [sissy-girl]. We'll see...'[otherwise]and I'm training to be his bratty babygirl. I think I've got the attitude for this role already, hah!'[end if][roman type][line break]".

Book - Hiroko

student-hiroko is a nasty student.

The text-shortcut of student-hiroko is "sthi".

Figure of hiroko is the file "NPCs/School/Student/student25.png".

To decide which figure-name is the monster-image of (M - student-hiroko):
	decide on figure of hiroko.

To say MonsterDesc of (M - student-hiroko):
	say "This beautiful Asian [man of M] is wearing nothing but an outfit made out of thin black straps that cover absolutely nothing[if lady fetish is 2], not even the metal chastity cage between [his of M] legs[otherwise] but [his of M] pussy - [his of M] breasts are on full display[end if]. [big he of M] looks at you with unconcealed disgust.".

The current-rank of student-hiroko is 4.
The max-rank of student-hiroko is 6.

To update name of (M - student-hiroko):
	if the current-rank of M is 4:
		now the student-name of M is "Hiroko";
		now the student-print of M is "heavenly hostess";
	otherwise:
		now the student-name of M is "Hostess-sama";
		now the student-print of M is "heavenly harlot".

To say WhoAnswer of (M - student-hiroko):
	say "[speech style of M]'I'm the Queen Bee of these parts, bitch. Ugly worms like you aren't going to get very far while there are people like me around.'[roman type][line break]".

To say WhereAnswer of (M - student-hiroko):
	say "[speech style of M]'[if the rank of the player <= 1]A place where ugly bitches like you get turned into cute girls like me.'[otherwise]It's simple, you get promoted by being the hottest, most attractive [man of M] here. Which means that you have no chance, haha.'[end if][roman type][line break]".

To say EscapeAnswer of (M - student-hiroko):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's a photo of you underneath the words [']NEVER GONNA MAKE IT HERE['] that we like to laugh at as we walk past!'[otherwise]I've heard there's a photo of me on the wall that people like to look at for inspiration.'[end if][roman type][line break]".

To say StoryAnswer of (M - student-hiroko):
	say "[speech style of M]'There's nobody out there who can look as perfect as me. I've come here to prove that [if the current-rank of M > 3]nobody can worship a [manly-penis] like I can[otherwise]compared to me you are all disgusting sluts with no class[end if].'[roman type][line break]".

To say AdviceAnswer of (M - student-hiroko):
	say "[speech style of M]'Give up while you still have a shred of dignity remaining. It won't last long.'[roman type][line break]".

To compute teaching of (M - student-hiroko):
	say "[speech style of M]'You can't teach looks. You're always going to be ugly, too bad.'[roman type][line break]".

Part - TRYHARD STUDENTS



Book - Rain

student-rain is a tryhard student.

The text-shortcut of student-rain is "stra".

Figure of rain is the file "NPCs/School/Student/student26.png".

To decide which figure-name is the monster-image of (M - student-rain):
	decide on figure of rain.

To say MonsterDesc of (M - student-rain):
	if lady fetish is 2, say "This very short, petite sissy can't be older than 19. All [he of M]'s wearing is a flimsy sheer gown made of very thin beige fabric. [if the current-rank of M is 3]Thanks to the very translucent nature of the item, [his of M] puffy nipples and lavender-coloured chastity cage are very visible[otherwise][big his of M] puffy nipples are very visible through the fabric and it is purposefully parted above his belly button, leaving [his of M] lavender-coloured chastity cage on full display[end if]. [big his of M] facial expression is one of confidence and determination[if the current-rank of M >= 5]. [big his of M] ass squelches loudly as [he of M] moves, suggesting it might have been very well used, and recently[end if].";
	otherwise say "This very short, petite [man of M] can't be older than 19. All [he of M]'s wearing is a flimsy sheer gown made of very thin beige fabric. [if the current-rank of M is 3]Thanks to the very translucent nature of the item, [his of M] small boobs and cute innie pussy are very visible[otherwise][big his of M] small boobs are very visible through the fabric and it is purposefully parted above [his of M] belly button, to leave [his of M] pussy fully exposed[end if]. [big his of M] facial expression is one of confidence and determination[if the current-rank of M >= 5]. [big his of M] pussy squelches loudly as [he of M] moves, suggesting it might have been very well used, and recently[end if].".

The min-rank of student-rain is 3.
The current-rank of student-rain is 3.
The max-rank of student-rain is 6.

To update name of (M - student-rain):
	if the current-rank of M is 3:
		now the student-name of M is "Rain";
		now the student-print of M is "racy runt";
	otherwise:
		now the student-name of M is "Rainbow";
		now the student-print of M is "raunchy runt".

To say StoryAnswer of (M - student-rain):
	say "[speech style of M]'[if the current-rank of M is 3]I'm learning to be a slut for my boyfriend. I only do it for him, you know? Not because it's my thing myself. But I'm *very* good at doing anything I set my mind to[otherwise]Did you know that until recently I didn't even crave cock? How dumb was that?! Haha! Now I can't get enough[end if]!'[roman type][line break][one of][big his of M] eyes fall to the junction of your own legs, and [he of M] looks thoughtful.[or]You notice [he of M]'s eyeing the area of your own groin with a speculative look.[at random]".

To say WhereAnswer of (M - student-rain):
	say "[speech style of M]'You've got to be proud of [if the current-rank of M > 3]how much you love[otherwise]your skill with a[end if] [manly-penis]! And then others will be proud of you!'[roman type][line break]".

To say EscapeAnswer of (M - student-rain):
	say "[speech style of M]'More people who you can [if lady fetish is 2]bend over for[otherwise if the current-rank of M > 3]spread your [cunt] for[otherwise]show off your [cunt] to[end if], of course!'[roman type][line break]".

To compute teaching of (M - student-rain):
	say "[speech style of M]'[if lady fetish < 2]This is a [cunt]. [end if]This is a butthole. This is a mouth. [if the current-rank of M > 4]They're the only important things about people like me and you[otherwise]It's important that people like you and me get very used to using them for their intended purposes[end if].'[roman type][line break]".

Book - Ferrari

student-ferrari is a tryhard student.

The text-shortcut of student-ferrari is "stfr".

Figure of ferrari is the file "NPCs/School/Student/student32.jpg".

To decide which figure-name is the monster-image of (M - student-ferrari):
	decide on figure of ferrari.

To say MonsterDesc of (M - student-ferrari):
	say "This short, petite [man of M] has luscious locks of perfect pitch-black hair which complement [his of M] arm-length black latex gloves and thigh-high black latex stockings. [if lady fetish is 2][big he of M] is wearing a custom black chastity cage with neon pink trim, which is completely visible through [his of M] super-skimpy[otherwise][big his of M] A-cup breasts and shaved innie pussy are fully exposed through super-skimpy[end if] black crotchless latex panties and matching cupless bra, which are both decorated with pink bows. A matching black latex choker with a pink bow sits around [his of M] neck. [big his of M] facial expression is one of confidence and determination[if the current-rank of M <= 4]. [big he of M] is attempting to hold a sexy, provocative pose with one hand on [his of M] hip, but keeps adjusting [himself of M], clearly uncertain if it looks right[end if].".

The min-rank of student-ferrari is 4.
The current-rank of student-ferrari is 5.
The max-rank of student-ferrari is 6.
The student-name of student-ferrari is "Ferrari".
The student-print of student-ferrari is "fetish fuckdoll".

To say StoryAnswer of (M - student-ferrari):
	say "[speech style of M]'I originally came here to prove to my curvy best friend that [if lady fetish is 2]sissies[otherwise]petite girls[end if] can get all the boys['] attention if they know how to act and dress. But now... I just feel like I can't leave until I know I'm the BEST fucktoy who's ever lived. So just make sure you don't get in my way.'[roman type][line break]".

To say WhereAnswer of (M - student-ferrari):
	say "[speech style of M]'Just stop worrying about whether other [sissy-girls] are judging you, and focus on what the BOYS will want you to look like.'[roman type][line break]".

To say EscapeAnswer of (M - student-ferrari):
	say "[speech style of M]'[if the current-rank of M < 6]I've heard that once you join the circle of trust, there's some incredible secrets you'll be told[otherwise]It's a disappointment really. Just some dumb prisoner princess who's of no use to me and my quest to be the best fuckdoll there ever was[end if].'[roman type][line break]".

To compute teaching of (M - student-ferrari):
	say "[speech style of M]'Wearing exposing, fetishy clothes is way more sexy than just being butt-naked. Although, that's still pretty sexy.'[roman type][line break]".

School Stuff ends here.
