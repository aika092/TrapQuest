Bowsette by Monster begins here.

Bowsette is a monster. Bowsette is intelligent. Bowsette is male. The text-shortcut of bowsette is "bwst". Bowsette has a monster called bowsette-origin.

Bowsette has a number called temperament.
[
0: Furious about transformation
1: Transformation has made her pervy and horny
2: Happy about transformation
]

Definition: bowsette is presenting as male:
	if lady fetish is 2, decide yes;
	decide no.
Definition: bowsette is dark skinned:
	if the temperament of bowsette is 0, decide yes;
	decide no.

To decide which number is the starting difficulty of (M - bowsette):
	if the bowsette-origin of M is M, decide on 13;
	decide on the starting difficulty of the bowsette-origin of M + 3.

To decide which number is the initial maxhealth of (M - bowsette):
	let X be 10;
	increase X by (the difficulty of M * 10) / 3;
	decide on X.

To decide which number is the girth of (M - bowsette):
	if the temperament of M is 0, decide on 3;
	decide on 4.

crown-timer is a number that varies.

To compute unique unsimulated periodic effect of (M - fairy-witch):
	if crown-timer >= 0 and the player is the donator and the times-met of M > 0 and M is not in the location of the player and playerRegion is not school:
		let X be a random intelligent interested undefeated awake human monster in the location of the player;
		if X is monster:
			if X is not grabbing the player and X is not penetrating a body part:
				increase crown-timer by 1;
				if crown-timer > a random number between 25 and 200:
					check bowsettification of X.

To check bowsettification of (X - a monster):
	let M be fairy-witch;
	now crown-timer is 0;
	say "You spot [NameDesc of M] swooping through the air behind [NameDesc of X], holding a small mushroom-shaped crown! [big he of M] looks intent on dropping it on [NameDesc of X][']s head!";
	reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
	now player-numerical-response is 0;
	let N be 0;
	if the player is able to speak:
		set numerical response 1 to "shout a warning";
		increase N by 1;
	if the player is able to use manual dexterity:
		set numerical response 2 to "try to shoo [NameDesc of M] away";
		increase N by 1;
	set numerical response 0 to "do nothing";
	if N > 0, compute multiple choice question;
	if player-numerical-response is 1:
		say "[variable custom style]'Look out behind you!'[roman type][line break]";
		if X is normally buddy or (X is friendly and the player is not getting unlucky) or (X is unfriendly and the player is getting lucky):
			say "[BigNameDesc of X] swivels and looks around, spotting [NameDesc of M] and dodging out of the way in time to avoid getting the crown placed on [his of X] head. [big he of X] swipes at [NameDesc of M], forcing [him of M] to quickly swerve away in a cloud of fairy dust, giggling to [himself of M] as [he of M] goes.[if X is not normally buddy and X is unfriendly][GotLuckyFlav][end if]";
			say "[bold type]As the fairy dust gets on [NameDesc of X][bold type] you see [him of X] visibly grow in strength!!![if X is combative][line break][variable custom style]Uh-oh.[end if][roman type][line break]";
			SilentlyDifficultyUp X by 1;
			now X is stalled;
		otherwise:
			say "[BigNameDesc of X] frowns, clearly not trusting you enough to turn [his of X] back on you.[if X is not normally buddy and X is friendly][GotUnluckyFlav][end if]";
			now player-numerical-response is 0;
	if player-numerical-response is 2:
		say "By waving your hands aggressively over [NameDesc of X][']s head, you manage to scare [NameDesc of M] away before [he of M] can reach [his of M] target. [BigNameDesc of X] never saw [NameDesc of M] and doesn't seem impressed by your sudden actions.";
		FavourDown X with consequences;
	if player-numerical-response is 0:
		now crown-timer is -1;
		say "With a sly grin, [NameDesc of M] flies above [NameDesc of X] and lets the crown drop, before flying off with a giggle.";
		bowsettify X.

To bowsettify (M - a monster):
	say "[BigNameDesc of M] feels the crown land on [his of M] head. [big he of M] looks at you, thinking you've done something to [him of M] yourself.[line break][speech style of M]'What on Earth have you...'[roman type][line break]But [he of M] is cut off as a transformation begins. Before your eyes, [NameDesc of M] shapeshifts until [he of M] looks completely different!";
	dislodge M;
	now the bowsette-origin of bowsette is M;
	set up bowsette;
	now bowsette is in the location of M;
	interest bowsette;
	if M is male and (the girth of bowsette < the girth of M or M is unfriendly or (M is presenting as male and a random number between 1 and 2 is 1)):
		say "Standing before you is a brown skinned [man of bowsette] with red hair, wearing a gothic black dress. [big he of bowsette] has a spikey black collar around [his of bowsette] neck and matching spikey bracelets. Sharp white horns sprout up above [his of bowsette] ears and [he of bowsette] has fanged teeth. You can detect the bulge of an average-sized [LongDickDesc of bowsette] underneath [his of bowsette] skirt.[line break][speech style of bowsette]'What the hell?! [if the girth of bowsette < the girth of M]My [manly-penis]! No, no. no! My [manly-penis] is too small[otherwise if M is unfriendly]What evil sorcery is this[otherwise]Boobs?! Long nails?! I'm not a lady[end if]! Change me back NOW! RAAAWR!'[roman type][line break][big he of bowsette] tries to take the crown off of [his of bowsette] head but it won't budge. [big he of bowsette] looks very frustrated and angry.";
		cutshow figure of angry bowsette transform cutscene for bowsette;
	otherwise:
		say "Standing before you is a pale skinned blonde [man of bowsette] in a gothic black dress. [big he of bowsette] has a spikey black collar around [his of bowsette] neck and matching spikey bracelets. Sharp white horns sprout up above [his of bowsette] ears and [he of bowsette] has fanged teeth. A large erect [LongDickDesc of bowsette] is poking out from underneath [his of bowsette] skirt.[line break][speech style of bowsette]'What the hell?! I'm... I'm sexy! I feel... strong! ";
		if the player is getting lucky:
			now the temperament of bowsette is 2;
			say "I feel... AMAZING! Oh, yes, thank you, [NameBimbo]... I like this new form very much.'[roman type][line break][GotLuckyFlav]";
			FavourSet bowsette to the favour of M;
		otherwise:
			now the temperament of bowsette is 1;
			say "I feel... HORNY! Oh, yes, so very horny! It's time for Bowsette to FUCK!!! Starting with you...'[roman type][line break]";
			anger bowsette;
		cutshow figure of happy bowsette transform cutscene for bowsette;
	destroy M;
	now M is permanently banished.


