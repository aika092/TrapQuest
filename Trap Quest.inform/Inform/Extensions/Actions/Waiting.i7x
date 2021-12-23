Waiting by Actions begins here.

Check waiting when the player is not virtual:
	say "Nothing happens." instead.

Check waiting:
	if the player is flying and last-turn-flight is 1:
		say "Do you want to keep waiting until you deflate? ";
		if the player is in agreement, skywait instead;
	otherwise if the player is pole stuck and the player is not monster fucked and sex fainting is 1:
		say "Do you want to keep waiting until something changes that might make it possible for you to get off the trap? ";
		if the player is in agreement, dildowait instead;
	otherwise if the player is hook stuck and (the player is wrist bound in front or (gape-gloves is worn and gape-gloves is wrist-bound-behind)):
		hookwait instead;
	otherwise if the player is in UrinalBlindfolded:
		say "Do you want to keep waiting until something changes? ";
		if the player is in agreement, urinalwait instead;
	otherwise if the player is in HoleInWall:
		holewait instead;
	otherwise if detention chair is grabbing the player:
		say "Do you want to keep waiting until detention is over? ";
		if the player is in agreement, detentionchairwait instead;
	otherwise if the player is live fucked or there is a thing grabbing the player or there is a thing wrangling a body part:
		let M be a random live thing penetrating a body part;
		if M is minotaur and M is asleep:
			say "You lay there and wait, hoping not to faint before [he of M] wakes up.";
			while M is asleep and delayed fainting is 0:
				allocate 6 seconds;
				compute extra turn;
				if a random number between 1 and 6 is 1 and the player is not in Dungeon12:
					say "[BigNameDesc of M][']s [manly-penis] twitches inside of you.";
					ruin asshole;
			if M is awake:
				say "[BigNameDesc of M] pulls out of you with the loudest, wettest slurping sound as [his of M] still semi-hard schlong, breaking its airtight seal. [big he of M] seems to assume you are unconscious, and wanders off to search for other victims.";
				regionally place M;
				bore M;
				display entire map;
		otherwise:
			try submitting instead.

Carry out waiting:
	allocate 6 seconds;
	if newbie tips is 1 and the player is prone and the player is not in danger, say "[one of][newbie style]Newbie tip: you can use 'rest' to wait until your fatigue has returned to 0. It will automatically stop if a dangerous enemy comes by. You can also use 'long wait' to wait until something changes.[roman type][line break][or][stopping]".

The standard report waiting rule is not listed in the report waiting rulebook.

Report waiting:
	if there is an expectant monster in the location of the player:
		let M be a random expectant intelligent monster in the location of the player;
		if M is nothing, now M is a random expectant monster in the location of the player;
		say CorrectWaitingFlav of M;
		if there is a worn demon codpiece, follow the demon junk punishment rule;
	otherwise if the player is in Iron Maiden:
		say "You stand completely still, helplessly stuck inside [one of]your claustrophobic metal prison[or]the tight sarcophagus[or]your tentacled cage[or]the miniature cell[in random order].";
	otherwise if doll-stuck-num > 0:
		say "You [doll-stuck], [BlushingPrettily].";
	otherwise:
		say "Time passes.".

To say CorrectWaitingFlav of (M - a monster):
	if diaper quest is 1, say "[DQWaitingFlav of M]";
	otherwise say "[WaitingFlav of M]".

