Flight by Every Turn begins here.

Part 1 - Takeoff and Landing

[!<lastTurnFlight:Integer>*

REQUIRES COMMENTING

*!]
last-turn-flight is a number that varies. last-turn-flight is 0.

[!<ComputeFlight>+

REQUIRES COMMENTING

+!]
To compute flight:
	follow the player class rules; [We want to make sure we know what the player class is]
	if the player is flying, compute fatigue loss;
	if last-turn-flight is 1 and the player is not flying, Execute Landing;
	if last-turn-flight is 0 and the player is flying, Execute Takeoff.

[!<ExecuteTakeoff>+

REQUIRES COMMENTING

+!]
To Execute Takeoff:
	now last-turn-flight is 1;
	say "Your body is now lighter than air! As you try to [if the player is upright]step[otherwise]crawl[end if] forward, your body is pushed off the ground![line break][bold type]You are now floating![line break][one of][if the bimbo of the player < 15][line break][first custom style]What the fuck is happening to me?![otherwise][line break][second custom style]Oooh, yay, I can fly! Wait, how do I control where I go? Waaaah![end if][or][if the bimbo of the player < 15][first custom style]Oh shit, not again...![otherwise][second custom style]Ooh, yay, I'm flying again! Weeeee![end if][stopping][roman type][line break]";
	repeat with D running through dildo traps penetrating a fuckhole:
		if doll-stuck-num > 0:
			say "[one of]You feel your eyes widen and your jaw drop[or]You once more gape foolishly[stopping] as you rise up off the impaling [printed name of D] which buzzes angrily as you escape, and the music stops. [one of]You don't think you knew the true meaning of shame until this absolutely humiliating 'rescue'[or]The shame of the rescue is just as bad as last time[stopping].";
			humiliate SEVERE-HUMILIATION;
		dislodge D;
	let flav-said be 0;
	repeat with C running through things held by the player:
		unless C is worn:
			if flav-said is 0, say "Your sudden flight makes [if there is a worn bag of holding]all your items fall out of your [ShortDesc of random worn bag of holding] and [end if]you drop all the items you're carrying!";
			now flav-said is 1;
			now C is in the location of the player;
	if there is a worn magic wand:
		compute takeoff of a random worn magic wand;
	if the location of the player is no-roof:
		say "Before you know it, you are high up in the sky! You can see the entirety of the woods from here!";
		repeat with R running through placed no-roof rooms:
			now R is discovered;
		now the player is in Sky01;
	refresh the map-window;
	now the alert of the player is 1. [You stop resting]

[!<ExecuteLanding>+

REQUIRES COMMENTING

+!]
To Execute Landing:
	now last-turn-flight is 0;
	say "You slowly start to descend towards the ground. ";
	if the player is in Sky01:
		say "You have no idea where you are going to land.";
		now the player is in a random placed jungle room;
		repeat with M running through monsters in the location of the player:
			compute perception of M;
	let monster-flav be 0;
	repeat with M running through dangerous monsters in the location of the player:
		if monster-flav is 0 and the sex addiction of the player < 10 and the bimbo of the player > 4, say "Seeing the danger below, you pathetically try to flap your arms to stay airborne, but just manage to make yourself look like an utter idiot.";
		say LandingTaunt of M;
		now monster-flav is 1;
	say "[bold type]As you land, you fall to your knees.[roman type][line break]";
	if map images > 0, display entire map;
	if the player is upright:
		try kneeling;
	otherwise if the location of the player is glue-puddled:
		say "You eye the [one of]puddle of glue[or]sticky blob below you[or]strong-smelling pool of adhesive[at random] with [one of]fear in your eyes[or]a tremor of nerves[or]a feeling that it's reaching out toward you[at random]. [one of]Uh oh.[or][line break][variable custom style]Please, no![roman type][line break][or][line break][variable custom style]Dear lord, not again![roman type][line break][at random]";
		check glue tripping.

[!<SayLandingTauntOfMonster>+

REQUIRES COMMENTING

+!]
To say LandingTaunt of (M - a monster):
	if M is intelligent:
		say "[BigNameDesc of M] grins at the sight.";
		humiliate 50.

Part 2 - Various Levels of Flight

[FLOATING RULES:
3+: Normal walking
-2 to 2: Tiptoes
-5 to -3: Almost ZeroG
-6 and lower: Flying
]

[!<YourselfIsGrounded>+

REQUIRES COMMENTING

+!]
Definition: yourself is grounded:
	if the weight of the player > 2, decide yes;
	decide no.

[!<YourselfIsOnTiptoes>+

REQUIRES COMMENTING

+!]
Definition: yourself is on tiptoes:
	if there is a worn butterfly wings, decide yes;
	if the weight of the player < 3 and the weight of the player > -3, decide yes;
	decide no.

[!<YourselfIsZeroG>+

REQUIRES COMMENTING

+!]
Definition: yourself is zeroG:
	if the weight of the player < -2 and the weight of the player > -6, decide yes;
	decide no.

[!<YourselfIsFlying>+

REQUIRES COMMENTING

+!]
Definition: yourself is flying:
	if the player is immobile, decide no;
	if there is a worn butterfly wings, decide no;
	if the latex-transformation of the player > 5, decide no;
	if the weight of the player < -5, decide yes;
	decide no.

[!<YourselfIsTooHighToSee>+

REQUIRES COMMENTING

+!]
Definition: yourself is too high to see:
	if the player is flying and playerRegion is Woods, decide yes;
	decide no.



Flight ends here.

