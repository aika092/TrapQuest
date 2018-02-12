Waiting by Actions begins here.

Check waiting when the player is not virtual:
	say "Nothing happens." instead.

[!<CheckWaiting>+

REQUIRES COMMENTING

+!]
Check waiting:
	if the player is flying and last-turn-flight is 1:
		say "Do you want to keep waiting until you deflate? [yesnolink] ";
		if the player consents, skywait instead;
	otherwise if the player is pole stuck and the player is not monster fucked and sex fainting is 1:
		say "Do you want to keep waiting until something changes that might make it possible for you to get off the trap? [yesnolink] ";
		if the player consents, dildowait instead;
	otherwise if the player is hook stuck and the player is not monster fucked and sex fainting is 1:
		say "Do you want to keep waiting until something changes that might make it possible for you to pull out the hook? [yesnolink] ";
		if the player consents, hookwait instead;
	otherwise if the player is in Blindfolded:
		say "Do you want to keep waiting until something changes? [yesnolink] ";
		if the player consents, urinalwait instead;
	otherwise if the player is in HoleInWall:
		say "Do you want to keep waiting until something changes? [yesnolink] ";
		if the player consents, holewait instead;
	otherwise if detention chair is grabbing the player:
		say "Do you want to keep waiting until detention is over? [yesnolink] ";
		if the player consents, detentionchairwait instead;
	otherwise if the player is live fucked or there is a thing grabbing the player:
		let M be a random live thing penetrating a body part;
		if M is minotaur and the sleep of M > 0:
			say "You lay there and wait, hoping not to faint before he wakes up.";
			while the sleep of M > 0 and delayed fainting is 0:
				now seconds is 6;
				compute extra turn;
				if a random number between 1 and 6 is 1 and the player is not in Dungeon12:
					say "The [M]'s [manly-penis] twitches inside of you.";
					ruin asshole;
			if the sleep of M is 0:
				say "The [M] pulls out of you, and assuming that you are unconscious, and wanders off to search for other victims.";
				bore M for 50 seconds;
				regionally place M;
		otherwise:
			try submitting instead.

[!<CarryOutWaiting>+

REQUIRES COMMENTING

+!]
Carry out waiting:
	now seconds is 6;
	if newbie tips is 1 and the player is prone and the player is not in danger, say "[one of][item style]Newbie tip: you can use 'rest' to wait until your fatigue has returned to 0. It will automatically stop if a dangerous enemy comes by.[roman type][line break][or][stopping]".

The standard report waiting rule is not listed in the report waiting rulebook.

[!<ReportWaiting>+

REQUIRES COMMENTING

+!]
Report waiting:
	if there is an expectant monster in the location of the player:
		let M be a random expectant intelligent monster in the location of the player;
		if M is nothing, now M is a random expectant monster in the location of the player;
		say "[correctwaitingflav of M]";
		if there is a worn demon codpiece and the player is a may 2017 top donator, follow the demon junk punishment rule;
	otherwise if the player is in Iron Maiden:
		say "You stand completely still, helplessly stuck inside [one of]your claustrophobic metal prison[or]the tight sarcophagus[or]your tentacled cage[or]the miniature cell[in random order].";
	otherwise:
		say "Time passes.".

