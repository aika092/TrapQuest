Baby Bouncer by Traps begins here.

A baby bouncer is a kind of trap. The printed name of baby bouncer is "[TQlink of item described]baby bouncer trap[TQxlink of item described][verb-desc of item described]". There are 3 wire baby bouncers. The text-shortcut of a baby bouncer is "bou". A baby bouncer has a number called willingbounce. The willingbounce of a baby bouncer is usually 1.

Figure of hotel baby bouncer is the file "Env/MultiFloor/babybouncer1.jpg".
Figure of baby bouncer is the file "Env/MultiFloor/babybouncer2.jpg".
Figure of empty baby bouncer is the file "Env/MultiFloor/babybouncer3.jpg".

A baby bouncer has a number called bounces.

[!<YourselfIsBouncerStuck>+

Returns yes if the player is stuck in a baby bouncer.

+!]
Definition: yourself is bouncer stuck:
	if there is a baby bouncer grabbing the player, decide yes;
	decide no.

To decide which figure-name is the examine-image of (C - a baby bouncer):
	if C is not grabbing the player, decide on figure of empty baby bouncer;
	if playerRegion is hotel, decide on figure of hotel baby bouncer;
	decide on figure of baby bouncer.

To say ExamineDesc of (C - a baby bouncer):
	say "A large baby bouncer sized to fit an adult. [if C is grabbing the player]You are currently stuck in this contraption, being forced to bounce wildly. Maybe if you [bold type]jump[roman type] it may let you out? Otherwise, you could try submitting (to do nothing) or resisting (to actively struggle against your new bondage).[end if]".

This is the spawn initial dungeon baby bouncer traps rule:
	if diaper lover > 0:
		repeat with N running from 1 to (1 + diaper focus):
			let R be a random trappable wire untrapped placed labyrinth room;
			let T be a random off-stage baby bouncer;
			unless there is a baby bouncer in R, deploy T in R.
The spawn initial dungeon baby bouncer traps rule is listed in the set up dungeon traps rules.

This is the spawn initial hotel baby bouncer traps rule:
	if diaper lover > 0:
		let R be a random trappable wire untrapped placed modern room;
		let T be a random off-stage baby bouncer;
		unless there is a baby bouncer in R, deploy T in R.
The spawn initial hotel baby bouncer traps rule is listed in the set up hotel traps rules.

This is the spawn initial mansion baby bouncer traps rule:
	if diaper lover > 0:
		let R be a random trappable wire untrapped placed roofed haunted room;
		let T be a random off-stage baby bouncer;
		unless there is a baby bouncer in R, deploy T in R.
The spawn initial mansion baby bouncer traps rule is listed in the set up mansion traps rules.

To trigger (Y - a baby bouncer):
	now the player-motion of the player is 0;
	now the bounces of Y is 0;
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	say "[bold type]A trap door opens from the ceiling and a baby bouncer drops down. Suddenly, a pair of [if Y is in the mansion]skeleton[otherwise]robotic[end if] arms are heading straight for you![roman type][line break]";
	let C be a random worn hobble-skirted clothing;
	if C is clothing:
		say "They suddenly change their mind, apparently realising that your [ShortDesc of C] makes them unable to place you in the bouncer as they had clearly intended. [if the bimbo of the player < 14]Phew![otherwise]Aww...[end if]";
	otherwise if a random number between 5 and 25 > the dexterity of the player or the bimbo of the player >= 16:
		if there is a worn diaper, compute automatic state check of a random worn diaper;
		say "The arms grab you under your armpits and pull you up, placing you into the overgrown baby toy, causing you to bounce wildly upward.[if there is a worn messed knickers]Immediately the mess in your undergarments begins shifting around and around, rubbing against you in ways you couldn't possibly have imagined before finding yourself in this situation.[otherwise if there is a worn diaper]The padding of your diaper pushes against your crotch, stimulating you [one of]in ways you couldn't have imagined before finding yourself in this situation[or]again[stopping].[end if]As you fall back down in the seat of the bouncer, [if asshole is actually occupied]the [printed name of random thing filling asshole] inside your [asshole] is roughly forced further inside of you, stimulating your hole as [end if]your toes manage to touch the floor for a brief moment before you are propelled back into the air.";
		if there is a worn diaper:
			ruin vagina;
		if asshole is actually occupied and the anal sex addiction of the player > 5:
			ruin vagina;
		if there is a worn messed knickers, obsceneHumiliate;
		now Y is grabbing the player;
		repeat with M running through reactive monsters:
			say BouncerTrapReactFlav of M;
	otherwise:
		say "Seeing the arms coming for you and not liking where you suspect they plan to place you, you duck under them, narrowly avoiding being grabbed.".

