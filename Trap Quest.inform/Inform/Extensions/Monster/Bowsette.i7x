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
	if the noun is not intelligent interested undefeated awake monster, say "Your target must be intelligent, interested, undefeated and awake." instead;
	if the noun is fairy-witch, say "You can't target the fairy witch with this as she is the one who does the transforming." instead.
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
[Definition: bowsette is wenchy: decide yes.]
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

To decide which figure-name is the oral-sex-monster-image of of (M - bowsette):
	decide on figure of happy bowsette oral.
To decide which figure-name is the titfuck-monster-image of of (M - bowsette):
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

To compute teaching of (M - bowsette):
	say "[speech style of M]'I [if the bowsette-origin of M is bowsette]know you're frightened, but if you knew just why you're here, your fear would just be heightened. So let's just say... Ignorance Is Bliss[otherwise]can't remember much of what I knew before I was turned into a Turtle Princess[end if].'[roman type][line break]".

To say WhereAnswer of (M - bowsette):
	say "[speech style of M]'This is a kingdom that is ruled over by a long-forgotten princess. Strange, I have a weird urge to... take it over.'[roman type][line break]".

To say WhoAnswer of (M - bowsette):
	say "[speech style of M]'I'm a Turtle Princess, [if the bowsette-origin of M is bowsette]as you've seen, a little slow and a little green, but on the whole I'd say, super-duper[otherwise]but as you know, I wasn't always this way[end if].'[roman type][line break]";

To say StoryAnswer of (M - bowsette):
	say "[speech style of M]'[if the bowsette-origin of M is bowsette]With my magic book I will shower those clumsy lizards with my power
Until Dinosaur Land is nothing but fossil fuel!
My only problem with these spells is that I know not what they tell
So every hex leaves me perplexed and all I want are those plumbing fools[otherwise]Don't pretend you don't remember how I ended up this way[end if]...'[roman type][line break]";

To say EscapeAnswer of (M - bowsette):
	say "[speech style of M]'You don't want to stay here with me?'[roman type][line break]".

To say AdviceAnswer of (M - bowsette):
	say "[speech style of M]'Never trust a plumber.'[roman type][line break]".

To decide which number is the bartering value of (T - a fae mushroom) for (M - bowsette):
	decide on 4.
To decide which number is the bartering value of (T - nail file) for (M - bowsette):
	decide on 3.

Bowsette ends here.
