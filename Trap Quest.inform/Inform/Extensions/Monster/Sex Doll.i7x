Sex Doll by Monster begins here.

A sex doll is a kind of monster.  A sex doll is usually dungeon dwelling.  A sex doll is usually male.  A sex doll is usually father material.  A sex doll is usually willing to do anal.  A sex doll is usually willing to do vaginal.  A sex doll is usually willing to do oral. The leftover-type of a sex doll is usually 103. A sex doll is poison immune.

Figure of Male Sex Doll is the file "sexdoll1.png".
 Figure of Female Sex Doll is the file "sexdoll2.png". The description of sex doll is usually "[SexDollDesc]".  The text-shortcut of sex doll is "sd".  Understand "do" as sex doll.

A creepy sex doll is a kind of sex doll.  There is 1 creepy sex doll.
The printed name of creepy sex doll is "[if item described is in the location of the player][TQlink of item described][end if][input-style][SexDollGender] creepy sex doll[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of creepy sex doll is "cre".
An expressionless sex doll is a kind of sex doll.  There is 1 expressionless sex doll.
The printed name of expressionless sex doll is "[if item described is in the location of the player][TQlink of item described][end if][input-style][SexDollGender] expressionless sex doll[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of expressionless sex doll is "exp".
An animated sex doll is a kind of sex doll.  There is 1 animated sex doll.
The printed name of animated sex doll is "[if item described is in the location of the player][TQlink of item described][end if][input-style][SexDollGender] animated sex doll[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of animated sex doll is "ani".
A zombielike sex doll is a kind of sex doll.  There is 1 zombielike sex doll.
The printed name of zombielike sex doll is "[if item described is in the location of the player][TQlink of item described][end if][input-style][SexDollGender] zombielike sex doll[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of zombielike sex doll is "zom".
A wandering sex doll is a kind of sex doll.  There is 1 wandering sex doll.
The printed name of wandering sex doll is "[if item described is in the location of the player][TQlink of item described][end if][input-style][SexDollGender] wandering sex doll[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of wandering sex doll is "wan".
A mindless sex doll is a kind of sex doll.  There is 1 mindless sex doll.
The printed name of mindless sex doll is "[if item described is in the location of the player][TQlink of item described][end if][input-style][SexDollGender] mindless sex doll[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of mindless sex doll is "min".
A puppetlike sex doll is a kind of sex doll.  There is 1 puppetlike sex doll.
The printed name of puppetlike sex doll is "[if item described is in the location of the player][TQlink of item described][end if][input-style][SexDollGender] puppetlike sex doll[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of puppetlike sex doll is "pup".
An uncanny sex doll is a kind of sex doll.  There is 1 uncanny sex doll.
The printed name of uncanny sex doll is "[if item described is in the location of the player][TQlink of item described][end if][input-style][SexDollGender] uncanny sex doll[shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of uncanny sex doll is "unc".

To say SexDollGender:
	if item described is creamfilled, say "male";
	otherwise say "female strapon".

Understand "male" as a sex doll when the item described is creamfilled.
Understand "female", "strapon" as a sex doll when the item described is not creamfilled.

[
Cum filled:
Creepy - zombielike
Air filled: wandering - uncanny
]

Definition: a sex doll (called M) is creamfilled:
	if M is creepy sex doll or M is expressionless sex doll or M is animated sex doll or M is zombielike sex doll, decide yes;
	decide no.
	
Definition: a sex doll (called M) is airfilled:
	if M is creamfilled, decide no;
	decide yes.

Definition: a sex doll (called M) is liquidfilled:
	if M is creamfilled or inflation fetish is 0, decide yes;
	decide no.

Definition: a sex doll (called M) is virginity taking:
	decide yes.

