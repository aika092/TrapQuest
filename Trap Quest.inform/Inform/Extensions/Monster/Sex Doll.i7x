Sex Doll by Monster begins here.

A sex doll is a kind of monster. A sex doll is male. A sex doll is neuter. The leftover-type of a sex doll is usually 103. The poison-status of a sex doll is -1.

Definition: a sex doll is willing to do titfucks: decide no.
Definition: a sex doll is forced to wear a condom: decide no.

Definition: a sex doll is dungeon dwelling: decide yes.

Figure of Male Sex Doll is the file "NPCs/Dungeon/SexDoll/sexdoll1.png".
Figure of Female Sex Doll is the file "NPCs/Dungeon/SexDoll/sexdoll2.png".

Figure of Sexdoll Cutscene 1 is the file "Special/Cutscene/cutscene-sexdoll-climax1.png".
Figure of Sexdoll Cutscene 2 is the file "Special/Cutscene/cutscene-sexdoll-climax2.png".
Figure of Sexdoll Cutscene 3 is the file "Special/Cutscene/cutscene-sexdoll-explode1.png".
The text-shortcut of sex doll is "sd".

To say ShortDesc of (M - a sex doll):
	say "sex doll".

[Selkie wondered why only creamfilled- and airfilled-sex-doll are hyphenated. MG explains: class names and variables names in inform are somewhat interchangeable, which means you never know what might cause the compiler to say "hey wait, you already defined that somewhere else!" for example, "creamfilled sex doll" might cause problems with the condom of kings, because it has a field called "creamfilled."]
A creamfilled-sex-doll is a kind of sex doll.
creepy sex doll is a creamfilled-sex-doll. The text-shortcut of creepy sex doll is "csd".
To say MediumDesc of (M - creepy sex doll):
	say "creepy [SexDollGender of M] sex doll".

expressionless sex doll is a creamfilled-sex-doll. The text-shortcut of expressionless sex doll is "exp".
To say MediumDesc of (M - expressionless sex doll):
	say "expressionless [SexDollGender of M] sex doll".

animated sex doll is a creamfilled-sex-doll. The text-shortcut of animated sex doll is "ani".
To say MediumDesc of (M - animated sex doll):
	say "animated [SexDollGender of M] sex doll".

zombielike sex doll is a creamfilled-sex-doll. The text-shortcut of zombielike sex doll is "zom".
To say MediumDesc of (M - zombielike sex doll):
	say "zombielike [SexDollGender of M] sex doll".

An airfilled-sex-doll is a kind of sex doll.
wandering sex doll is an airfilled-sex-doll. The text-shortcut of wandering sex doll is "wan".
To say MediumDesc of (M - wandering sex doll):
	say "wandering [SexDollGender of M] sex doll".

mindless sex doll is an airfilled-sex-doll. The text-shortcut of mindless sex doll is "msd".
To say MediumDesc of (M - mindless sex doll):
	say "mindless [SexDollGender of M] sex doll".

puppetlike sex doll is an airfilled-sex-doll. The text-shortcut of puppetlike sex doll is "pup".
To say MediumDesc of (M - puppetlike sex doll):
	say "puppetlike [SexDollGender of M] sex doll".

uncanny sex doll is an airfilled-sex-doll. The text-shortcut of uncanny sex doll is "unc".
To say MediumDesc of (M - uncanny sex doll):
	say "uncanny [SexDollGender of M] sex doll".

To say SexDollGender of (M - a sex doll):
	if M is creamfilled-sex-doll:
		if full-lady fetish is 1:
			say "female strapon";
		otherwise if lady fetish is 1:
			say "futanari";
		otherwise:
			say "male";
	otherwise:
		say "female dildo".

Understand "male" as a sex doll when the item described is creamfilled-sex-doll.
Understand "female", "strapon" as a sex doll when the item described is not airfilled-sex-doll.

[
Cum filled:
Creepy - zombielike
Air filled: wandering - uncanny
]

Definition: a sex doll (called M) is father material:
	if M is creamfilled, decide yes;
	decide no.

Definition: a sex doll (called M) is liquidfilled:
	if M is creamfilled-sex-doll or inflation fetish is 0, decide yes;
	decide no.

Definition: a sex doll is virginity taking: decide yes.

To decide which figure-name is the monster-image of (M - a sex doll):
	if M is creamfilled-sex-doll and lady fetish is 0:
		decide on Figure of Male Sex Doll;
	otherwise:
		decide on Figure of Female Sex Doll;

