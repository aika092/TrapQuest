Player Standing by Every Turn begins here.


[!<DecideWhichNumberIsTheBuckleThresholdOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the buckle threshold of (Y - yourself):
	decide on ((the strength of the player + 5) * 20 * (10 - the body soreness of the player)) / 10.

[!<DecideWhichNumberIsTheTiredThresholdOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the tired threshold of (Y - yourself):
	decide on ((the strength of the player + 5) * 10 * (10 - the body soreness of the player)) / 10.

[!<DecideWhichNumberIsTheVeryTiredThresholdOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the very tired threshold of (Y - yourself):
	decide on ((the strength of the player + 5) * 15 * (10 - the body soreness of the player)) / 10.

[!<PersonIsTired>+

REQUIRES COMMENTING

+!]	
Definition: yourself (called Y) is tired:
	if the fatigue of the player > the tired threshold of the player, decide yes;
	decide no.

[!<PersonIsVeryTired>+

REQUIRES COMMENTING

+!]
Definition: yourself (called Y) is very tired:
	if the fatigue of the player > the very tired threshold of the player, decide yes;
	decide no.

[!<DecideWhichNumberIsTheFatigueInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the fatigue-influence of (C - a clothing):
	decide on 0.

[!<DecideWhichNumberIsTheFatigueInfluenceOfEnduranceClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the fatigue-influence of (C - an endurance clothing):
	let F be -1;
	decrease F by the magic-modifier of C;
	if C is blessed, decrease F by 1; [an extra 1]
	decide on F.

[!<ComputePlayerStanding>+

REQUIRES COMMENTING

+!]
To compute player standing:
	now resting is 0;
	let S be the buckle threshold of the player;
	let W be the weight of the player / 4; [More efficient than calculating weight twice]
	let H be (the heel skill of the player * 1000) / 5;
	if H < 1000, now H is 1000; [Don't want to be dividing by 0]
	repeat with C running through worn clothing:
		[say "Fatigue influence of [C] is [fatigue-influence of C].";]
		increase W by the fatigue-influence of C;
	if there is a worn heels, now W is (W * 1000) / H; [The * 1000 is to allow the game to better deal with division since it doesn't do remainders. Ideally we'd just use real numbers as opposed to integers here. Anyway the sum here means that at 0 or 1 heel skill you don't reduce fatigue at all (you divide by 1) and at max heel skill (10) you divide by 2.]
	otherwise now W is W / 2;
	if W > the strength of the player * 4, now W is the strength of the player * 4; [Any player of any weight should be able to stand up for at least 20 rounds]
	if W > 0: [W > 0 is there because fatigue increases very slowly when the player is superlight]
		if debugmode is 1, say "Fatigue [the fatigue of the player] -> ";
		FatigueUp W;
		if debugmode is 1, say "[the fatigue of the player] | [the buckle threshold of the player].";
	otherwise:
		unless the player is flying, FatigueUp 1; [It still increases though]
	if diaper quest is 0 and the location of the player is Dungeon19:
		if the soreness of asshole is 10:
			say "The stench in this room takes you over the edge and you start to faint.";
			now delayed fainting is 1;
			now the fainting reason of the player is 3;
	if the player is not vine fucked:
		if the fatigue of the player > S:
			unless the player is trap stuck:
				say "Your knees buckle with fatigue, and you fall down onto them. ";
				try kneeling;
				repeat with M running through intelligent dangerous monsters in the location of the player:
					make M expectant; [This way monsters are delayed for a turn when you buckle, giving you a chance to wait, submit, etc.]
				if there is a dangerous monster in the location of the player and the body soreness of the player > 8 and the bladder of the player > 6:
					now delayed urination is 1;
					say "Overcome with pain[if the bimbo of the player < 5] and fear[otherwise if the humiliation of the player < 10000] and shame[end if], you involuntarily wet yourself.";
					try urinating;
			otherwise:
				if the player is hook stuck:
					say "Your arms feel weak, your legs feel weak, your everything feels weak. Your legs begin to shake. You [if the bimbo of the player < 12]burst into tears[otherwise]squeal like a little girl[end if] as you feel your knees buckle underneath you, and all your weight is placed onto the hook. The intense pressure turns quickly into blinding pain, and causes you to faint within seconds.";
					now delayed fainting is 1;
					now the fainting reason of the player is 6;
				if the player is drill stuck, compute drill damage;
				if the player is dildo stuck, compute dildo damage;
		otherwise:
			if the player is drill stuck, compute drill damage;
			if the player is dildo stuck, compute dildo damage;
			if the player is vine-cursed or the player is vine stuck or the location of the player is WoodsBoss01 or the class of the player is schoolgirl, compute vines standing; [EXPERIMENTAL]
			if the player is glue stuck, compute glue escaping;
	otherwise:
		compute vines fucking.

[!<ComputeDildoDamage>+

REQUIRES COMMENTING

+!]
To compute dildo damage:
	unless the latex-transformation of the player > 3:
		repeat with D running through traps penetrating a fuckhole:
			say "The dildo keeps pressing on your sensitive spots inside your [if D is penetrating asshole][asshole][otherwise][vagina][end if][one of], making you more and more sore![or].[stopping]";
			let Q be a random number from 1 to 3;
			if Q > 1:
				if D is penetrating asshole, ruin asshole;
				otherwise ruin vagina.

[!<ComputeDrillDamage>+

REQUIRES COMMENTING

+!]
To compute drill damage:
	repeat with D running through drill pole traps penetrating a fuckhole:
		say "The dildo keeps spinning inside your [if D is penetrating asshole][asshole][otherwise][vagina][end if], making you more and more sensitive!";
		arouse 250; [Extra arousal]
		if D is penetrating asshole, ruin asshole;
		otherwise ruin vagina.


Player Standing ends here.

