Taking by Actions begins here.

Check taking something when the player is not able to use their hands:
	if takingStuff is false and not-in-bag > 0 and the noun is not plentiful accessory, say "You can only carry one item at a time without proper [unless the class of the player is living sex doll]use of your [end if]hands!" instead.

Check taking something when the available arms of the player is 0:
	if takingStuff is false, say "You can't take [NameDesc of the noun] - your arms are already occupied this round!" instead.

Check dropping something when the player is not able to use their hands:
	if there is a worn bag of holding and the noun is in-bag, say "You can't even reach into your bag right now..." instead.

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
	unless the location of the player is guarded:
		compute stealing of the noun;
		if shopkeeper is in the location of the player and shopkeeper is not interested:
			now the boredom of shopkeeper is 0; [Just in case]
			check perception of shopkeeper.

Report dropping stolen thing while the player is in Dungeon41:
	if shopkeeper is alive and shopkeeper is undefeated, now the noun is store.
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

Taking ends here.
