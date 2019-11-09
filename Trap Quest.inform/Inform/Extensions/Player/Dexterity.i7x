Dexterity by Player begins here.

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

[!<DecideWhatNumberIsTheDexterityInfluenceOfSpeedClothing>+

REQUIRES COMMENTING

+!]
To decide what number is the dexterity-influence of (C - a speed clothing):
	let D be 1;
	increase D by the magic-modifier of C;
	decide on D.

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
	if life-elixir-timer > 0, increase D by 10;
	if the class of the player is bunny and playerRegion is Woods, increase D by 3;
	if acceleration-tincture-timer > 0:
		increase D by acceleration-tincture-bonus;
	increase D by ((creme-egg-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	increase D by ((magic-speed-timer + default-candy-duration - 1) / default-candy-duration) * 6;
	if the the boost-cooldown of nurse > 0, increase D by 2;
	increase D by adult-baby-dex * 3;
	if the silicone volume of breasts > 10 and the class of the player is silicone queen:
		increase D by 1;
		if the silicone volume of breasts > 18, increase D by 3;
	if fudge-poison-timer > 0, now D is D / 2;
	if cookie-poison-timer > 0, decrease D by 2;
	if wasp-honey-timer > 0, decrease D by wasp-honey-timer / 10;
	if the player is grossed out and D > 5, now D is 5;
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


Dexterity ends here.

