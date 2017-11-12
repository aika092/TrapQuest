Taking by Actions begins here.

[!<CheckTakingSomething>+

REQUIRES COMMENTING

+!]
Check taking something:
	if the noun is carried by the player or the noun is worn by the player, say "You already have that!" instead;
	if the player is trap stuck, say "You can't reach whilst stuck on the [if there is a trap penetrating a fuckhole][random trap penetrating a fuckhole][otherwise]trap[end if]!" instead;
	if the player is live fucked, say "You're a bit busy getting fucked!" instead;
	if the player is flying, say "You try to roll around in the air and reach down to the ground, but your [BreastDesc] and [BellyDesc] simply float you back around until you're face up, your balloon-boobs bouncing gently against the ceiling. You feel your nipples perk up at the unexpected contact. [if the bimbo of the player < 8][first custom style]Just when I thought I couldn't look any more ridiculous...[otherwise if the bimbo of the player < 13][second custom style]I'd better be careful, or I'm going to turn myself on![otherwise]Hee hee, even the ceiling wants to touch my boobies![roman type] You manage to flip yourself around so your back and butt are pressing up against the ceiling. You stare down at the floor below you, at your equipment strewn all around, out of reach. [variable custom style]How embarrassing![roman type]" instead;
	if the noun is stuck, say "That's stuck in place!" instead;
	if the class of the player is living sex doll and the number of things carried by the player > 0, say "You can only carry one item at a time without proper hands!" instead;
	if there is a worn tethering lipstick collar, say "You won[']t be able to reach it with the chain trying to pull you out of the room!" instead;
	if the player is wrist bound and there is a worn heels and the player is upright:
		let X be the trip hazard of the player;
		let D be a random number between 0 and 17; [NB dexterity is NOT used here, only when dealing with monsters and traps.]
		if debugmode is 1, say "Walking attempt: Player ([D].5 | [X] Heels)[line break]";
		if D < X:
			say "As you try to bend over, you slip and fall!";
			now seconds is 1;
			try kneeling instead.

[!<CheckTakingAnAccessory>+

REQUIRES COMMENTING

+!]
Check taking an accessory:
	if the noun is held by the player or the noun is worn by the player:
		repeat with C running through open containers in the location of the player:
			repeat with A running through accessories in C:
				if the price of the noun is the price of A and the accessory-colour of A is the accessory-colour of the noun and A is not worn by the player, try taking A instead;
		repeat with A running through accessories in the location of the player:
			if the price of the noun is the price of A and the accessory-colour of A is the accessory-colour of the noun, try taking A instead.

[!<CheckTakingStoreClothingWhileThePlayerIsInDungeon41AndDungeon41IsGuarded>+

REQUIRES COMMENTING

+!]
Check taking store clothing while the player is in Dungeon41 and Dungeon41 is guarded:
	unless a random shopkeeper is mating or there is held stolen clothing:
		if there is held store clothing, say "[one of][first custom style]'Please only consider one item of clothing at a time, or we'll all get confused.  And we don't offer change here.'[roman type][line break]What a cheeky way of running a business!  He seems serious though, so you decide to leave it alone.[or]You remember the strict rules about only considering one item at a time and decide to leave it alone.[stopping]" instead.

[!<ReportTakingStoreClothing>+

REQUIRES COMMENTING

+!]
Report taking store clothing:
	unless the location of the player is guarded, now the noun is stolen.

[!<ReportWearingStoreClothingWhileDungeon41IsNotGuarded>+

REQUIRES COMMENTING

+!]
Report wearing store clothing while Dungeon41 is not guarded:
	now the noun is stolen.

[!<ReportDroppingStolenClothingWhileThePlayerIsInDungeon41>+

REQUIRES COMMENTING

+!]
Report dropping stolen clothing while the player is in Dungeon41:
	now the noun is store.
Understand "t [something]", "ta [something]" as taking.

[!<CheckTakingVessel>+

REQUIRES COMMENTING

+!]
[Check taking vessel:
	repeat with V running through carried vessels:
		if the text-shortcut of V is the text-shortcut of the noun, say "Carrying two of the same vessel might get confusing.  You decide against it." instead.]

[!<ReportTakingSomething>+

REQUIRES COMMENTING

+!]	
Report taking something:
	now seconds is 2.


Taking ends here.
