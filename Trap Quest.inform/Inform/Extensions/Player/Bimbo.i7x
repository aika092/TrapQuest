Bimbo by Player begins here.

[
The bimbo rating of the player indicates how much of a bimbo the player is.
Bimbo is a combination of the specific orifice sex addictions, as well as the semen addiction, sex addiction, heel skill, the bimbo-influence of any clothing worn (including piercings), plus cursed piercings.
]

[!<DecideWhichNumberIsTheBimboInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the bimbo-influence of (C - a thing):
	decide on 0.

[!<recentBimbo:Integer>*

REQUIRES COMMENTING

*!]
Recent-bimbo is a number that varies.

[!<DecideWhichNumberIsTheBimboOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the bimbo of the player:
	decide on saved-bimbo.

[!<DecideWhichNumberIsTheFlatBimboOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the flat bimbo of the player:
	let S be 0;
	if the player is male, now S is (the anal sex addiction of the player + the oral sex addiction of the player) / 2;
	otherwise now S is (the anal sex addiction of the player + the vaginal sex addiction of the player + the oral sex addiction of the player) / 3;
	let B be (the semen addiction of the player + (the sex addiction of the player * 2) + S + the raw heel skill of the player + the delicateness of the player) / 5;
	repeat with C running through worn wearthings:
		increase B by the bimbo-influence of C;
		if C is cursed piercing, increase B by 1;
	if mindbreak protection is 1 and B > 16, now B is 16;
	if B < 1, now B is 1;
	if B > 20, now B is 20;
	now recent-bimbo is B;
	decide on B.

[!<DecideWhichNumberIsTheFlatDiaperBimboOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the flat diaper bimbo of the player:
	let B be (the sex addiction of the player + (the diaper addiction of the player * 2) + the delicateness of the player - the raw heel skill of the player) / 5;
	if mindbreak protection is 1 and B > 16, decide on 16;
	if B < 1, decide on 1;
	if B > 20, decide on 20;
	now recent-bimbo is B;
	decide on B.

Bimbo ends here.
