Player Standing by Every Turn begins here.


[!<DecideWhichNumberIsTheBuckleThresholdOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the buckle threshold of (Y - yourself):
	decide on ((the strength of the player + 5 + (food theme bonus * 5)) * 20 * (10 - the body soreness of the player)) / 10.

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
	if the fatigue of the player >= the tired threshold of the player, decide yes;
	decide no.

[!<PersonIsVeryTired>+

REQUIRES COMMENTING

+!]
Definition: yourself (called Y) is very tired:
	if the fatigue of the player >= the very tired threshold of the player, decide yes;
	decide no.

[!<DecideWhichNumberIsTheFatigueInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the fatigue-influence of (C - a wearthing):
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
	if the largeness of belly > 3 or the largeness of breasts > 16 or (the ready-for-milking of milking-quest is 1 and the milk volume of breasts > 10)[ or there is worn heels], compute upright fatigue gain; [We only gain fatigue while standing for very big bodies or when wearing heels. Other fatigue gain comes from walking around and kicking.]
	if diaper quest is 0 and the location of the player is Dungeon19:
		if the soreness of asshole is 10:
			say "The stench in this room takes you over the edge and you start to faint.";
			now delayed fainting is 1;
			now the fainting reason of the player is 3;
	if the player is not vine fucked:
		if the fatigue of the player >= the buckle threshold of the player:
			unless the player is trap stuck:
				say "Your knees buckle with fatigue, and you fall down onto them. ";
				try kneeling;
				repeat with M running through intelligent dangerous monsters in the location of the player:
					make M expectant; [This way monsters are delayed for a turn when you buckle, giving you a chance to wait, submit, etc.]
				if there is a dangerous monster in the location of the player and the body soreness of the player > 8 and the bladder of the player > 6 and the player is not feeling dominant:
					now delayed urination is 1;
					say "Overcome with pain[if the player is not a pervert] and fear[otherwise if the humiliation of the player < 12500] and shame[end if], you involuntarily wet yourself.";
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
			if the player is vine-cursed or the player is vine stuck or (diaper quest is 0 and (the location of the player is WoodsBoss01 or the class of the player is schoolgirl or the class of the player is magical girl)), compute vines standing; [EXPERIMENTAL]
			if the player is glue stuck, compute glue escaping;
	otherwise:
		compute vines fucking.

To compute upright fatigue gain:
	let W be fatigue weight;
	let H be 2 + the hindrance of the player; [the hindrance of the player increases the more the player is unstable in high heels]
	repeat with C running through worn clothing:
		[say "Fatigue influence of [C] is [fatigue-influence of C].";]
		increase W by the fatigue-influence of C;
	now W is (W * H) / 4;
	if W > the strength of the player * 5, now W is the strength of the player * 5; [Any player of any weight should be able to stand up for at least 25 rounds]
	if W <= 0 and the player is not flying, now W is 1;
	if W > 0:
		if debuginfo > 1, say "[input-style]Fatigue: weight ([W]); [the fatigue of the player] -> ";
		FatigueUp W;
		if debuginfo > 1, say "[the fatigue of the player] | [the buckle threshold of the player][roman type][line break]".

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
		let F be a random fuckhole penetrated by D;
		say "The dildo keeps spinning inside your [variable F], making you more and more sensitive!";
		ruin F;
		stimulate F from D. [extra stimulation and chance of orgasm]


Player Standing ends here.

