Rectum by Player begins here.

Part - Player Definitions

[!<rectum:Integer>*

0: Rectum mechanics inactive
Therefore player never has a fully empty rectum when inactive, and rectum should always be 'reset' to 1 instead of 0.
Ideally, use the 'reset rectum' procedure.

*!]
rectum is a number that varies.

[!<suppository:Integer>*

How much additional pressure there is from chemical & magical effects to go. If it's above 0, player will feel like they need to go.

*!]
suppository is a number that varies.

[!<ResetRectum>+

Resets rectum in a sensible fashion. Prevents against accidentally activating rectum mechanics.

+!]
To reset rectum:
	if rectum > 0, now rectum is 1;
	now suppository is 0.

To reset rectum after messing:
	reset rectum;
	progress quest of mess-quest.

[!<YourselfIsFull>+

Does the player need to go number 2?

+!]
Definition: yourself is full:
	if (there is a worn total protection diaper or diaper messing >= 4) and (rectum > 3 or suppository > 0), decide yes;
	decide no.

[!<YourselfIsFeelingFull>+

Does the player feel like they need to go number 2?

+!]
Definition: yourself is feeling full:
	if the player is full and ((the player is not incontinent and failed potty training tattoo is not worn) or suppository > 0 or there is worn desperation clothing), decide yes;
	decide no.

To decide which number is expelColour:
	if failed potty training tattoo is worn, decide on 16777215; [white]
	unless the player is feeling full or the total squirtable fill of belly > 0, decide on TQcolour of grey; [white]
	if the squirt timer of belly > 0:
		decide on lightModeFullRed; [red]
	if there is worn enema-helping clothing, decide on TQcolour of grey; [white]
	let R-component be 255;
	let G-component be 0;
	let B-component be 0;
	[gradually go from pale red to red]
	if the holding strain of belly > 0:
		now G-component is 129 - the holding strain of belly;
	otherwise:
		now G-component is (rectum-risky-level - rectum) * 32;
	if G-component > 128, now G-component is 128;
	if G-component < 0, now G-component is 0;
	now B-component is G-component;
	decide on (R-component * 65536) + (G-component * 256) + B-component.

fullness-time is a number that varies.
To decide which number is fullness-penalty:
	if there is a worn baby bonnet, decide on 0;
	decide on fullness-time / 25.

[!<FullnessCausesIntelligenceLossRule>+

Over time as the player refuses to go, they get a larger and larger (temporary) intelligence penalty as they become more and more distracted by their bowels.

+!]
An all later time based rule (this is the fullness causes intelligence loss rule):
	let F be fullness-penalty;
	if the player is feeling full:
		increase fullness-time by 1;
		if the remainder after dividing fullness-time by 25 is 0:
			if there is a worn baby bonnet,	say "The pressure on your bowels has [if fullness-time > 25]further [end if]increased, but your baby bonnet is helping you handle the sensations without getting distracted.";
			otherwise say "[bold type][if F is 0]The pressure on your bowels is [one of][or]once again [stopping]making it difficult to concentrate. [roman type]Your intelligence is slightly lowered until you go number two.[otherwise]The pressure on your bowels has grown even larger, further reducing your intelligence until you relieve yourself.[roman type][line break][end if]";
	otherwise:
		now fullness-time is 0;
		if F > 0, say "Now that your bowels are empty, your ability to concentrate improves and your intelligence returns.".

To decide which number is messyDiaperSmellGrossnessLevel: decide on 7. [The level of grossness addiction where messy diaper stuff becomes less bad. Can be tweaked]
To decide which number is messyDiaperSmellEnjoymentLevel: decide on messyDiaperSmellGrossnessLevel + 7. [The level of grossness addiction where messy diaper stuff has no effect. Can be tweaked]