Bowsettificating is an action applying to one thing.
Check bowsettificating:
	if debugmode is 0, say "This command only works in debug mode." instead;
	if playerRegion is school, say "You can't do this to someone in the school." instead;
	if the noun is not intelligent interested undefeated awake monster, say "Your target must be intelligent, interested, undefeated, and awake." instead;
	if the noun is fairy-witch, say "You can't target the fairy witch with this as [he of fairy-witch] is the one who does the transforming." instead.
Carry out bowsettificating:
	allocate 3 seconds;
	check bowsettification of the noun.
Understand "bowsettify [a monster]" as bowsettificating.

To compute unique periodic effect of (M - bowsette):
	if the bowsette-origin of M is not monster:
		say "[input-style]BUG: Bowsette spawned via improper means. Please report with details on what you were doing [roman type](unless you used a cheat command to make that happen yourself, in which case sorry but that won't work.)[line break]";
		destroy M.

Definition: bowsette is willing to urinate:
	if the temperament of bowsette > 0, decide yes;
	decide no.
Definition: bowsette is willing to do titfucks:
	if the temperament of bowsette > 0, decide yes;
	decide no.
Definition: bowsette is willing to do oral:
	if the temperament of bowsette > 0, decide yes;
	decide no.
Definition: bowsette is a clothes-destroyer: decide yes.

To say speech style of (M - bowsette):
	say second custom style.

Definition: bowsette is father material: decide yes.
Definition: bowsette is wenchy:
	if the player is a july 2024 top donator, decide yes;
	decide no.
Definition: bowsette is human: decide yes.

To say ShortDesc of (M - bowsette):
	say "Bowsette".
To say MediumDesc of (M - bowsette):
	say "Bowsette".
To say NameDesc of (M - bowsette):
	say "[input-style]Bowsette[roman type]".
To say BigNameDesc of (M - bowsette):
	say NameDesc of M.
To say FuckerDesc of (M - bowsette):
	say MediumDesc of M.
To say BigFuckerDesc of (M - bowsette):
	say FuckerDesc of M.
To say LongDickDesc of (M - bowsette):
	if lady fetish is 2 or futanari fetish > 0:
		say "huge [if the girth of M is 3]8-inch[otherwise]9-inch[end if] [manly-penis]";
	otherwise:
		say "green strap-on dildo";

To say MonsterDesc of (M - bowsette):
	say "This half-turtle-half-princess [if the bowsette-origin of M is not M]used to be [NameDesc of bowsette-origin of M]. [big he of M] [end if]has [if the temperament of M is 0]red hair and brown skin[otherwise]blonde hair and pale skin[end if]. [big he of M] is wearing a black dress and a crown with a mushroom inside it on [his of M] head. A subtle cloud of smoke flows from [his of M] mouth as [he of M] breathes.".

Figure of happy bowsette is the file "NPCs/MultiFloor/Bowsette/bowsette1a.jpg".
Figure of angry bowsette is the file "NPCs/MultiFloor/Bowsette/bowsette1b.jpg".
Figure of angry bowsette interested is the file "NPCs/MultiFloor/Bowsette/bowsette1c.jpg".

Figure of happy bowsette fuck is the file "NPCs/MultiFloor/Bowsette/bowsette2a.jpg".
Figure of happy bowsette fuck climax is the file "NPCs/MultiFloor/Bowsette/bowsette2c.jpg".
Figure of angry bowsette fuck climax is the file "NPCs/MultiFloor/Bowsette/bowsette2d.jpg".

Figure of happy bowsette titfuck is the file "NPCs/MultiFloor/Bowsette/bowsette3a.jpg".
Figure of happy bowsette titfuck climax is the file "NPCs/MultiFloor/Bowsette/bowsette3b.jpg".

Figure of happy bowsette oral is the file "NPCs/MultiFloor/Bowsette/bowsette4a.jpg".

Figure of happy bowsette transform cutscene is the file "NPCs/MultiFloor/Bowsette/cutscene-bowsette-1a.jpg".
Figure of angry bowsette transform cutscene is the file "NPCs/MultiFloor/Bowsette/cutscene-bowsette-1b.jpg".

Figure of happy bowsette kneel cutscene is the file "NPCs/MultiFloor/Bowsette/cutscene-bowsette-2.jpg".

Figure of happy bowsette fire cutscene is the file "NPCs/MultiFloor/Bowsette/cutscene-bowsette-3a.jpg".
Figure of angry bowsette furious cutscene is the file "NPCs/MultiFloor/Bowsette/cutscene-bowsette-3b.jpg".

To decide which figure-name is the monster-image of (M - bowsette):
	if the temperament of M > 0, decide on figure of happy bowsette;
	decide on figure of angry bowsette.

To decide which figure-name is the unfriendly-monster-image of (M - bowsette):
	if the temperament of M > 0, decide on the monster-image of M;
	decide on figure of angry bowsette interested.

To decide which figure-name is the oral-sex-monster-image of (M - bowsette):
	decide on figure of happy bowsette oral.
To decide which figure-name is the titfuck-monster-image of (M - bowsette):
	decide on figure of happy bowsette titfuck.
To decide which figure-name is the anal-sex-monster-image of (M - bowsette):
	if the temperament of M > 0, decide on figure of happy bowsette fuck;
	decide on figure of angry bowsette fuck climax.
To decide which figure-name is the vaginal-sex-monster-image of (M - bowsette):
	decide on the anal-sex-monster-image of M.

To get creampie image of (M - bowsette) in (F - a fuckhole):
	if the temperament of M > 0, cutshow figure of happy bowsette fuck climax for M;
	otherwise cutshow figure of angry bowsette fuck climax for M.

To get cleavage climax image of (M - bowsette):
	cutshow figure of happy bowsette titfuck climax for M.

To say PregGrowth of (M - bowsette):
	say "[NameDesc of M][']s [child]".

