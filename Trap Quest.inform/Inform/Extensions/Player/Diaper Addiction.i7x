Diaper Addiction by Player begins here.

Part 1 - Calculate Diaper Addiction


[!<DecideWhichNumberIsTheDiaperAddictionInfluenceOfWearThing>+

REQUIRES COMMENTING

+!]
To decide which number is the diaper-addiction-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheDiaperAddictionInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the diaper-addiction-influence of (C - a clothing):
	if C is diaper-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted diaper addiction]
		decide on S;
	decide on 0.

[!<DecideWhichNumberIsTheDiaperAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the diaper addiction of the player: [How much do they enjoy using diapers?]
	let B be the raw diaper addiction of the player;
	repeat with C running through worn wearthings:
		increase B by the diaper-addiction-influence of C;
	if B < 1, decide on 1;
	if B > 20, decide on 20;
	decide on B.
	
Part 2 - Modify Diaper Addiction


[!<Player>@<rawDiaperAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw diaper addiction. The raw diaper addiction of the player is usually 1. [Min 1 Max 20]

[!<DiaperAddictUpX>+

REQUIRES COMMENTING

+!]
To DiaperAddictUp (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw diaper addiction of the player < 20:
			increase the raw diaper addiction of the player by 1.

[!<DiaperAddictDownX>+

REQUIRES COMMENTING

+!]
To DiaperAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw diaper addiction of the player > 1, decrease the raw diaper addiction of the player by 1.




Diaper Addiction ends here.

