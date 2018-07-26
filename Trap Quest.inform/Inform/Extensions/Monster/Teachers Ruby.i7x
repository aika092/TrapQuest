Teachers Ruby by Monster begins here.

The printed name of ruby-teacher is "[if item described is in the location of the player][TQlink of item described][end if][input-style]ruby teacher [teacher-name of item described][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]".



Part - Brooke

teacher-brooke is a ruby-teacher. teacher-brooke is dq-only.

The text-shortcut of teacher-brooke is "tebr".

Figure of brooke is the file "NPCs/School/Teacher/teacher6.png".

To decide which figure-name is the monster-image of (M - teacher-brooke):
	decide on figure of brooke.

To say MonsterDesc of (M - teacher-brooke):
	say "This saucy young woman is wearing a police hat on top of her medium length wavy brown hair. A policewoman's top adorns her upper half and everything looks normal until you reach the black latex pants clinging to her hips and legs. There are two huge gaps at the buttocks which expose the back of her thighs and a large white adult diaper. The diaper is kept firmly in place by the thin vertical strip of latex that was spared from the removal of the butt region.".

The teacher-name of teacher-brooke is "Brooke".
	
To say WhoAnswer of (M - teacher-brooke):
	say "[speech style of M]'I'd have thought that was pretty obvious. I teach dumb girls like you how to look like an adult even when wearing diapers.'[roman type][line break]".

To say WhereAnswer of (M - teacher-brooke):
	say "[speech style of M]'[if the rank of the player <= 1]Somewhere people can be safe while learning how not to look like an idiot.'[otherwise]All it takes is putting in more dedication than your peers.'[end if][roman type][line break]".
	
To say EscapeAnswer of (M - teacher-brooke):
	say "[speech style of M]'Things that only potty trained girls and boys are allowed to see.'[roman type][line break]".

To say StoryAnswer of (M - a teacher-brooke):
	say "[speech style of M]'While the outside world still considers diaper-based training a [']human rights violation['], we see things a bit differently here.'[roman type][line break]".

To say AdviceAnswer of (M - teacher-brooke):
	say "[speech style of M]'Just DON'T pee your pants! How do you all struggle with something so simple?!'[roman type][line break]".


enema-race-lesson is a lesson. The lesson-teacher of enema-race-lesson is teacher-brooke.

