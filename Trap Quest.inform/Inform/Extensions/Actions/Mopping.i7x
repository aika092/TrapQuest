Mopping by Actions begins here.

Mopping is an action applying to one thing. [TODO mopping with clothing]

Rule for supplying a missing noun while mopping:
	if there is a worn pink spraybottle and (diaper quest is 1 or (the player is not craving semen and the player is not thirsty)), now the noun is a random worn pink spraybottle;
	otherwise now the noun is face.

Check mopping:
	[if the noun is not the location of the player, try cleaning the noun with instead;]
	if the player is flying, say "You can't reach anything you could clean." instead;
	if the player is not prone, say "You have to get on your knees first." instead;
	if the milk-puddle of the location of the player + the semen-puddle of the location of the player + the urine-puddle of the location of the player < 1, say "But there's no mess to clean?" instead;
	if the noun is pink spraybottle:
		if there is a dangerous monster in the location of the player, say "You need to deal with the [random dangerous monster in the location of the player] first!" instead;
		if the noun is not worn by the player, say "But you're not holding the cloth..." instead;
	if the noun is face and the player is not craving semen and the semen-puddle of the location of the player > 0 and the class of the player is not maid and the class of the player is not catgirl:
		if the semen taste addiction of the player < 12 and the player is not broken and the semen taste addiction of the player * the thirst of the player < 18 and the player is not extremely thirsty, say "[if the semen taste addiction of the player * 5 >= 18][variable custom style]I'd have to be more thirsty than this before I'd consider doing that...[roman type][line break][otherwise]You can't bring yourself to do something so disgusting.[end if]" instead;
		if there is a dangerous monster in the location of the player and the humiliation of the player < (20 - the semen taste addiction of the player) * 1000, say "You wouldn't dare do that in front of the [random monster in the location of the player]. [if the semen taste addiction of the player > 14][line break][second custom style]no matter how much you want to...[roman type][line break][end if]" instead;
	otherwise if the noun is face and the urine-puddle of the location of the player > 0 and the class of the player is not maid and the class of the player is not catgirl:
		if the urine taste addiction of the player < 12 and the player is not broken and the urine taste addiction of the player * the thirst of the player < 18 and the player is not extremely thirsty, say "[if the urine taste addiction of the player * 5 >= 18][variable custom style]I'd have to be thirstier than this before I'd consider doing that...[roman type][line break][otherwise]You can't bring yourself to do something so disgusting.[end if]" instead;
		if there is a dangerous monster in the location of the player and the humiliation of the player < (20 - the urine taste addiction of the player) * 1000, say "You wouldn't dare do that in front of the [random monster in the location of the player]. [if the urine taste addiction of the player > 14][line break][second custom style]no matter how much you want to...[roman type][line break][end if]" instead;
	if the noun is not face and the noun is not pink spraybottle, say "How would you clean with something like that?".
	[if the second noun is clothing:
		if the second noun is not appropriate for cleaning, say "That's not something you can clean with. Maybe try a piece of clothing actually made out of soft fabric?" instead;
		if the semen-soak of the second noun + the urine-soak of the second noun + the milk-soak of the second noun >= the soak-limit of the second noun, say "The [printed name of second noun] is too covered in bodily fluids to effectively soak up anything else." instead;
		if the second noun is worn and the second noun is not gloves, say "You are currently wearing the [printed name of second noun], so it would be difficult to clean with it." instead.]