To compute labour to (M - bowsette):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player][BigNameDesc of M][']s[otherwise][BigNameDesc of M] appears almost as if on cue! [big his of M][end if] horns glows brilliantly as [he of M] places [his of M] hand on your belly, and watches as you give birth to an adorable [if inhuman pregnancy is 0]human[otherwise]quarter-turtle[end if] baby. [big he of M] picks it up and cradles it.[line break][speech style of M]'[if the temperament of M < 2]How am I going to explain how this little one looks nothing like me when I transform back?!'[otherwise]Now I definitely want to never transform back!'[end if][roman type][line break][BigNameDesc of M] cradles the tiny baby to [his of M] chest, and with a final, surprisingly happy look in your direction, [he of M] leaves you to recover you from your ordeal.";
		if the father is in the location of the player:[possibly this effect could be different]
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

Definition: bowsette is normally buddy:
	if the temperament of bowsette < 2, decide no;
	if the favour of bowsette > the aggro limit of bowsette + 4, decide yes;
	decide no.
Definition: bowsette is normally ally:
	if the temperament of bowsette < 2, decide no;
	if the favour of bowsette > the aggro limit of bowsette + 7, decide yes;
	decide no.

Definition: bowsette is normally guardian:
	if the temperament of bowsette < 2, decide no;
	if the favour of bowsette > the aggro limit of bowsette + 10, decide yes;
	decide no.

Definition: bowsette is uniquely unfriendly:
	if bowsette is friendly-fucking, decide no;
	if the temperament of bowsette is 0, decide yes;
	if bowsette is in a painting-room, decide yes;
	if bowsette is default uniquely unfriendly, decide yes;
	decide no.

To compute perception of (M - bowsette):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed]![otherwise].[end if]";
	if the temperament of M is 0:
		say "[big he of M] roars.[line break][speech style of M]'[one of]Turn me back into a human, you [cunt]!'[or]Find a way to transform me back, you [cunt]!'[or]I'll never forgive you!'[then at random][roman type][line break]";
		anger M;
	otherwise if M is unfriendly:
		say "[big he of M] growls.[line break][speech style of M]'[one of][if M is in a painting-room]Tough luck, Mario-I mean [NameBimbo]! The Princess isn't here...Gwa ha ha[otherwise if diaper quest is 1]Come here, little [boy of the player], and I'll help [']fix['] your plumbing[otherwise if the temperament of M is 1]This new form makes me want to fuck all the time[otherwise]I'm horny, and you're looking fine[end if]!'[or]Time to show you how a Turtle Princess treats skanky [slut]s!'[or]I wanna fuck. RAWR!'[then at random][roman type][line break]";
	otherwise:
		if diaper quest is 1, compute dq appearance assessment of M;
		otherwise compute appearance assessment of M;
		if M is unfriendly, compute sudden objectification of M.

To compute dq appearance assessment of (M - bowsette):
	if there is a worn currently visible messed knickers:
		say "[speech style of M]'Hahaha, what a plumbing disaster you've had down there!'[roman type][line break]";
	otherwise if the cringe appearance of the player > the cringe tolerance of M:
		FavourDown M by 2;
		say "[speech style of M]'Ugh, the way you looks reminds me of the last time a literal baby beat me in a Kart Race. How humiliating!'[roman type][line break]";
	otherwise if the player is top-wardrobe-malfunctioning:
		compute dq nip slip reaction of M;
	otherwise:
		say "[speech style of M]'Greetings, traveller. It is me, your one and only Turtle Princess, Bowsette.'[roman type][line break]".

To compute appearance assessment of (M - bowsette):
	if there is a worn currently visible messed knickers:
		if the player is diaper focused:
			say "[speech style of M]'Eww, you really are a disgusting baby aren't you?!'[roman type][line break]";
		otherwise:
			say "[speech style of M]'Yuck yuck yuck, I'm not coming near you!'[roman type][line break]";
			FavourDown M by 4;
			distract M;
			if there is worn perceived unmessed knickers, compute state check of a random worn messed knickers;
	otherwise if the appearance of the player > the outrage tolerance of M:
		FavourDown M by 2;
		if M is friendly and M is groping:
			compute grope of M;
		otherwise if M is buddy:
			say "[speech style of M]'[one of]Ho-ho-ho, I wouldn't tempt a Turtle Princess like me by looking like that, if I were you!'[or]What's up? Why do you look like you're begging me to fuck you?'[in random order][roman type][line break]";
		otherwise:
			say "[speech style of M]'[one of]You would appear like that in front of me?! Very tempting...'[or]You can't expect me to hold back if you let me catch you wandering around like this?!'[in random order][roman type][line break]";
	otherwise if the player is top-wardrobe-malfunctioning:
		compute tq nip slip reaction of M;
	otherwise:
		say "[speech style of M]'Greetings, traveller. It is me, your one and only Turtle Princess, Bowsette.'[roman type][line break]".

To compute sudden objectification of (M - bowsette):
	say "Something seems to change in the way [NameDesc of M] is looking at you.[line break][speech style of M]'In fact, I think it's time to [']fix['] your [']plumbing[']...'[roman type][line break]".

To say SatisfiedFlav of (M - bowsette):
	say "[BigNameDesc of M] licks [his of M] lips in satisfaction and loses interest.".