To say SexDollDesc:
	let M be item described;
	if M is creamfilled:
		if images visible is 1, display the Figure of Male Sex Doll;
		say "An inflatable male sex doll with a greasy moustache and [if M is creepy sex doll]black[otherwise if M is expressionless sex doll]yellow[otherwise if M is animated sex doll]gray[otherwise if M is zombielike sex doll]red[end if] 'hair' that couldn't look more fake if it were drawn on in permanent marker. At its crotch is a plastic dildo and loose rubber nutsack.";
	otherwise if inflation fetish is 1:
		if images visible is 1, display the Figure of Female Sex Doll;
		say "An inflatable female sex doll with spherical breasts and tiny pink nipples. 'She' has [if M is wandering sex doll]black[otherwise if M is mindless sex doll]yellow[otherwise if M is puppetlike sex doll]gray[otherwise if M is uncanny sex doll]red[end if] hair and scarlet lips. At its crotch is a pink dildo [if trap fetish is 0]and a pair of flesh-coloured ping-pong balls[otherwise]and a black strip of plastic, probably meant to represent a strap-on[end if]. There are small suction cups on her palms.";
	otherwise:
		if images visible is 1, display the Figure of Female Sex Doll;
		say "An inflatable female sex doll with conical breasts and small suction cups on 'her' palms. She has [if M is wandering sex doll]black[otherwise if M is mindless sex doll]yellow[otherwise if M is puppetlike sex doll]gray[otherwise if M is uncanny sex doll]red[end if] hair and scarlet lips. At her crotch is a black strip of plastic set with a pink dildo[if trap fetish is 0] and a pair of flesh-coloured ping-pong balls, which appear[otherwise], which appears[end if] to be filled with some sort of dark liquid.";
	if M is not liquidfilled:
		say "[if the bimbo of the player > 11][variable custom style][one of]Hee hee, look at her boobies![or]I bet she's squeaky![or]She doesn't look tough. I should be gentle when I'm getting on my knees.[in random order][otherwise if the bimbo of the player > 7][variable custom style][one of]It doesn't look strong, but I don't want to give the wrong idea by touching it.[or]Not many men would use a sex doll with a dildo on it. That thing is probably here for me.[in random order][otherwise if the player is female][first custom style][one of]That's the last thing I need to deal with, a moving balloon animal.[or]So creepy. I'm popping it.[or]If that thing comes anywhere near me, I'm popping it.[or]A sex doll? I think I'm going to throw up.[in random order][otherwise][first custom style][one of]Whoa, I knew this place had cool stuff! [or]Heh, don't mind if I- wait, is that a dildo?[or]Just like the blow-up doll I have at home. Minus the dildo.[or]The doll doesn't look like it has anything in it. Probably a blow-up doll.[or]Heh, maybe I should take that dildo. Chicks love toys.[in random order][end if][roman type][line break]";
	otherwise:
		say "[if the semen taste addiction of the player > 11][variable custom style][one of]Sounds like something *yummy* is sloshing around in there![or]What's in it? I hope it's [semen]![in random order][otherwise if the semen addiction of the player > 5][variable custom style][one of]It's full of something. Is it [semen]?[or]That dildo isn't that big. I could handle it if I had to.[or]It doesn't look tough at all. But I don't want it to pop and spill everywhere.[in random order][otherwise if the player is female][first custom style][one of]That is just about the creepiest *thing* I've ever seen.[or]If that thing comes anywhere near me, I'm popping it.[or]Is there something *IN* there?[or]I can kind of see something sloshing around inside it. Gross.[in random order][otherwise if M is creamfilled][first custom style][one of]What's that inside it?  And why am I so scared that I know the answer?[or]It looks like there's [semen] in it. Creepy.[stopping][otherwise][first custom style][one of]A female sex doll with a dick? The chicks in here must be mad slutty.[or]I've got to find a chick to try that out for me.[in random order][end if][roman type][line break]".
	
To set up (M - a sex doll):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 3;
	now the health of M is the maxhealth of M;
	if the player is female and a random number between 1 and 3 > 1, now M is vaginal;
	otherwise now M is anal.