To say SexSubmissionFlav of (Y - a baby bouncer):
	increase the bounces of Y by 1;
	say "You keep still and wait for something to happen. The trap [one of]responds by bouncing[or]once again bounces[stopping] you gently on the spot. [if the bounces of Y < 3]You feel a bit silly, but you resist being made to feel more submissive for now[otherwise]The gentle treatment of the contraption finally gets to you, [one of]making you feel more docile[or]suppressing your desire for rebellion[or]and you start to feel like a little child[in random order][end if].";
	if the bounces of Y > 2, SilentlyDelicateUp 1;
	humiliate SEVERE-HUMILIATION + (the number of worn diapers * 300) + (the number of worn perceived messed knickers * 600);
	now the willingbounce of Y is 0;
	check bounce release of Y.

To say SexResistFlav of (Y - a baby bouncer):
	say "You struggle to get out without bouncing! The trap [one of]responds by shaking[or]once again shakes[stopping] itself in retaliation. The rough treatment of the contraption [one of]sends pleasurable stimulation through to[or]puts stimulating pressure against[or]rubs the crotch of the bouncer against[in random order] your [genitals]!";
	increase the bounces of Y by 1;
	ruin vagina times 2;
	now the willingbounce of Y is 0;
	check bounce release of Y.

To check bounce release of (Y - a baby bouncer):
	if the bounces of Y >= a random number between 2 and 3:
		if diaper messing >= 3 and the player is full and asshole is not actually occupied and there is worn total protection soilable knickers and the willingbounce of Y is 0:
			say "As its final act to attempt to babify you, the top of the baby bouncer suddenly clamps down on your midriff! You wheeze with discomfort as your rectal muscles spasm uncontrollably. ";
			compute messing;
		say "The baby bouncer, seemingly out of power, lowers you to the ground and releases you.";
		if the willingbounce of Y is 1:
			let D be a random off-stage eligible disposable diaper;
			if D is cursed:
				bless D;
			say "As if to reward you for playing with it willingly, the bouncer's [if Y is in the mansion]skeletal[otherwise]mechanical[end if] hands drop you a [ShortDesc of D].";
			now D is in the location of the player;
			compute autotaking D;
		now busy is 0;
		now Y is not grabbing the player;
		now Y is expired;
		now the bounces of Y is 0.

To Jump From The Baby Bouncer:
	allocate 6 seconds;
	compute upright fatigue gain;
	let Y be a random trap grabbing the player;
	say "You [if the diaper addiction of the player < 8]begrudgingly[otherwise if the diaper addiction of the player < 13]willingly[otherwise]eagerly[end if] bounce up and down, [if the diaper addiction of the player < 13]feeling trapped like some pathetic, helpless [otherwise]Enjoying the ride as if you were still a [end if][if there is no worn diaper]child[end if][if there is a worn diaper]baby[end if][if the number of worn perceived messed knickers is 0].[end if][if there is a worn perceived messed knickers], the hot mush caressing you and sifting around your [buttcheeks] certainly not helping you feel any more mature.[end if][if asshole is actually occupied][BigNameDesc of random thing filling asshole] continues to fuck you with each bounce.[end if][line break][variable custom style][if the diaper addiction of the player < 8][one of]This is humiliating![or]I'm not a baby! Let me down![or]This is ridiculous! I don't belong in this thing![at random][otherwise if the diaper addiction of the player < 13][one of]I need to get down but this is actually pretty fun![or]If I didn't have other things to do, I could do this all day![or]I can see why real babies have so much fun with these things![at random][otherwise][one of]Wee![or]Yay![or]Higher! Higher![at random][end if][roman type][line break]";
	if there is a worn diaper, stimulate vagina from Y;
	humiliate SEVERE-HUMILIATION + (the number of worn diapers * 300) + (the number of worn perceived messed knickers * 600);
	if asshole is actually occupied, ruin asshole;
	DelicateUp 1;
	DiaperAddictUp 1;
	repeat with M running through reactive monsters:
		say BouncerBounceTrapReactFlav of M;
	say "After you've thoroughly humiliated and degraded yourself by engaging in bouncing around like a baby, the contraption seems satisfied, and lowers itself to the ground, allowing you to step out of its grasp.";
	now busy is 0;
	now Y is not grabbing the player;
	now Y is expired.

Playing is an action applying to nothing.
Check playing:
	unless there is a baby bouncer grabbing the player:
		allocate 6 seconds;
		say "You fiddle with your hair for a bit. You're not sure why you did that..." instead.
Carry out playing:
	Jump From The Baby Bouncer.
Understand "play" as playing.

To say BouncerTrapReactFlav of (M - a monster):
	say TriggeredTrapReactFlav of M.
To say BouncerBounceTrapReactFlav of (M - a monster):
	say LewdTrapReactFlav of M.

Baby Bouncer ends here.
