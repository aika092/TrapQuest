Baby Bouncer by Traps begins here.


A baby bouncer is a kind of trap. The printed name of baby bouncer is "[TQlink of item described]baby bouncer trap[TQxlink of item described][verb-desc of item described]". The description of a baby bouncer is "[BabyBouncerDesc]". There are 3 wire baby bouncers. The text-shortcut of a baby bouncer is "bou". Figure of baby bouncer is the file "babybouncer1.png".

A baby bouncer has a number called bounces.

[!<YourselfIsBouncerStuck>+

Returns yes if the player is stuck in a baby bouncer.

+!]
Definition: yourself is bouncer stuck:
	if there is a baby bouncer grabbing the player, decide yes;
	decide no.

To say BabyBouncerDesc:
	if images visible is 1, display figure of baby bouncer;
	say "A large baby bouncer sized to fit an adult. [if item described is penetrating a body part]You are currently stuck in this contraption, being forced to bounce wildly. Maybe if you [bold type]jump[roman type] high enough, you'll be able to bounce out?[end if]".

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

To trigger (Y - a baby bouncer):
	now the motion of the player is 0;
	now the bounces of Y is 0;
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	say "[bold type]A trap door opens from the ceiling and a baby bouncer drops down. Suddenly, a pair of robotic arms are heading straight for you![roman type][line break]";
	let C be a random worn hobble-skirted clothing;
	if C is clothing:
		say "They suddenly change their mind, apparently realising that your [C] makes them unable to place you in the bouncer as they had clearly intended. [if the bimbo of the player < 14]Phew![otherwise]Aww...[end if]";
	otherwise if a random number between 5 and 25 > the dexterity of the player or the bimbo of the player >= 16:
		say "The arms grab you under your armpits and pull you up, placing you into the overgrown baby toy, causing you to bounce wildly upward.[if there is a worn messed knickers]Immediately the mess in your undergarments begins shifting around and around, rubbing against you in ways you couldn't possibly have imagined before finding yourself in this situation.[otherwise if there is a worn diaper]The padding of your diaper pushes against your crotch, stimulating you [one of]in ways you couldn't have imagined before finding yourself in this situation[or]again[stopping].[end if]As you fall back down in the seat of the bouncer, [if asshole is actually occupied]the [printed name of random thing filling asshole] inside your [asshole] is roughly forced further inside of you, stimulating your hole as [end if]your toes manage to touch the floor for a brief moment before you are propelled back into the air.";
		if there is a worn diaper:
			ruin vagina;
		if asshole is actually occupied and the anal sex addiction of the player > 5:
			ruin vagina;
		if there is a worn messed knickers, humiliate 300;
		now Y is grabbing the player;
	otherwise:
		say "Seeing the arms coming for you and not liking where you suspect they plan to place you, you duck under them, narrowly avoiding being grabbed.".

To say SexSubmissionFlav of (Y - a baby bouncer):
	say "You keep still and wait for something to happen. The trap [one of]responds by bouncing[or]once again bounces[stopping] you gently on the spot. The gentle treatment of the contraption [if there is a worn diaper][one of]feels surprisingly nice against your padding[or]feels really relaxing thanks to your cushioned diaper[or]presses your nappy against your body in a comforting manner[in random order][otherwise]relaxes you, [one of]making you feel more docile[or]suppressing your desire for rebellion[or]and you feel like a little child[in random order][end if].";
	increase the bounces of Y by 1;
	if there is a worn diaper, DiaperAddictUp 1;
	otherwise DelicateUp 1;
	humiliate 200 + (the number of worn diapers * 300) + (the number of worn messed knickers * 600);
	check bounce release of Y.

To say SexResistFlav of (Y - a baby bouncer):
	say "You struggle to get out without bouncing!  The trap [one of]responds by shaking[or]once again shakes[stopping] itself in retaliation. The rough treatment of the contraption [one of]sends pleasurable stimulation through to[or]puts stimulating pressure against[or]rubs the crotch of the bouncer against[in random order] your [genitals]!";
	increase the bounces of Y by 1;
	ruin vagina times 2;
	check bounce release of Y.

To check bounce release of (Y - a baby bouncer):
	if the bounces of Y >= a random number between 2 and 3:
		if diaper lover >= 3 and the player is full and asshole is not actually occupied and (there is worn total protection diaper or (there is worn total protection knickers and panty messing is 1)):
			say "As its final act to attempt to babify you, the top of the baby bouncer suddenly clamps down on your midriff!  You wheeze with discomfort as your rectal muscles spasm uncontrollably. ";
			now diaper-scene-unhandled is 1;
			compute messing;
		say "The baby bouncer, seemingly out of power, lowers you to the ground and releases you.";
		now busy is 0;
		now Y is not grabbing the player;
		now Y is expired;
		now the bounces of Y is 0.

[!<JumpFromTheBabyBouncer>+

REQUIRES COMMENTING

+!]
To Jump From The Baby Bouncer:
	now seconds is 6;
	let Y be a random trap grabbing the player;
	let D be the flat dexterity of the player;
	let R be a random number between D / 3 and D * 2;
	if D > R: [The way Stephy had this coded, the more dex you had, the more difficult it would be to get out.]
		say "You continue to bounce up and down, [if the diaper addiction of the player < 13]feeling trapped like some pathetic, helpless [otherwise]Enjoying the ride as if you were still a [end if][if there is no worn diaper]child[end if][if there is a worn diaper]baby[end if][if the number of worn messed knickers is 0].[end if][if there is a worn messed knickers], the hot mush caressing you and sifting around your [buttcheeks] certainly not helping you feel any more mature.[end if][if asshole is actually occupied] the [printed name of random thing filling asshole] continues to fuck you with each bounce.[end if][line break]";
		say "[variable custom style][if the diaper addiction of the player < 8][one of]This is humiliating![or]I'm not a baby! Let me down![or]This is ridiculous! I don't belong in this thing![at random][otherwise if the diaper addiction of the player < 13][one of]I need to get down but this is actually pretty fun![or]If I didn't have other things to do, I could do this all day![or]I can see why real babies have so much fun with these things![at random][otherwise][one of]Wee![or]Yay![or]Higher! Higher![at random][end if][roman type][line break]";
		if there is a worn diaper, ruin vagina;
		humiliate 200 + (the number of worn diapers * 300) + (the number of worn messed knickers * 600);
		if asshole is actually occupied, ruin asshole;
	otherwise:
		say "You manage to bounce high enough to fly from the bouncer, soaring through the air briefly before hitting the ground.[if D < 9]You land hard on your head, dizzying yourself and feeling as though you're going to blackout before regaining your vision and standing, the world still spinning before you.[otherwise if D < 14]You land hard on your feet, losing your balance and falling over. A little worse for the wear, you pick yourself back up and continue what you were doing before those mechanical arms redirected you into that bouncer.[otherwise if D < 19]You land hard on your feet but manage to catch yourself on one knee, bruising it slightly but generally feeling pretty good about your landing.[otherwise]You manage to place both feet down firmly, sticking a perfect landing.[end if]";
		if D < 9:
			bodyruin 3;
		otherwise if D < 14:
			bodyruin 2;
		otherwise if D < 19:
			bodyruin 1;
		if D < 19, DelicateUp 1;
		now busy is 0;
		now Y is not grabbing the player;
		now Y is expired.


Baby Bouncer ends here.