This is the spawn initial sex doll rule:
	if debugmode > 1, say "Now summoning doll.";
	if diaper quest is 1:
		repeat with M running through sex dolls:
			now M is not dungeon dwelling;
	otherwise if the number of alive sex dolls is 0:
		let M be a random sex doll;
		summon M in the dungeon.
The spawn initial sex doll rule is listed in the setting up dungeon monsters rules.

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
	say "[PregFlav]You hear the sound of rubber stretching, and look down to see an inflatable head ballooning from your [vagina].  The sound of rushing air and balloon inflation fills the air as slowly but surely a fully sized sex doll emerges from inside of you.  You lay there stunned as it rights itself onto its rubber legs and starts to wander away.";
	set up M;
	now M is anal;
	now M is not penetrating asshole;
	now M is not penetrating vagina;
	regionally place M;
	compute fatherhood to M.

To compute fatherhood to (M - a sex doll):
	now the father is not interested;
	now the father is not penetrating asshole;
	now the father is not penetrating vagina;
	now the father is not grabbing the player.

To compute (M - a monster) stomping (N - a sex doll):
	if M is in the location of the player, say "The [M] rips a hole in the side of the [N], causing it to instantly deflate with a loud pop.";
	otherwise say "You hear a loud pop, like a huge balloon bursting, from [if N is nearby]nearby![otherwise]somewhere in the dungeon![end if].";
	destroy N;
	let L be a random off-stage leftover;
	now L is in the location of M;
	now the leftover-type of L is the leftover-type of N.

Part 2 - Perception

Report kneeling when there is an uninterested sex doll in the location of the player:
	repeat with M running through uninterested sex dolls in the location of the player:
		compute correct perception of M;

To compute perception of (M - a sex doll):
	deinterest M; [This is because the sex doll does not notice enemies by default.]
	if the class of the player is living sex doll:
		say "The [M] seems to notice you!  But it seems to no longer consider you an enemy.";
		now the boredom of M is 300;
	otherwise if M is objectifying the player:
		anger M;
		now the sex-length of M is 3;
		say "The [M] seems to notice you!  Uh-oh...";
		now M is interested;	
	otherwise if the player is prone:
		anger M;
		now the sex-length of M is 1;
		say "The [M] seems to notice you!  Uh-oh...";
		now M is interested;
	otherwise if a random number between 13 and 25 < the sex addiction of the player and the player is not immobile and the player is not flying and the player is not dildo stuck:
		anger M;
		say "The [M]'s fake penis wobbles as it walks around.  In a moment of weakness, you find yourself dropping to your knees to take it!";
		now seconds is 1;
		try kneeling;
		now the sex-length of M is 2;
		say "The [M] seems to notice you!  You giggle in nervous delight.";
		now M is interested;
	if M is interested, now the sex-length of M is the difficulty of M.

Part 3 - Combat


Section 1 - Attack

To compute the flying player taunting of (M - a sex doll):
	if a random number from 1 to 6 is 1:
		say "The [M] is [one of][or]still [stopping]watching you, waiting.".

To compute anal sex of (M - a sex doll):
	compute fuckhole sex of M.

To compute vaginal sex of (M - a sex doll):
	compute fuckhole sex of M.

To compute fuckhole sex of (M - a sex doll):
	say "The sex doll is fucking your [if M is penetrating asshole][asshole][otherwise][vagina][end if][one of] slowly but steadily[or] silently[or], seemingly unable to hear your screams[or] as if controlled by invisible puppet strings[or] in a very strict rhythm[or], with machine like precision and timing[or], with no signs of emotion or conscious thought[or] [if the bimbo of the player < 14]as if you were some kind of object[otherwise]like the fucktoy that you are[end if][at random]!  [if the bimbo of the player < 11][first custom style]Shit...[otherwise][second custom style]Aaah!!![end if][roman type][line break]";
	decrease the sex-length of M by 1;
	if the reaction of the player > 0, say "[one of]You feel further humiliated by the fact that you are letting the doll fuck you.[or][or][or][cycling]";
	if M is penetrating asshole, AssRuin 1;
	otherwise PussyRuin 1.

