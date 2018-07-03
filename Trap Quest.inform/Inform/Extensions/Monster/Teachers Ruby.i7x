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
	say "[speech style of M]'[if the rank of the player is 1]Somewhere people can be safe while learning how not to look like an idiot.'[otherwise]All it takes is putting in more dedication than your peers.'[end if][roman type][line break]".
	
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
		


Teachers Ruby ends here.
