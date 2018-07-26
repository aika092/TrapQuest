Mechanic by Monster begins here.

mechanic is a monster. mechanic is intelligent. mechanic is male.

Definition: mechanic (called M) is willing to urinate:
	decide yes.

Definition: mechanic (called M) is father material:
	decide yes.

Definition: mechanic (called M) is raunchy:
	decide yes.

Definition: mechanic (called M) is manly-wenchy:
	decide yes.

mechanic has a number called xavier-power. The xavier-power of mechanic is usually 0.[running counter of how much "demon juice" the mechanic has stored up. At five or more xavier-power he transforms]

mechanic has a number called power-stolen. The power-stolen of mechanic is usually 0.[essentially a flag that determines whether the mystical amulet was destroyed on the elder altar]

mechanic has a number called wrench-timer. The wrench-timer of mechanic is usually 0.

Understand "hotel" as mechanic.

To say ShortDesc of (M - mechanic):
	say "mechanic".

To say MediumDesc of (M - mechanic):
	say "hotel mechanic".

The text-shortcut of mechanic is "mc".

Figure of mechanic is the file "NPCs/Hotel/mechanic1.png".

To decide which figure-name is the monster-image of (M - mechanic):
	decide on figure of mechanic.

To say MonsterDesc of (M - mechanic):
	say "A tall, [if lady fetish is 0]good looking man wearing a denim vest that exposes his tattoos[otherwise]busty woman wearing a denim vest with nothing under it[end if]. A [if the intelligence of the player > 14]vanity[otherwise]utility[end if] belt of sorts is wrapped around [his of M] waist, equipped with all manner of strange gadgets and tools, [if full-lady fetish is 1]including several dildos covered in tiny sensors[otherwise]but you get the feeling they're meant to distract you from the faint outline of the [manly-penis] in [his of M] pants[end if]. [if the item described is aggressive and the wrench-timer of M <= 0]Clutched in [his of M] hand is an over-sized steel wrench, which is remarkably simple in comparison to some of the things on [his of M] belt.[otherwise if the wrench-timer of M <= 0]Peeking out of [his of M] front pocket is an over-sized steel wrench, which is remarkably simple in comparison to some of the things on [his of M] belt.[end if][if item described is retaining mystical amulet][big he of M] is wearing the mystical amulet around [his of M] neck, and there is a very strange glint in [his of M] eye. You can[']t shake the feeling that [he of M] is now incredibly powerful.[end if]";
	if diaper quest is 1:
		say "";
	otherwise if the bimbo of the player < 4 and the player is male:[Originally this was one big block, but it was impossible to debug so now it's separated.]
		if lady fetish is 1:
			say "[first custom style][one of]She's not just hot, she's got style too![or]She doesn't seem like my type.[or]I bet she's the one behind all the robots. Maybe she'll agree to turn them off if I give her a good dicking.'[or][big he of M] looks like the star in some cheap porn movie, but that's my favorite kind![in random order][roman type][line break]";	
		otherwise:
			say "[first custom style][one of]Where did he get those clothes? He looks awesome!'[or]Seems like a normal dude. I wonder how he managed to get this far?[or]He must be the one responsible for all the robots I[']ve been seeing. Maybe he knows a way to turn them off?'[or]He looks like the male star in a cheap porn movie, but it's probably better than walking around in a skirt![in random order][roman type][line break]";	
	otherwise if the bimbo of the player < 4:
		say "[first custom style][one of]There is obviously something wrong with [him of M]. Just look at those clothes.'[or]Typical. Even authority figures in this game have no choice but to dress like that.'[or][big he of M] might be another player, but, [he of M] doesn't look affected at all.'[in random order][roman type][line break]";
	otherwise if the bimbo of the player < 8 and the player is male:
		say "[first custom style][one of]Wrenches are so cool. I bet [he of M] could teach me a thing or two about them.'[or]I don[']t know why, but I can[']t stop staring at [his of M] [if full-lady fetish is 1]dildo collection[otherwise]crotch. [big he of M] must be stuffing it or something, heh[end if].'[or][big he of M]'s pretty good looking, I guess. Must be [his of M] clothes.'[in random order][roman type][line break]";
	otherwise if the bimbo of the player < 8:
		say "[first custom style][one of][big his of M] wrench is so big and hard. I could probably use it to protect myself from all the perverts around here!'[or][big he of M][']s pretty good looking. Obviously I[']d never give nintendolls the pleasure, but at least they know what to model for.'[or]I can[']t keep from looking at [his of M] crotch. Those fucking nintendolls must be messing with my head!'[in random order][roman type][line break]";	
	otherwise if the bimbo of the player < 12:
		say "[variable custom style][one of]I[']d play with [his of M] wrench! Wait...'[or][big he of M] looks really intelligent. Totallyfuckbuddy material, as long as [he of M] respects my boundaries!'[or]I can[']t stop myself from staring at [his of M] [if full-lady fetish is 1]crotch. I[']m not even that attracted to [him of M], but I just know [his of M] dick is really big[otherwise]belt. It's not really fair to have so many toys out in the open like that[end if]!'[in random order][roman type][line break]";
	otherwise if the bimbo of the player < 16:
		say "[second custom style][one of]I'd play with [his of M] wrench. All night if [he of M] let me...[or][big he of M][']s SO cute, but, I don[']t want to just get on my knees right away. I should cook [him of M] dinner first.'[or]I bet [he of M]'s the smart guy that made all those fun robots!'[in random order][roman type][line break]";
	otherwise:
		say "[second custom style][one of]I wanna give [him of M] a blowjob!'[or][big he of M] looks SO smart. I bet [he of M] knows what I[']m thinking. Teehee, it's naughty!'[or]I'd let [him of M] give my [if the player is male]fuckhole[otherwise]pussy[end if] a tune-up anytime!'[in random order][roman type][line break]".

To decide which number is the girth of (M - mechanic):
	decide on 4.

Definition: mechanic (called M) is willing to shag:
	if the sleep of M is 0 and the scared of M is 0 and the boredom of M < 120, decide yes;
	decide no.

Definition: mechanic (called M) is willing to let go:
	unless M is mating, decide no;
	decide yes.

To decide which number is the semen load of (M - mechanic):
	decide on 3 + the xavier-power of M.

To set up (M - mechanic):
	reset M;
	now the monstersetup of M is 1;
	now the difficulty of M is 12;
	now the health of M is the maxhealth of M.

This is the spawn initial mechanic rule:
	if mechanic is off-stage and demon lord is off-stage:
		if debugmode > 0, say "Summoning mechanic in hotel.";
		summon mechanic in the hotel.
The spawn initial mechanic rule is listed in the setting up hotel monsters rules.

To compute unique periodic effect of (M - mechanic):
	if the wrench-timer of M > 0:
		decrease the wrench-timer of M by seconds;
		if the wrench-timer of M <= 0 and M is in the location of the player:
			say "A tiny flying robot zips into the room, landing on [NameDesc of M]'s shoulder. [line break][speech style of M]'Finally!'[roman type][line break][big he of M] reaches into the robot's chest compartment and pulls out an oversized steel wrench. The robot zips off as [NameDesc of M] tests the heft of [his of M] new tool.";
			increase the xavier-power of M by 1.[To replace what he lost when you stole it. Doesn't transform him into xavier even if he's already over the threshold though]

To say PregGrowth of (M - mechanic):
	say "the mechanic's [child]".

To compute labour to (M - mechanic):
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

Definition: mechanic (called M) is human:
	decide yes.

To compute motion of (M - mechanic):
	let W be 0;
	let N be a random off-stage robochef;
	repeat with L running through leftovers in the location of M:
		if the leftover-type of L is 117 or the leftover-type of L is 118 or the leftover-type of L is 119:
			now W is 1;
	if W is 1 and the wrench-timer of M <= 0:[we know there's something there]
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
			if M is in the location of the player, say " [BigNameDesc of M] kneels down in front of the pile. [line break][speech style of M]'Wow, somebody actually broke your fucking flimsy ass.'[roman type][line break][big he of M] repairs and replaces the broken parts with inhuman speed and with moments a brand new [N] is standing right there in front of you.";
			otherwise say "You hear swearing followed by some loud clanging somewhere else in the hotel.";
		destroy O;
	otherwise:
		compute room leaving of M.

Part 1 - Perception

To decide which number is the bimbo tolerance of (M - mechanic):
	if diaper quest is 1, decide on 9;
	decide on 14.

To decide which number is the outrage tolerance of (M - mechanic):
	if diaper quest is 1, decide on 6;
	decide on 9.

To decide which number is the bab tolerance of (M - mechanic):
	decide on 15.

To decide which number is the cringe tolerance of (M - mechanic):
	decide on 10.

To say BecomesAggressive of (M - mechanic):
	say "[big he of M] [if diaper quest is 0]unzips [his of M] jeans[otherwise if the wrench-timer of M <= 0]grips his wrench menacingly[otherwise]cracks [his of M] fingers[end if][line break][speech style of M]'[one of]I guess I've reached my limit.'[or]I think it's time we take our relationship to the next level.'[or]It'd be a crime NOT to do this, really...'[in random order][roman type][line break]".

To compute perception of (M - mechanic):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if the player is soulless and the player-class is not succubus:
		say "[speech style of M]'Well look at you. Is there even anything in there anymore? Well don[']t worry, that makes you a perfect candidate for a new [']quest['].'[roman type][line break]";
		anger M;
	otherwise if the player-class is succubus and M is not retaining mystical amulet:
		say "[speech style of M]Have you found it yet, slave?'[roman type][line break]";
		calm M;
	otherwise if mystical amulet is worn:		
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
	otherwise if diaper quest is 1 and ((there is a worn currently at least partially visible diaper and M is not uniquely unfriendly) or M is aware that the player needs a change):
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
		say "[speech style of M]'You look like you're up for a fuck. Let's get it on.'[roman type][line break][if the sex addiction of the player < 12][variable custom style]Uh-oh...[roman type][line break][end if]";
		anger M;
	otherwise if M is babifying the player:
		say "[speech style of M]'You look like a stupid big baby!  Let me help you enjoy yourself...'[roman type][line break][if the bimbo of the player < 12][variable custom style]Uh-oh...[roman type][line break][end if]";
		anger M;
	otherwise if the player is prone and M is not retaining mystical amulet:
		say "[speech style of M]'Hey there, you look like you could use some help. Stay there for a moment, and let me give you this gift...'[roman type][line break]";
		anger M;
	otherwise if M is unfriendly:
		say "[speech style of M]'[if diaper quest is 0]You know what time it is, [slut][otherwise]I'm still angry with you. I dare you to fight me again[end if].'[roman type][line break]";
	otherwise if diaper quest is 0 and M is retaining mystical amulet and M is retaining a pink spraybottle:
		let S be a random pink spraybottle retained by M;
		now S is spray;
		say "[speech style of M]'Hey there. I guess it's time I returned this to you.'[roman type][line break][BigNameDesc of M] hands you another [ShortDesc of S].";
		now S is held by the player;
		now S is not retained by M;
		now M is not withholding S;
	otherwise if M is cringe disapproving:
		say "[speech style of M]'I know I'm technically staff, but there are limits to how ridiculous a person can look before I myself can't help but enjoy a play session with them...'[roman type][line break]";
		FavourDown M;
		if M is unfriendly, say BecomesAggressive of M;
	otherwise if M is outrage disapproving:
		say "[speech style of M]'[if diaper quest is 0][one of]Dayum girl, you're making it difficult for me to keep my hands off of the merchandise, you know? Unless you're one of those 'free use' fetishists... Maybe you want me to fuck you[or]Your appearance still screams 'free use', you know[stopping][otherwise]Wow, you look pretty hot, babe! But you know this is an ADULT BABY fetish hotel, right? You're supposed to look like a pathetic baby, not a glamour model[end if].'[roman type][line break]";
		FavourDown M;
		if M is unfriendly, say BecomesAggressive of M;
	otherwise:
		say "[speech style of M]'Hey there. [if M is retaining mystical amulet]Thanks again for the amulet.'[otherwise]Enjoying your stay?'[end if][roman type][line break]";
		calm M.

Part 2 - Misc Flavour

To compute kneeling reaction of (M - mechanic):
	say "[BigNameDesc of M] cracks a wide smile. [line break][speech style of M]'I'm glad we could come to an agreement.'[roman type][line break]";
	humiliate 75.

To compute delay of (M - mechanic):
	follow the mechanic unique punishment rules;
	unless the rule succeeded, say "[BigNameDesc of M] takes [his of M] time, relishing in the feeling of victory.".

To compute robot anger of (M - mechanic):
	if M is friendly or M is uninterested:
		say "[BigNameDesc of M] looks at you angrily. [line break][speech style of M]'Hey, [one of]don't damage my inventions!'[or]I've told you before, don't attack my robots!'[stopping][roman type][line break]";
		now M is interested;
		anger M;
		now the boredom of M is 0.

To say DiaperReaction of (M - mechanic):
	say "[BigNameDesc of M] laughs. [line break][speech style of M]'We get the most fucked up people in this hotel, don't we?'[roman type][line break]";
	if the humiliation of the player < 15000, say "[variable custom style][if the player is able to speak]'I don't want to have to wear diapers!  You've got to believe me!'[otherwise][big he of M] thinks I want to be seen like this![end if][roman type][line break]";
	otherwise say "You [if the humiliation of the player < 27000]look down at the ground[otherwise]nod[end if] in shame.".

Report slapping a robot:
	if mechanic is in the location of the player, compute robot anger of mechanic.

Report kneeing a robot:
	if mechanic is in the location of the player, compute robot anger of mechanic.

Report kicking a robot:
	if mechanic is in the location of the player, compute robot anger of mechanic.

Part 3 - Combat

Section 1 - Protect and Attack

To compute (M - mechanic) protecting against (X - a monster):
	if the player is monster stuck:
		if M is ally:
			say "[BigNameDesc of M] doesn't look like [he of M] wants to watch. [big he of M] turns to leave.";
			distract M;
		otherwise:
			say "[one of][or][BigNameDesc of M] seems to be enjoying watching you.[or][or][or][cycling]";
	otherwise if M is guardian:
		compute X receiving 2 damage from M;
	otherwise if X is not robot and M is ally:
		compute X receiving 2 damage from M;
	otherwise:
		say "[one of][BigNameDesc of M] watches you fight with mild interest.[or][or][or][or][cycling]".

To say AllyDamageFlav of (M - mechanic) on (X - a monster):
	say "[if X is robot][one of][line break][speech style of M]'Stupid thing must be malfunctioning...'[roman type][line break][or][stopping][end if][BigNameDesc of M] casually smacks the [X] with [his of M] [if the wrench-timer of M <= 0]wrench[otherwise]fist[end if].".

The latex punishment rule of mechanic is usually the no latex punishment rule.

The mechanic priority attack rules is a rulebook. The priority attack rules of mechanic is usually the mechanic priority attack rules.

This is the mechanic obtains amulet from ground rule:
	let A be mystical amulet;
	if A is in the location of mechanic:
		now A is worn by the player;
		follow the mechanic claims amulet rule;
		rule succeeds.
The mechanic obtains amulet from ground rule is listed in the mechanic priority attack rules.

The mechanic unique punishment rules is a rulebook. The unique punishment rule of mechanic is usually the mechanic unique punishment rules.
The mechanic diaper quest rules is a rulebook. The diaper quest rules of mechanic is usually the mechanic diaper quest rules.

This is the mechanic claims amulet rule:
	let A be mystical amulet;
	increase the xavier-power of mechanic by 4;
	if mechanic is in the location of the player and A is held:
		say "The [mechanic] rips the [A] from you.[line break][speech style of mechanic]'At last, it's mine!  It's all mine!'[roman type][line break]";
		now A is in holding pen;
		now mechanic is retaining A;
		let S be a random worn steel collar;
		if S is steel collar:
			say "With a snap of [his of mechanic] fingers, the steel collar unlatches itself and drops from your neck. ";
			now S is in the location of the player;
		if diaper quest is 0 and the times-dominated of mechanic is 0 and ((a random number between 1 and 2 is 1 and the player-class is not succubus) or the class of the player is priestess or there is a worn pure totem):[the mechanic will always transform if you are a demon, or if you've ever successfully stolen anything from him]
			say "[big he of mechanic] puts the amulet on, and you can feel pulses of powerful energy flowing throughout the room. [line break][speech style of mechanic]'I can feel the power running through my veins!  Yes, yes!  Haha!  I am back, baby!  Here, have a small reward for your troubles...'[roman type][line break]";
			compute xavier reward of mechanic;
			say "[BigNameDesc of mechanic] starts to wander off, completely ignoring you.";
			bore mechanic for 500 seconds;
		otherwise:
			say "[big he of mechanic] puts the amulet on, and you can feel pulses of powerful energy flowing throughout the room. [line break][speech style of mechanic]'I can feel the power running through my veins!  Yes, yes, this is it!  Behold, my true form, unleashed again upon this MORTAL PLANE!'[roman type][line break]";
			unseal xavier from mechanic;
		rule succeeds.
The mechanic claims amulet rule is listed last in the mechanic unique punishment rules.
The mechanic claims amulet rule is listed last in the mechanic diaper quest rules.

To compute xavier reward of (M - mechanic):
	let R be a random number from 1 to 6;
	let J be a random off-stage demon codpiece;
	let P be a random off-stage demon tail plug;
	if R is 1:
		say "[BigNameDesc of M] points at you with [his of M] hands, and lightning fires from [his of M] fingertips, enveloping your body. Instead of pain, though, you just feel your skin tingle gently. After a few moments, the lightning stops. You feel STRONG!";
		StrengthUp 4;
	otherwise if R is 2:
		say "[BigNameDesc of M] points at you with [his of M] hands, and lightning fires from [his of M] fingertips, enveloping your body. Instead of pain, though, you just feel your joints tingling, as if being massaged by a thousand tiny fingers. After a few moments, the lightning stops. You feel FLEXIBLE!";
		DexUp 4;
	otherwise if R is 3 and J is actually summonable and the player is male:
		say "[BigNameDesc of M] points at you with [his of M] hands, and lightning fires from [his of M] fingertips, enveloping your crotch. Light converges around your [ShortDesc of penis] and a [printed name of J] materializes around your waist! You feel dominant!";
		summon J;
		bless J;
		DelicateDown 2;
	otherwise if R is 4 and P is actually summonable:
		say "[BigNameDesc of M] points at you with [his of M] hands, and lightning fires from [his of M] fingertips, enveloping your body. It hurts, but somehow, you feel even more confident because of it! You feel your [asshole] being forced open as a [printed name of P], materializes inside you.";
		summon P;
		now the body soreness of the player is 10;
		if the delicateness of the player > 4:
			DelicateDown 5;
		otherwise:
			DelicateDown the delicateness of the player;
			SexAddictDown the 5 - delicateness of the player;
	otherwise:[Double chance of this]
		say "[BigNameDesc of M] points at you with [his of M] hands, and lightning fires from [his of M] fingertips, enveloping your body. Instead of pain, though, you just feel your skin tingle gently. After a few moments, the lightning stops. You feel more intelligent!";
		IntUp 4;

This is the mechanic strips princess rule:
	if the class of the player is princess:
		if there is a monster penetrating face or there is a monster penetrating breasts:
			rule succeeds; [Mechanic will wait until he has access to your chest]
		let D be a random worn royal attire clothing;
		let B be a random worn bra;
		say "[speech style of current-monster]'Let[']s see if you still want to play princess after I take you down a peg.'[roman type][line break][BigNameDesc of current-monster] rips off your [printed name of D], [if B is clothing]leaving you with only your [printed name of B] to cover your [BreastDesc][otherwise]leaving your [BreastDesc] bare and exposed[end if]. [big he of current-monster] unzips [his of current-monster] jeans.";
		destroy D;
		now the blue-balls of current-monster is 1;
		if watersports fetish is 1, now the chosen-orifice of current-monster is face;
		rule succeeds.
The mechanic strips princess rule is listed in the mechanic unique punishment rules.

This is the mechanic applies collar rule:
	let C be a random steel collar;
	if C is actually summonable and C is not in the location of the player and the class of the player is not living sex doll and the bimbo of the player <= 15 and the xavier-power of current-monster < 2 and the player is souled and the power-stolen of current-monster is 0:
		if there is a monster penetrating face, rule succeeds; [Mechanic waits silently for an opening]
		say "[speech style of current-monster]'Haha[if diaper quest is 1], you're my baby slave now[end if]!'[roman type][line break]CLUNK!  [BigNameDesc of current-monster] takes this opportunity to force [if C is in the location of the player or C is held]the[otherwise]a smooth, round[end if] steel collar around your neck and click it shut. The locking mechanism is completely internal, meaning it's impossible to remove. [line break][if the player is able to speak][variable custom style]'Hey, what the hell?'[line break][end if][speech style of current-monster]'This is my own special invention. It is completely impossible to take off without my knowledge, and when you get aroused, it will make sure you don't cool off until you orgasm.'[paragraph break]";
		summon C;
		say "[variable custom style][if the bimbo of the player < 10]Fuck, how did I get myself into this mess?[otherwise if the bimbo of the player < 15]I guess I should do whatever [he of current-monster] says...[otherwise]Oooh, this could be a fun game![end if][roman type][line break]";
		if diaper quest is 0, say "[BigNameDesc of current-monster] rubs [his of current-monster] chin. [line break][speech style of current-monster]'I have a... favour to ask. There's an amulet somewhere in this world, maybe you've encountered it already. Last I heard it was being guarded by a large monster. I want you to retrieve it for me. If you do that, I'll free you from the collar. I would get it myself, but why risk the journey when I could get adventurers like you to go on the quest for me?'[roman type][line break][variable custom style][if the bimbo of the player < 5]On the one hand, this is the first real quest I've been given all game. On the other hand, this guy is a bastard.[otherwise if the bimbo of the player < 10]Obviously this is just some ploy to get that monstrous beast in the dungeon to fuck me, but what other choice do I have?.[otherwise if the bimbo of the player < 15]If it's the only way to stop being [his of current-monster] slave...![otherwise]Playing with a monster, huh?  Sounds kinky![end if][roman type][line break][big he of current-monster] pauses once more. [line break][speech style of current-monster]'And while you're here, I think you're going to do a little something extra for me.'[roman type][line break][big he of current-monster] unzips [his of current-monster] jeans.";
		otherwise say "[BigNameDesc of current-monster] rubs [his of current-monster] chin. [line break][speech style of current-monster]'I have a... favour to ask. There's an amulet somewhere in this world, maybe you've encountered it already. Last I heard it was being guarded by a spooky monster. I want you to retrieve it for me. If you do that, I'll free you from the collar. I would get it myself, but why risk the journey when I could get adventurers like you to go on the quest for me?'[roman type][line break][variable custom style][if the bimbo of the player < 5]On the one hand, this is the first real quest I've been given all game. On the other hand, this guy is a bastard.[otherwise if the bimbo of the player < 10]Obviously this is just some ploy to get that monstrous beast in the dungeon to dominate me, but what other choice do I have?.[otherwise if the bimbo of the player < 15]If it's the only way to stop being [his of current-monster] slave...![otherwise]Playing with a monster, huh?  Sounds scary but fun![end if][roman type][line break][big he of current-monster] pauses once more. [line break][speech style of current-monster]'And while you're down there, I think I'm going to start training my newest baby slave.'[line break]";
		say "[variable custom style][if the bimbo of the player < 5]And [he of current-monster] isn[']t even satisfied having me doing [his of current-monster] dirty work for me.[otherwise if the bimbo of the player < 10]I guess I should have seen that coming.[otherwise if the bimbo of the player < 15]I saw that coming![otherwise]Oh yes PLEASE.[end if][roman type][line break]";
		rule succeeds.
The mechanic applies collar rule is listed last in the mechanic unique punishment rules.
The mechanic applies collar rule is listed last in the mechanic diaper quest rules.

This is the mechanic dark ritual rule:
	if the player is soulless and the player-class is not succubus:
		let M be current-monster;
		let L be a random off-stage demon horns;
		let K be a random off-stage soulstone;
		say "[BigNameDesc of M] seems to consider you for a second, then pulls out a swirling black and red gem. [line break][speech style of M]'You cannot imagine how difficult it was to come by this, you should be honoured to play host to one of my servants...'[roman type][line break]";
		say "You have no idea what the hell he[']s talking about, but before you can react [he of M] plunges the stone into your chest. Agony overflows your body, and you briefly black out. When you come to, he[']s still glancing down at you.[line break]";
		say "[speech style of M]'All better? Good. You serve me now. [unless mystical amulet is retained by M]You don[']t need to know the details, all you need to know is that you will have a place in my service for eternity if you can only recover the mystical amulet guarded by the minotaur in the dungeon. Fail, and of course your spirit will fall to oblivion forever...'[otherwise]This is really all a formality since I already have the amulet I need, but you[']ll need to get to collecting souls. Slack off and your soul will fall to oblivion forever. Hop to it slut!'[end if][roman type][line break]";
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

To set up sex length of (M - mechanic) in (F - a fuckhole):
	set up sex length (a random number between 2 and 3) of M in F.

To compute (M - mechanic) entering mouth:
	if there is a worn tiara and the blue-balls of M is 1 and watersports fetish is 1 and the latex-transformation of the player <= 4:
		say "[big he of M] cruelly grabs you by the hair, yanking you forward so your face is oriented straight at [his of M] crotch. [if the bimbo of the player < 13]You look on in [horror][otherwise]Your heart pumps with excitement[end if] as [he of M] begins urinating in your face.";
		FacePiss from M;
		now the blue-balls of M is 0;
	otherwise:
		say "[MouthPenetrationFlav of M]";
		now the sex-length of M is a random number between 2 and 3;
		now M is penetrating face.

To say NormalMouthPenetrationFlav of (M - mechanic):
	say "[one of][BigNameDesc of M] grabs you by the neck, squeezing painfully as [he of M] closes the gap between you and [his of M] crotch.[or][BigNameDesc of M] grabs a handful of your hair and wrenches your face into [his of M] crotch.[or][BigNameDesc of M] savagely pulls your hair, forcing your face right up against [his of M] pulsing erection.[or][BigNameDesc of M] seizes you by the hair, cruelly yanking your face right up to [his of M] crotch.[or][BigNameDesc of M] closes [his of M] fist around your ear and brutally yanks your head toward [his of M] crotch.[at random]";
	say "[one of]You blink back your tears as you obediently part your lips and allow [his of M] [DickDesc of M] to slide in.[or]You [if the oral sex addiction of the player < 4]snarl[otherwise if the oral sex addiction of the player > 6]can't help licking your [LipDesc][otherwise if the delicateness of the player > 5]stare at the floor[otherwise]look up at [him of M] hesitantly[end if] as you open your mouth and allow [his of M] [DickDesc of M] to slide right in.[or]You [if the delicateness of the player + the oral sex addiction of the player < 7]grunt defiantly[otherwise if the oral sex addiction of the player > 6]moan happily[otherwise]grunt noncommittally[end if] as [he of M] shoves [his of M] penis into your mouth.[or][if the oral sex addiction of the player < 4]You glare up at [him of M] as [he of M] forces [his of M] penis through your [LipDesc] and begins to thrust.[otherwise if the oral sex addiction of the player < 7]You shiver with a mixture of embarrassment and anticipation as [he of M] forces [his of M] penis though your [LipDesc] and begins to thrust.[otherwise]You part your [LipDesc], shivering with arousal and excitement as [his of M] penis slides into your mouth.[end if][at random]".

To say RingMouthPenetrationFlav of (M - mechanic):
	say "[one of][BigNameDesc of M] grabs you by the neck, squeezing painfully as [he of M] closes the gap between you and [his of M] crotch.[or][BigNameDesc of M] grabs a handful of your hair and wrenches your face into [his of M] crotch.[or][BigNameDesc of M] savagely pulls your hair, forcing your face right up against [his of M] pulsing erection.[or][BigNameDesc of M] seizes you by the hair, cruelly yanking your face right up to [his of M] crotch.[or][BigNameDesc of M] closes [his of M] fist around your ear and brutally yanks your head toward [his of M] crotch.[at random]";
	say "[one of]You gag involuntarily as [he of M] rams [his of M] [DickDesc of M] into your mouth and begins to thrust.[or]You [if the oral sex addiction of the player + the delicateness of the player < 10]struggle, but the ring in your mouth ensures [he of M] can shove [his of M] [DickDesc of M] into your mouth and thrust with impunity.[otherwise]do your best not to struggle, which [he of M] simply takes as an opportunity to shove [his of M] [DickDesc of M] into your mouth and thrust with impunity.[end if][or][if the oral sex addiction of the player < 6]Your eyes widen in surprise and indignation as [NameDesc of M] slides [his of M] [DickDesc of M] through your gag and into your mouth.[otherwise if the delicateness of the player > 3]You can do nothing but gag as [he of M] slides [his of M] penis through the ring and into your mouth.[otherwise]Your eyes widen with excitement as [NameDesc of M] slides [his of M] [DickDesc of M] through your gag and into your mouth.[end if][at random]".

To say SexDollMouthPenetrationFlav of (M - mechanic):
	say "[one of][BigNameDesc of M] grabs you by the neck, squeezing painfully as [he of M] closes the gap between you and [his of M] crotch.[or][BigNameDesc of M] grabs a handful of your hair and wrenches your face into [his of M] crotch.[or][BigNameDesc of M] savagely pulls your hair, forcing your face right up against [his of M] pulsing erection.[or][BigNameDesc of M] seizes you by the hair, cruelly yanking your face right up to [his of M] crotch.[or][BigNameDesc of M] closes [his of M] fist around your ear and brutally yanks your head toward [his of M] crotch.[at random]";
	say "[one of]You give [NameDesc of M] a dour look as [he of M] slides [his of M] penis through your [LipDesc][or]You can only stare up at [him of M] as [his of M] penis slides into padded hole you call a mouth.[or]Your [LipDesc] make faint squeaking noises as [he of M] slides [his of M] [DickDesc of M] into your mouth and begins to thrust.[or]You make [if the oral sex addiction of the player < 5]an annoyed noise[otherwise]a plaintive moan[end if] as [his of M] [DickDesc of M] enters your padded rubber mouth.[at random]".


To say StrikingSuccessFlav of (M - mechanic) on (B - a body part):
	say "[BigNameDesc of M] strikes you [TargetName of B] with [if the wrench-timer of M <= 0][his of M] wrench[otherwise][his of M] fist[end if]!  Ouch!!".

To say StrikingFailureFlav of (M - mechanic) on (B - a body part):
	say "[BigNameDesc of M] tries to whack you [TargetName of B] with [his of M] [if the wrench-timer of M <= 0]wrench[otherwise]fist[end if] but you manage to get out of the way just in time!".

To compute post climax effect of (M - mechanic) in (F - a fuckhole):
	if M is interested:
		compute happy reward of M;
		satisfy M;
	otherwise:
		bore M.

To decide if (M - mechanic) is losing wrapper in (F - vagina):
	if the class of the player is princess:[he hates princesses]
		if the player is a pussy slut and a random number between 1 and 2 is 1, decide no;
		decide yes;
	if the player is a pussy slut, decide no;
	if the class of the player is priestess, decide no;[he's weak to priestesses]
	if the class of the player is maid and a random number between 1 and 2 is 2, decide no;
	if a random number between 1 and 4 is 1, decide no;
	decide yes.

To decide if (M - mechanic) is losing wrapper in (F - asshole):
	if the class of the player is princess:
		if the class of the player is priestess and a random number between 1 and 2 is 1, decide no;
		decide yes;
	if a random number between 1 and 2 is 1:
		if the player is a butt slut, decide no;
		if the class of the player is priestess, decide no;
	decide yes.

To compute condom success of (M - mechanic) in (F - a fuckhole):
	say CondomPieFlav of M in F;
	compute M finishing in F;
	now M is unwrapped;
	if F is asshole, AssFill 1;
	otherwise PussyFill 1.

To say CondomFailFlav of (M - mechanic) in (F - a fuckhole):
	say "[BigNameDesc of M] suddenly pulls out, tearing off the condom before immediately slamming [his of M] [DickDesc of M] back in. [line break][speech style of M]'[one of]I[']m going to jizz inside you, bitch!'[or][if pregnancy fetish is 1 and M is penetrating vagina]Hope you[']re on the pill, bitch,[otherwise]Hope you like creampies, bitch,[end if] this load is going to be big!'[or]You[']re gonna take it all, bitch![or]That[']s right bitch, enjoy all my cum!'[at random][roman type][line break][if the semen addiction of the player < 7]You struggle as much as you can without setting [him of M] off immediately[otherwise if the semen addiction of the player < 12]You half-heartedly struggle to get away[otherwise]You playfully struggle to get away[end if], but [he of M] holds you down effortlessly, [one of]his [DickDesc of M] continuing to slam in and out as wave after wave of [semen] rushes into your now unprotected [variable F][or]continuing to thrust as [his of M] [DickDesc of M] plants [his of M] [semen] nice and deep inside your now unprotected [variable F][or]his [DickDesc of M] throbbing powerfully as it floods your unprotected [variable F] with [his of M] load, pushing it deeper with every thrust[at random]. By the time [he of M] finally pulls out and returns to [his of M] feet, both of you are certain [he of M] has coated every inch of your inner walls.".

To say CondomPieFlav of (M - mechanic) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] tightens [his of M] grip, pistoning fervently as the condom fills with warmth. [big his of M] groans die down as [he of M] loses speed, and when [he of M] pulls out you think it's over and try to crawl away, only to feel [his of M] [DickDesc of M] immediately slam back in protection-free, depositing a final few spurts of [semen] directly into your [variable F].[or][BigNameDesc of M] groans, tightening [his of M] grip as [his of M] [DickDesc of M] shoots jet after jet of fresh [semen] into the latex condom. [big he of M] pulls out, quickly peeling it off before sliding back in, sighing in satisfaction as [he of M] shoots a final wave of [semen] directly into your [variable F].[at random]".

To say CreampieFlav of (M - mechanic) in (F - a fuckhole):
	say "[one of][BigNameDesc of M] slams [his of M] [DickDesc of M] home, groaning with pleasure as [he of M] floods your [variable F] with [his of M] warm [semen]. [big he of M] gives you a healthy smack across the ass as [he of M] pulls out, climbing to [his of M] feet and wiping a bit of sweat from [his of M] brow.[or][BigNameDesc of M] jams [his of M] [DickDesc of M] in as far as it will go, reaching underneath you to play with your [ShortDesc of breasts] [he of M] fills your [variable F] with [his of M] load. [big he of M] roughly shoves you off [his of M] [DickDesc of M], sighing in satisfaction as [he of M] gets to [his of M] feet.[or][BigNameDesc of M] groans, tightening [his of M] grip as [his of M] [DickDesc of M] shoots jet after jet of fresh [semen] directly into your [variable F]. [big he of M] finishes himself off with a few short thrusts before pulling out and climbing to [his of M] feet.[at random]".

To compute happy reward of (M - mechanic):[reward for giving a pleasant blowjob]
	let H be a random off-stage maid headdress;
	if M is retaining a pink spraybottle:
		let S be a random pink spraybottle retained by M;
		now S is spray;
		say "[line break][speech style of M]'[one of]Good thing you[']re such a whore, you could have been out of a job. Value this chance.'[or]Now I remember why I hired you. You[']re fucking easy! Better stay easy if you[']re gonna be so fucking careless.'[or]Ah, I never get tired of fucking stupid whores. Don[']t lose this bottle though, I[']ll be pissed.'[at random][roman type][line break][BigNameDesc of M] hands you another [ShortDesc of S].";
		now S is held by the player;
		now S is not retained by M;
		now M is not withholding S;
	otherwise if the employee-record of senior robobellboy > 4 and the class of the player is hotel employment:
		let J be a random off-stage plentiful accessory;
		now J is emerald;
		say "[speech style of M]'Normally I don[']t pay whores on principle, but since you work for me and all...'[roman type][line break][BigNameDesc of M] hands you a [printed name of J].";
		now J is held by the player;
	otherwise if the employee-record of senior robobellboy > 2 and H is actually summonable:
		say "[speech style of M]'That was actually pretty nice. Plus, given what I[']ve heard about you...You[']re hired!'[roman type][line break][BigNameDesc of M] pulls out a [printed name of H] and fixes it on top of your head.";
		summon H;
	otherwise if the employee-record of senior robobellboy < -2:
		if the class of the player is hotel employment, say "[speech style of M]'To be honest, I don't get why you get such terrible reviews. After you[']ve done some more training, come back for another fuck.'[roman type][line break]";
		otherwise say "[speech style of M]'That was pretty good, but I don't trust interns. I still want you to do some proper training later on.'[roman type][line break]";
	otherwise:
		say "[speech style of M]'You[']re not an awful fuck as far as whores go. Don[']t expect me to pay you though.'[roman type][line break]".

Section 2 - DQ

Definition: mechanic (called M) is willing to spank:
	decide yes.

Definition: mechanic (called M) is willing to deliver enemas:
	decide yes.

Definition: mechanic (called M) is willing to confiscate:
	decide yes.

Definition: mechanic (called M) is diaper disciplining:
	decide yes.

Definition: mechanic (called M) is willing to change diapers:
	decide yes.

Definition: mechanic (called M) is willing to donate diapers:
	decide yes.

Section 3 - Damage

To compute damage of (M - mechanic):
	if the health of M > 0 or M is retaining mystical amulet:
		if M is uninterested:
			say "[big he of M] shouts angrily!";
			now M is interested;
			anger M;
		otherwise:
			if M is friendly:
				say "[BigNameDesc of M] looks surprised, but lowers [his of M] gaze and takes an offensive stance!";
				if the player-class is succubus:
					say "[speech style of M]'A betrayal eh? I will show you your place, slave'[roman type]";
				anger M;
			otherwise:
				let FLAV be 0;
				if the woman-status of woman-barbara is 91 and the mechanic-scene of woman-barbara <= 4 and woman-barbara is in the location of the player:
					say "[BigNameDesc of M] roars with frustration.[line break][speech style of M]'Fine, have it your way!'[roman type][line break][big he of M] pulls [his of M] [manly-penis] out of [NameDesc of woman-barbara][']s throat and turns to face you.";
					if the woman-bimbo of woman-barbara > 4:
						say "[BigNameDesc of woman-barbara] coos softly.[line break][speech style of woman-barbara]Aww, please put it back in, Master!'[roman type][line break]";
					otherwise:
						say "[BigNameDesc of woman-barbara] coughs a couple of times and then passes out. ";
						bore woman-barbara;
						now the sleep of woman-barbara is 300;
					say "It doesn't look like [he of woman-barbara][']s going to be much help...";
					now the mechanic-scene of woman-barbara is 6;
				otherwise if the health of M < the maxhealth of M / 3:
					if the xavier-power of M >= 4 or M is retaining mystical amulet:
						say "[BigNameDesc of M] [if M is retaining mystical amulet]grips the amulet[otherwise]clenches [his of M] fists[end if]. [line break][speech style of M]'Fine, have it your way!'[roman type][line break]";
						unseal xavier from M;
					if demon lord is in the location of the player:
						now demon lord is interested;
						anger demon lord;
						now FLAV is 1;
					otherwise if there is a worn steel collar:
						say "[BigNameDesc of M] roars with pain. [line break][speech style of M]'Fine, if I take the collar off, will you leave me alone?!'[roman type][line break]";
						let S be a random worn steel collar;
						if S is steel collar:
							say "With a snap of [his of M] fingers, the steel collar unlatches itself and drops from your neck.";
							now S is in the location of the player;
						now FLAV is 1;
				if FLAV is 0:[we didn't have anything special to say so we use the normal damagereaction function]
					say DamageReaction (the health of M) of M;
	otherwise:
		compute death of M.


To say DamageReactHealthy of (M - mechanic):
	say "[BigNameDesc of M] takes the hit, clearly not even taking you seriously.".

To say DamageReactDamaged of (M - mechanic):
	say "[BigNameDesc of M] sneers menacingly. [if the xavier-power of M >= 4][big his of M] eyes glow red[one of]. [line break][speech style of M]'You don't want to make me have to use my full power, trust me on this.'[roman type][line break][or].[stopping][otherwise][big he of M]'s still got a lot of fight left in him![end if]".

To say DamageReactTired of (M - mechanic):
	say "[BigNameDesc of M] grunts as [he of M] takes the hit.".

To say DamageReactWeak of (M - mechanic):
	say "[BigNameDesc of M] recoils in pain.".

To say DamageReactSubmissive of (M - mechanic):
	if M is retaining mystical amulet or the wrench-timer of M <= 0, say "[BigNameDesc of M] recoils in pain, seeming to be looking for somewhere to escape to.";
	otherwise say "[BigNameDesc of M] recoils in pain, looking especially wary of you.".

To compute unique death of (M - mechanic):
	let X be nothing;
	repeat with B running through off-stage cans:
		if the fill-type of B is 3:
			now X is B;
			now X is blessed;
			break;
	if the player-class is succubus:
		say "[speech style of M]'N-no, so.. close... Curse your... betrayal...'[roman type][line break]";
	if X is can:
		say "[BigNameDesc of M] silently slumps to the ground, dead. [big he of M] drops a [printed name of X]!  [line break][variable custom style]I bet that's useful...[roman type][line break]";
		now X is in the location of the player;
		compute autotaking X;
	otherwise:
		say "[BigNameDesc of M] silently slumps to the ground, dead.";
	if there is a worn steel collar:
		let S be a random worn steel collar;
		if S is steel collar:
			say "As [his of M] body hits the ground, the steel collar unlatches itself and drops from your neck.";
			now S is in the location of the player.

To loot (M - mechanic):
	let X be a random off-stage plentiful bracelet;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.

		
Part 4 - Conversation

To IdentifiablePosterReaction of (M - mechanic):
	say "[BigNameDesc of M] looks at you, then at the banner, then back to you. Upon realising that it is you, [he of M] puts [his of M] hands on [his of M] hips and laughs loudly.";
	say "You turn bright red with shame.";
	humiliate the lewdness of a random poster in the location of the player * 2.

To UnidentifiablePosterReaction of (M - mechanic):
	say "[BigNameDesc of M] looks at the banner with a big grin on [his of M] face. [big he of M] doesn't seem to realise it is you, but is clearly enjoying looking at it.";
	say "You turn slightly red but don't say a word.";
	humiliate the lewdness of a random poster in the location of the player / 2.

Section 1 - Greeting

To say FirstResponse of (M - mechanic):
	say "[speech style of M]'Hi there.'[roman type][line break]".

To say RepeatResponse of (M - mechanic):
	if the class of the player is maid:
		say "[speech style of M]'[one of]The patrons are looking forward to having you clean up in their rooms. Don[']t keep them waiting.'[or]Hey, aren[']t you the maid? Stop flirting and get back to work.'[or]I[']m not paying you to make conversation, maid. Granted I[']m not really paying you to [']clean['] either...'[or]Ugh, is this about the pay? The patrons will compensate you when you do your job. Better get going, they might give less if you keep them waiting.'[or]If you[']re here looking for instructions, you[']re in luck. Stop bothering me and get back to work. Clear anything up?'[at random][roman type][line break]";
	otherwise if the class of the player is hotel employment:
		say "[speech style of M]'[one of]I[']d really prefer it if you kept your flirting to the paying customers.'[or]Don[']t you have a knob you[']re supposed to be sitting on, somewhere? Ugh, why do I pay you?'[or]I[']m not paying you to make conversation. Get back to work.'[or]Ugh, is this about the pay? I swear, it's like you whores have never read a contract before.'[or][if the employee-record of senior robobellboy > 1]I hear you do good work, but I[']m not a whore, so I[']m not planning to give you a bonus for free, if you know what I mean[otherwise if the employee-record of senior robobellboy < -1]I hear you pissed off some of my customers. Clean up your act or it's going to come up on your next performance review[otherwise]If you have time to talk to me, you have time to suck dick. Go find a customer[end if].'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'Hi again.'[roman type][line break]".

To say UnfriendlyResponse of (M - mechanic):
	if the class of the player is hotel employment, say "[speech style of M]'[one of]In your contract, it said something about waxing hard poles. Get on your knees, I[']ll demonstrate what I mean.'[or]It's time you did some real work for a change, maid. Get on your knees.'[or]Do you feel like a fuck? Because if you value your job, you do.'[or]Hey maid. I[']m giving you a break from serving patrons. Get on your knees, because you[']re going to serve me instead.'[or]Guess what, your boss is horny, get on your knees.'[at random]";
	otherwise say "[speech style of M]'[one of]Shut up, or I'll make you.'[or]If you value your pretty face, you[']ll get on your knees. Hurry, before I lose my patience.'[or]Shut your mouth.'[or]If you keep running your mouth, I[']ll have to put something in it.'[at random][roman type][line break]".

To say DominantResponse of (M - mechanic):
	if the class of the player is hotel employment:
		say "[speech style of M]'[one of]There[']s a reason I keep sluts like you on my dime. Get on your knees.[or]I[']m not quite sure I[']ve paid you at all this month. You accept dick, right? Great, get on your knees.[or]Anything not to do your job, eh? Alright, get on your knees.[or]I think I[']ve heard this one. So horny that you can[']t focus on your job. I[']ll bite. Get on your knees.[at random][if M is friendly] That, or stop bothering me and get your lazy ass back to work.'[otherwise].'[end if][roman type][line break]";
	otherwise if M is friendly:
		say "[speech style of M]'[one of]Ha ha, yes this is my realm - er, I mean hotel, and I'll fuck whoever I want, whenever I want!'[or][if the sex addiction of the player < 10]Wow, you're still hung up on that?  Must have felt pretty good.'[otherwise]Considering how much of a whore you are, what I did was more like theft...'[end if][at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Back for more, slut?'[or]Did remembering what happened earlier made you horny? Can[']t say I blame you, you obviously can[']t help being a tart.'[or]Horny again, are we? I[']ll help.'[or]Not satisfied with [the times-fucked of M] dickings? Ok, let[']s make it [the times-fucked of M + 1]!'[or]Ah! It[']s a good thing you showed up, I was watching you in my security cameras and thought, Man, I[']d like to bang that slut again.'[at random][roman type][line break]".

To say midDominanceResponse of (M - mechanic):
	if M is unfriendly:
		say "[speech style of M]'[one of]If it's help you want, I know just what to do.'[or]I'm going to help. Oh yes indeed.'[or]What kind of guy would I be if I ignored a woman in distress?'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]I'm sorry, I'm a bit busy at the moment. Have fun!'[or]Why would I do that?'[at random][roman type][line break]".
		
To say AsDominantResponse of (M - mechanic):
	say "[speech style of M]'[one of]Haha! Take it!'[or]I know you love it!'[or]Yeah, take it slut!'[or]How does it feel to get pounded by an important man!'[or]Think of your resume after this. You fucked the hotel manager!'[or]Take it hard, bitch!'[at random][roman type][line break]".


Section 2 - Questioning

To say WhereAnswer of (M - mechanic):
	say "[speech style of M]'You're in the best fetish hotel in all the lands. Enjoy your stay!'[roman type][line break]".

To say WhoAnswer of (M - mechanic):
	say "[speech style of M]'[if the class of the player is virgin warrior][one of]You[']ll know who I am soon enough. Just you wait.'[or]You really don[']t know? I guess any idiot can become a warrior as long as they're a prude.'[or]Who am I? Like you don[']t already know.'[or]If you want to know who I am, you should give me a go at that cherry of yours first.'[or]I[']ll tell you who I am...if you let me pop that cherry of yours.'[at random][otherwise]I[']m the mechanic, I designed and made all those lovely robots you see wandering around. That[']s right, I[']m not just a pretty face!'[end if][roman type][line break]".
		
To say StoryAnswer of (M - mechanic):
	say "[speech style of M]'[one of]I[']m an extra planar demon, cursed to forever walk this mortal plane as a shadow of my true self[if the player-class is not succubus]. Just kidding, I[']m just looking for a pay check more than anything[end if].'[or]Well, I love kinky sex and I love making robots, so when Nintendolls gave me this opportunity, how could I turn it down?'[or]I entered an internet sweepstakes to get my robot design featured in the kinkiest game of all time. Naturally, I blew all the other entrants out of the water, but just to make sure I won, I hacked into the design database and sabotaged all the other contestants. Nintendolls found out, but the company was so impressed they gave me a permanent job creating and maintaining every robot on this level.'[or]This will probably go over your head, but this is a virtual reality game. I[']m simply a programming construct meant to resemble an actual human man.'[as decreasingly likely outcomes][roman type][line break]".

To say EscapeAnswer of (M - mechanic):
	if the class of the player is maid:
		say "[speech style of M]'[one of]You are not going anywhere. Get back to work.[or]A-ah! We[']ll discuss quitting time when it[']s actually quitting time, yeah?'[or]Leaving so soon? You[']ve barely done any work.'[or]I[']d tell you, but we[']re actually a bit understaffed at the moment. See, there[']s this maid who[']d rather engage in idle chitchat than do the work she[']s being paid for. I might fire her soon.'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Err, probably through the front door?'[or]Probably the same way you came in?'[at random][roman type][line break]".

To say AdviceAnswer of (M - mechanic):
	if the player-class is not succubus:
		say "[speech style of M]'[one of]My laundry robots won't bother you if you crawl into the laundry room on your hands and knees[if the appearance of the player > 4]. Heh, perfect position for you, right?'[otherwise].'[end if][or]The hotel is full of cameras. Try not to look like an idiot, or you might end up with your picture plastered to a wall somewhere.'[or][if the player is male]The wrestler is into some really kinky shit. My advice is to leave her alone if you don't want to play her games.'[otherwise]Sluts tend to come through here often, so you[']ll probably find the wrestler good company. She[']s a bit more dominant than she lets on, though.'[end if][or]Your appearance can say a lot about you. For example, [if the lips of face > 1]big lips are a dead giveaway for sluts who'd love being deep-throated by my huge cock[otherwise if bukkake fetish is 1 and the make-up of face > 1]sluts who wear lots of makeup usually love a layer of jizz on top[otherwise if the player is exposed and the appearance of the player > 2]naked sluts usually love a nice deep ass-fucking[otherwise]that goth slut in the woods. Loves anal[end if].'[in random order][roman type][line break]";
	otherwise:
		say "[speech style of M]'Do I look like I have all day? I[']ve already got some agents in the forest, ask them.[roman type][line break]".

To compute annoyance of (M - mechanic):
	if M is uninterested:
		say "[BigNameDesc of M] doesn't seem to realize you are talking to [him of M].[line break]";
	otherwise if M is unfriendly:
		say "[BigNameDesc of M] ignores your question. [line break][speech style of M]'Shut up, or I'll make you!'[roman type][line break]";
	otherwise:
		say "[speech style of M]'You should probably stop asking me pointless questions and get on with your quest.'[roman type][line break]";

To compute teaching of (M - mechanic):
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

To compute friendly drink of (M - mechanic):
	if M is interested:
		say "[BigNameDesc of M][']s smile fades slightly. [line break][speech style of M]'Sorry, we're not allowed to give out free drinks, it is pretty much the only way we make money after all!'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] acts as if [he of M] didn't even hear you.".
	
To compute unfriendly drink of (M - mechanic):
	say "[speech style of M]'Do you think you DESERVE a drink?  I don't.'[roman type][line break]";
	now M is interested;
	now the boredom of M is 0.

Definition: mechanic (called M) is willing to give snacks:
	decide yes.

Part 5 - Trading

To decide which number is the bartering value of (T - mystical amulet) for (M - mechanic):
	decide on 99.

To compute (M - mechanic) considering (T - mystical amulet):
	say "[speech style of M]'Holy SHIT, where did you find that?? Of course I'll take that off your hands.'[roman type][line break]";
	now T is worn by the player;
	follow the mechanic claims amulet rule.

Part 6 - Dominant Sex

[

If the player can steal the mechanic's wrench, the dominant sex scene is about when the mechanic is able to get it back. If the mechanic has the amulet, it's about that instead.

There are two ways to get the wrench:
Be really dominant, and stay in control the entire time, OR Be really submissive, and immediately lose control. The latter method won't work if you try to make him wear a condom or if what you stole was the amulet

Either way, when the mechanic's wrench is stolen, he no longer does wrench attacks for a while. Eventually he will have a robot bring him a replacement, but until then he can't repair the robots the player breaks, and more importantly, it makes it harder for him to transform into the demon lord

]

To decide which number is the submissiveness base of (M - mechanic):
	let X be the health of M;
	if M is retaining a mystical amulet:
		increase X by 7;[It's much harder to steal the amulet]
	decrease X by the times-fucked of M * 3;[Lure him into a false sense of security with sex]
	if the player is male, increase X by the anal sex addiction of the player * 2;
	otherwise increase X by the vaginal sex addiction of the player * 2;
	decide on X.


[The player steals the mechanic's wrench and/or amulet]
To say DominanceIntro of (M - mechanic):
	let J be mystical amulet;
	unless J is retained by M, now J is a random off-stage wrench;
	unless the wrench-timer of M <= 0, now J is throne;
	if J is clothing, say "You lunge for [NameDesc of M]'s [ShortDesc of J] and wrest it from [his of M] hand. [big he of M] looks from you to the wrench, and slowly drops to [his of M] knees, hands in the air. Nice. [PowerBottomComment of M] [NameDesc of M] nods, and gets on [his of M] back, keeping [his of M] hands up. You hold the [ShortDesc of J] away from [him of M] as you unzip [his of M] pants and roughly pull them off.";
	otherwise say "You lunge for [NameDesc of M] and yank down [his of M] pants. [big he of M] looks at you for a moment and slowly drops to [his of M] knees, hands in the air. Nice. [PowerBottomComment of M] [NameDesc of M] nods, and gets on [his of M] back, keeping [his of M] hands up. You smirk as you pull [his of M] jeans the rest of the way off.";
	if there is a held condom-providing thing:
		say "Would you like to have him wear a condom?";
		if the player consents:
			say CondomManualFlav of M;
			now M is wrapped;
	unless M is wrapped:
		say "You spit on [his of M] [DickDesc of M], making sure it's nice and lubed up for the main event.".

To compute unique dominance reward of (M - mechanic):
	compute power bottom reward of M.

To say PowerBottomComment of (M - mechanic):
	if the player is not able to speak:
		say "You gesture for [him of M] to lie down.";
	if the bimbo of the player < 6:
		if the player is male:
			say "[first custom style]'[one of]Lie down. And don't make it gay by moving around a lot.'[or]Lie down. And NO, there's nothing gay about this.'[or]It's your lucky day, you get to fuck me. Don't make it gay. Lie down.'[at random][roman type]";
		otherwise:
			say "[first custom style]'[one of]You understand then. Good. Lie down.'[or]Lie down. Now.'[or]Lie down and don't move a muscle.'[at random][roman type]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style][one of]Lie down and get nice and hard for me.'[or]Lie down. We're going to have sex.'[or]Lie down for me, alright?'[at random][roman type]";
	otherwise:
		say "[second custom style]'[one of]Lie down, baby. I'm going to take care of everything.'[or]Lie down. I'm dying to have you inside me.'[or]Don[']t worry baby, I[']ll do everything. Lie down for me.'[or]Lie down and don[']t worry about a thing. You[']re in [NameBimbo][']s hands now, honey.'[at random][roman type]";

To say DominanceFailure of (M - a mechanic):
	say DominanceIntro of M;
	now refactoryperiod is 1;[Ensures the player does not orgasm too early during the scene]	
	if the player is male, failure anal dominate M;
	otherwise failure vaginal dominate M;
	TimesFuckedUp M by 1;

To say DominanceSuccess of (M - mechanic):	
	say DominanceIntro of M;
	now refactoryperiod is 1;[Ensures the player does not orgasm too early during the scene]
	if the player is male, anal dominate M;
	otherwise vaginal dominate M.

To failure vaginal dominate (M - a mechanic):
	let J be mystical amulet;
	unless J is retained by M, now J is a random off-stage wrench;
	unless the wrench-timer of M <= 0, now J is throne;
	let V be (the vaginal sex addiction of the player * 2) + the raw sex addiction of the player - 2;[compensates for default value of 1 for anal sex addiction]
	let Ofit be the openness of vagina - the girth of M;
	now M is penetrating vagina;
	if V >= 14:[TODO: shorten]
		let oops be 0;
		say "You lick your lips in anticipation of how good it's going to feel to have [him of M] inside you, hungrily eyeing [his of M] [DickDesc of M] as you lower yourself into [his of M] lap. [BigNameDesc of M] immediately grabs you by the wrists, [if J is clothing]knocking the [ShortDesc of J] out of your hand as [he of M] easily wrestles[otherwise]and easily wrestles[end if] you over onto your back. [line break][speech style of M]'[one of]Now I[']m gonna fuck the shit out of you[or]Tough luck for you, bitch[or]Don[']t worry, bitch. I[']m about to fuck you real hard[at random]. Hang on...'[roman type][line break]";
		now the stance of the player is 1;
		if M is wrapped:
			say "[big he of M] peels the condom off [his of M] [DickDesc of M][if J is clothing], sliding it into your now totally unprotected [vagina]. [big he of M] pauses. [line break][speech style of M]'Am I forgetting something? OH RIGHT! Good thing I had to stop, huh?'[roman type][line break][BigNameDesc of M] snatches the wrench off the ground and stows it safely in the pocket of [his of M] discarded pants,[otherwise], sliding it into your now totally unprotected [vagina] and[end if] roughly smacking your [AssDesc] as [he of M] eagerly begins to thrust. ";
			now oops is 1;
			now M is unwrapped;
			slightHumiliate;
		otherwise if J is amulet:[if you want to steal the amulet, you need to do things the RIGHT way]
			say "[BigNameDesc of M] snatches the [Shortdesc of J] off the floor and puts it around [his of M] neck. [big he of M] seems invigorated, roughly [if Ofit < -1]forcing[otherwise]slamming[end if] [his of M] [DickDesc of M] into your [vagina] and eagerly beginning to thrust. ";
			now oops is 1;
		otherwise:
			say "[big he of M] grabs your cheeks, forcing you to [if face is actually occupied]look [him of M] directly in the eye as [he of M] spits in your face[otherwise if there is a worn ringagged clothing]look [him of M] directly in the eye as [he of M] spits in your mouth[otherwise]part your lips as [he of M] spits in your mouth[end if]. [if the delicateness of the player < 6]You seethe in rage and disgust[otherwise if the delicateness of the player < 12]You shiver in dull rage and disgust[otherwise]You don't dare look away[end if] as [he of M] [if Ofit < -1]eases[otherwise]slides[end if] [his of M] [DickDesc of M] into your [vagina] and eagerly begins to thrust. ";
		Ruin vagina times 4;
		say "[if Ofit < -1]Your thoughts are divided between the pain of taking a pounding from such a huge [DickDesc of M][otherwise]your thoughts are divided between how incredible it feels[end if], and how thoroughly embarrassing it is to have believed you were actually going to be in control. It's obvious now that there's only one natural position for you, and [NameDesc of M] emphasizes the [i]right[/i] way with every thrust. You find yourself getting more turned on with every moment [he of M] treats you like a piece of meat, and [if Ofit < -1]although it still hurts, [end if]you begin to moan as pleasure builds and builds. [big he of M] doesn't show any signs of stopping, and your lips form into a large, circular 'O' as [his of M] hard pounding brings you over the edge.";
		vaginally orgasm shamefully;
		say "[line break][BigNameDesc of M] doesn't let up at all, roughly smacking your ass as [he of M] erodes your inhibitions away with every thrust. You hold eye contact with [him of M], moaning shamelessly as [he of M] uses you as nothing but a [if Ofit < 2]tight[otherwise]warm[end if] sleeve for relieving [his of M] lust. Excitement wells up inside you as [his of M] [DickDesc of M] rapidly begins to spasm, and [he of M] jams [him of M]self in as far as [he of M] can go, groaning like the primal man [he of M] is as [he of M] pumps your [vagina] full of [if pregnancy fetish is 1]fertile [end if][semen]. [if face is not actually occupied][BigNameDesc of M] grabs you by the hair as [he of M] pulls out, forcing you up to your knees and holding your face level with [his of M] softening [DickDesc of M]. Do you clean it off?[end if]";
		PussyFill the semen load of M;
		orgasm M;
		strongHumiliate;[this is compounded with shameful orgasm humiliation]
		now M is not penetrating vagina;
		if face is not actually occupied and the player consents:
			say "[if the semen taste addiction of the player < 5]It's your job as the submissive, after all[otherwise]Anything is ok as long as you get to taste [his of M] load[end if]. You eagerly polish [his of M] [DickDesc of M], slurping off every last drop of leftover [semen], and then some, pulling off with a sharp *POP* and closing your eyes as [he of M] busts a second nut all over your face.";
			StomachSemenUp 1;
			CumFaceUp the semen load of M;
			moderateHumiliate;
			say AfterDominationComment 1 of M;["thanks for the bj, here's a reward!"]
		otherwise if face is actually occupied:
			compute sissification;
			say AfterDominationComment 2 of M;["Thanks for the sex, here's a reward!"]
		otherwise:
			say AfterDominationComment 3 of M;["Clean up your messes, or something. no reward!"]
			compute sissification;
		if oops is 0 and J is clothing:
			now J is in the location of the player;
			decrease the xavier-power of M by 1;
			now the wrench-timer of M is 400;[he doesn't know it's gone yet, so it takes longer than the real way of getting it]
	otherwise if V >= 8:
		say "You take a seat in [NameDesc of M]'s lap, watching [NameDesc of M] out of one eye as you [if Ofit < -1]ease[otherwise]slide[end if] [his of M] [DickDesc of M] into your hole. ";
		Ruin vagina times 3;
		say "[big he of M] stifles a grunt as you slowly begin to ride [him of M], and you allow your eyes to flutter closed as you savour the [if Ofit < -1]intense [end if]feeling of [his of M] [DickDesc of M] moving in and out of your [vagina]. It feels so good that you don't even notice [him of M] grabbing your wrists until it's too late, and after an embarrassingly brief struggle, [he of M] rolls on top of you and pins you on the ground.[line break][speech style of M]'[one of]Don[']t say I never let you have a turn.'[or]I hope that was fun, because now it[']s my turn.'[or]Looks like it's time for me to take over.'[at random][roman type][line break][BigNameDesc of M] barely [if J is clothing]gives you time to realize you no longer have the [ShortDesc of J][otherwise]leaves you time to gasp[end if] as [he of M] immediately begins to thrusts at twice your original pace. [if Ofit < -1][big he of M]'s painfully big, but it's[otherwise]It's[end if] impossible to not enjoy the feeling of [his of M] [DickDesc of M] persistently rubbing up against your g-spot, and pleasure rapidly builds as you [if player is ashamed]begin to moan[otherwise]desperately try not to moan[end if]. You screw your eyes shut in [if the player is not ashamed]reluctant anticipation of your impending climax, trying to convince yourself it felt just as good when you were[otherwise]anticipation of your impending climax, unable to ignore how much better it feels now that [he of M]'s[end if] doing the fucking.";
		strongHumiliate;
		now the stance of the player is 1;
		if M is wrapped:
			say "[big he of M] suddenly pulls out. [line break][speech style of M]'[one of]Do something about this.[or]Get rid of it.'[or]Fix this.'[or]Lose this.'[at random][roman type][line break] [big he of M] gestures at the condom covering [his of M] [DickDesc of M], and you rip it off without missing a beat. The consequences of your impulsive action only hits you as [he of M] slams [his of M] [DickDesc of M] back in completely bareback, which feels better with every single thrust.[line break][speech style of M]'[one of]There's no way I can avoid a creampie now...'[or]I can't believe I did that! [big he of M]'s going to cum inside me now!'[or][if pregnancy fetish is 1]Why did I do that? I could get pregnant!'[otherwise]All of [his of M] cum is going to be inside me...'[end if][at random][roman type][line break]Your eyes meet with [NameDesc of M]'s as the thought enters your head, and you immediately go over the edge.";
			now M is unwrapped;
			vaginally orgasm shamefully;[already humiliating, so we don't need to do it manually]
			say "[BigNameDesc of M] slams [him of M]self home, groaning with pleasure as [his of M] cock floods your [vagina] with [his of M] [if pregnancy fetish is 1]fertile[otherwise]hot[end if] [semen]. You feel [him of M] pushing it deep with every thrust, continuing long after the last aftershocks of [his of M] orgasm have ended just to get it as deep inside you as possible.";
		otherwise:
			say "[big he of M] suddenly pulls out. [line break][variable custom style]'[one of]W-what are you doing?'[or]W-why did you stop?'[at random][roman type][line break]You blurt out. [line break][speech style of M]'I WAS taking a break, but now I'm thinking I might not let you cum.'[roman type][line break][big he of M] sneers, leaving a couple moments for the [i]full[/i] consequences of your mistake to sink in before slamming [his of M] [DickDesc of M] back in. You try your best to cum, but it's no use. [BigNameDesc of M] slams [him of M]self home moments later, groaning as [he of M] floods your [vagina] with fresh, creamy [semen].";
			Arouse 2500;
			slightHumiliate;
		PussyFill the semen load of M;
		orgasm M;
		now M is not penetrating vagina;
		if face is not actually occupied,  say "[BigNameDesc of M] grabs you by the hair as [he of M] stands up, holding your face in front of [his of M] softening [DickDesc of M]. [if face is not actually occupied]Do you clean it off?[end if]";
		if face is not actually occupied and the player consents:
			say "[if the delicateness of the player < 5]You swallow your pride[otherwise]You know better than to refuse[end if] and obediently use your tongue to scoop the remaining bits of [semen] off [his of M] shaft. [big he of M] seems satisfied when you're done.";
			StomachSemenUp 1;
			moderateHumiliate;
			say AfterDominationComment 1 of M;["thanks for the bj, here's a reward!"]
		otherwise if face is actually occupied:
			compute sissification;
			say AfterDominationComment 2 of M;["Thanks for the sex, here's a reward!"]
		otherwise:
			say AfterDominationComment 3 of M;["Clean up your messes, or something. no reward!"]
			compute sissification;
	otherwise:
		say "You take a seat in [NameDesc of M]'s lap, watching [NameDesc of M] out of one eye as you [if Ofit < -1]ease[otherwise]slide[end if] [his of M] [DickDesc of M] into your hole. ";
		Ruin vagina times 2;
		say "[big he of M] stifles a grunt as you slowly begin to ride [him of M], and you allow your eyes to flutter closed as you savour the [if Ofit < -1]intense [end if]feeling of [his of M] [DickDesc of M] moving in and out of your [vagina]. You smack [his of M] hand away as [he of M] tries to [if J is clothing]sneak the [ShortDesc of J] out of your grip[otherwise]grab one of your wrists[end if], and you open your eyes just long enough to stare [him of M] down until [he of M] looks away. The sound of [NameDesc of M]'s breathing eggs you on as the pleasure builds, [if the sex addiction of the player < 7]panting quietly[otherwise]moaning to yourself[end if] as [his of M] tip persistently strokes your g-spot. Just as you begin to relax, [big he of M] grabs your wrists, and you struggle to shake off [his of M] grip and [if J is clothing]hold onto the [ShortDesc of J][otherwise]stay on top[end if] at the same time. After a short scuffle, you fail at both, and [NameDesc of M] pins your arms firmly behind your back. [line break][speech style of M]'That was almost really embarrassing for me.'[roman type][line break]";
		now the stance of the player is 1;
		if M is wrapped:
			say "[big he of M] pulls out, shrugging off your attempts to break out of [his of M] hold as [he of M] peels off [his of M] rubber with a sharp *SNAP.* Your eyes meet as [he of M] slides [his of M] [DickDesc of M] back into your [vagina], which feels incredible after going so long with the condom. [if the player is disgraced]You don't want to cum in such a shameful way[otherwise]You know it would be shameful to cum this way[end if], but there's nothing you can do as [NameDesc of M] slams [him of M]self home, sending you right over the edge as [he of M] pumps your [vagina] full of fresh, [if pregnancy fetish is 1]fertile[otherwise]sticky[end if] [semen].";
			now M is unwrapped;
			vaginally orgasm shamefully;
			say "[BigNameDesc of M] keeps thrusting long after the last aftershocks of [his of M] orgasm have ended, making sure all of [his of M] [semen] is planted as deep inside you as possible before pulling out.";
			PussyFill the semen load of M;
			orgasm M;
			now M is not penetrating vagina;
		otherwise:
			say "[big he of M] immediately begins to thrust, shrugging off your attempts to break out of [his of M] hold as [he of M] rapidly fucks you to the finish. Although you're close, the scuffle ruined your concentration, and you don't have time to catch up as [NameDesc of M] ejaculates in only a few thrusts, groaning primally as [he of M] fills your [vagina] with [his of M] big, creamy load.";
			PussyFill the semen load of M;
			orgasm M;
			now M is not penetrating vagina;
			Arouse 1000;
			slightHumiliate;
		if face is not actually occupied,  say "[BigNameDesc of M] grabs you by the hair as [he of M] stands up, holding your face in front of [his of M] softening [DickDesc of M]. [if face is not actually occupied]Do you clean it off?[end if]";
		if face is not actually occupied and the player consents:
			say "[if the vaginal sex addiction of the player < 5]You try to ignore the taste of your own pussy as you [otherwise]You revel in the taste of your own pussy as you [end if] wipe the leftover [semen] off [his of M] shaft with your tongue. [big he of M] seems satisfied when you're done.";
			StomachSemenUp 1;
			moderateHumiliate;
			say AfterDominationComment 1 of M;["thanks for the bj, here's a reward!"]
		otherwise if face is actually occupied:
			compute sissification;
			say AfterDominationComment 2 of M;["Thanks for the sex, here's a reward!"]
		otherwise:
			say AfterDominationComment 3 of M;["Clean up your messes, or something. no reward!"]
			compute sissification;
	Satisfy M.

To failure anal dominate (M - mechanic):
	let C be a random worn chastity cage;
	let J be mystical amulet;
	unless J is retained by M, now J is a random off-stage wrench;
	unless the wrench-timer of M <= 0, now J is throne;
	let V be (the anal sex addiction of the player * 2) + the raw sex addiction of the player - 2;[compensates for default value of 1 for anal sex addiction]
	let Ofit be the openness of asshole - the girth of M;
	now M is penetrating asshole;
	now the stance of the player is 1;
	if V >= 14:[The mechanic overpowers the player immediately. TODO: shorten]
		let oops be 0;
		say "You[if C is worn] giggle[otherwise]'re already hard[end if] in anticipation of how good it's going to feel to have [him of M] inside you, hungrily eyeing [his of M] [DickDesc of M] as you lower yourself into [his of M] lap. [BigNameDesc of M] immediately grabs you by the wrists, [if J is clothing]knocking the [ShortDesc of J] out of your hand as [he of M] easily wrestles[otherwise]and easily wrestles[end if] you over onto your back. [line break][speech style of M]'[one of]Now I[']m gonna fuck the shit out of you[or]Tough luck for you, bitch[or]Don[']t worry, bitch. I[']m about to fuck you real hard[at random]. Hang on...'[roman type][line break]";
		if M is wrapped:
			say "[big he of M] peels the condom off [his of M] [DickDesc of M][if J is clothing], sliding it into your now totally unprotected [asshole]. [big he of M] pauses. [line break][speech style of M]'Am I forgetting something? OH RIGHT! Good thing I had to stop, huh?'[roman type][line break][BigNameDesc of M] snatches the wrench off the ground and stows it safely in the pocket of [his of M] discarded pants,[otherwise]sliding it into your now totally unprotected [asshole] an[end if] roughly smacking your [AssDesc] as [he of M] eagerly begins to thrust. ";
			now oops is 1;
			now M is unwrapped;
			slightHumiliate;
		otherwise if J is amulet:[if you want to steal the amulet, you need to do things the RIGHT way]
			say "[BigNameDesc of M] snatches the [Shortdesc of J] off the floor and puts it around [his of M] neck. [big he of M] seems invigorated, roughly [if Ofit < -1]forcing[otherwise]slamming[end if] [his of M] [DickDesc of M] into your [asshole] and eagerly beginning to thrust. ";
			now oops is 1;
		otherwise:
			say "[big he of M] grabs your cheeks, forcing you to [if face is actually occupied]look [him of M] directly in the eye as [he of M] spits in your face[otherwise if there is a worn ringagged clothing]look [him of M] directly in the eye as [he of M] spits in your mouth[otherwise]part your lips as [he of M] spits in your mouth[end if]. [if the delicateness of the player < 6]You seethe in rage and disgust[otherwise if the delicateness of the player < 12]You shiver in dull rage and disgust[otherwise]You don't dare look away[end if] as [he of M] [if Ofit < -1]eases[otherwise]slides[end if] [his of M] [DickDesc of M] into your [asshole] and eagerly begins to thrust. ";
		Ruin asshole times 4;
		say "[if Ofit < -1]It's way too big, but the pain is overshadowed by the feeling of [his of M] tip ramming against your prostate[otherwise][big his of M] tip feels incredible ramming up against your prostate[end if], and [if C is worn]clear precum dribbles out of your cage as it jiggles[otherwise if the size of penis > 6]clear precum forms a squiggly line on your belly as your [ShortDesc of penis] jiggles[otherwise if the size of penis > 0]clear precum pools on your belly as your [ShortDesc of Penis] bobs[otherwise]waves of pleasure wash over you pant[end if] in time with [NameDesc of M]'s powerful thrusts. You [if the player is ashamed]eagerly moan[otherwise]moan involuntarily[end if] as [he of M] pounds away, shame rushing through you as you realize that not only did you instantly mess everything up, but it never would have felt this good if you were still in control. [line break][second custom style]'[if face is actually occupied]MMMGG MMMHHH!'[otherwise][one of]FUCK ME HARDER'[or]YEAH, FUCK ME!'[or]PLEASE FUCK ME HARDER!'[or]OOOH, FUCK ME!'[or]FUCKME FUCKME FUCKME!'[at random][end if][roman type][line break]";
		Ruin asshole times 4;
		anally orgasm shamefully;
		if the size of penis is 0 or refactoryperiod is 0:
			say "You don't ejaculate, but the look on [NameDesc of M]'s face tells you [he of M] definitely knows what happened as [he of M] continues relentlessly pounding away ";
		otherwise if C is worn:
			say "You moan uncontrollably as [semen] dribbles out of your cage, flowing down your balls and dripping onto [his of M] [DickDesc of M]. [BigNameDesc of M] relentlessly pounds away, the additional lubrication a reminder of 
			the shameful nature of your orgasm.";
			CumBellyUp the size of penis;
		otherwise if the size of penis < 4:
			say "You moan uncontrollably as [semen] dribbles out of your [manly-penis], forming a shameful white pool on your belly. [BigNameDesc of M] still has you by the wrists, so it sits there as [he of M] relentlessly pounds away, a sticky reminder of the shameful nature of your orgasm.";
			CumBellyUp the size of penis;
		otherwise if the size of penis < 8:
			say "You gasp sharply as long ropes of [semen] shoot out of your [manly-penis] in a short arc, splattering across your [ShortDesc of breasts]. [BigNameDesc of M] still has you by the wrists, so it sits there as [he of M] relentlessly pounds away, a sticky reminder of the shameful nature of your orgasm.";
			CumTitsUp the size of penis;
		otherwise:
			say "You shiver as long ropes of [semen] shoot out of your [manly-penis] in a huge arc, landing in your open mouth and partially glueing your eyes shut as they land on your face. [BigNameDesc of M] still has you by the wrists, so it sits there as [he of M] relentlessly pounds away, a sticky reminder of the shameful nature of your orgasm.";
			if bukkake fetish is 1:
				StomachSemenUp 1;
				CumFaceUp the size of penis;
			otherwise:
				StomachSemenUp the size of penis;
		say "[big he of M] doesn't let up on your prostate, [if refactoryperiod is 1 and the size of penis > 0]forcing out a few last droplets of [semen] as your inhibitions[otherwise]as [he of M] forces your inhibitions to[end if] erode away. You hold eye contact with [him of M], moaning shamelessly as [he of M] uses you as nothing but a [if Ofit < 2]tight[otherwise]warm[end if] sleeve for relieving [his of M] lust. Excitement wells up inside you as [his of M] [DickDesc of M] rapidly begins to spasm, and [he of M] jams [him of M]self in as far as [he of M] can go, groaning like the real, primal man [he of M] is as [he of M] pumps your [asshole] full of [semen]. [if face is not actually occupied][BigNameDesc of M] grabs you by the hair as [he of M] pulls out, forcing you up to your knees and holding your face level with [his of M] softening [DickDesc of M]. Do you clean it off? It was in your ass...";
		AssFill the semen load of M;
		orgasm M;
		strongHumiliate;[this is compounded with shameful orgasm humiliation]
		now M is not penetrating asshole;
		if face is not actually occupied and the player consents:
			say "[if the semen taste addiction of the player < 5]It doesn't matter where it was[otherwise]It doesn't matter where it was as long as you get to taste [his of M] load[end if]. You eagerly polish [his of M] [DickDesc of M], slurping off every last drop of leftover [semen], and then some, pulling off with a sharp *POP* and closing your eyes as [he of M] busts a second nut all over your face.";
			StomachSemenUp 1;
			CumFaceUp the semen load of M;
			orgasm M;
			strongHumiliate;[more humiliating than the female version since it was in your ass, and you specifically chose to do it]
			say AfterDominationComment 1 of M;["thanks for the bj, here's a reward!"]
		otherwise if face is actually occupied:
			compute sissification;
			say AfterDominationComment 2 of M;["Thanks for the sex, here's a reward!"]
		otherwise:
			say AfterDominationComment 3 of M;["Clean up your messes! No reward!"]
			compute sissification;
		if oops is 0:
			now J is in the location of the player;
			decrease the xavier-power of M by 1;
			now the wrench-timer of M is 400;[he doesn't know it's gone yet, so it takes longer than the real way of getting it]
	otherwise if V >= 8:[The mechanic sneaks the wrench away from you and then overpowers you.]
		say "You take a seat in [NameDesc of M]'s lap, watching [NameDesc of M] out of one eye as you [if Ofit < -1]ease[otherwise]slide[end if] [his of M] [DickDesc of M] into your hole. ";
		Ruin asshole times 3;
		say "[big he of M] stifles a grunt as you slowly begin to ride [him of M], and you allow your eyes to flutter closed as you savour the [if Ofit < -1]intense [end if]feeling of [his of M] [DickDesc of M] moving in and out of your [asshole]. It feels so good that you don't even notice [him of M] grabbing your wrists until it's too late, and after an embarrassingly brief struggle, [he of M] rolls on top of you and pins you on the ground.[line break][speech style of M]'[one of]Don[']t say I never let you have a turn.'[or]I hope that was fun, because now it[']s my turn.'[or]Looks like it's time for me to take over.'[at random][roman type][line break][BigNameDesc of M] barely [if J is clothing]gives you time to realize you no longer have the [ShortDesc of J][otherwise]leaves you time to gasp[end if] as [he of M] immediately begins to thrusts at twice your original pace. [if Ofit < -1][big he of M]'s painfully big, but its[otherwise]Its[end if] impossible to deal with the feeling of [his of M] [DickDesc of M] persistently rubbing up against your prostate, your [if C is worn]cage jiggling uselessly[otherwise if the size of penis >= 4][player-penis] flopping against your belly[otherwise if the size of penis > 0][player-penis] bobbing unimpressively[otherwise]nipples hardening[end if] as you [if player is ashamed]begin to moan[otherwise]desperately try not to moan[end if]. You screw your eyes shut in [if the player is not ashamed]reluctant anticipation of your impending climax, trying to convince yourself it felt just as good when you were[otherwise]anticipation of your impending climax, unable to ignore how much better it feels now that [he of M]'s[end if] doing the fucking.";
		strongHumiliate;
		if M is wrapped:
			say "[big he of M] suddenly pulls out. [line break][speech style of M]'[one of]Do something about this.[or]Get rid of it.'[or]Fix this.'[or]Lose this.'[at random][roman type][line break] [big he of M] gestures at the condom covering [his of M] [DickDesc of M], and you rip it off without missing a beat. The consequences of your impulse action only hit you as [he of M] slams [his of M] [DickDesc of M] back in completely bareback, which feels more incredible with every thrust. Your prostate can't take the punishment for long, and your mouth hangs open in an incredibly submissive 'O' shape as you go over the edge.";
			now M is unwrapped;
			anally orgasm shamefully;[already humiliating, so we don't need to do it manually]
			if the size of penis is 0 or refactoryperiod is 0:
				say "You don't ejaculate, but [NameDesc of M] doesn't seem to notice, groaning primally as as [he of M] floods your [asshole] with [his of M] thick, creamy [semen]. [big he of M] pushes it deeper with every thrust, planting it nice and deep inside you before slowly pulling out.";
			otherwise if C is worn:
				say "You moan uncontrollably as [semen] dribbles out of your cage, flowing down your balls and dripping onto [his of M] [DickDesc of M]. [BigNameDesc of M] doesn't seem to notice the extra lubrication, groaning primally as as [he of M] floods your [asshole] with [his of M] thick, creamy load. [big he of M] pushes it deeper with every thrust, planting it nice and deep inside you before slowly pulling out.";
				CumBellyUp the size of penis;
			otherwise if the size of penis < 4:
				say "You moan uncontrollably as [semen] dribbles out of your [manly-penis], forming a shameful white pool on your belly. It sits there, a sticky reminder of the shameful nature of [i]your[/i] orgasm as [NameDesc of M] tightens [his of M] grip, groaning primally as [his of M] [DickDesc of M] floods your [asshole] with [his of M] thick, creamy load. [big he of M] pushes it deeper with every thrust, planting it nice and deep inside you before slowly pulling out.";
				CumBellyUp the size of penis;
			otherwise if the size of penis < 8:
				say "You gasp sharply as long ropes of [semen] shoot out of your [manly-penis] in a short arc, splattering [if the largeness of breasts > 5]between[otherwise]across[end if] your [ShortDesc of breasts]. It sits there, a sticky reminder of the shameful nature of [i]your[/i] orgasm as [NameDesc of M] tightens [his of M] grip, groaning primally as [his of M] [DickDesc of M] floods your [asshole] with [his of M] thick, creamy load. [big he of M] pushes it deeper with every thrust, planting it nice and deep inside you before slowly pulling out.";
				CumTitsUp the size of penis;
			otherwise:
				say "You shiver as long ropes of [semen] shoot out of your [manly-penis] in a huge arc, landing in your open mouth and partially glueing your eyes shut as they land on your face. It sits on you there, a sticky reminder of the shameful nature of [i]your[/i] orgasm as [NameDesc of M] tightens [his of M] grip, groaning primally as [his of M] [DickDesc of M] floods your [asshole] with [his of M] thick, creamy load. [big he of M] pushes it deeper with every thrust, planting it nice and deep inside you before slowly pulling out.";
				if bukkake fetish is 1:
					StomachSemenUp 1;
					CumFaceUp the size of penis;
				otherwise:
					StomachSemenUp the size of penis;
		otherwise:
			say "[big he of M] suddenly pulls out. [line break][variable custom style]'[one of]W-what are you doing?'[or]W-why did you stop?'[at random][roman type][line break]You blurt out. [line break][speech style of M]'I WAS taking a break, but now I'm thinking I might not let you cum.'[roman type][line break][big he of M] sneered, leaving a couple moments for the [i]full[/i] consequences of your mistake sink in before slamming [his of M] [DickDesc of M] back in. You try your best to cum, but it's no use. [BigNameDesc of M] slams [him of M]self home moments later, groaning as [he of M] floods your [asshole] with [his of M] hot [semen].";
			Arouse 3000;
			slightHumiliate;
		Assfill the semen load of M;
		orgasm M;
		now M is not penetrating asshole;
		if face is not actually occupied,  say "[BigNameDesc of M] grabs you by the hair as [he of M] stands up, holding your face in front of [his of M] softening [DickDesc of M]. [if face is not actually occupied]Do you clean it off? It was in your ass...[end if]";
		if face is not actually occupied and the player consents:
			say "You know it was just in your ass, but [if the delicateness of the player < 5]you can't help agreeing with the tiny voice in the back of your mind that says you deserve this[otherwise]you know better than to refuse[end if] and obediently use your tongue to scoop the remaining bits of [semen] off [his of M] shaft. [big he of M] seems satisfied when you're done.";
			StomachSemenUp 1;
			strongHumiliate;
			say AfterDominationComment 1 of M;["thanks for the bj, here's a reward!"]
		otherwise if face is actually occupied:
			compute sissification;
			say AfterDominationComment 2 of M;["Thanks for the sex, here's a reward!"]
		otherwise:
			say AfterDominationComment 3 of M;["Clean up your messes, or something. no reward!"]
			compute sissification;
	otherwise:[The mechanic tries to sneak the wrench from player but fails. He overpowers player at the last moment.]
		say "You take a seat in [NameDesc of M]'s lap, watching [NameDesc of M] out of one eye as you [if Ofit < -1]ease[otherwise]slide[end if] [his of M] [DickDesc of M] into your hole. ";
		Ruin asshole times 2;
		say "[big he of M] stifles a grunt as you slowly begin to ride [him of M], and you allow your eyes to flutter closed as you savour the [if Ofit < -1]intense [end if]feeling of [his of M] [DickDesc of M] moving in and out of your [asshole]. You smack [his of M] hand away as [he of M] tries to [if J is clothing]sneak the [ShortDesc of J] out of your grip[otherwise]grab one of your wrists[end if], and you open your eyes just long enough to stare [him of M] down until [he of M] looks away. The sound of [NameDesc of M]'s breathing eggs you on as the pleasure builds, [if the sex addiction of the player < 7]panting quietly[otherwise]moaning to yourself[end if] as [his of M] tip repeatedly hits your prostate. Just as you begin to relax, [big he of M] grabs your wrists, and you struggle to shake off [his of M] grip and [if J is clothing]hold onto the [ShortDesc of J][otherwise]stay on top[end if] at the same time. After a short scuffle, you fail at both, and [NameDesc of M] pins your arms firmly behind your back. [line break][speech style of M]'That was almost really embarrassing for me.'[roman type][line break]";
		now the stance of the player is 1;
		if M is wrapped:
			say "[big he of M] pulls out, shrugging off your attempts to break out of [his of M] hold as [he of M] peels off [his of M] rubber with a sharp *SNAP.* Your eyes meet as [he of M] slides [his of M] [DickDesc of M] back into your [asshole], which feels incredibly after going so long with the condom. [if the player is disgraced]You don't want to cum in such a shameful way[otherwise]You know it would be shameful to cum this way[end if], but there's nothing you can do as [NameDesc of M] slams [him of M]self home, sending you right over the edge as [he of M] pumps your [asshole] full of thick, sticky [semen].";
			now M is unwrapped;
			anally orgasm shamefully;[we have to handle the flavor since player-fucking is true]
			if the size of penis is 0 or refactoryperiod is 0:
				say "[line break][BigNameDesc of M] keeps thrusting long after the last aftershocks of [his of M] orgasm have ended, planting all [his of M] [semen] nice and deep inside you before pulling out.";
			otherwise if C is worn:
				say "[line break]You moan uncontrollably as your own load dribbles out of your cage, flowing down your balls and dripping onto [his of M] [DickDesc of M]. [BigNameDesc of M] seems to appreciate the additional lubrication, continuing to thrust long after the last aftershocks of [his of M] orgasm have ended, planting both yours and [his of M] [semen] nice and deep inside you before pulling out.";
				CumBellyUp the size of penis;
			otherwise if the size of penis < 4:
				say "[line break]You moan uncontrollably as your own load dribbles out of your [manly-penis], forming a shameful white pool on your belly. It sits there, a sticky reminder of the shameful nature of your orgasm as [NameDesc of M] continues to thrust, planting [his of M] [semen] nice and deep inside you before pulling out.";
				CumBellyUp the size of penis;
			otherwise if the size of penis < 8:
				say "[line break]You gasp sharply as long ropes of [semen] shoot out of your [manly-penis] in a short arc, splattering [if the largeness of breasts > 5]between[otherwise]across[end if] your [ShortDesc of breasts]. It sits there, a sticky reminder of the shameful nature of your orgasm as [NameDesc of M] continues to thrust, planting [his of M] [semen] nice and deep inside you before pulling out.";
				CumTitsUp the size of penis;
			otherwise:
				say "[line break]You shiver as long ropes of [semen] shoot out of your [manly-penis] in a huge arc, landing in your open mouth and partially gluing your eyes shut as they land on your face. It sits on your there, a sticky reminder of the shameful nature of [i]your[/i] orgasm as [NameDesc of M] continues to thrust, planting [his of M] [semen] nice and deep inside you before pulling out.";
				if bukkake fetish is 1:
					StomachSemenUp 1;
					CumFaceUp the size of penis;
				otherwise:
					StomachSemenUp the size of penis;
			Assfill the semen load of M;
			orgasm M;
			now M is not penetrating asshole;
		otherwise:
			say "[big he of M] immediately begins to thrust, shrugging off your attempts to break out of [his of M] hold as [he of M] rapidly fucks you to the finish. Although you're close, the scuffle ruined your concentration, and you don't have time to catch up as [NameDesc of M] ejaculates in only a few thrusts, groaning primally as [he of M] fills your [asshole] with [his of M] big, creamy load.";
			Assfill the semen load of M;
			orgasm M;
			now M is not penetrating asshole;
			Arouse 3000;
			slightHumiliate;
		if face is not actually occupied,  say "[BigNameDesc of M] grabs you by the hair as [he of M] stands up, holding your face in front of [his of M] softening [DickDesc of M]. [if face is not actually occupied]Do you clean it off? It was in your ass...[end if]";
		if face is not actually occupied and the player consents:
			say "[if the anal sex addiction of the player < 5]You try to ignore the taste of your own hole as you [otherwise]You revel in the taste of your own hole as you [end if] wipe the leftover [semen] off [his of M] shaft with your tongue. [big he of M] seems satisfied when you're done.";
			StomachSemenUp 1;
			strongHumiliate;
			say AfterDominationComment 1 of M;["thanks for the bj, here's a reward!"]
		otherwise if face is actually occupied:
			compute sissification;
			say AfterDominationComment 2 of M;["Thanks for the sex, here's a reward!"]
		otherwise:
			say AfterDominationComment 3 of M;["Clean up your messes, or something. no reward!"]
			compute sissification;
	Satisfy M.

To vaginal dominate (M - mechanic):[TODO: handle lack of item to steal]
	let J be mystical amulet;
	unless J is retained by M, now J is a random off-stage wrench;
	if the wrench-timer of M > 0, now J is the throne;
	let Ofit be the openness of vagina - the girth of M;
	now M is penetrating vagina;
	say "You take a seat in [NameDesc of M]'s lap, watching [NameDesc of M] out of one eye as you [if Ofit < -1]ease[otherwise]slide[end if] [his of M] [DickDesc of M] into your hole. ";
	Ruin vagina;
	say "[if Ofit < -1][big he of M]'s too big, but you feel bolder as [he of M] stifles a groan, and slowly begin to ride [him of M] at a manageable pace[otherwise]You smirk as [he of M] stifles a groan, and lazily begin to ride [him of M] at a slow pace[end if]. It feels good, and you allow your eyes to flutter closed as you savor the feeling of [his of M] moving in and out of your [vagina]. [BigNameDesc of M] breathes slowly, and [he of M] shifts slightly underneath you as [he of M] begins to thrust in time with the movement of your hips. You open your eyes just in time to see [him of M] [if J is clothing]sneaking [his of M] hand toward the [ShortDesc of J], and move it far out of [his of M] reach[otherwise]trying to grab your wrists, and promptly mack them away[end if]. The two of you stare each other down for a moment before [he of M] looks away, and you continue moving your hips, just a bit faster than before. You're not sure what feels better, [his of M] [DickDesc of M] or putting [him of M] in [his of M] place. You decide on the former, [if the sex addiction of the player < 7]panting quietly[otherwise]moaning to yourself[end if] as [his of M] tip strokes your g-spot, bouncing harder and harder as the pleasure builds. [big he of M] compensates with enthusiasm of [his of M] own, panting in an off rhythm with your [if the sex addiction of the player < 7]growing moans[otherwise]increasingly throaty moans[end if] as your eyes once again fall shut, and your jaw goes slack with pleasure as you close in on your peak.";
	say "[big he of M] stifles a grunt as you slowly begin to ride [him of M], and you allow your eyes to flutter closed as you savour the [if Ofit < -1]intense [end if] feeling of [his of M] [DickDesc of M]. You smack [his of M] hand away as [he of M] tries to [if J is clothing]sneak the [ShortDesc of J] out of your grip[otherwise]grab one of your wrists[end if], and you open your eyes just long enough to stare [him of M] down until [he of M] looks away. The sound of [NameDesc of M]'s breathing eggs you on as the pleasure builds, [if the sex addiction of the player < 7]panting quietly[otherwise]moaning to yourself[end if] as [he of M] begins to thrust in time with the movement of your hips, stimulating your g-spot with maddening accuracy. You pant in an off rhythm with each other as [his of M] [DickDesc of M] begins to throb, and your nipples harden in anticipation of your impending orgasm. [run paragraph on]";
	let S be a random number between the strength of the player and the difficulty of M  * -1;
	if J is mystical amulet, decrease S by 10;
	increase S by the soreness of vagina * 2;
	if M is wrapped:
		decrease S by 7;
		say "[BigNameDesc of M] grabs your wrists just before go over the edge, both of you gasping with pleasure as the struggle pushes [him of M] into you at a sudden angle. [if S > 0][big he of M] loosens [his of M] grip as [his of M] [DickDesc of M] spasms inside you, and you force [him of M] to let go of you as the condom fills with [his of M] load. You aren't far behind [him of M], and you groan with pleasure as orgasm crashes heavily through your body[otherwise]You lose your grip on the [ShortDesc of J] as you cum, and [he of M] roughly pins your arms behind your back as orgasm crashes through your body. [big he of M] isn't far behind, and [he of M] emits a primal groan as the condom floods with warmth[end if].";
		Dignify 300;
		orgasm;
	otherwise:
		increase S by 4;
		if the player is not very horny and (the soreness of vagina < a random number between Ofit and 7) and (the semen addiction of the player < a random number between 5 and 12) and the class of the player is not faerie and S > -5:
			if S > 0:
				say "You pull off [NameDesc of M] just before you cum, avoiding a creampie. [BigNameDesc of M] seems [if J is clothing]disappointed, but you're pretty sure [he of M]'s still focused on the [ShortDesc of J][otherwise]pretty pissed off[end if].";
				if J is throne, FavourDown M;
			otherwise:
				say "[BigNameDesc of M] grabs your wrists just before go over the edge, both of you gasping with pleasure as the struggle pushes [him of M] into you at a sudden angle. The [ShortDesc of J] falls out of your hand as [he of M] pins your arms behind your back, and [his of M] [DickDesc of M] slips out of you as [he of M] ejaculates, painting your belly and thighs with [his of M] thick load.";
				let N be the semen load of M - a random number between 1 and 2;
				CumBellyUp N;
				CumThighsUp (the semen load of M - N);
			Arouse 1500;
		otherwise:
			say "[BigNameDesc of M] grabs your wrists just before go over the edge, both of you gasping with pleasure as the struggle pushes [him of M] into you at a sudden angle. [if S > 0][big he of M] groans, loosening [his of M] grip as [he of M] floods your [vagina] with [semen]. You finish at the same time, little fireworks going off behind your eyes as orgasm crashes heavily through your body[otherwise]You go over the edge as [he of M] forces your arms together behind your back, and you drop the [ShortDesc of J] as orgasm rocks your body. [big he of M] finishes right after you do, groaning primally as [he of M] floods your [vagina] with [his of M] [semen][end if].";
			orgasm;
			PussyFill the semen load of M;
	orgasm M;
	now M is not penetrating vagina;
	if S > 0:
		say "You leave [NameDesc of M] on the ground as you get to your feet, [ShortDesc of J] firmly held in your hand.";
		now J is held by the player;
	otherwise:
		let D be a random number between the difficulty of M * -1 and the dexterity of the player;
		if J is mystical amulet, decrease D by 7;
		if M is wrapped, decrease D by 6;
		say "[line break]Your eyes meet as you both pant with exhaustion, and you turn toward the [ShortDesc of J] at the same time.";
		if D > 0:
			say "You slip out of [NameDesc of M]'s grip, snatching the [ShortDesc of J] off the ground as you jump to your feet!";
			now J is held by the player;
		otherwise:
			say "You slip out of [NameDesc of M]'s grip, but it's too late! [big he of M] snatches the [ShortDesc of J] and shoves you off [him of M] before you can steal it back.";
	if J is throne:
		if S > 0 and M is not wrapped:
			say "You get to your feet with an overwhelming feeling of confidence bubbling up from your core.";
			Dignify 500;[bigger since you didn't get a prize]
		otherwise:
			Ruin vagina;
			FatigueUp 50;
			say "You wince a bit as you slip out of [his of M] grip, getting to your feet with a strong feeling of confidence bubbling up from your core.";
			Dignify 300;
	otherwise if S > 0:
		say "You get to your feet, confident in your new [ShortDesc of J].";
		now J is held by the player;
		Dignify 150;[smaller since you got a prize]
	otherwise:
		let D be a random number between the difficulty of M * -1 and the dexterity of the player;
		if J is mystical amulet, decrease D by 7;
		if M is wrapped, decrease D by 6;
		say "[line break]Your eyes meet as both of you pant with exhaustion, and you turn toward the [ShortDesc of J] at the same time.";
		if D > 0:
			say "You slip out of [NameDesc of M]'s grip, snatching the [ShortDesc of J] off the ground as you jump to your feet! You feel confident having won the final struggle!";
			now J is held by the player;
			Dignify 200;
		otherwise:
			say "You slip out of [NameDesc of M]'s grip, but it's too late! [big he of M] snatches the [ShortDesc of J] and shoves you off [him of M] before you can steal it back. You stand up, feeling confident but less so because you messed things up.";
			Dignify 100;
	If J is held and J is mystical amulet:
		decrease the xavier-power of M by 4;
		say AfterDominationComment 4 of M;
	otherwise if J is held:
		decrease the xavier-power of M by 1;
		now the wrench-timer of M is 300;
		say AfterDominationComment 5 of M;
	otherwise:
		if J is clothing, say AfterDominationComment 6 of M;
		otherwise say AfterDominationComment 7 of M.
		

To anal dominate (M - mechanic):
	let J be mystical amulet;
	unless J is retained by M, now J is a random off-stage wrench;
	if the wrench-timer of M > 0, now J is the throne;
	let C be a random worn chastity cage;
	let Ofit be the openness of asshole - the girth of M;
	now M is penetrating asshole;
	say "You take a seat in [NameDesc of M]'s lap, watching [NameDesc of M] out of one eye as you [if Ofit < -1]ease[otherwise]slide[end if] [his of M] [DickDesc of M] into your hole. ";
	Ruin asshole;
	say "[big he of M] stifles a grunt as you slowly begin to ride [him of M], and you allow your eyes to flutter closed as you savour the [if Ofit < -1]intense [end if] feeling of [his of M] [DickDesc of M]. You smack [his of M] hand away as [he of M] tries to [if J is clothing]sneak the [ShortDesc of J] out of your grip[otherwise]grab one of your wrists[end if], and you open your eyes just long enough to stare [him of M] down until [he of M] looks away. The sound of [NameDesc of M]'s breathing eggs you on as the pleasure builds, [if the sex addiction of the player < 7]panting quietly[otherwise]moaning to yourself[end if] as [he of M] begins to thrust in time with the movement of your hips, stimulating your prostate with maddening accuracy. You pant in an off rhythm with each other as [his of M] [DickDesc of M] begins to throb, and [if the size of penis is 0]your nipples harden in anticipation[otherwise]your [ShortDesc of penis] drools precum on [his of M] belly[end if] of your impending orgasm. [run paragraph on]";
	let S be a random number between the strength of the player and the difficulty of M  * -1;
	if J is mystical amulet, decrease S by 10;
	increase S by the soreness of asshole * 2;
	if M is wrapped:
		decrease S by 7;
		say "[BigNameDesc of M] grabs your wrists just before go over the edge, both of you gasping with pleasure as the struggle pushes [him of M] into you at a sudden angle. [if S > 0][big he of M] loosens [his of M] grip as [his of M] [DickDesc of M] spasms inside you, and you force [him of M] to let go of you as the condom fills with [his of M] load. You aren't far behind [him of M], and you groan with pleasure as orgasm crashes heavily through your body[otherwise]You lose your grip on the [ShortDesc of J] as you cum, and [he of M] roughly pins your arms behind your back as orgasm crashes through your body. [big he of M] isn't far behind, and [he of M] emits a primal groan as the condom floods with warmth[end if].";
		Dignify 300;
		orgasm;
	otherwise:
		increase S by 4;
		if J is throne or (the player is not very horny and (the soreness of asshole < a random number between Ofit and 7) and (the semen addiction of the player < a random number between 5 and 12) and S > -5):
			if S > 0:
				say "You pull off [NameDesc of M] just before you cum, avoiding a creampie. [BigNameDesc of M] seems [if J is clothing]disappointed, but you're pretty sure [he of M]'s still focused on the [ShortDesc of J][otherwise]pretty pissed off[end if].";
			otherwise:
				say "[BigNameDesc of M] grabs your wrists just before go over the edge, both of you gasping with pleasure as the struggle pushes [him of M] into you at a sudden angle. The [ShortDesc of J] falls out of your hand as [he of M] pins your arms behind your back, and [his of M] [DickDesc of M] slips out of you as [he of M] ejaculates, painting your belly, thighs, and [ShortDesc of penis] with [his of M] thick load.";
				let N be the semen load of M - a random number between 1 and 2;
				CumBellyUp N;
				CumThighsUp (the semen load of M - N);
			Arouse 1500;
		otherwise:
			say "[BigNameDesc of M] grabs your wrists just before go over the edge, both of you gasping with pleasure as the struggle pushes [him of M] into you at a sudden angle. [if S > 0][big he of M] groans, loosening [his of M] grip as [he of M] floods your [asshole] with [semen]. You finish at the same time, little fireworks going off behind your eyes as orgasm crashes heavily through your body[otherwise]You go over the edge as [he of M] forces your arms together behind your back, and you drop the [ShortDesc of J] as orgasm rocks your body. [big he of M] finishes right after you do, groaning primally as [he of M] floods your [asshole] with [his of M] [semen][end if].";
			Dignify 300;
			orgasm;
			AssFill the semen load of M;
		orgasm M;
		now M is not penetrating asshole;
		if J is throne:
			if S > 0 and M is not wrapped:
				say "You get to your feet with an overwhelming feeling of confidence bubbling up from your core.";
				Dignify 500;[bigger since you didn't get a prize]
			otherwise:
				Ruin asshole;
				FatigueUp 50;
				say "You wince a bit as you slip out of [his of M] grip, getting to your feet with a strong feeling of confidence bubbling up from your core.";
				Dignify 300;
		otherwise if S > 0:
			say "You get to your feet, confident in your new [ShortDesc of J].";
			now J is held by the player;
			Dignify 150;[smaller since you got a prize]
		otherwise:
			let D be a random number between the difficulty of M * -1 and the dexterity of the player;
			if J is mystical amulet, decrease D by 7;
			if M is wrapped, decrease D by 6;
			say "[line break]Your eyes meet as both of you pant with exhaustion, and you turn toward the [ShortDesc of J] at the same time.";
			if D > 0:
				say "You slip out of [NameDesc of M]'s grip, snatching the [ShortDesc of J] off the ground as you jump to your feet! You feel confident having won the final struggle!";
				now J is held by the player;
				Dignify 200;
			otherwise:
				say "You slip out of [NameDesc of M]'s grip, but it's too late! [big he of M] snatches the [ShortDesc of J] and shoves you off [him of M] before you can steal it back. You stand up, feeling confident but less so because you messed things up.";
				Dignify 100;
	If J is held and J is mystical amulet:
		decrease the xavier-power of M by 4;
		say AfterDominationComment 4 of M;
	otherwise if J is held:
		decrease the xavier-power of M by 1;
		say AfterDominationComment 5 of M;
		now the wrench-timer of M is 300;
	otherwise:
		if J is clothing, say AfterDominationComment 6 of M;
		otherwise say AfterDominationComment 7 of M.

[The rewards for failing to dominate the mechanic should be better than the rewards for sex, since it's way more humiliating, creampie chance is 100%, and he gets a difficulty boost]
To say AfterDominationComment (N - a number) of (M - mechanic):
	if N is 1:[the player cleaned him off after sex]
		let H be a random off-stage trainee hood;
		unless H is actually summonable, now H is a random maid headdress;
		let J be a random off-stage plentiful accessory;
		now J is ruby;
		if the employee-record of senior robobellboy < 0 or the class of the player is not hotel employment:
			now J is sapphire;
			increase the employee-record of senior robobellboy by 3;[Worth more than a normal review!]
		if the class of the player is hotel employment:
			say "[speech style of M]'[one of]Nice roleplay session. I really believed you were trying to steal it[or]That was a pretty good time. Nice acting, too[or]That was fun, and WOW are you good at acting[at random]. Consider this a successful employee review.'[roman type][line break][BigNameDesc of M] hands you a [printed name of J].";
			now J is held by the player;
		otherwise if H is actually summonable:
			say "[speech style of M]'[one of]You're actually not half bad. In fact, you're hired.'[or]That was a pretty good time. Welcome to my staff.'[or]You just ACED that interview. Welcome aboard, bitch.'[at random][roman type][line break][BigNameDesc of M] pulls out a [printed name of H] and forces you into it!";
			summon H;
		otherwise:
			say "[speech style of M]'[one of]If this were an interview you would have ACED it. I[']d love to creampie you again sometime.'[or]You know, I'd be glad to have a fuckhole like you on my staff. Let's do this again sometime.'[or]Come work for me sometime. It pays well, and I'll let you have clean-up duty whenever you want.'[at random][roman type][line break][BigNameDesc of M] hands you a [printed name of J].";	
	otherwise if N is 2:[the player didn't have the option to clean him off]
		let H be a random off-stage trainee hood;
		unless H is actually summonable, now H is a random maid headdress;
		let J be a random off-stage plentiful accessory;
		now J is sapphire;
		if the class of the player is hotel employment:
			increase the employee-record of senior robobellboy by 1;
			say "[speech style of M]'[one of]Good roleplay, but I felt like something important was missing.[or]Your acting was ok, but I think your performance was missing something.[or][if pregnancy fetish is 1]Breeding[otherwise]Nutting in[end if] you was fun, but I didn't really *believe* you were trying to steal it.[at random] Use this to buy some lessons.'[roman type][line break][BigNameDesc of M] hands you a [printed name of J]!";
			now J is held by the player;
		otherwise:
			if the employee-record of senior robobellboy < 0, increase the employee-record of senior robobellboy by 1;
			say "[speech style of M]'[one of]Good fuck, but I don[']t know if I[']d hire you.'[or]That was fun, but if this were an interview, I[']d say you didn[']t bring your A-game.'[or]That felt good, but if you were trying to impress me with your acting, you're going to need to do better.'[at random][roman type][line break]";
	otherwise if N is 3:[the player had the option to clean him off and didn't]
		say "[speech style of M]'[one of]It's not my fault you made a mess. Don't be such a prude.'[or]AND you won't even clean it up. Give me a break, bitch.'[or][if the class of the player is maid]Some maid you are[otherwise]You're the one who made the mess[end if]! Useless.'[at random][roman type][line break]";
	otherwise if N is 4:[the player stole the amulet]
		say "[speech style of M]'[one of]This is not over. I will have my amulet one way or another.'[or]You can't even unleash the amulet's full power. It was foolish to take it.'[or]You think you[']ve won, but you haven't. I WILL have my amulet.'[or]You are a fool to think you can truly steal that from me.'[at random][roman type][line break]";
	otherwise if N is 5:[the player stole the wrench]
		say "[speech style of M]'[one of]Ugh, whatever. I'll find a fucking replacement, how's that?'[or][if the player is female]Women[otherwise]Sluts[end if] are so annoying. Whatever. I'll just have to replace it.'[or]Ok, you win. Keep it. I'll fucking buy a replacement.'[at random][roman type][line break]";
	otherwise if N is 6:
		say "[speech style of M]'[one of]You ALMOST had it. Just kidding. Stupid bitch.'[or]Try stealing it again and you[']re going to wish you hadn't.'[or]I didn[']t get to where I am today letting stupid bitches like you steal my possessions.'[at random][roman type][line break]";
	otherwise:
		say "[speech style of M]'[one of]Nasty bitch. I won[']t hold back next time.'[or]Fucking cunt. Try that again and see what happens.'[or]I[']ll remember this for next time, don[']t you worry bitch.'[at random][roman type][line break]";

Mechanic ends here.