To say DQWaitingFlav of (M - a monster):
	if M is intelligent:
		if there is worn perceived messed knickers:
			if the player is able to speak, say "[variable custom style]'[if the bimbo of the player > 14]Aww, is it time to get changed already?'[otherwise]Please just get me out of this thing...'[end if][roman type][line break]";
			otherwise say "[variable custom style][if the bimbo of the player > 14]Aww I guess I should let [him of M] change me.[otherwise]Thank god, at last I'll get out of this mess.[end if][roman type][line break]";
		otherwise:
			say "[if the player is a nympho and the player is able to speak and the player is a bit horny][line break][variable custom style]'[one of]Are you going to help me get my cummies?'[or]Please help me cum!'[or]I've been a good baby, will you please let me cum?'[at random][roman type][line break][otherwise if the diaper addiction of the player > 14 and there is a worn perceived messed knickers and the player is able to speak][line break][variable custom style]'[one of]I hope you're going to change me!'[or]I need a change, are you going to help me?'[at random][roman type][line break][otherwise if the diaper addiction of the player > 14 and the player is diapered and the player is able to speak][line break][variable custom style]'[one of]Do what you want with me.'[or]Go ahead, do what you like.'[at random][roman type][line break][otherwise if the player is able to speak and the diaper addiction of the player > 14][line break][variable custom style]'[one of]I need a new nappy, can you help?'[or]I've been a naughty baby and lost my nappy, can you change me?'[or]If you're going to put a diaper on me, make sure it's a big puffy one!'[at random][roman type][line break][otherwise if the delicateness of the player < 6 and M is female and the player is able to speak and the player is not horny and the player is not a nympho][line break][variable custom style]'Do your worst, [bitch].'[roman type][line break][otherwise if the player is feeling dominant and the player is able to speak and the player is not horny and the player is not a nympho][line break][variable custom style]'[one of]Do your worst.'[or]I'm not scared of you. Let's see what you've got.'[or]Go on, get it over with. I can take it.'[at random][roman type][line break][otherwise if the player is not feeling submissive and the player is able to speak and the player is not a nympho][line break][variable custom style]'[one of]I'm not going to let you make me cry!'[or]Go on then, I can take it. I think.'[or]Please don't be too cruel.'[at random][roman type][line break][otherwise]You wait to see what [NameDesc of M] has in mind.[end if]";
	otherwise:
		say "You stay still and wait to see how [NameDesc of M] will assault you.".

To say WaitingFlav of (M - a monster):
	say WaitingSpeechFlav of M;
	say WaitingActionFlav of M.