To compute anal climax of (M - a sex doll):
	TimesFuckedUp M by 1;
	if M is airfilled and inflation fetish is 1:
		say "With one final thrust, you feel air start to flow inside of you.  The [M] is deflating inside of you!  Your belly somehow inflates like a balloon.[if the bimbo of the player < 7][first custom style][one of]  What the fuck is going on?![or]Not again...[stopping][roman type][line break]The sex doll deflates into nothingness.";
		AssFill a random number between 8 and 10 air;
	otherwise if M is airfilled:
		compute FluidFill of M;
	otherwise:
		say "[one of]After one final thrust, you feel the [M] begin to deflate, its warm, sticky contents shooting out inside of you. [or]With one final thrust, the [M] begins to deflate, hissing quietly as it evacuates its warm, sticky contents directly into your [asshole]. [or]The [M] begins to deflate, hissing quietly as its warm sticky contents shoot up inside of you. [or]The [M] stops after one final thrust, deflating as it floods your belly with its sticky white contents. [at random][one of][if the bimbo of the player < 7][first custom style]Oh God, I think that was cum. All of it went inside me...[otherwise if the bimbo of the player < 12][variable custom style]I think that was cum. There[']s so much of it inside me...[otherwise][second custom style]That was cum! Mmm, there's so much of it inside me...[end if][or][if the bimbo of the player < 7][first custom style]Ugh..I[']m so full...[otherwise if the bimbo of the player < 12][variable custom style]I[']m so full...[otherwise][second custom style]There[']s so much.~[end if][or][if the bimbo of the player < 7][first custom style]Not again...[otherwise if the bimbo of the player < 12][variable custom style]There's always a lot...[otherwise][second custom style]I think there's even more than last time![end if][stopping][roman type][line break] The sex doll disappears into nothingness.";
		if image cutscenes is 1, display figure of sexdoll cutscene 1;
		assfill 10;
	destroy M.

To compute FluidFill of (M - a sex doll):
	if the player is a flatchested trap:
		say "The [M] suddenly stops, its [manly-penis] bulging slightly as several spurts of cool fluid flow inside of you. You feel your hips growing in size!";
		HipUp 1;
	otherwise:
		let R be a random number between 1 and 3;
		say "[if R is 3]The [M] suddenly stops, its [manly-penis] bulging slightly as several spurts of cool fluid flow inside of you. You feel your breasts and hips both growing in size![otherwise][one of]After one final thrust, you feel the [M]'s [manly-penis] inflate slightly, as if to create an airtight seal. You gasp as several spurts cool fluid flow inside of you. Your breasts jiggle as they quickly grow in size.[or]You feel the [M]'s [manly-penis] inflate slightly, as if to create an airtight seal. Several spurts of cool fluid flow inside of you. A strange sensation spreads through your body, dissipating as your breasts suddenly burgeon with size.[or]The [M] suddenly stops, its [manly-penis] bulging slightly as several spurts of cool fluid flow inside of you. Your breasts suddenly grow![at random][end if][if the bimbo of the player < 7][first custom style][one of]  What the fuck is going on?![or]Not again...[stopping][roman type][line break]The sex doll disappears into nothingness.";
		BustUp 3;
		if R is 3, HipUp 1.