To say DollColour of (M - an airfilled-sex-doll):
	say "[if M is wandering sex doll]silver[otherwise if M is mindless sex doll]gold[otherwise if M is puppetlike sex doll]brown[otherwise if M is uncanny sex doll]red[end if]".

To say DollColour of (M - a creamfilled-sex-doll):
	say "[if M is creepy sex doll]black[otherwise if M is expressionless sex doll]yellow[otherwise if M is animated sex doll]gray[otherwise if M is zombielike sex doll]red[end if]";

To say MonsterDesc of (M - a sex doll):
	if M is creamfilled-sex-doll:
		say "A [if lady fetish is 1]female sex doll with conical breasts[otherwise]male sex doll with painted on abs[end if] and [DollColour of M] 'hair' that couldn't look more fake if it were drawn on in permanent marker. [big he of M] is filled with opaque liquid, which sloshes around visibly with [his of M] movements. [if full-lady fetish is 1][big his of M] crotch is black, which makes the flesh-coloured dildo extending from [his of M] crotch look like a strapon[otherwise]A flesh-coloured dildo extends from [his of M] crotch, accompanied by a rubbery sack[end if].";
	otherwise:
		say "An inflatable female sex doll with spherical breasts and [DollColour of M] lips painted on [his of M] face. [big he of M] is completely naked, and the ends of [his of M] arms are adorned with large suctions cups, which could probably give [him of M] a quite strong grip. A flesh-coloured dildo extends from [his of M] crotch, [if inflation fetish is 1]which appears to be filled with some sort of dark liquid[otherwise]almost like a cork[end if].".

To say MonsterComment of (M - a sex doll):
	if M is not liquidfilled:
		say "[if the bimbo of the player > 11][line break][variable custom style][one of]Hee hee, look at [his of M] boobies![or]I bet [he of M]'s squeaky![or][big he of M] doesn't look tough. I should be gentle when I'm getting on my knees.[in random order][otherwise if the bimbo of the player > 7][variable custom style][one of]It doesn't look strong, but I don't want to give the wrong idea by touching it.[or]Not many men would use a sex doll with a dildo on it. That thing is probably here for me.[in random order][otherwise if the player is female][line break][first custom style][one of]That's the last thing I need to deal with, a moving balloon animal.[or]So creepy. I'm popping it.[or]If that thing comes anywhere near me, I'm popping it.[or]A sex doll? I think I'm going to throw up.[in random order][otherwise][first custom style][one of]Whoa, I knew this place had cool stuff! [or]Heh, don't mind if I- wait, is that a dildo?[or]Just like the blow-up doll I have at home. Minus the dildo.[or]The doll doesn't look like it has anything in it. Probably a blow-up doll.[or]Heh, maybe I should take that dildo. Chicks love toys.[in random order][end if][roman type][line break]";
	otherwise:
		say "[if the semen taste addiction of the player > 11][line break][variable custom style][one of]Sounds like something *yummy* is sloshing around in there![or]What's in it? I hope it's [semen]![in random order][otherwise if the semen taste addiction of the player > 5][variable custom style][one of]It's full of something. Is it [semen]?[or]That dildo isn't that big. I could handle it if I had to.[or]It doesn't look tough at all. But I don't want it to pop and spill everywhere.[in random order][otherwise if the player is female][line break][first custom style][one of]That is just about the creepiest *thing* I've ever seen.[or]If that thing comes anywhere near me, I'm popping it.[or]Is there something *IN* there?[or]I can kind of see something sloshing around inside it. Gross.[in random order][otherwise if M is creamfilled-sex-doll][first custom style][one of]What's that inside it? And why am I so scared that I know the answer?[or]It looks like there's [semen] in it. Creepy.[stopping][otherwise][first custom style][one of]A female sex doll with a dick? The chicks in here must be mad slutty.[or]I've got to find a chick to try that out for me.[in random order][end if][roman type][line break]".

To set up (M - a sex doll):
	reset M;
	now the monstersetup of M is 1;
	add squirt dildo to the banishItems of M, if absent;
	add piece-of-rubber to the banishItems of M, if absent;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M.

To decide which number is the starting difficulty of (M - a sex doll):
	decide on 3.

To decide which number is the girth of (M - a sex doll):
	decide on 3.

To say LeftoverDesc (N - 103):
	say "A deflated sex doll can be seen here on the ground, with a huge tear in one side.[line break]";

Part 1 - Misc Flavour

