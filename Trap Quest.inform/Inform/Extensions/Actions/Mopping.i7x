Mopping by Actions begins here.

Mopping is an action applying to one thing. [TODO mopping with clothing]

Rule for supplying a missing noun while mopping:
	if pink-spraybottle is worn and (diaper quest is 1 or (semen is not craved and the player is not thirsty)), now the noun is pink-spraybottle;
	otherwise now the noun is face.

Check mopping:
	[if the noun is not the location of the player, try cleaning the noun with instead;]
	if the player is flying, say "You can't reach anything you could clean." instead;
	if the player is not prone, say "You have to get on your knees first." instead;
	if the milk-puddle of the location of the player + the semen-puddle of the location of the player + the urine-puddle of the location of the player < 1, say "But there's no mess to clean?" instead;
	if the noun is face and face is actually occupied, say "Your mouth is busy already, isn't it?" instead;
	if the noun is pink-spraybottle:
		if there is a dangerous monster in the location of the player, say "You need to deal with the [random dangerous monster in the location of the player] first!" instead;
		if the noun is not worn by the player, say "But you're not holding the cloth..." instead;
	if the noun is face and semen is not craved and the semen-puddle of the location of the player > 0 and the class of the player is not maid and the class of the player is not catgirl:
		if the semen taste addiction of the player < 11 and the player is not broken and the semen taste addiction of the player * the thirst of the player < 18 and the player is not extremely thirsty, say "[if the semen taste addiction of the player * 5 >= 18][variable custom style]I'd have to be more thirsty than this before I'd consider doing that...[roman type][line break][otherwise]You can't bring yourself to do something so disgusting.[end if]" instead;
		if there is a dangerous monster in the location of the player and the humiliation of the player < (20 - the semen taste addiction of the player) * 1000, say "You wouldn't dare do that in front of the [random monster in the location of the player]. [if the semen taste addiction of the player > 14][line break][second custom style]no matter how much you want to...[roman type][line break][end if]" instead;
	otherwise if the noun is face and the urine-puddle of the location of the player > 0 and the class of the player is not maid and the class of the player is not catgirl:
		if the urine taste addiction of the player < 12 and the player is not broken and the urine taste addiction of the player * the thirst of the player < 18 and the player is not extremely thirsty, say "[if the urine taste addiction of the player * 5 >= 18][variable custom style]I'd have to be thirstier than this before I'd consider doing that...[roman type][line break][otherwise]You can't bring yourself to do something so disgusting.[end if]" instead;
		if there is a dangerous monster in the location of the player and the humiliation of the player < (20 - the urine taste addiction of the player) * 1000, say "You wouldn't dare do that in front of the [random monster in the location of the player]. [if the urine taste addiction of the player > 14][line break][second custom style]no matter how much you want to...[roman type][line break][end if]" instead;
	if the noun is clothing and the noun is not pink-spraybottle:
		if the noun is external fluid immune, say "The outside of that is waterproof, so it wouldn't work very well as a rag." instead;
		if the noun is fluid immune, say "That's not something you can clean with. Maybe try a piece of clothing actually made out of soft fabric?" instead;
		if the semen-soak of the noun + the urine-soak of the noun + the milk-soak of the noun >= the soak-limit of the noun, say "The [printed name of noun] is too covered in bodily fluids to effectively remove any more from the ground." instead;
	otherwise if the noun is not face and the noun is not pink-spraybottle:
		say "How would you clean with something like that?" instead.

To compute mopdipping:
	if the largeness of breasts > 10 and total puddle > 0:
		let S be the semen-puddle of the location of the player;
		let U be the urine-puddle of the location of the player;
		let M be the milk-puddle of the location of the player;
		let TBP be a random top level breasts protection clothing;
		if (S is 0 and TBP is clothing) or (S > 0 and (TBP is not clothing or TBP is semen-soak-appropriate clothing)):
			say "Your chest touches the floor as you clean, and when you sit up, it takes some of the mess with it.";
			if U > 0 and TBP is clothing:
				UnannouncedSquirt urine on TBP by 1;
				decrease the urine-puddle of the location of the player by 1;
			if M > 0 and TBP is clothing:
				UnannouncedSquirt milk on TBP by 1;
				decrease the milk-puddle of the location of the player by 1;
			if S > 0:
				if TBP is clothing, UnannouncedSquirt semen on TBP by 1;
				otherwise UnannouncedSquirt semen on breasts by 1;
				decrease the semen-puddle of the location of the player by 1.

