PC Monitor by Objects begins here.

A video-monitor is a kind of thing. A video-monitor is not portable. [A video-monitor has a number called currentlyOn. A video-monitor has a number called currentCall. ]

A video-monitor has a text called video-event. The video-event of a video-monitor is usually "doing nothing special".
A video-monitor has a thing called video-caller. The video-caller of a video-monitor is usually the throne.
A video-monitor can be recording-disgrace or not recording-disgrace. A video-monitor is usually not recording-disgrace.
A video-monitor has a number called call-cooldown.
A video-monitor has a number called currentlyOn.

A later time based rule:
	let V be a random video-monitor regionally in playerRegion;
	if V is video-monitor:
		if the video-caller of V is the throne:[if video-caller is not the throne, it means a call is already happening.]
			if V is video-callable and there is a dangerous monster in the location of the player and V is in the location of the player:
				let M be a random real-life patron;[Friend from outside the game]
				if diaper quest is 0 and a random number between 1 and 5 is 1:
					now M is a random slutty sister;
				otherwise:
					let B be the friend-old-name of M;
					if B is "none" or B is not a text, now the friend-old-name of M is the substituted form of "[OriginalNameBimbo]";
				now the video-caller of V is M;
				if M is a real-life patron, increase the times-called of M by 1;
				beginCall of V;
				if the number of barriers in the location of the player < 1:
					if V is in the Hotel:
						say "[bold type]A modesty shutter clatters down over each of the doors, trapping you in![roman type]";
						now a random modesty shutter is in the location of the player;
					otherwise if V is in the Dungeon:
						say "[bold type]A heavy wooden door swings shut over each of the entrances, trapping you in the room![roman type]";
						now a random reinforced-door is in the location of the player;
					otherwise if V is in the Woods:
						say "[bold type]Vines rapidly grow up in the spaces between the trees, trapping you in the room![roman type]";
						now a random vine-wall is in the location of the player;
					otherwise: [failsafe]
						say "[bold type]A wall of fire appears at each exit, trapping you in![roman type]";
						now a random flaming-wall is in the location of the player;
			otherwise:
				if the call-cooldown of V > 0, decrease the call-cooldown of V by seconds;
				CheckActivation of V;
		otherwise:
			compute ongoingCall of V;
	otherwise:
		repeat with AM running through video-monitors:
			if the video-caller of AM is not the throne:
				now the video-caller of AM is the throne;
				now the video-event of AM is "nothing special".

To CheckActivation of (C - a video-monitor):
	if the currentlyOn of C < 1:
		if debugmode > 0 and debuginfo > 1, say "[input style]Checking activation of [C][roman type][line break]";
		if the call-cooldown of C <= 0:
			if C is a crystal-monitor:
				if doomed is 5 or there is an active summoning portal regionally in playerRegion:
					if C is in the location of the player, say "The [printed name of C] flickers and spits out several tiny pink sparks as a blurry image appears on the surface.";
					now the currentlyOn of C is 1;
			otherwise:
				if C is in the location of the player, say "The [printed name of C] turns on.";
				now the currentlyOn of C is 1.

[Activates the monitor]
To beginCall of (C - a video-monitor):
	let M be the video-caller of C;
	now the currentlyOn of C is 1;
	say "[bold type]Suddenly, you hear the sound of your computer making a video call. [roman type]You look up with a start and see that yes indeed, your PC monitor is now wide awake, and with that green calling symbol over a blue background. Moments later, the video call is answered, and [if M is slutty sister]the face of one of the slutty sisters who put you in this game, along with the faces of several unfamiliar people in suits. [otherwise][FriendStatus of M][end if][NewAppearanceReaction of M][NewCircumstanceReaction of M][FriendRespond to M]".

To say FriendStatus of (M - a monster):[The status of your friend could potentially change]
	say "the face of your [RelationDesc of M] [MediumDesc of M] is staring back at you. ";

To say NewAppearanceReaction of (M - a monster):
	if a random number between 0 and the number of applicable humiliating situations is 0:
		say GenericSituationReaction of M;
	otherwise:
		say FriendReaction of M to a random applicable humiliating situation;
	if M is real-life patron and the appearance of the player > the friend-max-appearance of M, now the friend-max-appearance of M is the appearance of the player;
	if the player is naked and M is not real-seenNaked, now M is real-seenNaked.

