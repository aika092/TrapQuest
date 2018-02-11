Mopping by Actions begins here.

Mopping is an action applying to one thing.

Rule for supplying a missing noun while mopping:
	if there is a worn pink spraybottle and the player is not craving and the player is not thirsty, now the noun is a random worn pink spraybottle;
	otherwise now the noun is face.

Check mopping:
	[if the noun is not the location of the player, try cleaning the noun with instead;]
	if the player is flying, say "You can't reach anything you could clean." instead;
	if the player is not prone, say "You have to get on your knees first." instead;
	if the milk-puddle of the location of the player + the semen-puddle of the location of the player + the urine-puddle of the location of the player < 1, say "But there's no mess to clean?" instead;
	if the noun is pink spraybottle:
		if there is a dangerous monster in the location of the player, say "You need to deal with the [printed name of a random dangerous monster in the location of the player] first!" instead;
		if the noun is not worn by the player, say "But you're not holding the cloth..." instead;
	if the noun is face and the player is not craving:
		if the semen taste addiction of the player * the thirst of the player < 18 and the class of the player is not catgirl or (the class of the player is catgirl and the semen taste addiction of the player * the thirst of the player < 9), say "[if the semen taste addiction of the player > 14 or the humiliation of the player > 40000 or (the class of the player is catgirl and (the humiliation of the player > 20000 or the semen taste addiction of the player > 7))]Why lick if off the floor when you could have it fresh and warm straight from the source![otherwise]You can't bring yourself to do something so degrading...[end if]" instead;
		if there is a dangerous monster in the location of the player and the humiliation of the player < (20 - the semen taste addiction of the player) * 1000, say "You wouldn't dare do that in front of the [printed name of a random monster in the location of the player]. [if the semen taste addiction of the player > 14 or (the class of the player is catgirl and the semen taste addiction of the player > 7)][second custom style]no matter how much you want to...[roman type][end if]" instead;
	if the noun is not face and the noun is not pink spraybottle, say "How would you clean with something like that?".
	[if the second noun is clothing:
		if the second noun is not appropriate for cleaning, say "That's not something you can clean with.  Maybe try a piece of clothing actually made out of soft fabric?" instead;
		if the semen-soak of the second noun + the urine-soak of the second noun + the milk-soak of the second noun >= the soak-limit of the second noun, say "The [printed name of second noun] is too covered in bodily fluids to effectively soak up anything else." instead;
		if the second noun is worn and the second noun is not gloves, say "You are currently wearing the [printed name of second noun], so it would be difficult to clean with it." instead.]

Carry out mopping face:
	now seconds is 6;
	let A be the urine-puddle of the location of the player;
	let B be the milk-puddle of the location of the player;
	let C be the semen-puddle of the location of the player;
	let D be 0;
	say "You begin [one of]to lick up[or]slurping up[or]licking up[at random] the [if C > 0 and C > B + A][semen] clinging to the floor[otherwise if A > 0 and A > C + B][urine] on the floor[otherwise if B > 0 and B > C + A]milk on the floor[otherwise]fluids on the floor[end if], [if the humiliation of the player < 32000][one of]shuddering at the new low this game has forced you to.[or]once again finding yourself scraping the bottom of the barrel for humiliating acts.[stopping][otherwise][one of]shivering with excitement at your brand new low.[or]once again finding yourself at the peak of degrading acts.[stopping][end if]";
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
		if the humiliation of the player < 39800, humiliate 200 - (40 * the thirst of the player);
	otherwise:
		humiliate 400 - (50 * the thirst of the player);[This is probably one of the least dignified things you could do, but it's less humiliating the thirstier you are]

To decide which number is total puddle:
	let X be 0;
	increase X by the urine-puddle of the location of the player;
	increase X by the milk-puddle of the location of the player;
	increase X by the semen-puddle of the location of the player;

Carry out mopping pink spraybottle:[TODO:  breasts largeness 10+ will touch the ground and become soaked.]
	now seconds is 6;
	let A be the urine-puddle of the location of the player;
	let B be the milk-puddle of the location of the player;
	let C be the semen-puddle of the location of the player;
	let D be 0;
	let E be a random number between 2 and 3;
	if the noun is blessed, now E is a random number between 4 and 5;
	MagicPowerUp 1;
	say "You get to work cleaning up the mess with your [printed name of the noun]. [if the total puddle <= E * 3]It feels like [noun] is working together with you to clean up the mess, and you get the room clean in a short time![otherwise if the noun is not cursed]It feels like the washcloth is working together with you to clean up the mess, and although you're not finished cleaning up the mess, you know you're making record time![otherwise]It feels like the washcloth is actively working against you to clean up the mess, and even though you're working hard, you don't make a lot of progress cleaning up the mess.[end if]";
	if the noun is spray:
		say "Your [noun] pulses as it slowly fills up with darkly coloured liquid.";
		if the charge of the noun < 5, increase the charge of the noun by 1;
		increase the work ethic of the noun by E * 20;
		unless the noun is cursed, increase the work ethic of the noun by 10;
	otherwise:
		increase the work ethic of the noun by E * 25;
		unless the noun is cursed, increase the work ethic of the noun by 25;
	[repeat with F running through {A, B, C}:
		while F > 0 and E > 0:
			decrease F by 1;
			decrease E by 1;
			increase D by 1; Couldn't get this to work]
	While the A > 0 and E > 0:[Clean up is in order of thickness. urine is thinnest, followed by milk, followed by semen.]
		decrease A by 1;
		decrease E by 1;
		increase D by 1;
	While B > 0 and E > 0:
		decrease B by 1;
		decrease E by 1;
		increase D by 1;
	While C > 0 and E > 0:
		decrease C by 1;
		decrease E by 1;
		increase D by 1;
	FatigueUp 25;
	if the noun is cursed, FatigueUp 25;
	now the urine-puddle of the location of the player is A;
	now the milk-puddle of the location of the player is B;
	now the the semen-puddle of the location of the player is C;
	if the total puddle > 0:
		say "Keep going?";
		if the player consents:
			compute extra turn;
			try mopping the noun.

Report Mopping:
	if the noun is face, let M be a random actually summonable cat ears;
	if M is cat ears and a random number between 1 and 3 is 1:
		say "[bold type]You feel a headband with cat ears materialise on your head.[roman type]  [if the bimbo of the player > 12][second custom style]Teehee, I get it! Only a naughty pussycat would ever drink anything off the floor![otherwise][first custom style]I guess that's what I get for drinking off the floor like some kind of animal...[end if][roman type][line break]";
		summon M.
		

Understand "clean puddle with [something]", "mop up puddle with [something]", "clean mess with [something]", "clean with [something]", "[something] puddle", "clean room with [something]"  as mopping. 
Understand "clean cum with [something]", "clean semen with [something]" as mopping when the semen-puddle of the location of the player > 0. 
Understand "clean piss with [something]", "clean urine with [something]" as mopping when the urine-puddle of the location of the player > 0. 
Understand "clean milk with [something]" as mopping when the milk-puddle of the location of the player > 0. 
Understand "lick puddle", "lick floor", "lick ground", "drink puddle", "slurp puddle", "slurp up puddle", "clean puddle", "clean mess", "mop puddle", "mop", "mop mess", "clean room", "mop room", "spray room", "spray puddle", "spray mess", "mop up puddle" as mopping.



Mopping ends here.