Carry out mopping face:
	allocate 6 seconds;
	let A be the urine-puddle of the location of the player;
	let B be the milk-puddle of the location of the player;
	let C be the semen-puddle of the location of the player;
	let D be 0;
	let E be 0;
	let F be 0;
	say "You begin [one of]to lick up[or]slurping up[or]licking up[at random] the [if C > 0 and C > B + A][semen] clinging to the floor[otherwise if A > 0 and A > C + B][urine] on the floor[otherwise if B > 0 and B > C + A]milk on the floor[otherwise]fluids on the floor[end if], [if the player is not shameless][one of]shuddering at the new low this game has forced you to.[or]once again finding yourself scraping the bottom of the barrel for humiliating acts.[stopping][otherwise][one of]shivering with excitement at your brand new low.[or]once again finding yourself at the peak of degrading acts.[stopping][end if]";
	now F is C;
	if F > 4, now F is 4;
	now E is B;
	if E > 4 - F, now E is 4 - F;
	now D is A;
	if D > 4 - (E + F), now D is 4 - (E + F);
	FaceFill semen by F;
	decrease the semen-puddle of the location of the player by F;
	FaceFill milk by E;
	decrease the milk-puddle of the location of the player by E;
	FaceFill urine by D;
	decrease the urine-puddle of the location of the player by D;
	if class of the player is catgirl:
		if the player is not broken, humiliate SEVERE-HUMILIATION - (MODERATE-HUMILIATION * (the thirst of the player - 1));
	otherwise:
		humiliate (SEVERE-HUMILIATION * 2) - (MODERATE-HUMILIATION * (the thirst of the player + 2));[This is probably one of the least dignified things you could do, but it's less humiliating the thirstier you are]
	suggest swallowing.


Carry out mopping clothing:[TODO: breasts largeness 10+ will touch the ground and become soaked.]
	allocate 6 seconds;
	let D be 0; [amount of puddle that was cleaned this turn - increases work ethic and fatigue]
	let E be a random number between 1 and 2; [amount of puddle to be cleaned this turn]
	let SL be the soak-limit of the noun - (the semen-soak of the noun + the urine-soak of the noun + the milk-soak of the noun);
	if the noun is pink-spraybottle:
		increase E by 1;
		if the noun is blessed, now E is a random number between 4 and 5;
		if the class of the player is "cafe maid" and there is a carried waitress vessel, now E is 99999;
		say "You get to work cleaning up the mess with [NameDesc of the noun]. [if total puddle <= E]You get the room clean in a short time![otherwise if the noun is not cursed]It feels like [NameDesc of the noun] is working together with you to clean up the mess, and although [bold type]you're not finished[roman type] cleaning up the mess, you know you're working efficiently![otherwise]It feels like [NameDesc of the noun] is actively working against you to clean up the mess, which is making you build fatigue faster than you should need to.[end if]";
		if the class of the player is "cafe maid" and there is a carried waitress vessel:
			let W be a random carried empty waitress vessel;
			if W is waitress vessel:
				if diaper quest is 1:
					if the urine-puddle of the location of the player > 0 and watersports fetish is 1, now the fill-colour of W is golden;
					otherwise now the fill-colour of W is white;
				otherwise:
					let FL be 0;
					if the urine-puddle of the location of the player > 0, increase FL by 1;
					if the semen-puddle of the location of the player > 0, increase FL by 1;
					if the milk-puddle of the location of the player > 0, increase FL by 1;
					if FL is not 1:
						now the fill-colour of W is murky;
					otherwise if the urine-puddle of the location of the player > 0:
						now the fill-colour of W is golden;
					otherwise if the semen-puddle of the location of the player > 0:
						now the fill-colour of W is creamy;
					otherwise:
						now the fill-colour of W is white;
				say "You [one of]jump in surprise[or]watch on[stopping] as [NameDesc of W] magically fills up with [fill-colour of W] liquid.[line break][variable custom style]I guess I'm supposed to serve this to someone?[roman type][line break]";
				now the Known corresponding to an Magic of the fill-type of W in the Table of Drinks is 1;
				DoseFill W;
			otherwise:
				say "[bold type][BigNameDesc of the noun][bold type] seems upset that you don't have an appropriate empty drinks vessel for it to fill![roman type][line break]";
				compute service spill punishment;
		otherwise if the noun is spray:
			say "Your [ShortDesc of the noun] pulses as it slowly fills up with darkly coloured liquid.";
			if the charge of the noun < 5, increase the charge of the noun by 1;
	otherwise if E > SL:
		now E is SL;
	if the urine-puddle of the location of the player > 0 and E > 0:[Clean up is in order of thickness. urine is thinnest, followed by milk, followed by semen.]
		if the urine-puddle of the location of the player > E:
			increase D by E;
			decrease the urine-puddle of the location of the player by E;
			UrineSoakUp the noun by E;
			now E is 0;
		otherwise:
			increase D by the urine-puddle of the location of the player;
			decrease E by the urine-puddle of the location of the player;
			UrineSoakUp the noun by the urine-puddle of the location of the player;
			now the urine-puddle of the location of the player is 0;
	if the milk-puddle of the location of the player > 0 and E > 0:
		if the milk-puddle of the location of the player > E:
			increase D by E;
			decrease the milk-puddle of the location of the player by E;
			MilkSoakUp the noun by E;
			now E is 0;
		otherwise:
			increase D by the milk-puddle of the location of the player;
			decrease E by the milk-puddle of the location of the player;
			MilkSoakUp the noun by the milk-puddle of the location of the player;
			now the milk-puddle of the location of the player is 0;
	if the semen-puddle of the location of the player > 0 and E > 0:
		if the semen-puddle of the location of the player > E:
			increase D by E;
			decrease the semen-puddle of the location of the player by E;
			SemenSoakUp the noun by E;
			now E is 0;
		otherwise:
			increase D by the semen-puddle of the location of the player;
			decrease E by the semen-puddle of the location of the player;
			SemenSoakUp the noun by the semen-puddle of the location of the player;
			now the semen-puddle of the location of the player is 0;
	if the noun is pink-spraybottle:
		increase the work ethic of the noun by D * 30;
		if the noun is cursed, now D is D * 3;
	FatigueUp D * 10;
	if the noun is not pink-spraybottle and the semen-soak of the noun + the urine-soak of the noun + the milk-soak of the noun >= the soak-limit of the noun, say "The [printed name of noun] is now fully saturated." instead;
	check regular humiliating situation.

was-mopping is initially false.
[Allows us to offer the option to the player to continue mopping]

Report Mopping:
	if the noun is face:
		if cat-ears is off-stage and the player is not in a predicament room and cat-ears is actually summonable and a random number between 1 and 3 is 1:
			say "[bold type]You feel a headband with cat ears materialise on your head.[line break][if the bimbo of the player > 12][second custom style]Teehee, I get it! Only a naughty pussycat would ever drink anything off the floor![otherwise][first custom style]I guess that's what I get for drinking off the floor like some kind of animal...[end if][roman type][line break]";
			summon cat-ears;
	if stripper maid headdress is worn:
		let M be a random actually seducable monster;
		if M is monster:
			if (maid-bra is currently visible and maid-thong is currently visible) or vagina is lewdly exposed or asshole is lewdly exposed or the blue-balls of M > a random number between 0 and 5:
				say "[BigNameDesc of M] is incredibly horny! [big he of M] seems to interpret your sexy movements while cleaning as a seductive routine, and steps up so that your butt is bumping into [his of M] crotch! Unless you stop [him of M], you're now seducing [NameDesc of M]!";
				progress quest of sexy-puddle-cleaning-quest;
				repeat with N running through monsters in the location of the player:
					now N is stalled;
				now M is seduced;
				set up sex length of M in asshole;
				now turns-spent-seducing is 0;
				now another-turn is 1;
				add the core seduction rule to another-turn-rules;
			otherwise:
				say "[big he of M] is getting worked up...";
				increase the blue-balls of M by a random number between 1 and 2;
	otherwise if there is a worn maid headdress or stripper-ears is worn or (the number of worn headgear is 0 and stripper maid headdress is off-stage):
		let M be a random actually seducable monster;
		if M is monster:
			say "[BigNameDesc of M] looks at you with poorly hidden lust! [slightHumiliateReflect]";
			let H be a random worn headgear;
			if H is stripper-ears or the player is getting very unlucky:
				if H is headgear:
					transform H into stripper maid headdress;
					compute class outfit of stripper maid headdress;
				otherwise:
					summon stripper maid headdress cursed;
	if housewife dress is worn and maid apron is off-stage:
		class summon maid apron;
		say "[variable custom style]Cooking, child-rearing and cleaning... I guess that's my life from now on.[roman type][line break]";
	now was-mopping is true;
	if the noun is pink-spraybottle and pink-spraybottle is spray and total puddle <= 0 and the magic-fatigue of the player > 0:
		say "The [ShortDesc of the noun] rewards your continued diligent cleaning by sending real power down your arms! You feel like you have enough magic for another powerful attack with your spraybottle!";
		MagicPowerRefresh 2.

Understand "clean puddle with [something]", "mop up puddle with [something]", "clean mess with [something]", "clean with [something]", "[something] puddle", "clean room with [something]" as mopping.
Understand "clean cum with [something]", "clean semen with [something]" as mopping when the semen-puddle of the location of the player > 0.
Understand "clean piss with [something]", "clean urine with [something]" as mopping when the urine-puddle of the location of the player > 0.
Understand "clean milk with [something]" as mopping when the milk-puddle of the location of the player > 0.
Understand "lick puddle", "lick floor", "lick ground", "drink puddle", "slurp puddle", "slurp up puddle", "clean puddle", "clean mess", "mop puddle", "mop", "mop mess", "clean room", "mop room", "spray room", "spray puddle", "spray mess", "mop up puddle" as mopping.

Mopping ends here.
