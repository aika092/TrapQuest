Bukkake Traps by Traps begins here.


[!<BukkakeTrapDoor>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
A bukkake trap door is a kind of trap. There are 3 click bukkake trap doors. The description of a bukkake trap door is "A trap door that housed gallons of [semen] above it, [one of]waiting to cover some poor adventurer.[or]ready to shower an unsuspecting traveller.[or]that must have taken hundreds if not thousands of men to fill up. Or maybe one very impressive creature...[as decreasingly likely outcomes]".

[!<TheSpawnInitialDungeonBukkakeTrapsRule>+

REQUIRES COMMENTING

+!]
This is the spawn initial dungeon bukkake traps rule:
	if bukkake fetish > 0:
		let R be a random click untrapped trappable placed labyrinth room;
		let T be a random off-stage bukkake trap door;
		if tough-shit is 1, deploy T in R;
		repeat with N running from 1 to 2:
			let R be a random click untrapped trappable placed labyrinth room;
			let T be a random off-stage bukkake hose;
			unless there is a bukkake hose in R, deploy T in R.
The spawn initial dungeon bukkake traps rule is listed in the set up dungeon traps rules.

[!<TheSpawnInitialWoodsBukkakeTrapsRule>+

REQUIRES COMMENTING

+!]
This is the spawn initial woods bukkake traps rule:
	if bukkake fetish > 0:
		repeat with N running from 1 to 2:
			let R be a random click untrapped trappable placed jungle room;
			let T be a random off-stage bukkake hose;
			unless there is a bukkake hose in R, deploy T in R.
The spawn initial woods bukkake traps rule is listed in the set up woods traps rules.

[!<TheSpawnInitialHotelBukkakeTrapsRule>+

REQUIRES COMMENTING

+!]
This is the spawn initial hotel bukkake traps rule:
	if bukkake fetish > 0:
		repeat with N running from 1 to 2:
			let R be a random click untrapped trappable placed modern room;
			let T be a random off-stage bukkake hose;
			unless there is a bukkake hose in R, deploy T in R.
The spawn initial hotel bukkake traps rule is listed in the set up hotel traps rules.

[!<TheSpawnInitialMansionBukkakeTrapsRule>+

REQUIRES COMMENTING

+!]
This is the spawn initial mansion bukkake traps rule:
	if bukkake fetish > 0:
		repeat with N running from 1 to 3:
			let R be a random trappable click untrapped placed haunted room;
			let T be a random off-stage bukkake hose;
			unless there is a bukkake hose in R, deploy T in R.
The spawn initial mansion bukkake traps rule is listed in the set up mansion traps rules.

[!<BukkakeTrapDoor>@<SayShortDesc>+

REQUIRES COMMENTING

+@!]
To say ShortDesc of (T - a bukkake trap door):
	say "A trap door hangs open in the ceiling. ".

[!<BukkakeHose>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
A bukkake hose is a kind of trap. There are 10 click bukkake hoses. The description of a bukkake hose is "A hose that was hidden inside a container, waiting to cover someone in [semen].".

[!<BukkakeTrapDoor>@<Trigger>+

REQUIRES COMMENTING

+@!]
To trigger (Y - a bukkake trap door):
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	if watersports fetish is 1 and a random number between 1 and 2 is 1:
		say "A trap door opens above your head, and a torrent of [urine] cascades down and over you. You have just been completely drenched in [urine]! You feel utterly degraded inside.";
		squirt urine on face by 50;
		reset soak flavour;
	otherwise:
		if the semen coating of face + the semen coating of breasts + the semen coating of belly + the semen coating of thighs < 30:
			say "A trap door opens above your head, and a deluge of a sticky translucent substance completely covers you. You squeak as you realise that this is a LOT of [semen] - and you're now covered in it from head to toe! [if player is male and the raw semen addiction of the player < 8]You've seen bukkakes like this before, but it's way less fun on the receiving end.[otherwise if the raw semen addiction of the player < 8]You've seen bukkakes before but this is ridiculous![otherwise]You've seen bukkakes like this before, but you never realized it would be so much fun![end if]";
		otherwise:
			say "A trap door opens above your head, and more [semen] falls down all over you. Of course since you're basically completely drenched already, it all just drips off you slowly. Think of it as a fresh coat of paint.";
		CumFaceUp 50;
		if the number of worn nudism-disabling clothing is 0 and image cutscenes is 1, display figure of bukkake door cutscene 1;
	let R be a random number between 7 and 13;
	if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed, now R is -9999;
	if debugmode is 1, say "Player [Strength of the player - weight of the player] |  [R].5 Bukkake[paragraph break]";
	unless R < strength of the player - the weight of the player or the player is prone:
		say "The weight of the deluge forces you onto your knees. ";
		try kneeling.

[!<BukkakeHose>@<Trigger>+

REQUIRES COMMENTING

+@!]
To trigger (Y - a bukkake hose):
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	let X be 10 - (a random number between 6 and the dexterity of the player);
	if X < 2, now X is 2;
	say "A hose hidden inside the container suddenly starts spraying out [semen]. It gets all over your face[if the largeness of breasts > 5] and [BreastDesc][end if]!";
	if image cutscenes is 1, display figure of hose cutscene 1;
	let Z be X / 2;
	if the largeness of breasts > 5:
		CumFaceUp Z;
		CumTitsUp Z;
	otherwise:
		CumFaceUp X.
		


Bukkake Traps ends here.

