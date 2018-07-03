Slutty Sisters by Monster begins here.

A slutty sister is a kind of monster. A slutty sister is usually intelligent.

Definition: a slutty sister (called M) is raunchy:
	decide yes.

A bulging slutty sister is a kind of slutty sister. There is 1 bulging slutty sister. [The leftover-type of a bulging slutty sister is usually 123.]
The printed name of bulging slutty sister is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style][ShortDesc of item described][if the sleep of the item described > 0] (exhausted)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". Understand "bloated", "cumfilled", "cum", "filled", "empty" as bulging slutty sister. The text-shortcut of bulging slutty sister is "bu".
A bulging slutty sister has a number called belly contents. A bulging slutty sister has a number called suffocation. A bulging slutty sister has a number called cum overload.

Definition: a bulging slutty sister (called M) is willing to do oral:
	decide yes.

A futanari slutty sister is a kind of slutty sister. There is 1 futanari slutty sister. A futanari slutty sister is male. [The leftover-type of a futanari slutty sister is usually 124.] Understand "futa" as futanari slutty sister.
The printed name of futanari slutty sister is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style][ShortDesc of item described][if the sleep of the item described > 0] (exhausted)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". The text-shortcut of futanari slutty sister is "fu".

Definition: a futanari slutty sister (called M) is willing to do oral:
	decide no.

Definition: a futanari slutty sister (called M) is willing to do titfucks:
	decide no.

To say cock of (M - a futanari slutty sister):
	say "[if futanari fetish is 0]strapon[otherwise if mythical creature fetish is 1]horsecock[otherwise][manly-penis][end if]".

To say ShortDesc of (M - a bulging slutty sister):
	say "[if the belly contents of M > 14]bulging[otherwise if the belly contents of M > 7]bloated[otherwise if the belly contents of M > 0]cumfilled[otherwise]empty[end if] slutty sister".

To say ShortDesc of (M - a futanari slutty sister):
	say "[if futanari fetish is 0]strapon[otherwise]futanari[end if] slutty sister".

To say MediumDesc of (M - a slutty sister):
	say ShortDesc of M.

To decide which figure-name is the monster-image of (M - a slutty sister):
	decide on figure of slutty sister.

To say MonsterDesc of (M - a slutty sister):
	say "This is one of the two girls who [if the bimbo of the player < 8]tricked[otherwise if the bimbo of the player < 13][']helped['][otherwise]helped[end if] you into the game. She is dressed exactly how you remember - a tiny white latex microskirt with a blue line at the waist, and a small white latex bra with blue straps. ";
	if item described is futanari slutty sister:
		say "However, [if futanari fetish is 0]you're pretty sure the foot long, mega thick strapon dildo dangling between her legs wasn't there before.[otherwise]you're pretty sure that in real life she didn't have a foot long, mega thick [cock of item described] dangling between her legs.[end if] [line break][variable custom style][if item described is penetrating an fuckhole]Uuuuugh!  So big![otherwise if the anal sex addiction of the player < 5 and the vaginal sex addiction of the player < 5]Keep that monster of a thing away from me![otherwise if the anal sex addiction of the player < 8 and the vaginal sex addiction of the player < 8]I don't know if I'll survive a round with that...[otherwise]I wonder if I can take that without fainting. Sounds like a challenge![end if][roman type][line break]";
	otherwise if item described is bulging slutty sister:
		say "She currently has a wand vibrator with the word 'Nintendolls' printed down the side, and a [if the belly contents of item described > 14]giant bulging belly[otherwise if the belly contents of item described > 7]large, bloated belly[otherwise if the belly contents of item described > 0]visibly distended belly[otherwise]flat, empty belly[end if]";
		if the belly contents of item described > 0, say " full of her sister[']s [semen]. [line break][variable custom style][if item described is penetrating face][']Mmmmmmmmph!['][otherwise if the semen addiction of the player < 10]I'm so glad that's inside her and not inside me![otherwise if the semen taste addiction of the player < 15 and the belly contents of item described > 7]I think my stomach would explode if I had to drink all of that...[otherwise]I bet her sister's cum tastes soooo good!![end if][roman type][line break]";
		otherwise say ".".

To set up (M - a slutty sister):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 12;
	if M is bulging slutty sister, now the belly contents of M is 20;
	now the health of M is the maxhealth of M;
	now M is in Hotel36.

To decide which number is the maxhealth of (M - a slutty sister):
	decide on 20 + (4 * game difficulty).

To decide which number is the girth of (M - a futanari slutty sister):
	decide on 10.

To decide which number is the semen-load of (M - a futanari slutty sister):
	decide on 18.

Definition: a slutty sister (called M) is too intimidating: [The player never refuses to fight the final boss.]
	decide no.

To say big he of (M - a futanari slutty sister):
	say "She".

To say he of (M - a futanari slutty sister):
	say "she".
To say big he of (M - a futanari slutty sister):
	say "She".

To say him of (M - a futanari slutty sister):
	say "her".