To say GenericSituationReaction of (M - a monster):
	let P be the appearance of the player;
	say "[speech style of M]'Hello there, [NameBimbo]! So, these [if lady fetish is 1]girls[otherwise]boys[end if] and I were just looking in on your beta test, and since there was a screen handy, I thought [']why not let [him of the player] in on it?['] [run paragraph on]";
	if P < 3:
		say "By the way, your little [']I'm not a slut['] act is really popular with our investors, so make sure to play that up, alright? ";
	otherwise if P < 6:
		say "By the way, don't be afraid to really whore it up. Nobody here will judge you, teehee. ";
	otherwise if P < 9:
		say "By the way, we all LOVE your fashion sense. ";
	otherwise if P < 12:
		say "A few of us think you have the [']look['] down, so all that's left is turning that into action. ";
	otherwise if P < 16:
		say "Considering the way you look right now, you're probably desperate to have an audience. ";
	otherwise:
		say "That's right, you finally have an audience! Don't let it go to your head, alright? ".

To say FriendReaction of (M - a slutty sister) to (A - a humiliating situation):
	say GenericSituationReaction of M.

To say NewCircumstanceReaction of (M - a slutty sister):
	let N be a random dangerous monster in the location of the player;
	say "'[roman type][line break][big he of M] turns [his of M] attention back to the suited [if lady fetish is 1]women[otherwise]men[end if] behind [him of M].[line break][speech style of M]'";
	if N is patron:
		say "Anyway, we've heard your complaints that our high class [']representatives['] are too expensive, and our players have been testing out a solution for us. The [man of N] next to [NameBimbo] here is actually a customer who has paid to spend time with one of our [']Virtual associates.['] It's true they aren't as well behaved or skilled as the real thing, but the price isn't nearly as prohibitive. All you need to do is sign a few release forms and you can give one a try!'[roman type][line break]";
	otherwise:
		say "As I was saying, we've been worried that the game is too winnable, -ahem...[']easy['], so we have been taking measures to increase the raw difficulty. I think all of you will be excited to see what we have planned for the final boss.'[roman type][line break]";

To say FriendRespond to (M - a slutty sister):
	let N be a random dangerous monster in the location of the player;
	if N is patron:
		say "[line break][variable custom style]...glad to know someone's getting a deal out of this.[roman type][line break]";
	otherwise:
		say "[line break][variable custom style]...I think I hate this company.[roman type][line break]";