To compute teaching of (L - enema-race-lesson):
	let M be the lesson-teacher of L;
	let S1 be a random student in the location of the player;
	let S2 be a random student in the location of the player;
	while the number of students in the location of the player > 1 and S1 is S2:
		now S2 is a random student in the location of the player;
	say "[speech style of M]'[one of]I know what you're thinking. Why are you wearing a diaper? Aren't diapers for babies? Well yes [if diaper lover >= 3]MESSY[otherwise]USED[end if] diapers are for babies, since only a baby can't control their own bodily functions, but a DRY diaper can be used as a proud sign of your continence. Look at me, living proof! I carry this baby off with style and grace. And today, two of you lot will see who can do the same for longest[or]It's time for another enema race, I think[stopping]. Follow me to the gym, little ones!'[roman type][line break]";
	now seconds is 35;
	repeat with N running through monsters in the location of the player:
		now N is in School23;
		now the player is in School23;
	say "You all obediently follow [NameDesc of M] to the gym. A racetrack lines the outside and a large sign has been put up at the side that reads 'ENEMA RUN 2018'. [one of]Uh-oh[or]Here we go again[stopping].[line break][speech style of M]'Ah the enema run. [one of]The ultimate test in backdoor continence, if you ask me[or]How I do love this part of my job[stopping]. Which two of you are brave enough to take on the challenge? One of you will gain glory and a promotion, while the other will suffer a rather humiliating and *snicker* [if diaper lover >= 3]stinky[otherwise]soggy[end if] defeat.'[roman type][line break]Do you want to volunteer for the race? [yesnolink]";
	if the player consents:
		now S1 is the player;
		say "Gulping, you take a step forward. You see that [NameDesc of S2] has also taken a step forward, therefore adopting the role of your rival for today. You clench your fists. You can do this.";
		let K be a random worn knickers;
		if K is clothing:
			now K is in the location of the player;
		let D be a random plain diaper;
		only destroy D;
		summon D;
	otherwise:
		say "You hesitate and hang back as [NameDesc of S1] and [NameDesc of S2] step forward. You'll have to just watch for today.";
	say "[if S1 is the player]You[otherwise][NameDesc of S1][end if] and [NameDesc of S2] are given very bulky white diapers to wear giving [if S1 is the player]you[otherwise]them[end if] each a bit of a waddle. Not really the ideal type of clothing for sprinting. [if S1 is the player]You[otherwise]They[end if] are both made to bend over and enema kits are used to slowly but surely fill [if S1 is the player]your[otherwise]their[end if] bellies. [if S1 is the player]Your[otherwise]Their[end if] bellies start to visibly expand until [if S1 is the player]you[otherwise]they[end if] both look nine months pregnant.";
	say "[one of]While the enemas are going in, [NameDesc of M] gives a briefing.[line break][speech style of M]'The rules are simple. You both keep running until you BOTH have expelled your enemas. The race ends 15 seconds after that and whoever is in front wins.'[roman type][line break][or][stopping][if S1 is the player]You[otherwise][NameDesc of S1][end if] and [NameDesc of S2] are led to the starting line and then with a bang the race begins.";
	if S1 is the player:
		let D1 be 0; [Player's distance in front of opponent]
		let D2 be 0; [Player's distance last turn]
		let M1 be 0; [Player's need to mess]
		let M2 be 0; [Rival's need to mess]
		say "You could go all out right at the start or conserve some of your energy. Would you like to go all out? [yesnolink]";
		if the player consents:
			say "You break into a full pelt, eager to make it as far as possible before the inevitable cramps start. You make good distance, getting an early lead on [NameDesc of S1], but you quickly burn through a lot of energy.";
			increase the fatigue of the player by 100;
			increase D1 by the dexterity of the player / 2;
		otherwise:
			say "You keep a sensible pace, thinking that this might take a while. No point in getting too tired too quickly.";
		increase the fatigue of the player by 100;
		while M1 >= 0 or M2 >= 0:
			if D1 > 0:
				say "[NameDesc of S2] is behind you so you don't know how far ahead you are. Do you want to take the time to look back? [yesnolink]";
				if the player consents:
					decrease D1 by 1;
					if D1 is 0, say "She's hardly behind you at all. It's actually pretty much neck and neck! Darn!";
					otherwise say "She is currently [if D1 is 1]rather close, less than a meter behind you[otherwise if D1 <= 3]somewhere between 1 and 2 meters behind you[otherwise]about [D1 / 2] meters behind you[end if].";
				otherwise:
					say "You decide it's not worth the loss in speed.";
			otherwise:
				say "[NameDesc of S2] is currently [if D1 is 0]neck and neck with you[otherwise if D1 is -1]rather close, less than a meter ahead of you[otherwise if D1 >= -3]somewhere between 1 and 2 meters ahead of you[otherwise]about [D1 / -2] meters ahead of you[end if].";
				if M1 >= 0 and M2 is -1 and the diaper addiction of the player < 8:
					say "The sight of her [if diaper lover < 3]soggy[otherwise]nasty messy[end if] diaper grosses you out, which affects your morale and speed.";
					decrease D1 by 1;
				otherwise if the player is feeling dominant:
					say "The sight of her in front of you fills you with a powerful desire to defeat her! It helps you pick up the pace.";
					increase D1 by 1;
			if M1 >= 0:
				say "Your massive enema makes your belly [if M1 < 3]gurgle ominously[otherwise]cramp with pain[end if]. Do you want to voluntarily let it go? [yesnolink]";
				if the player consents or M1 >= 6:
					say "[if M1 >= 6]It doesn't matter, it's coming out anyway! It[otherwise]You release your hold on the massive pressure and it[end if] rockets out of your behind, making the most unsavoury noises as it does. ";
					if the diaper addiction of the player > 10:
						say "You're quite used to the feelings of this by now and it so doesn't slow you down too much as you fill your puffy Pampers.";
						decrease D1 by 2;
					otherwise:
						say "The act of [if diaper lover < 3]expelling an enema[otherwise]pooping yourself[end if] is not a normal one to be doing while running, so you find yourself slowed down as you fill your puffy Pampers.";
						decrease D1 by 5;
					now M1 is -1;
					if D1 > 0 and S2 is not tryhard student:
						say "[second custom style]'YUCK!'[roman type][line break]It sounds like [NameDesc of S2] hasn't enjoyed watching that. Hopefully that means she's struggling with the race!";
						increase D1 by 2;
				otherwise if M1 >= 3:
					say "You grit your teeth and hold it in. The cramps get worse and worse!";
					DelicateUp 1;
					increase M1 by 1;
				otherwise:
					say "You keep holding it in for now.";
					increase M1 by 1;
			say "Do you want to sprint as fast as you can? [yesnolink]";
			if the player consents:
				say "You break into a full pelt, [if M1 is -1]well, as much of a full pelt you can muster with a massive full diaper[otherwise]clutching your big belly with both hands as you run[end if]. You gain a lot of ground but you burn through a lot of energy.";
				increase the fatigue of the player by 100;
				increase D1 by the dexterity of the player / 3;
			otherwise:
				say "You keep a sensible pace.";
			increase the fatigue of the player by 100;
			if M2 >= 3:
				if D1 <= 0, say "You watch [NameDesc of S2] hold her belly awkwardly as she staggers and stumbles forward.";
				increase M2 by 1;
				if M2 >= a random number between 3 and 6:
					now M2 is -1;
					if D1 <= 0:
						say "You see her knees almost buckle as her diaper episode starts. She groans with audible discomfort as she fills the seat of her nappy with her shame. Her sprint turns into a jog turns into an awkward walk as she loudly [if diaper lover >= 3]poops her pants[otherwise]expels her enema[end if].";
						if the diaper addiction of the player < 6:
							say "You can't help but find the scene intensely disgusting. This doesn't help you keep running properly!";
							decrease D1 by 3;
						otherwise if the sex addiction of the player > 12:
							say "You can't help but find the scene intensely arousing. This doesn't help you keep running properly!";
							arouse 3000;
							decrease D1 by 2;
					otherwise:
						say "You hear a moan and a butthole trumpeting behind you as [NameDesc of S2] loses control. ";
						if the diaper addiction of the player > 8:
							say "You can't help it, something inside you makes you turn your head to watch as she fills the seat of her nappy with her shame, which slightly slows you down.";
							decrease D1 by 1;
					if S2 is tryhard student:
						if D1 <= 0, say "You see it takes less time for her to recover than you'd hoped. It looks like she's extremely dedicated the the cause!";
						decrease D1 by 2;
					increase D1 by 5;
			otherwise if M2 >= 0:
				if D1 <= 0, say "You watch [NameDesc of S2] charge forward, not looking behind her at all.";
				increase M2 by 1;
			decrease D1 by 10;
			if M2 >= 0, increase D1 by M2 / 2; [rival's fatigue]
			otherwise increase D1 by 1; [rival's mess penalty]
			increase D1 by 10 - (the fatigue of the player / 200);  [player's fatigue]
			if M1 is -1:
				if the diaper addiction of the player < 15:
					say "The heaviness of your diaper leaves you waddling slower than before!";
					decrease D1 by 3 - (the diaper addiction of the player / 5); [player's mess penalty]
				otherwise:
					say "The heaviness of your diaper makes you feel great! It keeps your morale very high.";
			if D1 > 0 and D2 < 0, say "You've overtaken [NameDesc of S2]!";
			if D1 < 0 and D2 > 0, say "[NameDesc of S2] has overtaken you!";
			now D2 is D1;
		say "Now that you've both filled your diapers it's the final stretch! You both sprint at full pelt, putting everything into these last few seconds.";
		increase D1 by the dexterity of the player / 3;
		decrease D1 by 3;
		if D1 >= 0 and D2 <= 0:
			say "You pull ahead of [NameDesc of S2] in the last moment! You've won!";
		otherwise if D1 < 0 and D2 >= 0:
			say "[NameDesc of S2] has pulled ahead in the last moment! You've lost!";
		otherwise if D1 > 0:
			say "You manage to keep your lead on [NameDesc of S2] who is [if D1 <= 3]less than one meter[otherwise]about [D1 / 2] meters[end if] behind you! You've won!";
		otherwise if D1 < 0:
			say "You can't catch up with on [NameDesc of S2] who is [if D1 >= -3]less than one meter[otherwise]about [D1 / -2] meters[end if] ahead of you! You've lost!";
		otherwise:
			say "You're neck and neck but when the whistle goes your nose is just a tiny bit ahead! You've won!";
		if D1 >= 0:
			say "[speech style of M]'What a great race! [NameBimbo], congratulations on your win. You deserve this.'[roman type][line break]";
			now armband is pink diamond;
			say "You watch as the ID card inside your armband transforms!";
			now the armband-title of armband is "Sparkles";
			if diaper lover >= 3, now the armband-print of armband is "speedy stinker";
			otherwise now the armband-print of armband is "soggy sprinter";
			say ClothingDesc of armband;
			say "[speech style of M]'As for you, [student-name of S2], your punishment is that you're not allowed to get a change until you've shown every single other student and teacher your yucky used diaper and explained that it proves you can't be trusted to make it to the grown-up toilet in time. Understood? Good. In that case, class is now dismissed!'[roman type][line break]";
			update students; [an important line which makes boring old students disappear and new cool ones appear]
		otherwise:
			say "[speech style of M]'What a great race! [student-name of S2], congratulations on your win. You deserve this.'[roman type][line break]";
			promote S2;
			say "[speech style of M]'As for you, [NameBimbo], your punishment is that you're going to have to sit in that nasty mess you've made for a while.'[roman type][line break]With a wave of [NameDesc of M][']s hand, your diaper becomes cursed!";
			curse a random worn diaper;
			say "[speech style of M]'Well, that's all she wrote for this enema race! Class is now dismissed!'[roman type][line break]";
		now the fatigue of the player is the buckle threshold of the player;
	otherwise:
		say "The two ladies burst across the track, both sprinting as fast as they can, which is definitely less than normal thanks to their enema-pregnant bellies, thick padding and poorly supported breasts. The waddling women seem evenly matched for pace at first but after one lap of the gym a gap does begin to appear with [NameDesc of S1] out in front. But then calamity strikes as she loses control and her diaper starts to fill. You watch with [horror the diaper addiction of the player] as her belly slowly deflates and a symphony of squelching and spurting sounds fill the hall. She significantly slows down as the avalanche of [if diaper lover >= 3]liquid poop[otherwise]water[end if] exits her butthole - clearly she can't handle the weird sensation. Her diaper bulges beneath her, the back side expanding to double its original size and becoming very unwieldy. By the time she's finished[if diaper lover >= 3] messing herself[end if], she's fallen behind [NameDesc of S2].";
		if image cutscenes is 1 and diaper lover >= 3, display figure of teacher brooke cutscene 1;
		say "Meanwhile [NameDesc of S2] is having problems of her own. She grips her belly in panic as she travels around the track. Her lead on [NameDesc of S1] continues to grow but only up until the point that she loses control herself. If anything the trumpeting coming from her butthole is even louder than [NameDesc of S1][']s had been! She groans with audible discomfort as she fills the seat of her nappy with her shame. Her sprint turns into a jog turns into an awkward walk as she loudly [if diaper lover >= 3]poops her pants[otherwise]expels her enema[end if]. By the time she's finished and has regained her wits [NameDesc of S1] is once again at her heels, and this makes the final seconds of the race equal amounts of pathetic and intense - two tearful women with heavy, bloated diapers trying to waddle their way along the track faster than the other. In the end it seems that [NameDesc of S1] has had more of a chance to get used to the technique of running with a full nappy and this gives her the advantage - when [NameDesc of M] blows the whistle she has managed to grab the lead by less than a meter. They both collapse to the ground, completely exhausted.";
		say "[speech style of M]'What a great race! [student-name of S1], congratulations on your win. You deserve this.'[roman type][line break]";
		promote S1;
		say "[speech style of M]'As for you, [student-name of S2], your punishment is that you're not allowed to get a change until you've shown every single other student and teacher your yucky used diaper and explained that it proves you can't be trusted to make it to the grown-up toilet in time. Understood? Good. In that case, class is now dismissed!'[roman type][line break]";



Part - Rochelle / Roger

teacher-rochelle is a ruby-teacher. teacher-rochelle is tq-only. teacher-rochelle is male.

Definition: teacher-rochelle (called M) is always-feminine:
	if futanari fetish is 0, decide no;
	decide yes.

The text-shortcut of teacher-rochelle is "tero".

Figure of rochelle is the file "NPCs/School/Teacher/teacher7.png".
Figure of roger is the file "NPCs/School/Teacher/teacher8.png".

To decide which figure-name is the monster-image of (M - teacher-rochelle):
	if futanari fetish is 0, decide on figure of roger;
	decide on figure of rochelle.

To decide which number is the girth of (M - teacher-rochelle):
	decide on 7.

To say MonsterDesc of (M - teacher-rochelle):
	if futanari fetish is 0, say "This tall naked man has a muscular chiseled chest and a very decent sized penis swinging between [his of M] legs. [big he of M] looks permanently bored.";
	otherwise say "Even if [his of M] armband didn't make it clear that this dirty blonde woman with her smart black top and tartan scarf is a teacher, there's no avoiding noticing [his of M] huge thick [manly-penis] swinging from [his of M] crotch. Its 9.5 inch length and equally impressive girth must put it in the top 1% of [manly-penis]s.".

The teacher-name of teacher-rochelle is "Rochelle".

To uniquely set up (M - teacher-rochelle):
	if futanari fetish is 0, now the teacher-name of M is "Roger".
	
To say WhoAnswer of (M - teacher-rochelle):
	say "[speech style of M]'I'd have thought that was pretty obvious. I teach dumb girls like you how to properly service a [manly-penis].'[roman type][line break]".

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

Definition: teacher-rochelle (called M) is willing to let go:
	decide yes.

To compute FriendlySexRelease of (M - teacher-rochelle):
	if M is willing to let go:
		say "[BigNameDesc of M] pulls out in a huff.";
		dislodge M;
		compute angry punishment of M;
		satisfy M;
	otherwise:
		say FriendlySexReleaseRefusalFlav of M.

practical-lesson is a lesson. The lesson-teacher of practical-lesson is teacher-rochelle.

Definition: practical-lesson (called L) is appropriate:
	if there is an actually occupied orifice, decide no;
	if there is a worn chastity cage, decide no;
	if the lesson-teacher of L is alive, decide yes;
	decide no.

To compute teaching of (L - practical-lesson):
	say "[BigNameDesc of lesson-teacher of L] gently strokes [his of lesson-teacher of L] [manly-penis], and you all watch as it slowly hardens, growing even larger in size.[line break][speech style of lesson-teacher of L]'[one of]I think that today we should have our very first practical session together[or]It's time for another practical session, I think[stopping]. With, of course, a chance for some of you to get promoted! The rules are simple: each of you need to get in line and one by one you need to pleasure me. The person that makes me cum will get promoted, as will the slut who I think acted the filthiest. But remember, no ass-to-vag, okay? That's unhealthy.'[roman type][line break]And with that [he of lesson-teacher of L] assorts you into a  random order, which ends up having you at the front. You're going to have to go first, it would seem...";
	repeat with W running through worn wrist locking clothing:
		say "With a click of [his of lesson-teacher of L] fingers, your [ShortDesc of W] falls to the ground.";
		now W is in the location of the player;
		now W is unlocked;
	let cum-countdown be a random number between 30 and 40;
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
			say "You can use your [italic type]hands[roman type], [if the largeness of breasts > 5][italic type]breasts[roman type], [end if][if the player is female and ass-count is 0][italic type][vagina][roman type], [end if][italic type][asshole][roman type] or [italic type]mouth[roman type]. ";
			if the player is female and ass-count > 0, say "You aren't allowed to use your [vagina] while there's someone else's ass juices on [NameDesc of lesson-teacher of L][']s [manly-penis], as that would be unhealthy.";
			say "[line break]Use your mouth? ";
			unless pussy-count is 0 and ass-count is 0 and slobber-owner is the player, say "(you'll have to slurp up [if pussy-count > 1][pussy-count] lots of vaginal juices [otherwise if pussy-count >  0]the taste of someone's pussy juice [end if][if pussy-count >  0 and ass-count > 0]and [end if][if ass-count > 1][ass-count] lots of ass juices[otherwise if ass-count >  0]the taste of someone's butt[end if][if ass-count is 0 and pussy-count is 0][NameDesc of slobber-owner][']s slobber[end if]). ";
			say "[yesnolink]";
			if the player consents:
				now the lesson-teacher of L is penetrating face;
				say "You [if the oral sex addiction of the player < 4]hesitantly[otherwise if the oral sex addiction of the player < 8]gracefully[otherwise]greedily[end if] take the thick [manly-penis] into your mouth. ";
				if the player is a deepthroater:
					say "You skilfully push the massive rod straight down your throat, making proud gagging sounds around it as you do.  You move your head up and down, up and down, essentially fucking your own throat as you do. ";
					increase stimulation-level by 1;
				if player-filthiness < ass-count + pussy-count + stimulation-level, now player-filthiness is ass-count + pussy-count + stimulation-level;
				increase stimulation-level by (the oral sex addiction of the player + a random number between 2 and 4) / 3;
				if ass-count > 0:
					say "The taste of [if ass-count > 1][ass-count] loads of sweaty ass juice[otherwise]tangy ass sweat[end if] [if pussy-count > 1]combined with [pussy-count] helpings of slimy cunt butter [otherwise if pussy-count > 0]combined with the unmistakable taste and texture of pussy juice [end if]overwhelms your senses and makes you retch. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of lesson-teacher of L][']s [manly-penis]. Your cheeks burn with shame[if the player is shameless] and arousal[end if].";
				otherwise if pussy-count > 0:
					say "The taste of [if pussy-count > 1][pussy-count] loads of slippery girl-slime[otherwise]the thin coating of pussy juice[end if] fills your mouth. Even worse, you know that everyone is watching you and knows exactly what you're cleaning off of [NameDesc of lesson-teacher of L][']s [manly-penis]. Your cheeks burn with shame[if the player is shameless] and arousal[end if].";
				otherwise if slobber-owner is a student:
					say "You can taste [NameDesc of slobber-owner][']s slobbery saliva all over the shaft. It's a bit humiliating to be slurping someone else's spit off of a [manly-penis]!";
					humiliate 50;
				humiliate (100 * ass-count) + (50 * pussy-count);
				SexAddictUp a random number between 0 and (ass-count + pussy-count) / 2;
				say "By the time [NameDesc of lesson-teacher of L] tells you to stop, the only thing coating [his of lesson-teacher of L] [manly-penis] is your own saliva[unless pussy-count is 0 and ass-count is 0 and slobber-owner is the player]. Everything else is in your stomach and on your tongue[end if].";
				now pussy-count is 0;
				now ass-count is 0;
				now slobber-owner is the player;
			if stimulation-level is 0 and the largeness of breasts > 5:
				say "Use your breasts? [yesnolink]";
				if the player consents:
					now the lesson-teacher of L is penetrating breasts;
					say "You [if the titfuck addiction of the player < 4]hesitantly[otherwise if the titfuck addiction of the player < 8]gingerly[otherwise]happily[end if] take the waiting [manly-penis] in between your [ShortDesc of breasts]. ";
					if the titfuck addiction of the player > a random number between 4 and 7:
						say "Your skill and comfort with masturbating a [manly-penis] with your breasts is made apparent as you use your hands to rub the thick shaft with an enthusiastically fast rhythm and high pressure. ";
						increase stimulation-level by 1;
					otherwise:
						say "You move your body up and down, gently stroking the shaft with your soft flesh. ";
					increase stimulation-level by (the largeness of breasts + a random number between 1 and 4) / 6;
					humiliate 25;
					stimulate breasts;
			if stimulation-level is 0 and the player is female and ass-count is 0:
				say "Use your [vagina]? [yesnolink]";
				if the player consents:
					now the lesson-teacher of L is penetrating vagina;
					say "You [if the vaginal sex addiction of the player < 4]hesitantly[otherwise if the vaginal sex addiction of the player < 8]gingerly[otherwise]excitedly[end if] clamber on top of [NameDesc of lesson-teacher of L], before spreading yourself with two fingers and guiding [his of lesson-teacher of L] [manly-penis] into your [vagina]. ";
					increase stimulation-level by 5 - ((the openness of vagina + a random number between 1 and 4) / 3);
					if the vaginal sex addiction of the player > a random number between 4 and 7:
						say "You ride [him of lesson-teacher of L] for all you're worth, thrusting your hips back and forth as fast as you can while gripping [his of lesson-teacher of L] shoulders tightly.";
						increase stimulation-level by 2;
						ruin vagina times 2;
					otherwise:
						say "You ride [him of lesson-teacher of L] gently and passionately, softly kneading [his of lesson-teacher of L] chest with one hand as you do.";
						ruin vagina;
					humiliate 25;
					if pussy-count > 0, say "Your pussy juices mix in with the [if pussy-count is 1]stuff that's already there[otherwise]others[end if], thickening the film of girl-slime around [NameDesc of lesson-teacher of L][']s [manly-penis]";
					otherwise say "Your [vagina] slowly coats [NameDesc of lesson-teacher of L][']s [manly-penis] in its juices.";
					increase pussy-count by 1;
			if stimulation-level is 0:
				say "Use your [asshole]? [yesnolink]";
				if the player consents:
					now the lesson-teacher of L is penetrating asshole;
					say "You [if the anal sex addiction of the player < 4]hesitantly[otherwise if the anal sex addiction of the player < 8]gingerly[otherwise]excitedly[end if] clamber on top of [NameDesc of lesson-teacher of L], before spreading yourself with two fingers and guiding [his of lesson-teacher of L] [manly-penis] into your [asshole]. ";
					increase stimulation-level by 5 - ((the openness of asshole + a random number between 1 and 4) / 3);
					if the anal sex addiction of the player > a random number between 4 and 7:
						say "You ride [him of lesson-teacher of L] for all you're worth, bouncing on top of [him of lesson-teacher of L] wildly, the tip of [his of lesson-teacher of L] [manly-penis] repeatedly bashing hard against the deepest recesses of your [asshole].";
						increase stimulation-level by 2;
						ruin asshole times 2;
					otherwise:
						say "You ride [him of lesson-teacher of L] delicately, using your hands to balance yourself around [his of lesson-teacher of L] loins and avoid accidentally falling and putting your full weight on [his of lesson-teacher of L] [manly-penis] and your [asshole].";
						ruin asshole;
					humiliate 25;
					if ass-count > 0, say "Your ass sweat mixes in with the [if ass-count > 0 and pussy-count > 0]ass and pussy juice that's already there[otherwise if pussy-count > 1]recent helpings of pussy juice[otherwise if pussy-count > 0]pussy juice[otherwise if ass-count > 1][ass-count] traces already there[otherwise]small amounts that are already there from someone else[end if], to create an even nastier concoction for whoever next puts this [manly-penis] in their mouth.";
					otherwise say "Whoever next puts this [manly-penis] in their mouth is going to be able to taste your ass on it.";
					increase ass-count by 1;
			if stimulation-level is 0:
				say "Use your hands? [yesnolink]";
				if the player consents:
					increase stimulation-level by 1;
					if a random number between 7 and 13 < the sex addiction of the player:
						say "You stroke [NameDesc of lesson-teacher of L][']s [manly-penis] and head with both your hands, filling the room with a steady 'schlick schlick schlick' sound.";
						if the player is a pervert, increase stimulation-level by 1;
					otherwise:
						say "You slowly stroke [NameDesc of lesson-teacher of L][']s shaft with one hand.";
			if stimulation-level is 0, say "You have to do something!";
		decrease cum-countdown by stimulation-level;
		if cum-countdown <= 0:
			say "[speech style of lesson-teacher of L]'Yes, yes, YES!!!'[roman type][line break][BigNameDesc of lesson-teacher of L] orgasms and [his of lesson-teacher of L] [manly-penis] erupts!";
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
				say "[speech style of lesson-teacher of L]'That's right, swallow it all you [one of]filthy pig[or]nasty cumdump[or]human vaccum cleaner[in random order]!'[roman type][line break][BigNameDesc of lesson-teacher of L] passionately degrades you between moans of approval.[line break][speech style of lesson-teacher of L]'Okay STOP! Next in line, get going, quickly!'[roman type][line break]";
			otherwise:
				say PracticalAssessment of the lesson-teacher of L to stimulation-level with cum-countdown;
		dislodge the lesson-teacher of L;
		repeat with M running through students in the location of the player:
			if cum-countdown > 0:
				now stimulation-level is 0;
				if a random number between 1 and (10 + ((ass-count + ass-count + pussy-count) * 2) - the practical dirtiness of M) is 1 and M is promotable:
					say "[BigNameDesc of M] [one of]moves [his of M] face up to[or]approaches[in random order] [NameDesc of lesson-teacher of L][']s crotch and takes [his of lesson-teacher of L] [manly-penis] into [his of M] mouth. [big he of M] [one of]audibly gags[or]chokes on the length[or]makes rather lewd glugging sounds[in random order] as [he of M] tries to get as much as possible of it into [his of M] [one of]tiny mouth[or]delicate throat[or]gullet[in random order], and [one of]slurp up[or]suck away[in random order] all the [if ass-count + pussy-count > 0]disgusting [end if]juices. After a short while of moving [his of M] head up an down, you hear [him of M] gulp as [he of M] swallows whatever is sloshing around in [his of M] mouth. [if ass-count + pussy-count > 0]After [he of M] pulls away, you see [him of M] wipe [his of M] tongue with disgust. [end if][big his of M] saliva still coats [NameDesc of lesson-teacher of L][']s [manly-penis].";
					if ass-count + pussy-count > student-filthiness:
						now filthiest-student is M;
						now student-filthiness is ass-count + ass-count + pussy-count;
					now ass-count is 0;
					now pussy-count is 0;
					now slobber-owner is M;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if ass-count is 0 and M is female and a random number between 1 and (20 - the practical dirtiness of M) <= 10:
					say "[BigNameDesc of M] crouches above [NameDesc of lesson-teacher of L] before carefully lowering [his of M] spread pussy onto [NameDesc of lesson-teacher of L][']s [one of]waiting shaft[or]rock hard rod[or]thick [manly-penis][in random order]. [big he of M] [one of]audibly moans as [he of M] rocks back and forth[or]goes a bit red in the face as [he of M] repeatedly rides up and down the whole length[or]hardly moves at all before [he of M] mewls in a high pitched voice and loses control of [his of M] shuddering body as [he of M] cums hard. [big his of M] leaves her panting and collapsed on top of [NameDesc of lesson-teacher of L], that huge [manly-penis] still fully embedded inside of [him of M][or]tries to clench [his of M] vaginal muscles as [he of M] rides up and down, to make it tighter for [NameDesc of lesson-teacher of L][or]silently thrusts her hips back and forth, taking on the role of the obedient cowgirl[or]grinds down onto the [manly-penis] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] teacher[or]quickly gets to bouncing up and down with a steady, smooth rhythm[in random order].";
					increase pussy-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise if a random number between 1 and (20 - the practical dirtiness of M) <= 10:
					say "[BigNameDesc of M] crouches above [NameDesc of lesson-teacher of L] before [one of]carefully lowering[or]roughly impaling[or]slowly pushing[in random order] [his of M] [one of]tight little asshole[or]slightly open asshole[or]butthole[in random order] onto [NameDesc of lesson-teacher of L][']s [one of]massive beast[or]long hard shaft[or]waiting dong[in random order]. [big he of M] [one of]audibly whimpsers as [he of M] moves [his of M] hips back and forth[or]holds [his of M] breath as [he of M] uses [his of M] thigh muscles to ride up and down the whole length[or]grinds up and down, forward and back for several seconds before suddenly wailing as a sudden anal orgasm wracks [his of M] entire body, causing [him of M] to collapse onto of [NameDesc of lesson-teacher of L], the still fully-hard [manly-penis] managing to slither its way out of [his of M] butthole with a loud slurp[or]tries to use [his of M] butt muscles to massage [NameDesc of lesson-teacher of L][']s [manly-penis] in an almost sensual display[or]somehow makes very loud and wet slapping noises as [his of M] butt rapdily rises and falls on top of [NameDesc of lesson-teacher of L][or]grinds down onto the [manly-penis] as hard as [he of M] can, clearly trying as hard as possible to pleasure [his of M] teacher with [his of M] tight butthole[or]fucks it at a good steady pace, using [his of M] arms and hands to help balance [himself of M] as [he of M] moves up and down[in random order].";
					increase ass-count by 1;
					increase stimulation-level by a random number between 1 and ((the practical dirtiness of M + a random number between 0 and 1) / 2);
				otherwise:
					say "[BigNameDesc of M] takes [NameDesc of lesson-teacher of L][']s [manly-penis] in [if the practical dirtiness of M > 2]both of [his of M] hands[otherwise]one hand[end if] and [one of]gives it long, slow strokes[or]short fast strokes[or]skilful twisting strokes[or]delicate strokes with two fingers, focusing on the head[or]fast tight-gripped pumps[in random order].";
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
		
					

To say PracticalAssessment of (M - a teacher) to (N - a number) with (C - a number):
	if C <= a random number between 8 and 16:
		say "[speech style of M]'[one of]Oh damn I'm getting close! Fuck! [or]Hnnnng! Not long now... [or]Oh god yes I can feel it coming soon... [or]Shit, I can't hold back too much longer. [or]Shit, if you do that too much I'm gonna blow! [in random order]Okay STOP! [one of]Next! Come on, hurry up!'[or]Why hasn't the next person started already!'[or]Come on, where's the next whore?!'[in random order][roman type][line break][BigNameDesc of M] [one of]breathes heavily[or]is panting as [he of M] speaks[or]demands aggressively[or]slaps [his of M] hips with impatience[or]growls with rising pleasure[in random order].";
	otherwise if C <= a random number between 15 and 25:
		if N > a random number between 1 and 3, say "[speech style of M]'[one of]Yes, right there, that's the spot! [or]Oh yes keep doing exactly that! [or]Fuck, that feels incredible! Good job, slut! [or]Yes you beautiful whore, that's what I'm talking about! [or]Oh god yes, just like that! [in random order]";
		otherwise say "[speech style of M]'[one of]Good enough. [or]Haha, is that the best you can do? [or]Not bad, slut! [or]Could be worse, that's for sure. [in random order]";
		say "Okay STOP! [one of]Let's keep this line moving, people!'[or]Next slut, get going already!'[or]Next in line, now's your time.'[or]Let's keep this gravy train going.'[or]Next!'[or]Next please!'[or]Time for a different whore!'[in random order][roman type][line break][BigNameDesc of M] [one of]grins happily[or]is clearly enjoying [himself of M][or]continues to bark orders[or]growls with pleasure[in random order].";
	otherwise:
		if N > a random number between 1 and 3, say "[speech style of M]'[one of]Ooh, good job! [or]I like what you've got! [or]What a good slut! [or]Just like a proper whore. Well done! [or]Good effort! [or]Impressive technique! [or]Excellent display. [in random order]";
		otherwise say "[speech style of M]'[one of]Booring. [or]Bah, try harder next time. [or]Too delicate. Put more effort in next time. [or]Is that really the best you can do? [or]You're not going to be the one to make me cum like that. [in random order]";
		say "Okay STOP! [one of]Your time's up. Now head to the back of the line, and the next girl at the front of the queue, you're up next.'[or]Head to the back, you'll get another turn soon.'[or]That's it, keep the line moving. You're getting the idea.'[or]Next one, let's go.'[or]Next please!'[or]Next [slut]!'[stopping][roman type][line break][BigNameDesc of M] [one of]barks [his of M] commands with controlled authority[or]lies back and waits patiently[or]stays horizontal as [he of M] tells everyone what to do[or]snaps [his of M] fingers as [he of M] finishes speaking[or]licks [his of M] lips and smiles[or]remains rock hard as [he of M] waits[in random order].";

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

Teachers Ruby ends here.