To decide which number is wetDiaperSmellGrossnessLevel: decide on 4. [When it's right in your face but not touching your face. Can be tweaked]
To decide which number is wetDiaperFacesitGrossnessLevel: decide on 6. [The level of grossness addiction where wet diaper facesitting becomes less bad. Can be tweaked]
To decide which number is wetDiaperFacesitEnjoymentLevel: decide on wetDiaperFacesitGrossnessLevel + 7. [The level of grossness addiction where wet diaper facesitting causes arousal. Can be tweaked]

To decide which number is messyDiaperFacesitGrossnessLevel: decide on 11. [The level of grossness addiction where messy diaper facesitting becomes less bad. Can be tweaked]
To decide which number is messyDiaperFacesitEnjoymentLevel: decide on messyDiaperFacesitGrossnessLevel + 7. [The level of grossness addiction where messy diaper facesitting causes arousal. Can be tweaked]

Definition: yourself is tolerating messy diapers:
	if the grossness addiction of the player >= messyDiaperSmellGrossnessLevel, decide yes;
	decide no.
Definition: yourself is enjoying messy diapers:
	if the grossness addiction of the player >= messyDiaperSmellEnjoymentLevel, decide yes;
	decide no.

Definition: yourself is tolerating messy facesits:
	if the grossness addiction of the player >= messyDiaperFacesitGrossnessLevel, decide yes;
	decide no.
Definition: yourself is enjoying messy facesits:
	if the grossness addiction of the player >= messyDiaperFacesitEnjoymentLevel, decide yes;
	decide no.

Definition: yourself is tolerating wet facesits:
	if the grossness addiction of the player >= wetDiaperFacesitGrossnessLevel, decide yes;
	decide no.
Definition: yourself is enjoying wet facesits:
	if the grossness addiction of the player >= wetDiaperFacesitEnjoymentLevel, decide yes;
	decide no.

[!<YourselfIsUpsetAboutMess>+

Checks if a player is messy and really unhappy about it.

+!]
Definition: yourself is upset about mess:
	if the player is tolerating messy facesits, decide no;
	if the player is air breathing vulnerable:
		if there is a messy monster penetrating face, decide yes;
		if diaper messing >= 6 and diaper-box is worn and diaper-box is diaper-dumped, decide yes;
		if the player is tolerating messy diapers, decide no;
		if the location of the player is nonstandard:
			if diaper messing >= 6 and (there is a carried soiled-diaper or there is a soiled-diaper in the location of the player), decide yes;
			if there is a messed knickers in the location of the player or there is a carried messed knickers, decide yes;
		if turnsWithSoiledDiaper > 2 * (the square root of the grossness addiction of the player), decide yes;
		let D be a random worn perceived messed diaper;
		if D is diaper:
			if the player is an adult baby, decide no;
			if diaper quest is 1 and the class of the player is priestess, decide no;
			decide yes;
		if there is a worn perceived messed knickers, decide yes;
	otherwise:
		if tubesuit is worn and there is worn perceived messed knickers, decide yes;
	decide no.

Definition: yourself is upset about sitting in mess:
	if there is a worn perceived messed knickers and the player is upset about mess, decide yes;
	decide no.

Part - Messing Checks

[!<diaperSceneHandled:Integer>*

For scene messing, we need to know whether the mess will be cleaned up by another effect, or whether we need to have someone come into clean it up in a deus-ex-machina fashion.

*!]
diaperSceneHandled is a number that varies.
The diaper scene handling rules is a rulebook.
This is the diaper scene unhandled by default rule:
	now diaperSceneHandled is 0.
The diaper scene unhandled by default rule is listed first in the diaper scene handling rules.
This is the diaper scene might happen during immobility rule:
	if the player is immobile, now diaperSceneHandled is 1.
The diaper scene might happen during immobility rule is listed last in the diaper scene handling rules.
This is the diaper scene handled during chess scene rule:
	if chess table is grabbing the player, now diaperSceneHandled is 1.
The diaper scene handled during chess scene rule is listed last in the diaper scene handling rules.
This is the diaper scene handled during boss fights rule:
	if robomatron is in the location of the player or vine boss is in the location of the player, now diaperSceneHandled is 1.
The diaper scene handled during boss fights rule is listed last in the diaper scene handling rules.

[!<ComputeSoiling>+

Punish the player for remaining messy, and then pass on to the correct messing checking procedure

+!]
To compute soiling:
	if diaper messing >= 3 and chess table is grabbing the player and chess-victor of chess-lesson is 0:
		compute chess soiling;
	otherwise:
		unless current-predicament is team-quiz-predicament and the questionFails of team-quiz-predicament < 2, check real messing.

To compute wallowing:
	if there is a worn perceived messed knickers:
		if diaper quest is 1 and the class of the player is priestess:
			say "You continue to wallow in your own mess[one of]. But instead of feeling grossed out, you feel a sense of holy contentment welling up inside of you![or], but in a good, holy way.[stopping]";
		otherwise if the player is an adult baby:
			say "You continue to wallow in your own mess[one of]. But instead of feeling grossed out, you feel a sense of innocent ambivalence.[or], but as a diapered adult baby, you don't mind at all.[stopping]";
		otherwise:
			say "You continue to wallow in your own mess.";
			SlowGrossOut 5;
	otherwise if there is a worn perceived wet diaper:
		let D be a random worn diaper;
		if the diaper addiction of the player > 10:
			say "The sensation of wallowing in your [printed name of D] gradually arouses you.";
			passively stimulate vagina from D;
		otherwise if the diaper addiction of the player < 4:
			say "You continue to wallow in your wet diaper.";
			SlowGrossOut 3.


The player has a number called raw-irritable-rectum.
To IrritableRectumUp (N - number):
	if diaper messing >= 3 and the raw-irritable-rectum of the player < 1000:
		say "You sense that your bowels will be more irritable in the future.";
		SilentlyIrritableRectumUp N.
To SilentlyIrritableRectumUp (N - number):
	if diaper messing >= 3 and the raw-irritable-rectum of the player < 1000:
		increase the raw-irritable-rectum of the player by N;
		if the raw-irritable-rectum of the player > 1000, now the raw-irritable-rectum of the player is 1000.

To decide which number is the irritable-rectum of the player:
	let I be the raw-irritable-rectum of the player;
	if I > 1000, decide on 1000;
	decide on I.

irritated-rectum is initially false.

An all time based rule (this is the irritable rectum rule):
	if the player is feeling full:
		if irritated-rectum is false:
			let R be a random number between 1 and 1000;
			if R <= the irritable-rectum of the player:
				now irritated-rectum is true;
				say "[bold type]Your irritable bowels are starting to send urgent messages of extreme discomfort to your brain. Until you no longer feel like you need to pee, your strength, dexterity and intelligence will all be significantly reduced.[roman type][line break]";
	otherwise if irritated-rectum is true:
		now irritated-rectum is false;
		say "The pressure in your bowels has gone, and your strength, dexterity and intelligence are no longer being dampened.".

[How high will the game allow rectum incontinence to go?]
To decide which number is the max-rectum-incontinence of the player:
	decide on 10 - (incontinence protection * 2).

The player has a number called raw-rectum-incontinence.

To RandomIncontinenceUp (N - number):
	if diaper messing >= 3 and the raw-rectum-incontinence of the player < the max-rectum-incontinence of the player and a random number between 1 and 2 is 1:
		RectumIncontinenceUp N;
	otherwise:
		BladderIncontinenceUp N.
To SilentlyRandomIncontinenceUp (N - number):
	if diaper messing >= 3 and the raw-rectum-incontinence of the player < the max-rectum-incontinence of the player and a random number between 1 and 2 is 1:
		SilentlyRectumIncontinenceUp N;
	otherwise:
		SilentlyBladderIncontinenceUp N.


To RectumIncontinenceUp (N - number):
	if diaper messing >= 3 and the raw-rectum-incontinence of the player < the max-rectum-incontinence of the player:
		say "You feel your ability to hold onto your bowels weakening.";
		SilentlyRectumIncontinenceUp N.
To SilentlyRectumIncontinenceUp (N - number):
	if diaper messing >= 3 and the raw-rectum-incontinence of the player < the max-rectum-incontinence of the player:
		increase the raw-rectum-incontinence of the player by N;
		if the raw-rectum-incontinence of the player > the max-rectum-incontinence of the player, now the raw-rectum-incontinence of the player is the max-rectum-incontinence of the player.

To RectumIncontinenceDown (N - number):
	if diaper messing >= 3 and the raw-rectum-incontinence of the player > 0:
		say "You feel your ability to hold onto your bowels [if N is 1 and the raw-rectum-incontinence of the player > 1]slightly [otherwise if the raw-rectum-incontinence of the player > N + 2]somewhat [end if]returning.";
		SilentlyRectumIncontinenceDown N.
To SilentlyRectumIncontinenceDown (N - number):
	decrease the raw-rectum-incontinence of the player by N;
	if the raw-rectum-incontinence of the player < 0, now the raw-rectum-incontinence of the player is 0.

temporary-rectum-incontinence is a number that varies.

To decide which number is the rectum-incontinence-influence of (C - a wearthing):
	if C is diaper or C is rectum-incontinence-influencing clothing:
		let N be -1 * the magic-modifier of C;
		decide on N;
	decide on 0.

To decide which number is the rectum-incontinence of the player:
	if diaper messing < 3, decide on 0;
	if temporary-rectum-incontinence > 0, decide on the max-rectum-incontinence of the player;
	let I be the raw-rectum-incontinence of the player;
	repeat with C running through worn wearthings:
		increase I by the rectum-incontinence-influence of C;
	if I > the max-rectum-incontinence of the player, decide on the max-rectum-incontinence of the player;
	decide on I.

[!<YourselfIsRectumIncontinent>+

This is essentially the highest level of bowel incontinence that matters, because at this level all control is taken away from the player.

+!]
Definition: yourself is rectum incontinent:
	if the rectum-incontinence of the player >= 8, decide yes;
	decide no.
Definition: yourself is at least somewhat rectum continent: [we use this to check whether there's any point in applying more rectum continence reducing effects to the player.]
	if the raw-rectum-incontinence of the player < the max-rectum-incontinence of the player, decide yes;
	decide no.

Definition: yourself is rectum diaper aware: [Do they always know the state of their diaper after messing?]
	if the player is not potentially diaper aware or the rectum-incontinence of the player >= 10, decide no;
	decide yes.

To decide which number is rectum-risky-level:
	decide on 10 - (rectum-incontinence of the player + suppository + the number of worn desperation clothing).

[!<CheckRealMessing>+

We check whether the player needs to go, and whether they go automatically.

+!]
To check real messing:
	check real messing with reason "".

hasMessedNow is initially false.
automaticallyHolding is initially false.

[If we have any text T that means that something has caused the player to flinch / be surprised / etc. and they lose the opportunity to try and hold it in]
To check real messing with reason (T - a text):
	if rectum > 0:
		let desperationCount be the number of worn desperation clothing;
		let messAware be 0; [1: Can the player sense their fullness and 2: can they try to hold it in]
		let canMessNow be 0; [Is the player physically able to go]
		let shouldMessNow be 0; [Does the player's body want to go]
		let willMessNow be 0; [Has the player lost control?]
		now hasMessedNow is false;
		if the player is feeling full:
			now messAware is 1;
			if there is a worn baby bonnet or the intelligence of the player > a random number between -7 and 7, now messAware is 2;
			if the player is in a predicament room, now messAware is 2; [won't accidentally mess in predicament zone]
		if rectum > 1 and there is a worn total protection soilable knickers and asshole is not actually occupied and the number of live things penetrating vagina is 0 and (the number of things grabbing the player is 0 or diaper quest is 1), now canMessNow is 1;
		if the player is rectum incontinent and the player is full:
			now shouldMessNow is 1;
			if canMessNow is 1, now willMessNow is 1; [no need for a die roll if the player is incontinent]
		otherwise:
			let hold-strength be (a random number between 9 and 11) + (a random number between 1 and 3);
			let I1 be hold-strength - the rectum-incontinence of the player;
			let I2 be I1;
			if I2 < 4, now I2 is 4;
			let SC be I2 - (suppository + desperationCount);
			if T is not "", now SC is SC / (1 + the expulsion weakness of the player); [reduced hold strength while something crazy is happening]
			if debuginfo > 0 and canMessNow is 1 and rectum > 1:
				if T is "", say "[input-style]Mess self-control check: 2d3+8 ([hold-strength]) - bowel incontinence ([rectum-incontinence of the player]) = [I1][if I1 < 4]; minimum 4[end if] - laxative effects ([suppository + desperationCount]) = [SC] | ([rectum].5) rectum volume[roman type][line break]";
				otherwise say "[input-style]Sudden mess self-control check: 2d3+8 ([hold-strength]) - bowel incontinence ([rectum-incontinence of the player]) = [I1][if I1 < 4]; minimum 4[end if] - laxative effects ([suppository + desperationCount]) **ALL DIVIDED BY [1 + the expulsion weakness of the player] BECAUSE OF PAIN / FEAR / TICKLING / SQUATTING POSITION / ETC** = [SC] | ([rectum].5) rectum volume[roman type][line break]";
			if rectum >= SC and canMessNow is 1, now willMessNow is 1;
			if rectum >= SC - 6, now shouldMessNow is 1;
		if messAware > 0 and T is "":
			say "[one of][bold type][or][stopping][one of]Your tummy rumbles ominously[or]Your stomach gurgles as it processes more food[or]Your belly churns loudly as it continues to digest its contents[or]Your bowels emit a low growl as the contents are moved towards the exit[then at random].[one of][line break][variable custom style]That can't be a good sign[if the player is not rectum incontinent]. I'm starting to feel like I need to go number two[end if]...[or][stopping][roman type][line break]";
		if shouldMessNow is 1:
			if canMessNow is 1 and messAware > 0:
				if messAware > 1 and T is "", say "[bold type]Your body is trying to go number two![roman type] Do you want to try and hold it in? ";
				if messAware > 1 and (automaticallyHolding is true or T is not "" or the player is reverse bimbo consenting):
					now automaticallyHolding is false;
					if willMessNow is 1:
						if T is "":
							if the rectum-incontinence of the player + suppository + desperationCount < 5, say "You try to hold it in but you start to cramp, and the pain is too much! ";
							otherwise say "You try to hold it in but the pressure is too much and your control over your rectal muscles is too weak! ";
							if the raw delicateness of the player < 20 and rectum-incontinence of the player < the max-rectum-incontinence of the player:
								say "You could push forward with sheer force of will, but it will hurt and, if you're unlucky, might even affect your long term continence. Would you like to dig deep and really hold on? ";
								let F be temporaryYesNoBackground;
								if the player is reverse bimbo consenting:
									now shouldMessNow is 0;
									now willMessNow is 0;
									say "You grit your teeth and clench your eyes and manage to hold on through the excruciating cramps.";
									UnflinchingPainUp 10;
									if the player is getting unlucky:
										increase the raw-rectum-incontinence of the player by 1;
										say "Your control over your anal sphincter feels permanently weakened. [GotUnluckyFlav]";
								now temporaryYesNoBackground is F;
						if shouldMessNow is 1:
							if T is not "":
								say "[bold type][T] you [if the player is a nympho]hear yourself moaning lewdly as that weirdly delicious feeling of the shamefulness of your lack of control washes over you[otherwise if the player is a pervert or the diaper addiction of the player > 7]gasp with genuine surprise as your sphincter loses control[otherwise]shriek with horror as you feel yourself begin to go completely against your will[end if].[roman type][line break]";
							otherwise if the rectum-incontinence of the player + suppository + desperationCount < 5:
								say "[if the player is a nympho]You give up and let go, crossing your eyes and sticking your tongue out as you wait for the intense feelings to wash over you[otherwise if the player is a pervert]You just don't have the willpower. You gasp with feigned surprise as you allow your sphincter to lose control[otherwise]You clench your fists and strain with all your might but it's all in vain - the cramps win over and you feel yourself begin to push, even though you don't really want to[end if].";
							otherwise:
								say "[if the player is a nympho]You hear yourself moaning lewdly as that weirdly delicious feeling of the shamefulness of your lack of control washes over you[otherwise if the player is a pervert or the diaper addiction of the player > 7]You gasp with genuine surprise as your sphincter loses control[otherwise]You shriek with horror as you feel yourself begin to go completely against your will[end if].";
							now hasMessedNow is true;
							compute partial messing;
					otherwise if T is "":
						say "You manage to hold it in for now.";
						if the implant of pledge-lesson-mess is 1 and the player is not in a predicament room:
							say "Magic ripples through your belly as the magic pledge you've just broken activates. Your belly bulges as the bulk inside grows to massive proportions!";
							increase rectum by 20;
							let K be a random worn uncursed knickers;
							if K is knickers, fully curse K;
				otherwise:
					now hasMessedNow is true;
					now voluntarySquatting is 1;
					if messAware <= 1, say "[if the intelligence of the player < 4]Your mind is so foggy[otherwise]You are so distracted thinking about other things[end if] that by the time you realise that you have instinctively reacted to your desperate need to use the toilet by squatting and pushing, it's already happening.";
					compute partial messing;
			if hasMessedNow is false:
				if willMessNow is 1:
					let D be a random worn diaper;
					if the player is rectum diaper aware or D is not diaper:
						say "All of a sudden, you feel your rectal muscles spasming and you have absolutely no control as it begins to empty itself of its contents! ";
						compute partial messing;
					otherwise:
						StealthMessUp D by rectum;
						reset rectum;
						if the perceived-mess of D is the mess of D, progress quest of mess-quest; [no quest completion if the player isn't aware of the mess]
				otherwise if messAware > 0 and shouldMessNow is 1:
					let D be a random eligible diaper;
					if T is "" and the number of worn soilable knickers is 0 and diaper focus is 1 and D is diaper and asshole is not actually occupied and the location of the player is not toilets and the location of the player is not urinals and the player is not in a predicament room:
						say "As if reacting to your tummy, ";
						let K be a random worn knickers;
						if K is knickers:
							say "your [ShortDesc of K] suddenly morphs into ";
							only destroy K;
						otherwise:
							say "your loins are suddenly surrounded by ";
						say "a [ShortDesc of D]![one of][line break][variable custom style][if the delicateness of the player < 14]Oh my god, the game is trying to make me mess myself...[otherwise]At least now I have a toilet to go in. Thank you game![end if][roman type][line break][or][stopping]";
						summon D cursed with quest;
					otherwise if suppository + desperationCount > 0 or a random number between 1 and 5 is 1 or T is not "":
						let knees-check be false;
						if the player is upright and the number of worn stuck clothing is 0:
							if a random number between 1 and 2 is 1, now knees-check is true;
						if T is "", say "[bold type]Your ";
						otherwise say "[bold type][T] your ";
						say "tummy cramps [if rectum + suppository < 8]painfully[otherwise]brutally[end if][if knees-check is true], forcing you onto your knees[end if]. You feel a desperate need to [if the diaper addiction of the player < 12]find a toilet[otherwise if the player is diapered]use your diaper[otherwise]use a diaper[end if].[roman type][line break]";
						if knees-check is true, try kneeling;
						if rectum + suppository + desperationCount >= a random number between 8 and 11:
							if T is not "", UnflinchingPainUp 5;
							say "It takes you several moments to recover.";
							now another-turn is 1.

mess-phase is a number that varies.
[
0: Full messing all in one turn
1: Partial messing, first turn
2+: Partial messing not first turn
]

mess-amount is a number that varies. [How much did we just mess this turn?]
inhuman-messing is initially false. [Is this some kind of crazy inhuman mess that outputs at maximum value every turn?]

To compute partial messing:
	now mess-phase is 1;
	compute messing.

To compute inhuman partial messing:
	now inhuman-messing is true;
	compute partial messing.

[!<ComputeMessing>+

Make messing happen. REQUIRES UNDERWEAR.

+!]
To compute messing:
	if asshole is actually occupied:
		let A be a random thing penetrating asshole;
		say "Your messing episode is prevented thanks to [NameDesc of A] blocking the way.";
	otherwise if quiz-partner is worn:
		compute quiz partner messing;
	otherwise:
		allocate 6 seconds;
		if rectum < 2, now rectum is 2;
		now the alert of the player is 1;
		let D be random worn knickers;
		if D is crotch-displaced:
			say "You instinctively move your [ShortDesc of D] back into place over your [asshole]!";
			now D is crotch-in-place;
		if D is crotch-unzipped:
			say "You instinctively zip your [ShortDesc of D] back up!";
			ZipUp D;
		let reactions-suppressed be 0;
		if the total squirtable fill of belly > 0:
			now reactions-suppressed is 1;
			AssSquirt;
		otherwise if D is nothing:
			say "BUG - there was nothing to have a bowel movement into!";
		otherwise if mess-phase is 0:
			compute messing of D;
		otherwise:
			compute partial messing of D;
		let upset-about-mess be false;
		if the player is upset about sitting in mess, now upset-about-mess is true;
		if mess-phase < 2:
			if diaper quest is 1 and chilli pepper tattoo is worn and the player is not in a predicament room and the player is getting unlucky:
				say "[bold type]As it comes out, it burns painfully like a spicy curry![roman type][line break]";
				PainUp 10;
			otherwise:
				unless the player is upset about mess, arouse (mess-amount * 75 * the square root of the sex addiction of the player);
				if the player is ready to cum from messing, anally orgasm shamefully;
				if the player is upset about sitting in mess:
					if upset-about-mess is false, say UpsetAboutMessingFlav for D;
				otherwise:
					say "[variable custom style][if the diaper addiction of the player < 10][one of]I feel weirdly... comfortable. It must be this baby outfit I'm wearing affecting my mind![or]I can't believe how comfortable I feel in a messy diaper.[stopping][otherwise if the diaper addiction of the player < 15][one of]I wanna make it go ever bigger![or]I bet I can fit even more in here![at random][otherwise]Feels... soo... good![end if][roman type][line break]";
		otherwise:
			unless the player is upset about mess, arouse (mess-amount * 100 * the square root of the sex addiction of the player);
			if the player is ready to cum from messing, anally orgasm shamefully;
			if the player is upset about sitting in mess and upset-about-mess is false, say UpsetAboutMessingFlav for D;
		if reactions-suppressed is 0: [If it's set to 1 then we already computed enema reactions and we don't want the NPCs to have two separate reactions to the same event.]
			if mess-phase < 2:
				if there is a reactive monster and the player is able to speak:
					let M2 be a random reactive monster;
					say diaper mess declaration of M2;
			repeat with N running through reactive monsters:
				if N is not diaperMessReacted:
					compute diaper mess reaction of N;
					now N is diaperMessReacted;
		if mess-phase > 0:
			decrease rectum by mess-amount;
			if rectum <= 1: [end of partial pooping - empty]
				now rectum is 1;
				now suppository is 0;
				now mess-phase is 0;
			otherwise if mess-phase >= 100: [end of partial pooping - held the rest in]
				now mess-phase is 0;
			otherwise:
				increase mess-phase by 1;
				if suppository > 0, decrease suppository by 1; [suppository effects are slightly relieved]
				add the partial messing continues rule to the another-turn-rules, if absent;
		if mess-phase is 0:
			reset rectum;
			now inhuman-messing is false;
			now diaper-reaction-said is true;
			if voluntarySquatting is 0, progress quest of adult-baby-quest;
			now voluntarySquatting is 0;
			if matron is alive, now the boredom of matron is 0; [Next time she sees the player she should probably pay attention!]
		now another-turn is 1.

To say UpsetAboutMessingFlav for (D - a clothing):
	say "[variable custom style][if the diaper addiction of the player < 7 and voluntarySquatting is 1]I'd better be able to find a way to clean up fucking quickly. This is nasty.[otherwise if (the diaper addiction of the player < 12 and voluntarySquatting is 1) or D is not diaper]I guess I should try and find a way to change now, before I make myself cry...[otherwise if the diaper addiction of the player < 7]How did I let this happen[one of][or] again[stopping]?![otherwise if the diaper addiction of the player < 12][one of]Am I really just as pathetic as an incontinent child now?[or]I guess it's time to accept that this is who I am now. A useless baby who can't even control when [he of the player] goes number two.[stopping][otherwise if the diaper addiction of the player < 15][one of]I can't believe how good that felt...[or]Mmmmph, that feels way too good...[stopping][otherwise]Uh-oh, I did a naughty thing[one of]! But it was so fun[or] again, now I have to find a Mummy or Daddy to change me again[or] again, but it feels so good when I can't help myself[or] again[stopping]![end if][roman type][line break]".

To compute messing of (D - a knickers):
	now mess-amount is rectum - 1;
	if D is diaper:
		if mess-amount < 4:
			say "A small amount of squishy mush finds its way out of your butt and into your [ShortDesc of D][if the known-mess of D > 0], adding to the load already sitting beneath your butt. The combined bulk[otherwise]. It's not that much but it still[end if] "; [Should be a rare occurrence that only happens from suppositories and similar]
		otherwise if mess-amount < 7:
			say "A reasonable amount of squishy mush forces its way out of your butt and [if the known-mess of D > 0]joins the existing mess in filling[otherwise]fills[end if] your [ShortDesc of D]. Your diaper is now noticeably heavier and it ";
		otherwise if mess-amount < 11:
			say "A large amount of squishy mush forces its way out of your butt over several seconds, [if the known-mess of D > 0]which when combined with the mess already there ends up [end if]filling your [ShortDesc of D] out to what feels like the brim, making it impossible for you to close your legs. You can feel it squelching against your butt as you move, and it ";
		otherwise if mess-amount < 15:
			say "Your [asshole] gapes wide as two huge bulky logs force their way out of your rear. You can feel your [ShortDesc of D] stretching and straining as the massive pieces of excrement snake out, emptying your gut, but filling your pants. There's so much that part of the mush has to force its way between your thighs and squelch its way into the front of your nappy. Your [ShortDesc of D] is somehow able to contain your mega bowel movement[if the known-mess of D > 0] adding even more mess to your already soiled padding[end if]. It ";
		otherwise if mess-amount < 34: [anything mortal!]
			say "With the least dignified noise you've ever heard, your overly full guts begin to excavate themselves. Your [ShortDesc of D] rapidly expands outwards, forced to in every direction by the veritable truckloads of smelly goop that is forcing its way out of your [asshole]. You are unable to stop the flow as log after log pushes its way out of your rectum, each one finding it more difficult than the one before to find a resting place. Soon your [ShortDesc of D] is almost twice its previous size, straining under the pressure as your poop forces itself between your legs and into the front of your nappy, filling that side too. Completely stunned, you can do nothing but shudder, moan and press your hands against your padding as the biggest shit of your life continues, warm foamy sludge following swiftly behind your uncountable number of solid chunks, filling up the small amounts of gaps left for it to find. ";
		otherwise: [should generally only happen from magical diaper links]
			say "A monstrous snake of mush brutally pushes its way out of your butthole. Your [ShortDesc of D] crinkles and groans as it stretches and stretches to attempt to contain the impossibly bulky beast, as thick as your forearm and seemingly unending, like a train coming out of a tunnel with no end in sight. The front of your underwear is soon required to contain the log, filling every spare inch of space with soft yet substantial poop. By the time the craptastic boatload of muck has finished its journey into your pants, your [ShortDesc of D] has visibly doubled in size, now a weird balloon of brown around your midriff. You stay absolutely still, whimpering in shame. You can't move a muscle without making a sickening squelch as it rubs against you. ";
		let PSQ be false;
		if the mess of D > 0 and diaper quest is 1, now PSQ is true;
		MessUp D by mess-amount;
		if mess-amount >= 15:
			say "[one of]Your [ShortDesc of D] has become a padded [if the diaper addiction of the player < 13]prison[otherwise]paradise[end if] [if the diaper addiction of the player < 13]within[otherwise]from[end if] which you are almost completely unwilling to [if the diaper addiction of the player < 13]move[otherwise]leave[end if]. You [if the diaper addiction of the player < 13]have no idea what to do[otherwise]had no idea messing yourself could feel this good[end if]![or]Once again your [ShortDesc of D] has become your messy [if the diaper addiction of the player < 13]prison[otherwise]paradise[end if]![stopping]";
		otherwise if the mess of D <= 10:
			say "[if the diaper addiction of the player < 3]completely disgusts you[otherwise if the diaper addiction of the player < 6]feels all weird and gross[otherwise if the diaper addiction of the player < 9]feels strange[otherwise if the diaper addiction of the player < 11]feels weirdly enjoyable[otherwise if the diaper addiction of the player < 13 or the player is not able to get horny]makes you feel weirdly fuzzy inside, in an almost good way[otherwise if the diaper addiction of the player < 15]makes your [genitals] feel [italic type]amazing[roman type][otherwise if the diaper addiction of the player < 17]makes your [genitals]feel so [italic type]amazing[roman type] that you instantly want to rub yourself through your padding[otherwise]feels really good, but it's not enough! You need to fill it even more than that to feel like you've really earned yourself a change... and maybe if you're lucky some cummies[end if].";
		otherwise if the mess of D <= 17:
			say "[if the diaper addiction of the player < 3]completely disgusts you and makes you grow concerned about the limits of what it can hold[otherwise if the diaper addiction of the player < 6]almost makes you grow concerned about the limits of what it can hold[otherwise if the diaper addiction of the player < 9]shocks you as you struggle to get used to its new heavy weight[otherwise if the diaper addiction of the player < 11]is going past the limit of what you can find comfortable[otherwise if the diaper addiction of the player < 13 or the player is not able to get horny]makes you feel weirdly fuzzy inside, in an almost good way[otherwise if the diaper addiction of the player < 15]is so thick, slimy and warm that you can't help but shiver with arousal[otherwise if the diaper addiction of the player < 17]is turning you on so much to feel it all right there, outside of your body but very much still a part of your person[otherwise]makes your [genitals] feel so [italic type]amazing[roman type] that you instantly want to find a Mommy or Daddy to give you [italic type]cummies[roman type][end if].";
		otherwise:
			say "[if the diaper addiction of the player < 9]feels like moving is almost out of the question - every time you try you can feel the gross sludge sliding against your skin.[otherwise if the diaper addiction of the player < 11]smushes and squelches with every tiny movement you make, which feels too gross even for someone who has begun to like the feeling of using diapers as much as you have[otherwise if the diaper addiction of the player < 13 or the player is not able to get horny]is so thick and sticky and [italic type]everywhere[roman type] it's on the brink of being too extreme even for you to tolerate[otherwise if the diaper addiction of the player < 15]is so impossibly thick, voluminous and gross that it simultaneously turns you on and disgusts you[otherwise if the diaper addiction of the player < 17]still very much turns you on, although you're really not sure it should[otherwise if refractoryPeriod > 0]is so disgustingly glorious, it almost makes you cum a second time[otherwise]is so disgustingly glorious that it almost makes you cum on the spot[end if].";
		if PSQ is true, progress quest of priestess-service-quest;
		progress quest of mess-quest;
	otherwise:
		say "A [if mess-amount < 3]a small amount of mush[otherwise if mess-amount < 5]reasonable amount of squishy mush forces its way[otherwise if mess-amount < 8]large amount of lumpy mush[otherwise if rectum < 10]huge bulky log forces its way[otherwise]seemingly unending series of large mushy lumps become one giant ball which stretches you on its journey[end if] out of your butt and fills your [ShortDesc of D]. You feel it bulge out behind you, and you're almost afraid to move at all. A diaper would at least shield and properly contain your shame but the [ShortDesc of D] threatens to buckle at any moment. You need a change, and you need one now!";
		MessUp D by mess-amount;
		progress quest of mess-quest.

To compute partial messing of (D - a knickers):
	now mess-amount is rectum - 1;
	let OneLog be a random number between 2 and 5;
	if rectum >= 10, increase OneLog by 1;
	if inhuman-messing is true, increase OneLog by 3;
	if mess-amount > OneLog, now mess-amount is OneLog;
	if mess-amount < 3:
		say "A few small pellets of poop exit your butthole. It's not that much[if the mess of D > 0] on its own, but it feels like it still adds to the existing mush beneath your butt[otherwise], but it's also not nothing[end if]. "; [Should be a rare occurrence that only happens from suppositories and similar]
	otherwise if mess-amount is 3:
		say "An average sized lump of poop squeezes out of your butthole and into your [ShortDesc of D]. ";
	otherwise if mess-amount is 4:
		say "A largish log of poop works its way out of your butthole, settling itself in the seat of your [ShortDesc of D]. ";
	otherwise if mess-amount is 5:
		say "An impressively large but soft brick of fecal matter is dumped out of your ass and into your [ShortDesc of D]. ";
	otherwise if inhuman-messing is true:
		say "The non-stop [one of]torrent[or]geyser[or]fountain[or]river[at random] of [one of]poop[or]shit[or]crap[at random] continues [one of]flowing[or]snaking[or]to explode[at random] out of your [asshole] and into your [ShortDesc of D]. ";
	otherwise:
		say "Your tight little sphincter is forced to gape painfully wide, as a massive hard lump of excrement is slowly forced out of your body, visibly tenting the seat of your [ShortDesc of D] with its impressive volume. ";
	if D is diaper and mess-phase is 1 and the mess of D > 0 and diaper quest is 1, progress quest of priestess-service-quest; [pooping in a diaper that already has poop]
	let PT be the mess of D / 5;
	MessUp D by mess-amount;
	progress quest of mess-quest;
	let DT be the mess of D / 5;
	if DT > PT:
		say "Your [ShortDesc of D] is now [if DT >= 7]practically overflowing with foul-smelling feces[otherwise if DT >= 6]full to the brim with your stinky sludge[otherwise if the mess of D >= 5]straining to contain all your filth[otherwise if the mess of D >= 4]bulging obscenely from the bulk of your bowel movements[otherwise if the mess of D >= 3]shamefully swollen with your shameful shit[otherwise if the mess of D >= 2]beginning to bulge from the bulk of the mess inside it[otherwise if the mess of D >= 1]now well and truly soiled[end if].";
		[TODO: how does the player feel about this?]
	let ML be rectum - mess-amount;
	if debuginfo > 0, say "[input-style][ML] unit(s) of mess remain in the player's bowels, with suppository effect [suppository].[roman type][line break]";
	if ML > 1:
		if a random number between -8 and 8 <= the rectum-incontinence of the player:
			if the player is not rectum incontinent:
				say "You feel more poop descending towards the exit!";
				reset multiple choice questions;
				set numerical response 1 to "Don't hold back";
				set numerical response 2 to "Try to stop messing";
				set numerical response 3 to "URGENTLY clench it all inside (this almost always succeeds, but your bowels permanently become a bit more irritable)";
				compute multiple choice question;
				if player-numerical-response > 1:
					let R be a random number between 7 and 12;
					let RI be R - the rectum-incontinence of the player;
					if debuginfo > 0, say "[input-style]Hold attempt d6+6 ([R]) - rectal incontinence ([rectum-incontinence of the player]) = [RI] | [ML + suppository].5 = ([ML].5) poop in rectum + ([suppository]) suppository effects[roman type][line break]";
					if RI > ML + suppository:
						say "You manage to hold the rest in for now.";
						now mess-phase is 100;
					otherwise if player-numerical-response is 3:
						say "You dig deep and clench hard, trying to fight against the painful cramps.";
						if a random number between 1 and 2 is 1, UnflinchingPainUp 5;
						IrritableRectumUp a random number between 1 and 5;
						if the player is getting unlucky:
							say "And despite all this effort, you still can't quite clench tight enough to stop yourself from messing! [GotUnluckyFlav]";
						otherwise:
							now mess-phase is 100;
					otherwise:
						say "You can't hold it in!";
		otherwise:
			say "You don't feel empty yet. You can use [bold type][TQlink]poop[TQdlink][roman type] to keep pushing.";
			now mess-phase is 100.

This is the partial messing continues rule:
	compute messing.

Definition: yourself is ready to cum from messing:
	if cum-when-messing tattoo is worn or (the player is a bit horny and the player is not unable to orgasm so soon and the diaper addiction of the player * 1000 > 20000 - the arousal of the player), decide yes;
	decide no.

To check unhandled diaper scene:
	if diaper messing is 3:
		let K be a random worn knickers;
		if K is knickers and the known-mess of K > 0:
			follow the diaper scene handling rules;
			if diaperSceneHandled is 0:
				now busy is 0;
				say "[variable custom style][if the diaper addiction of the player < 7 and voluntarySquatting is 0]How did I let this happen?![otherwise if the diaper addiction of the player < 12]Am I really just as pathetic as an incontinent child now?[otherwise if the diaper addiction of the player < 15]I can't believe how good that felt...[otherwise]Uh-oh, I did a naughty thing[one of]! But it was so fun[or] again, and that means I get a change! Yay[stopping]![end if][roman type][line break]";
				if the player is upright:
					now the stance of the player is 1;
					say "[run paragraph on] [bold type]You are now on your knees.[roman type][line break]";
				let M be a random willing to change diapers regional monster;
				if playerRegion is Hotel:
					if matron is alive, now M is matron;
					if M is nothing:
						now M is a random robobellboy;
						set up M;
				otherwise if playerRegion is Woods and M is nothing:
					now M is a random demoness;
					set up M;
				otherwise if playerRegion is Mansion and M is nothing:
					now M is vampiress;
					set up M;
				otherwise if playerRegion is School and M is nothing:
					now M is nurse;
					now M is unleashed;
					if M is off-stage, set up M;
				otherwise if M is nothing:
					now M is a random royal guard;
					set up M;
				compute instant change of M.

To compute instant change of (M - a monster):
	if M is not in the location of the player, compute instant change appearance of M;
	reset rectum;
	compute diaper change of M.

To compute instant change appearance of (M - a monster):
	now M is in the location of the player;
	interest M;
	if M is friendly, anger M; [This just helps the correct inline hyperlinks turn up]
	say "Suddenly you notice that [NameDesc of M] is looming over you[if M is robot or M is unintelligent]![otherwise]![line break][speech style of M]'What have we here?'[roman type][line break][end if]";
	if M is royal guard and the player is not in the dungeon:
		drag to Dungeon06 by M.

To compute instant change appearance of (M - matron):
	now M is in the location of the player;
	interest M;
	if M is friendly, anger M; [This just helps the correct inline hyperlinks turn up]
	say "Just as you finish [if the diaper addiction of the player < 9]one of the most humiliating experiences of your life[otherwise if the diaper addiction of the player < 15]your potty pants session[otherwise]you're incredibly fun potty pants session[end if], [NameDesc of M] suddenly arrives, adding to your shame. [big he of M] [if M is changing the player]continues to hold [his of M] hand pressed against your rear, making sure you realise that [he of M] is a full witness to your shame[otherwise]instantly notices your sagging incontinence aid, and before you can move a muscle [he of M] is standing over you, one hand pressed firmly against the warm posterior of your padding[end if].[line break][speech style of M]'[one of]Uh-oh, what do we have here?! How have you managed this, you naughty baby! Only the most pathetic of babies can't control their number twos! [or]Again?! You're so lucky I'm always here when you need me, really now. If you can't control your bottom you're going to have to be in nappies for a long, long time. [stopping][if rectum > 6][one of]And how in the heavens is there so much?! How long has it been since you last went potty?! [or][stopping][end if]Let's get you [if the player is not in Hotel22]back to the nursery and [end if]changed[one of] into something less stinky[or][stopping].'[roman type][line break]";
	if the player is not in Hotel22:
		say "[line break][bold type][BigNameDesc of M] [bold type]lifts you into the air and [if playerRegion is Hotel]without a word swiftly carries you all the way to[otherwise]snaps [his of M] fingers, and after a brief moment of feeling like you are flying, suddenly you are back in[end if] the Nursery![roman type][line break]";
		drag to Hotel22 by M;

To say diaper mess declaration of (M2 - a monster):
	say "[variable custom style]'[if the humiliation of the player < 15000]Noooo! Don't watch!'[otherwise if the diaper addiction of the player > 15]Ooh [daddy of M2], I think I'm gonna need a change...'[otherwise if the humiliation of the player > 31000]Please watch me and laugh at me as I [one of]mess my stinky bottom[or]do a poopy in my pants[or]go number two[at random]!'[otherwise if the diaper addiction of the player < 8]Fuck fuck fuck, I can't believe this[one of][or] is happening again[stopping]. Please don't look!'[otherwise][one of]That was... bad timing...'[or]Uh-oh, it happened again...'[stopping][end if][roman type][line break]".

To compute diaper mess reaction of (M - a person):
	if diaper quest is 1 and M is monster:
		say "[BigNameDesc of M] looks at you with [one of]a smug expression[or]a judging expression[or]a caring expression[or]a mildly disgusted sneer[or]a smirk[in random order].[line break][speech style of M]'[one of]Pathetic.'[or]It's not polite to do that in front of people, you disgusting baby. Or can you not control yourself?'[or][if voluntarySquatting is 1]Pooping yourself on purpose in front of me? You really are a naughty little baby aren't you?'[otherwise]If you can't control your bum-bum then you're just a stinky little baby who doesn't deserve any respect.'[end if][or]It looks like you definitely need to be kept in diapers.'[or]Good. Your potty untraining seems to be going well.'[or]I can't believe you'd do that right in front of me!'[in random order][roman type][line break]";
		if voluntarySquatting is 1, say obsceneHumiliateReflect;
		otherwise say severeHumiliateReflect;
		unless M is staff member:
			let previous-friendly be 0;
			if M is friendly, now previous-friendly is 1;
			interest M;
			FavourDown M by 4;
			if M is unfriendly and previous-friendly is 1, say BecomesAggressive of M;
	otherwise:
		say "[BigNameDesc of M] looks at you with [one of]disgust[or]shock[or]horror[or]disbelief[or]distress in [his of M] eyes[or]a wide open mouth[as decreasingly likely outcomes].[line break][speech style of M]'[one of]Holy shit, you can't be serious... You're fucked up in the head.'[or][big please] [please] [caps please] tell me you did not just crap yourself in front of me?!'[or]What the fuck are you doing?! Yuck, stop!!!'[or]What in the world?! Can you not control your own body?! How disgusting.'[or]You're sick, you know that?'[or]This can't be real. Gross!'[in random order][roman type][line break]";
		if voluntarySquatting is 1, say obsceneHumiliateReflect;
		otherwise say severeHumiliateReflect;
		if M is monster and (M is friendly or M is uninterested):
			if M is friendly, say "Unable to stomach what [he of M][']s seeing, [NameDesc of M] abandons you.";
			bore M;
			compute mandatory room leaving of M.

Messing is an action applying to nothing.
Understand "poo", "poop", "crap", "shit", "mess" as messing.

[!<CheckMessing>+

Player tries to go number 2.

+!]
Check messing:
	if asshole is actually occupied, say "You can't mess yourself while there's something in your [asshole], cupcake." instead;
	if the total squirtable fill of belly > 0, try squatting instead;
	if the player is not feeling full and the player is rectum incontinent, say "You've become so incontinent that you cannot feel or control this anymore! No matter how much you push, you feel absolutely nothing!" instead;
	if auto is 0:
		if the player is able to use a toilet and the location of the player is toilets:
			allocate 6 seconds;
			if rectum > 1 and (the player is feeling full or rectum > 3 or rectum >= rectum-risky-level):
				compute toilet use instead;
			otherwise:
				say "You sit on the toilet and push, but nothing comes out." instead;
		if the location of the player is toilets and the player is flying and the diaper addiction of the player < 15:
			say "[variable custom style]I'll need to wait until I land to use that toilet.[roman type][line break]" instead;
		otherwise if the location of the player is toilets and there is a worn total protection diaper:
			say "Do you want to go inside your diaper? ";
			if the player is bimbo consenting, do nothing;
			otherwise say "[variable custom style]I can't use the toilet like that right now, I need to remove some clothing first.[roman type][line break]" instead;
		otherwise if the location of the player is toilets:
			say "[variable custom style]I can't use the toilet right now.[roman type][line break]" instead;
	if the number of worn total protection soilable knickers is 0, say "[variable custom style]I have no safe way to do that. [if the diaper addiction of the player >= 8 and the diaper addiction of the player <= 16 and (the humiliation of the player >= 30000 or the number of intelligent monsters in the location of the player is 0)]I guess if I was wearing a diaper...[roman type][line break]" instead;
	if auto is 0:
		if the diaper addiction of the player < 4 and suppository is 0 and the number of worn desperation clothing is 0:
			if debugmode is 0, say "[variable custom style]I can't bring myself to do that on purpose.[roman type][line break]" instead;
			otherwise say "If debug was disabled, player would refuse to do this.";
		[unless diaper messing >= 4 or (there is a worn total protection diaper and the player is not immobile and the player is not in danger and there is a willing to change diapers monster in the location of the player), say "Something tells you that if you did this, there would be no way to immediately get changed.[line break][variable custom style]I should wait until I'm in a room with someone who's willing to change me.[roman type][line break]" instead;]
		if the humiliation of the player < 20000 and there is an intelligent awake monster in the location of the player and the diaper addiction of the player < 15:
			if debugmode > 0, say "If debug mode was disabled, the player would refuse.";
			otherwise say "[variable custom style]I can't bring myself to do that with people watching.[roman type][line break]" instead;
	unless rectum > 1[ and (the player is feeling full or rectum > 3 or rectum >= rectum-risky-level)]:
		allocate 6 seconds;
		say "You [if the player is upright and the player is shameless]squat like a shameless toddler and [otherwise if the player is upright and the player is ashamed]blush as you squat down and [otherwise]squat a little bit as discreetly as you can and [end if]push. But [one of]it was all for nothing - [or][stopping]nothing comes out!" instead.

Carry out messing:
	now voluntarySquatting is 1;
	allocate 6 seconds;
	let berri-scene be 0;
	if auto is 0 and diaper quest is 1 and there is a worn diaper and the player is in Hotel38 and the human-toilet-scene of woman-player is 2 and the player is not immobile and the player is not in danger:
		say "Sit on the Punishment Potty?";
		if the player is bimbo consenting:
			say "You sit on the Punishment Potty, smushing your [random worn diaper] into [NameDesc of woman-player][']s face.[line break][speech style of woman-player]'Wait please, no, [one of]let's talk about this[or]not again[stopping]- FFFFFFFFBBBBBFFFFFTTTT!'[roman type][line break][BigNameDesc of woman-player][']s pleas are blocked out by your padded butt.";
			now berri-scene is 1;
	compute partial messing;
	if the player is bursting and wetting-valued <= 0 and the bladder-incontinence of the player < 5 and the rectum-incontinence of the player < 5: [at higher incontinence of either kind, automatic messing doesn't cause urinating]
		now diaper-reaction-said is false; [prevents NPCs from reacting to the urination as well as the mess, which would be excessive]
		now delayed urination is 2;
		say "The act of purposefully messing yourself also makes you wet yourself.";
		try urinating;
	if berri-scene is 1:
		DelicateDown 2;
		FavourDown woman-player by 2;
		say "You finally pull your filthy diaper off of [NameDesc of woman-player][']s face. [big he of woman-player] doesn't say a word - [he of woman-player] is too busy gasping for breath and sobbing with self-pity.".

TargetMessing is an action applying to one thing.
Understand "poo in [something]", "poop in [something]", "crap in [something]", "shit in [something]", "mess in [something]", "mess [something]", "soil [something]" as TargetMessing.

Check TargetMessing:
	try messing instead.

[If the player is only into scene messing then we need to prevent the player from getting a chance to escape e.g. with the pink pill]
This is the compulsory change rule:
	if diaper messing is 3 and there is worn messed knickers and (there is a changing the player monster or there is a spanking the player monster), now another-turn is 1.
The compulsory change rule is listed in the compulsory action rules.

Rectum ends here.
