Deploying by Rooms begins here.

[!<DeployObjectInRoom>+

REQUIRES COMMENTING

+!]
To deploy (O - an object) in (G - a room):
	do nothing.

[!<DeployTrapInRoom>+

REQUIRES COMMENTING

+!]
To deploy (T - a trap) in (G - a room):
	now T is in G;
	let R be a random number between 1 and 4;
	while T is triggerless:
		if R is 1 and T is potentially click, now T is click;
		if R is 2 and T is potentially wire, now T is wire;
		if R is 3 and T is potentially pressure, now T is pressure;
		if R is 4 and T is potentially sticky and G is in the Woods or G is in the Hotel or (T is glue trap and G is in the dungeon), now T is sticky;
		increase R by 1;
		if R is 5, now R is 1;
	if the player is female and T is dildo trap and a random number between 1 and 2 is 1, now T is vaginal;
	if T is wire or T is pressure, choose direction of T;
	if debugmode is 1, say "Deploying a [printed name of T] in [printed name of G].".

[!<DeployVineInRoom>+

REQUIRES COMMENTING

+!]
To deploy (T - a vine) in (G - a room):
	now T is in G;
	if debugmode is 1, say "Deploying a [printed name of T] in [printed name of G].";

[!<ChooseDirectionOfTrap>+

REQUIRES COMMENTING

+!]
To choose direction of (T - a trap):
	now neighbour finder is the location of T;
	now the trap-direction of T is a random N-viable direction;
	if debugmode is 1, say "Direction [trap-direction of T] chosen.".

[!<DeployTankInRoom>+

REQUIRES COMMENTING

+!]
To deploy tank in (G - a room):
	if debugmode is 1, say "Deploying a tank in [printed name of G][paragraph break]";
	let R be a random number between 1 and 3 - unlucky;
	if R is 1:
		now a random off-stage paddle trap is in G;
		if debugmode is 1, say "The tank is trapped with a paddle trap.[paragraph break]";
	let T be a random tank in Holding Pen;
	now the doses of T is a random number from 3 to 8;
	now T is in G.

[!<DeployBucketInRoom>+

REQUIRES COMMENTING

+!]
To deploy bucket in (G - a room):
	if debugmode is 1, say "Deploying a bucket in [printed name of G][paragraph break]";
	if the number of on-stage iron-maidens is 0:
		now a random off-stage iron-maiden is in G;
	let T be a random bucket in Holding Pen;
	now the doses of T is a random number from 3 to 8;
	now T is in G.

[!<DeployMinibarInRoom>+

REQUIRES COMMENTING

+!]
To deploy minibar in (G - a room):
	if debugmode is 1, say "Deploying a minibar in [printed name of G][paragraph break]";
	let T be a random minibar in Holding Pen;
	now T is in G.


Deploying ends here.