To say SummoningFlav of (M - a sex doll):
	say "[if M is in the location of the player]A space opens up in the centre of the circle, just large enough for a pink balloon to quickly float free. You hear a rush of air as it transforms into a [printed name of M]![otherwise]You hear the sound of rushing air coming from another part of the dungeon.[end if]".

To say PregGrowth of (M - a sex doll):
	say "the sex doll".

To compute labour to (M - a sex doll):[priority for testing]
	compute pregnancy clothing displacement;
	say "[PregFlav]You hear the sound of rubber stretching, and look down to see an inflatable head ballooning from your [vagina]. The sound of rushing air and balloon inflation fills the air as slowly but surely a fully sized sex doll emerges from inside of you. You lay there stunned as it rights itself onto its rubber legs and starts to wander away.";
	set up M;
	dislodge M;
	regionally place M.

To compute fatherhood to (M - a sex doll): [Birth scene was handled already.]
	distract M.

To compute (M - a monster) stomping (N - a sex doll):
	if M is in the location of the player, say "[BigNameDesc of M] rips a hole in the side of the [N], causing it to instantly deflate with a loud pop.";
	otherwise say "You hear a loud pop, like a huge balloon bursting, from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if]";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

To say MuteGreetResponse of (M - a sex doll):
	say "The doll doesn't reply. It would appear to be magically animated rather than sentient.".

To say MuteQuestion of (M - a sex doll):
	say SexDollQuestion of M.

Part 2 - Perception

Report kneeling when there is an uninterested sex doll in the location of the player:
	repeat with M running through uninterested sex dolls in the location of the player:
		compute correct perception of M;

To compute perception of (M - a sex doll):
	deinterest M; [This is because the sex doll does not notice enemies by default.]
	if the class of the player is living sex doll:
		say "[BigNameDesc of M] seems to notice you! But it seems to no longer consider you an enemy.";
		now the boredom of M is 300;
	otherwise if M is objectifying the player:
		anger M;
		now the sex-length of M is 3;
		say "[BigNameDesc of M] seems to notice you! Uh-oh...";
		now M is interested;
	otherwise if the player is prone:
		anger M;
		now the sex-length of M is 1;
		say "[BigNameDesc of M] seems to notice you! Uh-oh...";
		now M is interested;
	otherwise if a random number between 6 and 15 < highest body part sex addiction and the player is not at least partially immobile and the player is not flying and the player is not dildo stuck:
		anger M;
		say "[BigNameDesc of M][']s fake penis wobbles as it walks around. In a moment of weakness, you find yourself dropping to your knees to take it!";
		allocate 1 seconds;
		try kneeling;
		now the sex-length of M is 2;
		say "[BigNameDesc of M] seems to notice you! You giggle in nervous delight.";
		now M is interested;
	if M is interested, now the sex-length of M is the difficulty of M.

Part 3 - Combat

Section 1 - Attack

The sex doll priority attack rules is a rulebook. The priority attack rules of a sex doll is the sex doll priority attack rules.
[The priority attack rules of a sex doll is usually the sex doll compression rule.]

[The sex doll has a special effect if it dies while charged. This effect also happens if you kill it with a heel spike or a sword.]
A sex doll can be doll-charged or not doll-charged.

This is the sex doll compression rule:
	let M be current-monster;
	if M is doll-charged:
		if the difficulty of M >= the starting difficulty of M + 3:[At max power, it gains an additional attack.]
			if the health of M < the maxhealth of M / 8 and a random number between 1 and 2 is 1:
				say "[BigNameDesc of M] remains motionless.";
			otherwise:
				compute missile attack of M;
		otherwise:
			say "[BigNameDesc of M] deflates slightly as it releases the extra air.";
			now M is not doll-charged;
		rule succeeds;
	otherwise if the difficulty of M > the starting difficulty of M and a random number between 1 and 5 is 1:
		say "[BigNameDesc of M] body becomes motionless, emitting a hissing noise as it takes in extra air.";
		now M is doll-charged;
		rule succeeds.
The sex doll compression rule is listed in the sex doll priority attack rules.

To compute missile attack of (M - an airfilled-sex-doll):
	if the accuracy roll of M >= the dexterity of the player:
		let B be the painful-part of M;
		say "[BigNameDesc of M] violently ejects its [DickDesc of M] from its body, hitting you [TargetName of B]! The dildo floats off the ground and returns to its place as the doll slightly deflates.";
		compute M striking B;
		compute M hurting B;[always does extra damage]
		now M is not doll-charged;
	otherwise:
		say "[BigNameDesc of M] violently ejects its [DickDesc of M] from its body, and you narrowly avoid being hit by it. The dildo floats off the ground and returns to its place as the doll slightly deflates.";

