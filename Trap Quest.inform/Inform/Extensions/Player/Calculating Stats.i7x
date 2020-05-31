Calculating Stats by Player begins here.

[!<DecideWhichNumberIsNScaled>+

REQUIRES COMMENTING

+!]
To decide which number is (N - a number) scaled:
	if N <= 5, decide on N;
	if N <= 20, decide on 5 + (((N - 5) * 2) / 3);
	decide on 15 + ((N - 20) / 2).

Book - Strength

Part 1 - Calculate Strength

[!<DecideWhichNumberIsTheStrengthInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the strength-influence of (C - a thing):
	decide on 0.

[!<DecideWhichNumberIsTheStrengthInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the strength-influence of (C - a clothing):
	if C is strength-influencing:
		let S be 0;
		increase S by the magic-modifier of C;
		decide on S;
	decide on 0.

[!<DecideWhichNumberIsTheStrengthInfluenceOfKickingClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the strength-influence of (C - a kicking clothing):
	let S be 1;
	increase S by the magic-modifier of C;
	decide on S.

[!<DecideWhichNumberIsTheStrengthInfluenceOfConstrictionClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the strength-influence of (C - a constriction clothing):
	let S be -1;
	increase S by the magic-modifier of C;
	decide on S.

[!<DecideWhichNumberIsTheStrengthOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the strength of the player:
	decide on saved-strength.

[!<DecideWhichNumberIsTheFlatStrengthOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the flat strength of the player:
	let S be the raw strength of the player;
	increase S by the virgin bonus of the player;
	increase S by diaper bonus;
	increase S by fetish-bonus of the player;
	repeat with C running through worn wearthings:
		increase S by the strength-influence of C;
	if the class of the player is priestess:
		decrease S by 1;
	[decrease S by the brightness of hair - natural brightness;]
	if the player is thirsty, decrease S by the thirst of the player - 2;
	if the player is hungry, decrease S by 2;
	decrease S by the incidents of enema-stat-loss;
	if the class of the player is cowgirl:
		if the milk volume of breasts > 10, increase S by 1;
		if the milk volume of breasts > 20, increase S by 1;
		if the milk volume of breasts > 25, increase S by 1;
		if the milk volume of breasts > 30, increase S by 1;
		if the milk volume of breasts > 34, increase S by 1;
		if the milk volume of breasts > 37, increase S by 1;
		if the milk volume of breasts > 40, increase S by 1;
	if the class of the player is bunny, increase S by the total squirtable fill of belly / 5;
	if the class of the player is symbiote:
		if the player is a bit horny, increase S by 1;
		if the player is horny, increase S by 1;
		if the player is very horny, increase S by 1;
		if the player is extremely horny, increase S by 5;
	if strength-timer of strength-tincture > 0:
		increase S by strength-bonus of strength-tincture;
	increase S by fullness-bonus;
	increase S by the theme bonus of the strength theme rules;
	increase S by ((pink-nougat-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	increase S by ((magic-strength-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	decrease S by ((liquorice-timer + default-candy-duration - 1) / default-candy-duration) * 1;
	if the the boost-cooldown of nurse > 0, increase S by 2;
	if cookie-poison-timer > 0, now S is S / 2;
	if wasp-poison-timer > 0, decrease S by wasp-poison-timer / 30;
	increase S by the number of worn piercings;
	if temp_str_dam > 0, decrease S by temp_str_dam;
	if S < 1, decide on 1;
	if S > 30, decide on 30;
	decide on S.

[!<DecideWhichNumberIsTheStartingStrengthOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the starting strength of the player:
	decide on 7 + bonus strength + background-sporty.

Part 2 - Modify Strength

[!<Player>@<rawStrength:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw strength. The raw strength of the player is usually 7. [Min 1 Max 30]

[!<Player>@<oldStrength:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called old strength. The old strength of the player is usually 0.

Definition: yourself is deserving of more strength:
	let R be a random number between -3 and 56;
	let S be the flat strength of the player;
	if debuginfo > 0, say "[input-style]Strength buff check: d60-4([R]) | ([S].5) player strength[roman type][line break]";
	if R > S, decide yes;
	decide no.

[!<StrengthUpX>+

REQUIRES COMMENTING

+!]
To StrengthUp (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw strength of the player < 30, increase the raw strength of the player by 1.

[!<StrengthDownX>+

REQUIRES COMMENTING

+!]
To StrengthDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw strength of the player > 1, decrease the raw strength of the player by 1.

Book - Dexterity

Part 1 - Calculate Dexterity

[!<DecideWhatNumberIsTheDexterityInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide what number is the dexterity-influence of (C - a thing):
	decide on 0.

[!<DecideWhichNumberIsTheDexterityInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the dexterity-influence of (C - a clothing):
	if C is dexterity-influencing:
		let S be 0;
		increase S by the magic-modifier of C;
		decide on S;
	decide on 0.

[!<DecideWhatNumberIsTheDexterityInfluenceOfPostureTrainingClothing>+

REQUIRES COMMENTING

+!]
To decide what number is the dexterity-influence of (C - a posture training clothing):
	let D be -1;
	increase D by the magic-modifier of C;
	decide on D.

[!<DecideWhichNumberIsTheDexterityOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the dexterity of the player:
	decide on saved-dexterity.

[!<DecideWhichNumberIsTheFlatDexterityOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the flat dexterity of the player:
	let D be the raw dexterity of the player;
	increase D by the virgin bonus of the player;
	increase D by diaper bonus;
	increase D by fetish-bonus of the player;
	decrease D by the semen coating of thighs / 3;
	increase D by the theme bonus of the dexterity theme rules;
	repeat with C running through worn wearthings:
		increase D by the dexterity-influence of C;
	if the class of the player is cheerleader:
		increase D by the blondeness of hair;
	if the class of the player is priestess:
		increase D by 1;
	[decrease D by the redness of hair - natural redness;]
	if the player is blinded, decrease D by 2;
	decrease D by the bondage dexterity penalty of the player;
	if the player is bursting and the bladder of the player > 6, decrease D by (the bladder of the player - 6);
	if the player is craving semen, decrease D by 1;
	if the player is desperately craving semen, decrease D by 2;
	if the strut of the player is 1 and there is a worn heels and the player is upright, increase D by 3;
	if the player is a bit horny, increase D by 2;
	if the player is horny, increase D by 1;
	if the player is overly full and diaper quest is 0, decrease D by 2;
	if the player is overburdened, decrease D by 3;
	decrease D by the incidents of enema-stat-loss;
	if life-timer of life-elixir > 0, increase D by 10;
	if the class of the player is bunny and playerRegion is Woods, increase D by 3;
	if acceleration-timer of acceleration-tincture > 0:
		increase D by acceleration-bonus of acceleration-tincture;
	increase D by ((creme-egg-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	increase D by ((magic-speed-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	if the the boost-cooldown of nurse > 0, increase D by 2;
	if the size of penis > 3 and penis is penis-erect, decrease D by the size of penis / 3;
	if the silicone volume of breasts > 10 and the class of the player is silicone queen:
		increase D by 1;
		if the silicone volume of breasts > 18, increase D by 3;
	if fudge-poison-timer > 0, now D is D / 2;
	if cookie-poison-timer > 0, decrease D by 2;
	if wasp-honey-timer > 0, decrease D by wasp-honey-timer / 10;
	if the player is grossed out and D > 5:
		now D is 5;
	otherwise if the player is perturbed:
		decrease D by 2;
	if temp_dex_dam > 0, decrease D by temp_dex_dam;
	now D is (D * (5 - alcohol-level)) / 5;
	if D < 0, decide on 0;
	if D > 30, decide on 30;
	decide on D.

[!<DecideWhichNumberIsTheStartingDexterityOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the starting dexterity of the player:
	decide on 7 + bonus dexterity + background-waitress.

Part 2 - Modify Dexterity

[!<Player>@<rawDexterity:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw dexterity. The raw dexterity of the player is usually 7. [Min 1 Max 30]

[!<Player>@<oldDexterity:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called old dexterity. The old dexterity of the player is usually 0.

Definition: yourself is deserving of more dexterity:
	let R be a random number between -3 and 56;
	let D be the flat dexterity of the player;
	if debuginfo > 0, say "[input-style]Dexterity buff check: d60-4([R]) | ([D].5) player dexterity[roman type][line break]";
	if R > D, decide yes;
	decide no.

[!<DexUpX>+

REQUIRES COMMENTING

+!]
To Dexup (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw dexterity of the player < 30, increase the raw dexterity of the player by 1.

[!<DexDownX>+

REQUIRES COMMENTING

+!]
To Dexdown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw dexterity of the player > 1, decrease the raw dexterity of the player by 1.

Book - Intelligence

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

Definition: yourself is deserving of more intelligence:
	let R be a random number between -3 and 56;
	let S be the flat intelligence of the player;
	if debuginfo > 0, say "[input-style]Intelligence buff check: d60-4([R]) | ([S].5) player intelligence[roman type][line break]";
	if R > S, decide yes;
	decide no.

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

Book - Luck

[The idea here is that those 25% chances of good or bad things happening slightly even themselves out over time, since every time you get unlucky, your chances of getting unlucky go down, and vice versa.]

The player has a number called raw luck.

gotLucky is initially true. [The last time we checked luck, did the player get lucky? Sometimes it'll be easier to check a global variable.]
gotUnlucky is initially true. [The last time we checked bad luck, did the player get unlucky? Sometimes it'll be easier to check a global variable.]

To decide which number is the luck-influence of (C - a wearthing):
	if C is luck-influencing clothing, decide on the magic-modifier of C;
	decide on 0.

To decide which number is the luck of the player:
	let L be the raw luck of the player;
	increase L by green theme bonus;
	repeat with C running through worn wearthings:
		increase L by the luck-influence of C;
	if luck-timer of luck-tincture > 0, increase L by 25;
	increase L by the number of in-play trophies;
	decide on L.

Definition: yourself is getting lucky:
	let GL be 75 - the luck of the player;
	let R be a random number between 1 and 100;
	if debuginfo > 0, say "[input-style]Luck Roll: d100([R]) | ([GL].5) lucky threshold[roman type][line break]";
	if R > GL:
		if R > 75 - the raw luck of the player, decrease the raw luck of the player by 3; [raw luck only changes if the player's modifiers to luck didn't make any difference]
		now gotLucky is true;
		decide yes;
	otherwise:
		if R <= 75 - the raw luck of the player, increase the raw luck of the player by 1; [raw luck only changes if the player's modifiers to luck didn't make any difference]
		now gotLucky is false;
		decide no.

Definition: yourself is getting unlucky:
	let GL be 75 + the luck of the player;
	let R be a random number between 1 and 100;
	if debuginfo > 0, say "[input-style]Bad Luck Roll: d100([R]) | ([GL].5) bad luck threshold[roman type][line break]";
	if R > GL:
		if R > 75 + the raw luck of the player, increase the raw luck of the player by 3; [raw luck only changes if the player's modifiers to luck didn't make any difference]
		now gotUnlucky is true;
		decide yes;
	otherwise:
		if R <= 75 + the raw luck of the player, decrease the raw luck of the player by 1; [raw luck only changes if the player's modifiers to luck didn't make any difference]
		now gotUnlucky is false;
		decide no.

Definition: yourself is getting very lucky:
	if the player is getting lucky:
		if debuginfo > 0, say "[input-style]NOW CHECKING FOR *VERY* GOOD LUCK (i.e. a reroll):[roman type][line break]";
		if the player is getting lucky, decide yes;
	decide no.

Definition: yourself is getting very unlucky:
	if the player is getting unlucky:
		if debuginfo > 0, say "[input-style]NOW CHECKING FOR *VERY* BAD LUCK (i.e. a reroll):[roman type][line break]";
		if the player is getting unlucky, decide yes;
	decide no.

To say GotLuckyFlav:
	say "[one of]You feel that you just got particularly lucky.[or][variable custom style]Lucky![roman type][line break][or][variable custom style]That was lucky.[roman type][line break][then at random]".

To say GotUnluckyFlav:
	say "[one of]You feel that you just got particularly unlucky.[or]What rotten luck![or][variable custom style]Oh come on! That was so unlucky...[roman type][line break][then at random]".

Volume - Calculating Stats

saved-strength is a number that varies.
saved-dexterity is a number that varies.
saved-intelligence is a number that varies.
saved-flat-strength is a number that varies.
saved-flat-dexterity is a number that varies.
saved-flat-intelligence is a number that varies.
saved-bimbo is a number that varies.
[saved-flat-bimbo is a number that varies.]
saved-slap-damage is a number that varies.
saved-knee-damage is a number that varies.
saved-kick-damage is a number that varies.
saved-printed-slap-damage is a number that varies.
saved-printed-knee-damage is a number that varies.
saved-printed-kick-damage is a number that varies.

backgroundCombatCalculation is initially false.

A game universe initialisation rule:
	update saved stats.

To update saved stats:
	[now saved-flat-bimbo is the flat bimbo of the player;]
	if diaper quest is 1, now saved-bimbo is the flat diaper bimbo of the player;
	otherwise now saved-bimbo is the sex addiction of the player;
	now saved-flat-intelligence is the flat intelligence of the player;
	now saved-flat-dexterity is the flat dexterity of the player;
	now saved-flat-strength is the flat strength of the player;
	now saved-intelligence is saved-flat-intelligence scaled;
	now saved-dexterity is saved-flat-dexterity scaled;
	now saved-strength is saved-flat-strength scaled;
	check immobility;
	now backgroundCombatCalculation is true;
	now saved-slap-damage is the slap damage of the player;
	now saved-printed-slap-damage is saved-slap-damage - combat bonus remainder;
	if saved-printed-slap-damage < 0, now saved-printed-slap-damage is 0;
	now saved-knee-damage is the knee damage of the player;
	now saved-printed-knee-damage is saved-knee-damage - combat bonus remainder;
	if saved-printed-knee-damage < 0, now saved-printed-knee-damage is 0;
	now saved-kick-damage is the kick damage of the player;
	now saved-printed-kick-damage is saved-kick-damage - combat bonus remainder;
	if saved-printed-kick-damage < 0, now saved-printed-kick-damage is 0;
	now backgroundCombatCalculation is false.

[!<DecideWhichNumberIsFetishBonusOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is fetish-bonus of the player:
	if tattoo-fetish is 1:
		decide on (1 + the number of worn tattoos) / 3;
	otherwise if piercing-fetish is 1:
		decide on the number of worn piercings;
	otherwise if humiliation-fetish is 1:
		decide on the humiliation of the player / 8000;
	otherwise if artificial-fetish is 1:
		decide on player-enhancement / 8;
	otherwise:
		decide on 0.

Calculating Stats ends here.
