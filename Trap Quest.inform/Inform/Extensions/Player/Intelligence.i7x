Intelligence by Player begins here.

Part 1 - Calculate Intelligence

[Phaos notes:
There are actually two intelligence stats that exist simultaneously. One is the base, objective intelligence, which is called "raw intelligence", and the other takes items and such into account.]

[!<DecideWhichNumberIsTheIntelligenceInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the intelligence-influence of (C - a thing):
	decide on 0.

[!<DecideWhichNumberIsTheIntelligenceInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the intelligence-influence of (C - a clothing):
	if C is intelligence-influencing:
		let S be 0;
		increase S by the magic-modifier of C;
		decide on S;
	decide on 0.

[!<DecideWhichNumberIsTheIntelligenceOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the intelligence of the player:
	if gameover-flag is 1, decide on saved-flat-intelligence;
	decide on saved-intelligence.

[!<DecideWhichNumberIsTheFlatIntelligenceOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the flat intelligence of the player:
	let I be the raw intelligence of the player;
	[decrease I by the blondeness of hair - natural blondeness;]
	if the player is fighting against no-panties, decrease I by 2;
	if the class of the player is cowgirl:
		decrease I by the raw sensitivity of breasts / 2;
	repeat with T running through worn wearthings:
		increase I by the intelligence-influence of T;
	decrease I by the incidents of enema-int-loss;
	decrease I by adult-baby-int * 3;
	decrease I by fullness-penalty;
	if the player is craving milk, decrease I by 4;
	if the player is desperately craving milk, decrease I by 2;
	increase I by the theme bonus of the intelligence theme rules;
	if the arousal of the player >= 5000, decrease I by (the arousal of the player - 2000) / 3000;
	increase I by ((strawberry-lace-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	increase I by ((magic-smarts-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	if the the boost-cooldown of nurse > 0 and the boost-int-drain of nurse > 0, now I is I / 2;
	if toffee-poison-timer > 0, now I is I / 2;
	if (the bimbo of the player is 19 or hungover > 0 or the player is fighting against topless or the player is fighting against no-panties) and I > 5:
		now I is 5;
	if I > 2 and the bimbo of the player is 20 or the soreness of asshole is 10 or the soreness of vagina is 10 or the player is extremely horny:
		now I is 2;
	if temp_int_dam > 0, decrease I by temp_int_dam;
	now I is (I * (5 - alcohol-level)) / 5;
	if I < 1, decide on 1;
	if I > 30, decide on 30;
	decide on I.

[!<DecideWhichNumberIsTheStartingIntelligenceOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the starting intelligence of the player:
	decide on 7 + bonus intelligence + background-nurse - background-sporty.

Part 2 - Modify Intelligence

[!<Player>@<rawDexterity:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw intelligence. The raw intelligence of the player is usually 7. [Min 1 Max 30]

[!<Player>@<oldIntelligence:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called old intelligence. The old intelligence of the player is usually 0.

[!<IntUpX>+

REQUIRES COMMENTING

+!]
To Intup (X - a number):
	now the old intelligence of the player is saved-flat-intelligence;
	if the latex-transformation of the player > 6:
		now X is 0;
	while X > 0:
		decrease X by 1;
		if the raw intelligence of the player < 30:
			repeat with M running through alive monsters:
				if a random number between 1 and 2 is 1 and the questioned of M > 100:
					decrease the questioned of M by 100;
			increase the raw intelligence of the player by 1;
			if the class of the player is schoolgirl and the raw intelligence of the player < 15, increase the raw intelligence of the player by 1;[Dumb schoolgirls can double dip on intelligence gains.]
		if throbbing-tentacle is worn, compute intDrain of severed-tentacle.[once the tentacle wins, you can no longer gain intelligence]

[!<IntDownX>+

REQUIRES COMMENTING

+!]
To Intdown (X - a number):
	now the old intelligence of the player is saved-flat-intelligence;
	if X > 0, increase drain-duration by X;
	while X > 0:
		decrease X by 1;
		if forgetful airhead is 1:
			repeat with N running from 1 to the number of rows in the Table of Drinks:
				if Known in row N of Table of Drinks is 1:
					now Known in row N of Table of Drinks is 0;
					break;
			repeat with T running through revealed tripwire traps:
				now T is unrevealed;
		if the raw intelligence of the player > 1:
			decrease the raw intelligence of the player by 1;
		otherwise if the raw intelligence of the player is 1 and the raw sex addiction of the player is 20:
			decrease the raw intelligence of the player by 1. [One orgasm away from instant loss.]

Intelligence ends here.
