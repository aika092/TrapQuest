Explorer by Monster begins here.

An explorer is a kind of monster. an explorer is female. an explorer is intelligent. an explorer has a number called explorer-bimbo. Understand "adventurer" as an explorer. Understand "bimbo" as an explorer when the explorer-bimbo of item described is 1. Understand "whore" as an explorer when the explorer-bimbo of item described > 1. an explorer has a text called explorer-type. Understand the explorer-type property as describing an explorer.

Definition: an explorer is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

To say ShortDesc of (M - an explorer):
	say "adventurer".

To say MediumDesc of (M - an explorer):
	say "[explorer-type of M] [if the explorer-bimbo of M >= 2]whore [otherwise if the explorer-bimbo of M is 1]bimbo [end if]adventurer".

To say MonsterDesc of (M - an explorer):
	say "This [man of M] appears to be struggling with [his of M] adventure. [big he of M] doesn't appear to be very strong, or have many possessions. [UniqueMonsterDesc of M]".

To say UniqueMonsterDesc of (M - an explorer):
	say "For one thing, [he of M] is next to naked.".

Definition: an explorer is willing to fluff:
	decide yes.

gymnast-explorer is an explorer. The explorer-type of gymnast-explorer is "gymnast". The text-shortcut of gymnast-explorer is "gyma".

blonde-explorer is an explorer. The explorer-type of blonde-explorer is "blonde". The text-shortcut of blonde-explorer is "bnda".
Report going:
	if iron-maiden is in the location of the player and iron-maiden is revealed and (tentacle fetish is 0 or inhuman pregnancy < 2) and blonde-explorer is summon-available and blonde-explorer is off-stage:
		set up blonde-explorer;
		now blonde-explorer is in the location of the player;
		say "Suddenly, from your right, the Iron Maiden opens, and a skimpily dressed [man of blonde-explorer] stumbles out. [if diaper quest is 0][big he of blonde-explorer] looks up at you, seems to think for a minute, and then takes a big gulp, swallowing whatever was in [his of blonde-explorer] mouth[otherwise]A strong stench of piss emanates from both the maiden and [his of blonde-explorer] panties - [he of blonde-explorer] must have pissed [himself of blonde-explorer] into the in-built padding while [he of blonde-explorer] was in there[end if].[line break][speech style of blonde-explorer]'Hello. Um... Don't look at the mirror. That's all I'm going to say. See you around.'[roman type][line break]It looks like [he of blonde-explorer] isn't one for long conversations. Or maybe [he of blonde-explorer] just wants to get out of this creepy place as soon as possible.";
		bore blonde-explorer for 150 seconds;
		now blonde-explorer is moved.

exposed-explorer is an explorer. The explorer-type of exposed-explorer is "exposed". The text-shortcut of exposed-explorer is "expa".
Report going when the player is in Woods05:
	if (tentacle fetish is 0 or inhuman pregnancy < 2) and exposed-explorer is summon-available and exposed-explorer is off-stage and the number of monsters in Woods05 is 0 and the number of interested regional monsters is 0:
		set up exposed-explorer;
		now exposed-explorer is in Woods05;
		now the boredom of exposed-explorer is 0; [just in case]
		say "There is a [man of exposed-explorer] swimming in the water here. [UniqueMonsterDesc of exposed-explorer][line break]You watch as [he of exposed-explorer] dives underwater, and then after a few moments resurfaces, still empty-handed and looking frustrated. [big he of exposed-explorer] gives up and swims for shore, skilfully pulling [himself of exposed-explorer] back up onto dry land.".

composed-explorer is an explorer. The explorer-type of composed-explorer is "composed". The text-shortcut of composed-explorer is "cmpa".


To set up (M - an explorer):
	reset M;
	now the monstersetup of M is 1;
	repeated set up M.

To repeated set up (M - an explorer):
	now the raw difficulty of M is (4 - the explorer-bimbo of M) * 2;
	now the health of M is the maxhealth of M;
	if the explorer-bimbo of M > 2:
		[-- First, if they have it, drop an intensely personal item --]
		compute maybe drop dick by M;
		if there are things carried by M:
			if M is in the location of the player, say "Your [list of things carried by M] [if the number of things carried by M > 1]are[otherwise]is[end if] also left behind."; [Aika explained that any items carried by an NPC must originally have come from you.]
			repeat with K running through things carried by M:
				now K is in the location of M;
				if M is in the location of the player, compute autotaking K;
		destroy M;
		now M is permanently banished;
	otherwise:
		now M is unconcerned;
		if the explorer-bimbo of M is 2:
			let L be Hotel44; [pimp room]
			let LR be a list of rooms;
			repeat with H running through hotel beds:
				add the location of H to LR;
			repeat with R running through LR:
				if there is a guarding explorer in R or the player is in R, remove R from LR;
			if the number of entries in LR > 0:
				sort LR in random order;
				now L is entry 1 in LR;
			now M is in L;
			now M is guarding;
		otherwise if M is in the Woods:
			now M is in Hotel01;
		otherwise:
			now M is in Woods01.