[Handles an on-going call]
To compute ongoingCall of (C - a video-monitor):
	let M be the video-caller of C;
	if the number of dangerous monsters in the location of the player > 0:
		if C is recording-disgrace and the video-event of C is "doing nothing special", compute disgraceful event of C;
		compute M protecting against a random dangerous monster in the location of the player;
	otherwise:[if there are no dangerous monsters around, its time to end the call]
		if C is not recording-disgrace:[if no disgraceful event happened, we need to make sure there's no recording.]
			now the video-event of C is "doing nothing special";
		otherwise if the video-event of C is "doing nothing special":[if something did happen, but we don't have a recording yet, we need to make one]
			compute disgraceful event of C;
		compute endCall of C;

To compute (M - a slutty sister) protecting against (X - a monster):
	if M is not in the location of the player, say BaseObservationFlav of M;
	if M is in the location of the player:
		do nothing;[for now]
	otherwise if there is a monster penetrating a body part:
		if X is penetrating a body part, say SexObserve of M with X;
		otherwise say SexObserve of M with (a random monster penetrating a body part);
	otherwise:
		say FightObserve of M with X.

To say BaseObservationFlav of (M - a slutty sister):
	say "The slutty sister and the executives continue to watch [one of]you[or]the action[at random].".

To say FightObserve of (M - a slutty sister) with (N - a monster):
	if the player is prone, say "[speech style of M]'[one of]Once the player is on their knees, that's when the fun REALLY begins. Teehee.'[or]After the subject's fuck or flight response kicks in, all we need to do is restrict their options a little bit, and voila, it's a porno!'[or]See, gentlemen? I told you!'[or]Of course, the pain the subject feels is real, but as you're about to see, so is the pleasure.'[or]Remember, stakeholders: The subject has a safeword [he of the player] can use to stop the stimulation at any time. Keep that in mind as you watch what happens next.'[at random][roman type][line break][moderateHumiliateReflect]";
	otherwise say "[speech style of M]'[one of]Once combat begins, it generally doesn't take long for the subject's fuck or flight response to kick in.'[or]Although some subjects do choose to engage in combat, they usually lose, so we see it as more of a formality.'[or]Early on, we have to begin most encounters by making the subject docile, but later on, the subject will learn to be docile naturally.'[or]We care about our investors, so we dull any pain that you might experience within the situation.'[or]Repressed submissives like [NameBimbo] here will often take a while to break, but sometimes we get lucky.'[at random][roman type][line break][moderateHumiliateReflect]";

To say SexObserve of (M - a slutty sister) with (N - a monster):
	say "[first custom style]'[one of]As you can see, even if [he of the player] pretends not to enjoy it, [his of the player] vital signs definitely won't lie.'[or]As always, tap the button on the upper right of your screens to change your viewing angle.'[or]It's important to introduce the subject to sex early and often, so they get addicted. We're very confident it works, teehee!'[or][if the reaction of the player is 0]It's true [he of the player]'s resisting, but remember that safeword we told you about?[otherwise]See? Even if we give the subject a safeword, they'd think twice about escaping something that feels so good.[end if]'[or]Ooh, so your hands ARE as strong as they look...no no, that's included in the price... Teehee, I'll think about it, but I'm contractually obligated to remind you that [NameBimbo] is meant to be the centre of attention right now!'[or]Sir, if you keep doing that, I'm going to have to...really, double?...-ahem, we'll have to discuss how I can earn that after we finish the conference.'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]Stop watching me!'[or]This isn't a show!'[or]This is so humiliating! It's like I'm a lab rat!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

[Determines the "video" content that is produced by the monitor when the player gets beaten in combat]
To compute disgraceful event of (C - a video-monitor):
	let T be "doing nothing special";
	let X be the number of monsters penetrating a body part;
	if X > 0:
		let O be a random monster penetrating face;
		let V be a random monster penetrating vagina;
		let P be a random monster penetrating penis;
		let A be a random monster penetrating asshole;
		let B be a random monster penetrating breasts;
		if X is 1:
			if O is monster, now T is the substituted form of "[if O is male][one of]blowing [NameDesc of O][or]sucking [NameDesc of O]'s [DickDesc of O][or]giving [NameDesc of O] a blowjob[at random][otherwise][one of]using your mouth to pleasure [NameDesc of O][or]servicing [NameDesc of O] with your mouth[at random][end if]";
			if V is monster, now T is the substituted form of "[if V is male][one of]getting bred by [NameDesc of V][or]getting fucked by [NameDesc of V][or]getting your [vagina] pounded by [NameDesc of V][at random][otherwise]letting [NameDesc of V] play with your [vagina][end if]";
			if A is monster, now T is the substituted form of "[if A is male or A is dominatrix][one of]getting assfucked by [NameDesc of A][or]getting anally pounded by [NameDesc of A][or]getting your [asshole] pounded by [NameDesc of A][at random][otherwise][one of]letting [NameDesc of A] play with your [asshole][or]engaging in anal play with [NameDesc of A][at random][end if]";
			if P is monster, now T is the substituted form of "[one of]having [NameDesc of P] abuse your penis[or]with [NameDesc of P] playing with your penis[at random]";
			if B is monster, now T is the substituted form of "[if B is male][one of]tittyfucking [NameDesc of B][or]having your tits fucked by [NameDesc of B][at random][otherwise]with [NameDesc of B] playing with your breasts[end if]";
		otherwise if X is 2:
			now T is the substituted form of "[one of]getting double teamed[or]having a threesome[at random]";
		otherwise:
			now T is the substituted form of "getting gangbanged[if O is patron] by patrons[end if]";
	otherwise:
		let M be a random dangerous monster in the location of the player;
		if M is monster, now T is the substituted form of "[if diaper quest is 1]engaging in ABDL kink play with [NameDesc of M][otherwise]engaging in kinky play with [NameDesc of M][end if]";
		otherwise now T is the substituted form of "[one of]getting humiliated[or]engaging in kinky play[or]acting like a shameful whore[at random]";
	now the video-event of C is T.

To compute endCall of (C - a video-monitor):
	let T be "doing nothing special";
	let M be the video-caller of C;
	if the video-event of C is not T:
		if M is real-life patron:
			let X be a random number between 0 and the favour of M;
			if X < the favour of M - 3, now M is friend-shocked;
		compute HangUpDisgraced of C with M;
		FavourDown M by 3;
	otherwise:
		compute HangUpUndisgraced of C with M;
		FavourUp M by 1;
	now the video-caller of C is the throne;
	now the call-cooldown of C is 300.

To compute HangUpDisgraced of (C - a video-monitor) with (M - a slutty sister):
	say "[second custom style]'*Great* job, [NameBimbo]! Our investors here think that footage was good enough for a commercial release, so look forward to seeing it once we've got it uploaded. That will be all for now!'[roman type][line break][strongHumiliateReflect]The slutty sister hangs up the call, and the [MediumDesc of C] turns off.";
	choose a blank row in Table of Published Disgraces;
	now the content entry is the substituted form of "an HD video of you [the video-event of C]";
	now the published entry is the substituted form of "has been uploaded to the Nintendolls company website";
	now the severity entry is 10;
	now the popularity entry is 1;
	now the timestamp entry is earnings.

To compute HangUpUndisgraced of (C - a video-monitor) with (M - a slutty sister):
	say "[second custom style]'Alright, good job, [NameBimbo]. That will be all for now!'[roman type][line break]The slutty sister hangs up the call, and the [MediumDesc of C] turns off.".

Definition: a video-monitor (called V) is video-callable:
	if the currentlyOn of V > 0 and the call-cooldown of V <= 0, decide yes;
	decide no.

Section - PC Monitor

To say ShortDesc of (C - video-monitor):
	say "monitor".

A pc-monitor is a kind of video-monitor. The printed name of a pc-monitor is "[TQlink of item described]PC monitor[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "PC", "monitor" as pc-monitor. A pc-monitor has a number called currentSlide. A pc-monitor has a number called currentlyOn. The currentlyOn of a pc-monitor is 1.

There is a pc-monitor in Hotel33.

To say ShortDesc of (C - pc-monitor):
	say "monitor".
To say MediumDesc of (C - pc-monitor):
	say "PC monitor".

Definition: pc-monitor is immune to change: decide yes.

Figure of pc-monitor is the file "Env/Hotel/monitor1.jpg".
To decide which figure-name is the examine-image of (C - pc-monitor):
	decide on figure of pc-monitor.

To say ExamineDesc of (C - pc-monitor):
	let V be the video-caller of C;
	say "A monitor sits on the desk at the end of your room. [if the video-caller of C is the throne]It is currently displaying [SlideDesc (currentSlide of C)][otherwise if V is slutty sister]You are currently in a video call with a slutty sister and several executives.[otherwise]You are currently in a video call with [MediumDesc of V], your [RelationDesc of V].[end if]".

[No humiliation gain, just flavour]
To say SlideDesc (N - a number):
	if N is 0:
		say "A photo of some slut you don't know streaking naked during a football game.";
	otherwise:
		say "[DisgracePost N].[line break][DisgracePostReaction N]".

[In-built humiliation gain]
To say HumiliatingSlideDesc (N - a number):
	say "[DisgracePost N].[line break][HumiliatingDisgracePostReaction N]".

[
Slideshow thing that was originally part of the video monitor. Should probably find a way to work it back in

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
				say "[variable custom style]'No, you see, well, this is a virtual reality game made by Nintendolls, and I think it must be glitching, or this is a very horrible prank, because I didn't try to phone you, that's not even my real computer...'[roman type][line break]Your attempt to explain the insane situation is hindered by a chuckle from [if the number of patrons in the location of the player > 1]one of the half-naked [men of M][otherwise]the half-naked [man of M][end if] behind you.[line break][speech style of M]'Haha, yeah, sure, I'm a figment of your imagination. Tell yourself whatever you have to, Sunshine, but you're not getting paid until [if diaper quest is 1]we've had some kinky fun[otherwise]my imaginary [DickDesc of M] has jizzed its imaginary load[end if].'[roman type][line break]You turn bright red.";
				humiliate SLIGHT-HUMILIATION;
	otherwise if the currentlyOn of PC Monitor is 1:
		now the currentlyOn of PC Monitor is 2;
		if PC monitor is in the location of the player:
			if latestCombatFocus is not patron:
				say "[first custom style]'Oh my god, you really WERE [if diaper quest is 1]doing that[otherwise]having sex[end if] for money?! I'm sorry but there's no way I'm not sending this to EVERYONE. You're such a disgrace.'[roman type][line break][strongHumiliateReflect][FriendName] hangs up the call, and then the PC Monitor goes blank.";
				choose a blank row in Table of Published Disgraces;
				now the content entry is the substituted form of "a screenshot of you in a video call, [if diaper quest is 1]engaging in ABDL kink play[otherwise]having sex[end if] with a patron,";
				now the published entry is the substituted form of "posted to your wall on facepage.com by [FriendName], accompanied by the comment 'WTF explain yourself, [NameBimbo]!'";
				now the severity entry is 100;
				now the popularity entry is 0;
				now the viewsfuzz entry is 0;
				now the timestamp entry is 0;
			otherwise:
				say "[first custom style]'I don't really understand what's going on here but I also know I don't like it. You'd better have a pretty good fucking explanation the next time I see you, [OriginalNameBimbo].'[roman type][line break][FriendName] hangs up the call, and then the PC Monitor goes blank.";
]

To beginCall of (C - pc-monitor):
	let M be the video-caller of C;
	now the currentlyOn of C is 1;
	say "[bold type]Suddenly, you hear the sound of your computer making a video call. [roman type]You look up with a start and see that yes indeed, your PC monitor is now wide awake, and with that green calling symbol over a blue background. Moments later, the video call is answered, and [if M is slutty sister]the face of one of the slutty sisters who put you in this game, along with the faces of several unfamiliar people in suits. [otherwise][FriendStatus of M][end if][NewAppearanceReaction of M][NewCircumstanceReaction of M][FriendRespond to M]".

[There is a pc-monitor in Mansion02. ]

Section - Ancient Monitor

A crystal-monitor is a kind of video-monitor. The printed name of a crystal-monitor is "[TQlink of item described]crystal monitor[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "monitor", "crystal" as crystal-monitor.

There is a crystal-monitor in Dungeon39.
There is a crystal-monitor in Woods31.

[when does monitor activate:

Crystal monitors activate whenever a summoning portal is activated, or if the doom quest reaches its failure state.

summoning circle activate
doom quest failed

]

To say ExamineDesc of (C - a crystal-monitor):
	say "A flat sheet of magic crystal, which reminds you of a computer monitor. [if the video-caller of C is a slutty sister]It is currently hosting a video call with one of the slutty sisters who put you in this game.[otherwise if the video-caller of C is not the throne]It is currently hosting a video call with your [RelationDesc of the video-caller of C] [MediumDesc of the video-caller of C].[otherwise if the currentlyOn of C > 0]It has come to life, emitting tiny pink and white sparks as a blurry image flickers on the surface. It's too unfocused for you to make anything out.[otherwise]It looks inert, but maybe it will respond to a powerful source of magic?[end if]".

[The ancient monitor is only on if ]

Definition: A crystal-monitor (called V) is video-callable:
	if the currentlyOn of V > 0, decide yes;
	decide no.

[
Once the cell door is closed, the monitor can potentially make a call.

Escaping the cell is possible by expending a key or using a teleport
]

To beginCall of (C - crystal-monitor):
	let M be the video-caller of C;
	say "[bold type]Suddenly, you hear the sound of a video call coming from the magical computer. [roman type]You look over at the monitor, and see the flickering image on the screen has changed to a green calling symbol over a blue background. Moments later, the video call is answered, and [if M is slutty sister]the face of one of the slutty sisters who put you in this game, along with the faces of several unfamiliar people in suits. [otherwise][FriendStatus of M][end if][NewAppearanceReaction of M][NewCircumstanceReaction of M][FriendRespond to M]".

Section - Security screens

security screens is a thing. security screens is in Hotel30. security screens is not portable. The printed name of security screens is "[TQlink of item described]security screens[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of security screens is "scs". security screens has a number called currentSlide.

To say ShortDesc of (C - security screens):
	say "security screens".
To say MediumDesc of (C - security screens):
	say "security screens".

Definition: security screens is immune to change: decide yes.

Figure of security screens is the file "Env/Hotel/monitor2.jpg".
To decide which figure-name is the examine-image of (C - security screens):
	decide on figure of security screens.

To say ExamineDesc of (C - security screens):
	say "Your security screens sits on its desk at the end of your room. Your eyes are currently being drawn to [if the currentSlide of C <= 0]footage of a woman streaking across a football field.[otherwise][SlideDesc (currentSlide of C)][end if]".

[Happens after monsters, so if a monster drags you here it happens in the same turn.]
A later time based rule:
	if the player is in Hotel30:
		let N be the number of filled rows in the Table of Published Disgraces;
		if N > 0:
			decrease the currentSlide of security screens by 1;
			if the currentSlide of security screens <= 0:
				now the currentSlide of security screens is the number of filled rows in the Table of Published Disgraces;
			say "[bold type]Your eyes are drawn to a TV screen![roman type] It shows that [HumiliatingSlideDesc (the currentSlide of security screens)]";

PC Monitor ends here.