To say WaitingSpeechFlav of (M - a monster):
	if M is intelligent and the player is able to speak:
		if M is willing to shag:
			if the player is a nympho:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]I've been waiting for [if M is male human monster]the guy[otherwise]someone[end if] who could take me down. Fine then, claim your reward.'[or]Oh, so this is how it's going to be, is it? You're going to try and domesticate me? Give it your best shot, honey.'[or]Go on, try and break me, and turn me into your obedient fuckdoll! If you can...'[in random order][roman type][line break]";
				otherwise:
					say "[second custom style]'[one of]You choose, hun! I'm down for whatever.'[or]Use any or all of my holes. Ruin me!'[or]Be my guest. I'm your little fucktoy.'[or]Please relieve yourself with my body as you see fit.'[or]I am free for your use, however you want me.'[or]Come on then, climb aboard!'[or]I don't give a damn how you fuck me, just get started already!'[or]Please touch me. Fuck me. Do anything you want, sugar!'[in random order][roman type][line break]";
			otherwise if the player is a pervert:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Well I guess this is your one chance to fuck me, so you'd better make the most of it. I won't be letting it happen again.'[or][if M is male and the girth of M < the size of penis and the player is possessing a penis]Good luck getting me to submit with that puny dick. It's not even as big as mine!'[otherwise if M is male and the girth of M > highest body part sex addiction]Y-you think that just because you've got a big [manly-penis] I'll break? I can take it. I think...'[otherwise]I'm no stranger to sex. It'll take something pretty special to get me to submit to the likes of you!'[end if][or]Think about whose holes it is that you're about to abuse, [stud-worm of M]. Do you really want to make an enemy of me?'[in random order][roman type][line break]";
				otherwise:
					say "[variable custom style]'[one of]This is your idea, so you should choose how you fuck me!'[or]So, how are you going to fuck me?'[or][if M is male]Have you decided where you're going to put your [manly-penis][otherwise]Can you please get it over with already[end if]?'[or]Just screw me however you want, I don't mind, hun.'[or]You're going to fuck me, right? Any hole you want is fine by me...'[in random order][roman type][line break]";
			otherwise:
				if the player is feeling dominant:
					say "[first custom style]'[one of]If you even touch me down there, I'll make sure you live to regret it.'[or]Do I look like the sort of person to forgive someone that takes advantage of my moment of weakness?'[or]Enjoy me while you can, punk, because this is the last time I'm going to let this happen.'[or]Stop looking at me like that, pervert.'[or]I'm NOT going to beg for it, motherfucker. Fuck me while I'm down or don't, it's up to you.'[in random order][roman type][line break]";
				otherwise:
					say "[variable custom style]'[one of]What's going on? Are you really going to fuck me?!'[or]Not again... Please be gentle with me.'[or][if M is male]Oh no... That [manly-penis] is going inside me now, isn't it[otherwise]I think I can guess what happens now[end if]?'[or][if M is male and the player is unconditioned]Please don't do it too hard, I'm not used to this, you know[otherwise if M is male]Okay, I'll behave. My [variable most desirable body part] seems to be craving for your [manly-penis] anyway[otherwise]Please be gentle with me[end if]...'[stopping][roman type][line break]";
		otherwise:
			if the player is a nympho:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]Fine then, do your worst. I bet I can take it, because I'm not a little bitch.'[or]Go on, try and break me! If you can...'[in random order][roman type][line break]";
				otherwise:
					say "[second custom style]'[one of]I'm yours to use how you please.'[or]Please punish this dirty slut! Be as cruel as you can, I deserve it!'[or]I accept whatever awful, degrading punishment you deem appropriate, [stud of M].'[in random order][roman type][line break]";
			otherwise if the player is a pervert:
				if the player is feeling dominant:
					say "[variable custom style]'[one of]This should be funny. Do your worst, [stud-worm of M].'[or]Of course you do realise that anything you do to me I will pay back twice as cruelly later.'[or]Go on, try and break me. But I should warn you, the consequences for failure will include making me a mortal enemy for life.'[or]I'm not scared of you. Let's see what you've got.'[in random order][roman type][line break]";
				otherwise:
					say "[variable custom style]'[one of]I think you should choose how I am punished.'[or]Go on then, I can take it. I think.'[or]Go on, get it over with. I can take it.'[in random order][roman type][line break]";
			otherwise:
				if the player is feeling dominant:
					say "[first custom style]'[one of]You are making a huge mistake.'[or]Goddammit. I saw this going differently in my mind.'[or]This is your last chance to change your mind. You don't have to do this.'[or]If you do what I think you're about to, I'll make sure you regret it.'[or]I'm not going to let you make me cry, you bastard!'[in random order][roman type][line break]";
				otherwise:
					say "[variable custom style]'[one of]Okay, okay, I'll behave!'[or]Fine, you win. So what happens now?'[or]Please don't be too cruel.'[in random order][roman type][line break]";
	otherwise:
		say "[variable custom style][muffled sounds][roman type][line break]".

To say WaitingActionFlav of (M - a monster):
	if the player is feeling dominant:
		say "You [one of]stare daggers[or]glare fiercely[or]frown[as decreasingly likely outcomes] at [NameDesc of M].";
	otherwise if the player is feeling submissive:
		say "You [one of]submissively avoid [NameDesc of M][']s eyes[or]keep your gaze fixed downwards[or]obediently stay perfectly still[or]bow your head in submission[in random order].";
	otherwise:
		say "You stay still and wait to see [if M is willing to shag]how [NameDesc of M] will [one of]play with[or]fuck[or]use[or]dominate[as decreasingly likely outcomes] you[otherwise][one of]what [NameDesc of M] plans to do with you[or]how [NameDesc of M] punishes you[in random order][end if].".

To SkyWait:
	while the player is flying and delayed fainting is 0:
		allocate 6 seconds;
		compute extra turn.

To DildoWait:
	let prev-weight be the weight of the player;
	let prev-dex be the dexterity of the player;
	while the player is pole stuck and the player is not monster fucked and the weight of the player >= prev-weight and the dexterity of the player <= prev-dex and delayed fainting is 0 and sex fainting is 1:
		allocate 6 seconds;
		compute extra turn;
	if the player is pole stuck:
		if the weight of the player < prev-weight, say "You've lost a bit of weight, you should check if that changes anything!";
		if the dexterity of the player > prev-dex, say "You've gained back a bit of dexterity, better check if that changes anything!".