To compute vaginal climax of (M - a sex doll):
	TimesFuckedUp M by 1;
	if M is airfilled:
		compute FluidFill of M;
	otherwise:
		say "[one of]After one final thrust, you feel the [M] begin to deflate, its warm, sticky contents shooting out inside of you.[or]With one final thrust, the [M] begins to deflate, hissing quietly as it evacuates its warm, sticky contents directly into your [vagina].[or]The [M] begins to deflate, hissing quietly as its warm sticky contents shoot up inside of you.[or]The [M] stops after one final thrust, deflating as it floods your [vagina] with its sticky white contents.[at random] [one of][if the bimbo of the player < 7][first custom style]Oh God, I think that was cum. All of it went inside me...[otherwise if the bimbo of the player < 12][variable custom style]I think that was cum. There[']s so much of it inside me...[otherwise][second custom style]That was cum! Mmm, there so much of it inside me...[end if][or][if the bimbo of the player < 7][first custom style]Ugh..I[']m so full...[otherwise if the bimbo of the player < 12][variable custom style]I[']m so full...[otherwise][second custom style]There[']s so much.~[end if][or][if the bimbo of the player < 7][first custom style]Not again...[otherwise if the bimbo of the player < 12][variable custom style]There's always a lot...[otherwise][second custom style]I think there's even more than last time![end if][stopping][roman type][line break] The sex doll disappears into nothingness.";
		if image cutscenes is 1, display figure of sexdoll cutscene 1;
		wombfill 5;
	destroy M.

To compute the default taunting of (M - a sex doll):
	say "[DollWait of M]".

To compute the dildo stuck taunting of (M - a sex doll):
	say "[DollWait of M]".

To say DollWait of (M - a sex doll):
	say "[one of]The [M] stands in front of you, motionless.[or][or][cycling]".

This is the sex doll never convinced rule:
	if presented-orifice is not nothing, say "The [current-monster] shows no indication of having noticed or understood your action.".
The monster convinced rule of sex doll is usually the sex doll never convinced rule.

To compute (M - a sex doll) entering mouth:
	if (M is not creamfilled or a random number between 1 and 3 < 2) and face is not occupied:
		if M is airfilled:
			if the player is a flatchested trap:
				if inflation fetish is 1:
					say "The [M] walks round to your front and sticks its dildo [manly-penis] in your mouth.  It immediately deflates, filling your mouth and throat with air!  Somehow, it goes straight to your hips, inflating them.";
					AssInflate 3;
				otherwise:
					say "The [M] forces its dildo [manly-penis] into your mouth, which immediately begins spurting sweet fluid straight down your throat. It deflates into nothingness as your hips suddenly grow in size.";
					HipUp 1;
			otherwise if inflation fetish is 1:
				say "The [M] wanders round to your front and sticks its dildo [manly-penis] in your mouth.  It immediately deflates, filling your mouth and throat with air!  Somehow, it goes straight to your breasts, inflating them.";
				BustInflate 6;
			otherwise:
				say "[one of]The [M] forces its dildo [manly-penis] into your mouth, which immediately begins spurting sweet fluid straight down your throat. It deflates into nothingness as your breasts suddenly grow in size.[or]The [M] forces its dildo [manly-penis] into your mouth, causing you to splutter as cool fluid rushes down your throat. You feel a momentary tingling in your chest as the sex doll slowly deflates into nothingness. Whatever it was it made you drink, it made grow even larger boobs![or]The [M] shoves its dildo [manly-penis] in your mouth and immediately begins to deflate. You splutter as cool fluid washes down your throat. A tingling sensation in your chest draws your attention just in time for you so see yourself grow even bigger boobs![or][if the relevant sex addiction of M < 7]The [M] forces its dildo [manly-penis] into your mouth. You try to pull away, but it's too late, cool fluid is already rushing down your throat. It may be that the rapidly deflating doll blocked your view, but your breasts look a lot bigger![otherwise if the relevant sex addiction of M < 11]The [M] forces its dildo [manly-penis] into your mouth. You wait obediently, and soon cool fluid is already rushing down your throat. It may be that the rapidly deflating doll blocked your view, but your breasts look a lot bigger![otherwise]The [M] positions itself in front of your face, sliding its dildo [manly-penis] into your mouth as soon as you open it. It deflates as cool fluid rushes down your throat. Your breasts have gotten a lot bigger.[end if][in random order]";
				BustUp 3;
		otherwise:
			now M is penetrating face; [To allow for gagging]
			say "The [M] walks round to your face and sticks its dildo [manly-penis] in your mouth.  It immediately deflates, filling your stomach to the brim with [semen]!  [if the semen taste addiction of the player < 6][first custom style]Fuck that's disgusting![otherwise if the semen taste addiction of the player < 13][second custom style]Ooh, that's made me quite full...[otherwise][second custom style]Aww, I hardly even got to taste that.[end if][roman type][line break]";
			if image cutscenes is 1, display figure of sexdoll cutscene 2;
			if the stomach of the player < 10, increase the stomach-semen of the player by 10 - the stomach of the player;
			StomachSemenUp 2;
			now M is not penetrating face;
		destroy M;
	otherwise:
		if M is not creamfilled:
			say "The [M] walks round to your face and waits there for a few seconds, motionless. It looked like it was about to mess with you, but something seemed to change its mind.";
		otherwise if bukkake fetish is 1:
			[If the player is gagged then there shouldn't be a monster also occupying here, so a bukkake can happen!  Could change I guess if there's ring gags put into the game]
			say "The [M] moves round to your face, air hissing quietly as its rubber sack slowly expands. A beat after the noise stops, the doll suddenly begins blasting your face with a torrent of pure white ejaculate! You're completely plastered by the time it deflates.";
			CumFaceUp 8;
		otherwise:
			say "You hear a faint hissing noise as the [M] stands motionless next to your [ShortDesc of hips], which are suddenly blasted by a torrent of ejaculate! Your lower body gets plastered by what feels like gallons of [semen] as it deflates.";
			CumThighsUp 8;
			repeat with K running through knickers worn by the player:
				cumsoak 7 on K;
			repeat with O running through overdresses worn by the player:
				if O is skirted, cumsoak 4 on O;
		if M is creamfilled, destroy M.


