Milk Taste Addiction by Player begins here.

Part 1 - Calculate Milk Taste Addiction

[!<DecideWhichNumberIsTheMilkTasteAddictionInfluenceOfWearThing>+

REQUIRES COMMENTING

+!]
To decide which number is the milk-taste-addiction-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheMilkTasteAddictionInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the milk-taste-addiction-influence of (C - a clothing):
	if C is milk-taste-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted milk addiction]
		decide on S;
	decide on 0.

[!<DecideWhichNumberIsTheMilkTasteAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the milk taste addiction of the player:
	let S be the raw milk taste addiction of the player;
	repeat with C running through worn wearthings:
		increase S by the milk-taste-addiction-influence of C;
	if S > 20, decide on 20;
	if S < 1, decide on 1;
	decide on S.

Part 2 - Modify Milk Taste Addiction


[!<Player>@<rawMilkTasteAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw milk taste addiction.  The raw milk taste addiction of the player is usually 1. [Min 1 Max 20]

[!<MilkTasteAddictUpX>+

REQUIRES COMMENTING

+!]
To MilkTasteAddictUp (X - a number):
	if the latex-transformation of the player > 4:
		now X is 0;
	while X > 0:
		decrease X by 1;
		if the raw milk taste addiction of the player < 20:
			increase the raw milk taste addiction of the player by 1.

[!<MilkTasteAddictDownX>+

REQUIRES COMMENTING

+!]
To MilkTasteAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw milk taste addiction of the player > 1, decrease the raw milk taste addiction of the player by 1.



Milk Taste Addiction ends here.