To say big his of (M - a futanari slutty sister):
	say "Her".

To say his of (M - a futanari slutty sister):
	say "her".

To say himself of (M - a futanari slutty sister):
	say "herself".

Definition: a slutty sister (called M) is able to remove cursed plugs:
	decide yes.

Definition: a slutty sister (called M) is concealment immune:
	decide yes.

Definition: a slutty sister (called M) is butt slut immune: [Special case where they are immune to concealment but obey butt slut.]
	decide no.

This is the spawn initial slutty sisters rule:
	if diaper quest is 0:
		if the number of alive futanari slutty sisters is 0:
			if debugmode > 0, say "Summoning futanari sister in hotel.";
			let M be a random futanari slutty sister;
			summon M in the hotel;
		if the number of alive bulging slutty sisters is 0:
			if debugmode > 0, say "Summoning bulging sister in hotel.";
			let M be a random bulging slutty sister;
			summon M in the hotel.
The spawn initial slutty sisters rule is listed in the setting up hotel monsters rules.

Definition: a slutty sister (called M) is human:
	decide yes.

Part 1 - Perception

To compute perception of (M - a slutty sister):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if the latex-transformation of the player > 6: 
		if M is bulging slutty sister:
			say "[second custom style]'You shouldn't be here in your current state. Try to solve the curse first.'[roman type][line break]She snaps her fingers and suddenly, you aren't there any more.";
			teleport to Hotel01;
		bore M;
	otherwise:
		say "[second custom style]'[if M is futanari slutty sister][one of]About fucking time, I was getting tired of just fucking Little Miss Cum Balloon here over and over.'[or]Yum, let's go again.'[stopping][otherwise][one of]Ooh, yay, you made it at last!  Yep, we're the final boss!  Surprise!  Get past us and press that STOP button to end the game. But we won't make it easy!'[or]Do your best, sweetie!'[stopping][end if][roman type][line break]";
		if the times-met of M is 0 and M is futanari slutty sister and image cutscenes is 1 and futanari fetish is 1, display figure of slutty sisters cutscene 1;
		anger M.

Part 2 - Motion

To compute motion of (M - a slutty sister):
	do nothing.

To compute (M - a slutty sister) seeking (D - a direction):
	do nothing.

To compute fleeing of (M - a slutty sister):
	do nothing.

To compute sleep reduction of (M - a slutty sister):
	if the sleep of M > 0:
		decrease the sleep of M by seconds;
		if the sleep of M <= 0:
			now the sleep of M is 0;
			if M is in the location of the player, say "[BigNameDesc of M] perks up, she looks ready for another round!  Uh-oh...". 

Part 3 - Combat

Section 1 - Attack

The latex punishment rule of a slutty sister is usually the no latex punishment rule.

To compute kneeling reaction of (M - a futanari slutty sister):
	say "[BigNameDesc of M] stands over you, her [cock of M] swaying gently like a pendulum. [line break][second custom style]'It's business time.'[roman type][line break]";
	humiliate 75.

To compute kneeling reaction of (M - a bulging slutty sister):
	say "[BigNameDesc of M] shoves two fingers inside her cunt, and begins to frig herself gently. [line break][second custom style]'It's dinner time.'[roman type][line break]";
	humiliate 75.

To say LandingTaunt of (M - a slutty sister):
	say "[BigNameDesc of M] [one of]smiles widely[or]laughs mockingly[cycling].";
	humiliate 50.

The futanari unique punish rules is a rulebook.
This is the futanari unique punishment rule:
	follow the futanari unique punish rules;
	if the rule succeeded, rule succeeds.
The unique punishment rule of a futanari slutty sister is usually the futanari unique punishment rule.