To say type security of (M - a sex doll):
	if M is liquidfilled, say "They're covered in an strange sticky substance, which seems to get stickier as moments go by. It must be some sort of liquid adhesive! [if the player is glue stuck][variable custom style]Oh man, not more glue![roman type][line break][end if]";
	otherwise say "The suction cups form a weak seal against your skin, but subtle movements of the doll's arms make it tighter and tighter. ".

To say type fuck secured of (M - a sex doll):
	if M is liquidfilled, say "its grip on your hips tightening as the adhesive dries";
	otherwise say "the suction cups completely sealing its 'hands' to your hips".

To compute (M - a sex doll) entering asshole:
	let N be a random monster penetrating vagina;
	if N is monster, say "Invisible puppet strings fasten themselves to your knees and elbows, foisting you up and flipping you over so your [BreastDesc] and [ShortDesc of belly] are pressed flat against the [N]. The [M] places its primitive hands on either side of your waist.  ";
	otherwise say "The [M] moves behind you, placing its primitive hands on your hips.  ";
	say type security of M;
	say "[FuckholePenetrationFlav of M]";
	now M is penetrating asshole;
	AssRuin 1.

To compute (M - a sex doll) entering vagina:
	let N be a random monster penetrating asshole;
	if N is monster, say "You feel invisible puppet strings fasten themselves to your elbows, foisting you up so your back is flush with the chest of the [N]. The [M] places its primitive hands on either side of your waist.  ";
	otherwise say "The [M] moves behind you, placing its primitive hands on your hips.  ";
	say type security of M;
	say "[FuckholePenetrationFlav of M]";
	now M is penetrating vagina;
	PussyRuin 1;
	if the player is female and there is a monster penetrating vagina and there is a monster penetrating asshole, say "You're being [if there is a monster penetrating face]triple[otherwise]double[end if] penetrated!".

