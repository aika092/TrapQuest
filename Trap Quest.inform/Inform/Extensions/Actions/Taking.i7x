Taking by Actions begins here.

Check taking something when the player is not able to use their hands:
	if takingStuff is false and not-in-bag-things > 0 and the noun is not plentiful accessory, say "You can only carry one item at a time without proper [unless the class of the player is living sex doll]use of your [end if]hands!" instead.

Check taking something when the available arms of the player is 0:
	if takingStuff is false, say "You can't take [NameDesc of the noun] - your arms are already occupied this round!" instead.

Check dropping something when the player is not able to use their hands:
	if there is a worn bag of holding and the noun is in-bag, say "You can't even reach into your bag right now..." instead.

Check taking something:
	if there is a monster holding the noun, say "That's in someone else's possession." instead.

Check taking something:
	if the noun is carried by the player or the noun is worn by the player, say "You already have that!" instead;
	if the player is trap stuck, say "You can't reach whilst stuck on the [if there is a trap penetrating a fuckhole][random trap penetrating a fuckhole][otherwise]trap[end if]!" instead;
	if the player is live fucked, say "You're a bit busy getting fucked!" instead;
	if the player is flying, say "[one of]You try to roll around in the air and reach down to the ground, but your [BreastDesc] and [BellyDesc] simply float you back around until you're face up, your balloon-boobs bouncing gently against the ceiling. You feel your nipples perk up at the unexpected contact. [if the bimbo of the player < 8][line break][first custom style]Just when I thought I couldn't look any more ridiculous...[otherwise if the bimbo of the player < 13][line break][variable custom style]I'd better be careful, or I'm going to turn myself on![otherwise][second custom style]Hee hee, even the ceiling wants to touch my boobies![end if][or][roman type][line break]You manage to flip yourself around so your back and butt are pressing up against the ceiling. You stare down at the floor below you, at your equipment strewn all around, out of reach.[line break][variable custom style]How embarrassing![roman type][line break][cycling]" instead;
	if the noun is stuck, say "That's stuck in place!" instead;
	if vampiress is chain-tethering:
		check tethering;
		if vampiress is chain-tethering, say "You have more important things to worry about!" instead;
	if the player is wrist bound and there is a worn heels and the player is upright:
		let X be the trip hazard of the player;
		let D be a random number between 0 and 17; [NB dexterity is NOT used here, only when dealing with monsters and traps.]
		if debuginfo > 0, say "[input-style]Heels + wrist bondage balance check: Always d18 ([D + 1]) | ([X].5) situational difficulty level[roman type][line break]";
		if D < X:
			say "As you try to bend over, you slip and fall!";
			allocate 1 seconds;
			try kneeling instead.

Check taking store thing while the player is in Dungeon41 and Dungeon41 is guarded:
	if there is held store thing, say "[one of][line break][first custom style]'[big please] only consider one item of clothing at a time, or we'll all get confused. And we don't offer change here.'[roman type][line break]What a cheeky way of running a business! [big he of shopkeeper] seems serious though, so you decide to leave it alone.[or]You remember the strict rules about only considering one item at a time and decide to leave it alone.[stopping]" instead.

Report taking store thing:
	if shopkeeper is in the location of the player and shopkeeper is not interested:
		now the boredom of shopkeeper is 0; [Just in case]
		check perception of shopkeeper.

Understand "t [something]", "ta [something]" as taking.

takingStuff is initially false.
An all later time based rule (this is the taking stuff reset rule):
	now takingStuff is false.

Check taking:
	if debugmode is 2, say "FINAL CHECKING.".

Carry out taking:
	if takingStuff is false:
		allocate 2 seconds;
		allocate arm use to the noun;
	now takingStuff is true; [The player can take several items in the same turn without penalty with "take all"]
	if debugmode is 2, say "CARRY OUT.".

Report taking:
	if debugmode is 2, say "REPORT.".