To compute mopdipping:
	if the largeness of breasts > 10 and total puddle > 0:
		say "Your chest touches the floor as you clean, and when you sit up, it takes some of the mess with it.";
		let A be the urine-puddle of the location of the player;
		let B be the milk-puddle of the location of the player;
		let C be the semen-puddle of the location of the player;
		if A > 0:
			Squirt urine on breasts by 1;
			decrease the urine-puddle of the location of the player by 1;
		if B > 0:
			Squirt milk on breasts by 1;
			decrease the milk-puddle of the location of the player by 1;
		if C > 0 and bukkake fetish is 1:
			Squirt semen on breasts by 1;[this way the cum will still stick even if there's other stuff on the floor]
			decrease the semen-puddle of the location of the player by 1;

Carry out mopping face:
	allocate 6 seconds;
	let A be the urine-puddle of the location of the player;
	let B be the milk-puddle of the location of the player;
	let C be the semen-puddle of the location of the player;
	let D be 0;
	say "You begin [one of]to lick up[or]slurping up[or]licking up[at random] the [if C > 0 and C > B + A][semen] clinging to the floor[otherwise if A > 0 and A > C + B][urine] on the floor[otherwise if B > 0 and B > C + A]milk on the floor[otherwise]fluids on the floor[end if], [if the player is not shameless][one of]shuddering at the new low this game has forced you to.[or]once again finding yourself scraping the bottom of the barrel for humiliating acts.[stopping][otherwise][one of]shivering with excitement at your brand new low.[or]once again finding yourself at the peak of degrading acts.[stopping][end if]";
	if C > 0:
		StomachSemenUp 1;
		decrease the semen-puddle of the location of the player by 1;
	if B > 0:
		StomachUp 1;
		decrease the milk-puddle of the location of the player by 1;
	if A > 0:
		StomachUp 1;
		decrease the urine-puddle of the location of the player by 1;
	if class of the player is catgirl:
		StomachUp 1;
		if the player is not broken, humiliate SEVERE-HUMILIATION - (MODERATE-HUMILIATION * (the thirst of the player - 1));
	otherwise:
		humiliate (SEVERE-HUMILIATION * 2) - (MODERATE-HUMILIATION * (the thirst of the player + 2)).[This is probably one of the least dignified things you could do, but it's less humiliating the thirstier you are]

To decide which number is total puddle:
	let X be 0;
	increase X by the urine-puddle of the location of the player;
	increase X by the milk-puddle of the location of the player;
	increase X by the semen-puddle of the location of the player;
	decide on X.

Carry out mopping pink spraybottle:[TODO: breasts largeness 10+ will touch the ground and become soaked.]
	allocate 6 seconds;
	let D be 0;
	let E be a random number between 2 and 3;
	if the noun is blessed, now E is a random number between 4 and 5;
	say "You get to work cleaning up the mess with your [noun]. [if total puddle <= E * 3]It feels like [NameDesc of the noun] is working together with you to clean up the mess, and you get the room clean in a short time![otherwise if the noun is not cursed]It feels like [NameDesc of the noun] is working together with you to clean up the mess, and although [bold type]you're not finished[roman type] cleaning up the mess, you know you're making record time![otherwise]It feels like [NameDesc of the noun] is actively working against you to clean up the mess, and even though you're working hard, you don't make a lot of progress cleaning up the mess.[end if]";
	if the noun is spray:
		say "Your [ShortDesc of the noun] pulses as it slowly fills up with darkly coloured liquid.";
		if the charge of the noun < 5, increase the charge of the noun by 1;
	if the urine-puddle of the location of the player > 0 and E > 0:[Clean up is in order of thickness. urine is thinnest, followed by milk, followed by semen.]
		if the urine-puddle of the location of the player > E:
			increase D by E;
			decrease the urine-puddle of the location of the player by E;
			now E is 0;
		otherwise:
			increase D by the urine-puddle of the location of the player;
			decrease E by the urine-puddle of the location of the player;
			now the urine-puddle of the location of the player is 0;
	if the milk-puddle of the location of the player > 0 and E > 0:
		if the milk-puddle of the location of the player > E:
			increase D by E;
			decrease the milk-puddle of the location of the player by E;
			now E is 0;
		otherwise:
			increase D by the milk-puddle of the location of the player;
			decrease E by the milk-puddle of the location of the player;
			now the milk-puddle of the location of the player is 0;
	if the semen-puddle of the location of the player > 0 and E > 0:
		if the semen-puddle of the location of the player > E:
			increase D by E;
			decrease the semen-puddle of the location of the player by E;
			now E is 0;
		otherwise:
			increase D by the semen-puddle of the location of the player;
			decrease E by the semen-puddle of the location of the player;
			now the semen-puddle of the location of the player is 0;
	increase the work ethic of the noun by D * 30;
	[if the work ethic of the noun < 0, now the work ethic of the noun is 0;]
	if the noun is cursed, now D is D * 2;
	FatigueUp D * 10.

was-mopping is a number that varies.

Report Mopping:
	if the noun is face:
		progress quest of puddle-licking-quest;
		if cat-ears is off-stage and cat-ears is actually summonable and a random number between 1 and 3 is 1:
			say "[bold type]You feel a headband with cat ears materialise on your head.[line break][if the bimbo of the player > 12][second custom style]Teehee, I get it! Only a naughty pussycat would ever drink anything off the floor![otherwise][first custom style]I guess that's what I get for drinking off the floor like some kind of animal...[end if][roman type][line break]";
			summon cat-ears;
	now was-mopping is 1;
	if the noun is spray pink spraybottle and total puddle <= 0:
		increase the magic-charge of the noun by 1;
		if the magic-charge of the noun > a random number between 1 and (the magic-power of the player + 1):
			say "The [ShortDesc of the noun] rewards your continued diligent cleaning by sending real power down your arms! You feel like you have enough magic for another powerful attack with your spraybottle!";
			MagicPowerUp 1;
			now the magic-charge of the noun is 0.


Understand "clean puddle with [something]", "mop up puddle with [something]", "clean mess with [something]", "clean with [something]", "[something] puddle", "clean room with [something]" as mopping.
Understand "clean cum with [something]", "clean semen with [something]" as mopping when the semen-puddle of the location of the player > 0.
Understand "clean piss with [something]", "clean urine with [something]" as mopping when the urine-puddle of the location of the player > 0.
Understand "clean milk with [something]" as mopping when the milk-puddle of the location of the player > 0.
Understand "lick puddle", "lick floor", "lick ground", "drink puddle", "slurp puddle", "slurp up puddle", "clean puddle", "clean mess", "mop puddle", "mop", "mop mess", "clean room", "mop room", "spray room", "spray puddle", "spray mess", "mop up puddle" as mopping.



Mopping ends here.