This is the futanari lets bulging go first rule:
	if there is a worn messed knickers:
		if there is an asleep bulging slutty sister in the location of the player:
			say "[speech style of current-monster]'Me next!  Open wide, bitch!'[roman type][line break]Just as you think you're going to get a chance to properly breathe, [NameDesc of current-monster] plugs your throat with her [cock of current-monster]. You choke around it, gasping and clawing for breath in vain. A few seconds later, your eyes roll back as you [if the bladder of the player > 0]wet yourself and [end if]pass out.";
			now delayed fainting is 1;
			now the fainting reason of the player is 99;
		otherwise:
			say "[BigNameDesc of current-monster] watches you, masturbating[one of] and laughing at the same time[or] rapidly[or] whilst grinning widely[or][or][in random order].";
		rule succeeds;
	if there is a dangerous bulging slutty sister in the location of the player and the number of monsters penetrating face are 0, rule succeeds. [This means that the bulging girl is about to sit on the player's face.]
The futanari lets bulging go first rule is listed first in the futanari unique punish rules.

To say PresentAcceptanceFlav of (M - a futanari slutty sister):
	say "[second custom style]'Oh, the little slut thinks she can choose where I fuck her with my giant [cock of M]?  Well, go on, just this once, I guess, I'll let you have it your way. Aren't I so kind?'[roman type][line break]".

To say PresentRejectionFlav of (M - a futanari slutty sister):
	say "[second custom style]'I'll put this where I want, not where you want, bitch.'[roman type][line break]".

To say StrikingSuccessFlav of (M - a futanari slutty sister) on (B - a body part):
	say "[BigNameDesc of M] spins rapidly, thwacking you [TargetName of B] with her [cock of M]!".

To say StrikingFailureFlav of (M - a futanari slutty sister) on (B - a body part):
	say "[BigNameDesc of M] spins rapidly towards you, but you manage to jump out the way!".

To say StrikingFailureFlav of (M - a futanari slutty sister) on (B - a body part):
	say "[BigNameDesc of M] uses her wand to send several arcs of blue energy toward you, but you duck out of the way!".

To say StrikingSuccessFlav of (M - a bulging slutty sister) on (B - a body part):
	say "[BigNameDesc of M] uses her wand to strike you [TargetName of B] with several arcs of blue energy!".

To say StrikingFailureFlav of (M - a bulging slutty sister) on (B - a body part):
	if the belly contents of M > 7:
		say "[BigNameDesc of M] tries to spin towards you, but her body is too bloated and you dodge it easily!";
	otherwise:
		say "[BigNameDesc of M] spins towards you, landing a brutal roundhouse kick [TargetName of B]!"; [If her belly gets too low, she connects with an attack every time.]
		compute M striking B.

To compute tripping attack of (M - a futanari slutty sister):
	if there is a dangerous bulging slutty sister in the location of the player and bukkake fetish is 1:
		if a random number between (the dexterity of the player - the semen addiction of the player) and 4 < 8:
			if a random number between (the semen taste addiction of the player + the dexterity of the player) and 4  > 12: 
				say "[BigNameDesc of M] delicately strokes her [cock of M], aiming it at you. You react quickly as a huge, unrealistic jet of [semen] blasts from the tip, catching most of it in your mouth and letting the rest splatter liberally across your face and [BreastDesc].";
				StomachSemenUp 4;
				CumFaceUp 2;
				CumTitsUp 2;
			otherwise:
				say "[BigNameDesc of M] delicately strokes her [cock of M], aiming it at you. You [if the semen addiction of the player < 5][one of]are too shocked to dodge[or]are too slow to dodge[stopping][otherwise]too turned on to dodge[end if] as a huge, unrealistic jet of [semen] blasts from the tip and hits you straight in the mouth, coating your face and [BreastDesc].";
				CumFaceUp 5;
				CumTitsUp 5;
		otherwise:
			say "[BigNameDesc of M] delicately strokes her [cock of M], aiming it at you at you at the last second. You react quickly enough to dodge out of the way as a quick jet of [semen] blasts from the tip and splatters on the floor.";
			PuddleUp semen by 1;
	otherwise:
		compute striking attack of M.

This is the sister facesitting prevents breathing rule:
	if there is a bulging slutty sister penetrating face, decide yes;
	decide no.
The sister facesitting prevents breathing rule is listed in the breathing blocking rules.

To compute (M - a bulging slutty sister) entering mouth:
	if the player is clit stuck, say "[BigNameDesc of M] yanks on your clit lead and forces you to roll over onto your back!";
	otherwise say "[BigNameDesc of M] rolls you over onto your back!";
	if presented-orifice is face, say "You let her, and she immediately sits on your face. ";
	otherwise say "She succeeds, and immediately sits on your face. ";
	say "Facing your forehead, she covers your nose with the top of her vagina, and your mouth with her taint, giving you access to both her creampied pussy and cum-filled asshole, and cutting off your ability to breathe.[line break][second custom style]'[one of][if the belly contents of M > 10]You've got two options slut, try to swallow it all out of me, or faint trying.'[otherwise]You've got two options slut, bring me to orgasm, or faint trying.'[end if][or]Deja vu, bitch. You know the drill by now. Best of luck this time!'[stopping][roman type][line break]";
	if bukkake fetish is 1:
		say "Her [semen] starts to seep out of both her holes and [if the semen coating of face is 0]mess up[otherwise]add to the mess on[end if] your face.[if the semen addiction of the player < 7][line break][first custom style]Fucking hell!  Yuck.[roman type][line break][end if][line break]";
		if the semen coating of face < 10, CumFaceUp 1;
	now the sex-length of M is 4;
	now the suffocation of M is 0;
	now the cum overload of M is 0;
	now M is filling face.

To decide which number is the suffocation limit of the player:
	if the class of the player is trained hooker, decide on 14;
	decide on 12;[rebalanced]
	if the fatigue of the player is 0, decide on 10;
	if the fatigue of the player < 200, decide on 8;
	decide on 7.

To compute facial sex of (M - a bulging slutty sister):
	if the oral sex addiction of the player > 6, arouse 200;
	increase the suffocation of M by 1;
	if the suffocation of M >= the suffocation limit of the player:
		say "After giving a final frantic wiggle to try and escape, your brain gives up. You [if watersports fetish is 1]wet yourself and then [end if]pass out.";
		if watersports fetish is 1, UrinePuddleUp 3;
		now delayed fainting is 1;
		now the fainting reason of the player is 99;
	otherwise:
		if bukkake fetish is 1:
			CumFaceUp 1;
		if the reaction of the player > 0:
			if the belly contents of M > 0:
				if the stomach of the player < 10:
					say "[one of]You lick the girl's cunt with your tongue, swallowing the [semen] as it slowly flows into your mouth.[or]You move your tongue downwards and dig it into the slutty sister's asshole, which immediately rewards you with a thick glob of salty [semen].[or]Digging further into her asshole, you let your tongue explore its texture and taste, felching all the [semen] you can into your mouth.[or]You keep up rhythmic pumping motions with your tongue, allowing a steady supply of [semen] to ooze its way down your throat.[or]You use your neck muscles to pump your tongue even faster and deeper into her butthole. You are rewarded with another several gulps full of [semen].[cycling]";
					StomachSemenUp 2;
				otherwise if the stomach of the player - 10 <= the semen taste addiction of the player:
					say "[if the stomach of the player + 10 <= the semen taste addiction of the player]Your stomach is so full of [semen] that you have to put extra effort in to keep swallowing. But you love [semen] so much, you know you can find room![otherwise if the stomach of the player + 6 <= the semen taste addiction of the player]You are so full of [semen] you feel like you could explode!  But you keep on obediently swallowing all the same.[otherwise if the stomach of the player + 2 <= the semen taste addiction of the player]Your bloated stomach screams at you - there's no more room for more [semen]!  But it keeps coming, so you have to keep swallowing.[otherwise if the stomach of the player - 2 <= the semen taste addiction of the player]There's so much [semen] inside if you that you are really struggling to gulp any more down at all. Your bloated belly hurts badly. You feel like you could pass out any second.[otherwise]Thick streams of [semen] run out your nose as you begin to choke on your [semen] filled airpipe. Your eyes roll into the back of your head.[end if]";
					increase the stomach-semen of the player by 4;
					SemenTasteAddictUp 1;
				otherwise:
					say "Your mind goes blank as [NameDesc of M]'s unending stream of [semen] fills your lungs. You white out.";
					now delayed fainting is 1;
					now the fainting reason of the player is 22;
				decrease the belly contents of M by 2;
				decrease the sex-length of M by 1;
				if the belly contents of M <= 0 and delayed fainting is 0, say "The flow of [semen] seems to slow down and then dry up. [if the semen taste addiction of the player < 8]Hopefully[otherwise if the semen taste addiction of the player < 14 or the stomach of the player >= 10]Maybe[otherwise]Oh no,[end if] that's the last of it?[if the sex-length of M > 0][line break][BigNameDesc of M] continues to ride your face. It looks like you're not going to be allowed to breathe until you've made her cum![end if]";
			otherwise:
				[if a random number between 1 and 10 <= the oral sex addiction of the player:]
				say "You [one of]flick your tongue along [NameDesc of M]'s clit, causing a squeak of satisfaction from the girl above.[or]give the outside of [NameDesc of M]'s asshole a passionate French kiss, which makes her writhe around on top of you with pleasure.[or]force your tongue as far as it can go into [NameDesc of M]'s asshole, and she responds by shuddering in pleasure.[or]You explore the depths of [NameDesc of M]'s pussy with your tongue, swirling it around like a windmill as much as you can. She groans with pleasure.[in random order]";
				decrease the sex-length of M by 1;
				if the sex-length of M is 1, say "Her pussy spasms rapidly. She's getting close!";
				[otherwise:
					say "You [one of][or]continue to [stopping]try to get [NameDesc of M] off with your tongue, and she moans softly but you can tell that you need to do better.";]
		otherwise:
			say "[one of]You keep your mouth closed, winning the battle but fighting a losing war. There's no way to escape the inevitability of fainting except to lick her out. [or]You keep your mouth shut, deciding you'd rather faint than submit. [or]You continue to keep your mouth shut, and await the inevitable. [stopping][BigNameDesc of M] mercilessly holds herself in place.";
		if delayed fainting is 0:
			if the sex-length of M is 0 and the reaction of the player > 0, say "[BigNameDesc of M] climaxes on top of you, and her vaginal secretions sweeten the taste of the [semen] in your mouth. [if the belly contents of M > 0]But she doesn't get off on top of you - it looks like she's still determined to make you drink every last drop of the [semen] inside of her![otherwise]She droops forward, steadying herself with her hands.[end if]";
			say "[if the suffocation of M < the suffocation limit of the player - 5]You are still holding your breath.[otherwise if the suffocation of M < the suffocation limit of the player - 1]You are running out of oxygen![otherwise]You still can't breathe. You're going to faint any second now![end if]".

To decide which number is the rounds of sex left of (M - a bulging slutty sister):
	if the belly contents of M <= 0, decide on the sex-length of M;
	decide on 10.

To compute facial climax of (M - a bulging slutty sister):
	TimesFuckedUp M by 1;
	say "[BigNameDesc of M] stands up weakly, removing her crotch from your face, and allowing you to breathe again. [line break][second custom style]'Okay, you win, that's more than enough for me for today.'[roman type][line break]She staggers over to one wall, where she slouches down with fatigue.";
	now M is not penetrating face;
	now M is uninterested;
	now the sleep of M is 1000.

To say AssholePenetrationFlav of (M - a futanari slutty sister):
	now the sex-length of M is 5 + (the health of M / 5);
	say "[if the number of slutty sisters penetrating face > 0][BigNameDesc of M] pulls your legs off the ground, forcing your butt into the air[otherwise][BigNameDesc of M] lifts your knees off the ground and forces them up over your shoulders[end if] as she drives her monstrous [cock of M] into your [asshole]! [line break][second custom style]'[one of]Hold on tight honey, I'm taking you for a ride!'[or]I hope you're comfortable, this might take a while.'[at random][roman type][line break][if the openness of asshole > 8]Your gaping hole still has to stretch a bit further to take the girth of her member.[otherwise if the openness of asshole > 5]Your loose hole still has to stretch painfully wide to accept her thick member.[otherwise]Your eyes almost fly out of their sockets as your poor tight hole is forced wide, wider and then wider still as her girthy member slowly forces its way inside. You can't believe it's even physically possible for it to fit inside![end if]".

To say VaginaPenetrationFlav of (M - a futanari slutty sister):
	now the sex-length of M is 5 + (the health of M / 5);
	say "[BigNameDesc of M] [if there is a bulging slutty sister penetrating face]spreads your legs[otherwise]spreads your legs, grabs your hips[end if] and drives her monstrous [cock of M] into your [vagina]!  [line break][second custom style]'[one of]Hold on tight honey, I'm taking you for a ride!'[or]I hope you're comfortable, this might take a while.'[at random][roman type][line break][if the openness of vagina > 8]Your gaping hole still has to stretch a bit further to take the girth of her member.[otherwise if the openness of vagina > 5]Your loose hole still has to stretch painfully wide to accept her thick member.[otherwise]Your eyes almost fly out of their sockets as your poor tight hole is forced wide, wider and then wider still as her girthy member slowly forces its way inside. You can't believe it's even physically possible for it to fit![end if]".

To compute fuckhole sex of (M - a futanari slutty sister):[the sister is facing you so we can do some fun stuff we couldn't do normally]
	let F be a random fuckhole penetrated by M;
	say "[one of][BigNameDesc of M] continues pumping her monstrous [cock of M] in and out of your [variable F].[or][BigNameDesc of M] slams her monstrous [cock of M] in and out of your [variable F][or][BigNameDesc of M] grins [if the reaction of the player is 0]cruelly[otherwise]knowingly[end if] as she relentlessly pounds your [variable F].[or][if the player is gagged][BigNameDesc of M] pounds you viciously, forcing you to grunt and moan through the [printed name of a random worn ballgag] in your mouth.[otherwise if there is a bulging slutty sister penetrating face][BigNameDesc of M] high fives her sister as she viciously pumps away.[otherwise][BigNameDesc of M] forces her tongue into your mouth, making exaggerated moaning noises as she pumps away.[end if][or][BigNameDesc of M] keeps pounding your [variable F], [if the largeness of breasts > 4]groping your [ShortDesc of breasts] as they flop against your chest.[otherwise]laughing cruelly as she brutally twists your nipples.[end if][or][BigNameDesc of M] moans with pleasure as her monstrous [cock of M] slams in and out of your [variable F].[or][BigNameDesc of M] tosses you around like a living fleshlight, jamming your [variable F] into every thrust of her monstrous [manly-penis].[in random order]"; [TODO expand]
	decrease the sex-length of M by 1.

To compute anal sex of (M - a futanari slutty sister):
	say "[one of][or][or][line break][second custom style]'Girl, your butthole is FINE!'[roman type][line break][or][or][line break][second custom style]'Unnngh, you still conscious there?  Unf, you really are an ass bandit, huh?'  [roman type][line break][or][stopping]";
	compute fuckhole sex of M;
	ruin asshole.

To compute vaginal sex of (M - a futanari slutty sister):
	say "[one of][or][or][line break][second custom style]'Girl, your pussay is TOP CLASS SHIT!'[roman type][line break][or][or][line break][second custom style]'Unnngh, you still conscious there?  Unf, you really are a naughty fuckslut, huh?'  [roman type][line break][or][stopping]";
	compute fuckhole sex of M;
	ruin vagina.

To compute unique climax of (M - a futanari slutty sister) in (F - asshole):
	compute creampie of M in F;
	now the sleep of M is 300;
	if delayed fainting is 0, say "[second custom style]'Ugh, you win... I'm done. Phew...'[roman type]  [BigNameDesc of M] collapses onto her ass, her [cock of M] quickly going limp as she pulls out.".

To compute unique climax of (M - a futanari slutty sister) in (F - vagina):
	compute creampie of M in F;
	now the sleep of M is 300;
	if delayed fainting is 0, say "[second custom style]'Ugh, you win... I'm done. Phew...'[roman type]  [BigNameDesc of M] collapses onto her ass, her [cock of M] quickly going limp as she pulls out.".

To say CreampieFlav of (M - a futanari slutty sister) in (F - a fuckhole):
	say "[second custom style]'Unf... So [if the openness of F < 8]tight, so [end if]good!  Aaah!'[roman type][line break][BigNameDesc of M][if futanari fetish is 0][']s strapon starts pumping synthetic [semen][otherwise] starts to ejaculate[end if] deep inside your [variable F]!  It feels like there's a powerful hosepipe shoved inside your belly!";

Section 2 - Damage

To compute damage of (M - a futanari slutty sister):
	if the health of M > 0:
		if the sleep of M is 0:
			if the health of M > the maxhealth of M / 2, say "[BigNameDesc of M] growls[one of], with a look of sexual hunger in her eyes[or] angrily[stopping]!";
			otherwise say "[one of][BigNameDesc of M]'s growl is definitely getting weaker. But her [manly-penis] is just throbbing even harder![or][BigNameDesc of M] grunts with pain.[stopping]";
		otherwise:
			anger M;
			now M is interested;
			now the sleep of M is 0;
			say "Suddenly, [NameDesc of M]'s [cock of M] springs back to a full erection!  She looks very angry. [line break][variable custom style]Maybe that wasn't such a good idea...[roman type][line break]";
	otherwise:
		compute death of M.

To compute damage of (M - a bulging slutty sister):
	if the health of M > 0:
		if the sleep of M is 0:
			if attack-type is 2 and the belly contents of M > 0:
				say "Your knee right in her stomach causes her to double over in pain as a huge gush of [semen] flows out her [asshole]!  She [one of]looks at you with shock, pain and anger in her eyes. However if anything the smaller belly has just improved her ability to move and fight[or]moans loudly[stopping].";
				if the belly contents of M >= 4:
					SemenPuddleUp 4;
					decrease the belly contents of M by 4;
				otherwise:
					SemenPuddleUp the belly contents of M;
					now the belly contents of M is 0;
				increase the difficulty of M by 2;
			otherwise:
				if the health of M > the maxhealth of M / 2, say "[BigNameDesc of M] squeaks with anger!";
				otherwise say "[BigNameDesc of M] squeals with pain!";
		otherwise:
			anger M;
			now M is interested;
			now the sleep of M is 0;
			say "[BigNameDesc of M] jumps to her feet!  She looks very angry. [line break][variable custom style]Maybe that wasn't such a good idea...[roman type][line break]";
	otherwise:
		compute death of M.

To compute unique death of (M - a bulging slutty sister):
	let V be a random off-stage nintendolls-wand;
	say "[second custom style]'Aack!  [if there is a dangerous bulging slutty sister in the location of the player]I'm done for. Show her who's boss, sis...'[otherwise]I can't believe this, you actually won...'[end if][roman type][line break][BigNameDesc of M]'s body flutters suddenly as if it was a malfunctioning hologram, and then disappears completely[if V is clothing], leaving [his of M] wand behind[end if].";
	if V is clothing:
		now V is in the location of the player.[you might still be in combat, so no autotaking.]

To compute unique death of (M - a futanari slutty sister):
	say "[second custom style]'Unf!  [if there is a dangerous bulging slutty sister in the location of the player]Fuck her up, sis...'[otherwise]Fine, you win. Well done...'[end if][roman type][line break][BigNameDesc of M]'s body flutters suddenly as if it was a malfunctioning hologram, and then disappears completely.".


Part 4 - Conversation

Section 1 - Greeting

[I thought the sisters could use some expanding. (hue)  There's a custom greet function here to take care of that. It should probably cover questions as well, but I didn't code that since I wasn't sure if you would agree.]

To compute talk option (N - 1) to (M - a slutty sister):
	if the sleep of M > 0 and M is futanari slutty sister:
		say "[ToDominantGreeting of M]"; [Low bimbo players will just get cut off and told things]
	otherwise if the sleep of M > 0 and M is bulging slutty sister:
		say "[ToDominantGreeting of M]"; [Low bimbo players will get cut off with condescending words.]
	otherwise if M is penetrating a fuckhole:
		say "[midDominanceGreeting of M]"; [Choice words for the futa sister]
	otherwise if there is a slutty sister penetrating a fuckhole: [and that fuckhole is not face]
		say "[SubmissiveGreeting of M]";
	otherwise if the times-fucked of M > 1:
		say "[RepeatGreeting of M]"; [Bring it on/Pile it on]
	otherwise:
		say "[FirstGreeting of M]"; [Angry rebukes for sex, brainwashing, etc.]
	if M is interested:
		compute greeting response of M;
	otherwise:
		check perception of M.
		[now the boredom of M is 0.]
		
To compute greeting response of (M - a slutty sister):
	let S be 0;
	if there is a dangerous futanari slutty sister in the location of the player, now S is 1;
	if M is interested:
		if the sleep of M > 0 and M is futanari slutty sister:
			say "[midDominanceResponse of M]";
		otherwise if the sleep of M > 0 and S is 0:
			say "[SubmissiveResponse of M]"; 
		otherwise if the sleep of M > 0:
			say "[DominantResponse of M]";
		otherwise if M is penetrating a fuckhole:
			say "[AsDominantResponse of M]"; [likewise, the player can't speak with a crotch on their face.]
		otherwise if the times-fucked of M > 1:
			say "[RepeatResponse of M]";
		otherwise:
			say "[FirstResponse of M]";
	otherwise:
		check perception of M.[Not sure if this is relevant ]
		
To say ToDominantGreeting of (M - a bulging slutty sister): [rushed, I'll come back and flesh these out.]
	if the bimbo of the player < 5:
		say "[first custom style]'So now that you[']re finished humiliating me, can I go?'";
	otherwise if the bimbo of the player < 10:
		say "[first custom style]'Ok, you had your fun. Now can I leave?'";
	otherwise if the bimbo of the player < 15:
		say "[variable custom style]'That was SO much fun, but can[']t I leave now?'";
	otherwise:
		say "[second custom style]'I never want to stop playing this game! Keep me in here forever!'";
	say "[roman type][line break]".
		
To say ToDominantGreeting of (M - a futanari slutty sister):
	if the bimbo of the player < 5:
		say "[first custom style]'So now that you[']ve finished violating me, am I free to get the hell out of here?'";
	otherwise if the bimbo of the player < 10:
		say "[first custom style]'Is it ok for me to leave yet? Or do I have to do something else?'";
	otherwise if the bimbo of the player < 15:
		say "[variable custom style]'Am I supposed to leave now? I can stay here longer if you want another round....'";
	otherwise:
		say "[second custom style]'I love your cock! I don[']t care about leaving, I just want that thing inside me again!'";
	say "[roman type][line break]".
		
To say midDominanceGreeting of (M - a slutty sister):
	if the bimbo of the player < 5:
		say "[first custom style]'It's too big! It's too big!'";
	otherwise if the bimbo of the player < 10:
		say "[first custom style]'You[']re s-so big!'";
	otherwise if the bimbo of the player < 15:
		say "[variable custom style]'Don[']t go so fast, I want to savor it!'";
	otherwise:
		say "[second custom style]'Faster! Fuck me!'";
	say "[roman type][line break]".
	
To say SubmissiveGreeting of (M - a slutty sister):
	if the bimbo of the player < 5:
		say "[first custom style]'Call her off! Call her off!'";
	otherwise if the bimbo of the player < 10:
		say "[first custom style]'Help me! Her dick is too big!'";
	otherwise if the bimbo of the player < 15:
		say "[variable custom style]'I love this game!'";
	otherwise:
		say "[second custom style]'I[']ve got room! Take me too!'";
	say "[roman type][line break]".
	
To say FirstGreeting of (M - a slutty sister):
	say "[if the bimbo of the player < 10][first custom style][end if]";
	if the bimbo of the player < 5 and the player is female:
		say "'Get out of my way you harpies, I[']m getting the hell out of this game!'";
	otherwise if the bimbo of the player < 5:
		say "'Haha sweet! I KNEW I[']d eventually get a chance to fuck one of you! [if M is futanari slutty sister]What[']s with that dick though?[otherwise]You[']re a lot fatter than I remember though.[end if]'";
	otherwise if the bimbo of the player < 10 and the player is female:
		say "'Don[']t come any closer. I just want to press that button. [if M is futanari slutty sister]I-if I touch you on the way by, it's an accident.[otherwise]This game isn[']t fun at all. Honest.[end if]'";
	otherwise if the bimbo of the player < 10:
		say "'I am a guy and that means I can[']t let you fuck me! [if M is futanari slutty sister]It doesn[']t matter how your...uh... I[']m going to push that button.[otherwise]I[']m not going to rest until you[']re ready to let me push your buttons! Wait....[end if]'";
	otherwise if the bimbo of the player < 15:
		say "[variable custom style]'Really? All I have to do to leave this game is have a little sex? I guess that[']s fair, since I had so much fun playing.'";
	otherwise:
		say "[second custom style]'Who cares about stopping! Let's have some fun!'";
	say "[roman type][line break]".
		
To say RepeatGreeting of (M - a slutty sister):
	if the bimbo of the player < 10:
		say "[first custom style]";
	if the bimbo of the player < 5 and the player is female:
		say "'[one of]I[']m back, and this time I[']m going to kick both your asses.'[or]You[']re dreaming if you think you can turn me into some perverted weirdo.'[or]I[']m gonna fight you for women everywhere, you won[']t turn me into a slut![at random]";
	otherwise if the bimbo of the player < 5:
		say "'[one of]Get out of my way. I don[']t want to fuck gross bitches.'[or]Get out of my way, I[']m not really in the mood to get treated like a chick.'[or]Unless you[']re planning to get on your knees and [']apologize['] for trying to make me into some kind of sissy, get out of my way.'[at random]";
	otherwise if the bimbo of the player < 10 and the player is female:
		say "'[one of]Ugh, haven[']t we been through this already? You had your fun, now let me out!'[or]You[']re not going to turn me into a slut. Not if I can beat you first.'[or]I really don[']t want to keep fighting you. I just want to leave!'[or]This isn[']t fair! If you[']re going to turn me into a slut at least play by your own rules!'[at random]";
	otherwise if the bimbo of the player < 10:
		say "'[one of]Ok, you proved I[']m not much of a man anymore, but instead of rubbing it in, you could let me out of here instead.'[or]Listen. I want to fuck sluts, not become one! You put me in the wrong game!'[or]Let me out while I can still think straight!'[at random]";
	otherwise if the bimbo of the player < 15:
		say "[second custom style]'[one of]This time I[']ll satisfy you for sure!'[or]I[']ll make you both cum eventually, then I[']ll be free!'[or]I[']m pretty sure you[']re gonna get tired of fucking with me soon, then I[']ll be free to get out of here and suck some....freedom.'[at random]";
	otherwise:
		say "[second custom style]'I[']m ready for another round babe.'";
	say "[roman type][line break]".
	
To say midDominanceResponse of (M - a slutty sister):
	if the bimbo of the player < 15:
		say "[second custom style]'I[']m game to pound that ass again, but I won[']t keep you from that button.'[roman type][line break]";
	otherwise:
		say "[second custom style]'Don[']t worry, I[']ll fuck your ass again once I get a second wind!'[roman type][line break]".

To say SubmissiveResponse of (M - a slutty sister):
	if the bimbo of the player < 15:
		say "[second custom style]'You[']re absolutely right! You can go, but just remember, you need to gather enough jewelry to cover the cost of our simulation!'[roman type][line break]";
	otherwise:
		say "[second custom style]'I[']m glad you[']re having fun sweetie, but here at Nintendolls we like to save money, and the clock is ticking! Once the you end the simulation, I promise you can swallow all the cum you want!'[roman type][line break]".
		
To say DominantResponse of (M - a slutty sister):
	say "[second custom style]'";
	if there is a slutty sister penetrating a fuckhole:
		if the bimbo of the player < 15:
			say "Have fun!";
		otherwise:
			say "Don[']t worry honey, you[']ll get to feel more of that later!'";
	otherwise:
		if the bimbo of the player < 15:
			say "You need to satisfy my sister before you leave, honey!'";
		otherwise:
			say "I have a feeling you[']re going to enjoy what happens next, honey.'";
		say "[roman type][line break]".

To say AsDominantResponse of (M - a slutty sister):
	say "[second custom style]'There[']s more where that came from!'[roman type][line break]";
	
To say FirstResponse of (M - a futanari slutty sister):
	if the bimbo of the player < 10:
		say "[second custom style]'You[']re not touching that button until my cock slides out of your [asshole]!'[roman type][line break]";
	otherwise:
		say "[second custom style]'That[']s the right idea! Get on your knees so we can get started!'[roman type][line break]".
		
To say FirstResponse of (M - a bulging slutty sister):
	if the bimbo of the player < 10:
		say "[second custom style]'I[']m not letting you by until you have a thick, pearly mess all over your face!'[roman type][line break]";
	otherwise:
		say "[second custom style]'Show me what fun stuff you learned testing our game!'[roman type][line break]".
		
To say RepeatResponse of (M - a futanari slutty sister):
	if the bimbo of the player < 10:
		say "[second custom style]'Push the button as much as you want, but I want another round first!'[roman type][line break]";
	otherwise:
		say "[second custom style]'Get on your knees and show me what you[']re made of!'[roman type][line break]".

To say RepeatResponse of (M - a bulging slutty sister):
	if the bimbo of the player < 10:
		say "[second custom style]'You actually think you can win this game? Hmm, we[']ll have to be extra careful if we mess with your intelligence in the future.'[roman type][line break]";[You're really dumb if you think you can win this game]
	otherwise:
		say "[second custom style]'The best thing about virtual cum is that you don[']t have to wait around for men to make more! Roll over, I[']ll demonstrate!'[roman type][line break]".

Part 5 - Trading

To decide which number is the bartering value of (T - a thing) for (M - a slutty sister):
	decide on 0.

To say MonsterOfferRejectFlav of (M - a slutty sister) to (T - a thing):
	say "[second custom style]'This is a boss fight baby, there's no trading your way out of this one!'[roman type][line break]".


Slutty Sisters ends here.