To say FuckholePenetrationFlav of (M - a sex doll):
	let F be the chosen-orifice of M;
	if the openness of F < the girth of M:
		say "[if the relevant sex addiction of M < 6]The doll thrusts forward with an unexpected precision. You seize up as its stiff dildo [manly-penis] burrows its way into your tight [variable F], filling you up more than is comfortable. The doll slowly begins to move, [type fuck secured of M]. There's no chance you'll get away now...[otherwise if the relevant sex addiction of M < 11]The doll thrusts forward with an unexpected precision. You seize up as its stiff dildo [manly-penis] burrows its way into your tight [variable F], filling you up more than is comfortable. The doll slowly begins to move, [type fuck secured of M]. You can't help feeling there was more you could have done to get away...[otherwise]The doll thrusts forward with an unexpected precision. You giggle as its stiff dildo [manly-penis] burrows its way into your tight [variable F], filling you up a tiny bit more than is comfortable. The doll slowly begins to move, [type fuck secured of M]. There's no getting away now![end if]";
	otherwise if the openness of F < the girth of M + 2:
		say "[if the relevant sex addiction of M < 7]The doll thrusts forward with unexpected precision. You shudder as its stiff dildo [manly-penis] penetrates your [variable F], the small plastic shape seeming to complement your tightness. The doll immediately begins to move, [type fuck secured of M]. There's no chance you'll get away now...[otherwise if the relevant sex addiction of M < 11]The doll thrusts forward with unexpected precision. You stifle a moan as its stiff dildo [manly-penis] penetrates your [variable F], the small plastic shape perfectly complementing your tightness. The doll immediately begins to move, [type fuck secured of M]. Some part of you is glad you have no chance of getting away.[otherwise]The doll thrusts forward with unexpected precision. You emit a low sigh as its stiff dildo [manly-penis] penetrates your [variable F], the small plastic shape seeming to complement your tightness. The doll immediately begins to move, [type fuck secured of M]. You couldn't get away even if you wanted to![end if]";
	otherwise if the openness of F < the girth of M + 4:
		say "[if the relevant sex addiction of M < 6]The doll thrusts forward with unexpected precision. Your heart sinks as its stiff dildo [manly-penis] slides into your [variable F] and immediately begins to move. By now, you know there's no chance of escape, but the idea of sex still makes you sick to your stomach! The doll doesn't seem to register your displeasure, [type fuck secured of M]. You hope it'll be over soon.[otherwise if the relevant sex addiction of M < 11]The doll thrusts forward with unexpected precision. You gasp sharply as its stiff dildo [manly-penis] slides into your [variable F] and immediately begins to move. It's not the biggest you've ever taken, but you still feel every thrust! The doll doesn't seem to notice your reaction, [type fuck secured of M]. You can't shake the feeling that you're going to enjoy this.[otherwise]The doll thrusts forward with unexpected precision. You bite your lip as its stiff dildo [manly-penis] slides into your [variable F] and immediately begins to move. It's a little bit smaller than you're used to, but that doesn't bother you at all! The doll doesn't seem to register your enthusiasm, [type fuck secured of M]. You're not getting away now, teehee![end if]";
	otherwise:
		say "[if the relevant sex addiction of M < 4]The doll thrusts forward with unexpected precision. You glance over your shoulder as its stiff dildo glides into your [variable F], grimly pleased that you barely felt anything. The doll doesn't seem to register your satisfaction and immediately begins to move. You resolve to try and feel it as little as possible, [type fuck secured of M].[otherwise if the relevant sex addiction of M < 8]The doll thrusts forward with unexpected precision. You bow your head as its stiff dildo glides into your [variable F], half glad and half disappointed to realize you barely felt anything. The doll doesn't seem to register your disappointment and immediately begins to move. You resolve to try and ignore it as much as possible, [type fuck secured of M].[otherwise]The doll thrusts forward with unexpected precision. You whine petulantly as the stiff dildo glides into your [variable F], knowing it's barely big enough for you to feel anything. The doll doesn't seem to register your disappointment and immediately begins to move. You resolve to enjoy it as much as possible anyway, [type fuck secured of M].[end if]";
	if the sex-length of M > 5, now the sex-length of M is 5;
	repeat with N running through unfriendly interested monsters in the location of the player:
		if N is aeromancer, now the last-interaction of N is 0. [This is in order to make the latex doll curse more easy to get on purpose]

