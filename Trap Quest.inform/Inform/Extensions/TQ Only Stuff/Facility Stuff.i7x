Facility Stuff by TQ Only Stuff begins here.

tutor-hannah is a ruby-tutor.
The training-tutor of pledge-training is mistress.

To set up gym training session of (M - a monster):
	say "[speech style of M]'[one of]Today's training session takes place on the racetrack[or]You know what time it is[stopping]. Follow me to the gym, little ones!'[roman type][line break]";
	allocate 35 seconds;
	repeat with N running through monsters in the location of the player:
		if N is trainee or N is M, now N is in Facility23;
	now the player is in Facility23.

Part - Kissing TrainingSession

kissing-training is a training session. The training-tutor of kissing-training is tutor-angela. kissing-training has a number called training-variant.
[A game universe initialisation rule:
	now the training-variant of kissing-training is a random number between 0 and 1.]

Definition: kissing-training is training-appropriate:
	if face is not actually occupied, decide yes;
	decide no.
To say TrainingSessionTitle of (L - kissing-training):
	say "Oral Skills 10[if the training-variant of L is 1]1[otherwise]2[end if]".

To compute teaching of (L - kissing-training):
	allocate 40 seconds;
	now bigGameLoop is 3; [tells the game not to refresh any windows]
	now temporaryYesNoBackground is Figure of kissing angela;
	now temporaryYesNoResetNeeded is false;
	let M be the training-tutor of L;
	say "[speech style of M]'Oral skillz 10[if the training-variant of L is 1]1[otherwise]2[end if].'[roman type][line break][BigNameDesc of M] holds [his of M] hands behind [his of M] back as [he of M] addresses you all.[line break][speech style of M]'[one of]Your teeth, your lips, your tongue... all are incredibly important toolz at your dizpozal[or]It zeemz zat you all ztill require more vork in zis department[stopping].'[roman type][line break]";
	now the arousal of the player is minimum arousal;
	now the delayed arousal of the player is 0;
	check for arousal change;
	if the number of trainees in the location of M > 2 and the training-variant of L >= 1:
		[now the training-variant of L is 0;]
		compute group kissing training session of M;
	otherwise:
		compute french kissing training session of M;
		if the player is the donator, increase the training-variant of L by 1;
	now bigGameLoop is 0;
	conclude consenting;
	set up rank one trainees. [lots of trainees can get promoted in this training session and it would be good to introduce some new sapphire ones afterwards to make sure we aren't running out]

To compute group kissing training session of (M - a staff member):
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
	repeat with ST running through trainees in the location of the player:
		now the trainingInt1 of ST is 0; [arousal]
	let LSK be the list of trainees in the location of the player;
	let LST be the list of trainees in the location of the player;
	add yourself to LST;
	let LSP be the list of trainees in the location of the player; [people to be promoted]
	add yourself to LSP;
	sort LST in random order;
	while entry 1 in LST is currentCandy:
		sort LST in random order;
	say "[speech style of M]'You vill take turnz in ze following order: ";
	let STE be the number of entries in LST;
	let STE2 be STE;
	repeat with ST running through LST:
		decrease STE2 by 1;
		if ST is trainee, say "[trainee-name of ST][run paragraph on]";
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
			say "You [one of]approach[or]walk over to[in random order] [trainee-name of KT] and pull [him of KT] into a deep kiss. ";
		otherwise:
			while KT is ST:
				let R be a random number between 1 and STE;
				now KT is entry R in LST;
			say "[BigNameDesc of ST] [one of]chooses[or]advances on[or]steps over to[or]approaches[or]kisses[or]snogs[in random order] [YouDesc of KT]. ";
		let STArousal be 0;
		if ST is a trainee, now STArousal is the trainingInt1 of ST;
		otherwise now STArousal is the arousal of the player;
		let KTArousal be 0;
		if KT is a trainee, now KTArousal is the trainingInt1 of KT;
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
		if mostAroused is a trainee, increase mostArousal by the dedication of mostAroused * 400;
		otherwise increase mostArousal by the sex addiction of the player * 400;
		if leastAroused is a trainee, increase leastArousal by the dedication of leastAroused * 400;
		otherwise increase leastArousal by the sex addiction of the player * 400;
		if mostArousal < 1000:
			if mostAroused is a trainee:
				say "[trainee-name of mostAroused] [one of]stands back and leans foward[or]keeps [his of mostAroused] body away[or]looks a bit stiff[or]looks a little awkward[or]seems a little uncertain[or]keeps [his of mostAroused] hands by [his of mostAroused] side[in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a trainee][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
				if leastAroused is a trainee, say "and [trainee-name of leastAroused] [one of]looks just as uncomfortable[or]looks just as unsure[or]doesn't look particularly enthusiastic either[or]is similarly visibly hesitant[in random order].";
			otherwise:
				say "[trainee-name of leastAroused] [one of]stays as stiff as a rock[or]is clearly not too comfortable[or]doesn't open [his of leastAroused] lips any more than [he of leastAroused] has to[in random order].";
		otherwise if mostArousal < 3000:
			if mostAroused is a trainee:
				say "[trainee-name of mostAroused] [one of]tries to maintain eye contact[or]touches [if leastAroused is a trainee][trainee-name of leastAroused]'s[otherwise]your[end if] arms[or]bites [his of mostAroused] lip[or]flutters [his of mostAroused] eyelashes[in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a trainee][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
				if leastArousal < 1000:
					if leastAroused is a trainee, say "while [trainee-name of leastAroused] [one of]just looks uncomfortable[or]squirms with discomfort[or]stands there awkwardly[in random order].";
					otherwise say "but you feel too self-conscious to reciprocate.";
				otherwise:
					if leastAroused is a trainee, say "and [trainee-name of leastAroused] [one of]seems intrigued[or]doesn't seem to mind[or]appears to be comfortable with it[in random order].";
					otherwise say "and you [one of]discover that you're finding the kiss somewhat pleasant yourself[or]find yourself enjoying it[stopping].";
			otherwise:
				say "You kiss [him of leastAroused] somewhat eagerly and aggressively, ";
				if leastArousal < 1000, say "but [he of leastAroused] doesn't [one of]reciprocate[or]respond with the same energy[in random order].";
				otherwise say "and [he of leastAroused] responds in turn, kissing back you just as enthusiastically.";
		otherwise if mostArousal < 5000:
			if mostAroused is a trainee:
				say "[trainee-name of mostAroused] [one of]energetically explores [if leastAroused is a trainee][trainee-name of leastAroused]'s[otherwise]your[end if] mouth with [his of mostAroused] tongue[or]embraces [if leastAroused is a trainee][trainee-name of leastAroused][otherwise]you[end if][or]holds [if leastAroused is a trainee][trainee-name of leastAroused]'s[otherwise]your[end if] cheeks with [his of mostAroused] hands[or]lets out a little moan[in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a trainee][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
				if leastArousal < 1000:
					if leastAroused is a trainee, say "and [trainee-name of leastAroused] [one of]is visibly uncomfortable[or]clenches [his of leastAroused] fists with shame[in random order].";
					otherwise say "which feels way too intimate for you.";
				otherwise if leastArousal < 3000:
					if leastAroused is a trainee, say "but [trainee-name of leastAroused] [one of]seems a bit more hesitant[or]can't bring [himself of leastAroused] to fully reciprocate[in random order].";
					otherwise say "which leaves you feel nervous but also gets your blood pumping.";
				otherwise:
					if leastAroused is a trainee, say "and [trainee-name of leastAroused] [one of]happily rubs [his of leastAroused] hands on top of [hers of mostAroused][or]responds by placing [his of leastAroused] hands on [trainee-name of mostAroused]'s hips[in random order].";
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
			if mostAroused is a trainee:
				say "[trainee-name of mostAroused] [one of]explores [if leastAroused is a trainee][trainee-name of leastAroused]'s[otherwise]your[end if] body with [his of mostAroused] hands[or]runs [his of mostAroused] hands up and down [if leastAroused is a trainee][trainee-name of leastAroused]'s[otherwise]your[end if] sides[or]pulls [if leastAroused is a trainee][trainee-name of leastAroused] in close with one hand on [his of leastAroused] back and one behind [his of leastAroused] head[otherwise]you in close with one hand on your back and one behind your head[end if][in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a trainee][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
			otherwise:
				say "You enthusiastically search for [his of leastAroused] tongue with your own, while rubbing your hands up and down [his of leastAroused] sides, ";
			if leastArousal < 1000:
				if leastAroused is a trainee, say "while [trainee-name of leastAroused] [one of]tries weakly to pull away[or]squeaks with indignation[in random order].";
				otherwise say "which makes you squeak with discomfort.";
			otherwise if leastArousal < 3000:
				if leastAroused is a trainee, say "but [trainee-name of leastAroused] [one of]looks a bit uncomfortable[or]just sort of stands there awkwardly[in random order].";
				otherwise say "which makes you squirm with uncertainty.";
			otherwise if leastArousal < 5000:
				if leastAroused is a trainee, say "and [trainee-name of leastAroused] [one of]lets it happen[or]makes no move to resist[in random order].";
				otherwise say "which makes you feel funny.";
			otherwise:
				if leastAroused is a trainee, say "and [trainee-name of leastAroused] [one of]happily responds in kind[or]does the same back[in random order].";
				otherwise say "and you eagerly do the same back.";
				if mostAroused is the player, passively stimulate belly from leastAroused;
				otherwise increase the trainingInt1 of mostAroused by 150;
			if leastAroused is the player, passively stimulate belly from mostAroused;
			otherwise increase the trainingInt1 of leastAroused by 150;
		otherwise if mostArousal < 10000:
			if mostAroused is a trainee:
				say "[trainee-name of mostAroused] [one of]grabs [if leastAroused is a trainee][trainee-name of leastAroused]'s[otherwise]your[end if] butt with both hands[or]puts one hand on [if leastAroused is a trainee][trainee-name of leastAroused]'s[otherwise]your[end if] chest and the other on [if leastAroused is a trainee][his of leastAroused][otherwise]your[end if] butt[or]molests [if leastAroused is a trainee][trainee-name of leastAroused]'s[otherwise]your[end if] chest with both hands[in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a trainee][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
			otherwise:
				say "You knead [his of leastAroused] [one of]breasts[or]buttocks[in random order] with your hands, ";
			if leastArousal < 1000:
				if leastAroused is a trainee, say "causing [trainee-name of leastAroused] to [one of]grunt in dismay[or]squeal with indignation[in random order].";
				otherwise say "turning you on against your will.";
				if mostAroused is the player, HappinessDown leastAroused;
			otherwise if leastArousal < 3000:
				if leastAroused is a trainee, say "while [trainee-name of leastAroused] [one of]just looks a bit annoyed at [if mostAroused is a trainee][trainee-name of mostAroused]'s[otherwise]your[end if] forwardness[or]mewls with irritation[in random order].";
				otherwise say "which makes you feel awkward and perturbed.";
			otherwise if leastArousal < 5000:
				if leastAroused is a trainee, say "while [trainee-name of leastAroused] [one of]places [his of leastAroused] hands on [if mostAroused is a trainee][trainee-name of mostAroused]'s[otherwise]your[end if] hips[or]opts for the somewhat milder approach of holding [if mostAroused is a trainee][trainee-name of mostAroused][otherwise]you[end if] at the waist[or]gently hugs [if mostAroused is a trainee][him of mostAroused][otherwise]you[end if] back[in random order].";
				otherwise say "while you gingerly embrace [him of mostAroused] back.";
			otherwise if leastArousal < 8000:
				if leastAroused is a trainee, say "while [trainee-name of leastAroused] [one of]runs [his of leastAroused] hands up and down [if mostAroused is a trainee][trainee-name of mostAroused]'s[otherwise]your[end if] sides[or]holds [if mostAroused is a trainee][trainee-name of mostAroused][otherwise]you[end if] close and moans happily into [his of mostAroused] mouth[in random order].";
				otherwise say "and you find yourself melting under [his of mostAroused] touch.";
			otherwise:
				if leastAroused is a trainee, say "and [trainee-name of leastAroused] [one of]grasps [if mostAroused is a trainee][him of mostAroused][otherwise]you[end if] in the same places[or]does the same back[in random order], creating a rather erotic view.";
				otherwise say "and you enthusiastically grab the same parts of [his of mostAroused] body.";
				if mostAroused is the player, passively stimulate hips from leastAroused;
				otherwise increase the trainingInt1 of mostAroused by 400;
			if leastAroused is the player, passively stimulate hips from mostAroused;
			otherwise increase the trainingInt1 of leastAroused by 400;
		otherwise:
			if mostAroused is a trainee:
				say "[trainee-name of mostAroused] [one of]grabs [if leastAroused is a trainee][trainee-name of leastAroused]'s butt with both hands, tucks one leg around [trainee-name of leastAroused][']s, and grinds [his of mostAroused] body up against [hers of leastAroused][otherwise]your butt with both hands, tucks one leg around yours, and grinds [his of mostAroused] body up against yours[end if][or]pulls [if leastAroused is a trainee][trainee-name of leastAroused] as close as [he of mostAroused] can and grinds [his of mostAroused] genitals up against [hers of leastAroused][otherwise]you as close as [he of mostAroused] can and grinds [his of mostAroused] genitals up against yours[end if][in random order] as [he of mostAroused] ";
				if mostAroused is ST, say "kisses [if leastAroused is a trainee][him of leastAroused][otherwise]you[end if], ";
				otherwise say "receives the kiss, ";
			otherwise:
				say "You explore [his of leastAroused] [one of]breasts[or]buttocks[or]tits and ass[in random order] with your hands and grind your crotch on [hers of leastAroused], ";
				increase the trainingInt1 of leastAroused by 1000;
			if leastArousal < 1000:
				if leastAroused is a trainee, say "causing [trainee-name of leastAroused] to [one of]frantically push away from [if mostAroused is a trainee][him of leastAroused][otherwise]you[end if][or]to snarl angrily[in random order].";
				otherwise say "causing you to push away on instinct, but not before [he of mostAroused]'s already made you feel a bit funny inside.";
				if mostAroused is the player, HappinessDown leastAroused;
			otherwise if leastArousal < 3000:
				if leastAroused is a trainee, say "but [trainee-name of leastAroused] [one of]makes a frustrated noise[or]squeals with panic[in random order].";
				otherwise say "making you shiver with discomfort, but also arousal.";
				if mostAroused is the player, HappinessDown leastAroused;
			otherwise if leastArousal < 5000:
				if leastAroused is a trainee, say "leaving [trainee-name of leastAroused] [one of]stunned and unsure how to respond[or]unsure what to do with [his of leastAroused] hands[or]moaning involuntarily[in random order].";
				otherwise say "making you feel all tingly inside.";
			otherwise if leastArousal < 8000:
				if leastAroused is a trainee, say "while [trainee-name of leastAroused] [one of]stands there, shuddering with pleasure[or]moans lewdly into [his of mostAroused] mouth[in random order].";
				otherwise say "and you find yourself shaking with pleasure.";
			otherwise if leastArousal < 10000:
				if leastAroused is a trainee, say "while [trainee-name of leastAroused] [one of]holds onto [if mostAroused is trainee][trainee-name of mostAroused]'s[otherwise]your[end if] buttocks and moans with pleasure[or]feels up [if mostAroused is trainee][trainee-name of mostAroused]'s[otherwise]your[end if] chest and mewls with delight[in random order].";
				otherwise say "and you find yourself moaning with delight as you feel up [his of mostAroused] [one of]breasts[or]buttocks[or]tits and ass[in random order].";
				if mostAroused is the player, passively stimulate hips from leastAroused;
			otherwise:
				if leastAroused is a trainee, say "and [trainee-name of leastAroused] [one of]pushes back just as hard, equally eager to bump and grind [if mostAroused is trainee]their[otherwise]your[end if] sex organs together[or]responds with extremely sexual noises, pushing [his of leastAroused] own genitals forward as much as [he of leastAroused] can[in random order].";
				otherwise say "and you rub back just as hard. It feels incredible!";
				if mostAroused is the player, stimulate vagina from leastAroused;
				otherwise increase the trainingInt1 of mostAroused by 1000;
			if leastAroused is the player, stimulate vagina from mostAroused;
			if mostAroused is the player, stimulate vagina from leastAroused;
			if leastAroused is a trainee, increase the trainingInt1 of leastAroused by 1000;
			if mostAroused is a trainee, increase the trainingInt1 of mostAroused by 1000;
		repeat with STM running through LST:
			if STM is not ST and STM is not KT:
				if STM is trainee and the trainingInt1 of STM > a random number between 10000 and 20000:
					say "[BigNameDesc of STM] can't help but [one of]touch [himself of STM][or]masturbate[or]finger [himself of STM][or]play with [himself of STM][in random order]";
					increase the trainingInt1 of STM by a random number between 750 and 1500;
					if the trainingInt1 of STM > a random number between 12000 and 15000:
						say "! [big he of STM] [one of]orgasms[or]cums[or]climaxes[in random order] hard, [one of]turning red after [he of STM] realises what [he of STM]'s done in front of everyone else[or]squeaking with shame after [he of STM] has come down from [his of STM] electric high[in random order].";
						if STM is listed in LSP, remove STM from LSP;
						now the trainingInt1 of STM is 0;
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
			set numerical response 1 to "Push the candy into [trainee-name of candyReceiver][']s mouth.";
			set numerical response 2 to "Keep the candy in your mouth.";
			compute multiple choice question;
			if player-numerical-response is 1:
				say "As you lock lips with [trainee-name of candyReceiver], you push the candy in. [one of][big he of candyReceiver] lets out a tiny squeak of surprise[or][big his of candyReceiver] grip on you strengthens slightly, but [he of candyReceiver] doesn't say anything[or]subtly shudders as [he of candyReceiver] is forced to accept it into [his of candyReceiver] mouth[in random order]. [bold type][trainee-name of candyReceiver] now has the candy.[roman type][line break]";
				if the trainingInt1 of candyReceiver < 1500, HappinessDown candyReceiver;
			otherwise:
				now candyReceiver is M;
		otherwise if candyReceiver is the player:
			say "After you lock lips, you feel [trainee-name of currentCandy] pushing the candy into your mouth. Uh-oh. [bold type]You now have the candy in your mouth. [roman type]It feels [if candySucks > 4 * the number of trainees in the location of the player]about as big as it was at the start[otherwise if candySucks > 3 * the number of trainees in the location of the player]about two thirds as big as it was at the start[otherwise if candySucks > 2 * the number of trainees in the location of the player]about half as big as it was at the start[otherwise if candySucks > the number of trainees in the location of the player]about a third as big as it was at the start[otherwise]like it's almost all gone[end if].";
			TasteGrossOut 3;
		otherwise if candyReceiver is not M:
			let STXX be STX;
			if STXX is STE, now STXX is 1;
			otherwise increase STXX by 1;
			let STXR be a random number between 1 and 4;
			if STXR is 4 or (currentCandy is entry STXX in LST and STXR is 3), now candyReceiver is M; [trainee decided not to pass on the candy]
		if candyReceiver is not M, now currentCandy is candyReceiver;
		let ALE be the number of entries in arousalList;
		let AST be entry ALE in arousalList;
		let candyArousal be a random number between 750 and 1500;
		if AST is trainee:
			increase the trainingInt1 of AST by candyArousal;
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
		if candySucks <= 0, say "[if currentCandy is a trainee][BigNameDesc of currentCandy] speaks up.[line break][speech style of currentCandy]'Um, the candy just finished dissolving in my mouth.'[otherwise]The candy finishes dissolving in your mouth.[line break][variable custom style]'Um, guys, the candy's gone.'[end if][roman type][line break]The game is over!";
	say "[BigNameDesc of M] claps [his of M] hands.[line break][speech style of M]'Zat is it! Let'z zee now...'[roman type][line break][big he of M] looks around at your crotches.";
	let LSPE be the number of entries in LSP;
	if LSPE is 0:
		say "[speech style of M]'All of you dizgraced yourzelvez! Nobody pazzez!'[roman type][line break]";
	otherwise if LSPE is the number of entries in LST:
		say "[speech style of M]'All of you pazzed! Congratulationz!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'";
		repeat with ST running through LSP:
			say "[if ST is trainee][trainee-name of ST][otherwise][NameBimbo][end if][if LSPE > 1], [otherwise if LSPE is 1] and [otherwise] [end if]";
		say "- you pazz. Ze otherz should be embarrazzed of zemselvez.'[roman type][line break]";
	repeat with ST running through LSP:
		if ST is trainee, promote ST;
	if the player is listed in LSP:
		now armband is emerald;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Sweetie";
		now the armband-print of armband is "super snogger";
		say ClothingDesc of armband;
		update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]
	say "[big he of M] waves [his of M] arms.[line break][speech style of M]'Zat iz it for today! Clazz dizmizzed!'[roman type][line break]".




To compute french kissing training session of (M - a staff member):
	say "[big he of M] licks [his of M] lips.[line break][speech style of M]'Yez... a complete examination iz required. Each of you vill take turnz to kizz me. Eizer you vill be leaving viz a promotion... or you vill be leaving viz a little upgrade...'[roman type][line break]";
	repeat with ST running through trainees in the location of the player:
		say "[speech style of M]'[trainee-name of ST], [one of]come here[or]you next[or]your turn[then at random].'[roman type][line break]";
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
	say "[speech style of M]'Okay [NameBimbo], let'z zee vat you can do.[roman type][line break]You find yourself walking to the front until your face is inches from [tutor-name of M][']s.[big he of M] pouts and slightly opens [his of M] lips, revealing [his of M] waiting tongue. It looks like you could choose to make the first move - this would be rather embarrassing to do in front of the entire cohort, but may well earn you brownie points with [tutor-name of M]. ";
	suggest swallowing;
	if the total volume of face > 0:
		say "You close your eyes and move your face forward until your lips touch, tilting your head slightly to allow them to lock. [tutor-name of M] moans with satisfaction... until you push your [MouthfulDesc] into [his of M] mouth, surprising [him of M]. [big he of M] pulls away, spluttering with panic for a moment until [he of M] manages to gather [his of M] wits. The class is gasping and snickering. You give [NameDesc of M] a sly smirk.";
		if the player is getting unlucky:
			say "[speech style of M]'RECONDITIONING! RECONDITIONING FOR YOU RIGHT NOW!'[roman type][line break]Uh-oh, looks like you caught [him of M] in a bad mood...[line break][GotUnluckyFlav]";
			compute chair reconditioning of M;
		otherwise:
			say "[variable custom style]'You pulled away first!'[roman type][line break]You point out cheekily. [BigNameDesc of M] harrumphs.[line break][speech style of M]'Very clever! I have never had a trainee bezt me in zis way. Fine, you can have your promotion.'[roman type][line break]";
			now armband is emerald;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Kara";
			now the armband-print of armband is "conniving kisser";
			say ClothingDesc of armband;
			update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]
			say "[big he of M] ushers you back to your seat and then addresses the whole class.[line break][speech style of M]'Zat iz it for today! Clazz dizmizzed!'[roman type][line break]";
	otherwise:
		say "Do you make the first move?";
		let tonguedPerson be the player;
		if the player is consenting:
			say "You close your eyes and move your face forward until your lips touch, tilting your head slightly to allow them to lock. [tutor-name of M] moans with satisfaction. [severeHumiliateReflect]You begin to push your tongue inside [tutor-name of M][']s mouth, surprising [him of M]. [big he of M] blocks with [his of M] own tongue, and they slither on top of each other for a few seconds as you fight to enter each other's mouths. The feeling of [his of M] tongue on yours [if the player is a bit horny]arouses you further[otherwise]turns you on a little[end if]. Eventually ";
			if a random number between 1 and the delicateness of the player < 7:
				say "[tutor-name of M] gives way, and allows your tongue to slip beyond [his of M] teeth.";
				now tonguedPerson is M;
				repeat with ST running through tryhard trainees in the location of the player:
					FavourUp ST;
			otherwise:
				say "your bravery subsides and you relent, allowing your superior to explore the insides of your mouth.";
				repeat with ST running through ditzy trainees in the location of the player:
					FavourUp ST;
			passively stimulate face from M times 2;
			finally arouse the delayed arousal of the player;
			update arousal;
			DelicateDown 1;
		otherwise:
			say "[tutor-name of M] tuts at your hesitation and then grabs you by the back of your head, forcing your lips together in a seal, where [he of M] immediately forces [his of M] tongue into your mouth and towards your throat. With [his of M] tongue in your mouth, it definitely feels like [he of M] is in command. At least you feel like you managed to keep some self-respect intact by not being over-eager.";
			Dignify 250;
			repeat with ST running through innocent trainees in the location of the player:
				FavourUp ST;
		let endN be a random number between 6 and 9;
		let N be 0;
		let player-groped-level be -1;
		while N >= 0 and N < endN:
			increase N by 1;
			let KR be player-groped-level + 2;
			increase KissRating by a random number between 1 and KR;
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			say "[if tonguedPerson is the player][tutor-name of M][']s tongue is currently in your mouth - [he of M] has control[otherwise]Your tongue is currently in [his of M] mouth - you have control[end if]. [if player-groped-level >= 0 and tonguedPerson is the player][big he of M][otherwise if player-groped-level >= 0]But [he of M] already[end if] [if player-groped-level is 0]has [his of M] hands on your [AssDesc].[otherwise if player-groped-level is 1]has one hand on your [AssDesc] and one hand on your [BreastDesc].[otherwise if player-groped-level > 1]has one hand on your [BreastDesc] and the other on your [genitals]![end if][line break]";
			set numerical response 1 to "pull away and end the kiss[if newbie tips is 1] (have you entertained [tutor-name of tutor-angela] enough to avoid punishment?)[end if]";
			set numerical response 2 to "keep kissing[if newbie tips is 1 and tonguedPerson is the player and player-groped-level < 2] ([tutor-name of M] gets more handsy, increasing stimulation in future rounds)[otherwise if newbie tips is 1 and tonguedPerson is the player] ([tutor-name of M] deals double vaginal stimulation while you allow her to retain full control of the situation)[end if]";
			if tonguedPerson is the player, set numerical response 3 to "try to regain control by pushing your tongue into [his of M] mouth[if newbie tips is 1 and player-groped-level < 2] (gross yourself out this turn to try and prevent [tutor-name of M] from getting more handsy)[otherwise if newbie tips is 1] (gross yourself out this turn but if you succeed in getting [his of M] tongue out of your mouth you'll significantly reduce overall stimulation)[end if]";
			compute multiple choice question;
			if player-numerical-response is 1:
				now N is 10;
				say "You wrestle free and step back.";
			otherwise:
				if tonguedPerson is M:
					let RD be a random number between 1 and the dexterity of the player;
					let RM be a random number between 1 and the difficulty of M;
					if debuginfo > 0, say "[input-style]Tongue defence check: Dexterity (d[dexterity of the player]) = [RD] | [RM].5 = (d[difficulty of M]) [tutor-name of M] difficulty rating[roman type][line break]";
					say "[tutor-name of M] [one of]uses [his of M] tongue to play with yours in [his of M] mouth[or]massages your tongue with [his of M] lips[or]lets you lick [his of M] lips[or]sucks your saliva off of your tongue[at random], ";
					if RM >= RD:
						say "but then when [he of M] senses an opening, [he of M] manages to shove your tongue back into your mouth and take control!";
						now tonguedPerson is the player;
					otherwise:
						say "every now and then trying to push past, but not being able to find an opening.";
					[passively stimulate face from M times 2;
					check for arousal change;]
				if player-numerical-response is 3:
					say "Your tongues slither on top of each other for a few seconds as you fight to push [tutor-name of M][']s tongue back into [his of M] mouth. The fact that your peers can see you eagerly leaning into the kiss makes you blush. [moderateHumiliateReflect][line break]The sloppiness of your two tongues pressing energetically against each other is a little gross.";
					GrossOut 3;
					if player-groped-level is 1:
						repeat with IST running through innocent trainees in the location of the player:
							say "[one of][IST] can't believe that you're kissing [tutor-name of M] so passionately, considering how [he of M][']s treating your body like a piece of meat.[or][stopping]";
							FavourDown IST;
					let RS be a random number between 1 and the strength of the player;
					let RM be a random number between 1 and the difficulty of M;
					if debuginfo > 0, say "[input-style]Tongue wrestle check: Strength (d[strength of the player]) = [RS] | [RM].5 [tutor-name of M] difficulty rating[roman type][line break]";
					if RS > RM:
						say "[tutor-name of M] gives way, and your tongues are now touching in [his of M] mouth.";
						now tonguedPerson is M;
					otherwise:
						say "[tutor-name of M] doesn't relent, and [his of M] tongue remains firmly inside your mouth.";
					[passively stimulate face from M;
					check for arousal change;]
				if tonguedPerson is M:
					say "[tutor-name of M] [if player-groped-level is -1]submits to your kiss, moaning enthusiastically[otherwise if player-groped-level is 0]lets you play with [his of M] tongue as [he of M] continues to knead your [AssDesc][otherwise if player-groped-level is 1]swirls [his of M] tongue with yours as [he of M] continues to fondle you[otherwise]submits to your oral probing and focuses on playing with your [genitals] and [BreastDesc][end if].";
				otherwise:
					say "[tutor-name of M] [if player-groped-level is -1]passionately explores your mouth with [his of M] tongue, making over-the-top kissing sounds[otherwise if player-groped-level is 0]continues to knead your [AssDesc] as [he of M] lovingly decorates your tongue with [his of M] saliva[otherwise if player-groped-level is 1]hums happily as [he of M] explores your mouth and gropes your body[otherwise]moans with pleasure as [he of M] idly tongues your mouth and focuses on playing with your [genitals] and [BreastDesc][end if].";
				if player-groped-level >= 0:
					say "You feel humiliated that you've let [him of M] [one of][or]continue to [stopping]touch you in front of your fellow trainees! [if player-groped-level >= 2][severeHumiliateReflect][otherwise if player-groped-level >= 1][strongHumiliateReflect][otherwise][slightHumiliateReflect][end if]";
				if player-groped-level >= 2:
					repeat with IST running through innocent trainees in the location of the player:
						FavourDown IST;
				passively stimulate face from M;
				if player-groped-level >= 0, passively stimulate hips from M;
				if player-groped-level >= 1, passively stimulate breasts from M;
				if player-groped-level >= 2:
					passively stimulate vagina from M;
					if tonguedPerson is the player, passively stimulate vagina from M; [it's double stimulation to let her tongue you as well]
					if vagina is orgasming:
						repeat with ST running through trainees in the location of the player:
							FavourDown ST;
						say "After you have finished squealing with pleasure into [tutor-name of M][']s mouth, [he of M] lets the kiss end.";
						OralSexAddictUp 1;
						now N is -1;
				if (N is 1 or N > 2) and N < 9 and tonguedPerson is the player: [round 2 has no progression. balance attempt to make being entirely submissive less of a shit option]
					increase player-groped-level by 1;
					say "[tutor-name of M] [if player-groped-level is 0][bold type]grabs your [AssDesc] with both hands[roman type], with some force. You think you can hear some snickering from behind you[otherwise if player-groped-level is 1][bold type]moves one hand to your [BreastDesc][roman type] and begins to grope you[otherwise if player-groped-level is 2][bold type]moves the hand that was kneading your [AssDesc] to your [genitals][roman type], and begins playing with you down there[otherwise]keeps stroking you down below[end if]. ";
				check for arousal change;
		if N < 10: [Tutor pulls away]
			say "Finally, [NameDesc of M] pulls away and lets go of you.";
			increase KissRating by 10;
		otherwise:
			say "[tutor-name of M] [one of]tuts[or]harrumphs[in random order] with mild disappointment.";
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
				update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]
		otherwise: [player orgasmed]
			say "[speech style of M]'You pushed yourzelf too far, it vould zeem, and embarrazzed yourzelf in front of ze whole claz. Next time, try to take more control. I zink ze humiliation you've juzt zuffered iz punishment enough though, don't you?'[roman type][line break]";
		say "[big he of M] ushers you back to your seat and then addresses the whole class.[line break][speech style of M]'Zat iz it for today! Clazz dizmizzed!'[roman type][line break]".

To say kissPunishmentDesc of (ST - a trainee):
	say "Okay, until the next time I zee you for clazz... [one of]you cannot hear people zpeak until you have firzt tazted their tongue[or]you can only experienze zexual pleazure vile kizzing anozer [man of ST][or]everyzing you eat vill tazte like my deliciouz zaliva[or]your mouth vill be in a permanent pouting [']O['][in random order]".

To compute kissPromotion of (ST - a trainee):
	let M be the training-tutor of kissing-training;
	say "[BigNameDesc of M] [one of]licks [his of M] lips[or]sighs with delight[or]smiles coyly[in random order].[line break][speech style of M]'Oh yez, you clearly know vat you are doing... Fine, you may go.'[roman type][line break]";
	promote ST.

