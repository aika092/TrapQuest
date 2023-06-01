Vine Boss by Monster begins here.

vine boss is a monster. vine boss is neuter. The blind-status of vine boss is -1.

vine boss is in WoodsBoss01. Understand "monstrous" as vine boss. Figure of Vine Boss is the file "NPCs/Bosses/VineBoss/vineboss1.png". The text-shortcut of vine boss is "vb".

Definition: vine boss is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]
Definition: vine boss is a urinater: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

To say ShortDesc of (M - vine boss):
	say "vine boss".

To say MediumDesc of (M - vine boss):
	say "monstrous vine boss".

To decide which figure-name is the monster-image of (M - vine boss):
	decide on figure of vine boss.

To say MonsterDesc of (M - vine boss):
	say "[one of]A 10 foot mass of seething plant matter, with primitive club-like arms and a pair of beady red eyes. Its body is supported by a trunk of interwoven vines, but the centre and top looks vaguely like a giant flower.[or]A sentient mass of seething plant matter. Its [']body['] is supported by a vast network of living vines, all of which seem to perk up at your presence. You can feel invisible eyes peering at you from the giant pink flower that makes its [']head['] boring holes through your skull.[in random order]";
	say "[if the bimbo of the player > 15][line break][second custom style][one of]I can't get away. I guess I'll just have to get on my knees then![or]It looks strong! Strong enough to hold me down for a good LONG time![in random order][otherwise if the bimbo of the player > 5][line break][variable custom style][one of]I'm trapped down here. I wonder what it's going to do to me.[or]All those vines look so strong. Oh no...[or]This may have been a mistake...[in random order][otherwise if the player is gendered female][line break][first custom style][one of]It's terrifying![or]What is THAT?![or]I don't think I can fight it... but I don't think I have any choice.[or]I don't want any of those vines to touch me.[or]It looks extremely powerful.[in random order][otherwise][first custom style][one of]I'm getting a final boss vibe here.[or]I'm not scared, but... I still want to get out of here.[or]Nowhere to run. Me or the monster.[or]It looks pretty powerful. But it can't be prepared for THESE GUNS![in random order][end if][roman type][line break]".

To set up (M - vine boss):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	let V be a random vine;
	repeat with N running from 1 to 3:
		let E be a random off-stage small egg;
		if E is egg:
			now E is in WoodsBoss01;
			now the egg-origin of E is V.


To decide which number is the starting difficulty of (M - vine boss):
	decide on 14.
To decide which number is the grossness of (M - vine boss): [grossness addiction needed to tolerate it]
	decide on 8.

Definition: vine boss is concealment immune: decide yes. [Can the monster ignore salves of concealment, butt slut, etc.]

Definition: vine boss is able to remove cursed plugs: decide yes. [Can the monster remove all butt plugs?]

Part 1 - Perception

Definition: vine boss is uniquely unfriendly: decide yes.
Definition: vine boss is scarable: decide no.

To compute perception of (M - vine boss):
	say "[BigNameDesc of M] notices you, and roars! That's one big scary boss monster!";
	FearUp 10.

To say BecomesBoredFlav of (M - vine boss):
	say "[BigNameDesc of M] seems to lose interest in you for now.".

Part 2 - Combat

vine boss has a number called block-type.