To compute kneeling reaction of (M - bowsette):
	if the temperament of M is 0:[angry]
		say "[one of][BigNameDesc of M]'s swaggers up to you, spitting out a tiny puff of fire.[or][BigNameDesc of M] grins.[line break][speech style of M]'Ready for my revenge?'[roman type][line break][or][BigNameDesc of M] grins.[line break][speech style of M]'Payback time, slut.'[roman type][line break][or][BigNameDesc of M] swaggers forward, stroking [his of M] hardening [DickDesc of M].[in random order]";
	otherwise if the temperament of M is 1:[whoreny]
		say "[one of][BigNameDesc of M]'s licking [his of M] lips as [he of M] stomps up to you.[or][BigNameDesc of M] smirks.[line break][speech style of M]'Ready, cutie?'[roman type][line break][or][BigNameDesc of M] smirks.[line break][speech style of M]'Time to thank you for this body you gave me!'[roman type][line break][or][BigNameDesc of M] steps forward, licking you all over with [his of M] eyes.[in random order]";
	otherwise:[happy; shouldn't come up too often]
		say "[one of][BigNameDesc of M]'s prances up to you, pumping a hardening [DickDesc of M].[or][BigNameDesc of M] smiles.[line break][speech style of M]'This will be over before you know it!'[roman type][line break][or][BigNameDesc of M] smiles.[line break][speech style of M]'Let's both enjoy this!'[roman type][line break][in random order]";
	if the player is not shameless, say " You shiver with shame.";
	if the temperament of M > 0, cutshow figure of happy bowsette kneel cutscene for M;
	strongHumiliate.

To compute (M - a monster) stomping (N - bowsette):
	if M is in the location of the player, say "[BigNameDesc of N] squeals as [NameDesc of M] grabs [him of N] by the arms and lifts [him of N] into the air.[line break][speech style of N]'What?! No, wait! You can't do this! I'M supposed to be the Big Bad Boss! AIIIIEEEEE!'[roman type][line break][BigNameDesc of M] completely ignores [NameDesc of N][']s pleas, and lowers [NameDesc of N][']s exposed asshole onto [his of M] giant shaft.[line break][speech style of N]'You're going to break me! Awoooooo!'[roman type][line break]That's the last coherent thing [NameDesc of N] says. Before long, [he of N] is a wailing mess of sexual disgrace as [NameDesc of M] does [his of M] best to turn [NameDesc of N] inside-out with [his of M] [manly-penis]. By the time [NameDesc of M] has pumped [his of N] sorry guts full of [ShortDesc of M] spunk, [NameDesc of N] is completely delirious, and no longer the confident Queen Turtle that [he of N] once was. [big he of N] is left, defeated and exhausted, trapped upside down on [his of N] shell, shooting huge spurts of [semen] out of [his of N] backside.";
	otherwise say "You hear the sound of [NameDesc of N] shouting[line break][speech style of N]'You can't do this! I'M supposed to be the Big Bad Boss! AIIIIEEEEE!'[roman type][line break]from [if N is nearby]nearby![otherwise]somewhere in the [playerRegion]![end if]";
	now N is fucked-silly.

Part 3 - Combat

[To say waitingflav of (M - a bowsette):
	if the player is able to speak:
		say "[one of][line break][variable custom style]'[if the bimbo of the player < 10]Go on then, let's get this over with.'[otherwise]You're the boss, big boy!'[end if][roman type][line break][or][or][or][or][cycling]";
	otherwise:
		say "[variable custom style][muffled sounds][roman type][line break]".]

Section 1 - Protect and Attack

To compute tripping attack of (M - bowsette):
	if egg laying fetish is 1 and the total fill of belly <= belly limit - 4 and a random number between 0 and 2 < the temperament of M:
		say "[speech style of M]'[one of]Get egged[or]Have another turtle egg[stopping]!'[roman type][line break][BigNameDesc of M] suddenly cups [his of M] hands together and shoots a blast of magic towards your belly. Your innards experience excruciating cramping as they are forced to painfully stretch, thanks to the sudden introduction of a giant egg, directly into your poor colon!";
		increase the large egg count of belly by 1;
		add M to the large-egg-origins of belly;
		PainUp 25;
		if the player is prone:
			trigger trip-wisp-trigger;
			check attack of M;
		otherwise:
			say MonsterFailedTripFlav of M;
	otherwise:
		say MonsterTripAnnounceFlav of M;
		let D be the tripping roll of M;
		if (D >= the dexterity of the player and the blind-status of M is not 1) or tutorial is 1:
			say MonsterTrippedFlav of M;
			try kneeling;
			if the player is prone and tutorial is 0:
				trigger trip-wisp-trigger;
				check attack of M;
		otherwise:
			say MonsterFailedTripFlav of M.

To compute (M - bowsette) protecting against (X - a monster):
	if M is ally:
		if M is guardian, say "[speech style of M]'[one of]An ally of the turtle clan does not fight alone[or]Rawr[stopping]!'[roman type][line break]";
		compute M default protecting against X;
	otherwise:
		say "[one of][BigNameDesc of M] watches with an entertained look on [his of M] face.[or][or][cycling]";

To say PissDrinkThreat of (M - bowsette):
	say "[speech style of M]'Turtle Toilet Time!'[roman type][line break][BigNameDesc of M] seems to promise a punishment if you don't let some in your mouth.".

To say UrinationFlav of (M - a bowsette):
	say "[BigNameDesc of M] holds [his of M] [LongDickDesc of M] inches away from your face, growling with satisfaction as a stream of [urine] flows from the tip.[if the player is modest and the urine taste addiction of the player < 7][line break][variable custom style][line break]This can't be happening[one of].[or] again![stopping][roman type][line break][end if]".

To say PresentAcceptanceFlav of (M - bowsette):
	say "[speech style of M]'Perrrrfect.'[roman type][line break][BigNameDesc of M] seems convinced by your request!".

To compute angry punishment of (M - bowsette):
	say "[speech style of M]'Raaawr! Now I'm really angry!'[roman type][line break]";
	if the temperament of M is 0:
		let LTC be the list of currently uncovered nudism-disabling tearable clothing;
		if the number of entries in LTC > 0:
			say "[BigNameDesc of M] begins clawing at your clothes with [his of M] sharp nails.";
			sort LTC in random order;
			truncate LTC to 2 entries;
			repeat with C running through LTC:
				destroy C;
		otherwise:
			say "[BigNameDesc of M] rakes at your skin with [his of M] sharp nails. It's extremely painful!";
			PainUp 20;
		cutshow Figure of angry bowsette furious cutscene for M;
	otherwise:
		say "For the briefest of moments, [BigNameDesc of M] breathes fire, stinging your skin.";
		PainUp 10;
		say "[speech style of M]'Oops! I didn't mean to do that.'[roman type][line break][BigNameDesc of M] look embarrassed.";
		cutshow Figure of happy bowsette fire cutscene for M;

To decide which number is the condom resistance of (M - bowsette):
	decide on 5 - (the temperament of M * 3).

To say NearingClimaxOral of (M - bowsette):
	say "Smoke begins to billow from [NameDesc of M][']s mouth as [he of M] picks up speed!".

To say SwallowDemand of (M - bowsette):
	say "[speech style of M]'Swallow it. Swallow it now!'[roman type][line break]".

To say PrepTaunt of (M - bowsette) in (F - a fuckhole):
	if M is unwrapped:
		if F is vagina, say "[line break][speech style of M]'You're gonna get bred by a turtle!'[roman type][line break]";
		otherwise say "[line break][speech style of M]'I'm gonna fill your ass with my turtle cum...'[roman type][line break]".

To compute anal sex of (M - bowsette):
	if the class of the player is living sex doll:
		compute sexSexDoll of M in asshole;
	otherwise if the reaction of the player is 2:[begging]
		compute sexBegging of M in asshole;
	otherwise if the reaction of the player is 1:[submitting]
		compute sexSubmit of M in asshole;
	otherwise:[resisting]
		compute sexResist of M in asshole;
	decrease the sex-length of M by 1;
	if the temperament of M is 0:
		say "[one of]As [NameDesc of M] fucks you,[or]More[stopping] [semen] constantly spurts from [his of M] [LongDickDesc of M] into your [asshole].";
		AssFill 1;
	say "[one of][M sex reaction][or][cycling]".

To compute vaginal sex of (M - bowsette):
	if the class of the player is living sex doll:
		compute sexSexDoll of M in vagina;
	otherwise if the reaction of the player is 2:[begging]
		compute sexBegging of M in vagina;
	otherwise if the reaction of the player is 1:[submitting]
		compute sexSubmit of M in vagina;
	otherwise:[resisting]
		compute sexResist of M in vagina;
	decrease the sex-length of M by 1;
	if the temperament of M is 0:
		say "[one of]As [NameDesc of M] fucks you,[or]More[stopping] [semen] constantly spurts from [his of M] [LongDickDesc of M] into your [vagina].";
		PussyFill 1;
	say "[one of][M sex reaction][or][cycling]".

To compute post climax effect of (M - bowsette) in (F - a body part):
	if there is a worn tattoo and the number of worn left-asscheek tattoo is 0 and the number of worn both-asscheeks tattoo is 0:
		summon brainless bimbo tattoo;
		say "You yelp as a red mark of a Turtle King appears on your ass cheek!";
		cutshow brainless bimbo tattoo;
	if brainless bimbo tattoo is worn:
		increase the stolen-intelligence of brainless bimbo tattoo by 1;
		say "You feel the [brainless bimbo tattoo] reducing your intelligence[one of][or] even more[stopping]!".

Section 2 - DQ

Definition: bowsette is willing to forcefeed:
	decide yes.

To decide which number is the forcefeed-length of (M - bowsette):
	decide on 1.

To compute forcefeed round (N - a number) of (M - bowsette):
	say "[BigNameDesc of M] produces a peculiar-looking mushroom, which reminds you of the green and pink fae mushrooms in the forest, but larger and somehow more foreboding.[line break][speech style of M]'Open wide!'[roman type][line break][BigNameDesc of M] start shoving it down your throat, and as soon as you gulp it down, you feel something hooking into your bellybutton from the inside, and then pulling you through time and space, to somewhere you're confident you *don't* want to go...";
	dislodge M;
	compute bad teleport.

bowsette-dq-punishments is a diaper punishment. The priority of bowsette-dq-punishments is 2.

Definition: bowsette-dq-punishments (called P) is appropriate:
	if current-monster is bowsette, decide yes;
	decide no.

To compute punishment of (P - bowsette-dq-punishments):
	if the player is not in BowsettePainting01 and watersports fetish is 1 and current-monster is willing to urinate and the bladder of current-monster >= 600:
		compute current-monster urinating;
	otherwise:
		say "[BigNameDesc of bowsette] punches the air, and an invisible cube, hovering in mid-air, suddenly becomes visible where [he of bowsette] punched. There is a question mark icon on each side. Next, a giant purple mushroom appears from the top, and begins to somehow glide along the upper surface as if dragged by an invisible force, and then drops to the ground once it has progressed to the edge of the cube. From there, it begins to travel in a straight line towards you.[line break][speech style of bowsette]'Hold still now...'[roman type][line break][BigNameDesc of bowsette] holds you in place and prevents you from moving as the mushroom approaches you. When it finally touches you, there's a weird digital sound effect, and it just disappears. What has it done to you?!";
		if the player is in BowsettePainting01:
			say "You realise that you can no longer feel your [if diaper messing >= 3]bowels[otherwise]bladder[end if].[line break][variable custom style][if the player is able to speak]'How long is this going to last?!'[line break][speech style of bowsette]'Oh for a good few accidents...'[otherwise]How long is this going to last?![end if][roman type][line break]";
			if diaper messing >= 3, increase temporary-rectum-incontinence by 3;
			otherwise increase temporary-bladder-incontinence by 3;
		otherwise:
			say "You feel less strong...";
			StrengthDown 2;
		satisfy bowsette.

Section 3 - Damage

To say DamageReactHealthy of (M - bowsette):
	say "[big he of M] growls in pain!".

To say DamageReactDamaged of (M - bowsette):
	say "[big he of M] roars in pain!".

To say DamageReactTired of (M - bowsette):
	say "[big he of M] staggers, letting out a pained [speech style of M]'Rawr!'[roman type][line break]".

To say DamageReactWeak of (M - bowsette):
	say "[big he of M] squeals, struggling to maintain [his of M] balance!".

Definition: bowsette is automatically banishable: [Will this NPC automatically resolve their disappearance rather than giving the player options on what to do?]
	if bowsette is in a painting-room, decide yes;
	decide no.

To say BanishForceFlav of (M - bowsette):
	say "You flick [his of M] nose threateningly.[line break][speech style of M]'Grr! I was a bit careless. This is not as I had planned...but I still have the power of the Stars, and I still have a hot round peach. Bwa ha ha! You'll get no more Stars from me! I'm not finished with you yet, but I'll let you go for now. You'll pay for this... later!'[roman type][line break] [BigNameDesc of M] lets out a final offended [speech style of M]'Rawr!'[roman type], and begins to flee!".

To standard loot (M - bowsette):
	let X be a random off-stage plentiful accessory;
	unless X is nothing:
		now X is solid gold;
		set shortcut of X;
		blandify and reveal X;
		now X is in the location of the player;
		compute loot dropping of X by M;
		increase the loot dropped of M by 1;
		compute autotaking X.

Part 4 - Conversation

To say VanityAccepted of (M - bowsette):
	say "[speech style of M]'Sure, I've got nothing better to do... for now.'[roman type][line break]".

To say VanityAnnoyed of (M - bowsette):
	say "[speech style of M]'For now, while I remain interested in you.'[roman type][line break]".

To say FirstResponse of (M - bowsette):
	say "[speech style of M]'Hello, puny human.'[roman type][line break]".

To say RepeatResponse of (M - bowsette):
	say FirstResponse of M.

To compute teaching offer of (M - bowsette):
	say "[speech style of M]'I [if the bowsette-origin of M is bowsette]know you're frightened, but if you knew just why you're here, your fear would just be heightened. So let's just say... Ignorance Is Bliss[otherwise]can't remember much of what I knew before I was turned into a Turtle Princess[end if].'[roman type][line break]".

To say WhereAnswer of (M - bowsette):
	say "[speech style of M]'This is a kingdom that is ruled over by a long-forgotten princess. Strange, I have a weird urge to... take it over.'[roman type][line break]".

To say WhoAnswer of (M - bowsette):
	say "[speech style of M]'I'm a Turtle Princess, [if the bowsette-origin of M is bowsette]as you've seen, a little slow and a little green, but on the whole I'd say, super-duper[otherwise]but as you know, I wasn't always this way[end if].'[roman type][line break]";

To say StoryAnswer of (M - bowsette):
	say "[speech style of M]'[if the bowsette-origin of M is bowsette]With my magic book I will shower those clumsy lizards with my power Until Dinosaur Land is nothing but fossil fuel! My only problem with these spells is that I know not what they tell, So every hex leaves me perplexed and all I want are those plumbing fools[otherwise]Don't pretend you don't remember how I ended up this way[end if]...'[roman type][line break]";

To say EscapeAnswer of (M - bowsette):
	say "[speech style of M]'You don't want to stay here with me?'[roman type][line break]".

To say AdviceAnswer of (M - bowsette):
	say "[speech style of M]'Never trust a plumber.'[roman type][line break]".

To decide which number is the bartering value of (T - a fae mushroom) for (M - bowsette):
	decide on 4.
To decide which number is the bartering value of (T - nail file) for (M - bowsette):
	decide on 3.

Section 4 - Dominant Sex

To decide which number is the dominationtype of (M - bowsette) using (F - penis):
	decide on FUCK-PENETRATION.

To penetration dominate (M - bowsette):
	let C be a random worn bottom level protection clothing;
	let L be sexual-penis-length;
	let T be the temperament of M;
	let G be a random worn gag;
	let V be a random worn breast covering clothing;
	if sexual-penis-length > 3:[TODO: maybe a set of big penis variations.]
		if T is 0:
			say "[NameDesc of M] resists as you try to pull off [his of M] dress, and the fabric rips in the struggle. [big his of M] brown cheeks flush with rage as [if lady fetish < 2][his of M] big tits flop free[otherwise]as [he of M] looks down at [his of M] exposed nipples[end if], and [he of M] leaps at you with [his of M] claws outstretched. You topple to the ground as you catch [his of M], [if C is clothing and C is not strapon-panties]using one hand to fish your [sexual-player-penis] out of your [ShortDesc of C][otherwise if the player is a bit horny]grinding your [SexDesc of penis] between [his of M] thighs[otherwise]grinding your hardening [sexual-player-penis] between [his of M] thighs[end if] as you fend off [his of M] attempts to bite and scratch every bit of exposed flesh [he of M] can find. [big he of M] makes a noise somewhere between a growl and a moan as you push your [SexShaft] into [his of M] [if lady fetish < 2]wet[otherwise]hot[end if] [HoleDesc of M], slapping you as [he of M] begins to bounce on your [sexual-player-penis]. At some point, [his of M] attempts to bite your face are replaced with attempts to bite into your lips and tongue, and [his of M] nails dig into your back as [he of M] picks up speed. [big his of M] moans lengthen, your breath quickens, your [SexShaft] throbs, and [his of M] nipples harden against your chest as you bring each other closer and closer to climax. Your breath hitches as you nearly cross the edge, but [his of M] nails-! [big his of M] nails are about to [if V is clothing]tear your [ShortDesc of V]! [otherwise]break the skin! [end if][line break]Do you stop? [if V is clothing]It might be the only way to protect your [ShortDesc of V].[otherwise]Its going to hurt a lot if you try to finish.[end if]";
			if the player is reverse bimbo consenting:
				say "You untangle yourself from [NameDesc of M], your unspent [sexual-player-penis] throbbing dejectedly as you get to your feet.";
				now player-fucking is DOMINANT-DOMINANT;
				passively stimulate penis from M times 2;
				FavourDown M by 2;
				strongDignify;
				say AfterDominationComment 1 of M;
			otherwise:
				say "[big he of M] screams as [he of M] cums, thighs gripping your waist as [his of M] nails shred [if V is clothing]your [ShortDesc of V]. Its a real shame, but[otherwise]your poor back. It hurts like hell, but[end if] you soldier through, ramming your [SexDesc of penis] home as you unleash your [load] deep inside [his of M] clenching [HoleDesc of M].";
				if V is clothing:
					destroy V;
					PainUp 1;
				otherwise:
					PainUp 2;
				strongDignify;
				now player-fucking is DOMINANT-DOMINANT;
				orgasm;
				orgasm M;
				FavourUp M;[She's always mad, but why not.]
				say AfterDominationComment 0 of M;
		otherwise if T is 1:
			say "You grab the front of [NameDesc of M]'s dress and pull, [if lady fetish < 2]causing [his of M] huge tits to flop free. [otherwise]exposing [his of M] bare chest. [end if][big he of M] licks [his of M] lips as you pull it the rest of the way off, throwing [if C is not strapon-panties and C is clothing]an arm over your shoulder as [he of M] frees your [SexDesc of penis] from your [ShortDesc of C]. [otherwise if the player is a bit horny][his of M] arms over your shoulder as [he of M] grinds [his of M] [HoleDesc of M] on your [SexDesc of penis]. [otherwise]one arm over your shoulder as the other strokes your hardening [sexual-player-penis]. [end if] You appreciate [his of M] enthusiasm, fondling [his of M] big ass as you guide your [SexShaft] into [his of M] tight [HoleDesc of M]. [big his of M] nipples prod your chest as [he of M] slips [his of M] legs around your waist, and [his of M] nails tickle your back as [his of M] lips claim your mouth. You try to start slow, but [he of M] has other plans, moans shrieking out of [his of M] throat as [he of M] throws [his of M] weight into your strokes. You fuck [him of M] harder and harder just to keep up, your breath only beginning to quicken as [his of M] moans are growing more and more urgent. [big he of M] peaks before your finish line is even in sight, shudering as [his of M] [HoleDesc of M] clamps down and [his of M] nails dig into your back. You'd think you'd have plenty of time to catch up, but [his of M] nails-! [big his of M] nails are about to [if V is clothing]tear your [ShortDesc of V]! [otherwise]break the skin! [end if][line break]Do you stop? [if V is clothing]It might be the only way to protect your [ShortDesc of V].[otherwise]Its going to hurt a lot if you try to finish.[end if]";
			if the player is reverse bimbo consenting:
				say "You untangle yourself from [NameDesc of M], your unspent [sexual-player-penis] hard and [if lady fetish < 2]dripping with [his of M] juices[otherwise]still tingling from [his of M] orgasm[end if] as you get to your feet.";
				orgasm M;
				passively stimulate penis from M;
				moderateDignify;
				now player-fucking is DOMINANT-NEUTRAL;
				say AfterDominationComment 1 of M;
			otherwise:
				say "You keep going without missing a beat, forcing yourself to ignore the pain as [his of M] nails shred [if V is clothing]your [ShortDesc of V]. [otherwise]your poor back. [end if] [big he of M] doesn't stop either, and [his of M] voice is wet with need as your hips *CLAP* *CLAP* *CLAP* together. Together, your efforts finally bring you to the edge, and you moan at each other as your [SexDesc of penis] shoots its load into [his of M] clenching [HoleDesc of M]";
				FavourUp M by 2;
				orgasm;
				orgasm M;
				moderateDignify;
				now player-fucking is DOMINANT-NEUTRAL;
				say AfterDominationComment 0 of M;
		otherwise:
			say "You grab the front of [NameDesc of M]'s dress and pull, [if lady fetish < 2]causing [his of M] huge tits to flop free. [otherwise]exposing [his of M] bare chest. [end if][big he of M] blushes as you pull it the rest of the way off, tentatively throwing an arm over your shoulder as [he of M] [if C is not strapon-panties and C is clothing]frees your [SexDesc of penis] from your [ShortDesc of C]. [otherwise if the player is a bit horny][he of M] strokes your [SexDesc of penis]. [otherwise]strokes your [sexual-player-penis] to hardness. [end if]You [if G is clothing]give [him of M] what passes for a smirk[otherwise]smirk at [him of M][end if], fondling [his of M] big ass as you guide your [SexShaft] into [his of M] tight [HoleDesc of M]. [big he of M] leans against your body, moans escaping from [his of M] throat and [his of M] nails digging into your back as [if lady fetish is 2][he of M] begins to throw [his of M] weight into[otherwise][his of M] tits jiggle from[end if] your strokes. [big his of M] moans lengthen, your breath quickens, your [SexShaft] throbs, and [his of M] nipples harden against your chest as you bring each other closer and closer to climax. Your breath hitches as you nearly cross the edge, but [his of M] nails-! [big his of M] nails are about to [if V is clothing]tear your [ShortDesc of V]! [otherwise]break the skin! [end if][line break]Do you stop? [if V is clothing]It might be the only way to protect your [ShortDesc of V].[otherwise]Its going to hurt a lot if you try to finish.[end if]";
			if the player is reverse bimbo consenting:
				say "You untangle yourself from [NameDesc of M], your unspent [sexual-player-penis] throbbing dejectedly as you get to your feet.";
				orgasm M;
				passively stimulate penis from M;
				FavourDown M by 2;
				moderateDignify;
				now player-fucking is DOMINANT-DOMINANT;
				say AfterDominationComment 1 of M;
			otherwise:
				say "You keep going without missing a beat, forcing yourself to ignore the pain as [his of M] nails shred [if V is clothing]your [ShortDesc of V]. [otherwise]your poor back. [end if] [big he of M] doesn't stop either, and [his of M] voice is wet with need as your hips *CLAP* *CLAP* *CLAP* together. Together, your efforts finally bring you to the edge, and you moan at each other as your [SexDesc of penis] shoots its load into [his of M] clenching [HoleDesc of M]";
				FavourUp M by 2;
				orgasm;
				orgasm M;
				moderateDignify;
				now player-fucking is DOMINANT-DOMINANT;
				say AfterDominationComment 0 of M;
		if lady fetish < 2, FuckGet;
		otherwise AnalGet;
	otherwise:
		say "You reach for [NameDesc of M]'s dress, but [he of M] grabs you by the wrists before you manage to touch it.[line break][speech style of M]'[if T is 0]What the fuck gives YOU the right to see ME naked?[otherwise if T is 1]I love getting naked, but are you sure that won't be too much for you?[otherwise]'Sorry, do I look like the proud, beautiful princess of [men of M] who can't stop getting naked?'[end if][roman type][if G is clothing]Your [ShortDesc of G] prevents you from offering much of a response, so[otherwise]You try to squeak out a response, but[end if] [he of M] continues.[line break][speech style of M]'[if T is 0]If you want to see my tits, you're gonna watch ME satisfy myself first.[otherwise if T is 1]Why don't you let me [']take care of myself['], and then I'll take off my dress for you.[otherwise]Well, I guess I don't mind if it's you, but I-I need to get in the mood first.[end if]'[roman type][line break]Will you wait for [him of M] to masturbate?";
		if the player is bimbo consenting:
			if T is 0:
				say "You wait patiently as [NameDesc of M] reaches under [his of M] dress, smirking as [he of M] begins to masturbate. Your cock twitches as [he of M] makes a show of fondling [his of M] chest, and it throbs as exaggerated moans erupt from [his of M] throat. Frustrated, you find yourself reaching for your [SexDesc of penis], but [he of M] wards your hands away with a fireball before you can get close. [big he of M] forces you to watch [him of M] dramatically pleasure [him of M]self from start to finish, until finally, [he of M] reaches a slick hand up to the hem of [his of M] dress and—[line break]";
			otherwise if T is 1:
				say "You wait patiently as [NameDesc of M] reaches under [his of M] dress, staring right at you as [he of M] begins to masturbate. Your cock twitches as [he of M] makes a show of fondling [his of M] chest, and it throbs as [italic type]wet[roman type] moans erupt from [his of M] throat. Despite yourself, you find yourself reaching for your [SexDesc of penis], but the thought of cumming before [he of M] just barely convinces you to stay your hand. Somehow, you manage to watch [him of M] loudly pleasure [himself of M] from start to finish, until finally, [he of M] reaches a slick hand up to the hem of [his of M] dress and—[line break]";
			otherwise:
				say "You wait patiently as [NameDesc of M] reaches under [his of M] dress, averting [his of M] as [he of M] begins to masturbate. Your cock twitches as [he of M] fondles [his of M] chest, and it throbs as moans force themselves from [his of M] throat. [big his of M] cheeks burn as [he of M] allows you to watch [him of M] pleasure [himself of M] from start to finish, briefly making eye contact as [he of M] reaches a slick hand up to the hem of [his of M] dress and—[line break]";
			say "Your [SexShaft] spasms the very instant [he of M] reveals [his of M] [if lady fetish < 2]tits[otherwise]nipples[end if], coating them with your [load].";
			orgasm;
			orgasm M;
			say AfterDominationComment 2 of M;
		otherwise:
			say "You decide a little nudity isn't worth passing up a chance for sex, [if T is 0]and [NameDesc of M] decides to make sure it really is a 'chance'. [Big he of M] maintains a painful grip on your wrists, not allowing you to lift [his of M] dress even just to see what you're doing. You are left with no choice but to[otherwise if T is 1]though [NameDesc of M] seems determined to make you regret that choice as much as possible. [big his of M] fingers dance along the upper edge of [his of M] dress, teasing you with the possibility of her tits popping out. You are left with no choice but to close your eyes and[otherwise]though [NameDesc of M] doesn't seem to agree. [big he of M] fixes you with a look somewhere between disbelief and relief, forgetting to let go of your wrists. You are left with no choice but to[end if] blindly press your hips against [his of M] body, your [SexDesc of penis] chafes as it as it rubs against fabric. The sensation definitely isn't pleasant, but the more your [SexShaft] drags and catches and grinds against it, the faster and more laboured your breathing becomes. The moment your tip actually touches something warm, you lose control, [if G is clothing]emitting a muffled moan[otherwise]moaning[end if] as you shoot your [load] all over what you hope is [his of M] [HoleDesc of M].";
			now player-fucking is DOMINANT-NEUTRAL;
			orgasm;
			slightDignify;
			if lady fetish < 2, FuckGet;
			otherwise AnalGet;
			say AfterDominationComment 3 of M.

To ride dominate (M - bowsette):
	let F be player-fucker;
	say "You grab [NameDesc of M] by the front of [his of M] dress, spinning [him of M] around once... twice... three times before letting go. [Big he of M] slams into a [if playerRegion is Woods]tree[otherwise]wall[end if], [his of M] head bobbing dizzily as you straddle [him of M] and wrap your hand around [his of M] [DickDesc of M].[line break][speech style of M]'UH-!'[roman type][line break]It THROBS in your hand, instantly [if M is wrapped]filling the condom with[otherwise]coating your hand in[end if] [semen]. It occurs to you that what you're planning is way more intense than that ...Are you sure you want to go through with this?";
	let T be the temperament of M;
	if the player is bimbo consenting:
		say "You don't let go, using [his of M] load to lubricate [cockshaft of M] as you bring the still sticky tip to your [if F is vagina]entrance[otherwise]sphincter[end if]. [big he of M] [if T is 2]tries to glare at you, but can't help rolling[otherwise if T is 1]moans and rolls[otherwise]rolls[end if] [his of M] eyes back as [his of M] [LongDickDesc of M] spasms again, [if M is wrapped]trapping a new[otherwise]sending a[end if] squadron of creamy turtle soldiers [if M is wrapped]inside the condom[otherwise if F is vagina and the player is able to get pregnant]straight for your womb[otherwise]into your [variable F][end if]. Bouncing your hips knowing [if M is wrapped]how close you are to getting creampied[otherwise if F is vagina and the player is able to get pregnant]how much you're risking getting pregnant[otherwise]you're just accepting the creampie[end if] makes it way more intense, and before long it overwhelms you, and you throw your head back as you climax as [he of M] blows [his of M] load one last time.";
		moderateDignify;
		orgasm;
		compute M finishing in F;
		orgasm M;
		say AfterDominationComment 0 of M;
	otherwise:
		say "You abruptly let go of [his of M] shaft, [if M is wrapped]trying to purge the sensation of the bulging condom from your mind.[otherwise if bukkake fetish is 1]flinging [his of M] [semen] in [his of M] face.[otherwise]flinging [his of M] [semen] to the ground.[end if]";
		slightDignify;
		orgasm M;
		say AfterDominationComment 1 of M.

To say AfterDominationComment (N - a number) of (M - bowsette):
	let T be the temperament of M;
	if T is 2:
		if N is 0:
			say "[speech style of M]'[one of]Nice job. I'll remember that later when I'm kicking your ass.'[or]Yeah I came, so what. This doesn't change ANYTHING.'[in random order][roman type][line break]";
		otherwise if N is 1:
			say "[speech style of M]'[one of]HEY! I was close you fucking- RRGH!'[or]OH. I'm sorry. Was I cumming too hard for you? Bitch.'[in random order][roman type][line break]";
		otherwise if N is 2:
			say "[speech style of M]'[one of]You're welcome. Enjoy that memory while I'm burning you to a crisp.'[or]Good job waiting til the end, I guess. Hold onto that accomplishment, it'll get you through the hell I'm putting you through later.'[in random order][roman type][line break]";
		otherwise if N is 3:
			say "[speech style of M]'[one of]You're an idiot.'[or]You're a moron.'[in random order][roman type][line break]";
	if T is 1:
		if N is 0:
			say "[speech style of M]'[one of]Mmm, I should do that to you next time!'[or]Getting fucked is so much fine! I bet you can't wait for your turn!'[in random order][roman type][line break]";
		otherwise if N is 1:
			say "[speech style of M]'Oh, sorry about that. I guess I'll have to make it up to you later~!'[roman type][line break]";
		otherwise if N is 2:
			say "[speech style of M]'[one of]Ooh, I guess I really was too much for you. We'll fix that.'[or]Heehee, I'm happy you like me! Give me awhile, and I'll show you how much I LIKE you too.'[in random order][roman type][line break]";
		otherwise if N is 3:
			say "[speech style of M]'[one of]It's alright. I'm a better top anyway.'[or]Its ok. We can have some REAL sex later.'[in random order][roman type][line break]";
	if T is 0:
		if N is 0:
			say "[speech style of M]'Phew. That was kind of... nice.'[roman type][line break]";
		otherwise if N is 1:
			say "[speech style of M]'[one of]I was so close...'[or]Did you really have to stop?'[in random order][roman type][line break]";
		otherwise if N is 2:
			say "[speech style of M]'[one of]My body really is sexy, huh?'[or]I guess I did like that.'[in random order][roman type][line break]";
		otherwise if N is 3:
			say "[speech style of M]'[one of]You passed up my naked body for THAT?!'[or]Did you think I was lying or something? Idiot.'[in random order][roman type][line break]".

To say DominanceFailure of (M - bowsette):
	say "You try to grab [NameDesc of M] by the horns, but [he of M] shakes you off, knocking you to the ground and pinning you under [his of M] foot.".
To compute failed dominance punishment of (M - bowsette):
	if the player is getting lucky:
		say "[speech style of M]'Gwahahaha! You really tried to dominate me? ME?! The king of the- well, queen of- ah, well...whatever. You get it.'[roman type][line break] [NameDesc of M] smirks down at you.";
		compute sissy punishment of M;
	otherwise:
		say "[speech style of M]'Gwahahaha! You really tried to dominate me? ME?! The king of the- well, queen of- ah, well...whatever. I'm going to destroy your ass now.'[roman type][line break] [NameDesc of M] takes advantage of your compromising position to stuff [his of M] [LongDickDesc of M] up your [variable asshole]!";
		now M is penetrating asshole;
		ruin asshole;
		set up sex length of M in asshole;
		now another-turn-flavour is the substituted form of "[BigFuckerDesc of M] starts thrusting!";
		now another-turn is 1.

Bowsette ends here.