To compute missile attack of (M - a creamfilled-sex-doll):
	if the accuracy roll of M >= the dexterity of the player:
		let B be the painful-part of M;
		say "[BigNameDesc of M] shoots [semen] out of its [DickDesc of M], hitting you [TargetName of B]!";
		if bukkake fetish is 1, AnnouncedSquirt semen on B by 1;
		say "A faint feeling of warmth spreads out from the point of 'impact' as the doll slightly deflates.";
		passively stimulate B from M;
		now M is not doll-charged;
	otherwise:
		say "[BigNameDesc of M] shoots [semen] out of its [DickDesc of M], and you narrowly avoid being hit by it. The doll slightly deflates.";
		SemenPuddleUp 1.

To compute the flying player taunting of (M - a sex doll):
	if a random number from 1 to 6 is 1:
		say "[BigNameDesc of M] is [one of][or]still [stopping]watching you, waiting.".

To compute sexDumb of (M - a sex doll) in (F - a fuckhole):
	say "The sex doll is fucking your [if M is penetrating asshole][asshole][otherwise][vagina][end if][one of] slowly but steadily[or] silently[or], seemingly unable to hear your screams[or] as if controlled by invisible puppet strings[or] in a very strict rhythm[or], with machine like precision and timing[or], with no signs of emotion or conscious thought[or] [if the bimbo of the player < 14]as if you were some kind of object[otherwise]like the fucktoy that you are[end if][at random]! [if the bimbo of the player < 11][line break][first custom style]Shit...[otherwise][line break][second custom style]Aaah!!![end if][roman type][line break]".

To (M - a sex doll) sex reaction:
	if the reaction of the player > 0, say "You feel further humiliated by the fact that you are letting a mere doll fuck you.".

To compute unique climax of (M - a sex doll) in (F - asshole):
	TimesSubmittedUp M by 1;
	if M is airfilled-sex-doll and inflation fetish is 1:
		say "With one final thrust, you feel air start to flow inside of you. [BigNameDesc of M] is deflating inside of you! Your belly somehow inflates like a balloon.[if the bimbo of the player < 7][line break][first custom style][one of] What the fuck is going on?![or]Not again...[stopping][roman type][line break]The sex doll deflates into nothingness.";
		AssFill a random number between 8 and 10 air;
	otherwise if M is airfilled-sex-doll:
		compute FluidFill of M;
	otherwise:
		say "[one of]After one final thrust, you feel [NameDesc of M] begin to deflate, its warm, sticky contents shooting out inside of you. [or]With one final thrust, [NameDesc of M] begins to deflate, hissing quietly as it evacuates its warm, sticky contents directly into your [asshole]. [or][BigNameDesc of M] begins to deflate, hissing quietly as its warm sticky contents shoot up inside of you. [or][BigNameDesc of M] stops after one final thrust, deflating as it floods your belly with its sticky white contents. [at random][one of][if the bimbo of the player < 7][line break][first custom style]Oh God, I think that was cum. All of it went inside me...[otherwise if the bimbo of the player < 12][line break][variable custom style]I think that was cum. There's so much of it inside me...[otherwise][line break][second custom style]That was cum! Mmm, there's so much of it inside me...[end if][or][if the bimbo of the player < 7][first custom style]Ugh... I'm so full...[otherwise if the bimbo of the player < 12][variable custom style]I'm so full...[otherwise][second custom style]There's so much.~[end if][or][if the bimbo of the player < 7][first custom style]Not again...[otherwise if the bimbo of the player < 12][variable custom style]There's always a lot...[otherwise][second custom style]I think there's even more than last time![end if][stopping][roman type][line break]The sex doll disappears into nothingness.";
		cutshow figure of sexdoll cutscene 1 for M;
		assfill 12;
	destroy M.

