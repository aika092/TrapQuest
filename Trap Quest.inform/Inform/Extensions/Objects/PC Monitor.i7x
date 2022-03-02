PC Monitor by Objects begins here.

A video-monitor is a kind of thing. A video-monitor is not portable.

A video-monitor has a text called video-event. The video-event of a video-monitor is usually "doing nothing special".
A video-monitor has a thing called video-caller. The video-caller of a video-monitor is usually the throne.
A video-monitor can be recording-disgrace or not recording-disgrace. A video-monitor is usually not recording-disgrace.
A video-monitor has a number called call-cooldown.
A video-monitor has a number called currentlyOn.

A later time based rule:
	let V be a random video-monitor regionally in playerRegion;
	if V is video-monitor:
		if the video-caller of V is the throne:[if video-caller is not the throne, it means a call is already happening.]
			if V is video-callable and V is in the location of the player and the player is in danger:
				let P be a random slutty sister;
				if diaper quest is 1 or a random number between 1 and 5 > 1:
					now P is a random real-life patron;[Friend from outside the game]
					if domino-mask is off-stage and domino-mask is actually summonable and there is a male human intelligent combative monster:
						say "An [domino-mask] appears on your face!";
						summon domino-mask cursed;
						say "[variable custom style]I'm... I'm a superhero[if the player is gendered female]ine[end if]?[roman type][line break]";
						repeat with M running through male human intelligent combative monsters:
							say "You suddenly notice that [NameDesc of M] is also wearing an eye mask[one of]! But the sinister sneer on [his of M] face suggests that [he of M] is no hero[or]! You're outnumbered by villains[or][stopping]...";
					let B be the friend-old-name of P;
					if B is "none" or B is not a text, now the friend-old-name of P is the substituted form of "[OriginalNameBimbo]";
				now the video-caller of V is P;
				if P is a real-life patron, increase the times-called of P by 1;
				beginCall of V;
				if the number of barriers in the location of the player < 1:
					if V is in the Hotel:
						say "[bold type]A modesty shutter clatters down over each of the doors, trapping you in!";
						now a random modesty shutter is in the location of the player;
					otherwise if V is in the Dungeon:
						say "[bold type]A heavy wooden door swings shut over each of the entrances, trapping you in the room!";
						now reinforced-door is in the location of the player;
					otherwise if V is in the Woods:
						say "[bold type]Vines rapidly grow up in the spaces between the trees, trapping you in the room!";
						now vine-wall is in the location of the player;
					otherwise: [failsafe]
						say "[bold type]A wall of fire appears at each exit, trapping you in!";
						now flaming-wall is in the location of the player;
					say "[roman type][line break]";
			otherwise:
				if the call-cooldown of V > 0, decrease the call-cooldown of V by seconds;
				CheckActivation of V;
		otherwise:
			if V is in the location of the player, compute ongoingCall of V;
			otherwise compute reset of V; [For example if the player is dragged or teleported away] [N.B. if the player escapes mid-sex e.g. with a teleport, this line currently means there is no screenshot uploaded anywhere. Might be room for improvement there.]
	otherwise:
		repeat with AM running through video-monitors:
			if the video-caller of AM is not the throne:
				now the video-caller of AM is the throne;
				now the video-event of AM is "doing nothing special".

To CheckActivation of (C - a video-monitor):
	if the currentlyOn of C < 1:
		if debugmode > 0 and debuginfo > 1, say "[input style]Checking activation of [C].[roman type][line break]";
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
	say "[bold type]Suddenly, you hear the sound of your computer making a video call. [roman type]You look up with a start and see that yes indeed, your PC monitor is now wide awake, and with that green calling symbol over a blue background. Moments later, the video call is answered, and [if M is slutty sister]the face of one of the Nintendolls who put you in this game, along with the faces of several unfamiliar people in suits. [otherwise][FriendStatus of M][end if][NewAppearanceReaction of M][NewCircumstanceReaction of M][FriendRespond to M]".

To say FriendStatus of (M - a monster):[The status of your friend could potentially change]
	say "the face of your [RelationDesc of M] [MediumDesc of M] is staring back at you. ";