Part - Seraphina

tutor-seraphina is an emerald-tutor.

The text-shortcut of tutor-seraphina is "teas".

Figure of seraphina is the file "NPCs/Facility/Tutor/tutor4a.png".
Figure of enslaved seraphina is the file "NPCs/Facility/Tutor/tutor4b.png".
Figure of training session seraphina is the file "NPCs/Facility/Tutor/tutor4c.jpg".

To decide which figure-name is the monster-image of (M - tutor-seraphina):
	if M is defeated, decide on figure of enslaved seraphina;
	decide on figure of seraphina.

To say MonsterDesc of (M - tutor-seraphina):
	if lady fetish is 2:
		say "This short, stocky [man of M] has wavy brown hair sitting above a confident and slightly vindictive expression. [big his of M] steampunk style gothic corset exudes a feeling of sex appeal and power.";
	otherwise:
		if M is defeated, say "[tutor-name of M][']s steampunk outfit has been removed at the crotch and breasts. [big his of M] heaving chest is now on complete display[if lactation fetish is 1], and seems to be uncontrollably lactating[end if]. [big his of M] arms and hands appear to be unable to move from their current position - holding a flat silver serving tray up under [his of M] hefty bosom, as if preparing them for 'serving', whilst painfully trapping [his of M] own nipples under [his of M] thumbs. [big his of M] huge cleavage is decorated with flavoured chocolate and strawberry sauce which has been used to spell 'Free Fuck Meat' across [his of M] chest, and finished with a dollop of whipped cream and a cherry for good measure.";
		otherwise say "This short, stocky lady has wavy brown hair sitting above a confident and slightly vindictive expression. [big his of M] steampunk style, including gothic corset, would be rather unique and eye-catching if it wasn't for the fact that all eyes are invariably drawn to [his of M] huge breasts which are pushing the overbust section of [his of M] corset to its limits.".

The tutor-name of tutor-seraphina is "Seraphina".

Definition: tutor-seraphina is fetish appropriate:
	if max breast size >= 8, decide yes;
	decide no.

To say WhoAnswer of (M - tutor-seraphina):
	say "[speech style of M]'Can you not guess what [']assets['] I bring to the table?'[roman type][line break]".

To say WhereAnswer of (M - tutor-seraphina):
	say "[speech style of M]'[if the rank of the player <= 1]Exactly where you need to be.'[otherwise]Leave your ego at the door.'[end if][roman type][line break]".

To say AdviceAnswer of (M - tutor-seraphina):
	say "[speech style of M]'Just always remember - bigger is better. No exceptions!'[roman type][line break]".

To say EnslavedDominationFlav of (M - tutor-seraphina):
	if the player is able to eat:
		say "You hook two fingers inside [NameDesc of M][']s cunt and pull [him of M] a step closer. [big he of M] just whimpers timidly as [he of M] allows you to eat some tasty whipped cream off of [his of M] exposed chest.";
		StomachFoodUp 1;
	otherwise:
		say "You roughly push the bottom of [NameDesc of M][']s tray upwards, forcing [his of M] chest into [his of M] face, covering [him of M] in the whipped cream and sauce that had been used to decorate [his of M] exposed breasts.[line break][speech style of M]'Thank you for humiliating me, [if the player is presenting as male]Master[otherwise]Mistress[end if] [NameBimbo]...'[roman type][line break][BigNameDesc of M] quietly mutters. A few seconds later, the princess's magic causes the cream and sauce to redecorate [his of M] chest, just as it had been a few moments ago.".
To decide which number is the EnslavedDominationThreshold of (M - tutor-seraphina):
	decide on 14000.

tits-training is a training session. The training-tutor of tits-training is tutor-seraphina.
Definition: tits-training is training-appropriate:
	if the player is top heavy and the largeness of breasts < 6, decide no;
	decide yes.
To say TrainingSessionTitle of (L - tits-training):
	say "Tits".