To compute FluidFill of (M - a sex doll):
	if the player is a flatchested trap:
		say "[BigNameDesc of M] suddenly stops, its [manly-penis] bulging slightly as several spurts of cool fluid flow inside of you. You feel your hips growing in size!";
		HipUp 1;
	otherwise:
		let R be a random number between 1 and 3;
		say "[if R is 3][BigNameDesc of M] suddenly stops, its [manly-penis] bulging slightly as several spurts of cool fluid flow inside of you. You feel your breasts and hips both growing in size![otherwise][one of]After one final thrust, you feel [NameDesc of M][']s [manly-penis] inflate slightly, as if to create an airtight seal. You gasp as several spurts cool fluid flow inside of you. Your breasts jiggle as they quickly grow in size.[or]You feel [NameDesc of M][']s [manly-penis] inflate slightly, as if to create an airtight seal. Several spurts of cool fluid flow inside of you. A strange sensation spreads through your body, dissipating as your breasts suddenly burgeon with size.[or][BigNameDesc of M] suddenly stops, its [manly-penis] bulging slightly as several spurts of cool fluid flow inside of you. Your breasts suddenly grow![at random][end if][if the bimbo of the player < 7][line break][first custom style][one of] What the fuck is going on?![or]Not again...[stopping][roman type][line break]The sex doll disappears into nothingness.";
		BustUp 3;
		if R is 3, HipUp 1.

To compute unique climax of (M - a sex doll) in (F - vagina):
	TimesSubmittedUp M by 1;
	if M is airfilled-sex-doll:
		compute FluidFill of M;
	otherwise:
		say "[one of]After one final thrust, you feel [NameDesc of M] begin to deflate, its warm, sticky contents shooting out inside of you.[or]With one final thrust, [NameDesc of M] begins to deflate, hissing quietly as it evacuates its warm, sticky contents directly into your [vagina].[or][BigNameDesc of M] begins to deflate, hissing quietly as its warm sticky contents shoot up inside of you.[or][BigNameDesc of M] stops after one final thrust, deflating as it floods your [vagina] with its sticky white contents.[at random] [one of][if the bimbo of the player < 7][line break][first custom style]Oh God, I think that was cum. All of it went inside me...[otherwise if the bimbo of the player < 12][line break][variable custom style]I think that was cum. There's so much of it inside me...[otherwise][line break][second custom style]That was cum! Mmm, there so much of it inside me...[end if][or][if the bimbo of the player < 7][first custom style]Ugh... I'm so full...[otherwise if the bimbo of the player < 12][variable custom style]I'm so full...[otherwise][second custom style]There's so much.~[end if][or][if the bimbo of the player < 7][first custom style]Not again...[otherwise if the bimbo of the player < 12][variable custom style]There's always a lot...[otherwise][second custom style]I think there's even more than last time![end if][stopping][roman type][line break]The sex doll disappears into nothingness.";
		cutshow figure of sexdoll cutscene 1 for M;
		PussyFill 12;
	destroy M.

To compute the default taunting of (M - a sex doll):
	say "[DollWait of M]".

To compute the dildo stuck taunting of (M - a sex doll):
	say "[DollWait of M]";
	if doll-stuck-num > 0:
		say "The expressionless gaze of the [printed name of M] as [he of M] patiently watches you rotate around, makes your blood burn in humiliation. You [BlushPrettily], imagining it 'thinking' you're [one of]no better than it, a mere toy for people's amusement[or]just like it[or]wishing you could move freely, like it[or]trying to show people you're like a doll, yourself[or]not better than it[at random].[line break]".

To say DollWait of (M - a sex doll):
	say "[one of][BigNameDesc of M] stands in front of you, motionless.[or][or][cycling]".

This is the sex doll never convinced rule:
	if presented-orifice is not nothing, say "[BigNameDesc of current-monster] shows no indication of having noticed or understood your action.".
The monster convinced rule of sex doll is usually the sex doll never convinced rule.

