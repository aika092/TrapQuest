Stockings Framework by Stockings begins here.

A stockings is a kind of clothing. Understand "pair", "pair of" as stockings. The printed name of stockings is usually "[TQlink of item described][clothing-title-before]pair of [clothing-material of the item described] stockings[clothing-title-after][TQxlink of item described][verb-desc of item described]". A stockings is usually sheer. The soak-limit of stockings is usually 10.

Report examining stockings:
	if the number of worn stockings is 0 and newbie tips is 1, say "Stockings and socks make wearing heels more comfortable, and therefore slightly improve your ability to walk in them[unless the noun is socks]. Stockings also improve your knee damage[end if].".

To decide which figure-name is target-stockings-figure:
	repeat with S running through worn stockings:
		decide on the clothing-image of S;
	decide on figure of cotton stockings.

To decide which number is the hindrance-modifier of (S - a stockings):
	let X be -1;
	decrease X by the magic-modifier of S;
	decide on X.

To uniquely set up (H - a stockings):
	let R be a random number between 1 and 7;
	if R is 1, now the magic-type of H is confidence;
	if R is 2, now the magic-type of H is endurance;
	if R is 3, now the magic-type of H is posture training;
	if R is 4, now the magic-type of H is stumbling;
	if R is 3 or R is 4, curse H.
	
To decide which number is the original price of (C - a stockings):
	if C is mesh, decide on 2;
	if C is latex, decide on 1;
	decide on 3;

To decide which number is the knee-modifier of (S - a wearthing):
	decide on 0.

To decide which number is the knee-modifier of (S - a stockings):
	let A be the magic-modifier of S;
	decide on A.

To restock (C - a stockings):
	let B be a random basic loot stockings;
	if B is stockings, now B is in Standard Item Pen.

To set up influence of (C - a stockings):
	set up random-based influence of C.

To say ShortDesc of (C - a stockings):
	say "pair of stockings".

To say ShortestDesc of (C - a stockings):
	say "pair of stockings".

This is the setup starting stockings rule:
	let C be a random stockings;
	restock C.
The setup starting stockings rule is listed in the setup starting items rules.

To decide which object is the coverer of (C - a stockings):
	repeat with R running through worn leg covering crotch-in-place clothing:
		if R is trousers or R is overdress, decide on R;
	decide on nothing.

To decide which object is the concealer of (C - a stockings):
	repeat with R running through worn actually dense crotch-in-place leg covering clothing:
		if R is trousers or R is overdress, decide on R;
	decide on nothing.

This is the remove inappropriate stockings rule:
	repeat with B running through latex stockings:
		now B is in Holding Pen;
	repeat with B running through mesh stockings:
		now B is in Holding Pen.
The remove inappropriate stockings rule is listed in the diaper quest fix rules.

Definition: a stockings (called C) is ingredient:
	decide yes.

To decide which number is the crafting key of (C - a stockings):
	decide on 53. [TODO socks are separate ingredient]

Part - Socks

A socks is a kind of stockings. The printed name of socks is usually "[TQlink of item described][clothing-title-before]pair of [clothing-material of the item described] socks[clothing-title-after][TQxlink of item described][verb-desc of item described]". A socks is usually dense. A socks is usually unique.

To decide which number is the knee-modifier of (S - a socks):
	decide on 0.

To say ShortDesc of (C - a socks):
	say "pair of knee high socks".

To say ShortestDesc of (C - a stockings):
	say "pair of socks".


Part - Wearability

stockings wearability rules is a rulebook. The wearability rules of stockings is usually stockings wearability rules.

This is the stockings already worn rule:
	repeat with O running through worn stockings:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The stockings already worn rule is listed in the stockings wearability rules.

This is the stockings leg covering clash rule:
	if wearing-target is exclusive leg covering clothing:
		repeat with O running through worn stockings:
			if summoning is 0, say "You can't wear that because it's exclusive, and you're already wearing the [O]!";
			rule fails.
The stockings leg covering clash rule is listed in the global wearability rules.

This is the shoes stockings clash rule:
	if wearing-target is stockings:
		repeat with O running through worn shoes:
			if summoning is 0:
				say "You can't wear that over the [O]!";
				rule fails.
The shoes stockings clash rule is listed in the stockings wearability rules.

This is the leg covering stockings clash rule:
	if wearing-target is stockings:
		repeat with O running through worn leg covering clothing:
			if summoning is 0, say "You can't wear that over the [O]!";
			rule fails.
The leg covering stockings clash rule is listed in the stockings wearability rules.

Check taking off stockings:
	if there are worn shoes, say "You need to take off your [random worn shoes] first." instead;
	repeat with L running through worn leg covering clothing:
		unless L is the noun, say "You need to take off your [L] first." instead;
	if the player is prone, say "You need to be standing up really." instead.

stockings removability rules is a rulebook. The removability rules of stockings is usually stockings removability rules.

This is the cursed stockings prevents removal of stockings rule:
	repeat with C running through worn cursed stockings:
		if summoning is 0:
			say "Your [C] are somehow preventing you!";
			rule fails.
The cursed stockings prevents removal of stockings rule is listed in the stockings removability rules.

This is the worn shoes prevents removal of stockings rule:
	repeat with C running through worn shoes:
		if summoning is 0, say "You would need to remove your [C] first.";
		rule fails.
The worn shoes prevents removal of stockings rule is listed in the stockings removability rules.

This is the worn leg covering clothing prevents removal of stockings rule:
	repeat with C running through worn leg covering clothing:
		unless C is wearing-target:
			if summoning is 0, say "You would need to remove your [C] first.";
			rule fails.
The worn leg covering clothing prevents removal of stockings rule is listed in the stockings removability rules.


Stockings Framework ends here.

