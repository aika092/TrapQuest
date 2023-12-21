Bukkake Traps by Traps begins here.

[!<BukkakeTrapDoor>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
A bukkake trap door is a kind of trap. There are 3 click bukkake trap doors.
To say ExamineDesc of (C - a bukkake trap door):
	say "A trap door that housed gallons of [semen] above it, [one of]waiting to cover some poor adventurer.[or]ready to shower an unsuspecting traveller.[or]that must have taken hundreds if not thousands of men to fill up. Or maybe one very impressive creature...[as decreasingly likely outcomes]".

This is the spawn initial dungeon bukkake traps rule:
	let R be a random click untrapped trappable placed labyrinth room;
	let T be a random off-stage prank trap;
	unless there is a prank trap in R or christmas content is 1, deploy T in R;
	if tough-shit is 1 and (bukkake fetish is 1 or watersports fetish is 1):
		now R is a random click untrapped trappable placed labyrinth room;
		now T is a random off-stage bukkake trap door;
		deploy T in R.
The spawn initial dungeon bukkake traps rule is listed in the set up dungeon traps rules.

This is the spawn initial woods bukkake traps rule:
	if bukkake fetish > 0 and christmas content is 0:
		let R be a random click untrapped trappable placed jungle room;
		let T be a random off-stage prank trap;
		unless there is a prank trap in R, deploy T in R.
The spawn initial woods bukkake traps rule is listed in the set up woods traps rules.

This is the spawn initial hotel bukkake traps rule:
	if christmas content is 0:
		let R be a random click untrapped trappable placed modern room;
		let T be a random off-stage prank trap;
		unless there is a prank trap in R, deploy T in R.
The spawn initial hotel bukkake traps rule is listed in the set up hotel traps rules.

This is the spawn initial mansion bukkake traps rule:
	if bukkake fetish > 0 and christmas content is 0:
		let R be a random trappable click untrapped placed haunted room;
		let T be a random off-stage prank trap;
		unless there is a prank trap in R, deploy T in R.
The spawn initial mansion bukkake traps rule is listed in the set up mansion traps rules.

[!<BukkakeTrapDoor>@<SayEnvironmentDesc>+

This is what is put in the room description when the trap is visible (revealed).

+@!]
To say EnvironmentDesc of (T - a bukkake trap door):
	say "A trap door hangs open in the ceiling. ".

To say ShortDesc of (T - a bukkake trap door):
	say "bukkake trap door".


To trigger (Y - a bukkake trap door):
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	if watersports fetish is 1 and a random number between 0 and bukkake fetish is 0:
		say "A trap door opens above your head, and a torrent of [urine] cascades down and over you.";
		AnnouncedSquirt urine on hair by 50;
		say "You feel utterly degraded inside.";
	otherwise:
		if the semen coating of face + the semen coating of breasts + the semen coating of belly + the semen coating of thighs < 30:
			say "A trap door opens above your head, and a deluge of a sticky translucent substance completely covers you. You squeak as you realise that this is a LOT of [semen]!";
		AnnouncedSquirt semen on hair by 50;
		if the player is naked, cutshow figure of bukkake door cutscene 1 for hair;
		say "[if the player is gendered male and the semen addiction of the player < 8]You've seen bukkakes like this before, but it's way less fun on the receiving end.[otherwise if the semen addiction of the player < 8]You've seen bukkakes before but this is ridiculous![otherwise]You've seen bukkakes like this before, but you never realised it would be so much fun![end if]";
	let R be a random number between 7 and 13;
	if the player is upright:
		if the living belt of sturdiness is worn and the living belt of sturdiness is not cursed:
			now R is -9999;
			if debuginfo > 0, say "[input-style]Remain upright check: living belt of sturdiness = automatic success[roman type][line break]";
		otherwise if debuginfo > 0:
			say "[input-style]Remain upright check: strength ([Strength of the player]) - weight [weight of the player] = [Strength of the player - weight of the player] | ([R].5) d7+6.5 deluge difficulty[roman type][line break]";
	unless R < strength of the player - the weight of the player or the player is prone:
		say "The weight of the deluge forces you onto your knees. ";
		try kneeling;
	repeat with M running through reactive monsters:
		say BukkakeDoorTrapReactFlav of M.

To say BukkakeDoorTrapReactFlav of (M - a monster):
	say NastyTrapReactFlav of M.


A prank trap is a kind of trap. There are 15 click prank traps.
A prank trap can be jack-in-the-box, boxing-glove, electric-shock or bukkake-hose (this is the prank-type property).
To say ExamineDesc of (C - a prank trap):
	if C is bukkake-hose:
		say "A hose that was hidden inside a container, waiting to cover someone in [if bukkake fetish is 1][semen] or [end if]water.";
	otherwise if C is electric-shock:
		say "The latch of this container was electrified, waiting for someone to touch it and get shocked.";
	otherwise if C is boxing-glove:
		say "A boxing glove on a mechanical arm, that was waiting to punch someone in the gut.";
	otherwise if C is jack-in-the-box:
		say "A loud scary Jack-in-the-box, that was waiting to make someone jump in shock.".

To deploy (T - a prank trap) in (G - a room):
	now T is in G;
	now T is click;
	now the click-trigger of T is a random untrapped container in the location of T;
	if the click-trigger of T is nothing, now the click-trigger of T is a random container in the location of T;
	let R be a random number between 1 and 4;
	if R is 1:
		now T is jack-in-the-box;
	otherwise if R is 2:
		now T is boxing-glove;
	otherwise if R is 3:
		now T is electric-shock;
	otherwise if R is 4:
		now T is bukkake-hose;
	if debugmode is 1, say "Deploying a [printed name of T] in [printed name of G].".

Figure of Hose Cutscene 1 is the file "Special/Cutscene/cutscene-hose1.png".

To trigger (Y - a prank trap):
	now the reset-timer of Y is 250;
	now Y is not untriggered;
	now Y is revealed;
	now Y is expired;
	if Y is bukkake-hose:
		let X be 10 - (a random number between 6 and the dexterity of the player);
		if X < 2, now X is 2;
		if a random number between 0 and bukkake fetish is 1:
			say "A hose hidden inside the container suddenly starts spraying out [semen]. It gets all over your face[if the largeness of breasts > 5] and chest area[end if]!";
			cutshow figure of hose cutscene 1 for face;
			if the largeness of breasts > 5:
				AnnouncedSquirt semen on face by X / 2;
				UnannouncedSquirt semen on breasts by X / 2;
			otherwise:
				AnnouncedSquirt semen on face by X;
			repeat with M running through reactive monsters:
				say BukkakeHoseTrapReactFlav of M;
		otherwise:
			if X < 3, now X is 3;
			say "A hose hidden inside the container suddenly starts spraying out ice cold water right into your face!";
			cutshow figure of water bomb cutscene 1 for face;
			FearUp 5;
			AnnouncedSquirt water on face by X * 10;
			force cool down 2000;
	otherwise if Y is electric-shock:
		say "Suddenly, the latch you are touching becomes electrified![line break][italic type]ZZZZZZZZZZZZZZT![roman type][line break]You get a painful electric shock shooting up your fingers! You let go, but not before experiencing a nasty sharp pain.";
		PainUp 18;
	otherwise if Y is boxing-glove and the pregnancy of the player is not 1 and the pregnancy of the player is not 2: [let's not have a Falcon Punch possible]
		say "Suddenly, a big red boxing glove on a mechanic arm shoots out and punches you straight in your [BellyDesc]!";
		if the player is able to eventually expel:
			if the total squirtable fill of belly > 0:
				compute enema leaking with reason "Your colon spasms in pain,";
				UnflinchingPainUp 6;
			otherwise if diaper messing >= 3 and rectum > 1 and there is worn soilable knickers:
				say "Your colon spasms in pain! ";
				let C be a random glued sex toy penetrating asshole;
				if C is a thing, compute enema vs glue pressure of C;
				if the player is able to expel, compute messing;
				UnflinchingPainUp 6;
			otherwise:
				PainUp 6;
		otherwise:
			PainUp 6;
	otherwise:
		say "Suddenly, a giant clown doll bursts out of the container, making an extremely loud noise as it does!";
		FearUp 12 with reason "You gasp with surprise,".




To say BukkakeHoseTrapReactFlav of (M - a monster):
	say NastyTrapReactFlav of M.

Bukkake Traps ends here.