To decide which number is the difficulty of (M - an explorer):
	decide on the raw difficulty of M.

Definition: an explorer is too intimidating: decide no.

To compute monstermotion of (M - an explorer):
	do nothing.

To compute (M - a monster) stomping (N - an explorer):
	if M is in the location of the player, say "[BigNameDesc of M] fucks [BigNameDesc of N]. By the time [he of M] has finished, [NameDesc of N] is left exhausted in a puddle of juices. From the look on [his of N] face, [his of N] mind has left the building.";
	now N is fucked-silly.

To compute perception of (M - an explorer):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]";
	if M is unfriendly:
		compute eek reaction of M;
	otherwise if the explorer-bimbo of M >= 2:
		say WhorePerceptionFlav of M;
	otherwise:
		if the explorer-bimbo of M is 1, say "[big he of M] [one of]winks cheekily[or]smiles warmly at[or]licks [his of M] lips while looking at you[in random order] you then continues to focus on [his of M] own adventure.";
		otherwise say "[big he of M] [one of]nods towards[or]smiles awkwardly at[or]raises [his of M] eyebrows politely towards[in random order] you then continues to focus on [his of M] own adventure.";
		bore M for 150 seconds.

To say WhorePerceptionFlav of (M - an explorer):
	say "[speech style of M]'Hi, fancy seeing you here.'[roman type][line break]".

To compute eek reaction of (M - an explorer):
	now M is interested;
	now M is unconcerned;
	say "[speech style of M]'EEEEK!'[roman type][line break][BigNameDesc of M] turns tail and tries to run away from you!";
	now the scared of M is 100;
	now the boredom of M is 0;
	permanently anger M.

To compute monstermotion of (M - an explorer):
	if the explorer-bimbo of M >= 2 and the scared of M <= 0:
		repeated set up M;
	otherwise:
		compute room leaving of M.

Section 3 - Damage

To compute standard damage of (M - an explorer):
	if the health of M > 0:
		compute damage reaction of M;
		compute eek reaction of M;
		if the explorer-bimbo of M >= 2 and there is a hotel bed in the location of M and pimp is alive and pimp is undefeated and (pimp is uninterested or pimp is guarding or pimp is friendly):
			now pimp is interested;
			now pimp is unleashed;
			now the boredom of pimp is 0;
			say "[BigNameDesc of pimp] [if pimp is in the location of M]whirls round in fury[otherwise]quickly arrives in the room[end if]![line break][speech style of pimp]'HEY! If you cross my bitch, you cross me. You'll pay dearly for this!'[roman type][line break]";
			now pimp is in the location of M;
			anger pimp;
			decrease the favour of pimp by 2;
			if the health of pimp >= the maxhealth of pimp, now the health of pimp is the maxhealth of pimp - 1; [Unlocks harsher punishments]
	otherwise:
		compute defeat of M.

To compute banishment of (M - an explorer):
	increase the explorer-bimbo of M by 1;
	calm M;
	repeated set up M.

