Strength by Player begins here.

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
	if strength-tincture-timer > 0:
		increase S by strength-tincture-bonus;
	increase S by fullness-bonus;
	increase S by the theme bonus of the strength theme rules;
	increase S by ((pink-nougat-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	increase S by ((magic-strength-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	decrease S by ((liquorice-timer + default-candy-duration - 1) / default-candy-duration) * 1;
	decrease S by adult-baby-int * 3;
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

Strength ends here.