This is the sex doll fills diaper rule:
	let M be current-monster;
	if the player is diaper focused and M is creamfilled:
		let D be a random worn diaper;
		say "You feel the [M] stand behind you and begin to pull off your [D], but instead of removing it, the [M] just pulls one of the leg-holes open wide enough to push its fake dildo inside.  You [if the bimbo of the player < 13]yelp[otherwise]sigh with pleasure[end if] as the doll deflates, filling up your [D] with litres of warm [semen].";
		CumSoak 10 on D;
		destroy M;
		rule succeeds.
The diaper punishment rule of a sex doll is usually the sex doll fills diaper rule.


To say StrikingSuccessFlav of (M - a sex doll) on (B - a body part):
	say "The [M] flails its limbs, seemingly blindly!  It smacks you [TargetName of B]!  Ouch!!".

To compute (S - a spike bra) damaging (M - a sex doll):
	say "The [M], hitting your [printed name of random bra worn by the player], punctures.";
	compute death of M.

To say StrikingFailureFlav of (M - a sex doll) on (B - a body part):
	say "The [M] misses you completely.".

Section 2 - Damage

To decide which number is the damage modifier of (M - a sex doll): 
	[+2 damage with spike heels vs sex doll]
	if there are worn stiletto heels and attack-type is 3:
		let H be a random stiletto heels worn by the player;
		if the heel-height of H > 1:
			now critical is 1;
			decide on 2.

To compute damage of (M - a sex doll):
	if the health of M > 0:
		if M is uninterested:
			say "The doll seems to notice you.  Uh-oh...";
			now M is interested;
			anger M;
			now the sex-length of M is 4;
		otherwise:
			say DamageReaction (the health of M) of M;
			increase the sex-length of M by 1;
	otherwise:
		compute death of M.

To say DamageReaction (N - a number) of (M - a sex doll):
	if N > (the maxhealth of M / 4) * 3:
		say "The doll doesn't even flinch!";
	otherwise if N > (the maxhealth of M / 4) * 2:
		say "The doll's torso warps visibly, taking your hit!";
	otherwise if N > (the maxhealth of M / 4):
		say "[if M is creamfilled]The doll sloshes ominously, taking the hit[otherwise]The doll emits a sound like a balloon being slammed into a wall, taking the hit[end if]!";
	otherwise:
		say "The doll looks unstable, like it's about to burst!".

To compute unique death of (M - a sex doll):
	if a random number between 1 and 2 is 1:
		let S be a random off-stage squirt dildo;
		let R be a random off-stage piece of rubber;
		if M is creamfilled and bukkake fetish is 1:
			say "The doll rips and punctures, and explodes!  You yelp as [semen] flies everywhere, including all over you![if the semen addiction of the player < 6][first custom style]Yuck yuck yuck![roman type][line break][end if]";
			CumTitsUp a random number between 12 and 15;
			say "Nothing of the doll remains";
		otherwise:
			say "The doll deflates leaving nothing behind";
		if S is nothing and R is nothing, say ".";
		otherwise say " except [unless S is nothing]a [printed name of S][end if][unless S is nothing or R is nothing] and [end if][unless R is nothing]a small [R][end if].";
		unless S is nothing:
			now S is in the location of the player;
			compute autotaking S;
		unless R is nothing:
			now R is in the location of the player;
			compute autotaking R;
	otherwise:
		say "The doll deflates and disappears.";
	destroy M.


Sex Doll ends here.