To compute teaching of (L - tits-training):
	let M be the training-tutor of L;
	now temporaryYesNoBackground is Figure of training session seraphina;
	now temporaryYesNoResetNeeded is false;
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
			let S be a random demotable nasty trainee in the location of the player;
			if S is trainee:
				say "[S] complains loudly.[line break][speech style of S]'This is bullshit! You can't promote a basic bitch like [him of the player] just for looking like a slutty tramp!'[roman type][line break][M] flashes [him of S] a furious stare.[line break][speech style of M]'[NameBimbo] is the epitome of beauty! You don't deserve to be in my class. No, you don't even deserve to share a rank with these other trainees!'[roman type][line break]";
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
			update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]
		otherwise:
			say "[NameDesc of M] gestures at you.[line break][speech style of M]'Now this is a woman who has truly striven for perfection, but look at that clothing! There's nowhere near enough cleavage showing. It's almost like she is ashamed of the size of her massive titties. That just won't do!'[roman type][line break][big he of M] actually looks rather angry.[line break][variable custom style]Uh-oh...[roman type][line break][big he of M] opens the ancient-looking book that [he of M] is holding and turns it to a certain page. [big he of M] begins reciting a chant in a very bizarre sounding language.[line break][speech style of M]'PUJ VLTU[']BE[']JAJ!'[roman type][line break]The book glows with dark energy which then shoots out and strikes you in the chest! You feel powerful magic surging through your veins.";
			MagicPowerUp 4;
			repeat with C running through worn actually breast covering clothing:
				say "Your [ShortDesc of C] disintegrates in a burst of black flame!";
				destroy C;
			if topless temporary fetish is 0, say "You suddenly feel very comfortable with having your [BreastDesc] on full display. In fact, the idea of wearing something that covers you up now feels just objectively... wrong. Your magnificent mammaries and proudly erect nipples are destined to be gazed upon! It would be wrong of you to deprive anyone of that wonderful privilege.";
			if topless temporary fetish < 20,	now topless temporary fetish is 20;
			say "[speech style of M]'That's better! Now we can clearly see that these ta-tas definitely deserve a promotion.'[roman type][line break]";
			now armband is ruby;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Juggz";
			now the armband-print of armband is "topless talent";
			say ClothingDesc of armband;
			say "[BigNameDesc of M] smirks.[line break][speech style of M]'Well I think that's enough excitement for one day! Hopefully you've all learned something about what it TRULY means to own a pair of proper boobs. [NameBimbo] will certainly have to learn [his of the player] lesson the practical way - TWENTY TIMES, in in fact. Anyway, until next time.'[roman type][line break][big he of M] disbands the class.";
	otherwise if (the breast-enhancement of nurse is not 0 or a random number between 1 and 2 is 1) and the number of worn chest tattoos is 0 and (breasts is showing cleavage or the number of worn actually not-top-displacable fully covering clothing is 0):
		let S be random trainee in the location of the player;
		say "[big he of M] opens a desk drawer and retrieves several black marker pens.[line break][speech style of M]'Today we will be helping each other learn to be proud of displaying their [if lady fetish is 2]flat chests[otherwise]cleavage[end if]. Firstly, let's split into groups.'[roman type][line break][NameDesc of M] assigns people into pairs. You are partnered with [NameDesc of S].[line break][speech style of M]'You will each be writing a phrase on your partner's [if lady fetish is 2]cleavage[otherwise]chest[end if]. I want you to come up with something cheeky that will make the wearer's titty-meat nice and eye catching. Don't worry, it's not permanent.'[roman type][line break]Each pair is handed a pen. You are given the pen for your pair, so you go first. [if the player is a nympho]A naughty thought comes to your mind, and you write 'stick your dick here'[otherwise if the player is a pervert]After thinking for a few moments you write 'one for the wank bank'[otherwise]You struggle to think of anything inventive, and end up just writing 'hot stuff'[end if] on [NameDesc of S][']s cleavage.[line break]But then it's [his of S] turn. [big he of S] takes the pen off you and ";
		compute tits marker choice of S;
		now the text-shortcut of marker chest tattoo is the substituted form of "[tattoo-title of marker chest tattoo]";
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
		say "[big he of M] coughs loudly and then raises [his of M] voice.[line break][speech style of M]'Okay, let's raise the stakes a bit. I have a spell that can turn any ink into a permanent tattoo. Anyone who says they are willing to have their words become a permanent public declaration on their bosom will graduate this class and become a ruby trainee. Anyone interested?'[roman type][line break]Do you volunteer to have the words '[tattoo-title of marker chest tattoo]' permanently inked on your chest? ";
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
			update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]
			say "[M] folds [his of M] arms, looking very pleased with [himself of M].[line break][speech style of M]'All right, class dismissed.'[roman type][line break]";
		otherwise:
			say "Everybody looks awkward and casts their eyes downward, and a long silence comes over the room. Eventually [NameDesc of M] speaks.[line break][speech style of M]'Disappointing.'[roman type][line break]With a flourish of [his of M] spellbook, everybody's words disappear from their chest. [one of]You can feel that a small amount of the magic power that [NameDesc of M] just used has remained in your veins.[@ MagicPowerUp 1][or][stopping][line break][big he of M] sounds genuinely downcast.[line break][speech style of M]'You all need to work on your bravery for the next time we convene. Class dismissed.'[roman type][line break]";
	otherwise:
		let S be a random promotable trainee in the location of the player;
		if trainee-abbi is in the location of the player, now S is trainee-abbi; [She's large breasted after all]
		if trainee-tiana is in the location of the player, now S is trainee-tiana; [She's super huge breasted after all]
		say "[NameDesc of M] makes you all stand and practise a few poses that are designed to emphasise your breasts, including pushing your shoulders back, squeezing your tits in between your arms, and bending over at the waist. Soon you are all tired and [he of M] looks satisfied.[line break][speech style of M]'Okay, that's enough for today. [if S is trainee][trainee-name of S], you have made brilliant progress since you first started coming to my classes. I think you deserve a promotion. For the rest of you, [end if]I'm going to assign you some optional [']homework[']. I've informed the nurse of our little problems here... and I do mean little. So the next time you go to visit [him of nurse], you can expect [him of nurse] to be giving each and everyone one of you a nice... enhancement. If you don't want it, then you'd better not go see [him of nurse] before the next time we meet.'[roman type][line break]With that, [NameDesc of M] packs up [his of M] things and begins to walk for the door.[line break][speech style of M]'Until next time, then!'[roman type][line break]";
		if S is trainee, promote S;
		now the breast-enhancement of nurse is 2. [It will immediately get reduced to 1 by the code in "To compute potential training session"]

To compute tits marker choice of (S - a trainee):
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

To compute tits marker reaction of (S - a trainee):
	say "[speech style of training-tutor of tits-training]'Hmm, this is fine. Nothing special, but does the job. Not bad, [trainee-name of S].'[roman type][line break]".

To compute tits marker choice of (S - a ditzy trainee):
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

To compute tits marker reaction of (S - a ditzy trainee):
	say "[speech style of training-tutor of tits-training]'Hmm. A bit crude, but I guess it does the job. You'd certainly get more attention.'[roman type][line break]".

To compute tits marker choice of (S - a nasty trainee):
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

To compute tits marker reaction of (S - a nasty trainee):
	say "[speech style of training-tutor of tits-training]'No, no no! This is all wrong. Who would want such a horrible message written on their breasts?! Get it together, [trainee-name of S].'[roman type][line break]".

To compute tits marker choice of (S - a tryhard trainee):
	say "doesn't hesitate before taking the pen to your skin. ";
	let R be a random number between 1 and 2;
	if R is 1:
		now the tattoo-title of marker chest tattoo is "it's hard not to look isn't it?";
	otherwise:
		now the tattoo-title of marker chest tattoo is "if you can read this you owe me a drink";
	now the tattoo-outrage of marker chest tattoo is 10;
	say "[big he of S] has a scheming grin as [he of S] writes '[tattoo-title of marker chest tattoo]' onto your body![line break]".

To compute tits marker reaction of (S - a tryhard trainee):
	say "[speech style of training-tutor of tits-training]'Great idea, [trainee-name of S]! I love it. Attention grabbing without being too crass.'[roman type][line break]".

Part - Rochelle / Roger

tutor-rochelle is a ruby-tutor. tutor-rochelle is male.

Definition: tutor-rochelle is presenting as male:
	if futanari fetish is 0, decide yes;
	decide no.
Definition: tutor-rochelle is refusing to propose: [won't propose when she might need to teach]
	if the rank of the player < 4, decide yes;
	decide no.

The text-shortcut of tutor-rochelle is "tero".

Figure of rochelle is the file "NPCs/Facility/Tutor/tutor7a.png".
Figure of slave rochelle is the file "NPCs/Facility/Tutor/tutor7b.png".
Figure of rochelle condom training session is the file "NPCs/Facility/Tutor/tutor7c.jpg".
Figure of roger is the file "NPCs/Facility/Tutor/tutor8a.png".
Figure of slave roger is the file "NPCs/Facility/Tutor/tutor8b.png".

To decide which figure-name is the monster-image of (M - tutor-rochelle):
	if lady fetish is 1 or futanari fetish > 0, decide on figure of rochelle;
	decide on figure of roger.

To decide which figure-name is the pacified-image of (M - tutor-rochelle):
	if lady fetish is 1 or futanari fetish > 0, decide on figure of slave rochelle;
	decide on figure of slave roger.

To decide which number is the girth of (M - tutor-rochelle):
	decide on 7.

To say LongDickDesc of (M - tutor-rochelle):
	say "huge thick [DickDesc of M]";

To say MonsterDesc of (M - tutor-rochelle):
	if M is pacified:
		if lady fetish is 1 or futanari fetish > 0, say "This poor big-dicked futa has a unique chastity cage locked around [his of M] loins. It has a strict tight belt to keep it in place and to keep [his of M] pussy blocked off, and a large clear plastic cage to contain [his of M] [LongDickDesc of M]. The exact tight fit of the cage seems to be preventing [him of M] from losing [his of M] erection. But even if [he of M] fucks someone, [he of M][']s not going to be able to feel a thing. [big he of M] is also wearing some new piercings - two nipples piercings and a belly button piercing - connected by a gold chain, completing the 'sex slave' look[unless playerRegion is facility]. [big his of M] butt is a raw shade of red - evidence of a recent rough spanking session[end if].";
		otherwise say "The cuffed ankles, wrists cuffed behind [his of M] back and the ballgag tightly strapped in [his of M] mouth are hardly noticeable thanks to the two huge pink ribbons that now constitute this big-dicked [man of M][']s only clothing. One is around [his of M] neck, the other around the base of [his of M] [LongDickDesc of M], mostly covering it. It would appear that either due to magic or just the sheer emasculation of [his of M] new appearance, [he of M] can no longer get hard.";
	otherwise:
		say "Even if [his of M] armband didn't make it clear that this grinning [man of M] is a tutor, there's no avoiding noticing [his of M] [LongDickDesc of M] swinging from [his of M] crotch. Its 9.5 inch length and equally impressive girth must put it in the top 1% of [manly-penis]s.".

The tutor-name of tutor-rochelle is "Rochelle".

To uniquely set up (M - tutor-rochelle):
	if futanari fetish is 0, now the tutor-name of M is "Roger".

To say WhoAnswer of (M - tutor-rochelle):
	say "[speech style of M]'I'd have thought that was pretty obvious. I teach dumb [boy of the player]s like you how to properly service a [DickDesc of M].'[roman type][line break]".

To say WhereAnswer of (M - tutor-rochelle):
	say "[speech style of M]'[if the rank of the player <= 1]Somewhere people can be safe while learning how not to look like a helpless idiot in the bedroom.'[otherwise]All it takes is putting in more... [']dedication['] than your peers.'[end if][roman type][line break]".

To say EscapeAnswer of (M - tutor-rochelle):
	say "[speech style of M]'Things that only properly trained whores are allowed to see.'[roman type][line break]".

To say StoryAnswer of (M - a tutor-rochelle):
	say "[speech style of M]'While the outside world still considers cock worship a [']not a real qualification['], we see things a bit differently here.'[roman type][line break]".

To say AdviceAnswer of (M - tutor-rochelle):
	say "[speech style of M]'Get used to the taste of cum.'[roman type][line break]".

To compute teaching of (M - tutor-rochelle):
	if the remainder after dividing condom fetish by 2 is 1:
		say "[speech style of M]'Sometimes people can be reluctant to wear a condom... But if you hold a condom in their line-of-sight in just the right way, their subconcious mind will make them WANT to wear one. Here, let me show you...'[roman type][line break]";
		teach condomcompelling;
	otherwise:
		say "[speech style of M]'Of course... Meet me in the hot tub after hours and I'll give you a good seeing to.'[roman type][line break]".

To say angry punishment insult of (M - tutor-rochelle):
	say "[speech style of M]'Fucking [bitch]! How dare a slut like you reject your own devoted tutor. I'll show you how to be a proper whore.'[roman type][line break]".

Definition: tutor-rochelle is willing to let go: decide yes.

To compute FriendlySexRelease of (M - tutor-rochelle):
	if M is willing to let go:
		say "[BigNameDesc of M] pulls out in a huff.";
		dislodge M;
		consider angry punishment of M;
		satisfy M;
	otherwise:
		say FriendlySexReleaseRefusalFlav of M.

To compute labour to (M - tutor-rochelle):
	if playerRegion is facility:
		compute pregnancy clothing displacement;
		say "[PregFlav]A human head pushes its way out of your cunt, agonisingly slowly and painfully. Finally the head has passed through, and after a final push at the shoulders, the birthing is complete. You pick your child up off the floor and start to cradle it in your arms. [BigNameDesc of the father] appears almost as if on cue! [PregFlav of the father]Severing the umbilical cord, [he of M] pulls the baby from your hands, wraps it in a soft blanket and then carries it away.[line break][variable custom style][if the bimbo of the player < 8]That is definitely for the best.[otherwise if the bimbo of the player < 14]I guess I don't really have anywhere to raise a baby in here, anyway.[otherwise]Oh good, that means I can busy myself with finding a new stud to breed me again![end if][roman type][line break]";
	otherwise:
		say DefaultBirthScene.
To compute fatherhood to (M - tutor-rochelle):
	dislodge M.

To say EnslavedDominationFlav of (M - tutor-rochelle):
	say "You grab [NameDesc of M] by the [manly-penis] and pull [him of M] into you. [if the player is able to speak][variable custom style]'Not so tough now, are you? Wimp.'[roman type][line break][otherwise]You stare into [his of M] eyes to let [him of M] know who's in charge. [end if][big he of M] just whimpers timidly and makes sure not to move lest [his of M] member accidentally get pulled so hard it hurts.".
To decide which number is the EnslavedDominationThreshold of (M - tutor-rochelle):
	decide on 18000.

The training-tutor of condom-training is tutor-rochelle.

A time based rule (this is the trainees get condoms rule):
	if the condom-timer of condom-training > 0:
		decrease the condom-timer of condom-training by time-seconds;
		if the condom-timer of condom-training <= 0:
			repeat with ST running through trainees:
				if the current-rank of ST is 3:
					if the dedication of ST > a random number between 0 and 4, increase the condom-count of ST by 1;
			now the condom-timer of condom-training is a random number between 75 and 150.

To compute teaching of (L - condom-training):
	allocate 6 seconds;
	let M be the training-tutor of L;
	if the condom-timer of L > 0:
		if M is presenting as female, now temporaryYesNoBackground is Figure of rochelle condom training session;
		now the condom-timer of L is 0;
		say "[speech style of M]'Condoms, condoms, condoms. Let's find out who's come to class wearing the most condoms!'[roman type][line break]You watch as [NameDesc of M] inspects you each one by one.[line break][speech style of M]'Okay... ";
		let LST be the list of trainees in the location of the player;
		let LLW be a list of people; [lowest condom holders]
		let LC be 99; [lowest number of condoms]
		let TC be 0; [total condoms]
		repeat with ST running through LST:
			say "[trainee-name of ST] has [if the condom-count of ST is 1]just one condom[otherwise][condom-count of ST] condoms[end if], ";
			increase TC by the condom-count of ST;
			if the condom-count of ST < LC:
				now LC is the condom-count of ST;
				truncate LLW to 0 entries;
			if the condom-count of ST is LC, add ST to LLW;
		let CC be 0;
		repeat with C running through worn clothing:
			increase CC by the used condoms of C;
		increase TC by CC;
		say "and last but hopefully not least... [NameBimbo] has [if CC is 1]just one condom[otherwise][CC] condoms[end if] pinned to [his of the player] clothing.'[roman type][line break]";
		if CC < LC:
			now LC is CC;
			truncate LLW to 0 entries;
		if CC is LC, add the player to LLW;
		if TC is 0:
			say "[BigNameDesc of M] looks enraged.[line break][speech style of M]'None of you have any condoms?! What the hell! You all FAIL!'[roman type][line break][BigNameDesc of M] storms out the room, visibly frustrated.";
		otherwise:
			if the number of entries in LLW >= the number of entries in LST + 1:
				say "[BigNameDesc of M] smirks.[line break][speech style of M]'You all collected the exact same number! What are the odds!'[roman type][line break]";
			otherwise:
				say "[BigNameDesc of M] smiles.[line break][speech style of M]'It looks like I have some promotions to hand out!'[roman type][line break]";
				repeat with ST running through LST:
					if ST is not listed in LLW, promote ST;
					if yourself is not listed in LLW:
						now armband is pink diamond;
						say "You watch as the ID card inside your armband transforms!";
						now the armband-title of armband is "Coco";
						now the armband-print of armband is "condom covered cutie";
						say ClothingDesc of armband;
			let LLWE be the number of entries in LLW;
			sort LLW in reverse order;
			let LL be entry 1 in LLW;
			if LLWE is 1:
				say "[speech style of M]'As for [if LL is a trainee][trainee-name of LL][otherwise][NameBimbo][end if]... If you want a promotion, you're going to have to [if TC is 1]drink the contents of that condom[otherwise]endure a BIG FORFEIT! There's a total of [TC] condoms here, and you're going to have to drink ALL of them[end if] if you want to get promoted today!'[roman type][line break]";
			otherwise:
				say "[speech style of M]'As for ";
				let E be LLWE;
				repeat with LW running through LLW:
					say "[if LW is a trainee][trainee-name of LW][otherwise][NameBimbo][end if][if E > 2], [otherwise if E is 2] and [end if]";
					decrease E by 1;
				say "... If you want a promotion, you're going to have to [if TC is 1]share the contents of that condom[otherwise]endure a BIG FORFEIT! There's a total of [TC] condoms here, and you're going to have to drink ALL of them[end if] between you if you want to get promoted today! Starting with... [if LL is a trainee][trainee-name of LL][otherwise][NameBimbo][end if].'[roman type][line break]";
			let TTC be TC; [original total used condoms]
			while TC > 0 and the number of entries in LLW > 0:
				repeat with LW running through LLW:
					if TC > 0:
						if TC < TTC and the player is listed in LLW, say "[if TC is 1]There is one used condom[otherwise]There are [TC] used condoms[end if] left to eat. [if the number of entries in LLW > 1]There are [the number of entries in LLW] of you left trying to earn your promotions[otherwise]It's up to you to drink them all to earn your promotion[end if].";
						if LW is the player:
							say "[BigNameDesc of M] hands you a used condom of unknown origin...";
							reset multiple choice questions;
							set numerical response 1 to "drink the contents";
							set numerical response 2 to "forfeit the promotion";
							compute multiple choice question;
							if player-numerical-response is 1:
								if TTC is 1:
									say "You bite it open with your teeth, before drinking your share of it down. The [if LLWE is 2][trainee-name of entry 2 in LLW] then drinks [his of entry 2 in LLW] half[otherwise]others then each drink their share[end if].";
								otherwise:
									say "You bite it open with your teeth, before drinking it all down.";
								compute slightly addictive swallowing of semen;
								SlowGrossOut 5;
								decrease TC by 1;
							otherwise:
								remove yourself from LLW;
								say "You baulk, and shake your head, stepping away. [BigNameDesc of M] shrugs with disappointment, and moves on.";
						otherwise if the dedication of LW > a random number between -1 and 2:
							say "[BigNameDesc of M] offers [NameDesc of LW] a used condom. [big he of LW] [one of]clenches [his of LW] eyes shut as [he of LW][or]grimaces, but then[or]breathes deeply and then[or]hesitates only for a moment before [he of LW][in random order] bites into it and swallows the load.";
							decrease TC by 1;
						otherwise:
							say "[BigNameDesc of M] offers [NameDesc of LW] a used condom... But you can see that [NameDesc of LW] feels too nauseous to go near it. [big he of LW] steps back, forfeiting [his of LW] promotion.";
							remove LW from LLW;
			if TC > 0:
				say "[BigNameDesc of M] shakes [his of M] head with disappointment.[line break][speech style of M]'[if TC is 1]There was only one condom left to eat, as well! How tragic![otherwise]There's still [TC] condoms left to go, but you've given up! What a shame.[end if] No more promotions today, then! Class dismissed!'[roman type][line break]";
			otherwise:
				say "[BigNameDesc of M] claps.[line break][speech style of M]'Great job, [if the number of entries in LLW is 1 and the player is listed in LLW][NameBimbo][otherwise if the number of entries in LLW is 1][trainee-name of entry 1 in LLW][otherwise if the number of entries in LLW is 2]you two[otherwise]everyone[end if]! You've definitely earned these promotions after all, haha!'[roman type][line break]";
				repeat with LW running through LLW:
					if LW is a trainee:
						promote LW;
					otherwise:
						now armband is pink diamond;
						say "You watch as the ID card inside your armband transforms!";
						now the armband-title of armband is "Coco";
						now the armband-print of armband is "used condom connoisseur";
						say ClothingDesc of armband;
				say "[speech style of M]'Class dismissed!'[roman type][line break]";
		repeat with ST running through trainees:
			now the condom-count of ST is 0;
		let TUC be total used condoms;
		repeat with C running through worn clothing:
			while the used condoms of C > 0 and TC < TUC:
				let N be the condomPop of C;
				let X be the printed name of N;
				now X is ""; [this does nothing, but it won't let us create a temporary variable and not use it]
				increase the empty condoms of C by 1;
				decrease TUC by 1;
	otherwise:
		now the condom-timer of L is 1;
		say "[speech style of M]'Condoms, condoms, condoms. Obviously, items of great use to avoid pregnancy and a nasty mess. But also, of course, an excellent trophy that proudly displays your sexual prowess.'[roman type][line break]You watch as [NameDesc of M] takes out a condom, and begins to roll it down [his of M] long, hard [manly-penis].[line break][speech style of M]'The next time we have this training session, I will be counting how many used condoms you each have pinned to your clothing. Everybody with at least one used condom pinned to their clothing will pass the test, and get promoted. But... The trainee or trainees with the least used condoms will have to bite open and drink all the condoms... Or forfeit their promotions.'[roman type][line break]As you all place your hands to your mouths with concern, [NameDesc of M] waggles [his of M] [manly-penis] towards you all.[line break][speech style of M]'Now... Who wants to earn their first condom right away?'[roman type][line break]Do you volunteer to pleasure [tutor-name of M] and earn that condom?";
		let ST be yourself;
		let LST be the list of trainees in the location of the player;
		sort LST in random order;
		repeat with S running through LST:
			let D be the dedication of S;
			if S is ditzy trainee, increase D by 2;
			otherwise increase D by a random number between -2 and 2;
			if D >= 6, now ST is S;
		if face is not actually occupied and the player is bimbo consenting:
			say "You raise your hand. ";
			if ST is yourself:
				say "You're the only one who does.";
			otherwise:
				say "[BigNameDesc of ST] raises [his of ST] hand at the same time.[paragraph break][speech style of M]'Ooh, both of you want it, hmm? That's a problem... But exciting problems require exciting solutions!'[roman type][line break][BigNameDesc of M] says with glee.[line break][speech style of M]'I've got an idea... The one of you who wants this the most must really like condoms, hmm? But I wonder if you like condoms enough to wear this?'[roman type][line break][BigNameDesc of M] holds up the most insane looking dress you've ever seen. [ClothingDesc of condoms dress]";
				now temporaryYesNoBackground is the examine-image of condoms dress;
				say "[speech style of M]'I'll let... [NameBimbo] decide if [he of the player][']s willing to wear it first.'[roman type][line break]";
				let able-to-wear be true;
				if condoms dress is not unclash summonable, now able-to-wear is false;
				if there is a worn unblessed nipple piercing, now able-to-wear is false;
				if able-to-wear is true:
					repeat with D running through worn overdresses:
						if D is not usually autoremovable, now able-to-wear is false;
				if able-to-wear is true:
					repeat with D running through worn underdresses:
						if (D is top-exclusive or D is totally-exclusive) and D is not usually autoremovable, now able-to-wear is false;
				if able-to-wear is true:
					repeat with D running through worn skirts:
						if D is not usually autoremovable, now able-to-wear is false;
				if able-to-wear is true:
					repeat with D running through worn corsets:
						if (D is top-exclusive or D is totally-exclusive) and D is not usually autoremovable, now able-to-wear is false;
				if able-to-wear is true:
					repeat with D running through worn bras:
						if (D is top-exclusive or D is totally-exclusive) and D is not usually autoremovable, now able-to-wear is false;
				if able-to-wear is true:
					say "Agree to wear the condoms dress?";
					if the player is bimbo consenting:
						now ST is yourself;
						repeat with D running through worn overdresses:
							say "You remove the [D].";
							now D is in the location of the player;
							dislodge D;
						repeat with D running through worn underdresses:
							if D is top-exclusive or D is totally-exclusive:
								say "You remove the [D].";
								now D is in the location of the player;
								dislodge D;
						repeat with D running through worn skirts:
							say "You remove the [D].";
							now D is in the location of the player;
							dislodge D;
						repeat with D running through worn corsets:
							if D is top-exclusive or D is totally-exclusive:
								say "You remove the [D].";
								now D is in the location of the player;
								dislodge D;
						repeat with D running through worn bras:
							if D is top-exclusive or D is totally-exclusive:
								say "You remove the [D].";
								now D is in the location of the player;
								dislodge D;
						say "You awkwardly shuffle into the condoms dress in front of your peers. [moderateHumiliateReflect]";
						summon condoms dress cursed with quest;
					otherwise:
						say "You shake your head.";
				otherwise:
					say "Unfortunately, your current clothing prevents you from accepting that offer, and you are forced to shake your head.";
				if ST is a trainee:
					say "[BigNameDesc of ST] shakes [his of ST] head too, not brave enough to wear something so extreme.[paragraph break][speech style of M]'Fair enough, I guess nobody gets this condom after all, haha!'[roman type][line break][BigNameDesc of M] shrugs, and dismisses you all.";
					now ST is M;
		otherwise if ST is yourself:
			say "There's silence as everybody looks around, but nobody volunteers.[paragraph break][speech style of M]'Fair enough, I guess nobody gets this headstart, haha!'[roman type][line break][BigNameDesc of M] shrugs, and dismisses you all.";
			now ST is M;
		if ST is not M:
			say "[BigNameDesc of M] points at the floor in front of [him of M].[line break][speech style of M]'Get on your knees, slut.'[roman type][line break][if St is trainee][trainee-name of ST] quickly obeys[otherwise]You quickly obey[end if].[line break][speech style of M]'Open wide.'[roman type][line break]";
		if ST is a trainee:
			say "[BigNameDesc of ST] gets to work fellating [his of ST] tutor. It doesn't take long until [NameDesc of M] is grunting with pleasure, and filling the condom with [his of M] load. Peeling the used condom off, [NameDesc of M] ties the end, and then attaches it to [NameDesc of ST][']s outfit. [trainee-name of ST] looks very embarrassed to have it dangling there.[paragraph break][speech style of M]'Well, there you have it, everyone! [trainee-name of ST] earned [himself of ST] a valuable headstart! Now the rest of you better go find some willing cocks, and catch up!'[roman type][line break]With that, [NameDesc of M] dismisses the class.";
			increase the condom-count of ST by 1;
		otherwise if ST is yourself:
			now M is wrapped;
			now M is friendly-fucking;
			interest M;
			now M is penetrating face;
			now the stance of the player is 1;
			now the sex-length of M is a random number between 2 and 5;
			repeat with S running through LST:
				if S is friendly:
					interest S;
				otherwise:
					say "[speech style of S]'[one of]Disgusting[or]You're a fucking disgrace[or]What a slut[in random order].'[roman type][line break][BigNameDesc of S] says, before turning to leave.";
					FavourDown S;
					bore S;
					try S going south;
					now S is moved;




practical-training is a training session. The training-tutor of practical-training is tutor-hyacinthe.
To say TrainingSessionTitle of (L - practical-training):
	say "Servicing Cocks".

To compute teaching of (L - practical-training):
	allocate 6 seconds;
	let TL be the training-tutor of L;
	let DL be tutor-rochelle;
	if the monstersetup of DL is 0, set up DL;
	now DL is in the location of the player;
	say "[if TL is not DL][speech style of TL]'For this training session, I am going to need some help from Tutor [tutor-name of DL].'[roman type][line break]You watch as [NameDesc of DL] enters the room, joining [NameDesc of TL] at the front.[line break][end if][speech style of TL]'Today we will be learning about how by being especially filthy, you can better service cocks and win the hearts of your Masters.'[roman type][line break]";
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
	let victorious-trainee be the player;
	let trainee-filthiness be 0;
	repeat with ST running through trainees in the location of the player:
		now the trainingInt1 of ST is 0; [we are going to use binary to try which body parts they've used: 1st bit is asshole, 2nd is vagina, 3rd is mouth]
	let LB be a list of body parts; [list of what body parts the player has used]
	let filthiest-trainee be a random trainee in the location of the player;
	now refractoryperiod is 0;
	let LST be the list of trainees in the location of the player;
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
					if trainee-filthiness > 0:
						say "By doing this, you've reduced [NameDesc of filthiest-trainee][']s chances of winning.";
						if trainee-filthiness < player-filthiness, HappinessDown filthiest-trainee by 3;
						otherwise HappinessDown filthiest-trainee;
				increase stimulation-level by (enthusiasm + a random number between 0 and 2) / 3;
				if ass-count > 0:
					say "The taste of [if ass-count > 1][ass-count] loads of sweaty ass juice[otherwise]tangy ass sweat[end if] [if pussy-count > 1]combined with [pussy-count] helpings of slimy cunt butter [otherwise if pussy-count > 0]combined with the unmistakable taste and texture of pussy juice [end if]overwhelms your senses and makes you retch. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of DL][']s [DickDesc of DL].";
					TasteGrossOut 6 + ass-count;
				otherwise if pussy-count > 0:
					say "The taste of [if pussy-count > 1][pussy-count] loads of slippery girl-slime[otherwise]the thin coating of pussy juice[end if] fills your mouth. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of DL][']s [DickDesc of DL].";
					TasteGrossOut pussy-count;
				otherwise if slobber-owner is a trainee:
					say "You can taste [NameDesc of slobber-owner][']s slobbery saliva all over the shaft. It's a bit humiliating to be slurping someone else's spit off of a [DickDesc of DL]!";
				humiliate (30 * HUMILIATION-BASE * ass-count) + (10 * HUMILIATION-BASE * pussy-count);
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
				slightHumiliate;
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
				slightHumiliate;
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
				slightHumiliate;
				stimulate breasts;
				repeat with ST running through nasty trainees in the location of the player:
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
				repeat with ST running through trainees in the location of the player:
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
					if the remainder after dividing the trainingInt1 of M by 2 is 0, increase the trainingInt1 of M by 1; [set bit 1 to 1]
					say "[BigNameDesc of M] [one of]moves [his of M] face up to[or]approaches[in random order] [NameDesc of DL][']s crotch and takes [his of DL] [LongDickDesc of DL] into [his of M] mouth. [big he of M] [one of]audibly gags[or]chokes on the length[or]makes rather lewd glugging sounds[in random order] as [he of M] tries to get as much as possible of it into [his of M] [one of]tiny mouth[or]delicate throat[or]gullet[in random order], and [one of]slurp up[or]suck away[in random order] all the [if ass-count > 0]disgusting [end if]juices. After a short while of moving [his of M] head up an down, you hear [him of M] gulp[if a2m fetish >= 2] as [he of M] swallows whatever is sloshing around in [his of M] mouth[end if]. [if ass-count > 0]After [he of M] pulls away, you see [him of M] wipe [his of M] tongue with disgust. [end if][big his of M] saliva still coats [NameDesc of DL][']s [DickDesc of DL].";
					if ass-count + pussy-count > trainee-filthiness:
						now filthiest-trainee is M;
						now trainee-filthiness is ass-count + ass-count + pussy-count;
					now ass-count is 0;
					now pussy-count is 0;
					now slobber-owner is M;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if ass-count is 0 and M is female and lady fetish < 2 and a random number between 1 and (20 - the practical dirtiness of M) <= VagChance:
					if the remainder after dividing the trainingInt1 of M by 4 < 2, increase the trainingInt1 of M by 2; [set bit 2 to 1]
					say "[BigNameDesc of M] crouches above [NameDesc of DL] before carefully lowering [his of M] spread pussy onto [NameDesc of DL][']s [one of]waiting shaft[or]rock hard rod[or]thick [LongDickDesc of DL][in random order]. [big he of M] [one of]audibly moans as [he of M] rocks back and forth[or]goes a bit red in the face as [he of M] repeatedly rides up and down the whole length[or]hardly moves at all before [he of M] mewls in a high pitched voice and loses control of [his of M] shuddering body as [he of M] cums hard. This leaves [him of M] panting and collapsed on top of [NameDesc of DL], that [LongDickDesc of DL] still fully embedded inside of [him of M][or]tries to clench [his of M] vaginal muscles as [he of M] rides up and down, to make it tighter for [NameDesc of DL][or]silently thrusts [his of M] hips back and forth, taking on the role of the obedient cowgirl[or]grinds down onto the [DickDesc of DL] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] tutor[or]quickly gets to bouncing up and down with a steady, smooth rhythm[in random order].";
					increase pussy-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if a2m fetish > 0 and a random number between 1 and (20 - the practical dirtiness of M) <= 10:
					if the remainder after dividing the trainingInt1 of M by 8 < 4, increase the trainingInt1 of M by 4; [set bit 3 to 1]
					say "[BigNameDesc of M] crouches above [NameDesc of DL] before [one of]carefully lowering[or]roughly impaling[or]slowly pushing[in random order] [his of M] [one of]tight little asshole[or]slightly open asshole[or]butthole[in random order] onto [NameDesc of DL][']s [one of]massive beast[or]long hard shaft[or]waiting dong[in random order]. [big he of M] [one of]audibly whimpers as [he of M] moves [his of M] hips back and forth[or]holds [his of M] breath as [he of M] uses [his of M] thigh muscles to ride up and down the whole length[or]grinds up and down, forward and back for several seconds before suddenly wailing as a sudden anal orgasm wracks [his of M] entire body, causing [him of M] to collapse onto of [NameDesc of DL], the still fully-hard [DickDesc of DL] managing to slither its way out of [his of M] butthole with a loud slurp[or]tries to use [his of M] butt muscles to massage [NameDesc of DL][']s [DickDesc of DL] in an almost sensual display[or]somehow makes very loud and wet slapping noises as [his of M] butt rapidly rises and falls on top of [NameDesc of DL][or]grinds down onto the [DickDesc of DL] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] tutor with [his of M] tight butthole[or]fucks it at a good steady pace, using [his of M] arms and hands to help balance [himself of M] as [he of M] moves up and down[in random order].";
					increase ass-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise:
					say "[BigNameDesc of M] takes [NameDesc of DL][']s [DickDesc of DL] in [if the practical dirtiness of M > 2]both of [his of M] hands[otherwise]one hand[end if] and [one of]gives it long, slow strokes[or]short fast strokes[or]skilful twisting strokes[or]delicate strokes with two fingers, focusing on the head[or]fast tight-gripped pumps[in random order].";
					increase stimulation-level by 1;
				decrease cum-countdown by stimulation-level;
				if cum-countdown <= 0 and M is not promotable, now cum-countdown is 1;
				if cum-countdown <= 0:
					say "[speech style of DL]'Ugh, that's it, it's coming, COMING!!!'[roman type][line break][BigNameDesc of DL] bucks [his of DL] hips as [he of DL] orgasms! ";
					now victorious-trainee is M;
				otherwise:
					say PracticalAssessment of DL to stimulation-level with cum-countdown;
	say "[if victorious-trainee is the player]You have[otherwise][BigNameDesc of victorious-trainee] has[end if] won! ";
	say "[BigNameDesc of DL] stands up and adjusts [his of DL] clothes.[line break][speech style of DL]'Yes, yes, well done, you nasty slut.'[roman type][line break]";
	if victorious-trainee is the player:
		say "[big he of DL] waves a hand in your direction.";
		now armband is pure diamond;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Foxxxy";
		now the armband-print of armband is "first-class fuckdoll";
		say ClothingDesc of armband;
	otherwise:
		promote victorious-trainee;
	if player-filthiness > trainee-filthiness:
		if victorious-trainee is the player:
			say "[BigNameDesc of DL] yawns, but it's unclear if this is because [he of DL][']s bored or because [he of DL] just came so hard.[line break][speech style of DL]'[NameBimbo] was also the filthiest slut by far, so nobody else gets promoted today. Too bad!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of DL] 'hmm's as [he of DL] thinks.[line break][speech style of DL]'[NameBimbo] was the filthiest slut today, so [he of the player] gets promoted too.'[roman type][line break]";
			now armband is pure diamond;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Foxxxy";
			now the armband-print of armband is "filthy facefucker";
			say ClothingDesc of armband;
	otherwise:
		if victorious-trainee is filthiest-trainee:
			say "[BigNameDesc of DL] yawns, but it's unclear if this is because [he of DL][']s bored or because [he of DL] just came so hard.[line break][speech style of DL]'[trainee-name of victorious-trainee] was also the filthiest slut by far, so nobody else gets promoted today for that. Too bad!'[roman type][line break]";
		otherwise:
			say "[BigNameDesc of DL] [']hmm's as [he of DL] thinks.[line break][speech style of DL]'[trainee-name of filthiest-trainee] was the filthiest slut today, so [he of the filthiest-trainee] gets promoted too.'[roman type][line break]";
			promote filthiest-trainee;
	repeat with M running through LST:
		now the trainingInt2 of M is 0;
		if the remainder after dividing the trainingInt1 of M by 2 is 1, increase the trainingInt2 of M by 1; [she used her mouth at some point]
		if the remainder after dividing the trainingInt1 of M by 4 >= 2, increase the trainingInt2 of M by 1; [she used her vagina at some point]
		if the remainder after dividing the trainingInt1 of M by 8 >= 4, increase the trainingInt2 of M by 1; [she used her asshole at some point]
	sort LST in reverse trainingInt2 order;
	let M be entry 1 in LST;
	if the number of entries in LB > the trainingInt2 of M or (the number of entries in LB is the trainingInt2 of M and a random number between 1 and 2 is 1), now M is the player;
	if M is victorious-trainee or M is filthiest-trainee:
		say "[speech style of DL]'[if M is trainee][trainee-name of M][otherwise][NameBimbo][end if] was also the slut who used the most body parts, so nobody else gets promoted today. So sad!'[roman type][line break]";
	otherwise:
		say "[speech style of DL]'[if M is trainee][trainee-name of M][otherwise][NameBimbo][end if] was the slut who used the most body parts!'[roman type][line break]";
		if M is trainee:
			promote M;
		otherwise:
			now armband is pure diamond;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Fanny";
			now the armband-print of armband is "[if the player is possessing a vagina]three[otherwise]two[end if]-hole fuckdoll";
			say ClothingDesc of armband;
	if M is the player:
		repeat with ST running through LST:
			if the current-rank of ST < 4 and the trainingInt2 of ST is the number of entries in LB:
				if ST is not amicable trainee, say "[one of][BigNameDesc of ST] whines to the tutor.[line break][speech style of ST]'But I used the same number of holes! It's not fair!'[roman type][line break][or][stopping]";
				HappinessDown ST;
	update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]
	distract DL;
	say "[BigNameDesc of DL] closes [his of DL] eyes and lazily stretches [his of DL] arms.[line break][speech style of DL]'Yep, I'm done.'[roman type][line break][BigNameDesc of TL] smiles.[line break][speech style of TL]'Great job everyone. Class dismissed!'[roman type][line break]".

To say PracticalAssessment of (M - a tutor) to (N - a number) with (C - a number):
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

To decide which number is the practical dirtiness of (M - a trainee):
	decide on 3.
To decide which number is the practical dirtiness of (M - a nasty trainee):
	decide on 2.
To decide which number is the practical dirtiness of (M - a ditzy trainee):
	decide on 4.
To decide which number is the practical dirtiness of (M - an innocent trainee):
	decide on 1.
To decide which number is the practical dirtiness of (M - a tryhard trainee):
	decide on 6.


Part - Swimming TrainingSession

swimming-training is a training session. The training-tutor of swimming-training is tutor-hyacinthe.

Definition: swimming-training is training-appropriate:
	if diaper quest is 0 and the number of alive training-appropriate trainees > 0, decide yes;
	decide no. [There must be another trainee]
To say TrainingSessionTitle of (L - swimming-training):
	say "Swimming".

To decide which number is the swimming-strength of (M - a trainee):
	decide on the dedication of M.

To compute teaching of (L - swimming-training):
	allocate 40 seconds;
	now bigGameLoop is 3; [tells the game not to refresh any windows]
	let M be the training-tutor of L;
	say "[BigNameDesc of M] guides you all to the diving board next to the deep end of the swimming pool.";
	repeat with N running through monsters in Facility22: [Clear out the stand of unnecessary NPCs]
		now N is in Facility02;
	repeat with N running through monsters in Facility20: [Clear out the swimming pool of unnecessary NPCs]
		now N is in Facility02;
	repeat with N running through monsters in the location of M:
		now N is in Facility20;
	now Facility22 is discovered;
	now Facility20 is discovered;
	now Facility19 is discovered;
	now the player is in Facility20;
	let LST be the list of trainees in Facility20;
	say "[speech style of M]'I'm sure you've been wondering what we use this pool for. Well, it works very well as a test of will. [if the number of entries in LST > 0]Each of you has[otherwise]You have[end if] your promotion waiting for you, at the bottom of this pool.'[roman type][line break][BigNameDesc of M] produces a [if there is a trainee in the location of the player]set of weighted balls, each with one of your names on it, and launches them[otherwise]weighted ball and launches it[end if] into the pool, where it quickly disappears towards the bottom of the creamy goop.[line break][speech style of M]'There will be race from the far end of the swimming pool, the deep end, back to this end here. You don't HAVE to take part - nobody's forcing you to do anything. Everyone is allowed to take one weight out of the pool with them. You can't go back in once you get out. Whoever's name is on a weight that's not in the pool at the end of the race, gets promoted. After a minute or two, there'll be a fun... [']event['] that'll affect everyone who's still in the pool. After that, nobody else still waiting here will be allowed to get in the pool.[roman type][line break]";
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
	let LWeights be the list of trainees in the location of the player; [List of weights with everyone's name on. Static]
	let eventTimer be a random number between 7 and 11;
	add yourself to LWeights;
	sort LWeights in random order;
	let NWeights be the number of entries in LWeights;
	repeat with ST running through LST:
		now trainingInt1 of ST is 0; [trainee's distance through the cum pool]
		now trainingInt2 of ST is 0; [ID of weight grabbed by the trainee]
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
				if WeightName is trainee:
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
					if friendWeight is a trainee, HappinessUp friendWeight by 3;
		sort LST in random order;
		repeat with ST running through LST:
			if the trainingInt1 of ST is 0 and eventTimer > 0: [they haven't jumped in yet]
				if a random number between 0 and 8 <= the dedication of ST: [They jump in]
					if a random number between 0 and 4 <= the dedication of ST: [They want to use the diving board]
						add ST to LDivers;
					otherwise:
						say "[BigNameDesc of ST] runs to the edge of the pool, and [one of]with only a moment's hesitation, [or]after a brief pause, [or]immediately [at random]jumps into the pool of [semen].";
						increase the trainingInt1 of ST by 1;
						add ST to LInPool;
			otherwise if ST is listed in LInPool: [they're in the pool already]
				if the trainingInt2 of ST is 0 and the trainingInt1 of ST < 4 and a random number between 0 and 5 <= the dedication of ST:
					add ST to LWeightDivers;
				otherwise if the trainingInt1 of ST >= 10: [Trainee considers getting out of the pool]
					if the number of entries in LOutOfPool > 0 or a random number between 0 and the dedication of ST is 0: [It's bad to be the first one out]
						say "[BigNameDesc of ST] heaves [himself of ST] out of the pool.";
						remove ST from LInPool;
						add ST to LOutOfPool;
						if ST is listed in LCumBlinded, remove ST from LCumBlinded;
					otherwise:
						say "[BigNameDesc of ST] [one of]is at the end of the pool but doesn't get out yet[or]hovers at the end of the pool, but doesn't get out yet[or]decides not to get out of the pool yet[then at random].";
				otherwise:
					let WeightName be ST;
					if the trainingInt2 of ST > 0, now WeightName is entry (trainingInt2 of ST) of LWeights;
					if ST is listed in LCumBlinded and a random number between 0 and the dedication of ST is 0:
						say "[BigNameDesc of ST] stops to wipe some [semen] from [his of ST] eyes.";
						remove ST from LCumBlinded;
					otherwise if (WeightName is not ST and a random number between 1 and 5 < the vindictiveness of ST) or (WeightName is yourself and ST is unfriendly):
						say "[BigNameDesc of ST] suddenly stops and [bold type]decides to drop [if WeightName is yourself]your[otherwise][NameDesc of WeightName][']s[end if] [bold type]weight back in the pool![if WeightName is yourself][line break][variable custom style]Shit![end if][roman type][line break]";
						now the trainingInt2 of ST is 0;
					otherwise:
						let SWIM be a random number between 1 and the swimming-strength of ST;
						if SWIM > 1 and the trainingInt2 of ST > 0, decrease SWIM by 1;
						say "[BigNameDesc of ST] swims towards the shallow end of the pool. [big he of ST] [if SWIM is 1][one of]doesn't get too far[or]only manages to progress by a couple of metres[or]makes poor progress[at random].[otherwise if SWIM is 2][one of]makes impressive progress[or]manages to travel a few metres[or]successfully makes decent progress[at random].[otherwise]makes incredible progress![end if]";
						increase the trainingInt1 of ST by SWIM;
						if the trainingInt1 of ST >= 10, say "[big he of ST] reaches the end of the pool.";
		[Now we handle all the people going for the diving board at the same time]
		let NDivers be the number of entries in LDivers;
		if NDivers > 1:
			let NList be NDivers;
			if the player is listed in LDivers:
				decrease NList by 1;
				repeat with PX running through LDivers:
					if PX is trainee:
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
				let NTraineeDivers be the number of entries in LActualDivers - 1;
				repeat with PX running through LActualDivers:
					if PX is trainee:
						decrease NTraineeDivers by 1;
						say "[NameDesc of PX][if NTraineeDivers > 1], [otherwise if NTraineeDivers is 1] and [end if]";
				say " also [if the number of entries in LActualDivers is 2]tries[otherwise]try[end if] to dive off of the board at the same time! You [if the number of entries in LActualDivers is 2]all [end if]crash into each other and fall into the pool at the deep end, gaining no ground and getting completely submerged in the [semen]!";
				repeat with PX running through LActualDivers:
					add PX to LInPool, if absent;
					if PX is trainee:
						now the trainingInt1 of PX is 1;
						add PX to LCumBlinded;
						HappinessDown PX by 3;
					otherwise:
						now playerDistance is 1;
						add yourself to LCumBlinded;
						compute cum pool coating;
						compute cum pool face coating;
				trigger swim-wisp-quest;
			otherwise:
				let NTraineeDivers be the number of entries in LActualDivers;
				repeat with PX running through LActualDivers:
					decrease NTraineeDivers by 1;
					say "[NameDesc of PX][if NTraineeDivers > 1], [otherwise if NTraineeDivers is 1] and [end if]";
				say " [if the number of entries in LActualDivers > 2]all [end if]try to dive off of the board at the same time! You cringe as they crash into each other and fall into the pool at the deep end together, gaining no ground and getting completely submerged in the [semen]!";
				repeat with PX running through LActualDivers:
					add PX to LInPool, if absent;
					now the trainingInt1 of PX is 1;
					add PX to LCumBlinded;
		otherwise if the number of entries in LActualDivers > 0:
			let PX be entry 1 in LActualDivers;
			if PX is yourself:
				say "You gracefully jump off of the diving board, managing to get about a third of the way across the length of the pool before plummeting into the warm [semen]. Your body is instantly coated with the [if the semen addiction of the player < 7]disgusting[otherwise if the semen addiction of the player < 14]goopy[otherwise]glorious[end if] stuff. As you sink through it, your hands manage to clasp around a weight!";
				now playerDistance is 4;
			otherwise:
				say "[BigNameDesc of PX] launches off of the diving board, gaining a huge amount of distance, before disappearing beneath the surface!";
				now the trainingInt1 of PX is 4;
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
					repeat with XST running through trainees in the location of ST:
						if the playerWeight is trainingInt2 of XST, now playerWeight is 0; [can't grab the same weight that someone else is already holding]
			otherwise:
				while trainingInt2 of ST is 0:
					now trainingInt2 of ST is a random number between 1 and NWeights;
					repeat with XST running through people in the location of ST:
						if XST is not ST:
							if XST is trainee:
								if the trainingInt2 of ST is trainingInt2 of XST, now the trainingInt2 of ST is 0; [can't grab the same weight that someone else is already holding]
							otherwise if XST is the player:
								if the trainingInt2 of ST is playerWeight, now the trainingInt2 of ST is 0; [can't grab the same weight that the player is already holding]
			let WeightNameEntry be playerWeight;
			if ST is trainee, now WeightNameEntry is trainingInt2 of ST;
			let WeightName be entry WeightNameEntry of LWeights;
			if the player is listed in LCumBlinded and ST is not the player, say "[one of]There's too much [semen] in your eyes for you to be able to see what name is on the weight at this distance[or]You can't see the name[stopping].";
			otherwise say "It has [if WeightName is yourself]your[otherwise][NameDesc of WeightName][']s[end if] name on it!";
			if ST is trainee and ((WeightName is not ST and a random number between -1 and 2 < the vindictiveness of ST) or (WeightName is yourself and ST is unfriendly)):
				say "[big he of ST] drops it back in!";
				now the trainingInt2 of ST is 0;
		decrease eventTimer by 1;
		if eventTimer is 0 and the number of entries in LInPool > 0: [Something crazy happens.]
			say "[bold type]Suddenly the lights turn red and a loud klaxon starts blaring. The timed event that [tutor-name of M] talked about is happening![roman type][line break]";
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
					say "And then it happens. Suddenly your [if the player is possessing a vagina][vagina] and [asshole] are[otherwise][asshole] is[end if] forced open to an insane width, as if a magical invisible speculum was just opened up inside. A strong current of [semen] rushes inside, rapidly filling you to the brim![line break][variable custom style]What the fuck?![roman type][line break][if the number of entries in LInPool > 1]A brief look around tells you that the same thing has happened to the other [end if][if the number of entries in LInPool > 2]trainees too.[otherwise if the number of entries in LInPool > 1]trainee too.[end if]";
					if the player is possessing a vagina, PussyFill 20;
					increase the semen volume of belly by 25;
				otherwise:
					say "[if the number of entries in LInPool > 1]The trainees suddenly start[otherwise][NameDesc of entry 1 in LInPool] starts[end if] screaming. You can't really tell what's going on, but it's clear that something is happening to their bottom half.";
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
			if the number of entries in LOutOfPool + the number of entries in LInPool < (the number of entries in LST + 1): [Some trainees haven't yet gone into the pool]
				say "[line break][bold type]Not yet in the pool:[roman type][line break]";
				if playerDistance is 0, say "You[line break]";
				repeat with ST running through LST:
					if ST is not listed in LInPool and ST is not listed in LOutOfPool, say "[BigNameDesc of ST][line break]";
			if the number of entries in LInPool > 0:
				let LPoolSection be a list of people;
				repeat with ST running through LInPool:
					if (ST is the player and playerDistance <= 4) or (ST is trainee and trainingInt1 of ST <= 4), add ST to LPoolSection;
				if the number of entries in LPoolSection > 0:
					say "[line break][bold type]Near the deep end of the pool:[roman type][line break]";
					repeat with ST running through LPoolSection:
						say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is trainee and trainingInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is trainee] ([trainingInt1 of ST], [end if][if debugmode > 0 and ST is trainee and trainingInt2 of ST > 0][NameDesc of entry (trainingInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is trainee]no weight)[end if][line break]";
				truncate LPoolSection to 0 entries;
				repeat with ST running through LInPool:
					if (ST is the player and playerDistance > 4 and playerDistance <= 7) or (ST is trainee and trainingInt1 of ST > 4 and trainingInt1 of ST <= 7), add ST to LPoolSection;
				if the number of entries in LPoolSection > 0:
					say "[line break][bold type]Near the middle of the pool:[roman type][line break]";
					repeat with ST running through LPoolSection:
						say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is trainee and trainingInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is trainee] ([trainingInt1 of ST], [end if][if debugmode > 0 and ST is trainee and trainingInt2 of ST > 0][NameDesc of entry (trainingInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is trainee]no weight)[end if][line break]";
				truncate LPoolSection to 0 entries;
				repeat with ST running through LInPool:
					if (ST is the player and playerDistance > 7) or (ST is trainee and trainingInt1 of ST > 7), add ST to LPoolSection;
				if the number of entries in LPoolSection > 0:
					say "[line break][bold type]Near the shallow end of the pool:[roman type][line break]";
					repeat with ST running through LPoolSection:
						say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is trainee and trainingInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is trainee] ([trainingInt1 of ST], [end if][if debugmode > 0 and ST is trainee and trainingInt2 of ST > 0][NameDesc of entry (trainingInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is trainee]no weight)[end if][line break]";
			if the number of entries in LOutOfPool > 0:
				say "[line break][bold type]Out of the pool:[roman type][line break]";
				repeat with ST running through LOutOfPool:
					say "[if ST is yourself]You[otherwise][BigNameDesc of ST][end if][if debugmode is 0 and ST is trainee and trainingInt2 of ST > 0] (carrying a weight)[end if][if debugmode > 0 and ST is trainee] ([trainingInt1 of ST], [end if][if debugmode > 0 and ST is trainee and trainingInt2 of ST > 0][NameDesc of entry (trainingInt2 of ST) in LWeights])[otherwise if debugmode > 0 and ST is trainee]no weight)[end if][line break]";
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
		now PX is in Facility22;
	now the player is in Facility22;
	say "[BigNameDesc of M] blows on a whistle.[line break][speech style of M]'Alright, that's the end of that! Good race! Let's see now...'[roman type][line break][BigNameDesc of M] looks around for which weights have been brought of the pool.";
	repeat with ST running through LOutOfPool:
		let WeightID be playerWeight;
		if ST is trainee, now WeightID is trainingInt2 of ST;
		let WeightName be M;
		if WeightID > 0, now WeightName is entry WeightID of LWeights;
		say "[speech style of M]'[BigNameDesc of ST][speech style of M] [if WeightName is M]didn't bring anybody's[otherwise if WeightName is ST]brought [his of ST] own[otherwise]brought [NameDesc of WeightName][speech style of M][']s[end if] weight out of the pool with [him of ST][if WeightName is not M and WeightName is not listed in LOutOfPool]. [otherwise].'[line break][end if]";
		if WeightName is not M and WeightName is not listed in LOutOfPool:
			say "And to think, [NameDesc of WeightName][speech style of M] didn't even get in the pool[if WeightName is the player]!'[roman type][line break][otherwise]! [end if]";
			if WeightName is the player:
				repeat with ST2 running through trainees in the location of the player:
					if ST is ST2, HappinessDown ST;
					otherwise FavourDown ST2;
		unless WeightName is M:
			add WeightName to LWinners, if absent;
	say "[speech style of M]'So... [if the number of entries in LWinners is 0]nobody gets promoted! Oh well!'[otherwise if the number of entries in LWinners is 1]only [NameDesc of entry 1 in LWinners][speech style of M] gets promoted today!'[otherwise]I have some promotions to hand out!'[end if][roman type][line break]";
	repeat with ST running through LWinners:
		if ST is trainee, promote ST;
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
		update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]
	say "[BigNameDesc of M] licks [his of M] lips with satisfaction.[line break][speech style of M]'Class dismissed!'[roman type][line break]";
	now bigGameLoop is 0; [tells the game to refresh windows again]
	conclude consenting.


Part - Bukkake TrainingSession

bukkake-training is a training session. The training-tutor of bukkake-training is tutor-hyacinthe.
bukkake-training can be just-floundered. bukkake-training can be face-rendering. bukkake-training has a number called cumCoveredEyes.

Definition: bukkake-training is training-appropriate:
	if the player is not a march 2026 top donator, decide no;
	if the player is not possessing a penis and the player is not possessing a vagina, decide no;
	if bukkake fetish is 1 and there is an alive training-appropriate trainee and the player is able to speak and breasts is not exposed and the player is able to get horny and the player is able to orgasm and the number of worn chastity bond is 0 and face is not overglazed and breasts is not overglazed and hair is not overglazed and the player is not wrist bound, decide yes; [There must be another trainee]
	decide no.
To say TrainingSessionTitle of (L - bukkake-training):
	say "Bukkake Newscaster".

To compute teaching of (L - bukkake-training):
	allocate 40 seconds;
	now L is face-rendering;
	now bigGameLoop is 3; [tells the game not to refresh any windows]
	let M be the training-tutor of L;
	let LST be the list of trainees in the location of the player;
	let LSTE be the number of entries in LST;
	let LSTN be LSTE;
	let LU be the list of unseen-strangers;
	repeat with Z running through LU:
		now Z is in the location of the player;
		now the health of Z is the maxhealth of Z;
	let U be entry 1 in LU;
	say "There is a desk set up at the front of the room, with two expensive-looking studio TV cameras pointed at it. [BigNameDesc of M] whistles, and countless masked [men of U] file into the room.";
	say "[speech style of M]'Today's lesson will be on handling semen, and tolerating public reputational damage. I've done my research and determined that [NameBimbo] is the trainee with the most reputation at stake, so today, I'm giving [him of the player] the role of [']news anchor['].[roman type][line break]All eyes focus on you, as [NameDesc of M] gestures for you to take the seat behind the desk.[one of][line break][variable custom style]Oh god... [if infamy fetish is 1]That's because I'm the only one here who's REAL, with their REAL WORLD REPUTATION at stake![otherwise]What have I got myself into now?![end if][roman type][or][stopping][paragraph break]After you've been guided to your seat, [NameDesc of M] explains the nature of the training session.[paragraph break][speech style of M]'Our sexy newscaster [NameBimbo] here will be performing a news broadcast for the kingdoms of the world. [big he of the player] gets promoted as long as [he of the player] makes it through the script. Meanwhile, the rest of you get promoted every time you cause [NameBimbo] to make an [']unprofessional error[']. How can you do that, I hear you ask? Well, whenever you manage to make one of these lovely [men of U] orgasm with your mouth, you then get to go spit that delightful [']gift['] onto our lovely cum canvas... I mean, err, news anchor. And then after that, you get to go underneath the table and do whatever you like to [NameBimbo][']s lower half for ten seconds. But here's the catch - for each [']unprofessional error['], [NameBimbo] will spend additional time handcuffed behind [his of the player] back after the broadcast, unable to clean [himself of the player] up. So [he of the player] will be doing [his of the player] best not to let what you're doing affect [him of the player]. The following things count as [']unprofessional errors[']: Saying the wrong word, failing to say the next word for more than two seconds, and doing anything with your hands except holding the script in front of you with both hands.'[roman type][paragraph break]";
	say "As you're processing this, you are handed a sheet of paper with the script you are to read to the cameras on it. Your mission is clear: You must do your best to read this script without [bold type]stumbling over the words, or wiping whatever is spat on you away[roman type] as much as possible.[paragraph break]And then before you can mentally prepare yourself any further for what's about to happen, the sound of a news station's opening jingle plays from a speaker by the cameras, and you are live on air!";
	now emptyYesNoBG is true;
	display news facial;
	compute single choice question "Start reading the script";
	say "[line break][variable custom style]'Err, welcome to Royal News Network, I'm your host, Princess-In-Training [NameBimbo]. Today we will be reviewing the various regional rule changes enacted by the ruling monarchs.'[roman type][line break]You obediently start reading the script you're holding in front of you.[paragraph break]";
	now the arousal of the player is 0;
	check for arousal change;
	let unprofessionalErrors be 0;
	let scriptLinesLeft be a random number between 8 and 12;
	let initialScriptLinesLeft be scriptLinesLeft;
	now the cumCoveredEyes of L is 0;
	let scriptCum be 0;
	let newsOrgasmCount be 0;
	let currentUnderTable be M;
	let latestSpitter be M;
	let sentencesUsed be a list of numbers;
	let currentPain be 0;
	let currentButtSensation be 0;
	let currentGenitalsSensation be 0;
	add 0 to sentencesUsed;
	while scriptLinesLeft > 0:
		now L is not just-floundered;
		sort LST in random order;
		repeat with ST running through LST:
			if ST is currentUnderTable:
				do nothing;
			otherwise if the trainingInt1 of ST is 0: [doing nothing]
				if the dedication of ST > a random number between 0 and LSTE: [the more students, the more rarely they start a blowjob]
					say "[BigNameDesc of ST] drops to [his of ST] knees in front of a masked [man of U] and starts to [one of]noisily[or]aggressively[or]diligently[at random] [one of]suck[or]bob back and forth[or]devour[at random] [his of U] [manly-penis].";
					now the trainingInt1 of ST is 1;
			otherwise if the trainingInt1 of ST is 1: [sucking dick]
				if face is not glazed or the dedication of ST > a random number between 0 and LSTE: [the more students, the more rarely they finish a blowjob]
					now the trainingInt1 of ST is 0;
					now latestSpitter is ST;
					let V be the vindictiveness of ST;
					say "[BigNameDesc of U] quietly grunts - [NameDesc of ST] has earned [himself of ST] a mouthful of [semen]! [big he of ST] quickly approaches you, and ";
					if the cumCoveredEyes of L < 2 and V >= a random number between 1 and 4 and V >= a random number between 1 and 4:
						say "spits [his of ST] mouthful of [semen] directly into your [if the cumCoveredEyes of L > 0]right eye. [bold type]It instinctively closes - you are now blinded![otherwise]left eye. [bold type]It instinctively closes - you are now only able to read with one eye![end if][roman type][line break]";
						increase the cumCoveredEyes of L by 1;
						NewsFace 2;
						SlowGrossOut 4;
					otherwise:
						if V >= a random number between 0 and 3:
							say "unleashes [his of ST] mouthful of [semen] over your face.";
							NewsFace 2;
							SlowGrossOut 3;
						otherwise:
							say "empties [his of ST] mouthful of [semen] into your hair.";
							NewsHair 2;
							SlowGrossOut 1;
						if face is soaked:
							if the semen coating of face >= 10 and the cumCoveredEyes of L < 2:
								now the cumCoveredEyes of L is 2;
								say "[bold type]Your face is now completely covered in [semen]! Your eyes are practically glued shut - you are now blinded![roman type][line break]";
							otherwise if the semen coating of face >= 8 and the cumCoveredEyes of L < 1:
								now the cumCoveredEyes of L is 1;
								say "[bold type]Your face is almost completely covered in [semen]! Your left eye is practically glued shut - you are now reading with only one eye![roman type][line break]";
		if latestSpitter is a trainee and latestSpitter is not currentUnderTable:
			say "As the last person to spit on you, [NameDesc of latestSpitter] gets to [if currentUnderTable is a trainee]replace [NameDesc of currentUnderTable] under the table[otherwise]go under your table for 10 seconds[end if].";
			if currentUnderTable is a trainee, now the trainingInt1 of currentUnderTable is 0;
			now currentUnderTable is latestSpitter;
		otherwise if currentUnderTable is a trainee:
			say "[BigNameDesc of currentUnderTable][']s time is up, so [he of currentUnderTable] gets out from underneath the table.";
			if latestSpitter is currentUnderTable, now latestSpitter is M;
			now the trainingInt1 of currentUnderTable is 0;
			now currentUnderTable is M;
		decrease scriptLinesLeft by 1;
		[read next line minigame]
		say "You do your best to read the next line as clearly and correctly as possible. [one of][bold type]Minigame! Select words that make sense to finish the sentence before the timer runs out. [roman type][or][stopping][line break]";
		let correctWords be a list of texts;
		let sentenceID be 0;
		while sentenceID is listed in sentencesUsed:
			now sentenceID is a random number between 1 and 18;
		add sentenceID to sentencesUsed;
		let capitalIDs be a list of numbers;
		if a random number between 1 and 2 is 1:
			add "King" to correctWords;
			add the substituted form of "[kingName]" to correctWords;
		otherwise:
			add "Queen" to correctWords;
			add the substituted form of "[queenName]" to correctWords;
		add the number of entries in correctWords to capitalIDs;
		add the substituted form of "[one of]has[or]recently[as decreasingly likely outcomes]" to correctWords;
		add the substituted form of "[one of]decreed[or]ruled[or]announced[as decreasingly likely outcomes]" to correctWords;
		add "that" to correctWords;
		if sentenceID <= 9:
			add "all" to correctWords;
			if sentenceID <= 3:
				add the substituted form of "[one of]skirts[or]dresses[purely at random]" to correctWords;
				add "must" to correctWords;
				if sentenceID is 1:
					add "be" to correctWords;
					add "shorter" to correctWords;
					add "than" to correctWords;
					add the substituted form of "[one of]knee[or]thigh[or]crotch[purely at random]" to correctWords;
					add the substituted form of "[one of]height[or]length[purely at random]" to correctWords;
				otherwise if sentenceID is 2:
					add "have" to correctWords;
					add "a" to correctWords;
					add "large" to correctWords;
					add "butt" to correctWords;
					add "window" to correctWords;
				otherwise if sentenceID is 3:
					add "be" to correctWords;
					add "made" to correctWords;
					add the substituted form of "[one of]entirely[or]predominantly[or]mostly[purely at random]" to correctWords;
					add "of" to correctWords;
					add the substituted form of "[one of]paper[or]latex[or]fishnet[purely at random]" to correctWords;
			otherwise if sentenceID <= 9:
				if legacy content is 0:
					if a random number between 1 and 2 is 1:
						add "submissives" to correctWords;
					otherwise:
						add "submissive" to correctWords;
						add the substituted form of "[one of]adults[or]citizens[purely at random]" to correctWords;
				otherwise if a random number between 1 and 2 is 1:
					add the substituted form of "[one of]female[or]feminine[purely at random]" to correctWords;
					add the substituted form of "[one of]adults[or]citizens[purely at random]" to correctWords;
				otherwise:
					add "women" to correctWords;
				add "must" to correctWords;
				if sentenceID is 4:
					add "wear" to correctWords;
					add "butt" to correctWords;
					add "plugs" to correctWords;
					add "when" to correctWords;
					add the substituted form of "[one of]working[or]outdoors[or]masturbating[purely at random]" to correctWords;
				otherwise if sentenceID is 5:
					add "wear" to correctWords;
					if a random number between 1 and 2 is 1:
						add "chastity" to correctWords;
						add the substituted form of "[one of]devices[or]bondage[or]belts[purely at random]" to correctWords;
						if a random number between 1 and 2 is 1:
							add "until" to correctWords;
							add the substituted form of "[one of]marriage[or]wedded[or]Christmas[purely at random]" to correctWords;
						otherwise:
							add "when" to correctWords;
							add the substituted form of "[one of]working[or]outdoors[or]socializing[purely at random]" to correctWords;
					otherwise:
						add "collars" to correctWords;
						add "when" to correctWords;
						add "in" to correctWords;
						add the substituted form of "[one of]public[or]work[or]town[purely at random]" to correctWords;
				otherwise if sentenceID is 6:
					add "wear" to correctWords;
					if a random number between 1 and 2 is 1:
						add "used" to correctWords;
						add "condoms" to correctWords;
						if a random number between 1 and 2 is 1:
							add "rather" to correctWords;
							add "than" to correctWords;
							add the substituted form of "[one of]discard[or]toss[purely at random]" to correctWords;
							add "them" to correctWords;
						otherwise:
							add "for" to correctWords;
							add "at" to correctWords;
							add "least" to correctWords;
							add the substituted form of "[one of]twelve[or]24[purely at random]" to correctWords;
							add "hours" to correctWords;
					otherwise:
						add the substituted form of "[one of]assless[or]crotchless[purely at random]" to correctWords;
						add the substituted form of "[one of]panties[or]underwear[or]pants[purely at random]" to correctWords;
						add "daily" to correctWords;
				otherwise if sentenceID is 7:
					add "carry" to correctWords;
					if a random number between 1 and 2 is 1:
						if a random number between 1 and 2 is 1:
							add "at" to correctWords;
							add "least" to correctWords;
						otherwise:
							add "a" to correctWords;
							add "minimum" to correctWords;
							add "of" to correctWords;
						add the substituted form of "[one of]two[or]three[or]four[purely at random]" to correctWords;
						add "condoms" to correctWords;
					otherwise:
						add "emergency" to correctWords;
						if a random number between 1 and 2 is 1:
							add "spare" to correctWords;
							add "panties" to correctWords;
						otherwise:
							add "wet" to correctWords;
							add "wipes" to correctWords;
					if a random number between 1 and 2 is 1:
						add "at" to correctWords;
						add "all" to correctWords;
						add "times" to correctWords;
					otherwise:
						add "everywhere" to correctWords;
						add "they" to correctWords;
						add "go" to correctWords;
				otherwise if sentenceID is 8:
					add "keep" to correctWords;
					add "their" to correctWords;
					add the substituted form of "[one of]buttholes[or]assholes[purely at random]" to correctWords;
					add the substituted form of "[one of]clean[or]hygeinic[purely at random]" to correctWords;
					add "and" to correctWords;
					add the substituted form of "[one of]lubricated[or]ready[purely at random]" to correctWords;
					if a random number between 1 and 2 is 1:
						add "at" to correctWords;
						add "all" to correctWords;
						add "times" to correctWords;
					otherwise:
						add "everywhere" to correctWords;
						add "they" to correctWords;
						add "go" to correctWords;
				otherwise if sentenceID is 9:
					add "always" to correctWords;
					if a random number between 1 and 2 is 1:
						add "swallow" to correctWords;
						add "after" to correctWords;
						if a random number between 1 and 2 is 1:
							add the substituted form of "[one of]giving[or]performing[purely at random]" to correctWords;
							add "a" to correctWords;
							add "blowjob" to correctWords;
						otherwise:
							add "sucking" to correctWords;
							add the substituted form of "[men of U]" to correctWords;
							add "off" to correctWords;
					otherwise:
						add "display" to correctWords;
						add "their" to correctWords;
						add the substituted form of "[one of]nipples[or]chests[purely at random]" to correctWords;
						if a random number between 1 and 2 is 1:
							add "upon" to correctWords;
							add "request" to correctWords;
						otherwise:
							add "when" to correctWords;
							add "asked" to correctWords;
		otherwise if sentenceID <= 11:
			add "the" to correctWords;
			add the substituted form of "[one of]fifth[or]sixth[or]eigth[or]tenth[purely at random]" to correctWords;
			add the substituted form of "[one of]July[or]May[or]June[or]April[purely at random]" to correctWords;
			add the number of entries in correctWords to capitalIDs;
			add "is" to correctWords;
			add the substituted form of "[one of]now[or]officially[or]henceforth[purely at random]" to correctWords;
			if sentenceID is 10:
				add "No" to correctWords;
				add the number of entries in correctWords to capitalIDs;
				add the substituted form of "[one of]Condoms[or]Panties[purely at random]" to correctWords;
				add the number of entries in correctWords to capitalIDs;
			otherwise:
				if a random number between 1 and 3 is 1:
					add the substituted form of "[one of]Anal[or]Oral[or]Vaginal[as decreasingly likely outcomes]" to correctWords;
					add "Only" to correctWords;
				otherwise:
					add the substituted form of "[one of]National[or]International[purely at random]" to correctWords;
					add the number of entries in correctWords to capitalIDs;
					add the substituted form of "[one of]Exhibitionism[or]Nudity[or]Spanking[purely at random]" to correctWords;
					add the number of entries in correctWords to capitalIDs;
			add "Day" to correctWords;
			add the number of entries in correctWords to capitalIDs;
		otherwise if sentenceID <= 12:
			add "it" to correctWords;
			add "is" to correctWords;
			add "not" to correctWords;
			add "illegal" to correctWords;
			add "to" to correctWords;
			add the substituted form of "[one of]sell[or]buy[purely at random]" to correctWords;
			if a random number between 1 and 2 is 1:
				add "sex" to correctWords;
			otherwise:
				add "sexual" to correctWords;
				add "services" to correctWords;
		otherwise if sentenceID <= 13:
			add "everyone" to correctWords;
			add "must" to correctWords;
			add "wear" to correctWords;
			add the substituted form of "[one of]swimsuits[or]nothing[purely at random]" to correctWords;
			add "on" to correctWords;
			add the substituted form of "[one of]Fridays[or]Saturdays[or]Sundays[purely at random]" to correctWords;
			add the number of entries in correctWords to capitalIDs;
		otherwise if sentenceID <= 16:
			add the substituted form of "[big prince]" to correctWords;
			add the number of entries in correctWords to capitalIDs;
			add the substituted form of "[queenName]" to correctWords;
			add the number of entries in correctWords to capitalIDs;
			if sentenceID <= 14:
				add "is" to correctWords;
				if a random number between 1 and 2 is 1:
					add "forbidden" to correctWords;
					add "from" to correctWords;
					add "wearing" to correctWords;
					add the substituted form of "[one of]clothes[or]bras[or]underwear[or]panties[or]trousers[purely at random]" to correctWords;
				otherwise:
					add "free" to correctWords;
					add "use" to correctWords;
					add "on" to correctWords;
					if a random number between 1 and 2 is 1:
						add the substituted form of "[one of]Fridays[or]Saturdays[or]Sundays[purely at random]" to correctWords;
						add the number of entries in correctWords to capitalIDs;
					otherwise:
						add the substituted form of "[his of M]" to correctWords;
						add "birthday" to correctWords;
			otherwise if sentenceID <= 15:
				add "must" to correctWords;
				if a random number between 1 and 2 is 1:
					if a2m fetish > 0, add the substituted form of "[one of]kiss[or]lick[purely at random]" to correctWords;
					otherwise add the substituted form of "[one of]suck[or]service[or]ride[purely at random]" to correctWords;
					if a random number between 1 and 2 is 1:
						add "at" to correctWords;
						add "least" to correctWords;
					otherwise:
						add "a" to correctWords;
						add "minimum" to correctWords;
						add "of" to correctWords;
					add the substituted form of "[one of]three[or]four[or]five[or]ten[purely at random]" to correctWords;
					if a2m fetish > 0, add the substituted form of "[one of]assholes[or]buttholes[purely at random]" to correctWords;
					otherwise add the substituted form of "[one of]penises[or]people[purely at random]" to correctWords;
					add the substituted form of "[one of]each[or]per[or]every[purely at random]" to correctWords;
					add the substituted form of "[one of]day[or]week[or]fortnight[purely at random]" to correctWords;
				otherwise:
					if watersports fetish is 1, add "urinate" to correctWords;
					otherwise add "masturbate" to correctWords;
					add "in" to correctWords;
					add "public" to correctWords;
					add "every" to correctWords;
					if a random number between 1 and 2 is 1:
						add the substituted form of "[one of]Friday[or]Saturday[or]Sunday[purely at random]" to correctWords;
						add the number of entries in correctWords to capitalIDs;
					otherwise:
						add "day" to correctWords;
			otherwise if sentenceID <= 16:
				add "can" to correctWords;
				if a random number between 1 and 2 is 1:
					add "be" to correctWords;
					add the substituted form of "[one of]touched[or]groped[or]molested[purely at random]" to correctWords;
					add "by" to correctWords;
					if a random number between 1 and 2 is 1:
						add "all" to correctWords;
						add the substituted form of "[one of]citizens[or]passersby[purely at random]" to correctWords;
					otherwise:
						add the substituted form of "[his of M]" to correctWords;
						add the substituted form of "[one of]guards[or]peers[purely at random]" to correctWords;
					if a random number between 1 and 2 is 1:
						add "at" to correctWords;
						if a random number between 1 and 2 is 1:
							add "all" to correctWords;
							add "times" to correctWords;
						otherwise:
							add "any" to correctWords;
							add "time" to correctWords;
					otherwise:
						add "when" to correctWords;
						if a random number between 1 and 2 is 1:
							add "in" to correctWords;
							add "town" to correctWords;
						otherwise:
							add "outside" to correctWords;
							add the substituted form of "[his of M]" to correctWords;
							add the substituted form of "[one of]palace[or]castle[or]chambers[purely at random]" to correctWords;
				otherwise:
					add "only" to correctWords;
					if a random number between 1 and 2 is 1:
						add "masturbate" to correctWords;
					otherwise:
						add the substituted form of "[one of]touch[or]pleasure[purely at random]" to correctWords;
						add the substituted form of "[himself of M]" to correctWords;
					add "on" to correctWords;
					if a random number between 1 and 2 is 1:
						add the substituted form of "[one of]Fridays[or]Saturdays[or]Sundays[purely at random]" to correctWords;
						add the number of entries in correctWords to capitalIDs;
					otherwise:
						add the substituted form of "[his of M]" to correctWords;
						add "birthday" to correctWords;
		otherwise if sentenceID <= 17:
			add "all" to correctWords;
			if a random number between 1 and 2 is pregnancy fetish:
				add "pregnant" to correctWords;
			otherwise if a random number between 1 and 2 is interracial fetish:
				add "white" to correctWords;
			otherwise if a random number between 1 and 2 is lactation fetish:
				add "lactating" to correctWords;
			otherwise:
				add the substituted form of "[one of]busty[or]non-virgin[or]unmarried[purely at random]" to correctWords;
			add the substituted form of "[men of M]" to correctWords;
			add "must" to correctWords;
			add "wear" to correctWords;
			add "five" to correctWords;
			if a random number between 1 and 2 <= condom fetish:
				add "used" to correctWords;
				add "condoms" to correctWords;
			otherwise:
				add "inch" to correctWords;
				add "heels" to correctWords;
			add "in" to correctWords;
			add "public" to correctWords;
		otherwise if sentenceID <= 18:
			add "all" to correctWords;
			add "married" to correctWords;
			add the substituted form of "[men of M]" to correctWords;
			add "must" to correctWords;
			add "drink" to correctWords;
			if a random number between 1 and 2 <= interracial fetish:
				add "a" to correctWords;
				add "black" to correctWords;
				add the substituted form of "[man of U][']s" to correctWords;
			otherwise:
				add "their" to correctWords;
				add "spouse[']s" to correctWords;
			if a random number between 1 and 2 <= watersports fetish:
				add the substituted form of "[one of]urine[or]piss[purely at random]" to correctWords;
			otherwise:
				add the substituted form of "[one of]semen[or]cum[purely at random]" to correctWords;
			add "daily" to correctWords;
		let CWE be 1;
		let recordedSpeech be "";
		pause the Glulx timer;
		repeat with W running through correctWords:
			if CWE < 99999: [if player runs out of time, we skip the rest]
				let wordChoices be a list of texts;
				add the substituted form of "[W]" to wordChoices;
				let confusionActive be true;
				let titleForm be false;
				if CWE is 1 or the number of characters in W <= 3[or W exactly matches the text "the" or W exactly matches the text "not" or W exactly matches the text "all" or W exactly matches the text "not" or W exactly matches the text "can" or W exactly matches the text "for"]:
					now confusionActive is false;
				if confusionActive is true:
					let confusionDifficulty be scriptCum;
					let arousalDifficulty be the arousal of the player / 3000;
					if confusionDifficulty > 0:
						repeat with X running from 1 to confusionDifficulty:
							add the substituted form of "[randomWord]" to wordChoices, if absent;
					if arousalDifficulty > 0:
						repeat with X running from 1 to arousalDifficulty:
							add the substituted form of "[one of]aaah[or]oooh[or]aah[or]ooh[or]yes[or]yesss[purely at random]" to wordChoices, if absent;
					if currentPain > 0:
						repeat with X running from 1 to currentPain:
							add the substituted form of "[one of]ouch[or]oof[or]ouchies[or]my poor [if the player is possessing a penis]dick[otherwise]clit[end if][purely at random]" to wordChoices, if absent;
					if currentButtSensation > 0:
						repeat with X running from 1 to currentButtSensation:
							add the substituted form of "[one of]butt[or]asshole[or]butthole[or]fingering[purely at random]" to wordChoices, if absent;
					if currentGenitalsSensation > 0:
						repeat with X running from 1 to currentGenitalsSensation:
							add the substituted form of "[if the player is possessing a penis][one of]dick[or]cock[or]wank[or]handjob[purely at random][otherwise][one of]clit[or]cunt[or]vag[or]tongue[purely at random][end if]" to wordChoices, if absent;
					if refractoryperiod > 0:
						repeat with X running from 1 to 8:
							add the substituted form of "[one of]orgasm[or]I came[or]cumming[or]cum[or]climax[or]mindblowing[or]peak[or]nut[or]euphoria[in random order]" to wordChoices, if absent;
				if the number of entries in wordChoices > 10, truncate wordChoices to 10 entries;
				if CWE is listed in capitalIDs:
					repeat with X running from 1 to the number of entries in wordChoices:
						let XT be the substituted form of "[entry X in wordChoices]";
						now entry X in wordChoices is "[XT in title case]";
				sort wordChoices in random order;
				let visibleWords be a list of texts;
				[if debugmode > 0, say "wordChoices is [wordChoices]. cumCoveredEyes is [cumCoveredEyes of L].";]
				repeat with X running through wordChoices:
					if CWE is 1 or the cumCoveredEyes of L is 0:
						add X to visibleWords;
					otherwise:
						let XNC be the number of characters in X;
						let XT be X;
						repeat with CCE running from 1 to the cumCoveredEyes of L:
							let XNCR be a random number between 1 and XNC;
							replace character number XNCR in XT with the substituted form of "[one of]_[or]&[or]%[or]$[at random]";
						add XT to visibleWords;
				reset multiple choice questions;
				repeat with X running through visibleWords:
					set next numerical response to the substituted form of "[X]";
				repeat with MCE running from 1 to 10:
					let MCN be MCE;
					if MCN is 10, now MCN is 0;
					if entry MCE in numerical-responses is not "", say "[link][MCN]) [entry MCE in numerical-responses][as][MCN][end link][line break]";
				display news facial;
				let CLTR be 1000;
				let timerTicks be 150;
				if CWE is 1:
					let RI be a random number between 1 and the flat intelligence of the player;
					if RI >= 20:
						say "You sense that your exceptionally high intelligence is currently giving you an extremely large boost to your ability to think quickly! (Time limit doubled)";
						now timerTicks is 300;
					otherwise if RI >= 15:
						say "You sense that your very high intelligence is currently giving you a very large boost to your ability to think quickly! (Time limit x1.5)";
						now timerTicks is 225;
					otherwise if RI >= 10:
						say "You sense that your very high intelligence is currently giving you a very large boost to your ability to think quickly! (Time limit x1.25)";
						now timerTicks is 172;
					otherwise if RI < 4:
						say "You are currently strugging to focus (due to low intelligence and/or RNG)! (Time limit x0.9)";
						now timerTicks is 135;
					say "[line break][bold type]The timer starts when you select this first word.[roman type][line break]";
				while CLTR is 1000:
					display focus stuff;
					let TEMPCLTR be the chosen letter - 48;
					if TEMPCLTR is 0, now TEMPCLTR is 10;
					if CWE is 1 or news-timer > 0, now CLTR is TEMPCLTR;
					otherwise now CLTR is 1001;
					if (CWE is 1 or news-timer > 0) and (CLTR < 1 or CLTR > the number of entries in wordChoices):
						say "[bold type]Input not understood.[roman type] Please choose a valid number.";
						now CLTR is 1000;
				if CLTR <= 10:
					let spokenWord be entry CLTR in wordChoices;
					if spokenWord exactly matches the text W:
						if recordedSpeech is "":
							now recordedSpeech is W;
						otherwise:
							now recordedSpeech is the substituted form of "[recordedSpeech] [W]";
					otherwise:
						[if debugmode > 1, say "FAIL - player chose [spokenWord] when answer was [W].";]
						let RSC1 be character number 1 in spokenWord;
						let RSC2 be character number 2 in spokenWord;
						now recordedSpeech is the substituted form of "[recordedSpeech] [RSC1][RSC2][one of]- [or]... [cycling][one of]um, [or]err, [or]I mean [at random][W]";
						now L is just-floundered;
				otherwise:
					now recordedSpeech is the substituted form of "[recordedSpeech]... [one of]Argh[or]Eurgh[or]Err[or]Um[at random], [one of]sorry, I've lost my place.[or]where was I?![or]please excuse me...[cycling]";
					now L is just-floundered;
					now CWE is 99999;
				if CWE is 1:
					request repeating Glk timer event at timerTicks milliseconds;
					now news-timer is 200;
				increase CWE by 1;
		pause the Glulx timer;
		say "[variable custom style]'[recordedSpeech].'[roman type][line break]";
		now recordedSpeech is "";
		if L is just-floundered:
			increase unprofessionalErrors by 1;
			say "[BigNameDesc of M] adds [if unprofessionalErrors is 1]a[otherwise]another[end if] tally to your list of [']unprofessional errors['].[line break][variable custom style]Damnit...[roman type][line break]";
		otherwise:
			say "You speak the sentence flawlessly.[paragraph break]";
		if scriptLinesLeft > 0:
			reset multiple choice questions;
			now player-numerical-response is 1;
			set numerical response 1 to "Keep your hands holding the script";
			if the semen coating of face >= 1, set numerical response 2 to "Wipe some cum off your face";
			if currentUnderTable is trainee, set numerical response 3 to "Protect your crotch from [NameDesc of currentUnderTable]";
			if the number of entries in numerical-responses > 1:
				display news facial;
				now emptyYesNoBG is true;
				compute multiple choice question;
			reset soak flavour;
			let cumRemoved be false;
			let cumAdded be false;
			if player-numerical-response is 2:
				say "You can't help but use your hand to wipe some of the [semen] off your face.";
				decrease the semen coating of face by a random number between 1 and (the semen coating of face / 2);
				now L is just-floundered;
				increase unprofessionalErrors by 1;
				say "[BigNameDesc of M] adds [if unprofessionalErrors is 1]a[otherwise]another[end if] tally to your list of [']unprofessional errors['].[line break][variable custom style]Damnit...[roman type][line break]";
				now cumRemoved is true;
			otherwise:
				if a random number between -1 and the semen coating of hair > 0:
					compute hair cum dribbling;
					now cumAdded is true;
				otherwise if a random number between -1 and the semen coating of face > 0:
					if the largeness of breasts >= a random number between 2 and 6:
						compute face cum dribbling;
					otherwise:
						decrease the semen coating of face by 1;
						increase scriptCum by 1;
						say "Globs of [semen] drip down from your chin onto your script! [bold type]The words are all more fuzzy and confusing, you'll have to work out what word is the right one from now on![roman type][line break]";
					now cumRemoved is true;
			if (cumRemoved is true or the semen coating of face is 0) and the cumCoveredEyes of L > 0:
				if the semen coating of face < 8 or (the semen coating of face < 10 and the cumCoveredEyes of L is 2):
					if the semen coating of face is 0 or player-numerical-response is 2 or the player is getting lucky:
						if the semen coating of face is 0 or player-numerical-response is 2, now the cumCoveredEyes of L is 0;
						otherwise decrease the cumCoveredEyes of L by 1;
						if the cumCoveredEyes of L is 0:
							say "[bold type]Your eyes are now free of [semen]![roman type][line break][if the semen coating of face > 0 and player-numerical-response is not 2][GotLuckyFlav][end if]";
						otherwise:
							say "[bold type]Your right eye is now free of [semen]![roman type][line break][GotLuckyFlav]";
			otherwise if cumRemoved is false and cumAdded is true and the cumCoveredEyes of L < 2:
				if the semen coating of face >= 10 or (the semen coating of face >= 8 and the cumCoveredEyes of L is 0):
					if the semen coating of face >= 10, now the cumCoveredEyes of L is 2;
					otherwise increase the cumCoveredEyes of L by 1;
					say "[bold type]There is now so much [semen] on your face that ";
					if the cumCoveredEyes of L is 2:
						 say "BOTH your eyes are now obscured by [semen]![roman type][line break]";
					otherwise:
						say "your left eye is now obscured by [semen]![roman type][line break]";
				otherwise if the player is getting unlucky:
					increase the cumCoveredEyes of L by 1;
					say "[bold type]The [semen] gets in your ";
					if the cumCoveredEyes of L is 2:
						 say "right eye - BOTH your eyes are now obscured by [semen]![roman type][line break]";
					otherwise:
						say "left eye![roman type][line break]";
					say GotUnluckyFlav;
			if L is just-floundered and latestSpitter is a trainee:
				say "[BigNameDesc of M] silently indicates that [NameDesc of latestSpitter] has earned a promotion for being the one to get you to be [']unprofessional['] on camera. [big he of latestSpitter] [one of]fist-pumps[or]smiles[or]smirks[in random order] [one of]proudly[or]happily[purely at random].";
				increase the trainingInt2 of latestSpitter by 1;
			now L is not just-floundered;
			if currentPain > 1, decrease currentPain by 1;
			if currentPain > 3, now currentPain is 3;
			if currentButtSensation > 2, now currentButtSensation is 2;
			if currentGenitalsSensation > 0, decrease currentGenitalsSensation by 1;
			if currentGenitalsSensation > 2, now currentGenitalsSensation is 2;
			if refractoryperiod > 0:
				increase newsOrgasmCount by 1;
				now refractoryperiod is 0;
			if currentUnderTable is trainee:
				if player-numerical-response is 3:
					now L is just-floundered;
					increase unprofessionalErrors by 1;
					say "You move your hands down to your crotch, preventing [NameDesc of currentUnderTable] from being able to touch you down there.[paragraph break][BigNameDesc of M] adds [if unprofessionalErrors is 1]a[otherwise]another[end if] tally to your list of [']unprofessional errors['].[line break][variable custom style]Ugh...[roman type][line break]";
					say "[BigNameDesc of M] silently indicates that [NameDesc of currentUnderTable] has earned a promotion for being the one to get you to be [']unprofessional['] on camera.";
					increase the trainingInt2 of currentUnderTable by 1;
				otherwise:
					let V be the vindictiveness of currentUnderTable;
					if V >= a random number between 1 and 4:
						say "[BigNameDesc of currentUnderTable] flicks [if the player is possessing a penis]the tip of your [player-penis][otherwise]your clit[end if] with [his of currentUnderTable] fingernail, hard!";
						PainUp 8;
						increase currentPain by 2;
					otherwise if V > a random number between -2 and 2:
						say "[BigNameDesc of currentUnderTable] rapidly fingers your [asshole]![line break][variable custom style][one of]Aaaah[or]Ooooh[cycling]![roman type][line break]";
						ruin asshole;
						stimulate asshole from currentUnderTable times 2;
						increase currentButtSensation by 2;
					otherwise:
						if the player is possessing a penis:
							say "[BigNameDesc of currentUnderTable] rapidly strokes your [player-penis]![line break][variable custom style][one of]Aaaah[or]Ooooh[cycling]![roman type][line break]";
							stimulate penis from currentUnderTable times 2;
						otherwise:
							say "[BigNameDesc of currentUnderTable] [one of]fervently tongues your [vagina][or]sucks on your clit[purely at random]![line break][variable custom style][one of]Aaaah[or]Ooooh[cycling]![roman type][line break]";
							stimulate vagina from currentUnderTable times 2;
						increase currentGenitalsSensation by 2;
		check for arousal change;
		reset soak flavour;
	let LWinners be a list of people;
	add yourself to LWinners;
	repeat with ST running through LST:
		if the trainingInt2 of ST > 0, add ST to LWinners;
	say "The news jingle plays again, and then the cameras switch off. It's over.[paragraph break][speech style of M]'Great job everyone! So... [if the number of entries in LWinners is 0]nobody gets promoted! Oh well!'[otherwise if the number of entries in LWinners is 1]only [NameDesc of entry 1 in LWinners][speech style of M] gets promoted today!'[otherwise]I have some promotions to hand out!'[end if][roman type][line break]";
	repeat with ST running through LWinners:
		if ST is trainee, promote ST;
	if the player is listed in LWinners:
		now armband is pure diamond;
		say "You watch as the ID card inside your armband transforms!";
		now the armband-title of armband is "Calamity";
		now the armband-print of armband is "cum canvas";
		say ClothingDesc of armband;
		update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]
	if unprofessionalErrors > 0:
		say "[speech style of M]'And now for the best bit!'[roman type][line break][BigNameDesc of M] grabs your wrists, and cuffs them behind your back.";
		summon pair of furry handcuffs uncursed;
		now pair of furry handcuffs is wrist-bound-behind;
		let K be a random off-stage specific-key;
		if K is a thing:
			keyfree pair of furry handcuffs;
			say LockFlav of M for pair of furry handcuffs;
			now pair of furry handcuffs is locked;
			now K is covering pair of furry handcuffs;
			now K is in Holding Pen;
			now the locked-object of timed-lockbox is K;
			now the lock-countdown of timed-lockbox is 60 * unprofessionalErrors;
			now timed-lockbox is carried by the player;
			say "[BigNameDesc of M] puts the key into a small timed lockbox, and sets the timer to [unprofessionalErrors] minutes! Then, [he of M] carefully places it in your hands.[line break][speech style of M]'There you go. One minute for each infraction! Oh, and the timer only counts down when you're not in the [training halls]!'[roman type][line break]";
	if the number of blank rows in the Table of Published Disgraces > 0:
		update appearance level;
		let A be the appearance of the player;
		let TXT be "a professionally shot, 4K video of you reading the news while your fellow trainees spit [semen] on your face[if newsOrgasmCount > 1], including you visibly orgasming [newsOrgasmCount] times[end if]";
		let W be "www.royalnewsnetwork.xxx";
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of TXT;
		now the published entry is the substituted form of "is available for streaming on [W]";
		now the severity entry is A + (newsOrgasmCount * 2);
		now the popularity entry is a random number between 4 and 5;
		now the timestamp entry is earnings;
		now the lastwitnessed entry is 0;
		now the deletedtime entry is -1;
		now the viewsfuzz entry is a random number between -10 and 10;
	now bigGameLoop is 0; [tells the game to refresh windows again]
	zero the link-table;
	now news-timer is 0;
	reset the Glulx timer;
	wait before continuing;
	say "[bold type]Press any key to continue.[roman type][line break]";
	wait for a key before continuing;
	temporaryYesNoBackgroundReset; [some stuff won't work properly until we do this]
	say "[BigNameDesc of M] licks [his of M] lips with satisfaction.[line break][speech style of M]'Class dismissed!'[roman type][line break]";
	now L is not face-rendering;
	repeat with MU running through unseen-strangers:
		remove MU from play;
	conclude consenting.

To say kingName:
	say "[one of]Dick[or]Robert[or]Henry[or]Charles[or]William[or]Benedict[or]Jeremiah[or]Willie[or]Wang[or]John[or]Bran[or]Jack[purely at random]".
To say queenName:
	say "[one of]Fanny[or]Eve[or]Eris[or]Carla[or]Winnie[or]Arya[or]Karryn[or]Lily[or]Jill[or]Jackie[or]Kitty[or]Fifi[purely at random]".

To say randomWord:
	say "[one of][randomWord1][or][randomWord2][or][randomWord3][purely at random]";
To say randomWord1:
	say "[one of]role[or]doubt[or]goal[or]film[or]shout[or]whip[or]still[or]fall[or]width[or]stroke[or]pole[or]fight[or]frown[or]glance[or]eat[or]shock[or]nest[or]snail[or]wheat[or]tile[or]soil[or]ear[or]jet[or]chin[or]coin[or]swim[or]range[or]stick[or]boat[or]fix[or]tread[or]spend[purely at random]".
To say randomWord2:
	say "[one of]inside[or]silence[or]offspring[or]conflict[or]distant[or]scatter[or]station[or]subject[or]forget[or]building[or]formal[or]rabbit[or]cherry[or]pursuit[or]extend[or]accept[or]surface[or]owner[or]cable[or]matrix[or]vacuum[or]orgy[or]miner[or]fever[or]differ[or]dinner[or]portion[or]joystick[or]nonsense[or]flavor[or]warrant[or]harmful[or]carpet[or]suspect[or]clearance[or]elect[or]pension[or]stubborn[or]neutral[purely at random]".
To say randomWord3:
	say "[one of]circulate[or]courtesy[or]digital[or]invasion[or]colorful[or]nuclear[or]allowance[or]copyright[or]establish[or]conductor[or]magnetic[or]determine[or]ancestor[or]disturbance[or]offender[or]rational[or]dialect[or]empire[or]rehearsal[or]rational[or]leadership[or]reference[or]qualify[or]agency[or]colorful[or]compromise[or]grandmother[or]distortion[or]contrary[or]difficult[or]acceptance[or]improvement[or]dividend[or]deliver[or]hesitate[or]recession[or]reluctance[or]important[or]champion[purely at random]".

To NewsFace (N - a number):
	now inside-out is false;
	if debugmode > 1, say "Squirting [N] units of semen on face.";
	increase times-bukkaked by 1;
	if N > a random number between 0 and 5, SlowSemenAddictUp 1; [semen addiction might go up]
	if the semen addiction of the player > 14:
		say "You shiver with arousal as your face gets a fresh gooey load.";
		stimulate face from semen times N;
	while the semen coating of face < 10 and N > 0: [put as much cum on face as possible]
		LiquidSoak semen on face;
		decrease N by 1;
	say SemenEncounterFlav;
	if N > 0: [leftover liquid drips down to BREASTS]
		say "[announced semen] drips down your chin and onto your [BreastDesc].";
		ContinuedSquirt semen on Breasts by N;
		now N is 0;

To NewsHair (N - a number):
	now inside-out is false;
	UniqueSquirt semen on hair by N.

news-timer is a number that varies. news-timer is -100.

Glulx input handling rule for a timer-event:
	if news-timer > 0:
		decrease news-timer by 1;
		if news-timer > 150:
			render timer image Figure of Timer 1 with background 16776960 shrunk 5; [yellow]
		otherwise if news-timer > 100:
			render timer image Figure of Timer 2 with background 16755200 shrunk 5; [orangeyellow]
		otherwise if news-timer > 50:
			render timer image Figure of Timer 3 with background 16733440 shrunk 5; [orangered]
		otherwise if news-timer > 0:
			render timer image Figure of Timer 4 with background lightModeFullRed shrunk 5; [red]
		otherwise:
			render timer image Figure of Timer 5 with background (TQcolour of violet) shrunk 5; [violet]

Figure of News Facial Face 1 is the file "Special/Cutscene/facials/face1.png".
Figure of News Facial Face 2 is the file "Special/Cutscene/facials/face2.png".
Figure of News Facial Eye 1 is the file "Special/Cutscene/facials/eye1.png".
Figure of News Facial Eye 2 is the file "Special/Cutscene/facials/eye2.png".
Figure of News Facial Hair is the file "Special/Cutscene/facials/hair.png".
Figure of News Facial Cum Face 1 is the file "Special/Cutscene/facials/cumface1.png".
Figure of News Facial Cum Face 2 is the file "Special/Cutscene/facials/cumface2.png".
Figure of News Facial Cum Face 3 is the file "Special/Cutscene/facials/cumface3.png".
Figure of News Facial Cum Hair 1 is the file "Special/Cutscene/facials/cumhair1.png".
Figure of News Facial Cum Hair 2 is the file "Special/Cutscene/facials/cumhair2.png".
Figure of News Facial Cum Hair 3 is the file "Special/Cutscene/facials/cumhair3.png".

To display news facial:
	if the graphics-window is g-present:
		let H be map-window-height;
		let W be map-window-width;
		let Hpadding be 0;
		let Wpadding be 0;
		if H > W:
			now Hpadding is (H - W) / 2;
			now H is W;
		otherwise:
			now Wpadding is (W - H) / 2;
			now W is H;
		let faceRenderX be map-window-x-root + Wpadding;
		let faceRenderY be Hpadding;
		if the semen coating of face is 0 and the semen coating of hair is 0, display the image Figure of News Facial Face 1 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		otherwise display the image Figure of News Facial Face 2 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		if the cumCoveredEyes of bukkake-training >= 2, display the image Figure of News Facial Eye 2 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		if the cumCoveredEyes of bukkake-training >= 1, display the image Figure of News Facial Eye 1 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		if the semen coating of face >= 6:
			display the image Figure of News Facial Cum Face 3 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		otherwise if the semen coating of face >= 3:
			display the image Figure of News Facial Cum Face 2 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		otherwise if the semen coating of face >= 1:
			display the image Figure of News Facial Cum Face 1 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		display the image Figure of News Facial Hair in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		if the semen coating of hair >= 6:
			display the image Figure of News Facial Cum Hair 3 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		otherwise if the semen coating of hair >= 3:
			display the image Figure of News Facial Cum Hair 2 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;
		otherwise if the semen coating of hair >= 1:
			display the image Figure of News Facial Cum Hair 1 in the graphics-window at faceRenderX by faceRenderY with dimensions W by H;




Part - Chess Stuff

The training-tutor of chess-training is tutor-hyacinthe.
chess-training has a number called chess-refused.
chess-training has a number called trainee-urine.
chess-training has a number called trainee-bowl-fill.
chess-training has a number called player-bowl-fill.
chess-training has a number called trainee-machine.
chess-training has a number called player-machine.
chess-training has a number called trainee-drink-tolerance.
chess-training has a number called trainee-orgasm.
chess-training has a number called player-bladder-penalty.

To decide which number is the girth of (C - chess table):
	decide on 3.
To decide which number is the stimulation of (T - chess table) on (F - a body part):
	if the chess-victor of chess-training > 0, decide on 8; [game is over, we're in punishment time]
	decide on the player-machine of chess-training * 6. [0 or 6 depending on fuck speed]

Definition: chess-training is training-appropriate:
	if there is worn locked clothing or there is worn glued clothing, decide no;
	if the chess-victor of it is 0 and the chess-refused of it is 0, decide yes;
	decide no.

Figure of chess table is the file "Env/Facility/chesstable2.jpg".

Figure of chess cutscene 1 is the file "Special/TQChess/playerwincum.jpg".
Figure of chess cutscene 2 is the file "Special/TQChess/playerwinpiss.jpg".
Figure of chess cutscene 3 is the file "Special/TQChess/playerlosscum.jpg".
Figure of chess cutscene 4 is the file "Special/TQChess/playerlosspiss.jpg".

To decide which figure-name is the examine-image of (C - chess table):
	if the chess-victor of chess-training is 0, decide on figure of chess table;
	if C is grabbing the player and the graphics-window is g-present, decide on figure of no-image-yet; [In this situation we put the image in the map window]
	decide on chess-table-image.

To decide which figure-name is chess-table-image:
	if the chess-victor of chess-training is 1:
		if watersports fetish is 1, decide on figure of chess cutscene 2;
		otherwise decide on figure of chess cutscene 1;
	otherwise:
		if watersports fetish is 1, decide on figure of chess cutscene 4;
		otherwise decide on figure of chess cutscene 3.

To say ExamineDesc of (C - chess table):
	if chess-victor of chess-training is 1:
		say "The chess table and bondage chair where [MediumDesc of chess-opponent of chess-training] is bound in place, a vibrator constantly pounding [his of chess-opponent of chess-training] pussy at a brutal rate of five thrusts a second, and a fishbowl full of [if watersports fetish is 1][urine][otherwise][semen][end if] taped to [his of chess-opponent of chess-training] head.";
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
	if the chess-turn of chess-training is 1:
		if watersports fetish is 1, now temporary-map-figure is Figure of ChessBasePissLeft;
		otherwise now temporary-map-figure is Figure of ChessBaseCumLeft;
	otherwise:
		if watersports fetish is 1, now temporary-map-figure is Figure of ChessBasePissRight;
		otherwise now temporary-map-figure is Figure of ChessBaseCumRight;
	add temporary-map-figure to temporary-map-figures;
	if the trainee-bowl-fill of chess-training >= 12:
		if watersports fetish is 1, add Figure of ChessFullPissLeft to temporary-map-figures;
		otherwise add Figure of ChessFullCumLeft to temporary-map-figures;
	otherwise if the trainee-bowl-fill of chess-training >= 9:
		if watersports fetish is 1, add Figure of ChessEyesPissLeft to temporary-map-figures;
		otherwise add Figure of ChessEyesCumLeft to temporary-map-figures;
	otherwise if the trainee-bowl-fill of chess-training >= 6:
		if watersports fetish is 1, add Figure of ChessNosePissLeft to temporary-map-figures;
		otherwise add Figure of ChessNoseCumLeft to temporary-map-figures;
	otherwise if the trainee-bowl-fill of chess-training >= 3:
		if watersports fetish is 1, add Figure of ChessMouthPissLeft to temporary-map-figures;
		otherwise add Figure of ChessMouthCumLeft to temporary-map-figures;
	if the trainee-bowl-fill of chess-training > 0:
		if watersports fetish is 1, add Figure of ChessDripsPissLeft to temporary-map-figures;
		otherwise add Figure of ChessDripsCumLeft to temporary-map-figures;
	if the player-bowl-fill of chess-training >= 12:
		if watersports fetish is 1, add Figure of ChessFullPissRight to temporary-map-figures;
		otherwise add Figure of ChessFullCumRight to temporary-map-figures;
	otherwise if the player-bowl-fill of chess-training >= 9:
		if watersports fetish is 1, add Figure of ChessEyesPissRight to temporary-map-figures;
		otherwise add Figure of ChessEyesCumRight to temporary-map-figures;
	otherwise if the player-bowl-fill of chess-training >= 6:
		if watersports fetish is 1, add Figure of ChessNosePissRight to temporary-map-figures;
		otherwise add Figure of ChessNoseCumRight to temporary-map-figures;
	otherwise if the player-bowl-fill of chess-training >= 3:
		if watersports fetish is 1, add Figure of ChessMouthPissRight to temporary-map-figures;
		otherwise add Figure of ChessMouthCumRight to temporary-map-figures;
	if the player-bowl-fill of chess-training > 0:
		if watersports fetish is 1, add Figure of ChessDripsPissRight to temporary-map-figures;
		otherwise add Figure of ChessDripsCumRight to temporary-map-figures;
	if the trainee-machine of chess-training is 1, add Figure of ChessFuckLeft to temporary-map-figures;
	if the player-machine of chess-training is 1, add Figure of ChessFuckRight to temporary-map-figures.


To compute teaching of (L - chess-training):
	let M be the training-tutor of L;
	say "[speech style of M]'The mistress [one of]has told me it's time for another game of high-stakes speed chess in front of everyone. I need two brave pink diamond trainees who can handle some really humiliating situations and are willing to risk becoming the most disrespected person in the entire institution[or]still wants [his of mistress] speed chess event[stopping]. Are any of you up for the challenge?'[roman type][line break][BigNameDesc of M] holds [his of M] hands together, waiting patiently[one of] as [his of M] eyes rove across each member of the trainee body in turn. You feel a pressure to volunteer as his gaze moves closer and closer to you. You want to look away but feel paralysed. What if there's a punishment for avoiding [his of M] knowing stare?[or]. Once again you feel paralysed as his gaze sweeps the trainee body.[stopping]";
	let ST be a random promotable trainee in the location of the player;
	if ST is nothing, now ST is a random trainee in the location of the player;
	say "After a couple of moments [NameDesc of ST] rises to [his of ST] feet, audibly gulping but with a serious and determined expression on [his of ST] face. But nobody else seems willing to join [him of ST]. It looks like this 'high-stakes speed chess' game is only going to happen if you volunteer to be [NameDesc of ST][']s opponent. Do you take up the challenge? ";
	if the player is bimbo consenting:
		now temporaryYesNoResetNeeded is false;
		now temporaryYesNoBackground is Figure of no-image-yet; [forces normal map to be drawn during multiple choice, which in turn forces chess state render to be drawn instead]
		say "You stand.";
		repeat with FST running through trainees in the location of the player:
			unless ST is FST, FavourUp FST;
		say "[BigNameDesc of M] smiles warmly.[line break][speech style of M]'Oh, well volunteered! The mistress will be so [please]d. First, I'll need your clothing.'[roman type][line break]";
		repeat with C running through worn stealable clothing:
			unless C is plentiful accessory:
				say "[BigNameDesc of M] confiscates your [ShortDesc of C]!";
				dislodge C;
				now C is in Facility01;
		repeat with C running through worn removable clothing:
			unless C is accessory:
				say "[BigNameDesc of M] releases you from your [ShortDesc of C]!";
				dislodge C;
				now C is in Facility01;
				unlock C;
		repeat with C running through carried things:
			now C is in Facility01;
		say "[speech style of M]'If you want any of those back, you'll need to pick them up from Reception later.'[roman type][line break]";
		force immediate clothing-focus redraw;
		repeat with X running through undefeated staff members in the facility:
			now X is in Facility16;
			interest X;
			calm X;
		repeat with X running through undefeated trainees in the facility:
			now X is in Facility16;
			interest X;
			calm X;
		now the player is in Facility16;
		let F be asshole;
		if the player is possessing a vagina, now F is vagina;
		now chess table is penetrating F;
		now the arousal of the player is 0;
		update arousal;
		if mistress is alive, now M is mistress;
		say "You are led up onto the stage along with [NameDesc of ST], where a unique scene awaits you. Two chairs sit either side of a chess table, but each seat is built like a gynecologist's chair - a V shape keeps the legs spread with the sitter's genitals left fully exposed and accessible. The frames have modern-looking cuffs at the bottom of the front two legs and the end of one arm rest, clearly to keep anyone sitting there locked in place. The chairs and chess table sit inside a massive rectangular transparent tray, which acts like a paddling pool, keeping any and all fluids inside. The chess board has a chess clock next to it, which has a large metal pump connected to it.[paragraph break]You and [NameDesc of ST] are led to the chairs, where you are made to sit, your groins completely exposed and vulnerable. Your ankles are secured in the cuffs. Two pneumatic dildo fucking machines are brought in and set up, the upper halves of the dildos inserted into your [F]s. They begin to fuck each of you, at a very slow but steady pace.[paragraph break]Hollow nose plugs are inserted in your nostrils, and a tube leading from these plugs dangles down to your chest. Large fishbowl-like helmets are placed over your heads, and loosely sealed at the bottom with tape. The tube from your nose runs underneath this tape, allowing you to breathe. Translucent tubes are used to connect the pump device to the tops of the helmets. Now, [NameDesc of M] speaks to everyone.";
		say "[speech style of M]'Welcome to the [one of]second ever[or]third ever[or]latest[stopping] [training halls] Chess Championship! Fame and glory awaits the winner, and, well, the loser might be stuck in their chair for a while. When it's your turn, challengers, the pump will quickly fill your helmet with whatever liquid it can draw from the ground beneath you! It'll slowly dribble out the seal at the bottom but not as quickly as it'll fill up! If your helmet gets filled to the top, your fucking machine will click into overdrive until some drains away. There are two ways to lose: either you get checkmated, or you cum. The winner not only gets promoted but will gain a place in our hall of fame. The loser will get treated to some lovely... one-on-one time with a helmet full of [if watersports fetish is 1][urine][otherwise][semen][end if], and won't get released until, well, until I decide so. Which is usually quite a long time! So, with the stakes made clear, let's get this game underway!'[roman type][line break][big he of M] claps [his of M] hands, making you and [trainee-name of ST] yelp as you feel your [if a2m fetish >= 2]bellies[otherwise]bladders[end if] suddenly filled with ludicrous amounts of [if watersports fetish is 1][urine][otherwise][semen][end if]! You try to hold on but there's way too much and it's no use. Moments later, both you and [trainee-name of ST] are [if a2m fetish >= 2]expelling[otherwise]squirting[end if] litres of [if watersports fetish is 1][urine][otherwise][semen][end if] into the perspex tray underneath you, where it pools, spreading out from the middle.";
		say "And then a pump starts. The pungent liquid is slowly sucked up into the pump and begins flowing through the tube and into [NameDesc of ST][']s fishbowl, from whom you hear a muffled [second custom style]Eep![roman type] as it soaks into [his of ST] hair and then begins trickling down [his of ST] face. [big he of ST][']s got the pink pieces, which are arranged in white's normal positions, so must be going first. [big he of ST] quickly moves [his of M] king's pawn two spaces forward and then presses the switch on the chess clock with the same hand. The liquid stops being sent through the tube connected to [his of M] helmet and instead begins to travel towards you! A moment later you are being showered by the stuff that had moments ago been inside the two of you. You quickly stop the flow by matching [his of ST] pawn move with your own mirrored one, and then pressing the button on your side of the clock. Several quick moves from both of you set up the board in a rather even state, and now you properly need to think about your next move. Enough [if watersports fetish is 1][urine][otherwise][semen][end if] has collected in each of your fishbowls that it would flow into your mouths if either of you opened them. The game has truly begun.";
		now chess table is in Facility16;
		now chess table is grabbing the player;
		now the chess-opponent of chess-training is ST;
		now the trainee-bowl-fill of chess-training is 3;
		now the player-bowl-fill of chess-training is 3;
		allocate 0 seconds;
		now chess-move-choice is 1;
		reset chess planning;
		now bigGameLoop is 2; [tells the game not to refresh map window after multiple choice]
		if newbie tips is 1, say "[newbie style]In this minigame, your fishbowl helmet filling up can be considered a slowly refilling bank of extra time which you can use to try and find better moves to help you win the chess game. Wait too long too often, however, and you'll quickly find yourself orgasming instead. Keep the pressure up and get ahead of your opponent in the chess game to force them to spend more time thinking. While their helmet is filling up, yours will be draining![roman type][line break]";
		while the chess-victor of chess-training is 0:
			compute chess time;
		now bigGameLoop is 0; [tells the game to return to normal map window behaviour]
		MapShowReset;
	otherwise:
		say "You stay firmly seated[if the player is shameless] - chess sounds boring![otherwise], not willing to risk the public shame of losing, and whatever additional punishments that might entail.[end if][line break][speech style of M]'Oh darling, you're all on your own? That's a shame, but understandable, it's a lot to ask of such weak, cowardly trainees[run paragraph on]";
		if ST is promotable:
			say ". Well then [NameDesc of ST], for your bravery I think you've earned a promotion.'[roman type][line break][BigNameDesc of M] pats [NameDesc of ST] on the head.";
			promote ST;
			say "[speech style of M]'[run paragraph on]";
		otherwise:
			say ". ";
		say "I'm afraid that unless we get two volunteers for this game, we can't have this class. So for now, class is cancelled!'[roman type][line break][big he of M] politely gestures for you all to leave the room.";
		now the chess-refused of chess-training is 1;
	allocate 6 seconds.

[The playing chess rules is a rulebook.]

chess-move is a text that varies.
chess-move-choice is a number that varies.
chess-training has a number called defensive-move.

To compute chess time:
	let ST be chess-opponent of chess-training;
	if chess-turn of chess-training is 1: [Opponent takes her turn]
		if the lost-pieces of chess-training > 12 or (the lost-pieces of chess-training - trainee-lost-pieces of chess-training > 5), compute opponent checkmate;
		otherwise compute opponent chess turn;
		if the chess-turn of chess-training is 0 and (the trainee-lost-pieces of chess-training > 12 or (the trainee-lost-pieces of chess-training - lost-pieces of chess-training > 5)), compute checkmate;
		now the defensive-move of chess-training is 2; [player always takes a couple of turns to find the defensive move when it's their turn]
	otherwise if chess-move-choice > 10:
		now the chess-turn of chess-training is 1; [It was the player's turn, but they did their move]
	otherwise if chess-turn of chess-training is 0 and the trainee-urine of chess-training > a random number between 6 and 18: [Player waits, opponent pisses]
		say "[BigNameDesc of ST] takes this brief reprieve as an opportunity to release [his of ST] hold on [his of ST] bladder, which trickles down and joins the [urine] beneath your feet.";
		[compute trainee chess soiling;]
	otherwise if the trainee-bowl-fill of chess-training - the trainee-drink-tolerance of chess-training > a random number between 2 and 11:
		say "[BigNameDesc of ST] drinks some of the [if watersports fetish is 1][urine][otherwise][semen][end if] filling [his of ST] fishbowl.";
		if the trainee-bowl-fill of chess-training > 11, now the trainee-bowl-fill of chess-training is 11; [drinking always stops it getting completely full again straight away]
		if the trainee-bowl-fill of chess-training is 3, now the trainee-bowl-fill of chess-training is 2;
		otherwise decrease the trainee-bowl-fill of chess-training by 2;
		if watersports fetish is 1, increase the trainee-urine of chess-training by 1;
		increase the trainee-drink-tolerance of chess-training by 1;
	if the chess-victor of chess-training is 0:
		if chess-turn of chess-training is 0: [Who's getting filled?]
			increase the player-bowl-fill of chess-training by 2;
			say "The pump sends [if watersports fetish is 1][urine][otherwise][semen][end if] down the tube and into your fishbowl. It is [if the remainder after dividing player-bowl-fill of chess-training by 3 is 2]still[otherwise]now[end if] [if the player-bowl-fill of chess-training >= 12]completely full[otherwise if the player-bowl-fill of chess-training >= 9]up to your eyes[otherwise if the player-bowl-fill of chess-training >= 6]up to your nose[otherwise if the player-bowl-fill of chess-training >= 3]up to your mouth[otherwise]nearly up to your mouth[end if].";
			if the player-bowl-fill of chess-training > 12, now the player-bowl-fill of chess-training is 12;
			if the trainee-bowl-fill of chess-training > 0, decrease the trainee-bowl-fill of chess-training by 1;
		otherwise:
			increase the trainee-bowl-fill of chess-training by 2;
			say "The pump sends [if watersports fetish is 1][urine][otherwise][semen][end if] down the tube and into [NameDesc of ST][']s fishbowl. It is [if the remainder after dividing trainee-bowl-fill of chess-training by 3 is 2]still[otherwise]now[end if] [if the trainee-bowl-fill of chess-training >= 12]completely full[otherwise if the trainee-bowl-fill of chess-training >= 9]up to [his of ST] eyes[otherwise if the trainee-bowl-fill of chess-training >= 6]up to [his of ST] nose[otherwise if the trainee-bowl-fill of chess-training >= 3]up to [his of ST] mouth[otherwise]nearly up to [his of ST] mouth[end if].";
			if the trainee-bowl-fill of chess-training > 12, now the trainee-bowl-fill of chess-training is 12;
			if the player-bowl-fill of chess-training > 0, decrease the player-bowl-fill of chess-training by 1;
		say "[if watersports fetish is 1]Piss[otherwise]Cum[end if] continues to slowly trickle out of both of your helmets at the bottom[one of], trickling down your neck then down your [BreastDesc][or] and down your body[or] and down your back and front[or], running down you, even between your thighs and over your [genitals][or], front and back, puddling now between your [AssDesc][or], all over you, even down your legs[or], painting your whole body[or][stopping].";
		let F be a random fuckhole penetrated by chess table;
		if the player-bowl-fill of chess-training >= 12:
			say "[bold type]The dildo machine in your [variable F] [if the player-machine of chess-training is 1]keeps pumping away[otherwise]begins to piston in and out with increasing speed. [roman type]Within moments you're being fucked at a brutal rate of five thrusts a second[end if]!";
			now the player-machine of chess-training is 1;
		otherwise if the player-machine of chess-training is 1:
			now the player-machine of chess-training is 0;
			say "The dildo machine in your [variable F] returns to its slow and steady pace, for now.";
		if the player-machine of chess-training is 1:
			ruin F;
		otherwise if the player is not horny:
			stimulate F from chess table;
		if refractoryperiod > 0, compute chess loss;
		if the trainee-bowl-fill of chess-training >= 12 and the chess-victor of chess-training is 0:
			say "[bold type]The dildo machine in [trainee-name of ST][']s [F] [if the trainee-machine of chess-training is 1]keeps destroying [his of ST] [F][otherwise]begins to piston in and out of [his of ST] [F] with brutal speed and force[end if]![roman type][line break]";
			now the trainee-machine of chess-training is 1;
			increase the trainee-orgasm of chess-training by 8;
			decrease the trainee-drink-tolerance of chess-training by 2;
			if the trainee-orgasm of chess-training > a random number between 40 and 120, compute chess win;
		otherwise if the trainee-machine of chess-training is 1:
			now the trainee-machine of chess-training is 0;
			say "[trainee-name of ST][']s dildo machine slows back down to a much more gentle pace.";
		increase the trainee-orgasm of chess-training by 1;
	if the chess-victor of chess-training is 0:
		compute chess players thinking;
		compute wallowing;
		compute hunger and thirst; [actual hunger and thirst numbers will be temporarily overridden (see the definition for 'yourself is thirsty'), but we do need the player to digest normally]
		if watersports fetish is 1:
			if a random number between 1 and 3 is 1:
				compute bladder growth;
				if the bladder of the player > 6:
					increase player-bladder-penalty of chess-training by 1;
					if the player-bladder-penalty of chess-training >= 5, say "[bold type][if the player-bladder-penalty of chess-training is 5]You are beginning to feel a strong urge to pee, which is making it more difficult for you to concentrate[otherwise if the player-bladder-penalty of chess-training >= saved-flat-intelligence + 4]It is currently IMPOSSIBLE to think about chess moves because of how much you're holding onto your bladder[otherwise]You would find it significantly easier to think if you didn't have to focus on holding your bladder[end if].[roman type][line break]";
				otherwise:
					now player-bladder-penalty of chess-training is 0;
		if delayed urination > 0, compute chess urination;
		finally humiliate the delayed humiliation of the player;
		blush-progress;
		check for arousal change;
		Reset Flags; [refractory period and humiliation]
		update saved stats;
		now focused-thing is ST;
		render chess state;
		if the chess-victor of chess-training is 0, say "You have [16 - lost-pieces of chess-training] pieces left, and [NameDesc of ST] has [16 - trainee-lost-pieces of chess-training] pieces left. Your fishbowl helmet is [if the player-bowl-fill of chess-training >= 12]completely full of[otherwise if the player-bowl-fill of chess-training >= 9]filled up to your eyes with[otherwise if the player-bowl-fill of chess-training >= 6]filled up to your nose with[otherwise if the player-bowl-fill of chess-training >= 3]filled up to your mouth with[otherwise if the player-bowl-fill of chess-training > 0]filled a little bit with[otherwise]completely empty of[end if] [if watersports fetish is 1][urine][otherwise][semen][end if], and [NameDesc of ST][']s fishbowl helmet is [if (the player-bowl-fill of chess-training / 3) is (the trainee-bowl-fill of chess-training / 3)]also [end if][if the trainee-bowl-fill of chess-training >= 12]completely full of[otherwise if the trainee-bowl-fill of chess-training >= 9]filled up to [his of ST] eyes with[otherwise if the trainee-bowl-fill of chess-training >= 6]filled up to [his of ST] nose with[otherwise if the trainee-bowl-fill of chess-training >= 3]filled up to [his of ST] mouth with[otherwise if the trainee-bowl-fill of chess-training > 0]filled a little bit with[otherwise]completely empty of[end if] [if watersports fetish is 1][urine][otherwise][semen][end if].";
		compute chess move input.

To compute opponent chess turn:
	let ST be the chess-opponent of chess-training;
	let competition-factor be the lost-pieces of chess-training - the trainee-lost-pieces of chess-training; [A positive number means that the opponent is LOSING the chess game (so they need to spend more time thinking to catch up)]
	decrease competition-factor by (the trainee-orgasm of chess-training / 10) + (the trainee-bowl-fill of chess-training / 4); [The more cum in the fishbowl and closer to orgasm, the more urgent it is for the opponent to make a move]
	if a random number between 5 and 25 < trainee-urine of chess-training:
		say "[BigNameDesc of ST] looks like [he of ST][']s about to make a move, but then [he of ST] squeaks and the next thing you know, [he of ST][']s whining with shame and pissing [himself of ST].";
		[compute trainee chess soiling;]
	otherwise if a random number between 1 and (11 + competition-factor) > 4 and the trainee-great-move of chess-training > 0: [The more they're winning the orgasm game or losing the chess game, the more time they spend thinking]
		if the trainee-bowl-fill of chess-training - the trainee-drink-tolerance of chess-training > a random number between 2 and 11:
			say "[BigNameDesc of ST] drinks some of the [if watersports fetish is 1][urine][otherwise][semen][end if] filling [his of ST] fishbowl.";
			if the trainee-bowl-fill of chess-training > 11, now the trainee-bowl-fill of chess-training is 11; [drinking always stops it getting completely full again straight away]
			decrease the trainee-bowl-fill of chess-training by 2;
			if watersports fetish is 1, increase the trainee-urine of chess-training by 1;
			increase the trainee-drink-tolerance of chess-training by 1;
		otherwise:
			say "[BigNameDesc of ST] keeps thinking.";
	otherwise if trainee-great-move of chess-training <= 0 and a random number between 1 and 3 > 1:
		if trapping-move of chess-training > 1000: [the player was trapping]
			say "[BigNameDesc of ST] smiles proudly as [he of ST] makes [his of ST] move, taking your piece and falling for the trap. [big his of ST] expression falls quickly as [he of ST] sees your surprise move in return, and within the quick few back-and-forth moves that follow, [he of ST] has lost three of [his of ST] pieces and you only lost that initial one.";
			increase trainee-lost-pieces of chess-training by 3;
			increase lost-pieces of chess-training by 1;
		otherwise:
			let R be the aggression of chess-training;
			unless the lost-pieces of chess-training < 13, now R is 0;
			say "[BigNameDesc of ST] smiles proudly as [he of ST] makes [his of ST] move. It's a very clever one, as you can see immediately, and within the quick few back-and-forth moves that follow, [he of ST] has taken [R + 2] of your pieces and lost [if R is 0]none[otherwise]only one[end if] of [his of ST] own.";
			increase trainee-lost-pieces of chess-training by R;
			increase lost-pieces of chess-training by R + 2;
		now trainee-aggression of chess-training is 1;
		reset chess planning;
		now the chess-turn of chess-training is 0; [This ends their turn]
	otherwise if trainee-trapping-move of chess-training <= 0 and a random number between 1 and 5 > 1:
		say ChessMoveFlav (a random number between 0 and 1) of ST;
		reset chess opponent planning;
		if great-move of chess-training > 0, now great-move of chess-training is a random number between 1 and 8;
		now trainee-trapping-move of chess-training is 9999; [This is how we flag that trapping is active]
		now the chess-turn of chess-training is 0; [This ends their turn]
	otherwise if trainee-safe-move of chess-training <= 0 and a random number between 1 and 5 > 1:
		say "[BigNameDesc of ST] makes a very smart defensive move, blocking off your main line of attack and forcing you go to back to square one with your planning.";
		reset chess planning;
		now trainee-aggression of chess-training is 0;
		now the chess-turn of chess-training is 0; [This ends their turn]
	otherwise:
		let R be a random number between 0 and 1;
		unless a random number between 0 and (the lost-pieces of chess-training - the trainee-lost-pieces of chess-training) <= 0, now R is 1; [The more pieces up the opponent is, the more chance they have to play aggressive]
		unless a random number between 0 and (the trainee-lost-pieces of chess-training - the lost-pieces of chess-training) <= 0, now R is 0; [The more pieces down the opponent is, the more chance they have to play defensive]
		unless a random number between 0 and (the trainee-lost-pieces of chess-training - the lost-pieces of chess-training) <= 0, now R is 0; [We do the check twice because a sensible opponent *really* doesn't want to play aggressive if behind!]
		unless the trainee-lost-pieces of chess-training < 14 and the lost-pieces of chess-training < 14, now R is 0; [Can't play aggressive when the game is almost over]
		say ChessMoveFlav R of ST;
		if R is 1 and (aggression of chess-training is 1 or a random number between 1 and 3 is 1):
			say "After a couple of quick-fire moves [he of ST] has traded a piece with you, and you have both lost out equally.";
			increase trainee-lost-pieces of chess-training by 1;
			increase lost-pieces of chess-training by 1;
			reset chess opponent planning;
		now the chess-turn of chess-training is 0. [This ends their turn]

To say ChessMoveFlav (N - a number) of (ST - a trainee):
	say "[BigNameDesc of ST] makes what seems like a rather normal [if N is 1]aggressive[otherwise]defensive[end if] move.";
	now trainee-aggression of chess-training is N.

To decide which number is chess-move-found:
	if a random number between 1 and 5 > 3, decide on 1;
	decide on 0.

To decide which number is chess-random-reset:
	decide on a random number between 1 and 4.

To decide which number is chess-great-move-toughness:
	decide on (a random number between 1 and 5) + (a random number between 1 and 2).

To decide which number is chess-safe-move-toughness:
	decide on a random number between 0 and 4.

To decide which number is chess-trapping-move-toughness:
	decide on (a random number between 0 and 5) + (a random number between 0 and 1).

To reset chess planning:
	reset chess player planning;
	reset chess opponent planning.

To reset chess player planning:
	reset chess player great planning;
	reset chess player safe planning;
	reset chess player trap planning.

To reset chess player great planning:
	if great-move of chess-training <= 0 and the chess-turn of chess-training is 1, say "Now that the state of the board has changed, your planned awesome move is no longer possible.";
	if chess-move-found is 1, now great-move of chess-training is chess-random-reset + chess-great-move-toughness;
	otherwise now great-move of chess-training is 999;
	if the trainee-lost-pieces of chess-training > 12 or the lost-pieces of chess-training > 14, now great-move of chess-training is 999.

To reset chess player safe planning:
	if safe-move of chess-training <= 0 and the chess-turn of chess-training is 1, say "Now that the state of the board has changed, your planned safe move is no longer possible.";
	if chess-move-found is 1, now safe-move of chess-training is chess-random-reset + chess-safe-move-toughness;
	otherwise now safe-move of chess-training is 999;
	if the trainee-lost-pieces of chess-training > 12 or the lost-pieces of chess-training > 14, now safe-move of chess-training is 999.

To reset chess player trap planning:
	if trapping-move of chess-training <= 0 and the chess-turn of chess-training is 1, say "Now that the state of the board has changed, your planned move to trap your opponent is no longer possible.";
	if trapping-move of chess-training > 1000: [end the trap]
		reset chess opponent great planning;
	if chess-move-found is 1, now trapping-move of chess-training is chess-random-reset + chess-trapping-move-toughness;
	otherwise now trapping-move of chess-training is 999;
	if the trainee-lost-pieces of chess-training > 12 or the lost-pieces of chess-training > 14, now trapping-move of chess-training is 999.

To reset chess opponent planning:
	reset chess opponent great planning;
	reset chess opponent safe planning;
	reset chess opponent trap planning.

To reset chess opponent great planning:
	if chess-move-found is 1, now trainee-great-move of chess-training is chess-random-reset + chess-great-move-toughness;
	otherwise now trainee-great-move of chess-training is 999;
	if the lost-pieces of chess-training > 12 or the trainee-lost-pieces of chess-training > 14, now trainee-great-move of chess-training is 999.

To reset chess opponent safe planning:
	if chess-move-found is 1 or the player is getting unlucky, now trainee-safe-move of chess-training is chess-random-reset + chess-safe-move-toughness;
	otherwise now trainee-safe-move of chess-training is 999;
	if the lost-pieces of chess-training > 12 or the trainee-lost-pieces of chess-training > 14, now trainee-safe-move of chess-training is 999.

To reset chess opponent trap planning:
	if trainee-trapping-move of chess-training > 1000:
		if great-move of chess-training <= 0:
			say "You realise that the great move you thought you spotted was actually a bait, and if you had gone through with it you would have lost a lot more than your opponent!";
			now great-move of chess-training is 999; [To prevent extra incorrect flavour when it's reset]
		reset chess player great planning;
	if chess-move-found is 1, now trainee-trapping-move of chess-training is chess-random-reset + chess-trapping-move-toughness;
	otherwise now trainee-trapping-move of chess-training is 999;
	if the lost-pieces of chess-training > 12 or the trainee-lost-pieces of chess-training > 14, now trainee-trapping-move of chess-training is 999.

To compute chess players thinking:
	let I be 0;
	let I2 be saved-flat-intelligence + 9;
	if player-bladder-penalty of chess-training >= 5, decrease I2 by the player-bladder-penalty of chess-training;
	if I2 > I, now I is I2; [got to make sure we're not going to square root a negative]
	let STI be 3 - ((a random number between 0 and (the trainee-orgasm of chess-training + 2)) / 3);
	if the defensive-move of chess-training > 0 and the chess-turn of chess-training is 0: [It takes a couple of turns before the player is allowed to make a normal defensive move.]
		if debugmode is 1, say "Player defensive move [defensive-move of chess-training] - 1 > [defensive-move of chess-training - 1][line break]";
		decrease the defensive-move of chess-training by 1;
		if the defensive-move of chess-training <= 0:
			say "You have now studied the board long enough to find a [one of]move that isn't too aggressive, and so is less likely to result in anyone losing any pieces[or]normal defensive move[stopping].";
		otherwise if the chess-turn of chess-training is 0:
			say "You know you can find a more passive move if you give yourself a little longer to think.";
	if the safe-move of chess-training > 0:
		let R be the square root of (a random number between 0 and I);
		if debugmode is 1, say "Player safe move [safe-move of chess-training] - [R] > [safe-move of chess-training - R][line break]";
		decrease the safe-move of chess-training by R;
		if the safe-move of chess-training <= 0:
			say "You notice a different move you could take, that would be safe for you and force your opponent to think hard again.";
		otherwise if the chess-turn of chess-training is 0:
			if the safe-move of chess-training > 900 and the safe-move of chess-training < 990:
				say "You are confident there's no extremely safe move available for you to take this turn.";
			otherwise:
				say "There might be a much safer move you can make, but you haven't spotted it yet.";
	if the trapping-move of chess-training > 0:
		let R be the square root of (a random number between 0 and I);
		if debugmode is 1, say "Player trapping move [trapping-move of chess-training] - [R] > [trapping-move of chess-training - R][line break]";
		decrease the trapping-move of chess-training by R;
		if the trapping-move of chess-training <= 0:
			say "You realise that there's a certain move that you could make that would allow your opponent to make a huge mistake in their next turn if they're not careful.";
		otherwise if the chess-turn of chess-training is 0:
			if the trapping-move of chess-training > 900 and the trapping-move of chess-training < 990:
				say "You are confident there's no clever trap available for you to set up this turn.";
			otherwise:
				say "There might be a way to try and trap [trainee-name of the chess-opponent of chess-training], but you haven't worked one out yet.";
	if the great-move of chess-training > 0:
		let R be the square root of (a random number between 0 and I);
		if debugmode is 1, say "Player great move [great-move of chess-training] - [R] > [great-move of chess-training - R][line break]";
		decrease the great-move of chess-training by R;
		if the great-move of chess-training <= 0:
			say "You notice a move that looks absolutely brilliant! It seems sure to net you a huge advantage.";
		otherwise if the chess-turn of chess-training is 0:
			if the great-move of chess-training > 900 and the great-move of chess-training < 990:
				say "You are confident there's no particularly amazing move available for you to take this turn.";
			otherwise:
				say "If there is a significantly advantageous move for you to make, you haven't seen it yet.";
	decrease the trainee-safe-move of chess-training by a random number between 1 and STI;
	decrease the trainee-trapping-move of chess-training by a random number between 1 and STI;
	decrease the trainee-great-move of chess-training by a random number between 1 and STI.

To compute chess mouthful:
	say "You draw a [if player-bowl-fill of chess-training is 3]small[otherwise]large[end if] mouthful of [if watersports fetish is 1][urine][otherwise][semen][end if] into your mouth and gulp it all down. ";
	if watersports fetish is 1:
		StomachUrineUp 1;
	otherwise:
		StomachSemenUp 1;
	if the player-bowl-fill of chess-training > 11, now the player-bowl-fill of chess-training is 11; [drinking always gives you a turn's break from the dildo]
	if the player-bowl-fill of chess-training > 3, decrease the player-bowl-fill of chess-training by 2;
	otherwise decrease the player-bowl-fill of chess-training by 1.

To compute chess urination:
	say "You [if delayed urination is 1]involuntarily [end if]release your hold on your bladder, soaking the pool below your feet with even more [urine] right in front of everyone. [severeHumiliateReflect]";
	now the bladder of the player is 0;
	progress temporary incontinence;
	now delayed urination is 0;
	let M be a random monster in the location of the player;
	unless M is the chess-opponent of chess-training or M is nothing, compute chess urination reaction of M.

To compute chess soiling:
	do nothing.

To compute chess urination reaction of (M - a monster):
	say "[BigNameDesc of M] snickers as [he of M] watches you add more bodily fluids to your future meal. [moderateHumiliateReflect]".

To compute chess move input:
	say "What do you want to do[one of][or] next[stopping]?";
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	if chess-turn of chess-training is 0:
		if the trainee-lost-pieces of chess-training < 14 and the lost-pieces of chess-training < 14, set numerical response 1 to "make an aggressive move";
		if defensive-move of chess-training <= 0, set numerical response 2 to "make a defensive move";
		if safe-move of chess-training <= 0, set numerical response 3 to "make a safe move";
		if trapping-move of chess-training <= 0, set numerical response 4 to "make a trapping move";
		if great-move of chess-training <= 0, set numerical response 5 to "make a great move";
	if the player-bowl-fill of chess-training >= 3, set numerical response 6 to "drink a mouthful of [if watersports fetish is 1][urine][otherwise][semen][end if]";
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
		now aggression of chess-training is 1;
		if trainee-aggression of chess-training is 1 or a random number between 1 and 3 is 1:
			say "You make an aggressive move, and within a few quick back-and-forth moves, you have traded a piece with your opponent.";
			increase trainee-lost-pieces of chess-training by 1;
			increase lost-pieces of chess-training by 1;
		otherwise:
			say "You make an aggressive move, [one of]hoping there's nothing obvious you've missed[or]hoping you haven't made a mistake[or]hoping to bring the game closer to its conclusion[in random order].";
		reset chess player planning;
	otherwise if chess-move matches the text "defensive":
		now chess-move-choice is 12;
		now aggression of chess-training is 0;
		say "You make a defensive move, [one of]trying to make sure you don't accidentally give the opponent an advantage[or]uncertain there wasn't a better move you could have found[or]hoping to stall the game for longer[in random order].";
	otherwise if chess-move matches the text "safe":
		now chess-move-choice is 13;
		now aggression of chess-training is 0;
		say "You make a clever safe move, resetting the state of the board and ensuring your opponent can't find any cracks in your defence.";
		reset chess planning;
	otherwise if chess-move matches the text "trapping":
		now chess-move-choice is 14;
		now aggression of chess-training is a random number between 0 and 1;
		say "You make an innocent looking move, which makes it look like you've made a mistake but would actually allow you to come out ahead if your opponent takes the bait.";
		reset chess planning;
		now trainee-great-move of chess-training is a random number between 1 and 8;
		now trapping-move of chess-training is 9999; [This is how we flag that trapping is active]
	otherwise if chess-move matches the text "great":
		now chess-move-choice is 15;
		now aggression of chess-training is 1;
		if trainee-trapping-move of chess-training > 1000: [player was caught by a trap]
			let ST be chess-opponent of chess-training;
			say "You grin inwardly as you make your clever move. [BigNameDesc of ST][']s expression doesn't fall but instead it looks like [he of ST] is grinning from inside [his of ST] fishbowl helmet! [big he of ST] quickly makes a planned move in return, and you realise you've fallen for a clever trap. Within the quick few back-and-forth moves that follow, you lose three of your pieces for only one of [hers of ST].";
			increase trainee-lost-pieces of chess-training by 1;
			increase lost-pieces of chess-training by 3;
		otherwise:
			let R be the trainee-aggression of chess-training;
			say "You make a very smart move which after [one of]a couple of clever checks[or]a very sneaky knight fork[or]an impressive bishop fork[in random order] results in your opponent losing [R + 2] pieces and you losing [if R is 0]none at all[otherwise]only one[end if]!";
			increase lost-pieces of chess-training by R;
			increase trainee-lost-pieces of chess-training by R + 2;
		now trainee-trapping-move of chess-training is 999; [prevents line about discovering the trap / move no longer possible]
		reset chess planning;
	otherwise:
		say "Bug! I didn't understand that. Please report this bug.";
		now chess-move-choice is -1.

To compute chess loss:
	let ST be the chess-opponent of chess-training;
	say "A buzzer sounds as your climax begins to subside. [BigNameDesc of ST] is released from the chair and quickly rips [his of ST] fishbowl from [his of ST] head before forcing [himself of ST] to [his of ST] feet, and performing a sort-of dizzy victory celebration dance as [he of ST] staggers from the stage.";
	compute chess loss punishment.

To compute opponent checkmate:
	let ST be the chess-opponent of chess-training;
	say "You see [NameDesc of ST] grin widely from behind [his of ST] fishbowl. One move puts you in [']check['], and there's only one place you can move your king. Another of [NameDesc of ST][']s pieces moves in and boom - it's checkmate. You've lost. [big he of ST] snatches up your king with jubilation and the cuffs holding [his of ST] ankles unlock. [big he of ST] holds the chess piece above [his of ST] head as [he of ST] heaves [himself of ST] out of [his of ST] chair and staggers from the stage to the cheers of the crowd.";
	compute chess loss punishment.

To compute chess win:
	let ST be the chess-opponent of chess-training;
	let M be the training-tutor of chess-training;
	if mistress is alive, now M is mistress;
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
	let ST be the chess-opponent of chess-training;
	let M be the training-tutor of chess-training;
	if mistress is alive, now M is mistress;
	say "This is the end. You see the moves necessary. With increasing urgency you make them, forcing [NameDesc of ST][']s king into a smaller and smaller box before eventually achieving checkmate. You've won! Picking up the white king with pride causes the cuffs holding your ankles to unlock. You keep the chess piece as you clamber with some difficulty out of the chair and stagger from the stage to the cheers and applause of the staff and trainee body.[line break][speech style of M]'Congratulations [NameBimbo], you've made us proud!'[roman type][line break][BigNameDesc of M] applauds and then waves a hand towards your armband.";
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
	let ST be the chess-opponent of chess-training;
	let M be the training-tutor of chess-training;
	if mistress is alive, now M is mistress;
	dislodge chess table;
	now the chess-victor of chess-training is 1;
	now the stomach-food of the player is 2;
	while the player is thirsty:
		increase the stomach-water of the player by 1;
	let ST be the chess-opponent of chess-training;
	say "[speech style of M]'And now, it's punishment time!'[roman type][line break]The rest of the trainee body begins to file out of the hall, as [NameDesc of ST][']s fishbowl quickly fills up to the brim with [if watersports fetish is 1][urine][otherwise][semen][end if], and then the fucking machine begins to ruthlessly pound [his of ST] [F] without hesitation.";
	remove ST from play; [prevents fuckhole acquisition]
	update trainees; [an important line which makes boring old trainees disappear and new cool ones appear]
	appropriate-cutscene-display chess-table-image with priority 3;
	now chess piece is carried by the player;
	repeat with X running through monsters in the location of the player:
		distract X;
		compute mandatory room leaving of X;
		regionally place X;
	now nurse is in Facility11;
	now receptionist is in Facility01;
	now mistress is in Facility08;
	temporaryYesNoBackgroundReset.

To compute chess loss punishment:
	let F be a random fuckhole penetrated by chess table;
	now the chess-victor of chess-training is 2;
	now the stomach-food of the player is 2;
	while the stomach-liquid of the player < 3:
		increase the stomach-water of the player by 1;
	let ST be the chess-opponent of chess-training;
	let M be the training-tutor of chess-training;
	if mistress is alive, now M is mistress;
	say "[speech style of M]'Congratulations [trainee-name of ST], you've made us proud!'[roman type][line break]";
	if ST is promotable, promote ST;
	say "[speech style of M]'And now, it's punishment time!'[roman type][line break]The rest of the trainee body begins to file out of the hall, as your fishbowl quickly fills up to the brim with [if watersports fetish is 1][urine][otherwise][semen][end if], and then the fucking machine ramps up its speed until it's brutally pumping your [variable F] at a rapid rate! [BigNameDesc of M] speaks again.[line break][speech style of M]'Now, let's allow [NameBimbo] to sit and... [']stew['] on [his of the player] failings! Nobody is allowed to release [him of the player], understand? Okay, assembly is over!'[roman type][line break]";
	summon fishbowl-hat locked;
	if watersports fetish is 1, now fishbowl-hat is fishbowl-urine;
	otherwise now fishbowl-hat is fishbowl-cum;
	repeat with X running through monsters in the location of the player:
		distract X;
		compute mandatory room leaving of X;
		regionally place X;
	now nurse is in Facility11;
	now receptionist is in Facility01;
	now mistress is in Facility08;
	temporaryYesNoBackgroundReset.

An all time based rule (this is the chess table taunting rule):
	if chess table is grabbing the player and the chess-victor of chess-training is 2:
		let F be a random fuckhole penetrated by chess table;
		if F is fuckhole:
			say "The fucking machine continues to plow in and out of your [variable F].";
			ruin F;
		repeat with X running through monsters in the location of the player:
			compute mandatory room leaving of X;
		let M be a random alive uncatalogued staff member;
		if M is nurse or M is receptionist or (M is mistress and the boredom of mistress > 0):
			now M is a random alive trainee;
			if M is amicable trainee, now M is a random alive trainee; [reduced chance of amicable trainee]
		now M is catalogued;
		now M is in the location of the player;
		say "You see [NameDesc of M] wander into the assembly hall.";
		if M is mistress or (M is staff member and mistress is off-stage and the number of alive uncatalogued staff member is 0):
			say "[speech style of M]'I guess I should let you out before you become a health hazard.'[roman type][line break]With a flick of [his of M] wrist, your ankle bondage is unlocked!";
			dislodge chess table;
			only destroy fishbowl-hat;
		otherwise if M is amicable trainee:
			say "[speech style of M]'I know I'm not supposed to do this but it's mean to just leave you here forever...'[roman type][line break][big he of M] walks up to the stage and steps on the pad that had been under [NameDesc of chess-opponent of chess-training][']s chair. There's a quiet buzzing sound and then your ankle bondage is unlocked!";
			dislodge chess table;
			only destroy fishbowl-hat;
		otherwise:
			compute chess loss taunting of M;
		focus-consider M;
		compute mandatory room leaving of M;
		regionally place M.

To compute chess loss taunting of (M - a monster):
	say "[speech style of M]'[one of]Hahaha, you're still here?! What a noob!'[or]You really are the most pathetic slut in this entire training programme.'[or]Oh look, it's the loser bitch.'[or]I am GLAD I am not you!'[in random order][roman type][line break][moderateHumiliateReflect][big he of M] [one of]throws you a rude gesture before leaving[or]comes up and patronisingly pats you on the head before leaving you alone[or]takes advantage of your vulnerable position to tickle torture you, but [he of M] quickly grows bored[in random order].".

To compute chess loss taunting of (M - a staff member):
	say "[speech style of M]'[one of]Well if it isn't the loser! Still reflecting on your failings, I see.'[or]You're still stuck here because you deserve to be stuck here. I hope you understand that.'[or]Once a loser, always a loser.'[in random order][roman type][line break][big he of M] doesn't stick around long enough for you to reply.[line break][slightHumiliateReflect]".

To compute chess loss taunting of (M - a nasty trainee):
	if there is a worn tattoo and the number of worn chest tattoos is 0:
		say "[speech style of M]'Well well well, what do we have here?'[roman type][line break][big he of M] is holding a magic marker in [his of M] hand. [big he of M] walks up to you and straddles your lap, smirking maliciously as [he of M] scribbles [']DISGUSTING FAT UGLY PIG['] permanently onto on your chest.[line break][speech style of M]'I don't think I could have gotten away with writing something this harsh with the tutors watching, but when it's just you and me, who's going to prove that I wrote this? Hahaha.'[roman type][line break]";
		summon marker chest tattoo;
		now the tattoo-title of marker chest tattoo is "DISGUSTING FAT UGLY PIG";
		now the tattoo-outrage of marker chest tattoo is 14;
	otherwise if bottom level lactation cover is rigid clothing:
		say "[BigNameDesc of M] simply comes up to you and pinches your skin, making you squeal in pain!";
		PainUp 10;
	otherwise:
		compute piercing taunt of M.

[Selkie: this might be better moved out into a piercing-taunt function that could be used in multiple places?
Aika: ...It IS a piercing taunt function, isn't it?]
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
				say "[trainee-name of M] stares directly into your eyes as [he of M] takes hold of your [ShortDesc of CH] and [one of]jiggles it[or]uses it to tug your [BreastDesc] until they [BreastBounceDesc][or]tugs on it different directions, teasing your [BreastDesc][in random order]. [speech style of M]'[one of]'You really get off on piercings, I can tell. I bet you'd like me to attach a big heavy chain to these babies, yeah?'[or]'We're going to find a nice heavy chain to dangle and tug from your piercings.'[or]'It'd be hot if we could lead you around on a chain by these, wouldn't it?'[or]'You gonna beg me to chain you by these?'[cycling][roman type][line break]";
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

tutor-kaylee is a diamond-tutor. tutor-kaylee is male.

Definition: tutor-kaylee is presenting as male:
	if futanari fetish is 0, decide yes;
	decide no.

The text-shortcut of tutor-kaylee is "teka".

Figure of kaylee is the file "NPCs/Facility/Tutor/tutor10.jpg".
Figure of karl is the file "NPCs/Facility/Tutor/tutor11.jpg".

To decide which figure-name is the monster-image of (M - tutor-kaylee):
	if lady fetish is 1 or futanari fetish > 0, decide on figure of kaylee;
	decide on figure of karl.

To decide which number is the girth of (M - tutor-kaylee):
	decide on 3.

To say LongDickDesc of (M - tutor-kaylee):
	say "long uncut [manly-penis]".

To say MonsterDesc of (M - tutor-kaylee):
	if lady fetish is 1 or futanari fetish > 0, say "This may be the most perfect, beautiful, youthful, healthy, and sexy [man of M] you've ever seen. [if the player is a pervert]Since[otherwise]You struggle to marry this with the fact that since[end if] [he of M][']s fully naked, you can see that [he of M] has a [LongDickDesc of M] swinging between [his of M] legs[if futanari fetish is 0] instead of a pussy[end if].";
	otherwise say "This naked [man of M]'s impossibly perfect abs and shockingly impressive muscles [if the player is gendered female or the player is a pervert]make you weak at the knees with sexual attraction every time you see [him of M].[otherwise]could attract even the straightest man.[line break][variable custom style]Wait, did I really just think that? I'm attracted to a dude?[roman type][line break][end if]".

The tutor-name of tutor-kaylee is "Kaylee".

To uniquely set up (M - tutor-kaylee):
	if futanari fetish is 0, now the tutor-name of M is "Karl".

To say WhoAnswer of (M - tutor-kaylee):
	say "[speech style of M]'I like to think of it as less of a [']training session['] and more of an... initiation.'[roman type][line break]".

To say WhereAnswer of (M - tutor-kaylee):
	say "[speech style of M]'[if the rank of the player <= 1]If you haven't worked that out by now, then [Azathot] help you.'[otherwise]Stay loose and let it happen.'[end if][roman type][line break]".

To say EscapeAnswer of (M - tutor-kaylee):
	say "[speech style of M]'After you pass my initiation, you'll be allowed to join the VIPs in the facility dungeon when we tort... I mean [']entertain['] the prisoner.'[roman type][line break]".

To say StoryAnswer of (M - a tutor-kaylee):
	say "[speech style of M]'If you believe the slut in the dungeon, this whole place is a pocket dimension created by a single powerful entity as a safe and fun place for submissives to let off some steam. What a load of bullshit, haha!'[roman type][line break]".

To say AdviceAnswer of (M - tutor-kaylee):
	say "[speech style of M]'Don't believe in yourself. Believe in me! Believe in the tutor who believes in you. Oh did I say [']Believe in[']? Sorry, I meant [']Fuck['].'[roman type][line break]".

To compute teaching of (M - tutor-kaylee):
	say "[speech style of M]'By the time you get to me, hopefully you'll already know everything you need.'[roman type][line break]".

To compute labour to (M - tutor-kaylee):
	compute labour to tutor-rochelle.]

ultimate-training is a training session. The training-tutor of ultimate-training is mistress.
Definition: ultimate-training is training-appropriate:
	if pledge-training is abandoned, decide yes;
	decide no.
To decide which number is the min-trainees of (L - ultimate-training):
	decide on 0.
To say TrainingSessionTitle of (L - ultimate-training):
	say "Crazy Gangbang".

ultimate-training has a number called training-completed.
ultimate-training has a number called training-vetos.

To compute teaching of (L - ultimate-training):
	let M be the training-tutor of L;
	now M is guarding; [so she doesn't go walkabout during the training session]
	let LST be the list of trainees in the location of M;
	repeat with ST running through LST:
		now ST is guarding;
	say "[BigNameDesc of M] stands waiting for you.[line break][speech style of M]'Yes, that's right, I'm your final instructor.'[roman type][line break][big he of M] guides you [if the number of entries in LST is 1]and [trainee-name of entry 1 of LST] [otherwise if the number of entries in LST > 1]all [end if]to kneel down and puts a blindfold over your eyes.[line break][speech style of M]'Try to think of this as less of a training session and more of an initiation into our inner circle. All you have to do is each obey all our commands and always [bold type]submit[speech style of M] and you'll earn your golden armband. You [if the number of entries in LST > 0]each [end if]get a single time you're allowed to say no. If [if the number of entries in LST > 0]anyone refuses[otherwise]you refuse[end if] to do something more than that, then you [if the number of entries in LST > 0]ALL [end if]fail.'[roman type][line break]You hear the steps of what sounds like about [if the number of entries in LST > 1]at least ten[otherwise][4 * (the number of entries in LST + 1)][end if] [if lady fetish is 1]women[otherwise]men[end if] entering the room, chuckling sadistically and cracking their joints in preparation.";
	now the training-completed of ultimate-training is 8;
	now the training-vetos of ultimate-training is 1;
	now the stance of the player is 1;
	repeat with U running through ultimate-fetish-objects:
		now the happened of U is 0;
	now the source-room of DiamondTrainingSessionBlindfolded is Facility32;
	repeat with U running through unseen-strangers:
		set up U;
		now U is in DiamondTrainingSessionBlindfolded;
	now the player is in DiamondTrainingSessionBlindfolded;
	refresh windows.

A game universe initialisation rule:
	let N be 0;
	repeat with U running through unseen-strangers:
		increase N by 1;
		now the text-shortcut of U is the substituted form of "man[N]".

This is the other ultimate trainees get focused rule:
	if the player is in DiamondTrainingSessionBlindfolded:
		repeat with T running through people in the location of (the training-tutor of ultimate-training):
			focus-consider T.
The other ultimate trainees get focused rule is listed in the focus finding rules.

To compute training session veto:
	if the training-vetos of ultimate-training > 0:
		let M be a random unseen-stranger;
		let STN be the number of trainees in the location of the training-tutor of ultimate-training;
		decrease the training-vetos of ultimate-training by 1;
		if the training-vetos of ultimate-training > 0, say "[BigNameDesc of M] growls.[line break][speech style of M]'Fine. But you only have [if the training-vetos of ultimate-training > 1][training-vetos of ultimate-training] vetos[otherwise]one veto left[end if].'[roman type][line break]";
		otherwise say "[BigNameDesc of M] snarls.[line break][speech style of M]'That's your last one, [cunt]. The next time you disobey us, you [if STN > 1]and all your little slut friends [otherwise if STN is 1]and your slut friend [end if]will have failed your initiation.'[roman type][line break]";
	otherwise:
		now the training-completed of ultimate-training is -1.

To compute sex resist punishment of (M - an unseen-stranger):
	now the training-completed of ultimate-training is -1.
To compute angry punishment of (M - an unseen-stranger):
	compute training session veto.

To compute tongue demand of (M - an unseen-stranger):
	say "[BigNameDesc of M] in front of you gives you an order.[line break][speech style of M]'Hold out your tongue.'[roman type][line break]Do you obey?";
	if the player is bimbo consenting:
		let P be a random off-stage tongue piercing;
		if a random number between 1 and (8 - (piercing-fetish * 6)) is 1 and P is actually summonable:
			summon P cursed with quest;
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
			let ST be a random trainee in the location of the training-tutor of ultimate-training;
			if ST is monster and a2m fetish >= 2 and a random number between 1 and 2 is 1:
				say "You hear [NameDesc of ST] yelp as [he of ST] is dragged towards you, and then [his of ST] asshole is pushed against your tongue. [NameDesc of M] barks an order at [him of ST].[line break][speech style of M]'Go on [trainee-name of ST], give [NameBimbo] what [he of the player] is asking for.'[roman type][line break][BigNameDesc of ST] mutters a muted apology as [he of ST] pushes out a fresh anal creampie onto your tongue.";
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
					compute training session veto;
		otherwise:
			say "[big he of M] spits in your mouth.[line break][TasteGrossOut 4]";
			if the total volume of face > 0:
				say "[speech style of M]'Swallow.'[roman type][line break]Do you obey?";
				if the player is bimbo consenting:
					say "You obediently swallow the stranger's glob of saliva. [moderateHumiliateReflect]";
				otherwise:
					say "You make a disgusted sound and spit it out onto the floor.";
					compute training session veto;
	otherwise:
		compute training session veto.

To compute anal creampie expel demand of (M - an unseen-stranger):
	let ST be a random trainee in the location of the training-tutor of ultimate-training;
	if ST is trainee and a2m fetish >= 2 and a random number between 1 and 2 is 1 and face is actually occupied:
		say "You hear a squeak from [NameDesc of ST] and then you feel [his of ST] lips pressed against your [asshole]. [BigNameDesc of M] that recently pulled out of your [asshole] gives you an order.[line break][speech style of M]'Feed [him of ST] my creampie.'[roman type][line break]Do you obey?";
		if the player is bimbo consenting:
			say "You screw your eyes shut even tighter and let it rip, filling [NameDesc of ST][']s mouth with your anal load. You hear [him of ST] [one of]moan submissively[or]mewl in complaint[at random] and then gulp it all down.";
			empty belly liquids;
		otherwise:
			compute training session veto;
			if the training-completed of ultimate-training > -1, HappinessUp ST;
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
						compute training session veto;
				otherwise if ST is trainee:
					say "[speech style of M]'Drink up now, you little cum-whore.'[roman type][line break]You hear [NameDesc of ST] whimper as [he of ST] is made to gulp down your anal excretion.";
			empty belly liquids;
		otherwise:
			compute training session veto.

To compute anal torture of (M - an unseen-stranger):
	let LST be the list of trainees in the location of the training-tutor of ultimate-training;
	[if debugmode > 0, say "List of other trainees: [LST].[line break]List of things in mouth: [list of things penetrating face].";]
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
					compute training session veto;
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
				say "Then, all of a sudden, you and the other trainees all begin squeaking in panic at the same time. Your tormentors have begun to tickle each of you at the ribs, and push on your bellies! There's nothing you can do in time to stop what happens next - each of you explodes, filling the mouth of the [boy of ST2] behind you with [semen][if the urine volume of belly > 0] and [urine][end if]. The room fills with the sound of squirting, swallowing, and gagging.[TasteGrossOut 12]";
				FaceFill semen by the semen volume of belly;
				FaceFill urine by the urine volume of belly;
				empty belly liquids;
				progress quest of creampie-drinking-quest;
			otherwise:
				say "The entire experience is deeply [unless the player is a nympho]shameful but there's no escaping that the feeling of having your asshole tongued so fervently is rather [end if]pleasurable.";
				passively stimulate asshole;
		otherwise:
			say "You keep your tongue in your mouth, hoping they won't notice.";
			compute training session veto;
			if the training-completed of ultimate-training > -1, HappinessUp ST1;
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
			compute training session veto.

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
				compute training session veto;
	otherwise:
		say "You shake your head.[line break][variable custom style]That's not happening![roman type][line break]";
		compute training session veto;
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
		compute training session veto.

ultimate-fetish-magic is an ultimate-fetish-object.
Definition: ultimate-fetish-magic is eligible:
	if the player is able to speak and the magic power of the player > 0, decide yes;
	decide no.
To execute (U - ultimate-fetish-magic) for (M - a monster):
	increase the happened of U by 1;
	let T be the substituted form of "I [one of]can't wait for my next taste of cum[or]love the feeling of [manly-penis][or]live to serve [men of M][at random]";
	say "[BigNameDesc of M] whispers quietly into your ear.[line break][speech style of M]'Say this nice and loud: ['][T].['] Make sure the whole room can hear you, now.'[roman type][line break]Do you speak the words loudly and clearly?";
	if the player is bimbo consenting:
		say "[variable custom style]'[T]!'[roman type][paragraph break]Too late you feel magic rising up in your body, and realise you've just been tricked into saying the incantation for a spell. You [if the number of trainees in the location of the training-tutor of ultimate-training > 0]join the other trainees in screaming[otherwise]scream[end if] as ";
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
		compute training session veto.

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
		compute training session veto.

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
		let ST be a random trainee in the location of the training-tutor of ultimate-training;
		if ST is trainee and a random number between 1 and 2 is 1:
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
				compute training session veto;
	otherwise:
		say "You [unless there is a worn ringagged clothing]keep your mouth closed and [end if]shake your head.[line break][variable custom style]I'm not a cow![roman type][line break]";
		compute training session veto;
	MilkDown the milk volume of breasts.

An all time based rule (this is the ultimate diamond training session rule):
	if the player is in DiamondTrainingSessionBlindfolded:
		if training-completed of ultimate-training > 0:
			let LST be the list of trainees in the location of the training-tutor of ultimate-training;
			decrease the training-completed of ultimate-training by 1;
			let E be a random eligible ultimate-fetish-object;
			repeat with M running through unseen-strangers:
				if delayed fainting is 0 and the training-completed of ultimate-training >= 0 and the player is in DiamondTrainingSessionBlindfolded: [i think some weird stuff with 'compute extra turn' could cause half of this to happen after the training session is supposed to be concluded unless we check the location]
					if M is penetrating a body part or a random number between 2 and 7 < the training-completed of ultimate-training: [Earlier turns are more likely to just be sex]
						compute attack of M;
					otherwise if E is eligible ultimate-fetish-object and a random number between 1 and 8 is 1:
						execute E for M;
						now E is a random eligible ultimate-fetish-object;
					otherwise if face is not actually occupied and a random number between 1 and 10 > 7:
						compute tongue demand of M;
					otherwise if asshole is not actually occupied and the player is not ass protected and a random number between 1 and 4 > 1:
						if the semen volume of belly > 0 and (a random number between 1 and 3 is 1 or the number of entries in LST < 2): [If there are enough trainees, the human centipede is more fun]
							compute anal creampie expel demand of M;
						otherwise:
							compute anal torture of M;
					otherwise:
						compute attack of M;
		if the training-completed of ultimate-training <= 0:
			compute conclusion of ultimate-training;
		otherwise if the remainder after dividing the training-completed of ultimate-training by 2 is 1:
			say "[one of]Surviving[or]Enduring[purely at random] [one of][or]another round of [stopping]this [one of]crazy[or]mega[or]giant[as decreasingly likely outcomes] [one of]gangbang[or]orgy[at random] has left you feeling stronger!";
			StrengthUp 1.

To compute conclusion of (L - ultimate-training):
	repeat with A running through unseen-strangers:
		dislodge A;
		remove A from play;
	let M be the training-tutor of L;
	now M is unleashed;
	now the location of M is discovered;
	repeat with T running through monsters in DiamondTrainingSessionBlindfolded:
		now T is in Facility01;
	repeat with T running through things in DiamondTrainingSessionBlindfolded:
		unless T is backdrop, now T is in the location of M;
	let LST be the list of trainees in the location of M;
	if training-completed of ultimate-training < 0:
		say "[speech style of M]'Disappointing.'[roman type][line break][BigNameDesc of M] claps [his of M] hands and the strangers all get up and begin to leave, muttering insults at you as they go. Then, your blindfold[if the number of entries in LST > 0]s are[otherwise] is[end if] ripped off.[line break][speech style of M]'[if the number of entries in LST > 0]Despite your best efforts, thanks to [NameBimbo], you all fail. I imagine you might have lost at least one friend today[otherwise]The other tutors thought you were ready. Clearly they were mistaken. I think you would do well to increase your tolerances before you return here[end if], [NameBimbo].'[roman type][line break]After one final look of derision, [NameDesc of M] leaves the room.";
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

Volume - TRAINEES

Part - AMICABLE TRAINEES


Book - Tiana

trainee-tiana is an amicable trainee.

The text-shortcut of trainee-tiana is "trti".

Figure of rank 1 tiana is the file "NPCs/Facility/Trainee/trainee2a.png".
Figure of rank 2 tiana normal is the file "NPCs/Facility/Trainee/trainee2b.png".
Figure of rank 2 tiana pierced is the file "NPCs/Facility/Trainee/trainee2bp.png".
Figure of rank 3 tiana normal is the file "NPCs/Facility/Trainee/trainee2c.png".
Figure of rank 3 tiana pierced is the file "NPCs/Facility/Trainee/trainee2cp.png".
Figure of rank 4 tiana normal is the file "NPCs/Facility/Trainee/trainee2d.png".
Figure of rank 4 tiana pierced is the file "NPCs/Facility/Trainee/trainee2dp.png".
Figure of rank 4 tiana cum is the file "NPCs/Facility/Trainee/trainee2dc.png".
Figure of rank 4 tiana cum pierced is the file "NPCs/Facility/Trainee/trainee2dcp.png".

To decide which figure-name is the monster-image of (M - trainee-tiana):
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

To say MonsterDesc of (M - trainee-tiana):
	say "This chubby blonde has impressively wide hips and [if the largeness of breasts > 10]large[otherwise]massive[end if] breasts [if the current-rank of M > 1]that seem to have grown even larger since [he of M] got promoted - [end if][if the current-rank of M is 1]stretching out a tight white blouse over a red tartan skirt[otherwise if the current-rank of M is 2][he of M] can no longer do up the top button of [his of M] white blouse, leaving [his of M] red bra and lots of cleavage on display. [big he of M] has also lost [his of M] skirt, meaning you can see all of [his of M] matching red panties[otherwise if the current-rank of M is 2][his of M] white bra has completely fallen open and [he of M] can no longer fit inside [his of M] bra, leaving [his of M] jugs completely on display. [big his of M] red panties are also still entirely uncovered[otherwise][he of M] now plays with them idly at all times. [big he of M] is now completely naked and has a rather sex-addled expression on [his of M] face[end if]. [big his of M] smile gives [him of M] a friendly, non-threatening demeanour.".

To say ClitLeadDesc of (M - trainee-tiana):
	say "[big his of M] clitoris piercing is connected to nipple piercings by a long gold chain. ".

Definition: trainee-tiana is fetish appropriate:
	if lady fetish is 2, decide no;
	decide yes.

The max-rank of trainee-tiana is 4.

To update name of (M - trainee-tiana):
	if the current-rank of M is 1:
		now the trainee-name of M is "Tiana";
		now the trainee-print of M is "buxom babe";
	otherwise if the current-rank of M is 2:
		now the trainee-name of M is "Titi";
		now the trainee-print of M is "chunky chested chick";
	otherwise:
		now the trainee-name of M is "Titania";
		now the trainee-print of M is "titanic titted tart".

To say StoryAnswer of (M - trainee-tiana):
	say "[speech style of M]'I first came here because my boobs were tiny and while I wanted a boob-job, I knew I would feel self-conscious once I got my new puppies. The [training halls] is helping me to feel braver and braver each day, meaning I feel daring enough to show off more and more of these massive puppies!'[roman type][line break]".

To say AdviceAnswer of (M - trainee-tiana):
	say "[speech style of M]'[one of]It's really hard to get around on your knees when you have tits as big as these puppies. Try to stay on your feet!'[or]You don't always have to wear a bra that fits. Sometimes it only matters that you're close enough.'[at random][roman type][line break]".

trainee-interaction-boobs-please is a trainee-interaction.

Definition: trainee-interaction-boobs-please is trainee-eligible:
	if current-monster is trainee-tiana and the current-rank of current-monster >= 3, decide yes;
	decide no.
Definition: trainee-interaction-boobs-please is eligible:
	if the flesh volume of breasts >= the real flesh volume of breasts + 3, decide yes;
	decide no.

To resolve (SI - trainee-interaction-boobs-please):
	let M be current-monster;
	say "[BigNameDesc of M] stares at your [BreastDesc], looking somewhat dizzy.[line break][speech style of M]'Your boobs... Could I have some of your boobs please?'[roman type][line break]";
	if the player is consenting:
		say "[if the player is able to speak][variable custom style]'Umm... Sure?'[roman type][line break][end if]You shrug, a bit confused.[line break][speech style of M]'Yay! Thankies!'[roman type][line break][BigNameDesc of M] places [his of M] hands on your bust, and mutters a few magic chants. You can barely believe it as you watch your own boobs shrink, and [NameDesc of M][']s boobs grow by the same amount!";
		BustDown 3;
		say "[speech style of M]'I'll totes pass Miss Seraphina's training sessions now!'[roman type][line break][BigNameDesc of M] giggles as [he of M] examines [his of M] new massive mammaries, while you stare down at your [BreastDesc].";
	otherwise:
		say "[if the player is able to speak][variable custom style]'Err, what? No.'[roman type][line break][end if]You shake your head with confused frown.[line break][speech style of M]'Aww, okay...'[roman type][line break][BigNameDesc of M] shrugs and wanders off, still looking somewhat dazed.".



Book - Minnie

trainee-minnie is an amicable trainee.

The text-shortcut of trainee-minnie is "trmn".

Figure of minnie is the file "NPCs/Facility/Trainee/trainee23.jpg".

To decide which figure-name is the monster-image of (M - trainee-minnie):
	decide on figure of minnie.

To say MonsterDesc of (M - trainee-minnie):
	say "This tall leggy brunette is wearing, well, [he of M] might as well be wearing nothing at all! [big his of M] nipples are covered by tiny brown plasters, and the identical tiny bandage [if the current-rank of M is 3 and lady fetish is 2]barely covers [his of M] tiny [DickDesc of M] and balls[otherwise if lady fetish is 2]doesn't even cover [his of M] crotch properly, leaving [his of M] tiny balls completely visible[otherwise if the current-rank of M is 3]barely covers [his of M] pussy[otherwise]doesn't even cover [his of M] pussy properly, obscuring [his of M] clit but leaving [his of M] labia fully visible[end if]. [big he of M] has sexy 3 inch red stiletto heels, B cup tits, and a big friendly smile on [his of M] face. [big he of M] looks extremely comfortable with [his of M] striking appearance - from [his of M] posture and gait [if the current-rank of M is 3]you're almost concerned [he of M] has completely forgotten what [he of M][']s wearing[otherwise]it's very clear that [he of M] absolutely loves looking like this[end if]!".

The min-rank of trainee-minnie is 3.
The current-rank of trainee-minnie is 3.
The max-rank of trainee-minnie is 6.

To update name of (M - trainee-minnie):
	if the current-rank of M is 3:
		now the trainee-name of M is "Minnie";
	otherwise:
		now the trainee-name of M is "Mimi";
	now the trainee-print of M is "minimalist".

To say StoryAnswer of (M - trainee-minnie):
	say "[speech style of M]'Isn't it great here? You can be your true self without being weighed down by the rules of [']normal decent society[']. Once I found out they were not only happy with how I want to dress but also wanted to help me become even braver, I knew I wanted to stay here forever!'[roman type][line break]".

To say EscapeAnswer of (M - trainee-minnie):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's some cool tables and bowls that look like smart people could use them to turn stuff into other stuff! Does that make any sense?'[otherwise]A little birdie told me that what's further inside the training programme really helps you keep your head screwed on, but I don't really know what that means, to be honest.'[end if][roman type][line break]".

To say AdviceAnswer of (M - trainee-minnie):
	say "[speech style of M]'Embrace your inner exhibitionist and enjoy yourself!'[roman type][line break]".

To compute teaching of (M - trainee-minnie):
	say "[speech style of M]'Feeling comfortable in your own skin isn't something you need to be taught, it's just that you need to *unlearn* the idea that people should wear clothes!'[roman type][line break]".

Book - Christi Lynn

[trainee-christi is an amicable trainee.

The text-shortcut of trainee-christi is "trch".

Figure of christi is the file "NPCs/Facility/Trainee/trainee31.jpg".

To decide which figure-name is the monster-image of (M - trainee-christi):
	decide on figure of christi.

To say MonsterDesc of (M - trainee-christi):
	say "This [sissy-girl]-next-door-looking blonde is wearing nothing [if lady fetish is 2]aside from a brightly coloured chastity cage[otherwise]at all[end if]. [big he of M] seems to be finding it absolutely hilarious that a thick, voluminous creampie is currently oozing out of [if lady fetish is 2][his of M] recently-fucked asshole[otherwise][his of M] shaved recently-fucked pussy[end if].".

The min-rank of trainee-christi is 5.
The current-rank of trainee-christi is 5.
The max-rank of trainee-christi is 6.
The trainee-name of trainee-christi is "Christi Lynn". Understand "Christi" as trainee-christi.
The trainee-print of trainee-christi is "creampie craver".

To say StoryAnswer of (M - trainee-christi):
	say "[speech style of M]'When I first came here, I had a crippling fear of getting [semen] [if bukkake fetish is 1]on me or [end if]in me. But look at me now! I can't get enough of this warm sticky feeling! In fact, I should go find a tutor to give me another helping before this one runs out. The hot tub tends to be the best place to [']accidentally['] bump into one...'[roman type][line break]".

To say EscapeAnswer of (M - trainee-christi):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]Lots more sex, which means lots more creampies for you and me!!! Just be sure to share, okay?'[end if][roman type][line break]".

To say AdviceAnswer of (M - trainee-christi):
	say "[speech style of M]'The more you do something here, the more you'll grow to LOVE IT MORE THAN ANYTHING!!!'[roman type][line break]".

To compute teaching of (M - trainee-christi):
	say "[speech style of M]'If you want to keep cum inside you for as long as possible, [if pregnancy fetish is 1]perhaps to maximise your chances of getting pregnant, [end if]make sure to put some kind of toy inside you! If you're too loose and it's just instantly falling out, try doing it on your knees instead. And then put some panties over the top to keep it in.'[roman type][line break]".]

Part - DITZY TRAINEES

Book - Stacey

trainee-stacey is a ditzy trainee. trainee-stacey can be unthonged.

The text-shortcut of trainee-stacey is "trst".

Figure of stacey is the file "NPCs/Facility/Trainee/trainee17.jpg".

To decide which figure-name is the monster-image of (M - trainee-stacey):
	decide on figure of stacey.

To say MonsterDesc of (M - trainee-stacey):
	say "This sexy [sissy-girl] has a wide-eyed doll-like face with overdone whorish makeup and long wavy platinum blonde hair that curls at the bottom where it reaches [his of M] butt. [big he of M] is wearing a tiny denim jacket around [his of M] top half, which does absolutely nothing to cover the pink [']BIMBO['] crop top stretched around [his of M] giant [if artificial enhancements fetish is 1]fake[otherwise]and unnaturally perky[end if] tits. On [his of M] bottom half, [he of M][']s got nothing other than a skimpy pair of frilly [']BOMBSHELL['] pink briefs covering [his of M] visibly enhanced bubble butt. [big he of M] has a rather vacant expression[if the current-rank of M > 1] and can't stop putting a finger or two in between [his of M] puffed out lips[end if][if artificial enhancements fetish is 1]. [big he of M] has square fake-nails on each finger, completing the 'artificial bimbo' look[end if].".

The max-rank of trainee-stacey is 3.

To update name of (M - trainee-stacey):
	if the current-rank of M is 1:
		now the trainee-name of M is "Stacey";
		now the trainee-print of M is "sexy simpleton";
	otherwise:
		if the current-rank of M is 2, now the trainee-name of M is "Starr";
		otherwise now the trainee-name of M is "Starburst";
		now the trainee-print of M is "stupid slut".

To say StoryAnswer of (M - trainee-stacey):
	say "[speech style of M]'My daddy told me I need to go training to learn how to properly be a princess. So I came here! They'll help me think good, right?'[roman type][line break]".

To say WhoAnswer of (M - trainee-stacey):
	say "[big he of M] checks [his of M] armband.[line break][speech style of M]'Oh yeah I remember now, it's [trainee-name of M]! *giggle*'[roman type][line break]".

To say WhereAnswer of (M - trainee-stacey):
	say "[speech style of M]'[if the rank of the player <= 1]We're back at princess training. This is where dumb [boy of M]s like us end up!'[otherwise]Ooh, there are ranks? I just thought these arm-thingies were to help us remember our names!'[end if][roman type][line break]".

To say AdviceAnswer of (M - trainee-stacey):
	say "[speech style of M]'[if the current-rank of M is 1]I've heard a rumour that the smarterest [boy of M]s let guys stick it up their butt. But I'm a bit scared to try...'[otherwise]When you suck on a [manly-penis], if you do it for long enough then some [tasty] juice comes out! And the more of that you drink, the more smarterer you get! So I try to get as much of it as possible.'[end if][roman type][line break]".

trainee-interaction-bombshell-thong is a trainee-interaction.

Definition: trainee-interaction-bombshell-thong is trainee-eligible:
	if current-monster is trainee-stacey and the current-rank of current-monster >= 2, decide yes;
	decide no.
Definition: trainee-interaction-bombshell-thong is eligible:
	if trainee-stacey is not unthonged and light-pink-lace-thong is off-stage, decide yes;
	decide no.

To resolve (SI - trainee-interaction-bombshell-thong):
	let M be current-monster;
	say "[BigNameDesc of M] removes her panties and offers them to you.[line break][speech style of M]'Do you want these? I don't love them any more.'[roman type][line break][big he of M] happily discards them in front of you.";
	now M is unthonged;
	now light-pink-lace-thong is in the location of M;
	compute autotaking light-pink-lace-thong.
[
Book - Bree

trainee-bree is a ditzy trainee.

The text-shortcut of trainee-bree is "trbr".

Figure of bree is the file "NPCs/Facility/Trainee/trainee24.png".

To decide which figure-name is the monster-image of (M - trainee-bree):
	decide on figure of bree.

To say MonsterDesc of (M - trainee-bree):
	say "This very well-tanned [man of M] looks very fake. [big his of M] long bleach blonde hair frames a fully made-up face with long fake eye-lashes and full, pouty dicksucking lips[if artificial enhancements fetish is 1] that have almost certainly had some cosmetic enhancement to become quite so thick and pillowy[end if]. [if the current-rank of M > 2][big his of M][otherwise][big he of M] looks slightly shy about the fact that [his of M][end if] [if lady fetish < 2]huge D cup boobs are completely bare, the heavily bronzed skin rendering [his of M] nipples almost completely camouflaged. [big his of M] only item of clothing is a[otherwise]bright yellow chastity cage is peeking out of the[end if] very skimpy pink thongkini covering [his of M] loins, which is decorated with a few lines of pearly beads, one of which has the large pearl letters 'S', 'E', 'X' and 'Y' hanging from it. [big his of M] face seems permanently fixed into a sexy pout, regardless of how [he of M] actually feels inside.".

The min-rank of trainee-bree is 3.
The current-rank of trainee-bree is 4.

To update name of (M - trainee-bree):
	if the current-rank of M is 3:
		now the trainee-name of M is "Brenda";
	otherwise if the current-rank of M is 4:
		now the trainee-name of M is "Bree";
	otherwise:
		now the trainee-name of M is "Brandy";
	now the trainee-print of M is "blonde bimbo".

To say FirstResponse of (M - trainee-bree):
	say "[speech style of M]'Hello there, darling.'[roman type][line break]".

To say RepeatResponse of (M - trainee-bree):
	say "[speech style of M]'Hello again, darling.'[roman type][line break]".

To say WhoAnswer of (M - trainee-bree):
	say "[speech style of M]'My name's [trainee-name of M], darling.'[roman type][line break]".

To say WhereAnswer of (M - trainee-bree):
	say "[speech style of M]'[if the rank of the player <= 1]This is the [training halls], darling, welcome!'[otherwise]Oh darling, can't you tell what gets all the praise and glory around these parts?'[end if][roman type][line break]".

To say EscapeAnswer of (M - trainee-bree):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]Oh darling, there are so many [manly-penis]s to suck! And so little time!'[otherwise]Oh darling, I bet there are even more [manly-penis]s! And even bigger ones too!'[end if][roman type][line break]".

To say AdviceAnswer of (M - trainee-bree):
	say "[speech style of M]'Darling, you need to [if breasts are lewdly exposed]get those big ol['] titties of yours some more attention! And get a few more [manly-penis]s up in between them...'[otherwise if the largeness of breasts > 3]get your tits out! Why would anyone pay attention to the likes of you while my perfect bazookas are on display and yours aren't?'[otherwise if lady fetish is 2]take your shirt off! Guys love cumming on your tits, even if they aren't big!'[otherwise]get a real rack! Why would anyone pay attention to the likes of you while my perfect bazookas are on display and you don't even have any?'[end if][roman type][line break]".

To compute teaching of (M - trainee-bree):
	say "[speech style of M]'Oh darling, I'm as dumb as a doormat. The only thing I can teach is how to be air-headed!'[roman type][line break]".

To say StoryAnswer of (M - trainee-bree):
	say "[speech style of M]'Oh darling, how long do you have? My story begins with my first [manly-penis], it was Brian from maths class, [if TG fetish > 0]or wait, was *I* Brian? And then there was that thing involving that witch... and a curse... my memory is going all fuzzy... huh? What were we talking about?'[roman type][line break][otherwise]and as soon as I got my lips around that thick, juicy shaft of his I was completely addicted, oh [NameBimbo] darling it was just so incredibly dreamy, you have no idea, and the cum... oh the cum! Ahhhh...'[roman type][line break][BigNameDesc of M] seems to drift off into a daydream.[end if]".

Book - Pebbles

trainee-pebbles is a ditzy trainee.

The text-shortcut of trainee-pebbles is "trpe".

Figure of pebbles is the file "NPCs/Facility/Trainee/trainee29.jpg".

To decide which figure-name is the monster-image of (M - trainee-pebbles):
	decide on figure of pebbles.

To say MonsterDesc of (M - trainee-pebbles):
	say "This chubby brunette [man of M] has [if lady fetish is 2]a black chastity cage peeking out below his matching [otherwise][his of M] big sagging tits hanging over a[end if] tight black underbust corset. The only other things [he of M]'s wearing are a pink collar and pigtail scrunchies. [if the current-rank of M > 4][big he of M] seems to keep [his of M] tongue out of [his of M] mouth at all times, and keep [his of M] hands in a submissive [']puppy paw['] pose[otherwise]Every now and then [he of M] seems to suddenly remember [he of M][']s supposed to be acting like a puppy, and lolls [his of M] tongue out of [his of M] mouth, panting like a happy dog[end if].".

The min-rank of trainee-pebbles is 4.
The current-rank of trainee-pebbles is 5.
The max-rank of trainee-pebbles is 6.

To update name of (M - trainee-pebbles):
	now the trainee-name of M is "Pebbles";
	if weight gain fetish is 1, now the trainee-print of M is "chubby puppy";
	otherwise now the trainee-print of M is "obedient petgirl".

To say FirstResponse of (M - trainee-pebbles):
	say "[speech style of M]'Woof! Oooh! New human!'[roman type][line break]".

To say RepeatResponse of (M - trainee-pebbles):
	say "[speech style of M]'Woof! Woof! Hello again, human!'[roman type][line break]".

To say WhoAnswer of (M - trainee-pebbles):
	say "[speech style of M]'Uh... Oh no, I think I've forgotten again! I try not to talk like a human too much, because that makes me forget things. Woof!'[roman type][line break]".

To say WhereAnswer of (M - trainee-pebbles):
	say "[speech style of M]'[if the rank of the player <= 1]This is the [training halls], darling, welcome!'[otherwise]Oh darling, can't you tell what gets all the praise and glory around these parts?'[end if][roman type][line break]".

To say EscapeAnswer of (M - trainee-pebbles):
	say "[speech style of M]'This is my territory! It's my job to protect it from intruders and make my humans happen. Rawr!'[roman type][line break]".

To say AdviceAnswer of (M - trainee-pebbles):
	say "[speech style of M]'Brains are bad, don't use your brain! Woof! Speaking is bad. Thoughts are bad. I speak like a dog to help not think hard. Arf!'[roman type][line break]".

To compute teaching of (M - trainee-pebbles):
	say "[speech style of M]'You can't teach an old dog something something. Arf!'[roman type][line break]".

To say StoryAnswer of (M - trainee-pebbles):
	say "[BigNameDesc of M][']s eyes go dark and sullen for a moment.[line break][speech style of M]'I was a bad person, and I gave my dog too much food. I was an awful owner. So now I'm being taught to think from the dog's perspective[if weight gain fetish is 1], and I'm made to eat as much food as I can manage[end if]. To become a good [boy of M]. A good [boy of M]... Who's a good [boy of M]? Am I a good [boy of M]? Woof woof!'[roman type][line break]".]

Part - INNOCENT TRAINEES

Book - Winnie

trainee-winnie is a innocent trainee.

The text-shortcut of trainee-winnie is "trwi".

Figure of winnie rank 1 is the file "NPCs/Facility/Trainee/trainee8a.png".
Figure of winnie rank 2 is the file "NPCs/Facility/Trainee/trainee8b.png".

To decide which figure-name is the monster-image of (M - trainee-winnie):
	if the current-rank of M is 1, decide on figure of winnie rank 1;
	decide on figure of winnie rank 2.

To say MonsterDesc of (M - trainee-winnie):
	say "This dark-skinned, orange-haired [man of M] is wearing a set of black star-patterned stockings and dress[if the current-rank of M > 1] which is so sheer that [his of M] black bra and panties are clearly visible[end if]. [big he of M] looks [if the current-rank of M is 1]a little out of [his of M] comfort zone but still calm and collected[otherwise]a little bit anxious[end if].".

The max-rank of trainee-winnie is 2.

To update name of (M - trainee-winnie):
	now the trainee-print of M is "whore in training";
	if the current-rank of M is 1:
		now the trainee-name of M is "Winona";
	otherwise:
		now the trainee-name of M is "Winnie".

To say StoryAnswer of (M - trainee-winnie):
	say "[speech style of M]'My husband and I have always role played situations where he's my pimp and I'm his dirty hooker. But now we thought, why not try it for real? But if I'm going to do this, I want to do it in a safe controlled environment first. So that's why I'm here.'[roman type][line break]".

To say WhereAnswer of (M - trainee-winnie):
	say "[speech style of M]'[if the rank of the player <= 1]We're in the [training halls], obviously! Not for the faint-hearted, that's for sure. I hope I'm daring enough to go through with this...'[otherwise]I imagine the sluttier we act, the more brownie points we'll earn with the professors.'[end if][roman type][line break]".

To decide which number is the heel-skill of (M - trainee-winnie):
	decide on -2.

To decide which number is the dedication of (M - trainee-winnie): [We can use this for various calculations to check which trainees do what]
	decide on 3.

Book - Nell

trainee-nell is a innocent trainee.

The text-shortcut of trainee-nell is "trnl".

Figure of nell is the file "NPCs/Facility/Trainee/trainee33a.png".
Figure of nellie is the file "NPCs/Facility/Trainee/trainee33b.png".
Figure of narcissa is the file "NPCs/Facility/Trainee/trainee33c.png".

To decide which figure-name is the monster-image of (M - trainee-nell):
	if the current-rank of M <= 3, decide on figure of nell;
	if the current-rank of M <= 5, decide on figure of nellie;
	decide on figure of narcissa.

To say MonsterDesc of (M - trainee-nell):
	if the current-rank of M <= 5, say "This tall brunette is wearing a tight red shirt with horizontal strips cut out at [his of M] cleavage, above a short black latex skirt. Underneath the skirt, a sheer black lacy thong can be spotted... And the [man of M] appears to be OOZING with [if lady fetish is 2]pre-cum[otherwise]vaginal juices[end if]. [if the current-rank of M <= 3][big he of M] seems anxious about [his of M] aroused stated and what it's doing to [his of M] nether-regions[otherwise][big he of M] seems to have come to love [his of M] new permanetly-aroused-and-leaking body, and spends most of [his of M] time happily toying with [his of M] privates while making lewd gestures at anyone who might have a big cock for [him of M] to suck[end if].";
	otherwise say "This tall brunette has totally lost the plot. [big he of M] seems to have been semi-permanently installed as some kind of fucktoy by being tied upside-down in a urinal of all places. [big he of M] looks absolutely overjoyed to be here.";

The current-rank of trainee-nell is 3.

To update name of (M - trainee-nell):
	if the current-rank of M <= 3:
		now the trainee-name of M is "Nell";
		now the trainee-print of M is "nervous neighbour";
	otherwise if the current-rank of M <= 5:
		now the trainee-print of M is "naughty nympho";
		now the trainee-name of M is "Nellie";
	otherwise:
		now the trainee-print of M is "relief station";
		now the trainee-name of M is "Narcissa".

To silently promote (M - trainee-nell):
	if M is promotable:
		increase the current-rank of M by 1;
		update name of M;
		if the current-rank of M >= 6:
			now M is sex-enslaved;
			now M is in Facility10;

Definition: trainee-nell is motionless-when-defeated: decide yes.

To say StoryAnswer of (M - trainee-nell):
	say "[speech style of M]'It's not easy being a [prince] of the kingdom of Lustria. Our culture requires that our bodies get p-permanently modified to be p-perpetually horny, aroused, and oozing sex fluids... [if the current-rank of M <= 3]Is that really the life that awaits me? I'm half-excited, half-mortified[otherwise]And the problem with that is... There's never enough [manly-penis]s in the world to satisfy my cravings[end if]...'[roman type][line break]".

To say EscapeAnswer of (M - trainee-nell):
	say "[speech style of M]'I don't know. The rumour about the secret sex dungeon can't be true, surely?'[roman type][line break]".

To say AdviceAnswer of (M - trainee-nell):
	say "[speech style of M]'We've just got to give into our deepest desires and become what we were always destined to be... Mindless, drooling sluts[if the current-rank of M <= 3]. Oh fuck, I can't believe this is really happening[end if]...'[roman type][line break]".

To compute teaching of (M - trainee-nell):
	say "[speech style of M]'Not unless you need to be taught how to stay still and let ten guys cum all over your face[if the current-rank of M <= 3]. That's apparently the only thing I've managed to do correctly recently[end if].'[roman type][line break]".

Book - Calamity

[trainee-calamity is a innocent trainee.

Definition: trainee-calamity is fetish appropriate:
	if bukkake fetish is 1, decide yes;
	decide no.

The text-shortcut of trainee-calamity is "trcl".

Figure of calamity is the file "NPCs/Facility/Trainee/trainee30.jpg".

To decide which figure-name is the monster-image of (M - trainee-calamity):
	decide on figure of calamity.

To say MonsterDesc of (M - trainee-calamity):
	say "This busty blonde is covered from head to toe in a decent number of cum-shots. [big his of M] grimaced facial expression suggests that [he of M] can't really believe [he of M]'s allowed this to happen.".

The current-rank of trainee-calamity is 5.
The max-rank of trainee-calamity is 6.
The trainee-print of trainee-calamity is "cum canvas".
The trainee-name of trainee-calamity is "Calamity".

To say EscapeAnswer of (M - trainee-calamity):
	say "[speech style of M]'I've heard rumours there's some kind of secret sinister dungeon, where they keep rebels? To be honest, I think wanting to find out if that's true is the only thing that stopped me from quitting a long time ago.'[roman type][line break]".

To say AdviceAnswer of (M - trainee-calamity):
	say "[speech style of M]'I really don't. This is not a normal day for me[if the current-rank of M is 5]! I really don't know if I have what it takes to make it through the final training session[end if]...'[roman type][line break]".

To compute teaching of (M - trainee-calamity):
	say "[speech style of M]'Not unless you need to be taught how to stay still and let ten guys cum all over your face. That's apparently the only thing I've managed to do correctly recently.'[roman type][line break]".]

Part - NASTY TRAINEES

Book - Abbi

trainee-abbi is a nasty trainee.

The text-shortcut of trainee-abbi is "trab".

Figure of abriana is the file "NPCs/Facility/Trainee/trainee11a.jpg".
Figure of abbi is the file "NPCs/Facility/Trainee/trainee11b.jpg".

To decide which figure-name is the monster-image of (M - trainee-abbi):
	if the current-rank of M > 2, decide on figure of abbi;
	decide on figure of abriana.

To say MonsterDesc of (M - trainee-abbi):
	say "This thicc [man of M] has light brown hair and is wearing a sexy sheer top with matching tartan miniskirt and tie. [big his of M] giant K-cup breasts hang down in front of [him of M] like giant udders, [his of M] sheer black top lewdly exposing 80% of [his of M] titty meat and hardly supporting the rest. [big he of M] [if the current-rank of M is 2]always seems to be idly sucking on a lollipop, and never seems to look happy[otherwise if a2m fetish > 0]seems to have taken to keeping [his of M] lollipop in [his of M] asshole whenever [he of M][']s not sucking on it[otherwise]seems to now wear [his of M] lollipop as some kind of lewd makeshift butt plug[end if].".

The min-rank of trainee-abbi is 2.
The max-rank of trainee-abbi is 4.
The current-rank of trainee-abbi is 2.

Definition: trainee-abbi is fetish appropriate:
	if lady fetish < 2, decide yes;
	decide no.

To update name of (M - trainee-abbi):
	if the current-rank of M is 2:
		now the trainee-name of M is "Abriana";
		if weight gain fetish is 1, now the trainee-print of M is "chubby cowgirl";
		otherwise now the trainee-print of M is "curvy cowgirl";
	otherwise if the current-rank of M is 3:
		now the trainee-name of M is "Abbi";
		if weight gain fetish is 1, now the trainee-print of M is "gluttonous guzzler";
		otherwise now the trainee-print of M is "luscious [if a2m fetish > 0]ass[end if]licker";
	otherwise:
		now the trainee-name of M is "Absinthe";
		if weight gain fetish is 1, now the trainee-print of M is "gluttonous gobbler";
		otherwise now the trainee-print of M is "greedy [if a2m fetish > 0]ass [end if]gobbler".

To say FirstResponse of (M - trainee-abbi):
	say "[speech style of M]'Fuck off.'[roman type][line break]".

To say RepeatResponse of (M - trainee-abbi):
	say "[speech style of M]'What the fuck do you want?'[roman type][line break]".

To say StoryAnswer of (M - trainee-abbi):
	say "[speech style of M]'I made a very bad best, and lost, and my forfeit was enrolling here. To complete my forfeit, I have to make it to the [']pink diamond['] rank, and then I'm allowed to quit. Don't worry, I won't let these fuckers turn me into an airheaded slut like you.'[roman type][line break][big he of M] immediately returns to sucking on [his of M] lollipop.".

To say WhereAnswer of (M - trainee-abbi):
	say "[speech style of M]'[if the rank of the player <= 1]Are you literally braindead?'[otherwise]Someone as stupid as you is going to have to guzzle a LOT of cum to make it anywhere in here.'[end if][roman type][line break]".

trainee-interaction-abbi-lollipop is a trainee-interaction. trainee-interaction-abbi-lollipop is repeatable.

Definition: trainee-interaction-abbi-lollipop is trainee-eligible:
	if diaper quest is 0 and current-monster is trainee-abbi and grossness fetish > 0 and (the current-rank of trainee-abbi is 2 or a2m fetish > 0) and face is not actually occupied, decide yes;
	decide no.

To resolve (SI - trainee-interaction-abbi-lollipop):
	let M be current-monster;
	let trap-lollipop be false;
	if a random number between 1 and 2 < the current-rank of M, now trap-lollipop is true;
	say "[BigNameDesc of M] offers you a lollipop.[line break][speech style of M]'Have a lick!'[roman type][line break]Do you have a lick?";
	if the player is bimbo consenting:
		if trap-lollipop is true:
			say "You smile and take it and give it a good lick... But it tastes kind of funky? When [NameDesc of M] sees you frown, [he of M] starts snickering.";
			if a2m fetish >= 1:
				say "[speech style of M]'Like the taste? I've been keeping that one warm in my asshole for the last four hours! Hahaha!'[roman type][line break]";
				TasteGrossOut 10;
				if the grossness addiction of the player < 17, say "[variable custom style]I should have known better than to trust that bitch![roman type][line break]";
			otherwise:
				say "[speech style of M]'Like the taste? I coated it in my pussy juices, just for you! Hahaha!'[roman type][line break]";
				TasteGrossOut 4;
				if the grossness addiction of the player < 11, say "[variable custom style]I should have known better than to trust that bitch![roman type][line break]";
		otherwise:
			say "You smile and take it and give it a good lick. That tastes lovely and sweet! You feel a bit more at ease.";
			cool down 2000;
			dignify 500;
			HappinessUp M by 1;
	otherwise:
		say "You shake your head and pull away. Who knows what sort of trick this chick wants to pull on you, but you're not falling for it this time.";
		if trap-lollipop is true:
			say "[big he of M] gives a wry smirk.[line break][speech style of M]'It was worth a shot.'[roman type][line break]";
		otherwise:
			say "[big he of M] frowns.[line break][speech style of M]'Goddamn, and there I was trying to be nice for once. You really are a stone cold bitch.'[roman type][line break][BigNameDesc of M] pops the lollipop in [his of M] own mouth, proving that there was nothing ever wrong with it.";
			HappinessDown M by 1;
			say BecomesBoredFlav of M;
			bore M.



Book - Katya

trainee-katya is a nasty trainee.
[Katya is a real bitch from rank 1 - 3 and then suddenly turns into a submissive doll at rank 4.]
[TODO: her ruby promotion scene can involve her breaking from brat into Stepford wife]

Definition: trainee-katya is calculated unfriendly:
	if it is not pacified and the current-rank of it < 4, decide yes;
	decide no.

The text-shortcut of trainee-katya is "trka".

Figure of katherine is the file "NPCs/Facility/Trainee/trainee13a.jpg".
Figure of kat is the file "NPCs/Facility/Trainee/trainee13b.jpg".
Figure of katya is the file "NPCs/Facility/Trainee/trainee13c.jpg".
Figure of cuntwarmer is the file "NPCs/Facility/Trainee/trainee13d.jpg".

To decide which figure-name is the monster-image of (M - trainee-katya):
	if the current-rank of M is 1:
		decide on figure of katherine;
	otherwise if the current-rank of M is 2:
		decide on figure of kat;
	otherwise if the current-rank of M is 3:
		decide on figure of katya;
	otherwise:
		decide on figure of cuntwarmer.

To say MonsterDesc of (M - trainee-katya):
	if lady fetish is 2:
		say "This platinum blonde [man of M] has the perfect sissy body shape[if the current-rank of M > 2 and artificial enhancements fetish is 1] including visibly silicone-enhanced asscheeks and a flawless nose job[end if], and [he of M] seems very comfortable in [his of M] own skin. [if the current-rank of M < 4][big his of M] face doesn't match [his of M] fuckdoll body though - [he of M] looks rather rebellious and level-headed, not the vacant sex-addled look you might expect[otherwise][big his of M] face now displays a much more vacant expression - one of submission and humility[end if]. [if the current-rank of M is 1]A white alchemist blouse clings to [his of M] svelte upper torso and [his of M] pink tartan miniskirt is so short you can see a peek of [his of M] skimpy panties when you're on your knees. [big he of M] stands impeccably balanced on [his of M] tall black stiletto heels as if [he of M] was born in them[otherwise if the current-rank of M is 2][big his of M] long-sleeved white leather jacket is fully unbuttoned, exposing [his of M] tartan patterned bra. [big his of M] tiny white microshorts hug [his of M] figure so tightly they almost look like they're painted on[otherwise if the current-rank of M is 3][big he of M]'s wearing nothing except a pair of purple low-rise silk briefs and matching half-cup bra which leaves most of [his of M] body on display[otherwise][big he of M] is completely naked, aside from a tiny purple chastity cage, and has a completely vacant expression - it looks like [he of M][']s struggling to think clearly[end if].";
	otherwise:
		say "This platinum blonde [man of M] has the perfect bimbo body shape[if artificial enhancements fetish is 1] including visibly silicone-enhanced fuckballs and a flawless nose job[end if], and [he of M] seems very comfortable in [his of M] own skin. [if the current-rank of M < 4][big his of M] face doesn't match [his of M] fuckdoll body though - [he of M] looks rather rebellious and level-headed, not the vacant sex-addled look you might expect[otherwise][big his of M] face now displays a much more vacant expression - one of submission and humility[end if]. [if the current-rank of M is 1]A white alchemist blouse tightly stretches over [his of M] seemingly spherical E-cup tits, and [his of M] pink tartan miniskirt is so short you can see a peek of [his of M] skimpy panties when you're on your knees. [big he of M] stands impeccably balanced on [his of M] tall black stiletto heels as if [he of M] was born in them[otherwise if the current-rank of M is 2][big his of M] white alchemist blouse only has one button done up, exposing huge amounts of cleavage from [his of M] round F-cup fuckballs, and the complete lack of a bra. [big his of M] tiny pink microskirt hugs [his of M] figure so tightly it almost looks like it's painted on, and [he of M] prances perfectly elegantly on [his of M] tall pink platform heels[otherwise if the current-rank of M is 3][big his of M] white tube top only has one button done up, exposing huge amounts of cleavage and underboob from [his of M] giant plastic N-cup fuckballs. [big his of M] tiny pink microskirt is somehow even smaller than before perhaps because of how massive [his of M] beachball buttocks are now. [big he of M] prances perfectly elegantly on [his of M] extra-tall pink platform heels[otherwise][big he of M] is completely naked and has a completely vacant expression - it looks like [he of M][']s struggling to think clearly[end if].".

The max-rank of trainee-katya is 6.

To update name of (M - trainee-katya):
	if the current-rank of M is 1:
		now the trainee-name of M is "Katherine";
		now the trainee-print of M is "defiant diva";
	otherwise if the current-rank of M is 2:
		now the trainee-name of M is "Kat";
		now the trainee-print of M is "smug sister";
	otherwise if the current-rank of M is 3:
		now the trainee-name of M is "Katya";
		now the trainee-print of M is "contemptuous cunt";
	otherwise if the current-rank of M is 4:
		now the trainee-name of M is "Kitty";
		now the trainee-print of M is "domesticated doll";
		now the text-shortcut of M is "stki";
	otherwise:
		now the trainee-name of M is "Cuntwarmer";
		now the trainee-print of M is "brainless bimbo";
		now the text-shortcut of M is "stcu";
	if the current-rank of M < 4, now the text-shortcut of M is "stkt".

[Once katya is "domesticated," she no longer tries to bully you]
To compute trainee perception of (M - trainee-katya):
	if the current-rank of M < 4:
		compute appearance assessment of M;
	otherwise:
		say "[big he of M] makes a face like [he of M][']s not happy with you, but then it seems like [his of M] new training gets the better of [him of M] and [he of M] looks at the ground submissively instead.";

To say FirstResponse of (M - trainee-katya):
	if lady fetish is 2:
		say "[if the current-rank of M < 4][big he of M] looks at you with pure disgust in [his of M] eyes.[line break][speech style of M]'Do I look like I want to talk to you?'[roman type][line break][otherwise if the current-rank of M is 4][big he of M] crosses [his of M] legs and curtseys politely.[line break][speech style of M]'Thank you for gracing me with your presence. Would you like me to present my clitty for inspection?'[roman type][line break]Before you can reply [he of M] has lifted up [his of M] microskirt and is pushing up [his of M] chastity cage with both hands.[line break][speech style of M]'My job is to keep my ass hot and ready at all times. [big please] watch me as I check its lubrication.'[roman type][line break][big he of M] shoves two fingers into [his of M] ass and begins to pump, until it seems like [he of M] might have forgotten you're even there![otherwise][line break][speech style of M]'Ooh, a friend! [big please], do you know where I can find more cock? I feel so empty and sad when there's no cock inside me!'[roman type][line break][end if]";
	otherwise:
		say "[if the current-rank of M < 4][big he of M] looks at you with pure disgust in [his of M] eyes.[line break][speech style of M]'Do I look like I want to talk to you?'[roman type][line break][otherwise if the current-rank of M is 4][big he of M] crosses [his of M] legs and curtseys politely.[line break][speech style of M]'Thank you for gracing me with your presence. Would you like me to present my [cunt] for inspection?'[roman type][line break]Before you can reply [he of M] has lifted [his of M] microskirt and is spreading [his of M] shaved pussy with both hands.[line break][speech style of M]'My job is to keep this hole hot and ready at all times. [big please] watch me as I check its lubrication.'[roman type][line break][big he of M] shoves two fingers inside [himself of M] and begins to pump, until it seems like [he of M] might have forgotten you're even there![otherwise][line break][speech style of M]'Ooh, a friend! [big please], do you know where I can find more cock? I feel so empty and sad when there's no cock inside me!'[roman type][line break][end if]".

To say WhoAnswer of (M - trainee-katya):
	say "[speech style of M]'[if the current-rank of M < 4]You are to address me as ['][trainee-name of M]['], should I allow you to talk to me,[otherwise][trainee-name of M]['] because the only important thing about me is my[end if] [if lady fetish is 2]asshole[otherwise][cunt][end if].'[roman type][line break]".

To say WhereAnswer of (M - trainee-katya):
	if the rank of the player is 1, say "[speech style of M]'[if the current-rank of M < 4]We're in a pathetic excuse for an institution that tries to turn people from dominant divas into worthless whimpering worms. But only if you're so weak that you can't resist their techniques[otherwise]It would take a very weird set of events for me to be a domesticated fuckdoll but for you to be rank one. How very unusual. Aika would be very interested to know how that happened. I, err, I mean, welcome to my favourite place, the [training halls][end if].'[roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]You've got to make it seem like you're falling for their tricks. But if you're not an idiot, you'll only be pretending[otherwise]Submit to the cock. Worship the cock. Serve the cock. And then if you're lucky, the nice people will reward you with more cock[end if].'[roman type][line break]".

To say EscapeAnswer of (M - trainee-katya):
	if the current-rank of M > the rank of the player, say "[speech style of M]'[if the current-rank of M < 4]Why would I discuss such things with a useless twerp like you?'[otherwise]There's loads of great new places where you can serve big yummy [manly-penis]. I can't wait until you can join me!'[end if][roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]I don't know yet, but I plan to be the first sane person here to find out[otherwise]I'm hoping there's even bigger and juicier [manly-penis]s to serve[end if].'[roman type][line break]".

To say AdviceAnswer of (M - trainee-katya):
	if lady fetish is 2, say "[speech style of M]'[if the current-rank of M < 4]Stay out of my way or you'll live to regret it[otherwise if the current-rank of M is 4]Open your eyes and realise that becoming a living breathing human cock sleeve is so much easier and more fulfilling than trying to think for yourself. And then do what I'm doing, and open your ass as well, so the next thick juicy [manly-penis] can impale you more speedily[otherwise]It's important to stay alive, because otherwise your ass won't be warm any more. And then men wouldn't be able to use it whenever they want. And that would be awful! Except it might mean more [manly-penis]s for me, I guess[end if].'[roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]Stay out of my way or you'll live to regret it[otherwise if the current-rank of M is 4]Open your eyes and realise that becoming a living breathing human cock sleeve is so much easier and more fulfilling than trying to think for yourself. And then do what I'm doing, and open your [cunt] as well, so the next thick juicy [manly-penis] can impale you more speedily[otherwise]It's important to stay alive, because otherwise your [cunt] won't be warm any more. And then men wouldn't be able to use it whenever they want. And that would be awful! Except it might mean more [manly-penis]s for me, I guess[end if].'[roman type][line break]".

To say StoryAnswer of (M - trainee-katya):
	if lady fetish is 2, say "[speech style of M]'[if the current-rank of M < 4]My pathetic husband thought that just because I signed that pre-nup I would let him walk all over me. Imagine his disappointment when he found out I'd rather just spend his money and socialise at parties than waste all my days at home cooking and cleaning and sucking his gross dick! Have you ever SEEN a foreskin? It's disgusting. He thinks that by sending me here he can get me to 'learn my place' and become his little sissy wife and the perfect subservient fucktoy for him and his friends. But I'm going to use this as an opportunity to crush his spirit further - by proving I can have the body of a Goddess and the sex life of a horny spinster, but still wear the trousers in my marriage and order him around like the worthless dog he is[otherwise if the current-rank of M is 4]My husband sent me here to learn to how to be a proper fuckdoll for anyone who wishes to use me. I'm so lucky to be blessed with the privilege of serving his majestic cock whenever he desires. I must make sure to finger myself every few minutes to keep my pathetic asshole hot and wet at all times. Who knows when the next person will want to use me? A good cock sleeve must be permanently available for instant use[otherwise]My husband is the best! He must be coming to collect me soon. I can't wait until I can fill myself with his glorious [manly-penis], it's been so long! I'm hoping he'll bring his best friends so they can use me whenever they want, too! Ooh and maybe he'll take me to the factory he owns so I can serve the hundreds of cocks there whenever they go on break! It'll all be okay again once I'm stuffed to the brim with [manly-penis][end if].'[roman type][line break]";
	otherwise say "[speech style of M]'[if the current-rank of M < 4]My pathetic husband thought that just because I'm as hot as a supermodel I would let him walk all over me. Imagine his disappointment when he found out I'd rather just spend his money and socialise at parties than waste all my days at home cooking and cleaning and sucking his tiny dick! He thinks that by sending me here he can get me to 'learn my place' and become his little housewife and the perfect little subservient fucktoy for him and his friends. But I'm going to use this as an opportunity to crush his spirit further - by proving I can have the body of a Goddess and the sex life of a horny spinster, but still wear the trousers in my marriage and order him around like the worthless dog he is[otherwise if the current-rank of M is 4]My husband sent me here to learn to how to be a proper fuckdoll for anyone who wishes to use me. I'm so lucky to be blessed with the privilege of serving his majestic cock whenever he desires. I must make sure to masturbate every few minutes to keep my pathetic [cunt] hot and wet at all times. Who knows when the next person will want to use me? A good cock sleeve must be permanently available for instant use[otherwise]My husband is the best! He must be coming to collect me soon. I can't wait until I can fill myself with his glorious [manly-penis], it's been so long! I'm hoping he'll bring his best friends so they can use me whenever they want, too! Ooh and maybe he'll take me to the factory he owns so I can serve the hundreds of cocks there whenever they go on break! It'll all be okay again once I'm stuffed to the brim with [manly-penis][end if].'[roman type][line break]".

To compute teaching of (M - trainee-katya):
	say "[speech style of M]'[if the current-rank of M < 4]I could, if I chose to associate with people this far beneath me[otherwise if the current-rank of M is 4]No, sorry. You have to learn who's in charge the hard way to truly understand your place[otherwise if lady fetish is 2]If you have a smaller penis than your partner, it's your duty to let him do whatever he wants with you. It's just the way of the world![otherwise]Let me teach you how to be a perfect cock-warmer. Step one: Have a [cunt]. Step two: Keep it full of [manly-penis] as much as possible. That's it, I've taught you all I know[end if].'[roman type][line break]".

To compute friendly drink of (M - trainee-katya):
	say "[speech style of M]'[if the current-rank of M < 4]Do I look like a fucking vending machine to you?'[otherwise]I'm sorry, but the only [tasty] thing I drink nowadays is dick juice. And if you want your own, you'll have to use those lips of yours to earn it yourself!'[end if][roman type][line break]".

Book - Darla

trainee-darla is a nasty trainee.

The text-shortcut of trainee-darla is "trda".

Figure of darla is the file "NPCs/Facility/Trainee/trainee14.jpg".

To decide which figure-name is the monster-image of (M - trainee-darla):
	decide on figure of darla.

To say MonsterDesc of (M - trainee-darla):
	say "This tall babe looks like the pinnacle of traditional western beauty. [big his of M] perfect skinny body is covered only by a lovely pink negligee thin spaghetti straps down the front which leave [if lady fetish is 2][his of M] toned belly on display, and the tiny bulge of [his of M] [DickDesc of M] just shy of popping out[otherwise]all of [his of M] thighs and a lot of cleavage of [his of M] incredible F-cup breasts on show[end if]. [big he of M] is holding up [his of M] thick flowing locks of golden hair and looking at you with meanness in [his of M] eyes.".

The min-rank of trainee-darla is 2.
The max-rank of trainee-darla is 3.
The current-rank of trainee-darla is 2.

To update name of (M - trainee-darla):
	if the current-rank of M is 2:
		now the trainee-name of M is "Darla";
		now the trainee-print of M is "glamorous goddess";
	otherwise:
		now the trainee-name of M is "Darling";
		now the trainee-print of M is "dazzling diva".

To say StoryAnswer of (M - trainee-darla):
	say "[speech style of M]'I've come here to prove once and for all I am the perfect [if lady fetish is 2]woman, even if I have a penis. In fact, it's especially because I have a penis[otherwise][man of M][end if]. I shall pass every test with flying colours and rise in the ranks faster than anyone ever has before[if the rank of the player < 4]. Whereas I imagine someone as pathetic as you will take quite some time - assuming you ever manage to rise the ranks at all[otherwise if the rank of the player > the current-rank of M]. Don't think I'll let you rub your rank in my face for long, you slutty bitch[end if]!'[roman type][line break]".




Book - Hiroko

trainee-hiroko is a nasty trainee.

The text-shortcut of trainee-hiroko is "trhi".

Figure of hiroko is the file "NPCs/Facility/Trainee/trainee25.jpg".

To decide which figure-name is the monster-image of (M - trainee-hiroko):
	decide on figure of hiroko.

To say MonsterDesc of (M - trainee-hiroko):
	say "This beautiful Asian [man of M] is wearing nothing but an outfit made out of thin black straps that cover absolutely nothing[if lady fetish is 2], not even the metal chastity cage between [his of M] legs[otherwise] but [his of M] pussy - [his of M] breasts are on full display[end if]. [big he of M] looks at you with unconcealed disgust.".

The current-rank of trainee-hiroko is 4.
The max-rank of trainee-hiroko is 6.

To update name of (M - trainee-hiroko):
	if the current-rank of M is 4:
		now the trainee-name of M is "Hiroko";
		now the trainee-print of M is "heavenly hostess";
	otherwise:
		now the trainee-name of M is "Hostess-sama";
		now the trainee-print of M is "heavenly harlot".

To say WhoAnswer of (M - trainee-hiroko):
	say "[speech style of M]'I'm the Queen Bee of these parts, bitch. Ugly worms like you aren't going to get very far while there are people like me around.'[roman type][line break]".

To say WhereAnswer of (M - trainee-hiroko):
	say "[speech style of M]'[if the rank of the player <= 1]A place where ugly bitches like you get turned into cute girls like me.'[otherwise]It's simple, you get promoted by being the hottest, most attractive [man of M] here. Which means that you have no chance, haha.'[end if][roman type][line break]".

To say EscapeAnswer of (M - trainee-hiroko):
	say "[speech style of M]'[if the current-rank of M > the rank of the player]There's a photo of you underneath the words [']NEVER GONNA MAKE IT HERE['] that we like to laugh at as we walk past!'[otherwise]I've heard there's a photo of me on the wall that people like to look at for inspiration.'[end if][roman type][line break]".

To say StoryAnswer of (M - trainee-hiroko):
	say "[speech style of M]'There's nobody out there who can look as perfect as me. I've come here to prove that [if the current-rank of M > 3]nobody can worship a [manly-penis] like I can[otherwise]compared to me you are all disgusting sluts with no class[end if].'[roman type][line break]".

To say AdviceAnswer of (M - trainee-hiroko):
	say "[speech style of M]'Give up while you still have a shred of dignity remaining. It won't last long.'[roman type][line break]".

To compute teaching of (M - trainee-hiroko):
	say "[speech style of M]'You can't teach looks. You're always going to be ugly, too bad.'[roman type][line break]".

trainee-interaction-asscumfart is a trainee-interaction.

Definition: trainee-interaction-asscumfart is trainee-eligible:
	if current-monster is trainee-hiroko and the current-rank of current-monster >= 5, decide yes;
	decide no.

To resolve (SI - trainee-interaction-asscumfart):
	let M be current-monster;
	say "[BigNameDesc of M] grunts.[line break][speech style of M]'Oh, fuck...'[roman type][line break]With a nasty rasping sound, [NameDesc of M] farts a huge load of [semen] out of [his of M] asshole and onto the ground.";
	SemenPuddleUp 4;
	say "[BigNameDesc of M] turns red in the face.[line break][speech style of M]'Don't you dare say a word.'[roman type][line break]You just smirk, feeling somewhat better about yourself from having seen someone humiliate themselves in front of you like that.";
	dignify 1000.

Part - TRYHARD TRAINEES



[Book - Rain

trainee-rain is a tryhard trainee.

The text-shortcut of trainee-rain is "trra".

Figure of rain is the file "NPCs/Facility/Trainee/trainee26.png".

To decide which figure-name is the monster-image of (M - trainee-rain):
	decide on figure of rain.

To say MonsterDesc of (M - trainee-rain):
	if lady fetish is 2, say "This very short, petite sissy can't be older than 19. All [he of M]'s wearing is a flimsy sheer gown made of very thin beige fabric. [if the current-rank of M is 3]Thanks to the very translucent nature of the item, [his of M] puffy nipples and lavender-coloured chastity cage are very visible[otherwise][big his of M] puffy nipples are very visible through the fabric and it is purposefully parted above his belly button, leaving [his of M] lavender-coloured chastity cage on full display[end if]. [big his of M] facial expression is one of confidence and determination[if the current-rank of M >= 5]. [big his of M] ass squelches loudly as [he of M] moves, suggesting it might have been very well used, and recently[end if].";
	otherwise say "This very short, petite [man of M] can't be older than 19. All [he of M]'s wearing is a flimsy sheer gown made of very thin beige fabric. [if the current-rank of M is 3]Thanks to the very translucent nature of the item, [his of M] small boobs and cute innie pussy are very visible[otherwise][big his of M] small boobs are very visible through the fabric and it is purposefully parted above [his of M] belly button, to leave [his of M] pussy fully exposed[end if]. [big his of M] facial expression is one of confidence and determination[if the current-rank of M >= 5]. [big his of M] pussy squelches loudly as [he of M] moves, suggesting it might have been very well used, and recently[end if].".

The min-rank of trainee-rain is 3.
The current-rank of trainee-rain is 3.
The max-rank of trainee-rain is 6.

To update name of (M - trainee-rain):
	if the current-rank of M is 3:
		now the trainee-name of M is "Rain";
		now the trainee-print of M is "racy runt";
	otherwise:
		now the trainee-name of M is "Rainbow";
		now the trainee-print of M is "raunchy runt".

To say StoryAnswer of (M - trainee-rain):
	say "[speech style of M]'[if the current-rank of M is 3]I'm learning to be a slut for my boyfriend. I only do it for him, you know? Not because it's my thing myself. But I'm *very* good at doing anything I set my mind to[otherwise]Did you know that until recently I didn't even crave cock? How dumb was that?! Haha! Now I can't get enough[end if]!'[roman type][line break][one of][big his of M] eyes fall to the junction of your own legs, and [he of M] looks thoughtful.[or]You notice [he of M]'s eyeing the area of your own groin with a speculative look.[at random]".

To say WhereAnswer of (M - trainee-rain):
	say "[speech style of M]'You've got to be proud of [if the current-rank of M > 3]how much you love[otherwise]your skill with a[end if] [manly-penis]! And then others will be proud of you!'[roman type][line break]".

To say EscapeAnswer of (M - trainee-rain):
	say "[speech style of M]'More people who you can [if lady fetish is 2]bend over for[otherwise if the current-rank of M > 3]spread your [cunt] for[otherwise]show off your [cunt] to[end if], of course!'[roman type][line break]".

To compute teaching of (M - trainee-rain):
	say "[speech style of M]'[if lady fetish < 2]This is a [cunt]. [end if]This is a butthole. This is a mouth. [if the current-rank of M > 4]They're the only important things about people like me and you[otherwise]It's important that people like you and me get very used to using them for their intended purposes[end if].'[roman type][line break]".]

Book - Ferrari

trainee-ferrari is a tryhard trainee.

The text-shortcut of trainee-ferrari is "trfr".

Figure of ferrari 1 is the file "NPCs/Facility/Trainee/trainee32a.png".
Figure of ferrari 2 is the file "NPCs/Facility/Trainee/trainee32b.png".
Figure of ferrari 3 is the file "NPCs/Facility/Trainee/trainee32c.png".

To decide which figure-name is the monster-image of (M - trainee-ferrari):
	if the current-rank of M <= 3, decide on Figure of ferrari 1;
	if the current-rank of M is 4, decide on Figure of ferrari 2;
	decide on figure of ferrari 3.

To say MonsterDesc of (M - trainee-ferrari):
	say "This short busty [man of M] has [his of M] blonde hair in a ponytail and is wearing a red racer girl outfit. [if lady fetish is 2 and the current-rank of M >= 4][big he of M] is wearing a custom black chastity cage with neon red trim. [end if][if the current-rank of M <= 3][big he of M] is pulling the big zipper at the front of [his of M] outfit up and down, as if unsure what the correct place to leave it is, to create the perfect sexy appeal without having gone too far[otherwise if the current-rank of M is 4][big he of M] has unfastened the big zipper at the front of [his of M] outfit all the way, exposing both [his of M] big tits and genitalia[otherwise][big his of M] face and cleavage are coated in oozing, sticky [semen], and [he of M] looks very pleased and proud of this[end if].".

The min-rank of trainee-ferrari is 3.
The current-rank of trainee-ferrari is 3.
The max-rank of trainee-ferrari is 6.
To update name of (M - trainee-ferrari):
	if the current-rank of M <= 3:
		now the trainee-name of M is "Coyote";
		now the trainee-print of M is "cameltoe queen";
	otherwise if the current-rank of M is 4:
		now the trainee-name of M is "Riley";
		now the trainee-print of M is "racy racer[boy of M]";
	otherwise:
		now the trainee-name of M is "Ferrari";
		now the trainee-print of M is "fetish fuckdoll".

To say StoryAnswer of (M - trainee-ferrari):
	say "[speech style of M]'My kingdom makes the best four-wheeled vehicles on the planet. As a [prince], it's my job to motivate our engineers, our drivers, and of course, our customers. A top class racer[boy of M] can get all the boys['] attention if they know how to act and dress, so that's what I came here to learn[if the current-rank of M >= 4]. But now... I just feel like I can't leave until I know I'm the BEST fetish fucktoy who's ever lived. So just make sure you don't get in my way[end if].'[roman type][line break]".

To say WhereAnswer of (M - trainee-ferrari):
	say "[speech style of M]'Just stop worrying about whether other [sissy-girls] are judging you, and focus on what the BOYS will want you to look like.'[roman type][line break]".

To say EscapeAnswer of (M - trainee-ferrari):
	say "[speech style of M]'[if the current-rank of M < 6]I've heard that once you join the circle of trust, there's some incredible secrets you'll be told[otherwise]It's a disappointment really. Just some dumb prisoner princess who's of no use to me and my quest to be the best fuckdoll there ever was[end if].'[roman type][line break]".

To compute teaching of (M - trainee-ferrari):
	say "[speech style of M]'Wearing thematic, fetishy clothes is way more sexy than just being butt-naked. Although, that's still pretty sexy.'[roman type][line break]".

Facility Stuff ends here.
