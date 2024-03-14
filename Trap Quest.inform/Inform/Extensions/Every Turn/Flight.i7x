Flight by Every Turn begins here.

Part 1 - Takeoff and Landing

last-turn-flight is a number that varies. last-turn-flight is 0.

To compute flight:
	follow the player class rules; [We want to make sure we know what the player class is]
	if the player is flying, compute fatigue loss;
	if the player is in Sky01:
		repeat with T running through things in Sky01:
			if T is not held and T is not a person and T is not a backdrop:
				say "[BigNameDesc of T] falls down to the ground! ";
				let L be a random placed discovered no-roof room;
				say "It looks like it landed near the [L][if L is a haunted room] (in the Mansion)[end if].";
	if last-turn-flight is 1 and the player is not flying, compute landing;
	if last-turn-flight is 0 and the player is flying, compute takeoff.

To compute takeoff:
	now last-turn-flight is 1;
	say "Your body is now lighter than air! As you try to [if the player is upright]step[otherwise]crawl[end if] forward, your body is pushed off the ground![line break][bold type]You are now floating![line break][one of][if the bimbo of the player < 15][line break][first custom style]What the fuck is happening to me?![otherwise][line break][second custom style]Oooh, yay, I can fly! Wait, how do I control where I go? Waaaah![end if][or][if the bimbo of the player < 15][first custom style]Oh shit, not again...![otherwise][second custom style]Ooh, yay, I'm flying again! Weeeee![end if][stopping][roman type][line break]";
	repeat with D running through dildo traps penetrating a fuckhole:
		if doll-stuck-num > 0:
			say "[one of]You feel your eyes widen and your jaw drop[or]You once more gape foolishly[stopping] as you rise up off the impaling [printed name of D] which buzzes angrily as you escape, and the music stops. [one of]You don't think you knew the true meaning of shame until this absolutely humiliating 'rescue'[or]The shame of the rescue is just as bad as last time[stopping].";
			humiliate SEVERE-HUMILIATION;
		dislodge D;
	let flav-said be 0;
	if the floatskill of the player is 0:
		repeat with C running through currently-not-in-bag things:
			if flav-said is 0, say "Your sudden flight makes you drop all the items you're carrying!";
			now flav-said is 1;
			now C is in the location of the player;
			if C is open topped vessel:
				dump C;
	if there is a worn magic wand:
		compute takeoff of a random worn magic wand;
	if the location of the player is no-roof:
		say "Before you know it, you are high up in the sky! You can see the entirety of the woods from here!";
		repeat with R running through placed no-roof rooms:
			now R is discovered;
		now the player is in Sky01;
	if flight attendant hat is worn:
		compute takeoff of flight attendant hat;
	otherwise if playdude bunny waitress ears is worn:
		follow the player class rules;
		transform playdude bunny waitress ears into flight attendant hat;
		let BO be a random worn bunny outfit;
		if BO is clothing:
			transform BO into flight-attendant-top;
		otherwise:
			class summon flight-attendant-top;
		class summon flight-attendant-skirt;
	refresh map zone;
	now the alert of the player is 1. [You stop resting]

To compute landing:
	now last-turn-flight is 0;
	say "You slowly start to descend towards the ground. ";
	if the player is in Sky01:
		let R be a random placed no-roof jungle room;
		now playerRegion is Woods;
		if (tough-shit is 1 or Mansion01 is placed) and the player is getting unlucky:
			say "Oh no - you're heading for [if Mansion01 is unplaced]a creepy looking old[otherwise]the haunted[end if] mansion! [GotUnluckyFlav]";
			compute single choice question "Do your best to aim for some sort of courtyard!";
			if Mansion01 is unplaced:
				Set Up The Mansion;
				follow the setting up mansion monsters rules;
				repeat with M running through alive nonexistent monsters:
					set up M;
			let X be a random placed no-roof haunted room;
			if X is a room:
				now R is X;
				now playerRegion is Mansion;
		otherwise:
			say "You have no idea where you are going to land.";
		now the player is in R;
		repeat with M running through monsters in the location of the player:
			check guaranteed perception of M;
	let monster-flav be 0;
	repeat with M running through combative monsters:
		if monster-flav is 0 and the sex addiction of the player < 10 and the bimbo of the player > 4, say "Seeing the danger below, you pathetically try to flap your arms to stay airborne, but just manage to make yourself look like an utter idiot.";
		say LandingTaunt of M;
		now monster-flav is 1;
	say "[bold type]As you land, you fall to your knees.[roman type][line break]";
	if map images > 0, display entire map;
	if the player is upright:
		try kneeling;
	otherwise if the location of the player is glue-puddled:
		say "You eye the [one of]puddle of glue[or]sticky blob below you[or]strong-smelling pool of adhesive[at random] with [one of]fear in your eyes[or]a tremor of nerves[or]a feeling that it's reaching out toward you[at random]. [one of]Uh-oh.[or][line break][variable custom style]Please, no![roman type][line break][or][line break][variable custom style]Dear lord, not again![roman type][line break][at random]";
		check glue tripping.

To say LandingTaunt of (M - a monster):
	if M is intelligent:
		say "[BigNameDesc of M] grins at the sight.";
		humiliate 50.

Part 2 - Various Levels of Flight

[FLOATING RULES:
3+: Normal walking
-2 to 2: Tiptoes (lunar walking)
-5 to -3: Almost ZeroG (sex doll and flight attendant only)
-6 and lower: Flying
]

Definition: yourself is grounded:
	if the weight of the player > 2, decide yes;
	decide no.

Definition: yourself is on tiptoes:
	if butterfly wings is worn, decide yes;
	if the weight of the player < 3 and the weight of the player >= -5, decide yes;
	decide no.

Definition: yourself is zeroG:
	if the class of the player is living sex doll, decide yes;
	if the class of the player is flight attendant and the weight of the player < -2 and the weight of the player >= -5, decide yes;
	decide no.

Definition: yourself is flying:
	if the player is immobile, decide no;
	if butterfly wings is worn, decide no;
	if the latex-transformation of the player > 5, decide no;
	if the weight of the player < -5, decide yes;
	decide no.

Flight ends here.
