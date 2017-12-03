Wasp Cloud by Equippables begins here.

A wasp-cloud is a kind of equippable. There is 1 wasp-cloud. A wasp-cloud is usually unique. A wasp-cloud is usually slap ready. A wasp-cloud is usually manly. A wasp-cloud is usually biological. A wasp-cloud has a number called swarm. Understand "wasp", "cloud", "swarm" as wasp-cloud. A wasp-cloud is usually projectile.

The printed name of wasp-cloud is usually "[TQlink of item described][clothing-title-before]wasp cloud[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of wasp-cloud is "wac". 

To say ClothingDesc of (W - a wasp-cloud):
	say "A [if the swarm of W > 19]titanic [otherwise if the swarm of W > 15]massive [otherwise if the swarm of W > 11]enormous [otherwise if the swarm of W > 8]huge [otherwise if the swarm of W > 5]large [otherwise][end if] swarm of wasps buzzes [if the swarm of W > 14]loudly [end if]around you.".
To say ShortDesc of (W - a wasp-cloud):
	say "swarm of wasps".
	
To compute periodic effect of (W - a wasp-cloud):
	let S be the swarm of W;
	if S > 20:
		now S is 20;
	if S <= 0:
		do nothing;
	otherwise if a random number between S and 20 > (total-wasps / 10) or S is 20:
		if a random number between 1 and 4 is 1:
			say "You hear the buzzing around you slightly fade as some of your wasps drop dead.";
			decrease the swarm of W by 1.
			
To compute attack effect of (W - a wasp-cloud):
	if a random number between 1 and 2 is 1:
		say "Some of your wasps die in the effort of attacking!";
		decrease the swarm of W by 1.
		
To decide which number is the damage improvement of (W - a wasp-cloud):
	let X be 0;
	increase X by the swarm of W / 2;
	decide on X;
	
Definition: a wasp-cloud is removable:
	if there is a worn wasp-antennae:
		decide no.

To compute attack of (W - a wasp-cloud) at (M - a monster):
	say "Your cloud of wasps charges at [M], brutally stinging them!".

To set up magic state of (W - a wasp-cloud):
	do nothing.


Wasp Cloud ends here.
