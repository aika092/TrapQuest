PC Monitor by Objects begins here.


PC Monitor is a thing. PC Monitor is in Hotel33. PC Monitor is not portable. The printed name of PC Monitor is "[TQlink of item described]PC monitor[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of PC Monitor is "pcm". PC Monitor has a number called currentlyOn.

To say ShortDesc of (C - PC Monitor):
	say "monitor".
To say MediumDesc of (C - PC Monitor):
	say "PC monitor".

Definition: PC Monitor is immune to change: decide yes.

Figure of PC Monitor is the file "Env/Hotel/monitor1.jpg".
To decide which figure-name is the examine-image of (C - PC Monitor):
	decide on figure of PC monitor.

To say ExamineDesc of (C - PC Monitor):
	say "Your PC monitor sits on its desk at the end of your room. [if the currentlyOn of C is 1]You are currently in a video call with [FriendName], your [FriendRole][otherwise]It doesn't seem to be able to be turned on[end if].".

Definition: PC Monitor is broadcasting if the currentlyOn of PC Monitor is 1.

A later time based rule:
	if the currentlyOn of PC Monitor < 2 and PC Monitor is in the location of the player and the number of patrons in the location of the player > 0:
		if the currentlyOn of PC Monitor is 1:
			say "[FriendName] continues to watch [one of]the action[or]you[purely at random][one of], mouth wide open[or][or], scowling furiously[or][stopping].";
			if there is a monster penetrating a body part:
				say "[first custom style]'[one of]I hope you're ashamed of yourself.'[or]Do you even know this guy's name?!'[or]I can't believe I'm watching this. Disgusting!'[or]You're enjoying this, aren't you?'[or]How long is this going to take?!'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]It's not what it looks like!'[or]Please look away!'[or]I don't normally do this!'[or]This isn't real, I'm telling you!'[in random order][end if][roman type][line break][strongHumiliateReflect]";
			otherwise if the player is prone:
				let T be NameBimbo;
				say "[first custom style]'[one of]You're not about to do what I think you are, are you, [OriginalNameBimbo]?'[if T is not OriginalNameBimbo][roman type][line break][BigNameDesc of a random patron in the location of the player] laughs.[line break][speech style of a random patron]'That's not [his of the player] name any more, you have to call [him of the player] [NameBimbo] now!'[line break][end if][or]So should I call you [NameBimbo], or just [']Slut[']?'[or]Stand up and fight back, you pathetic whore!'[stopping][roman type][line break][moderateHumiliateReflect]";
		otherwise if the number of patrons in the location of the player > 0:
			now the currentlyOn of PC Monitor is 1;
			say "[bold type]Suddenly, you hear the sound of your computer making a video call. [roman type]You look up with a start and see that yes indeed, your PC monitor is now wide awake, and with that green calling symbol over a blue background. Moments later, the video call is answered, and the face of your [FriendRole] [FriendName] is staring back at you. She frowns in confusion, slowly turning to disbelief.[line break][first custom style]'[OriginalNameBimbo]? Is that really you?! What are you doing? Did you call me by accident or something?!'[roman type][line break]You instinctively shake your head 'No' with wide eyes, but then change your mind and begin nodding your head 'Yes'.";
			say "[variable custom style]No... Someone from the real world...! This is so humiliating! My reputation could be ruined if this got out![roman type][line break]";
			if the player is able to speak:
				let M be a random patron in the location of the player;
				say "[variable custom style]'No, you see, well this is a virtual reality game made by Nintendolls, and I think it must be glitching, or this is a very horrible prank, because I didn't try to phone you, that's not even my real computer...'[roman type][line break]Your attempt to explain the insane situation is hindered by a chuckle from [if the number of patrons in the location of the player > 1]one of the half-naked [men of M][otherwise]the half-naked [man of M][end if] behind you.[line break][speech style of M]'Haha, yeah, sure, I'm a figment of your imagination. Tell yourself whatever you have to, Sunshine, but you're not getting paid until my imaginary [DickDesc of M] has jizzed its imaginary load.'[roman type][line break]You turn bright red.";
				humiliate SLIGHT-HUMILIATION;
	otherwise if the currentlyOn of PC Monitor is 1:
		now the currentlyOn of PC Monitor is 2; [So it doesn't happen again]
		if PC monitor is in the location of the player:
			if latestCombatFocus is not patron:
				say "[first custom style]'Oh my god, you really WERE [if diaper quest is 1]doing that[otherwise]having sex[end if] for money?! I'm sorry but I can't be associated with such a disgusting and degenerate person as you. Don't ever contact me again.'[roman type][line break][strongHumiliateReflect][FriendName] hangs up the call, and then the PC Monitor goes blank.";
			otherwise:
				say "[first custom style]'I don't really understand what's going on here but I also know I don't like it. You'd better have a pretty good fucking explanation the next time I see you, [OriginalNameBimbo].'[roman type][line break][FriendName] hangs up the call, and then the PC Monitor goes blank.";




PC Monitor ends here.