Stealing is an action applying to one thing.
Check stealing:
	if the noun is not monster, say "This verb is used for stealing items from NPCs." instead;
	if tutorial is 1, say "Please only follow the instructions given for the tutorial." instead;
	if the noun is caged, say "You can't reach." instead;
	if the noun is explorer and the noun is undefeated, say "[big he of the noun][']s literally holding it in [his of the noun] hand." instead;
	if the player is immobile or the player is in danger, say "Aren't you a bit busy?" instead;
	if the noun is kitsune and the target-disguise of the noun is not the noun:
		allocate 3 seconds;
		say "As soon as your hand reaches out... ";
		compute KitsuneReveal of the noun;
	if the player is prone and the noun is awake and the noun is not easy-steal, say "You should probably be standing to try that." instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the noun is not easy-steal and the noun is awake and the player is not able to manually use manual dexterity, do nothing instead;
	[Note: The check if the player is not able to use their hands is silent and requires you to add your own flavour if you want.
The check if the player is not able to MANUALLY use their hands comes with its own flavour explaining exactly why you can't use your hands. The same applies for "able to use manual dexterity" versus "able to manually use manual dexterity"!]
	if the number of entries in the tradableItems of the noun is 0 and the number of things carried by the noun is 0, say "[BigNameDesc of the noun] has nothing for you to steal." instead;
	if the noun is interested and the noun is not easy-steal and the noun is awake, say "[BigNameDesc of the noun] is looking right at you." instead.
Carry out stealing:
	let LT be a list of things;
	repeat with T running through the tradableItems of the noun:
		if T is off-stage:
			add T to LT, if absent;
	repeat with T running through things carried by the noun:
		add T to LT, if absent;
	reset multiple choice questions;
	truncate LT to 9 entries;
	say "What do you want to try and steal?";
	repeat with T running through LT:
		set next numerical response to "The [ShortDesc of T]";
	set numerical response 0 to "cancel";
	compute multiple choice question;
	if player-numerical-response > 0:
		let T be entry player-numerical-response in LT;
		if T is plentiful ring and the number of worn rings >= 8:
			say "You can't do that, as you are already wearing 8 rings.";
			now player-numerical-response is 0;
		otherwise if T is plentiful bracelet and the number of worn bracelets >= 2:
			say "You can't do that, as you are already wearing 2 bracelets.";
			now player-numerical-response is 0;
		otherwise if T is plentiful necklace and there is a worn necklace:
			say "You can't do that, as you are already wearing a necklace.";
			now player-numerical-response is 0;
		if player-numerical-response > 0:
			allocate 5 seconds;
			if the noun is not easy-steal and the noun is awake:
				say "You attempt to snatch the [ShortDesc of T] from [NameDesc of the noun] without [him of the noun] noticing.";
				let D be (a random number between 1 and the dexterity of the player) + (a random number between 1 and the dexterity of the player);
				let MD be the steal-difficulty of the noun for T;
				let S be the stealth of the player;
				if debuginfo > 0, say "[input-style]Steal attempt check: Dexterity 2d[dexterity of the player] ([D]) + Stealth ([S]) = [D + S] | [MD].5 Perfect steal difficulty / [(MD * 2) / 3].5 Partial success difficulty[roman type][line break]";
				if D + S > MD: [full success]
					compute full stealing success of T from the noun;
				otherwise if D > (MD * 2) / 3: [partial success]
					compute partial stealing success of T from the noun;
				otherwise:
					compute stealing fail of T from the noun;
			otherwise if the noun is not easy-steal and the player is getting very unlucky:
				compute sleep stealing fail of T from the noun;
			otherwise:
				say "You easily take [NameDesc of T].[if the noun is bride-consort][line break][variable custom style]What's yours is mine, after all...[roman type][line break]";
				now T is carried by the player;
				now the owner of T is the noun;
				if T is listed in the tradableItems of the noun, remove T from the tradableItems of the noun;
			if T is plentiful accessory and T is carried, now T is worn by the player.

To compute full stealing success of (T - a thing) from (M - a monster):
	say "You swipe [NameDesc of T] away without [him of M] having a clue!";
	now T is carried by the player;
	now the owner of T is M;
	if T is listed in the tradableItems of M, remove T from the tradableItems of M;
	progress quest of stealing-quest.

To compute partial stealing success of (T - a thing) from (M - a monster):
	say "As you pull [NameDesc of T] away, [NameDesc of M] feels the movement, and whirls around. You've been caught red-handed![if M is intelligent][line break][StealProvokedReaction of M][end if]";
	now T is carried by the player;
	now the owner of T is M;
	if T is listed in the tradableItems of M, remove T from the tradableItems of M;
	interest M;
	compute partial stealing reaction of T from M;
	progress quest of stealing-quest.

To compute partial stealing reaction of (T - a thing) from (M - a monster):
	anger M;
	let N be the bartering value of T for M;
	FavourDown M by N.

To compute stealing fail of (T - a thing) from (M - a monster):
	say "[big he of M] whirls round as soon as your hand touches the [ShortDesc of T][if M is human], and grabs you by the wrist[end if]. [StealProvokedReaction of M]";
	interest M;
	compute stealing fail reaction of T from M;

To compute stealing fail reaction of (T - a thing) from (M - a monster):
	anger M;
	let N be (2 * the bartering value of T for M) / 3;
	FavourDown M by N;
	now M is wrangling arms.

To compute sleep stealing fail of (T - a thing) from (M - a monster):
	say "As you pull [NameDesc of T] away, [NameDesc of M] [one of]starts awake[or]suddenly wakes up[or]suddenly opens [his of M] eyes[in random order]. You've been caught red-handed![if M is intelligent][line break][StealProvokedReaction of M][end if]";
	now T is carried by the player;
	now the owner of T is M;
	if T is listed in the tradableItems of M, remove T from the tradableItems of M;
	interest M;
	now the sleep of M is 0;
	anger M;
	let N be the bartering value of T for M;
	FavourDown M by N;
	progress quest of stealing-quest.

To say StealProvokedReaction of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]You would steal from me?!'[or]This will not go unpunished...'[or]How DARE you!'[or]What do you think you're doing?!'[or]You really shouldn't have tried that...'[or]You just made a serious mistake.'[in random order][roman type][line break]";
	otherwise say "Uh-oh...".

To say PartialSuccessStealProvokedReaction of (M - a monster):
	if M is intelligent, say "[speech style of M]'[one of]You would steal from me?!'[or]This will not go unpunished...'[or]How DARE you!'[or]What do you think you're doing?!'[or]You're going to wish you hadn't tried that...'[or]You just made a serious error.'[in random order][roman type][line break]";
	otherwise say "Uh-oh...".

To decide which number is the steal-difficulty of (M - a monster) for (T - a thing):
	decide on the difficulty of M * 2.

Definition: a monster is easy-steal:
	if it is defeated, decide yes;
	decide no.

Understand "steal [something]", "steal from [something]", "pickpocket [something]" as stealing.

Taking ends here.