To compute (M - a sex doll) entering mouth:
	if (M is not creamfilled-sex-doll or a random number between 1 and 3 < 2) and face is not occupied:
		if M is airfilled-sex-doll:
			if the player is a flatchested trap:
				if inflation fetish is 1:
					say "[BigNameDesc of M] walks round to your front and sticks its dildo [manly-penis] in your mouth. It immediately deflates, filling your mouth and throat with air! Somehow, it goes straight to your hips, inflating them.";
					AssInflate 3;
				otherwise:
					say "[BigNameDesc of M] forces its dildo [manly-penis] into your mouth, which immediately begins spurting sweet fluid straight down your throat. It deflates into nothingness as your hips suddenly grow in size.";
					HipUp 1;
			otherwise if inflation fetish is 1:
				say "[BigNameDesc of M] wanders round to your front and sticks its dildo [manly-penis] in your mouth. It immediately deflates, filling your mouth and throat with air! Somehow, it goes straight to your breasts, inflating them.";
				BustInflate 6;
			otherwise:
				say "[one of][BigNameDesc of M] forces its dildo [manly-penis] into your mouth, which immediately begins spurting sweet fluid straight down your throat. It deflates into nothingness as your breasts suddenly grow in size.[or][BigNameDesc of M] forces its dildo [manly-penis] into your mouth, causing you to splutter as cool fluid rushes down your throat. You feel a momentary tingling in your chest as the sex doll slowly deflates into nothingness. Whatever it was it made you drink, it made grow even larger boobs![or][BigNameDesc of M] shoves its dildo [manly-penis] in your mouth and immediately begins to deflate. You splutter as cool fluid washes down your throat. A tingling sensation in your chest draws your attention just in time for you so see yourself grow even bigger boobs![or][if the relevant sex addiction of M < 7][BigNameDesc of M] forces its dildo [manly-penis] into your mouth. You try to pull away, but it's too late, cool fluid is already rushing down your throat. It may be that the rapidly deflating doll blocked your view, but your breasts look a lot bigger![otherwise if the relevant sex addiction of M < 11][BigNameDesc of M] forces its dildo [manly-penis] into your mouth. You wait obediently, and soon cool fluid is already rushing down your throat. It may be that the rapidly deflating doll blocked your view, but your breasts look a lot bigger![otherwise][BigNameDesc of M] positions itself in front of your face, sliding its dildo [manly-penis] into your mouth as soon as you open it. It deflates as cool fluid rushes down your throat. Your breasts have gotten a lot bigger.[end if][in random order]";
				BustUp 3;
		otherwise:
			now M is penetrating face; [To allow for gagging]
			say "[BigNameDesc of M] walks round to your face and sticks its dildo [manly-penis] in your mouth. It immediately deflates, filling your stomach to the brim with [semen]! [if the semen taste addiction of the player < 6][line break][first custom style]Fuck that's disgusting![otherwise if the semen taste addiction of the player < 13][line break][second custom style]Ooh, that's made me quite full...[otherwise][second custom style]Aww, I hardly even got to taste that.[end if][roman type][line break]";
			cutshow figure of sexdoll cutscene 2 for M;
			if the stomach of the player < 10, increase the stomach-semen of the player by 10 - the stomach of the player;
			StomachSemenUp 2;
			now M is not penetrating face;
		destroy M;
	otherwise:
		if M is not creamfilled-sex-doll:
			say "[BigNameDesc of M] walks round to your face and waits there for a few seconds, motionless. It looked like it was about to mess with you, but something seemed to change its mind.";
		otherwise if bukkake fetish is 1:
			[If the player is gagged then there shouldn't be a monster also occupying here, so a bukkake can happen! Could change I guess if there's open gags put into the game]
			say "[BigNameDesc of M] moves round to your face, air hissing quietly as its rubber sack slowly expands. A beat after the noise stops, the doll suddenly begins blasting your face with a torrent of pure white ejaculate! You're completely plastered by the time it deflates.";
			CumFaceUp 8;
		otherwise:
			say "You hear a faint hissing noise as [NameDesc of M] stands motionless next to your [ShortDesc of hips], which are suddenly blasted by a torrent of ejaculate! Your lower body gets plastered by what feels like gallons of [semen] as it deflates.";
			if bukkake fetish is 1, AnnouncedSquirt semen on hips by 12;
			otherwise AnnouncedSquirt semen on thighs by 8;
		if M is creamfilled-sex-doll, destroy M.

To say type security of (M - a sex doll):
	if M is liquidfilled, say "They're covered in an strange sticky substance, which seems to get stickier as moments go by. It must be some sort of liquid adhesive! [if the player is glue stuck][line break][variable custom style]Oh man, not more glue![roman type][line break][end if]";
	otherwise say "The suction cups form a weak seal against your skin, but subtle movements of the doll's arms make it tighter and tighter. ".

To say type fuck secured of (M - a sex doll):
	if M is liquidfilled, say "its grip on your hips tightening as the adhesive dries";
	otherwise say "the suction cups completely sealing its 'hands' to your hips".

To say PenPrep of (M - a sex doll) in (F - asshole):
	let N be a random monster penetrating vagina;
	if N is monster, say "Invisible puppet strings fasten themselves to your knees and elbows, foisting you up and flipping you over so your [BreastDesc] and [ShortDesc of belly] are pressed flat against the [N]. [BigNameDesc of M] places its primitive hands on either side of your waist. ";
	otherwise say "[BigNameDesc of M] moves behind you, placing its primitive hands on your hips. ";
	say type security of M.

To say AssholePenetrationFlav of (M - a sex doll):
	say FuckholePenetrationFlav of M.