[!<SayCorrectWaitingFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say correctwaitingflav of (M - a monster):
	if diaper quest is 1, say "[DQwaitingflav of M]";
	otherwise say "[waitingflav of M]".

[!<SayDQWaitingFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say DQwaitingflav of (M - a monster):
	if M is intelligent:
		if there is worn messed knickers:
			if the player is able to speak, say "[variable custom style]'[if the bimbo of the player > 14]Aww, is it time to get changed already?'[otherwise]Please just get me out of this thing...'[end if][roman type][line break]";
			otherwise say "[variable custom style][if the bimbo of the player > 14]Aww I guess I should let [him of M] change me.[otherwise]Thank god, at last I'll get out of this mess.[end if][roman type][line break]";
		otherwise:
			say "[if the sex addiction of the player > 14 and the player is able to speak and the player is a bit horny][line break][variable custom style]'[one of]Are you going to help me get my cummies?'[or]Please help me cum!'[or]I've been a good baby, will you please let me cum?'[at random][roman type][line break][otherwise if the diaper addiction of the player > 14 and there is a worn messed knickers and the player is able to speak][line break][variable custom style]'[one of]I hope you're going to change me!'[or]I need a change, are you going to help me?'[at random][roman type][line break][otherwise if the diaper addiction of the player > 14 and the player is diapered and the player is able to speak][line break][variable custom style]'[one of]Do what you want with me.'[or]Go ahead, do what you like.'[at random][roman type][line break][otherwise if the player is able to speak and the diaper addiction of the player > 14][line break][variable custom style]'[one of]I need a new nappy, can you help?'[or]I've been a naughty baby and lost my nappy, can you change me?'[or]If you're going to put a diaper on me, make sure it's a big puffy one!'[at random][roman type][line break][otherwise if the delicateness of the player < 6 and M is female and the player is able to speak and the player is not horny and the sex addiction of the player < 12][line break][variable custom style]'Do your worst, [bitch].'[roman type][line break][otherwise if the delicateness of the player < 6 and the player is able to speak and the player is not horny and the sex addiction of the player < 12][line break][variable custom style]'[one of]Do your worst.'[or]I'm not scared of you. Let's see what you've got.'[or]Go on, get it over with. I can take it.'[at random][roman type][line break][otherwise if the delicateness of the player < 12 and the player is able to speak and the sex addiction of the player < 12][line break][variable custom style]'[one of]I'm not going to let you make me cry!'[or]Go on then, I can take it. I think.'[or]Please don't be too cruel.'[at random][roman type][line break][otherwise]You wait to see what the [M] has in mind.[end if]";
	otherwise:
		say "You stay still and wait to see how the [M] will assault you.".

[!<SayWaitingFlavOfMonster>+

REQUIRES COMMENTING

+!]
To say waitingflav of (M - a monster):
	if M is intelligent, say "[if (the sex addiction of the player > 15 or the bimbo of the player > 15) and the player is able to speak and M is willing to shag][line break][variable custom style]'[one of]You choose, hun!  I'm down for whatever.'[or]Use any or all of my holes. Ruin me!'[or]Be my guest. I'm your little fucktoy.'[or]I'm yours to use how you please.'[or]Please relieve yourself with my body as you see fit.'[or]I am free for your use, however you want me.'[or]Come on then, climb aboard!'[or]I don't give a damn how you fuck me, just get started already!'[or]Please touch me. Fuck me. Do anything you want, sugar!'[at random][roman type][line break][otherwise if (the sex addiction of the player > 15 or the bimbo of the player > 15) and the player is able to speak][line break][variable custom style]'[one of]Do what you want with me.'[or]Go ahead, do what you like, honey.'[at random][roman type][line break][otherwise if the player is able to speak and the player is very horny and M is willing to shag][line break][variable custom style]'[one of]Please fuck me, I need to cum.'[or]Do me wherever, I'm too horny to care...'[or]Go on, get it over with.'[at random][roman type][line break][otherwise if the delicateness of the player < 6 and M is female and the player is able to speak and the player is not horny and the sex addiction of the player < 12][line break][variable custom style]'Do your worst, [bitch].'[roman type][line break][otherwise if the delicateness of the player < 6 and M is male and the player is able to speak and the player is not horny and the sex addiction of the player < 12][line break][variable custom style]'[one of]Do your worst.'[or]I'm not scared of you. Let's see what you've got.'[or]Go on, get it over with. I can take it.'[at random][roman type][line break][otherwise if the delicateness of the player < 12 and the player is able to speak and the sex addiction of the player < 12][line break][variable custom style]'[one of]I'm not going to let you make me cry!'[or]Go on then, I can take it. I think.'[or]Please don't be too cruel.'[at random][roman type][line break][otherwise]You wait to see what the [M] has in mind.[end if]";
	otherwise say "You stay still and wait to see how the [M] will assault you.".

[!<SkyWait>+

REQUIRES COMMENTING

+!]
To SkyWait:
	while the player is flying and delayed fainting is 0:
		now seconds is 6;
		compute extra turn.

[!<DildoWait>+

REQUIRES COMMENTING

+!]
To DildoWait:
	let prev-weight be the weight of the player;
	let prev-dex be the dexterity of the player;
	while the player is pole stuck and the player is not monster fucked and the weight of the player >= prev-weight and the dexterity of the player <= prev-dex and delayed fainting is 0 and sex fainting is 1:
		now seconds is 6;
		compute extra turn;
	if the player is pole stuck:
		if the weight of the player < prev-weight, say "You've lost a bit of weight, you should check if that changes anything!";
		if the dexterity of the player > prev-dex, say "You've gained back a bit of dexterity, better check if that changes anything!".

[!<HookWait>+

REQUIRES COMMENTING

+!]
To HookWait:
	let W be a random woman;
	if W is vaginal and the variety of W is 1:
		now seconds is 6;
		now W is interested;
		now W is in the location of the player;
		say "You are only waiting a few seconds when [OldWomanName] comes walking round the corner!  Salvation!";
		if WomanBimbo < 3:
			say "[second custom style]'Oh no, how have you managed to get stuck like that?  That looks like it hurts. Don't worry, I'll save you, honey.'[roman type][line break]With impressive dexterity and strength, she pulls the hook clean from your [asshole]!  The contraption shoots up into the hole in the ceiling that the rope was connected to.";
			let X be a random ass hook penetrating asshole;
			now X is not penetrating asshole;
			now X is unrevealed;
		otherwise if WomanBimbo < 5:
			say "She grins at you. [line break][second custom style]'Uh-oh, you look like you're having a lot of fun there!  Do you need some help?'[roman type][line break]She pulls at the hook, but slips when she gets it halfway out. It shoots back into your [asshole], causing you to yelp in pain!";
			ruin asshole;
			say "[second custom style]'Oopsie! Let me try that again.'[roman type][line break]This time she gets it all the way out, but just before you can react and step to the side, she loses her grip again!  It shoots back in with twice the force of last time!";
			ruin asshole;
			say "[second custom style]'Silly girl, try to move out the way this time.'[roman type][line break]This time as soon as it's all the way out, you leap away, finally free!  The contraption shoots up into the hole in the ceiling that the rope was connected to.";
			let X be a random ass hook penetrating asshole;
			now X is not penetrating asshole;
			now X is unrevealed;
		otherwise:
			say "[second custom style]'*Giggle*. Look who it is!  You look like you're having fun there. I'm jealous!  Want me to help you out?'[roman type][line break]She pulls the hook out a small amount then lets go. The tension of the rope forces it back inside!  You scream in surprise.";
			ruin asshole;
			say "[second custom style]'That looks like so much fun!'[roman type][line break]She pulls it out a bit more but then again lets go. You squeal in discomfort.";
			ruin asshole;
			let N be 4;
			while delayed fainting is 0 and the player is not unable to orgasm so soon and N > 0:
				decrease N by 1;
				say "[W] keeps fucking you with the ass hook!  [line break][second custom style]'[one of]Are you going to cum from your naughty butthole?'[or]Wee! Isn't this fun?'[or]Why are you screaming?   Am I not doing it hard enough for you?'[or]This is what you meant by [']Get me off['], right?'[or]You look so sexy right now![or]I'm getting horny just watching you squirm![in random order][roman type][line break]";
				ruin asshole;
				now seconds is 6;
				compute extra turn;
			if delayed fainting is 0 and N > 0:
				say "[second custom style]'Now wasn't that a lovely treat!  I hope you can do the same for me soon.'[roman type][line break]She wanders off, ignoring your pleas to help you down.";
			otherwise if delayed fainting is 0:
				say "[second custom style]'I'm getting bored, I'm going to see if I can find something to fuck. See you later babe!'[roman type][line break]She wanders off, ignoring your pleas to help you down.";
			distract W;
			while W is nearby or W is in the location of the player or the location of W is an unplaced room:
				now W is in a random sandy room;
	otherwise:
		let prev-dex be the dexterity of the player;
		while the player is hook stuck and the player is not monster fucked and the dexterity of the player <= prev-dex and delayed fainting is 0 and sex fainting is 1:
			now seconds is 6;
			compute extra turn;
		if the player is hook stuck:
			if the dexterity of the player > prev-dex, say "You've gained back a bit of dexterity, better check if that changes anything!".



Waiting ends here.