To standard loot (M - an explorer):
	do nothing. [unless she has taxable items, you don't get shit]

To say TaxReturnDismay of (M - an explorer):
	say "[speech style of M]'This is all I have...'[roman type][line break]".

To compute patronMeeting of (M - an explorer) with (P - a patron):
	if debuginfo > 1, say "[input-style]Patron is meeting [NameDesc of M].[roman type][line break]";
	if M is in the location of the player:
		focus-consider P;
		let R be a random off-stage ring;
		say "A [MediumDesc of P] walks into the room and makes a beeline for [NameDesc of M]. ";
		if the explorer-bimbo of M >= 2 and there is a hotel bed in the location of M and (VIP-card is held by P or R is ring):
			say "[big he of M] immediately sits up on the bed.[line break][speech style of M]'Hiya hun, what can I do for you today?'[line break]";
			if R is ring, now R is sapphire;
			if VIP-card is held by P:
				say "[BigNameDesc of P] flashes [his of P] [VIP-card]. [BigNameDesc of M] slightly frowns.[line break][speech style of M]'You again.'[line break][speech style of P]'Yep, me again. I'm not going to stop coming back until your asshole just can't [if ungape is 1]take[otherwise]close up[end if] any more.'[line break][speech style of M]'Anal again, then?'[roman type][line break][BigNameDesc of M] signs but assumes a doggy position and allows [NameDesc of P] to fuck [him of M] raw. [BigNameDesc of P] purposefully doesn't use any lube, clearly doing [his of P] best to completely demolish [NameDesc of M][']s ass and make [him of M] tap out. But [NameDesc of M] endures the anal assault like a true champion, and while [he of M] squeals and squirms and visibly suffers, [he of M] refuses to give in. In the end, it is [NameDesc of P] who runs out of steam first, as [if P is a balls-haver][his of P] balls empty themselves[otherwise][he of P] empties [himself of P][end if] up inside [him of M]. Both of them are left panting heavily.[line break][speech style of P]'Still won't give in? Fine, I'll see you again in 30 minutes, bitch.'[roman type][line break][BigNameDesc of P] strides out of the room. [BigNameDesc of M] rubs [his of M] backside and whines in self-pity.[line break][speech style of M]'If I ever find out who gave [him of M] that VIP card, I'm going to kill them!'[roman type][line break]";
			otherwise if P is dickhead patron:
				say "[speech style of P]'I'm going to cream in your [cunt] today, [cunt].'[roman type][line break][BigNameDesc of M] smiles, nods, and spreads [his of M] legs, lying down on the bed. [BigNameDesc of P] gets on top and goes to town, clearly with absolutely no regard for [NameDesc of M][']s pleasure or comfort. Nevertheless, [he of M] squeals like a happy kitten as [his of M] hole is taken to Pound Town by the snarling brute. Soon, [he of P] is grunting in satisfaction as [he of P] empties [if P is a balls-haver][his of P] balls[otherwise][himself of P][end if] inside [him of M]. You can tell that this has left [NameDesc of M] tantalisingly close to an orgasm without getting release, but [he of M] doesn't complain.[line break][speech style of M]'[if pregnancy fetish is 1]Wow that was a big load. What am I going to do if you've knocked me up?[line break][speech style of P]Your problem, not mine[otherwise]That felt so good, baby. You're such a stud[end if].'[roman type][line break][BigNameDesc of P] flicks a sapphire ring onto the bed next to [him of M]. After a big lazy stretch of [his of P] arms, [he of P] leaves the way [he of P] came.";
			otherwise if P is gross patron and P is a balls-haver:
				say "[speech style of P]'I want you to taste my [manly-penis]. Now lick it: lick it real good.'[roman type][line break][BigNameDesc of M] smiles, and obediently gets on [his of M] knees in front of [NameDesc of P]. Opening [his of M] mouth wide, [he of M] takes the somewhat gross-looking [manly-penis] without hesitation.[line break][speech style of M]'Mmm, you taste so good, honey.'[roman type][line break][BigNameDesc of M] mumbles around [NameDesc of P][']s head.[line break][speech style of P]'My balls. My balls too. They've been sweating in my pants all day. They need a good clean.'[roman type][line break][BigNameDesc of M] immediately swaps to slurping on [NameDesc of P][']s sweaty scrotum while jacking [him of P] off with one hand.[if a2m fetish > 0][line break][speech style of P]'My ass! My asshole! Stick your tongue in my dirty fucking asshole, you disgusting fucking whore!'[roman type][line break][BigNameDesc of M] allows [NameDesc of P] to turn around and spread [his of M] asscheeks. Then [he of M] dives [his of M] tongue deep inside [his of P] exposed butthole, still pumping [his of P] [manly-penis] with [his of P] hand as fast as [he of M] can. [big he of M] even makes happy sounds as if [he of M] is enjoying the taste of the gross [man of P][']s ass as [he of M] pushes [his of M] deeper and deeper inside.[end if][line break][speech style of P]'Yes! Yes! Cumming!'[roman type][line break][BigNameDesc of P] fires off rockets of [semen] onto the ground, allowing [NameDesc of M] to milk it out of [him of P] with [his of M] hand.[line break][speech style of P]'You're such a dirty slut. You'll always be my favourite.'[roman type][line break][BigNameDesc of P] hands [NameDesc of M] a sapphire ring, and [he of M] responds by giving [NameDesc of P] a loving peck on the cheek.[line break][speech style of M]'Come back soon, sweetheart. I can't wait for my next taste.'[roman type][line break][BigNameDesc of P] grins and nods.[speech style of P]'As soon as I've got more money, I'll be back.'[roman type][line break][big he of P] leaves the way [he of P] came.";
				SemenPuddleUp (the semen load of P) in (the location of M);
			otherwise:
				say "[speech style of P]'I want to fuck your ass, [please].'[line break][speech style of M]'Yes sir!'[roman type][line break][BigNameDesc of M] beams and smiles as [he of M] bends over the bed, presenting [his of M] ass to [NameDesc of P]. [BigNameDesc of P] walks up and eagerly prods [his of P] [manly-penis] up against [NameDesc of M][']s asshole. [if P is experienced patron]Apparently a brief spit is all that [he of P] feels is necessary as lube, because after that[otherwise][BigNameDesc of P] must be very inexperienced because [he of P] doesn't even think to use any lube -[end if] [he of P] just pushes inside. [BigNameDesc of M] grunts, probably with discomfort, but [he of M] does a good job of making it sound like sexual pleasure. The grunts continue as [NameDesc of P] begins properly, making [NameDesc of M][']s sphincter stretch inwards then outwards with each thrust.[line break][speech style of P]'Ungh, yeah anal is the fucking best...'[roman type][line break][BigNameDesc of P] doesn't take long to climax, but even so, by the time [he of P] is painting [NameDesc of M][']s chute with [his of M] [semen], [NameDesc of M] is panting desperately - this session has clearly taken its toll on [his of M] poor backdoor.[line break][speech style of M]'T-thankyou for... using my ass... Sir...'[roman type][line break][BigNameDesc of M] manages to say between pants.";
				if P is experienced patron:
					say "[speech style of P]'You're welcome. And you deserve this.'[roman type][line break][BigNameDesc of P] gives [NameDesc of M] an emerald ring. [big he of M] beams at [him of P].[line break][speech style of M]'Thank you soooo much!'[roman type][line break][BigNameDesc of M] gives [NameDesc of P] a hug and big kiss on the lips before [he of P] takes [his of P] leave.";
					now R is emerald;
				otherwise:
					say "[speech style of P]'No, thank you! That was amazing!'[roman type][line break][BigNameDesc of P] gives [NameDesc of M] a sapphire ring and then quickly leaves the way [he of P] came.";
			set shortcut of R;
			now R is carried by M;
			add R to the taxableItems of M;
			if pimp is alive and pimp is undefeated and the number of rings held by M > 1:
				focus-consider pimp;
				let SR be a random sapphire ring carried by M;
				if SR is nothing, now SR is R;
				say "[BigNameDesc of pimp] [unless pimp is in the location of M]appears and [end if]walks up to [NameDesc of M]![line break][speech style of pimp]'Good work. Now give me what's mine.'[line break][speech style of M]'Yes boss.'[roman type][line break][BigNameDesc of M] obediently hands [NameDesc of pimp] a [SR].[line break][speech style of pimp]'Good [boy of M].'[roman type][line break][unless pimp is in the location of M][BigNameDesc of pimp] leaves without another word.[end if]";
				if SR is listed in the taxableItems of M, remove SR from the taxableItems of M;
				destroy SR;
		otherwise:
			say "[big he of P] whispers something into [his of M] ear. [BigNameDesc of M] [if the explorer-bimbo of M >= 2]smiles and[otherwise]turns right red, but[end if] nods. [big he of M] takes [NameDesc of P][']s [manly-penis] into [his of M] hands and starts giving [him of P] a handjob. [big he of M] [if the explorer-bimbo of M >= 2]gives you a cheeky wink[otherwise]is clearly rather embarrassed about the fact you're watching, and purposefully avoids eye contact with you[end if]. A short while later, [NameDesc of P] is painting the floor with [his of P] [semen]. You spot [NameDesc of M] biting [his of M] bottom lip as [he of M] watches the puddle of [semen] start to form. [BigNameDesc of P] takes [his of P] leave, leaving you and [NameDesc of M] standing there awkwardly, the evidence of the aftermath spilling out on the floor between you.";
			SemenPuddleUp (the semen load of P) in (the location of M);
	otherwise:
		SemenPuddleUp (the semen load of P) in (the location of M).


Part - Conversation

Definition: an explorer is fluff-question-appropriate: decide no.

talk-explorer-whore is a talk-object.

To consider (T - talk-explorer-whore) for (M - a monster):
	if M is explorer and the explorer-bimbo of M >= 2:
		now the printed name of T is the substituted form of "[variable custom style]'[one of]So you work here now[or]How much for your [']services['][stopping]?'[roman type][line break]";
		set next numerical response to the substituted form of "[printed name of T]";

To execute (T - talk-explorer-whore) for (M - a monster):
	say "[speech style of M]'[one of]Yep! [or][stopping]Just one sapphire ring and I'll make your dreams come true. But we don't give change here.'[roman type][line break]".

Explorer ends here.
