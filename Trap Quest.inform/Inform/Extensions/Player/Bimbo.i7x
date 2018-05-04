Bimbo by Player begins here.


[The bimbo rating of the player indicates how much of a bimbo the is.
 bimbo can vary between 1 and 20.
 sex addiction also varies between 1 and 20.
 semen addiction and semen taste addiction vary between 1 and 20.
 delicateness varies between 1 and 20. (It's calculated here.)
 bimbo is a combination of the openness of the asshole, and either the
 openness of the vagina or the smallness of the penis,  as well as the
 semen addiction, sex addiction, heel skill, the bimbo-influence of
 any clothing worn (including piercings), plus cursed piercings.
 humiliation varies between 0 and 40000.
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
	if saved-bimbo < 0:
		if diaper quest is 1, now saved-bimbo is the flat diaper bimbo of the player;
		otherwise now saved-bimbo is the sex addiction of the player;
	decide on saved-bimbo.

[!<DecideWhichNumberIsTheFlatBimboOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the flat bimbo of the player:
	let S be 0;
	if the player is male, now S is the openness of asshole + 10 - the size of penis;
	otherwise now S is the openness of asshole + the openness of vagina;
	let B be (the semen addiction of the player + (the sex addiction of the player * 2) + S + the raw heel skill of the player) / 5 + the delicateness of the player / 5;
	repeat with C running through worn wearthings:
		increase B by the bimbo-influence of C;
		if C is cursed piercing, increase B by 1;
	if mindbreak protection is 1 and B > 16, decide on 16;
	if B < 1, decide on 1;
	if B > 20, decide on 20;
	now recent-bimbo is B;
	decide on B.

[!<DecideWhichNumberIsTheFlatDiaperBimboOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the flat diaper bimbo of the player:
	let B be (the sex addiction of the player + (the diaper addiction of the player * 2) - the raw heel skill of the player + the delicateness of the player) / 5;
	if mindbreak protection is 1 and B > 16, decide on 16;
	if B < 1, decide on 1;
	if B > 20, decide on 20;
	now recent-bimbo is B;
	decide on B.

Bimbo ends here.