To say VaginalPenetrationFlav of (M - a sex doll):
	say FuckholePenetrationFlav of M.

To say PenPrep of (M - a sex doll) in (F - vagina):
	let N be a random monster penetrating asshole;
	if N is monster, say "You feel invisible puppet strings fasten themselves to your elbows, foisting you up so your back is flush with the chest of the [N]. [BigNameDesc of M] places its primitive hands on either side of your waist. ";
	otherwise say "[BigNameDesc of M] moves behind you, placing its primitive hands on your hips. ";
	say type security of M.

To set up sex length (N - a number) of (M - a sex doll) in (F - a fuckhole):
	if the sex-length of M > 5:
		now the sex-length of M is 5;
	otherwise if the sex-length of M < 1:
		now the sex-length of M is a random number between 1 and 3.

To compute unique penetration effect of (M - a sex doll) in (F - a fuckhole):
	repeat with N running through unfriendly interested monsters in the location of the player:
		if N is aeromancer, now the last-interaction of N is 0. [This is in order to make the latex doll curse more easy to get on purpose]

To say FuckholePenetrationFlav of (M - a sex doll):[TODO: implement penetrationflav subfunctions]
	let F be the chosen-orifice of M;
	say PenPrep of M in F;
	if the openness of F < the girth of M:
		say "[if the relevant sex addiction of M < 6]The doll thrusts forward with an unexpected precision. You seize up as its stiff dildo [manly-penis] burrows its way into your tight [variable F], filling you up more than is comfortable. The doll slowly begins to move, [type fuck secured of M]. There's no chance you'll get away now...[otherwise if the relevant sex addiction of M < 11]The doll thrusts forward with an unexpected precision. You seize up as its stiff dildo [manly-penis] burrows its way into your tight [variable F], filling you up more than is comfortable. The doll slowly begins to move, [type fuck secured of M]. You can't help feeling there was more you could have done to get away...[otherwise]The doll thrusts forward with an unexpected precision. You giggle as its stiff dildo [manly-penis] burrows its way into your tight [variable F], filling you up a tiny bit more than is comfortable. The doll slowly begins to move, [type fuck secured of M]. There's no getting away now![end if]";
	otherwise if the openness of F < the girth of M + 2:
		say "[if the relevant sex addiction of M < 7]The doll thrusts forward with unexpected precision. You shudder as its stiff dildo [manly-penis] penetrates your [variable F], the small plastic shape seeming to complement your tightness. The doll immediately begins to move, [type fuck secured of M]. There's no chance you'll get away now...[otherwise if the relevant sex addiction of M < 11]The doll thrusts forward with unexpected precision. You stifle a moan as its stiff dildo [manly-penis] penetrates your [variable F], the small plastic shape perfectly complementing your tightness. The doll immediately begins to move, [type fuck secured of M]. Some part of you is glad you have no chance of getting away.[otherwise]The doll thrusts forward with unexpected precision. You emit a low sigh as its stiff dildo [manly-penis] penetrates your [variable F], the small plastic shape seeming to complement your tightness. The doll immediately begins to move, [type fuck secured of M]. You couldn't get away even if you wanted to![end if]";
	otherwise if the openness of F < the girth of M + 4:
		say "[if the relevant sex addiction of M < 6]The doll thrusts forward with unexpected precision. Your heart sinks as its stiff dildo [manly-penis] slides into your [variable F] and immediately begins to move. By now, you know there's no chance of escape, but the idea of sex still makes you sick to your stomach! The doll doesn't seem to register your displeasure, [type fuck secured of M]. You hope it'll be over soon.[otherwise if the relevant sex addiction of M < 11]The doll thrusts forward with unexpected precision. You gasp sharply as its stiff dildo [manly-penis] slides into your [variable F] and immediately begins to move. It's not the biggest you've ever taken, but you still feel every thrust! The doll doesn't seem to notice your reaction, [type fuck secured of M]. You can't shake the feeling that you're going to enjoy this.[otherwise]The doll thrusts forward with unexpected precision. You bite your lip as its stiff dildo [manly-penis] slides into your [variable F] and immediately begins to move. It's a little bit smaller than you're used to, but that doesn't bother you at all! The doll doesn't seem to register your enthusiasm, [type fuck secured of M]. You're not getting away now, teehee![end if]";
	otherwise:
		say "[if the relevant sex addiction of M < 4]The doll thrusts forward with unexpected precision. You glance over your shoulder as its stiff dildo glides into your [variable F], grimly pleased that you barely felt anything. The doll doesn't seem to register your satisfaction and immediately begins to move. You resolve to try and feel it as little as possible, [type fuck secured of M].[otherwise if the relevant sex addiction of M < 8]The doll thrusts forward with unexpected precision. You bow your head as its stiff dildo glides into your [variable F], half glad and half disappointed to realise you barely felt anything. The doll doesn't seem to register your disappointment and immediately begins to move. You resolve to try and ignore it as much as possible, [type fuck secured of M].[otherwise]The doll thrusts forward with unexpected precision. You whine petulantly as the stiff dildo glides into your [variable F], knowing it's barely big enough for you to feel anything. The doll doesn't seem to register your disappointment and immediately begins to move. You resolve to enjoy it as much as possible anyway, [type fuck secured of M].[end if]".