Definition: vine boss (called M) is successfully blocking: [Do they succeed in a roll to stop the player moving]
	if the block-type of M is 0 and the player is getting unlucky:
		now the block-type of M is 2;
	otherwise:
		now the block-type of M is 0;
		let D be the difficulty of M; [For most monsters it's multiplied by 2, but not for this one]
		let MR be the movement reduction of the player; [When we check the movement reduction of the player for the first time in a round, if it is significant, it outputs text explaining why the player is struggling to move away from the monster.]
		if exposing-magical-dress is worn, now MR is D / -2;
		let DM be D + MR;
		if combatSpeed > 1 and DM > the dexterity of the player, increase D by (DM - the dexterity of the player) * (combatSpeed - 1); [double the likelihood of success by doubling the difference between DM and Dex]
		let R be MR + a random number from 1 to D;
		if debuginfo > 0, say "[input-style][ShortDesc of M][']s movement block check: player movement penalty ([MR]) + block skill d[D] ([R - MR]) = [R] | ([dexterity of the player].5) dexterity[roman type][line break]";
		if R > the dexterity of the player:
			if the player is getting unlucky:
				now the block-type of M is 1;
				decide no;
			decide yes;
		decide no.

To say MovementBlock of (M - vine boss):
	if the block-type of M is 0:
		say "As you clamber to escape the pit, a vine wraps around your ankle and pulls you right back down to where you started!";
	otherwise:
		if the block-type of M is 1:
			say "You almost make it to the top, but then your grip fails at the last moment, and you plummet back down to the ground! [GotUnluckyFlav]";
		otherwise:
			say "As you are climbing, you come face-to-face with the tip of a live vine![line break][variable custom style]Uh-oh.[roman type][line break][']Uh-oh['] is right - it blasts you in the face with a powerful jet of [if diaper quest is 1]water[otherwise][semen][end if], which sends you falling down to the ground and landing painfully on your back! [GotUnluckyFlav]";
			if diaper quest is 1, AnnouncedSquirt water on face by 20;
			otherwise AnnouncedSquirt semen on face by 20;
			BodyRuin 1;
		if the player is upright:
			now the stance of the player is 1;
			say "[bold type]You are now on your knees.[roman type][line break]".

To compute unique teleportation to (R - Woods16):
	unless the player is flying:
		say "You have appeared in mid-air above the hole! Uh-oh... Looks like gravity is taking you on a one-way compulsory trip downwards!";
		teleport to WoodsBoss01;
		say "You land on your front with a painful thump[if the body soreness of the player < 10], giving yourself more than one ache and bruise[end if].";
		BodyRuin 3;
		now the stance of the player is 1.

Section 1 - Attack

Definition: vine boss is a tripper:
	if diaper quest is 1, decide yes;
	decide no.

To decide which number is the tripping max of (M - vine boss): [he can trip you no matter what your attack type]
	let D be the difficulty of M;
	increase D by the trip hazard of the player * 2;
	if attack-type is 3, now D is D * 2;
	if attack-type is 0 or attack-type is 1, now D is D / 2;
	if D < 1, decide on 1;
	decide on D.

To say MonsterTripAnnounceFlav of (M - vine boss):
	say "[BigNameDesc of M] sends a vine swiping across the ground at your feet!".

To say MonsterTrippedFlav of (M - vine boss):
	say "It sends you flying off of your feet and face-planting into the ground!".

To say MonsterFailedTripFlav of (M - vine boss):
	say "You manage to hop over the vine like a skipping rope.".

To say StrikingSuccessFlav of (M - vine boss) on (B - a body part):
	say "[BigNameDesc of M] whips a powerful vine right [TargetName of B]! Ouch!!".

To say StrikingFailureFlav of (M - vine boss) on (B - a body part):
	say "[BigNameDesc of M] sends a vine to whack you [TargetName of B] but you avoid it just in time!".

To TimesSubmittedUp (M - vine boss) by (N - a number):
	DirectTimesSubmittedUp M by N;
	if the class of the player is princess, compute betrothal of M;
	if giant-statue is active, ChargeDown giant-statue by 40.

To compute (M - vine boss) removing (C - a thing): [This is used for removing insertables]
	let F be a random orifice penetrated by M;
	say "Using a particularly nimble vine, [NameDesc of M] effortlessly pulls out your [printed name of C] and discards it onto the floor.";
	now C is in the location of the player;
	if C is anal beads, ruin F times the notch-taken of C / 2;
	dislodge C.

To compute (M - vine boss) attacking (C - a clothing): [This should change for any special flavour or varied mechanics on how the clothing is removed.]
	say "Using a particularly nimble vine, [NameDesc of M] effortlessly rips off your [printed name of C], destroying it.";
	destroy C.

The vine boss attack rules is a rulebook. The priority attack rules of vine boss is usually the vine boss attack rules.

The latex punishment rule of vine boss is usually the no latex punishment rule.

This is the vine boss ultimate victory attack rule:
	if there is an actually occupied fuckhole and the player is vine fucked:
		let V be a random vines penetrating a fuckhole;
		let F be a random fuckhole penetrated by V;
		if the TrapNo of V is 3:
			if ex-princess is alive and ex-princess is unconcerned and the blue-balls of vine boss < 10:
				now the blue-balls of vine boss is 10;
				say "As the vines near their climax, the monster grabs you with its 'hands' and pulls you up to its flowery mouth. Using the vines in your [variable F] it pushes you towards its huge chasm of a mouth. Suddenly the vines holding you are all slashed in a brilliant display of light! As you fall back to the ground you turn around and see [NameDesc of ex-princess] standing behind you.[line break][speech style of ex-princess]'This fucker's got a lot bigger since the last time I saw [him of vine boss]. I heard noises and thought you might need some help. Looks like I was right.'[roman type][line break][big he of ex-princess] warily looks all around [him of ex-princess], at the new freshly-sprouted vines that are all beginning to converge on [him of ex-princess].[line break][speech style of ex-princess]'I... actually can't stay. My magic is needed elsewhere. Best of luck!'[roman type][line break]";
				destroy V;
				if the traitor-hypno of hypno-lesson > 0:
					decrease the traitor-hypno of hypno-lesson by 1;
					say "[BigNameDesc of ex-princess] is just about to leap into the air when you grab [him of ex-princess] by the wrists. Something deep inside you is reminding you to [second custom style]help your friend[roman type]. You yank [his of ex-princess] arms behind [his of ex-princess] back, forcing [him of ex-princess] to drop [his of ex-princess] wand. [BigNameDesc of vine boss] almost seems to be huffing with sadistic laughter as [he of vine boss] sends several vines up your body to wrap around [NameDesc of ex-princess][']s limbs, as you clamber onto [his of ex-princess] back like some sort of acrobatic wrestler, putting your ankles up around [his of ex-princess] neck.[line break][variable custom style]'[teacher-name of lesson-teacher of hypno-lesson] sends [his of lesson-teacher of hypno-lesson] regards.'[roman type][line break]You hear yourself whispering into [NameDesc of ex-princess][']s ear, as two vines begin to find their way up [his of ex-princess] legs to [his of ex-princess] lower fuckhole[if ex-princess is female]s[end if].";
					cutshow figure of vine boss cutscene 2 for current-monster;
					say "[speech style of ex-princess]'No, no, no! Not like this!'[roman type][line break]Anything more that [he of ex-princess] might have wanted to say is cut off by a pair of vines finding their way into [his of ex-princess] mouth as others begin to undergo a scientific experiment to discover how many [his of ex-princess] cunt and asshole can each accommodate.[line break][speech style of ex-princess]'MMMMMMMMMMMMMMPH!'[roman type][line break]That's the last sound from [him of ex-princess] that you ever hear, as [his of ex-princess] body is raised into the air. You are temporarily released, dropped to the ground, as [NameDesc of ex-princess] is pulled into the belly of [NameDesc of vine boss], countless powerful vines still thrusting in and out as [he of ex-princess] disappears inside.";
					destroy ex-princess;
					now ex-princess is fucked-silly; [Just to make sure she definitely never re-spawns]
					if there is a worn tattoo and the number of worn breast tattoo is 0:
						summon traitor tattoo;
						say "The word 'traitor' appears on your chest, a lasting reminder of your ultimate betrayal!";
				otherwise:
					say "[BigNameDesc of ex-princess] leaps into the air and disappears out the top of the pit, leaving you alone with [NameDesc of vine boss] once again.";
				rule succeeds;
			otherwise if the player is possessing a vagina and the womb volume of vagina >= 3:
				say "As the vines near their climax, the monster grabs you with its 'hands' and pulls you up to its flowery mouth. Using the vines in your [variable F] it pushes you into its huge chasm of a mouth and swallows you whole. ";
				appropriate-cutscene-display figure of vine boss cutscene 1;
				say "Your body falls into its belly of vines and soon you are being completely filled in your [fuckholes] and mouth. The vines pump and pump [semen] into your body, and you can feel your body straining with the pressure of being filled so much. You feel like you are about to explode!";
				now delayed fainting is 1;
			otherwise if the player is male and the total fill of belly >= 13 or slimegirl is worn:
				say "As the vines near their climax, the monster grabs you with its 'hands' and pulls you up to its flowery mouth. Using the vines in your [asshole] it pushes you into its huge chasm of a mouth and swallows you whole. ";
				appropriate-cutscene-display figure of vine boss cutscene 1;
				say "Your body falls into its belly of vines and soon you are being completely filled in both your [asshole] and your mouth. The vines pump and pump [semen] into your body, and you can feel your body straining with the pressure of being filled so much. You feel like you are about to explode!";
				now delayed fainting is 1;
	if delayed fainting is 1:
		repeat with V running through vines in the location of the player:
			destroy V;
		now the fainting reason of the player is 16;
		rule succeeds.
The vine boss ultimate victory attack rule is listed last in the vine boss attack rules.

This is the do nothing while the player is vine fucked rule:
	if the player is vine fucked, rule succeeds.
The do nothing while the player is vine fucked rule is listed last in the vine boss attack rules.

This is the vine boss spawns more vines rule:
	if the number of vines in the location of the player is 0 or a random number between -6 and (4 - diaper quest) > the number of vines in the location of the player:
		say "[BigNameDesc of current-monster] roars as [if the number of aggressive vines in the location of the player > 0]more [end if]vines squirm through the dirt towards you!";
		let V be a random off-stage vines;
		now V is in the location of the player;
		now V is revealed;
		now the TrapNo of V is 0;
		rule succeeds.
The vine boss spawns more vines rule is listed last in the vine boss attack rules.

This is the vine boss attacking ass covering clothing rule:
	if diaper quest is 0:
		let C be a random worn top level ass protection clothing;
		if C is clothing:
			compute current-monster attacking C;
			rule succeeds.
The vine boss attacking ass covering clothing rule is listed last in the vine boss attack rules.

This is the vine boss removing butt plug rule:
	if diaper quest is 0:
		let C be a random worn insertable thing penetrating asshole;
		if C is a thing:
			compute current-monster removing C;
			rule succeeds.
The vine boss removing butt plug rule is listed last in the vine boss attack rules.

This is the vine boss attacking pussy covering clothing rule:
	if diaper quest is 0:
		let C be a random worn top level protection clothing;
		if C is clothing:
			compute current-monster attacking C;
			rule succeeds.
The vine boss attacking pussy covering clothing rule is listed last in the vine boss attack rules.

This is the vine boss removing cunt plug rule:
	if diaper quest is 0:
		let C be a random worn insertable thing penetrating vagina;
		if C is a thing:
			compute current-monster removing C;
			rule succeeds.
The vine boss removing cunt plug rule is listed last in the vine boss attack rules.

This is the vine boss makes the player diapered rule:
	if diaper quest is 1 and the number of worn diapers is 0:
		let C be a random worn knickers;
		if C is clothing:
			compute current-monster attacking C;
			if C is worn, destroy C;
		let D be a random eligible diaper;
		say "You watch as a couple of vines descend from above, holding a [MediumDesc of D] between them! Within moments they have fastened it onto you.";
		summon D cursed with quest;
		rule succeeds.
The vine boss makes the player diapered rule is listed last in the vine boss attack rules.

This is the vine boss makes the player sore rule:
	let R be a random number between 1 and (2 - diaper quest);
	if R is 1:
		say "[BigNameDesc of current-monster] strikes at your body with a strong vine! Oof!";
		BodyRuin a random number between 1 and 2;
	rule succeeds.
The vine boss makes the player sore rule is listed last in the vine boss attack rules.

Section 2 - Damage

To say DamageReactHealthy of (M - vine boss):
	say "The giant vine beast does not seem to react to your attacks as if it can't feel pain!".

To say DamageReactDamaged of (M - vine boss):
	say "The giant vine beast seems confused by your ongoing ability to fight!".

To say DamageReactTired of (M - vine boss):
	say "The vine beast [one of]is now screeching, it clearly now realises it might lose this fight![or]screeches but does not stop defending its lair![stopping]".

To say DamageReactWeak of (M - vine boss):
	say "The vine beast continues screeching, huge chunks of dying vegetation falling from the ceiling as it fights on.".

To say BanishFleeFlav of (M - vine boss):
	say "With one final screech, the life leaves all of the vines that make up the beast, and all the vines in the room around you. They slowly and gracefully fall to the ground in a large pile. Victory!".

To compute unique banishment of (M - vine boss):
	repeat with V running through vines:
		destroy V;
	now M is bossdefeated;
	check tentacle clear.

To loot (M - vine boss):
	let B be a random off-stage writhing vine;
	if B is a thing:
		say "Searching the pile, you find a single, now harmless looking [printed name of B] that is still slightly alive!";
		now B is in the location of the player;
		compute autotaking B;
		increase the loot dropped of M by 1;
	let X be a random off-stage plentiful ring;
	unless X is nothing:
		now X is in the location of the player;
		now X is solid gold;
		set shortcut of X;
		say "The defeated [M] [if the loot dropped of M > 0]also [end if]dropped a [printed name of X]!";
		increase the loot dropped of M by 1;
		compute autotaking X.

Vine Boss ends here.