[Two important things:
Favour
	- If your friend's favour is too high when they see you doing something disgraceful, they will share the video, which is super damaging to your reputation
	- Once your friend's favour passes into the unfriendly area, they can show up as a patron
Remembered appearance
	- After they see you looking really shocking, seeing a lower appearance level will increase favour
	- Seeing an appearance level that's too much higher than the old one will decrease favour
]
To say NewAppearanceReaction of (M - a monster):
	if a random number between 0 and the number of applicable humiliating situations is 0:
		say GenericSituationReaction of M;
	otherwise:
		say FriendReaction of M to a random applicable humiliating situation;
	if M is real-life patron:
		let X be the appearance of the player - the friend-max-appearance of M;
		if X > 0:
			if X >= 6:[if you exceed the current max by nine, your friend is too shocked, and they're much more likely to share around your video]
				now M is friend-shocked;
			otherwise:
				FavourDown M by 2;
			now the friend-max-appearance of M is the appearance of the player;
		otherwise if X < 0:
			FavourUp M by 1;
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
	if the player is in danger:
		if C is recording-disgrace and the video-event of C is "doing nothing special", compute disgraceful event of C;
		let X be a random combative monster;
		compute M protecting against X;
	otherwise:[if there are no dangerous monsters around, it's time to end the call]
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
	say "The Nintendoll and the executives continue to watch [one of]you[or]the action[at random].".

To say FightObserve of (M - a slutty sister) with (N - a monster):
	if the player is prone, say "[speech style of M]'[one of]Once the player is on their knees, that's when the fun REALLY begins. Teehee.'[or]After the subject's fuck or flight response kicks in, all we need to do is restrict their options a little bit, and voila, it's a porno!'[or]See, gentlemen? I told you!'[or]Of course, the pain the subject feels is real, but as you're about to see, so is the pleasure.'[or]Remember, stakeholders: The subject has a safe-word [he of the player] can use to stop the stimulation at any time. Keep that in mind as you watch what happens next.'[at random][roman type][line break][moderateHumiliateReflect]";
	otherwise say "[speech style of M]'[one of]Once combat begins, it generally doesn't take long for the subject's fuck or flight response to kick in.'[or]Although some subjects do choose to engage in combat, they usually lose, so we see it as more of a formality.'[or]Early on, we have to begin most encounters by making the subject docile, but later on, the subject will learn to be docile naturally.'[or][if N is patron]We care about our investors, so we dull any pain that you might experience within the situation.'[otherwise]We find that combat is a good way of increasing the subject's bloodflow before the main event.[end if][or]Repressed submissives like [NameBimbo] here will often take a while to break, but sometimes we get lucky.'[at random][roman type][line break][moderateHumiliateReflect]";

To say SexObserve of (M - a slutty sister) with (N - a monster):
	say "[first custom style]'[one of]As you can see, even if [he of the player] pretends not to enjoy it, [his of the player] vital signs definitely won't lie.'[or]As always, tap the button on the upper right of your screens to change your viewing angle.'[or]It's important to introduce the subject to sex early and often, so they get addicted. We're very confident it works, teehee!'[or][if the reaction of the player is 0]It's true [he of the player]'s resisting, but remember that safe-word we told you about?'[otherwise]See? Even if we give the subject a safe-word, they'd think twice about escaping something that feels so good.'[end if][or]Ooh, so your hands ARE as strong as they look...no no, that's included in the price... Teehee, I'll think about it, but I'm contractually obligated to remind you that [NameBimbo] is meant to be the centre of attention right now!'[or]If you look here, you'll see a diagram of [NameBimbo]'s most sensitive internal areas.'[or]Sir, if you keep doing that, I'm going to have to...really, double?...-ahem, we'll have to discuss how I can earn that after we finish the conference.'[then at random][if the player is not disgraced and the player is able to speak][line break][variable custom style]'[one of]Stop watching me!'[or]This isn't a show!'[or]This is so humiliating! It's like I'm a lab rat!'[in random order][end if][roman type][line break][strongHumiliateReflect]".

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
			if O is monster, now T is the substituted form of "[if O is male][one of]blowing [NameDesc of O][or]sucking [NameDesc of O][']s [DickDesc of O][or]giving [NameDesc of O] a blowjob[at random][otherwise][one of]using your mouth to pleasure [NameDesc of O][or]servicing [NameDesc of O] with your mouth[at random][end if]";
			if V is monster, now T is the substituted form of "[if V is male][one of]getting bred by [NameDesc of V][or]getting fucked by [NameDesc of V][or]getting your [vagina] pounded by [NameDesc of V][at random][otherwise]letting [NameDesc of V] play with your [vagina][end if]";
			if A is monster, now T is the substituted form of "[if A is male or A is dominatrix][one of]getting assfucked by [NameDesc of A][or]getting anally pounded by [NameDesc of A][or]getting your [asshole] pounded by [NameDesc of A][at random][otherwise][one of]letting [NameDesc of A] play with your [asshole][or]engaging in anal play with [NameDesc of A][at random][end if]";
			if P is monster, now T is the substituted form of "[one of]having [NameDesc of P] abuse your penis[or]with [NameDesc of P] playing with your penis[at random]";
			if B is monster, now T is the substituted form of "[if B is male][one of]tittyfucking [NameDesc of B][or]having your tits fucked by [NameDesc of B][at random][otherwise]with [NameDesc of B] playing with your breasts[end if]";
		otherwise if X is 2:
			now T is the substituted form of "[one of]getting double teamed[or]having a threesome[at random]";
		otherwise:
			now T is the substituted form of "getting gangbanged[if O is patron] by patrons[end if]";
	otherwise:
		let M be a random combative monster;
		if M is monster, now T is the substituted form of "[if diaper quest is 1]engaging in ABDL kink play with [NameDesc of M][otherwise]engaging in kinky play with [NameDesc of M][end if]";
		otherwise now T is the substituted form of "[one of]getting humiliated[or]engaging in kinky play[or]acting like a shameful whore[at random]";
	now the video-event of C is T.

To compute endCall of (C - a video-monitor):
	let M be the video-caller of C;
	if domino-mask is worn:
		compute HangUpMasked of C with M;
	otherwise if the video-event of C is not "doing nothing special":
		if M is real-life patron:
			let X be a random number between 0 and the favour of M;
			if X < the favour of M - 3, now M is friend-shocked;
		compute HangUpDisgraced of C with M;
		FavourDown M by 3;
	otherwise:
		compute HangUpUndisgraced of C with M;
		FavourUp M by 1;
	compute reset of C.

To compute reset of (C - a video-monitor):
	now the video-caller of C is the throne;
	now the call-cooldown of C is 300.

To compute HangUpDisgraced of (C - a video-monitor) with (M - a slutty sister):
	say "[second custom style]'*Great* job, [NameBimbo]! Our investors here think that footage was good enough for a commercial release, so look forward to seeing it once we've got it uploaded. That will be all for now!'[roman type][line break][strongHumiliateReflect]The Nintendoll hangs up the call, and the [MediumDesc of C] turns off.";
	if the number of blank rows in the Table of Published Disgraces > 0:
		choose a blank row in Table of Published Disgraces;
		now the content entry is the substituted form of "an HD video of you [the video-event of C]";
		now the published entry is the substituted form of "has been uploaded to the Nintendolls company website";
		now the severity entry is 10;
		now the popularity entry is 1;
		now the viewsfuzz entry is a random number between -100 and 100;
		now the lastwitnessed entry is 0;
		now the deletedtime entry is -1;
		now the timestamp entry is earnings.

To compute HangUpUndisgraced of (C - a video-monitor) with (M - a slutty sister):
	say "[second custom style]'Alright, good job, [NameBimbo]. That will be all for now!'[roman type][line break]The Nintendoll hangs up the call, and the [MediumDesc of C] turns off.".

To compute HangUpMasked of (C - a video-monitor) with (M - a monster):
	if the video-event of C is not "doing nothing special":
		say "[first custom style]'You're lucky we didn't find out your identity!'[roman type][line break][BigNameDesc of M] hangs up the call, and the [MediumDesc of C] turns off.";
	otherwise:
		say "[first custom style]'What a weird livestream.'[roman type][line break][BigNameDesc of M] shrugs and hangs up the call, and the [MediumDesc of C] turns off.";
		progress quest of hero-quest;
		say "[bold type]Not only did you survive without being unmasked, but you won the fight![roman type][line break]";
		progress quest of hero-quest.

Definition: a video-monitor (called V) is video-callable:
	if V is pc-monitor and the number of patrons in the location of the player is 0, decide no; [hotel PC monitor only works with patrons. necessary for current pimp spawning code]
	if the currentlyOn of V > 0 and the call-cooldown of V <= 0, decide yes;
	decide no.

Section - PC Monitor

To say ShortDesc of (C - video-monitor):
	say "monitor".

pc-monitor is a video-monitor. pc-monitor is in Hotel33. The printed name of a pc-monitor is "[TQlink of item described]PC monitor[TQxlink of item described][shortcut-desc][verb-desc of item described]". Understand "PC", "monitor" as pc-monitor. pc-monitor has a number called currentSlide. pc-monitor has a number called currentlyOn. The currentlyOn of pc-monitor is 1.

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
	say "A monitor sits on the desk at the end of your room. [if the video-caller of C is the throne]It is currently displaying [SlideDesc (currentSlide of C)][otherwise if V is slutty sister]You are currently in a video call with a Nintendoll and several executives.[otherwise]You are currently in a video call with [MediumDesc of V], your [RelationDesc of V].[end if]".

[No humiliation gain, just flavour]
To say SlideDesc (N - a number):
	if N is 0:
		say "A photo of some slut you don't know streaking naked during a football game.";
	otherwise:
		say "[DisgracePost N].[line break][DisgracePostReaction N]".

[In-built humiliation gain]
To say HumiliatingSlideDesc (N - a number):
	say "[DisgracePost N].[line break][HumiliatingDisgracePostReaction N]".

To beginCall of (C - pc-monitor):
	let M be the video-caller of C;
	now the currentlyOn of C is 1;
	say "[bold type]Suddenly, you hear the sound of your computer making a video call. [roman type]You look up with a start and see that yes indeed, your PC monitor is now wide awake, and with that green calling symbol over a blue background. Moments later, the video call is answered, and [if M is slutty sister]the face of one of the Nintendolls who put you in this game, along with several unfamiliar people in suits appear. [otherwise][FriendStatus of M][end if][NewAppearanceReaction of M][NewCircumstanceReaction of M][FriendRespond to M]".

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
	say "A flat sheet of magic crystal, which reminds you of a computer monitor. [if the video-caller of C is a slutty sister]It is currently hosting a video call with one of the Nintendolls who put you in this game.[otherwise if the video-caller of C is not the throne]It is currently hosting a video call with your [RelationDesc of the video-caller of C] [MediumDesc of the video-caller of C].[otherwise if the currentlyOn of C > 0]It has come to life, emitting tiny pink and white sparks as a blurry image flickers on the surface. It's too unfocused for you to make anything out.[otherwise]It looks inert, but maybe it will respond to a powerful source of magic?[end if]".

[The ancient monitor is only on if ]

Definition: a crystal-monitor is video-callable:
	if the currentlyOn of it > 0, decide yes;
	decide no.

To beginCall of (C - crystal-monitor):
	let M be the video-caller of C;
	say "[bold type]Suddenly, you hear the sound of a video call coming from the magical computer. [roman type]You look over at the monitor, and see the flickering image on the screen has changed to a green calling symbol over a blue background. Moments later, the video call is answered, and [if M is slutty sister]the face of one of the Nintendolls who put you in this game, along with several unfamiliar people in suits appear. [otherwise][FriendStatus of M][end if][NewAppearanceReaction of M][NewCircumstanceReaction of M][FriendRespond to M]".

Section - Security Interface

security interface is a thing. security interface is in Hotel30. security interface is not portable. The printed name of security interface is "[TQlink of item described]security interface[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of security interface is "scs". security interface has a number called currentSlide. security interface can be unauthenticated, authenticating, or authenticated.

To say ShortDesc of (C - security interface):
	say "security interface".
To say MediumDesc of (C - security interface):
	say "security interface".

Definition: security interface is immune to change: decide yes.

Figure of security interface is the file "Env/Hotel/securityroom1.jpg".
Figure of security interface authenticating is the file "Env/Hotel/securityroom2.jpg".
Figure of security interface authentication pole is the file "Env/Hotel/securityroom3.jpg".
To decide which figure-name is the examine-image of (C - security interface):
	if C is authenticating, decide on figure of security interface authenticating;
	decide on figure of security interface.

To say ExamineDesc of (C - security interface):
	say "Four TV monitors are fixed to the wall of the security room. Your eyes are currently being drawn to [if the currentSlide of C <= 0]security footage of [one of]a woman stripping off her clothes in the middle of a street[or]an outdoor pool, where a woman is shamelessly sunbathing nude[or]some kind of confectionary store, where a woman is performing some rather erotic tongue manouveurs on her favourite lollipop[or]two women performing stretches either side of a glass wall in a gym. For unclear reasons, one of the women is completely naked[then at random].[otherwise][SlideDesc (currentSlide of C)][end if][paragraph break]To the side of the monitors is a high-tech metal security door, and in between the door and the monitors are some panels for ID authentication, including a key card slot, and some kind of biometric authentication, activated by a big round power button.".

Check pushing security interface:
	repeat with M running through combative monsters:
		say "[BigNameDesc of M] blocks you from reaching the button! You're going to have to deal with [him of M] first!" instead;
	allocate 6 seconds;
	if security interface is authenticated:
		say "A feminine robotic voice speaks:[line break][second custom style]'ERROR: IDENTITY HAS ALREADY BEEN CONFIRMED.'[roman type][line break]";
	otherwise if security interface is unauthenticated:
		say "Two things happen when you push the button - a small metal chute opens up, as if expecting you to deposit an item in it. Secondly, a long thin metal pole with a bulbous sphere at the top emerges from the ground in front of you. Next, a feminine robotic voice speaks:[line break][second custom style]'PLEASE PROCEED WITH [if diaper quest is 0]ORIFICE-BASED OR [end if]ITEM-BASED DNA VERIFICATION.'[roman type][line break]It seems like you [if diaper quest is 0]either need to [']mount['] the pole in front of you, or[otherwise]need to[end if] drop an item down the chute.";
		now security interface is authenticating;
	otherwise:
		say "You push the button, but nothing more happens.".


[Happens after monsters, so if a monster drags you here it happens in the same turn.]
A later time based rule:
	if the player is in Hotel30:
		let N be the number of filled rows in the Table of Published Disgraces;
		if N > 0:
			let notThisOne be 100;
			while notThisOne > 0:
				decrease notThisOne by 1;
				decrease the currentSlide of security interface by 1;
				if the currentSlide of security interface <= 0:
					now the currentSlide of security interface is the number of filled rows in the Table of Published Disgraces;
				choose row (the currentSlide of security interface) in Table of Published Disgraces;
				if the deletedtime entry <= 0: [Only media that hasn't been deleted is shown]
					now notThisOne is 0;
					say "[bold type]Your eyes are drawn to a TV screen![roman type] It shows that [HumiliatingSlideDesc (the currentSlide of security interface)]";
					if the deletedtime entry is -1:
						say "The console is not logged in as the user who uploaded the video, so there is no delete button.";
					otherwise if the deletedtime entry is 0:
						if security interface is authenticated:
							say "There is a big red delete button available to press, underneath the video. ";
							if the player is immobile or the player is in danger:
								say "Unfortunately, you're too busy right now, to be able to press it!";
							otherwise:
								say "Press the button to delete the video?";
								if the player is consenting:
									say "You press the button, and the video is deleted from the website. No one else will be able to see it now!";
									now the deletedtime entry is time-earnings;
						otherwise:
							say "There is a big red delete button available to press underneath the video, but a banner underneath the screens says 'PLEASE AUTHENTICATE TO ENABLE TOUCHSCREEN FUNCTIONALITY.'";
	otherwise if security interface is authenticating:
		now security interface is unauthenticated.

To decide which number is the girth of (C - security interface):
	decide on 4.

Check entering security interface:
	if the noun is authenticated, say "Sorry, this subregion hasn't been created yet!" instead;
	if the noun is unauthenticated or diaper quest is 1, say "How would you do that?" instead;
	let F be asshole;
	reset multiple choice questions;
	set numerical response 1 to "Mount the authentication pole with your [asshole].";
	if the player is possessing a vagina, set numerical response 2 to "Mount the authentication pole with your [vagina].";
	set numerical response 0 to "Change your mind.";
	compute multiple choice question;
	if player-numerical-response is 0, do nothing instead;
	if player-numerical-response is 2, now F is vagina;
	if the insertableGirthAcceptance of F < the girth of the noun:
		if debugmode is 1, say "If debugmode was disabled, the player would be unable to fit it inside.";
		otherwise say "[variable custom style]There's no way I'm going to be able to fit that thing inside of me![roman type][line break]" instead;
	if F is vagina and the player is pussy protected, say "You'd need to get your [ShortDesc of random top level protection clothing] out of the way first." instead;
	if F is asshole and the player is ass protected, say "You'd need to get your [ShortDesc of random top level ass protection clothing] out of the way first." instead;
	if F is actually occupied, say "You'd need to get the [ShortDesc of random thing filling F] out of your [variable F] first." instead;
	allocate 6 seconds;
	say "You lower your [variable F] onto the large sphere. ";
	compute toyInsertion of security interface into F;
	say "A feminine robotic voice speaks:[line break][second custom style]'SCANNING...'[roman type][line break]The pole begins vibrating!";
	stimulate F from security interface;
	let authenticating-person be the player;
	if pimp is inseminating F or pimp is the father or pimp is mating, now authenticating-person is pimp;
	if mechanic is inseminating F or mechanic is the father or mechanic is mating, now authenticating-person is mechanic;
	if demon lord is inseminating F or demon lord is the father or demon lord is mating, now authenticating-person is demon lord;
	if authenticating-person is monster:
		say "[second custom style]'AUTHORISED DNA CONFIRMED IN DETECTED SPERMATOZOA CELLS. WELCOME BACK, SIR.'[roman type][line break]The screen turns green, and the metal door slides open!";
		now security interface is authenticated;
	otherwise:
		say "[second custom style]'NO AUTHORISED DNA WAS FOUND IN ALL DETECTED SPERMATOZOA CELLS. ACCESS DENIED.'[roman type][line break]";
		now security interface is unauthenticated;
	say "The pole suddenly retracts, pulling the sphere out of your [variable F] with brutal speed and strength.";
	stimulate F from security interface;
	dislodge security interface;
	do nothing instead.


Check inserting it into security interface:
	if the player is flying, say "You're not even on the ground!" instead;
	if the noun is the player, say "You wouldn't fit!" instead;
	if the noun is not held, say "You need to be holding it." instead;
	if the noun is empty bottle, say "You don't want to put the whole thing in, but just pour it, surely? And that will require it to not be empty..." instead;
	if the noun is worn and the noun is not autoremovable, say "You'd need to remove it first." instead;
	if the player is immobile or the player is in danger, say "You're a bit busy right now!" instead;
	if the noun is id-card:
		allocate 3 seconds;
		now security interface is authenticated;
		say "You push the ID card into the slot, and with a happy beep, the interface turns green, and the metal door slides open!" instead;
	if security interface is not authenticating, say "How would you do that? Try pressing the button first." instead;
	allocate 6 seconds;
	let authentication-success be false;
	if the noun is vessel:
		if pimp is inseminating the noun or mechanic is inseminating the noun or demon lord is inseminating the noun, now authentication-success is true;
		say "You pour the contents of the [ShortDesc of the noun] into the chute, which closes. A feminine robotic voice speaks:[line break][second custom style]'SCANNING...'[roman type][line break]";
		DoseEmpty the noun;
	otherwise:
		say "You put the [ShortDesc of the noun] in the chute, which closes. A feminine robotic voice speaks:[line break][second custom style]'SCANNING...'[roman type][line break]";
		if the noun is soiled-diaper:
			if the diaper-origin of the noun matches the text "mechanic" or the diaper-origin of the noun matches the text "pimp" or the diaper-origin of the noun matches the text "Xavier", now authentication-success is true;
		only destroy the noun;
	if authentication-success is true:
		say "[second custom style]'AUTHORISED DNA DETECTED. WELCOME BACK, SIR.'[roman type][line break]The screen turns green, and the metal door slides open!";
		now security interface is authenticated;
	otherwise:
		say "[second custom style]'NO AUTHORISED DNA DETECTED. ACCESS DENIED.'[roman type][line break]";
		now security interface is unauthenticated;
	say "The pole retracts back down into the ground." instead.

To construct unique buttons for (T - security interface):
	if T is unauthenticated and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of PokeButton;
		now the ButtonCommand entry is "push [text-shortcut of T]";
		now the ButtonColour entry is lightModeFullGreen;
	otherwise if T is authenticating:
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of security interface authentication pole;
			now the ButtonCommand entry is "enter [text-shortcut of T]";
			now the ButtonColour entry is lightModeFullGreen;
		repeat with V running through held non-empty vessels:
			if ButtonTableFull is 0:
				choose a blank row in the Table of Buttons;
				now the ButtonImage entry is examine-image of V;
				now the ButtonCommand entry is "insert [text-shortcut of V] in [text-shortcut of T]";
				now the ButtonColour entry is lightModeFullGreen;
				if V is worn, now the ButtonColour entry is lightModeFullYellow;
		repeat with S running through held soiled-diapers:
			if ButtonTableFull is 0:
				choose a blank row in the Table of Buttons;
				now the ButtonImage entry is examine-image of S;
				now the ButtonCommand entry is "insert [text-shortcut of S] in [text-shortcut of T]";
				now the ButtonColour entry is lightModeFullGreen;
	otherwise if ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of map stairs down;
		now the ButtonCommand entry is "enter [text-shortcut of T]";
		now the ButtonColour entry is lightModeFullRed;

PC Monitor ends here.