This is the sex doll fills diaper rule:
	let M be current-monster;
	if the player is diaper focused and M is creamfilled-sex-doll:
		let D be a random worn diaper;
		say "You feel [NameDesc of M] stand behind you and begin to pull off your [D], but instead of removing it, [NameDesc of M] just pulls one of the leg-holes open wide enough to push its fake dildo inside. You [if the bimbo of the player < 13]yelp[otherwise]sigh with pleasure[end if] as the doll deflates, filling up your [D] with litres of warm [semen].";
		CumSoak 10 on D;
		destroy M;
		rule succeeds.
The diaper punishment rule of a sex doll is usually the sex doll fills diaper rule.

To say StrikingSuccessFlav of (M - a sex doll) on (B - a body part):
	say "[BigNameDesc of M] flails its limbs, seemingly blindly! It smacks you [TargetName of B]! Ouch!!".

To compute (S - a spike bra) damaging (M - a sex doll):
	say "[BigNameDesc of M], hitting your [printed name of random bra worn by the player], punctures.";
	compute defeat of M.

To say StrikingFailureFlav of (M - a sex doll) on (B - a body part):
	say "[BigNameDesc of M] misses you completely.".

Section 2 - Damage

To decide which number is the damage modifier of (M - a sex doll):
	[+2 damage with spike heels vs sex doll]
	if there are worn stiletto heels and attack-type is 3:
		let H be a random stiletto heels worn by the player;
		if the heel-height of H > 1:
			now critical is 1;
			decide on 2.

To compute damage reaction of (M - a sex doll):
	if M is uninterested:
		say "The doll seems to notice you. Uh-oh...";
		now M is interested;
		anger M;
		now the sex-length of M is 4;
	otherwise:
		say DamageReaction (the health of M) of M;
		increase the sex-length of M by 1.

To say DamageReactHealthy of (M - a sex doll):
	say "[BigNameDesc of M] doesn't even flinch!".

To say DamageReactDamaged of (M - a sex doll):
	say "[BigNameDesc of M][']s torso warps visibly, taking your hit!".

To say DamageReactTired of (M - a sex doll):
	say "[BigNameDesc of M] [if M is creamfilled-sex-doll]sloshes ominously, taking the hit[otherwise]emits a sound like a balloon being slammed into a wall, taking the hit[end if]!".

To say DamageReactWeak of (M - a sex doll):
	say "[BigNameDesc of M] looks unstable, like it's about to burst!".

To say BanishFleeFlav of (M - a sex doll):
	if M is doll-charged or (attack-type is 1 and there is a worn sword) or (attack-type is 3 and there are worn stiletto heels and the hindrance of a random worn heels <= 0):
		if M is creamfilled-sex-doll:
			say "The doll rips, punctures, and explodes! You yelp as [semen] flies everywhere, [if bukkake fetish is 1]including all over you![otherwise]completely covering the floor![end if][if the semen addiction of the player < 6][line break][first custom style]Yuck yuck yuck![roman type][line break][end if]";
			if bukkake fetish is 1:
				cutshow figure of sexdoll cutscene 3 for M;
				AnnouncedSquirt semen on breasts by a random number between 12 and 15;
			otherwise:
				PuddleUp semen by a random number between 12 and 15;
		otherwise:
			let R be a random number between the difficulty of M * 3 and 27;
			let B be the weight of the player + (the strength of the player / 3);
			if R <= B or living belt of sturdiness is worn:
				say "The doll rips, punctures, and explodes! A huge burst of air hits your body, but luckily you manage to resist being knocked over.";
			otherwise:
				say "The doll rips, punctures, and explodes! You yelp as a huge burst of air knocks you over!";
				silently try kneeling;
	otherwise:
		say "The doll deflates and disappears.".

Sex Doll ends here.