To HookWait:
	let X be a random ass hook penetrating asshole;
	if X is nothing, now X is a random ass hook grabbing the player;
	if woman-player is regional and the woman-status of woman-player < 80:
		allocate 6 seconds;
		now woman-player is interested;
		say "[if woman-player is in the location of the player][BigNameDesc of woman-player] chuckles as [he of woman-player] looks at you.[otherwise]You are only waiting a few seconds when [NameDesc of woman-player] comes walking round the corner! Salvation![end if]";
		now woman-player is in the location of the player;
		if the woman-bimbo of woman-player < 3:
			say "[second custom style]'Oh no, how have you managed to get stuck like that? That looks like it hurts. Don't worry, I'll save you, honey.'[roman type][line break]With impressive dexterity and strength, [he of woman-player] pulls the hook clean from your [asshole]! The contraption shoots up into the hole in the ceiling that the rope was connected to.";
			dislodge X;
			now X is unrevealed;
		otherwise if the woman-bimbo of woman-player < 5:
			say "[big he of woman-player] grins at you.[line break][second custom style]'Uh-oh, you look like you're having a lot of fun there! Do you need some help?'[roman type][line break][big he of woman-player] pulls at the hook, but slips when [he of woman-player] gets it halfway out. It shoots back into your [asshole], causing you to yelp in pain!";
			ruin asshole;
			say "[second custom style]'Oopsie! Let me try that again.'[roman type][line break]This time [he of woman-player] gets it all the way out, but just before you can react and step to the side, [he of woman-player] loses [his of woman-player] grip again! It shoots back in with twice the force of last time!";
			ruin asshole;
			say "[second custom style]'Silly [boy of the player], try to move out the way this time.'[roman type][line break]This time as soon as it's all the way out, you leap away, finally free! The contraption shoots up into the hole in the ceiling that the rope was connected to.";
			dislodge X;
			now X is unrevealed;
		otherwise:
			say "[second custom style]'*giggle*. Look who it is! You look like you're having fun there. I'm jealous! Want me to help you out?'[roman type][line break][big he of woman-player] pulls the hook out a small amount then lets go. The tension of the rope forces it back inside! You scream in surprise.";
			ruin asshole;
			say "[second custom style]'That looks like so much fun!'[roman type][line break][big he of woman-player] pulls it out a bit more but then again lets go. You squeal in discomfort.";
			ruin asshole;
			let N be 4;
			while delayed fainting is 0 and the player is not unable to orgasm so soon and N > 0:
				decrease N by 1;
				say "[BigNameDesc of woman-player] keeps fucking you with the ass hook![line break][second custom style]'[one of]Are you going to cum from your naughty butthole?'[or]Wee! Isn't this fun?'[or]Why are you screaming? Am I not doing it hard enough for you?'[or]This is what you meant by [']Get me off['], right?'[or]You look so sexy right now![or]I'm getting horny just watching you squirm![in random order][roman type][line break]";
				ruin asshole;
				allocate 6 seconds;
				compute extra turn;
			if delayed fainting is 0 and N > 0:
				say "[second custom style]'Now wasn't that a lovely treat! I hope you can do the same for me soon.'[roman type][line break][big he of woman-player] wanders off, ignoring your pleas to help you down.";
			otherwise if delayed fainting is 0:
				say "[second custom style]'I'm getting bored, I'm going to see if I can find something to fuck. See you later babe!'[roman type][line break][big he of woman-player] wanders off, ignoring your pleas to help you down.";
			vanish woman-player;
	otherwise:
		allocate 250 seconds;
		now the soreness of asshole is 10;
		say "So here you are, a human, reduced to a decorative ornament, dangling from your [asshole] by a hook, getting more and more tender and sore by the moment, with no way to release yourself. What an outrageous, and pathetic, situation.[paragraph break]By the time the ass hook trap resets, slackening and allowing you to escape, your [asshole] is on fire and there are tears streaming down your face.";
		PainUp 5;
		now shunk-happened is false;
		compute default reset of X.

Waiting ends here.
