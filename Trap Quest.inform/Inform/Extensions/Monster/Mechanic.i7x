Mechanic by Monster begins here.

A mechanic is a kind of monster. A mechanic is usually intelligent. A mechanic is male.

Definition: a mechanic (called M) is willing to urinate:
	decide yes.

Definition: a mechanic (called M) is father material:
	decide yes.

Definition: a mechanic (called M) is raunchy:
	decide yes.

A mechanic has a number called xavier-power. The xavier-power of a mechanic is usually 0.

A mechanic has a number called power-stolen. The power-stolen of a mechanic is usually 0.

The printed name of mechanic is usually "[if item described is in the location of the player][TQlink of item described][end if][input-style]hotel mechanic[if the sleep of the item described > 0] (fast asleep)[end if][shortcut-desc][roman type][if item described is in the location of the player][TQxlink of item described][verb-desc of item described][end if]". 
Understand "hotel" as mechanic. There is 1 mechanic.

The description of mechanic is usually "[MechanicDesc]". The text-shortcut of mechanic is "mc".
Figure of mechanic is the file "mechanic1.png".

To say MechanicDesc:
	let M be the item described;
	if images visible is 1, display the figure of mechanic;
	say "A tall, boyishly attractive man, dressed in smart casual clothing - a polo neck shirt with jeans and brown loafers. A [if the intelligence of the player > 14]vanity[otherwise]utility[end if] belt of sorts is wrapped around [his of M] waist, equipped with all manner of strange gadgets, tools, and futuristic indicators[if the intelligence of the player > 14], although some of them obviously lack any function aside from looking cool[end if].[if the item described is aggressive]Clutched in [his of M] hand is an over-sized steel wrench, which is remarkably simple in comparison to some of the things on [his of M] belt.[otherwise]Peeking out of [his of M] front pocket is an over-sized steel wrench, which is remarkably simple in comparison to some of the things on [his of M] belt.[end if][if item described is retaining a random mystical amulet][big he of M] is wearing the mystical amulet around [his of M] neck, and there is a very strange glint in [his of M] eye. You can[']t shake the feeling that he is now incredibly powerful.[end if]";
	if diaper quest is 1:
		say "";
	otherwise if the bimbo of the player < 4 and the player is male:[Originally this was one big block, but it was impossible to debug so now it's separated.]
		say "[first custom style][one of]Where the fuck did he get that shirt? I[']m stuck wearing boob tubes and he gets a turtle-neck?'[or]This guy actually looks pretty normal. I wonder how he managed to get this far?'[or]I get a feeling this guy is responsible for all the robots I[']ve been seeing. Maybe he knows a way to turn them off?'[or][big he of M] looks like a douche, but hey, better than running around in skirts.'[in random order][roman type][line break]";	
	otherwise if the bimbo of the player < 4:
		say "[first custom style][one of]There doesn[']t seem like there's anything wrong with [him of M]. But there must be, if he feels at home here.'[or]Typical. Men get to wear real clothes, but women have to prance around looking like total harlots.'[or][big he of M] might be another player, but, he doesn[']t look affected at all.'[in random order][roman type][line break]";
	otherwise if the bimbo of the player < 8 and the player is male:
		say "[first custom style][one of]Wrenches are so cool. I bet he could teach me a thing or two about them.'[or]I don[']t know why, but I can[']t stop staring at [his of M] crotch. [big he of M] must be stuffing it or something, heh.'[or][big he of M]'s pretty good looking, I guess. Must be [his of M] clothes.'[in random order][roman type][line break]";
	otherwise if the bimbo of the player < 8:
		say "[first custom style][one of]His wrench is so big and hard. I could probably use it to protect myself from all the perverts around here!'[or][big he of M][']s pretty good looking. Obviously I[']d never give the nintendolls the pleasure, but at least they know what to model for.'[or]I can[']t keep from looking at [his of M] crotch. Those fucking nintendolls must be messing with my head!'[in random order][roman type][line break]";	
	otherwise if the bimbo of the player < 12:
		say "[variable custom style][one of]I[']d play with [his of M] wrench! Wait...'[or][big he of M] looks really intelligent. Totally boyfriend material, as long as he respects my boundaries!'[or]I can[']t stop myself from staring at [his of M] crotch. I[']m not even that attracted to him, but I just know [his of M] dick is really big!'[in random order][roman type][line break]";
	otherwise if the bimbo of the player < 16:
		say "[second custom style][one of]I'd play with [his of M] wrench. All night if he let me...[or][big he of M][']s SO cute, but, I don[']t want to just get on my knees right away. I should cook [him of M] dinner first.'[or]Isn[']t he the smart guy that made all those fun robots?'[in random order][roman type][line break]";
	otherwise:
		say "[second custom style][one of]I wanna give [him of M] a blowjob!'[or][big he of M]'s SO smart. I bet he knows what I[']m thinking. Teehee, it's naughty!'[or]I'd let [him of M] give my [if the player is male]fuckhole[otherwise]pussy[end if] a tune-up anytime!'[in random order][roman type][line break]".

To decide which number is the girth of (M - a mechanic):
	decide on 4.

Definition: A mechanic (called M) is willing to shag:
	if the sleep of M is 0 and the scared of M is 0 and the boredom of M < 120, decide yes;
	decide no.

Definition: a mechanic (called M) is willing to let go:
	unless M is mating, decide no;
	decide yes.

To decide which number is the semen load of (M - a mechanic):
	decide on 3.

To set up (M - a mechanic):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 12;
	now the health of M is the maxhealth of M.

This is the spawn initial mechanic rule:
	if the number of alive mechanics is 0 and the number of alive demon lords is 0:
		if debugmode > 0, say "Summoning mechanic in hotel.";
		let M be a random mechanic;
		summon M in the hotel.
The spawn initial mechanic rule is listed in the setting up hotel monsters rules.

To say PregGrowth of (M - a mechanic):
	say "the mechanic's [child]".

To compute labour to (M - a mechanic):
	if M is regional and M is alive:
		compute pregnancy clothing displacement;
		say "[PregFlav][if the father is in the location of the player]The [father][otherwise]The [father] appears almost as if on cue!  [big he of M][end if] kneels down on one knee and delivers the human baby, which immediately starts crying loudly. [big he of M] takes it into [his of M] arms and begins to cradle it. [line break][first custom style]'Ssshh, hush there, everything is okay, I'm your daddy little one!'[roman type]  [big he of M] looks at you. [line break][first custom style]'[if the father is mating]A wonderful addition to our family.[otherwise]My first child. How magical - I will remember this moment for ever.'[roman type][line break]Without giving you a chance to react, never mind reply, [he of M] leaves you to recover from your ordeal.";
		if the father is in the location of the player:
			say "For some reason, you are filled with a sense of deep fulfilment. You feel great!";
			StrengthUp 1;
			DexUp 1;
			IntUp 1;
	otherwise if M is alive:
		Delay Labour.

Definition: a mechanic (called M) is human:
	decide yes.

To compute motion of (M - a mechanic):
	let W be 0;
	let N be a random off-stage robochef;
	repeat with L running through leftovers in the location of M:
		if the leftover-type of L is 117 or the leftover-type of L is 118 or the leftover-type of L is 119:
			now W is 1;
	if W is 1:[we know there's something there]
		let O be a random leftover in the location of M;
		if the leftover-type of O is 117:
			now N is a random off-stage robobellboy;
			if N is monster:
				set up N;
				DifficultyUp N by 1;
		otherwise if the leftover-type of O is 118:
			now N is a random off-stage robobutler;
			if N is monster:
				set up N;
				increase the blue-balls of N by 1;
				DifficultyUp N by the blue-balls of M * 2;
		otherwise if N is monster:
			set up N;
			increase the blue-balls of N by 1;
			DifficultyUp N by the blue-balls of M;
		if N is monster:
			now N is in the location of M;
			distract N;
			if M is in the location of the player, say " The [M] kneels down in front of the pile. [line break][speech style of M]'Wow, somebody actually broke your fucking flimsy ass.'[roman type][line break][big he of M] repairs and replaces the broken parts with inhuman speed and with moments a brand new [N] is standing right there in front of you.";
			otherwise say "You hear swearing followed by some loud clanging somewhere else in the hotel.";
		destroy O;
	otherwise:
		compute room leaving of M.

Part 1 - Perception

To decide which number is the bimbo tolerance of (M - a mechanic):
	decide on 9.

To decide which number is the cringe tolerance of (M - a mechanic):
	decide on 9.

To compute perception of (M - a mechanic):
	now M is interested;
	say "The [M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if the player is soulless and the player-class is not succubus:
		say "[speech style of M]'Well look at you. Is there even anything in there anymore? Well don[']t worry, that makes you a perfect candidate for a new [']quest['].'[roman type][line break]";
		anger M;
	otherwise if the player-class is succubus and M is not retaining a random mystical amulet:
		say "[speech style of M]Have you found it yet, slave?'[roman type][line break]";
		calm M;
	otherwise if there is a worn mystical amulet:		
		say "[speech style of M]'That amulet!  How did you get it?  I have been searching for it for years!  Give it to me!'[roman type][line break]";
		anger M;
	otherwise if there is a worn messed knickers and diaper quest is 0:
		say "[speech style of M]'Nope, nope nope, I'm going to pretend I can't smell that.'[roman type][line break]";
		bore M;
	otherwise if the class of the player is living sex doll:
		say "[speech style of M]'Ooh, a sex doll. Perfect - I'll have a quick break to get my rocks off, then get back to work.'[roman type][line break]";
		anger M;
	otherwise if there is a worn steel collar:
		say "[speech style of M]'There you are!  Do you have the amulet?!  If not, I'm going to give you [if the times-dominated of M > 0]another[otherwise]a[end if] reminder of how much you're my [if diaper quest is 1]slave[otherwise]bitch[end if].'[roman type][line break]";
		anger M;
	otherwise if (there is a worn diaper or the diaper-duration of M > 0) and the player is immobile:
		say "[big he of M] seems to decide to leave you alone for now.";
		distract M;
	otherwise if diaper quest is 1 and ((there is a worn currently visible diaper and M is not uniquely unfriendly) or M is aware that the player needs a change):
		compute diaper check of M;
	otherwise if the diaper-duration of M > 0:
		if there is a worn diaper:
			compute diaper check of M;
		otherwise:
			say "[speech style of M]'YOU!  Did I tell you that your punishment sentence was over?  In this hotel, the submissives must obey every order of the Masters. Let me show you what happens if you don't.'[roman type][line break]";
			FavourDown M by 4;
			anger M;
	otherwise if the class of the player is faerie:
		say "[speech style of M]'Hey, fairy. Get the fuck over here and tell me what you've done with my amulet!'[roman type][line break]";
		anger M;
	otherwise if M is mating:
		say "[speech style of M]'Well if it isn't my babymomma!  [if the player is flying]But what are you doing up there?!'[otherwise]How are you doing?'[end if][roman type][line break]";
		calm M;
	otherwise if the class of the player is princess:
		say "[speech style of M]'[if diaper quest is 0]Hey, [bitch]. [end if]You obviously don[']t know anything about that outfit you[']re wearing. Let me teach you a little lesson.'[roman type][line break]";
		anger M;
	otherwise if M is objectifying the player:
		say "[speech style of M]'You look like you're up for a fuck. Let's get it on.'  [roman type][if the sex addiction of the player < 12]Uh-oh...[otherwise][line break][end if]";
		anger M;
	otherwise if M is babifying the player:
		say "[speech style of M]'You look like a stupid big baby!  Let me help you enjoy yourself...'  [roman type][if the bimbo of the player < 12]Uh-oh...[otherwise][line break][end if]";
		anger M;
	otherwise if the player is prone and M is not retaining a random mystical amulet:
		say "[speech style of M]'Hey there, you look like you could use some help. Stay there for a moment, and let me give you this gift...'  [roman type][line break]";
		anger M;
	otherwise if M is unfriendly:
		say "[speech style of M]'[if diaper quest is 0]You know what time it is, [slut][otherwise]I'm still angry with you. I dare you to fight me again[end if].'[roman type][line break]";
	otherwise if diaper quest is 1 and M is retaining a random mystical amulet and M is retaining a pink spraybottle:
		let S be a random pink spraybottle retained by M;
		now S is spray;
		say "[speech style of M]'Hey there. I guess it's time I returned this to you.'[roman type] The [M] hands you another [ShortDesc of S].";
		now S is held by the player;
		now S is not retained by M;
		now M is not withholding S;
	otherwise:
		say "[speech style of M]'Hey there. [if M is retaining a random mystical amulet]Thanks again for the amulet.'[otherwise]Enjoying your stay?'[end if][roman type][line break]";
		calm M.

Part 2 - Misc Flavour

To compute kneeling reaction of (M - a mechanic):
	say "The [M] cracks a wide smile. [line break][speech style of M]'I'm glad we could come to an agreement.'[roman type][line break]";
	humiliate 75.

To compute delay of (M - a mechanic):
	follow the mechanic unique punishment rules;
	unless the rule succeeded, say "The [M] takes [his of M] time, relishing in the feeling of victory.".

To compute robot anger of (M - a mechanic):
	if M is friendly or M is uninterested:
		say "The [M] looks at you angrily. [line break][speech style of M]'Hey, [one of]don't damage my inventions!'[or]I've told you before, don't attack my robots!'[stopping][roman type][line break]";
		now M is interested;
		anger M;
		now the boredom of M is 0.

To say DiaperReaction of (M - a mechanic):
	say "The [M] laughs. [line break][speech style of M]'We get the most fucked up people in this hotel, don't we?'[roman type][line break]";
	if the humiliation of the player < 15000, say "[variable custom style][if the player is able to speak]'I don't want to have to wear diapers!  You've got to believe me!'[otherwise][big he of M] thinks I want to be seen like this![end if][roman type][line break]";
	otherwise say "You [if the humiliation of the player < 27000]look down at the ground[otherwise]nod[end if] in shame.".

Report slapping a robot:
	let M be a random mechanic in the location of the player;
	if M is mechanic, compute robot anger of M.

Report kneeing a robot:
	let M be a random mechanic in the location of the player;
	if M is mechanic, compute robot anger of M.

Report kicking a robot:
	let M be a random mechanic in the location of the player;
	if M is mechanic, compute robot anger of M.

Part 3 - Combat

Section 1 - Protect and Attack

To compute (M - a mechanic) protecting against (X - a monster):
	if the player is monster stuck:
		if M is ally:
			say "The [M] doesn't look like [he of M] wants to watch. [big he of M] turns to leave.";
			distract M;
		otherwise:
			say "[one of][or]The [M] seems to be enjoying watching you.[or][or][or][cycling]";
	otherwise if M is guardian:
		compute X receiving 2 damage from M;
	otherwise if X is not robot and M is ally:
		compute X receiving 2 damage from M;
	otherwise:
		say "[one of]The [M] watches you fight with mild interest.[or][or][or][or][cycling]".

To say AllyDamageFlav of (M - a mechanic) on (X - a monster):
	say "[if X is robot][one of][line break][speech style of M]'Stupid thing must be malfunctioning...'[roman type][line break][or][stopping][end if]The [M] casually smacks the [X] with [his of M] wrench.".

The latex punishment rule of a mechanic is usually the no latex punishment rule.

The mechanic amulet seeking rules is a rulebook. The priority attack rules of a mechanic is usually the mechanic amulet seeking rules.

This is the mechanic obtains amulet from ground rule:
	let A be a random mystical amulet;
	if A is in the location of current-monster:
		now A is worn by the player;
		follow the mechanic claims amulet rule;
		rule succeeds.
The mechanic obtains amulet from ground rule is listed in the mechanic amulet seeking rules.

The mechanic unique punishment rules is a rulebook. The unique punishment rule of a mechanic is usually the mechanic unique punishment rules.
The mechanic diaper quest rules is a rulebook. The diaper quest rules of a mechanic is usually the mechanic diaper quest rules.

This is the mechanic claims amulet rule:
	let M be a random mechanic in the location of the player;
	let A be a random mystical amulet;
	if M is mechanic and A is held:
		say "The [M] rips the [A] from you. [line break][speech style of M]'At last, it's mine!  It's all mine!'[roman type][line break]";
		now A is in holding pen;
		now M is retaining A;
		let S be a random worn steel collar;
		if S is steel collar:
			say "With a snap of [his of M] fingers, the steel collar unlatches itself and drops from your neck. ";
			now S is in the location of the player;
		if (a random number between 1 and 2 is 1 and the player-class is not succubus) or the class of the player is priestess or there is a worn pure totem:[the mechanic will always transform if you are a demon]
			say "[big he of M] puts the amulet on, and you can feel pulses of powerful energy flowing throughout the room. [line break][speech style of M]'I can feel the power running through my veins!  Yes, yes!  Haha!  I am back, baby!  Here, have a small reward for your troubles...'[roman type][line break]";
			compute xavier reward of M;
			say "The [M] starts to wander off, completely ignoring you.";
			bore M for 500 seconds;
		otherwise:
			say "[big he of M] puts the amulet on, and you can feel pulses of powerful energy flowing throughout the room. [line break][speech style of M]'I can feel the power running through my veins!  Yes, yes, this is it!  Behold, my true form, unleashed again upon this MORTAL PLANE!'[roman type][line break]";
			unseal xavier from M;
		rule succeeds.
The mechanic claims amulet rule is listed last in the mechanic unique punishment rules.
The mechanic claims amulet rule is listed last in the mechanic diaper quest rules.

To compute xavier reward of (M - a mechanic):
	now the xavier-power of M is 4;
	let R be a random number from 1 to 6;
	let J be a random off-stage demon codpiece;
	let P be a random off-stage demon tail plug;
	if R is 1:
		say "The [M] points at you with [his of current-monster] hands, and lightning fires from [his of current-monster] fingertips, enveloping your body. Instead of pain, though, you just feel your skin tingle gently. After a few moments, the lightning stops. You feel STRONG!";
		StrengthUp 4;
	otherwise if R is 2:
		say "The [M] points at you with [his of current-monster] hands, and lightning fires from [his of current-monster] fingertips, enveloping your body. Instead of pain, though, you just feel your joints tingling, as if being massaged by a thousand tiny fingers. After a few moments, the lightning stops. You feel FLEXIBLE!";
		DexUp 4;
	otherwise if R is 3 and J is actually summonable and the player is male and the player is a may 2017 top donator:
		say "The [M] points at you with [his of current-monster] hands, and lightning fires from [his of current-monster] fingertips, enveloping your crotch. Light converges around your [ShortDesc of penis] and a [printed name of J] materializes around your waist! You feel dominant!";
		summon J;
		bless J;
		DelicateDown 2;
	otherwise if R is 4 and P is actually summonable:
		say "The [M] points at you with [his of current-monster] hands, and lightning fires from [his of current-monster] fingertips, enveloping your body. It hurts, but somehow, you feel even more confident because of it! You feel your [asshole] being forced open as a [printed name of P], materializes inside you.";
		summon P;
		now the body soreness of the player is 10;
		if the delicateness of the player > 4:
			DelicateDown 5;
		otherwise:
			DelicateDown the delicateness of the player;
			SexAddictDown the 5 - delicateness of the player;
	otherwise:[Double chance of this]
		say "The [M] points at you with [his of current-monster] hands, and lightning fires from [his of current-monster] fingertips, enveloping your body. Instead of pain, though, you just feel your skin tingle gently. After a few moments, the lightning stops. You feel more intelligent!";
		IntUp 4;

This is the mechanic strips princess rule:
	if the class of the player is princess:
		if there is a monster penetrating face or there is a monster penetrating breasts:
			rule succeeds; [Mechanic will wait until he has access to your chest]
		let D be a random worn royal attire clothing;
		let B be a random worn bra;
		say "[speech style of current-monster]'Let[']s see if you still want to play princess after I take you down a peg.'[roman type][line break]The [current-monster] rips off your [printed name of D], [if B is clothing]leaving you with only your [printed name of B] to cover your [BreastDesc][otherwise]leaving your [BreastDesc] bare and exposed[end if]. [big he of current-monster] unzips [his of current-monster] jeans.";
		destroy D;
		now the blue-balls of current-monster is 1;
		if watersports fetish is 1, now the chosen-orifice of current-monster is face;
		rule succeeds.
The mechanic strips princess rule is listed in the mechanic unique punishment rules.

This is the mechanic applies collar rule:
	let C be a random steel collar;
	if C is actually summonable and C is not in the location of the player and the class of the player is not living sex doll and the bimbo of the player <= 15 and the xavier-power of current-monster < 2 and the player is souled and the power-stolen of current-monster is 0:
		if there is a monster penetrating face, rule succeeds; [Mechanic waits silently for an opening]
		say "[speech style of current-monster]'Haha[if diaper quest is 1], you're my baby slave now[end if]!'[roman type][line break]CLUNK!  The [current-monster] takes this opportunity to force [if C is in the location of the player or C is held]the[otherwise]a smooth, round[end if] steel collar around your neck and click it shut. The locking mechanism is completely internal, meaning it's impossible to remove. [line break][if the player is able to speak][variable custom style]'Hey, what the hell?'[line break][end if][speech style of current-monster]'This is my own special invention. It is completely impossible to take off without my knowledge, and when you get aroused, it will make sure you don't cool off until you orgasm.'[paragraph break]";
		summon C;
		say "[variable custom style][if the bimbo of the player < 10]Fuck, how did I get myself into this mess?[otherwise if the bimbo of the player < 15]I guess I should do whatever [he of current-monster] says...[otherwise]Oooh, this could be a fun game![end if][roman type][line break]";
		if diaper quest is 0, say "The [current-monster] rubs [his of current-monster] chin. [line break][speech style of current-monster]'I have a... favour to ask. There's an amulet somewhere in this world, maybe you've encountered it already. Last I heard it was being guarded by a large monster. I want you to retrieve it for me. If you do that, I'll free you from the collar. I would get it myself, but why risk the journey when I could get adventurers like you to go on the quest for me?'[roman type][line break][variable custom style][if the bimbo of the player < 5]On the one hand, this is the first real quest I've been given all game. On the other hand, this guy is a bastard.[otherwise if the bimbo of the player < 10]Obviously this is just some ploy to get that monstrous beast in the dungeon to fuck me, but what other choice do I have?.[otherwise if the bimbo of the player < 15]If it's the only way to stop being [his of current-monster] slave...![otherwise]Playing with a monster, huh?  Sounds kinky![end if][roman type][line break][big he of current-monster] pauses once more. [line break][speech style of current-monster]'And while you're here, I think you're going to do a little something extra for me.'[roman type][line break][big he of current-monster] unzips [his of current-monster] jeans.";
		otherwise say "The [current-monster] rubs [his of current-monster] chin. [line break][speech style of current-monster]'I have a... favour to ask. There's an amulet somewhere in this world, maybe you've encountered it already. Last I heard it was being guarded by a spooky monster. I want you to retrieve it for me. If you do that, I'll free you from the collar. I would get it myself, but why risk the journey when I could get adventurers like you to go on the quest for me?'[roman type][line break][variable custom style][if the bimbo of the player < 5]On the one hand, this is the first real quest I've been given all game. On the other hand, this guy is a bastard.[otherwise if the bimbo of the player < 10]Obviously this is just some ploy to get that monstrous beast in the dungeon to dominate me, but what other choice do I have?.[otherwise if the bimbo of the player < 15]If it's the only way to stop being [his of current-monster] slave...![otherwise]Playing with a monster, huh?  Sounds scary but fun![end if][roman type][line break][big he of current-monster] pauses once more. [line break][speech style of current-monster]'And while you're down there, I think I'm going to start training my newest baby slave.'[line break]";
		say "[variable custom style][if the bimbo of the player < 5]And [he of current-monster] isn[']t even satisfied having me doing [his of current-monster] dirty work for me.[otherwise if the bimbo of the player < 10]I guess I should have seen that coming.[otherwise if the bimbo of the player < 15]I saw that coming![otherwise]Oh yes PLEASE.[end if][roman type][line break]";
		rule succeeds.
The mechanic applies collar rule is listed last in the mechanic unique punishment rules.
The mechanic applies collar rule is listed last in the mechanic diaper quest rules.

This is the mechanic dark ritual rule:
	if the player is soulless and the player-class is not succubus:
		let M be current-monster;
		let L be a random off-stage demon horns;
		let K be a random off-stage soulstone;
		say "The [M] seems to consider you for a second, then pulls out a swirling black and red gem. [line break][speech style of M]'You cannot imagine how difficult it was to come by this, you should be honoured to play host to one of my servants...'[roman type][line break]";
		say "You have no idea what the hell he[']s talking about, but before you can react [he of M] plunges the stone into your chest. Agony overflows your body, and you briefly black out. When you come to, he[']s still glancing down at you.[line break]";
		say "[speech style of M]'All better? Good. You serve me now. [unless a random mystical amulet is retained by M]You don[']t need to know the details, all you need to know is that you will have a place in my service for eternity if you can only recover the mystical amulet guarded by the minotaur in the dungeon. Fail, and of course your spirit will fall to oblivion forever...'[otherwise]This is really all a formality since I already have the amulet I need, but you[']ll need to get to collecting souls. Slack off and your soul will fall to oblivion forever. Hop to it slut!'[end if][roman type][line break]";
		repeat with B running through worn headgear:
			say " Your new horns tear off your [printed name of B]!";
			destroy B;
		repeat with C running through worn neck covering clothing:
			say " The [printed name of K] shatters your [printed name of C]!";
			destroy C;
		summon L;
		summon K;
		now the souled-humiliation of the player is the humiliation of the player;
		now the humiliation of the player is 0;
		bore M;
		rule succeeds.
The mechanic dark ritual rule is listed last in the mechanic unique punishment rules.

The choosing a diaper punishment rule is listed last in the mechanic diaper quest rules.

To compute (M - a mechanic) entering asshole:
	if M is friendly-fucking or presented-orifice is asshole, say "[FriendlyAssholePenetrationFlav of M]";
	otherwise say "[AssholePenetrationFlav of M]";
	now the sex-length of M is a random number between 2 and 3;
	now M is penetrating asshole;
	ruin asshole.

To compute (M - a mechanic) entering vagina:
	say "[VaginaPenetrationFlav of M]";
	now the sex-length of M is a random number between 2 and 3;
	now M is penetrating vagina;
	ruin vagina.

To compute (M - a mechanic) entering mouth:
	if there is a worn tiara and the blue-balls of M is 1 and watersports fetish is 1 and the latex-transformation of the player <= 4:
		say "[big he of M] cruelly grabs you by the hair, yanking you forward so your face is oriented straight at [his of M] crotch. [if the bimbo of the player < 13]You look on in [horror][otherwise]Your heart pumps with excitement[end if] as [he of M] begins urinating in your face.";
		FacePiss from M;
		now the blue-balls of M is 0;
	otherwise:
		say "[MouthPenetrationFlav of M]";
		now the sex-length of M is a random number between 2 and 3;
		now M is penetrating face.

To say MouthPenetrationFlav of (M - a mechanic):
	if presented-orifice is face:
		say FriendlyMouthPenetrationFlav of M;
	otherwise:
		say "[one of]The [M] grabs you by the neck, squeezing painfully as [he of M] closes the gap between you and [his of M] crotch.[or]The [M] grabs a handful of your hair and wrenches your face into [his of M] crotch.[or]The [M] savagely pulls your hair, forcing your face right up against [his of M] pulsing erection.[or]The [M] seizes you by the hair, cruelly yanking your face right up to [his of M] crotch.[or]The [M] closes [his of M] fist around your ear and brutally yanks your head toward [his of M] crotch.[at random]";
		if there is a worn latex hood:
			say "[one of]You gag involuntarily as [he of M] rams [his of M] [manly-penis] into your mouth and begins to thrust.[or]You [if the oral sex addiction of the player + the delicateness of the player < 10]struggle, but the ring in your mouth ensures [he of M] can shove [his of M] [manly-penis] into your mouth and thrust with impunity.[otherwise]do your best not to struggle, which [he of M] simply takes as an opportunity to shove [his of M] [manly-penis] into your mouth and thrust with impunity.[end if][or][if the oral sex addiction of the player < 6]Your eyes widen in surprise and indignation as the [M] slides [his of M] [manly-penis] through your gag and into your mouth.[otherwise if the delicateness of the player > 3]You can do nothing but gag as [he of M] slides [his of M] penis through the ring and into your mouth.[otherwise]Your eyes widen with excitement as the [M] slides [his of M] [manly-penis] through your gag and into your mouth.[end if][at random]";
		otherwise if the latex-transformation of the player > 6:
			say "[one of]You give the [M] a dour look as [he of M] slides [his of M] penis through your [LipDesc][or]You can only stare up at [him of M] as [his of M] penis slides into padded hole you call a mouth.[or]Your [LipDesc] make faint squeaking noises as [he of M] slides [his of M] [manly-penis] into your mouth and begins to thrust.[or]You make [if the oral sex addiction of the player < 5]an annoyed noise[otherwise]a plaintive moan[end if] as [his of M] [manly-penis] enters your padded rubber mouth.[at random]";
		otherwise:
			say "[one of]You blink back your tears as you obediently part your lips and allow [his of M] [manly-penis] to slide in.[or]You [if the oral sex addiction of the player < 4]snarl[otherwise if the oral sex addiction of the player > 6]can't help licking your [LipDesc][otherwise if the delicateness of the player > 5]stare at the floor[otherwise]look up at [him of M] hesitantly[end if] as you open your mouth and allow [his of M] [manly-penis] to slide right in.[or]You [if the delicateness of the player + the oral sex addiction of the player < 7]grunt defiantly[otherwise if the oral sex addiction of the player > 6]moan happily[otherwise]grunt noncommittally[end if] as [he of M] shoves [his of M] penis into your mouth.[or][if the oral sex addiction of the player < 4]You glare up at [him of M] as [he of M] forces [his of M] penis through your [LipDesc] and begins to thrust.[otherwise if the oral sex addiction of the player < 7]You shiver with a mixture of embarrassment and anticipation as [he of M] forces [his of M] penis though your [LipDesc] and begins to thrust.[otherwise]You part your [LipDesc], shivering with arousal and excitement as [his of M] penis slides into your mouth.[end if][at random]".

To say StrikingSuccessFlav of (M - a mechanic) on (B - a body part):
	say "The [M] strikes you [TargetName of B] with a wrench!  Ouch!!".

To say StrikingFailureFlav of (M - a mechanic) on (B - a body part):
	say "The [M] tries to whack you [TargetName of B] with [his of M] wrench but you manage to get out of the way just in time!".

To compute post climax effect of (M - a mechanic) in (F - a fuckhole):
	if M is interested:
		compute happy reward of M;
		satisfy M;
	otherwise:
		bore M.

To decide if (M - a mechanic) is losing wrapper in (F - vagina):
	if the class of the player is princess:[he hates princesses]
		if the player is a pussy slut and a random number between 1 and 2 is 1, decide no;
		decide yes;
	if the player is a pussy slut, decide no;
	if the class of the player is priestess, decide no;[he's weak to priestesses]
	if the class of the player is maid and a random number between 1 and 2 is 2, decide no;
	if a random number between 1 and 4 is 1, decide no;
	decide yes.

To decide if (M - a mechanic) is losing wrapper in (F - asshole):
	if the class of the player is princess:
		if the class of the player is priestess and a random number between 1 and 2 is 1, decide no;
		decide yes;
	if a random number between 1 and 2 is 1:
		if the player is a butt slut, decide no;
		if the class of the player is priestess, decide no;
	decide yes.

To compute condom success of (M - a mechanic) in (F - a fuckhole):
	say CondomPieFlav of M in F;
	compute M finishing in F;
	now M is unwrapped;
	if F is asshole, AssFill 1;
	otherwise WombFill 1.

To say CondomFailFlav of (M - a mechanic) in (F - a fuckhole):
	say "The [M] suddenly pulls out, tearing off the condom before immediately slamming [his of M] [manly-penis] back in. [line break][speech style of M]'[one of]I[']m going to jizz inside you, bitch!'[or][if pregnancy fetish is 1 and M is penetrating vagina]Hope you[']re on the pill, bitch,[otherwise]Hope you like creampies, bitch,[end if] this load is going to be big!'[or]You[']re gonna take it all, bitch![or]That[']s right bitch, enjoy all my cum!'[at random][roman type][line break][if the semen addiction of the player < 7]You struggle as much as you can without setting [him of M] off immediately[otherwise if the semen addiction of the player < 12]You half-heartedly struggle to get away[otherwise]You playfully struggle to get away[end if], but [he of M] holds you down effortlessly, [one of]his [manly-penis] continuing to slam in and out as wave after wave of [semen] rushes into your now unprotected [variable F][or]continuing to thrust as [his of M] [manly-penis] plants [his of M] [semen] nice and deep inside your now unprotected [variable F][or]his [manly-penis] throbbing powerfully as it floods your unprotected [variable F] with [his of M] load, pushing it deeper with every thrust[at random]. By the time [he of M] finally pulls out and returns to [his of M] feet, both of you are certain [he of M] has coated every inch of your inner walls.".

To say CondomPieFlav of (M - a mechanic) in (F - a fuckhole):
	say "[one of]The [M] tightens [his of M] grip, pistoning fervently as the condom fills with warmth. [big his of M] groans die down as [he of M] loses speed, and when [he of M] pulls out you think it's over and try to crawl away, only to feel [his of M] [manly-penis] immediately slam back in protection-free, depositing a final few spurts of [semen] directly into your [variable F].[or]The [M] groans, tightening [his of M] grip as [his of M] [manly-penis] shoots jet after jet of fresh [semen] into the latex condom. [big he of M] pulls out, quickly peeling it off before sliding back in, sighing in satisfaction as [he of M] shoots a final wave of [semen] directly into your [variable F].[at random]".

To say CreampieFlav of (M - a mechanic) in (F - a fuckhole):
	say "[one of]The [M] slams [his of M] [manly-penis] home, groaning with pleasure as [he of M] floods your [variable F] with [his of M] warm [semen]. [big he of M] gives you a healthy smack across the ass as [he of M] pulls out, climbing to [his of M] feet and wiping a bit of sweat from [his of M] brow.[or]The [M] jams [his of M] [manly-penis] in as far as it will go, reaching underneath you to play with your [ShortDesc of breasts] [he of M] fills your [variable F] with [his of M] load. [big he of M] roughly shoves you off [his of M] [manly-penis], sighing in satisfaction as [he of M] gets to [his of M] feet.[or]The [M] groans, tightening [his of M] grip as [his of M] [manly-penis] shoots jet after jet of fresh [semen] directly into your [variable F]. [big he of M] finishes himself off with a few short thrusts before pulling out and climbing to [his of M] feet.[at random]".

To compute happy reward of (M - a mechanic):[reward for giving a pleasant blowjob]
	let H be a random off-stage maid headdress;
	if M is retaining a pink spraybottle:
		let S be a random pink spraybottle retained by M;
		now S is spray;
		say "[line break][speech style of M]'[one of]Good thing you[']re such a whore, you could have been out of a job. Value this chance.'[or]Now I remember why I hired you. You[']re fucking easy! Better stay easy if you[']re gonna be so fucking careless.'[or]Ah, I never get tired of fucking stupid whores. Don[']t lose this bottle though, I[']ll be pissed.'[at random][roman type][line break]The [M] hands you another [ShortDesc of S].";
		now S is held by the player;
		now S is not retained by M;
		now M is not withholding S;
	otherwise if the employee-record of senior robobellboy > 4 and the class of the player is hotel employment:
		let J be a random off-stage plentiful accessory;
		now J is emerald;
		say "[speech style of M]'Normally I don[']t pay whores on principle, but since you work for me and all...'[roman type][line break]The [M] hands a [printed name of J].";
	otherwise if the employee-record of senior robobellboy > 2 and H is actually summonable:
		say "[speech style of M]'That was actually pretty nice. Plus, given what I[']ve heard about you...You[']re hired!'[roman type][line break]The [M] pulls out a [printed name of H] and fixes it on top of your head.";
		summon H;
	otherwise if the employee-record of senior robobellboy < -2:
		if the class of the player is hotel employment, say "[speech style of M]'To be honest, I don't get why you get such terrible reviews. After you[']ve done some more training, come back for another fuck.'[roman type][line break]";
		otherwise say "[speech style of M]'That was pretty good, but I don't trust interns. I still want you to do some proper training later on.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'You[']re not an awful fuck as far as whores go. Don[']t expect me to pay you though.'[roman type][line break]".

Section 2 - DQ

Definition: a mechanic (called M) is willing to spank:
	decide yes.

Definition: a mechanic (called M) is willing to deliver enemas:
	decide yes.

Definition: a mechanic (called M) is willing to confiscate:
	decide yes.

Definition: a mechanic (called M) is diaper disciplining:
	decide yes.

Definition: a mechanic (called M) is willing to change diapers:
	decide yes.

Definition: a mechanic (called M) is willing to donate diapers:
	decide yes.

Section 3 - Damage

To compute damage of (M - a mechanic):
	if the health of M > 0 or M is retaining a random mystical amulet:
		if M is uninterested:
			say "[big he of M] shouts angrily!";
			now M is interested;
			anger M;
		otherwise:
			if M is friendly:
				say "The [M] looks surprised, but lowers [his of M] gaze and takes an offensive stance!";
				if the player-class is succubus:
					say "[speech style of M]'A betrayal eh? I will show you your place, slave'[roman type]";
				anger M;
			otherwise:
				if the health of M > the maxhealth of M / 2:
					say "The [M] sneers menacingly. [if M is retaining a random mystical amulet][big his of M] eyes glow red[one of]. [line break][speech style of M]'You don't want to make me have to use my full power, trust me on this.'[roman type][line break][or].[stopping][otherwise][big he of M]'s still got a lot of fight left in him![end if]";
				otherwise:
					if the xavier-power of M is 4:
						say "The [M] grips the amulet. [line break][speech style of M]'Fine, have it your way!'[roman type][line break]";
						unseal xavier from M;
						let N be a random demon lord in the location of the player;
						if N is monster:
							now N is interested;
							anger N;
					otherwise if there is a worn steel collar and the health of M < the maxhealth of M / 3:
						say "The [M] roars with pain. [line break][speech style of M]'Fine, if I take the collar off, will you leave me alone?!'[roman type][line break]";
						let S be a random worn steel collar;
						if S is steel collar:
							say "With a snap of [his of M] fingers, the steel collar unlatches itself and drops from your neck.";
							now S is in the location of the player;
					otherwise:
						say "The [M] recoils in pain. ";
	otherwise:
		compute death of M.

To compute unique death of (M - a mechanic):
	let X be nothing;
	repeat with B running through off-stage cans:
		if the fill-type of B is 3:
			now X is B;
			now X is blessed;
			break;
	if the player-class is succubus:
		say "[speech style of M]'N-no, so.. close... Curse your... betrayal...'[roman type][line break]";
	if X is can:
		say "The [M] silently slumps to the ground, dead. [big he of M] drops a [printed name of X]!  [line break][variable custom style]I bet that's useful...[roman type][line break]";
		now X is in the location of the player;
		compute autotaking X;
	otherwise:
		say "The [M] silently slumps to the ground, dead.";
	if there is a worn steel collar:
		let S be a random worn steel collar;
		if S is steel collar:
			say "As [his of M] body hits the ground, the steel collar unlatches itself and drops from your neck.";
			now S is in the location of the player.

To loot (M - a mechanic):
	let X be a random off-stage plentiful bracelet;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.

		
Part 4 - Conversation

To IdentifiablePosterReaction of (M - a mechanic):
	say "The [M] looks at you, then at the banner, then back to you. Upon realising that it is you, [he of M] puts [his of M] hands on [his of M] hips and laughs loudly.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - a mechanic):
	say "The [M] looks at the banner with a big grin on [his of M] face. [big he of M] doesn't seem to realise it is you, but is clearly enjoying looking at it.";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Section 1 - Greeting

To say FirstResponse of (M - a mechanic):
	say "[speech style of M]'Hi there.'[roman type][line break]".

To say RepeatResponse of (M - a mechanic):
	if the class of the player is maid:
		say "[speech style of M]'[one of]The patrons are looking forward to having you clean up in their rooms. Don[']t keep them waiting.'[or]Hey, aren[']t you the maid? Stop flirting and get back to work.'[or]I[']m not paying you to make conversation, maid. Granted I[']m not really paying you to [']clean['] either...'[or]Ugh, is this about the pay? The patrons will compensate you when you do your job. Better get going, they might give less if you keep them waiting.'[or]If you[']re here looking for instructions, you[']re in luck. Stop bothering me and get back to work. Clear anything up?'[at random][roman type][line break]";
	otherwise if the class of the player is hotel employment:
		say "[speech style of M]'[one of]I[']d really prefer it if you kept your flirting to the paying customers.'[or]Don[']t you have a [manly-penis] you[']re supposed to be sitting on, somewhere? Ugh, why do I pay you?'[or]I[']m not paying you to make conversation. Get back to work.'[or]Ugh, is this about the pay? I swear, it's like you whores have never read a contract before.'[or][if the employee-record of senior robobellboy > 1]I hear you do good work, but I[']m not a whore, so I[']m not planning to give you a bonus for free, if you know what I mean[otherwise if the employee-record of senior robobellboy < -1]I hear you pissed off some of my customers. Clean up your act or it's going to come up on your next performance review[otherwise]If you have time to talk to me, you have time to suck dick. Go find a customer[end if].'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'Hi again.'[roman type][line break]".

To say UnfriendlyResponse of (M - a mechanic):
	if the class of the player is hotel employment, say "[speech style of M]'[one of]In your contract, it said something about waxing hard poles. Get on your knees, I[']ll demonstrate what I mean.'[or]It's time you did some real work for a change, maid. Get on your knees.'[or]Do you feel like a fuck? Because if you value your job, you do.'[or]Hey maid. I[']m giving you a break from serving patrons. Get on your knees, because you[']re going to serve me instead.'[or]Guess what, your boss is horny, get on your knees.'[at random]";
	otherwise say "[speech style of M]'[one of]Shut up, or I'll make you.'[or]If you value your pretty face, you[']ll get on your knees. Hurry, before I lose my patience.'[or]Shut your mouth.'[or]If you keep running your mouth, I[']ll have to put something in it.'[at random][roman type][line break]".

To say DominantResponse of (M - a mechanic):
	if the class of the player is hotel employment:
		say "[speech style of M]'[one of]There[']s a reason I keep sluts like you on my dime. Get on your knees.[or]I[']m not quite sure I[']ve paid you at all this month. You accept [manly-penis], right? Great, get on your knees.[or]Anything not to do your job, eh? Alright, get on your knees.[or]I think I[']ve heard this one. So horny that you can[']t focus on your job. I[']ll bite. Get on your knees.[at random][if M is friendly] That, or stop bothering me and get your lazy ass back to work.'[otherwise].'[end if][roman type][line break]";
	otherwise if M is friendly:
		say "[speech style of M]'[one of]Ha ha, yes this is my realm - er, I mean hotel, and I'll fuck whoever I want, whenever I want!'[or][if the sex addiction of the player < 10]Wow, you're still hung up on that?  Must have felt pretty good.'[otherwise]Considering how much of a whore you are, what I did was more like theft...'[end if][at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Back for more, slut?'[or]Did remembering what happened earlier made you horny? Can[']t say I blame you, you obviously can[']t help being a tart.'[or]Horny again, are we? I[']ll help.'[or]Not satisfied with [the times-fucked of M] dickings? Ok, let[']s make it [the times-fucked of M + 1]!'[or]Ah! It[']s a good thing you showed up, I was watching you in my security cameras and thought, Man, I[']d like to bang that slut again.'[at random][roman type][line break]".

To say midDominanceResponse of (M - a mechanic):
	if M is unfriendly:
		say "[speech style of M]'[one of]If it's help you want, I know just what to do.'[or]I'm going to help. Oh yes indeed.'[or]What kind of guy would I be if I ignored a woman in distress?'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I'm sorry, I'm a bit busy at the moment. Have fun!'[or]Why would I do that?'[at random][roman type][line break]".
		
To say AsDominantResponse of (M - a mechanic):
	say "[speech style of M]'[one of]Haha! Take it!'[or]I know you love it!'[or]Yeah, take it slut!'[or]How does it feel to get pounded by an important man!'[or]Think of your resume after this. You fucked the hotel manager!'[or]Take it hard, bitch!'[at random][roman type][line break]".


Section 2 - Questioning

To say WhereAnswer of (M - a mechanic):
	say "[speech style of M]'You're in the best fetish hotel in all the lands. Enjoy your stay!'[roman type][line break]".

To say WhoAnswer of (M - a mechanic):
	say "[speech style of M]'[if the class of the player is virgin warrior][one of]You[']ll know who I am soon enough. Just you wait.'[or]You really don[']t know? I guess any idiot can become a warrior as long as they're a prude.'[or]Who am I? Like you don[']t already know.'[or]If you want to know who I am, you should give me a go at that cherry of yours first.'[or]I[']ll tell you who I am...if you let me pop that cherry of yours.'[at random][otherwise]I[']m the mechanic, I designed and made all those lovely robots you see wandering around. That[']s right, I[']m not just a pretty face!'[end if][roman type][line break]".
		
To say StoryAnswer of (M - a mechanic):
	say "[speech style of M]'[one of]I[']m an extra planar demon, cursed to forever walk this mortal plane as a shadow of my true self[if the player-class is not succubus]. Just kidding, I[']m just looking for a pay check more than anything[end if].'[or]Well, I love kinky sex and I love making robots, so when Nintendolls gave me this opportunity, how could I turn it down?'[or]I entered an internet sweepstakes to get my robot design featured in the kinkiest game of all time. Naturally, I blew all the other entrants out of the water, but just to make sure I won, I hacked into the design database and sabotaged all the other contestants. Nintendolls found out, but the company was so impressed they gave me a permanent job creating and maintaining every robot on this level.'[or]This will probably go over your head, but this is a virtual reality game. I[']m simply a programming construct meant to resemble an actual human man.'[as decreasingly likely outcomes][roman type][line break]".

To say EscapeAnswer of (M - a mechanic):
	if the class of the player is maid:
		say "[speech style of M]'[one of]You are not going anywhere. Get back to work.[or]A-ah! We[']ll discuss quitting time when it[']s actually quitting time, yeah?'[or]Leaving so soon? You[']ve barely done any work.'[or]I[']d tell you, but we[']re actually a bit understaffed at the moment. See, there[']s this maid who[']d rather engage in idle chitchat than do the work she[']s being paid for. I might fire her soon.'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Err, probably through the front door?'[or]Probably the same way you came in?'[at random][roman type][line break]".

To say AdviceAnswer of (M - a mechanic):
	if the player-class is not succubus:
		say "[speech style of M]'[one of]My laundry robots won't bother you if you crawl into the laundry room on your hands and knees[if the appearance of the player > 4]. Heh, perfect position for you, right?'[otherwise].'[end if][or]The hotel is full of cameras. Try not to look like an idiot, or you might end up with your picture plastered to a wall somewhere.'[or][if the player is male]The wrestler is into some really kinky shit. My advice is to leave her alone if you don't want to play her games.'[otherwise]Sluts tend to come through here often, so you[']ll probably find the wrestler good company. She[']s a bit more dominant than she lets on, though.'[end if][or]Your appearance can say a lot about you. For example, [if the lips of face > 1]big lips are a dead giveaway for sluts who'd love being deep-throated by my huge cock[otherwise if bukkake fetish is 1 and the make-up of face > 1]sluts who wear lots of makeup usually love a layer of jizz on top[otherwise if the player is exposed and the appearance of the player > 2]naked sluts usually love a nice deep ass-fucking[otherwise]that goth slut in the woods. Loves anal[end if].'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'Do I look like I have all day? I[']ve already got some agents in the forest, ask them.[roman type][line break]".

To compute annoyance of (M - a mechanic):
	if M is uninterested:
		say "The [M] doesn't seem to realize you are talking to [him of M].[line break]";
	otherwise if M is unfriendly:
		say "The [M] ignores your question. [line break][speech style of M]'Shut up, or I'll make you!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'You should probably stop asking me pointless questions and get on with your quest.'[roman type][line break]";

To compute teaching of (M - a mechanic):
	if diaper quest is 0:
		say "[speech style of M]'When girls like you get fucked too many times by guys like me, it starts to affect the way you hold yourself. Basically, if you[']re a [if the player is female]slut[otherwise]sissy[end if] your body language will broadcast it to everybody around you, and nobody[']s going to want to deal with the humiliation of knowing they got fucked by someone like you. But if you hold yourself like you have a massive dick, it[']ll do the opposite, [if the player is female]no matter how slutty you actually are[otherwise]no matter how pitiful the genuine article actually is[end if].'[roman type][line break]";
		teach fuckskill;
	otherwise:
		say "[speech style of M]'Hmm, maybe in a version of this game soon I'll have something to teach you.'[roman type][line break]";
	if the questioned of M <= 290:
		increase the questioned of M by 100;
	otherwise:
		increase the questioned of M by 50.

Section 3 - Drink Requesting

To compute friendly drink of (M - a mechanic):
	if M is interested:
		say "The [M]'s smile fades slightly. [line break][speech style of M]'Sorry, we're not allowed to give out free drinks, it is pretty much the only way we make money after all!'[roman type][line break]";
	otherwise:
		say "The [M] acts as if [he of M] didn't even hear you.".
	
To compute unfriendly drink of (M - a mechanic):
	say "[speech style of M]'Do you think you DESERVE a drink?  I don't.'[roman type][line break]";
	now M is interested;
	now the boredom of M is 0.

Definition: a mechanic (called M) is willing to give snacks:
	decide yes.

Part 5 - Trading

To decide which number is the bartering value of (T - a mystical amulet) for (M - a mechanic):
	decide on 99.

To compute (M - a mechanic) considering (T - a mystical amulet):
	say "[speech style of M]'Holy SHIT, where did you find that?? Of course I'll take that off your hands.'[roman type][line break]";
	now T is worn by the player;
	follow the mechanic claims amulet rule.


Mechanic ends here.

