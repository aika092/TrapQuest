Milk Taste Addiction by Player begins here.

Part 1 - Calculate Milk Taste Addiction

milk-drunk is a number that varies. [Used to track how much milk is in the player's digestive system]
milk-exercise-bonus is a number that varies. [Used to track how much milk has been digested and so should eventually contribute to strength and dex gain]

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

[!<YourselfIsCraving>+

REQUIRES COMMENTING

+!]
Definition: yourself is craving milk:
	let MTA be the milk taste addiction of the player;
	if MTA > 13 and cold milky > cold milky limit and cold milky <= MTA * cold milky addiction limit, decide yes;
	decide no.

Definition: yourself is desperately craving milk:
	let MTA be the milk taste addiction of the player;
	if MTA > 17 and cold milky > cold milky limit and cold milky <= MTA * cold milky addiction limit, decide yes;
	decide no.

Part 2 - Modify Milk Taste Addiction

[!<Player>@<rawMilkTasteAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw milk taste addiction. The raw milk taste addiction of the player is usually 1. [Min 1 Max 20]

To MilkTasteAddictUp (X - a number):
	if the raw milk taste addiction of the player < 20 and X > 0:
		say "You feel [if X > 1]much [end if]more [if the milk taste addiction of the player < 7]interested in drinking[otherwise if the milk taste addiction of the player < 14]keen to drink[otherwise]addicted to drinking[end if] [milk].";
		SilentlyMilkTasteAddictUp X.

To SilentlyMilkTasteAddictUp (X - a number):
	if the latex-transformation of the player > 4:
		now X is 0;
	while X > 0:
		decrease X by 1;
		if the raw milk taste addiction of the player < 20:
			increase the raw milk taste addiction of the player by 1.

To MilkTasteAddictDown (X - a number):
	if the raw milk taste addiction of the player > 1 and X > 0:
		say "You feel your [if the milk taste addiction of the player < 7]interest in drinking[otherwise if the milk taste addiction of the player < 14]desire to drink[otherwise]addiction to drinking[end if] [milk] [if X is 1][one of]gradually[or]slowly[cycling][otherwise][one of]quickly[or]rapidly[at random][end if] fading away.";
		SilentlyMilkTasteAddictDown X.

To SilentlyMilkTasteAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw milk taste addiction of the player > 1, decrease the raw milk taste addiction of the player by 1.

Milk Taste Addiction ends here.
