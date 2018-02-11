Fetish Options by Fetish Settings begins here.


[!<tableOfFetishOptions:Table>*

REQUIRES COMMENTING

*!]
Table of Fetish Options
title	subtable	description	toggle
"[roman type]Previous Menu (shortcut: press Q)"	--	--	quit rule
"RANDOMISE CHOICES (this randomises choices on 'other handicaps' page too)"	--	--	randomise choices rule
"Cum splatter on body and clothing - 7 points ([if bukkake fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	bukkake fetish toggle rule
"Pregnancy[if tg fetish is 0 and the player is male] related flavour[end if] - [pregnancy points] points ([if pregnancy fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	pregnancy fetish toggle rule
"Lactation - 5 points ([if lactation fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	lactation fetish toggle rule
"Watersports (urine) - 3 points ([if watersports fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	watersports fetish toggle rule
"Diapers - [diaper points] points ([if diaper lover <= 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	diaper lover toggle rule
"Egg Laying - 3 points ([if egg laying fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	egg laying fetish toggle rule
"Air inflation - 4 points ([if inflation fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	inflation fetish toggle rule
"Weight gain - 3 points ([if weight gain fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	weight gain fetish toggle rule
"Artificial enhancements (silicone etc.) - 2 points ([if artificial enhancements fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	artificial enhancements fetish toggle rule
"Extreme body proportions - 11 points ([if extreme proportions fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	extreme proportions fetish toggle rule
"Big Black Cocks - 2 points ([if interracial fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	interracial fetish toggle rule
"Mythical Creatures (this enables sex with fantasy creatures e.g. minotaurs, there are no real-life animals) - 6 points ([if mythical creature fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	mythical creature fetish toggle rule
"Tentacle Monsters Everywhere (this causes tentacle monsters to spawn in all regions until you purify the spawners) - 6 points ([if tentacle fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	tentacle fetish toggle rule
"Male-To-Female Sex Change - 2 points ([if TG fetish is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	TG fetish toggle rule
[DO NOT PUT ANY FETISHES BELOW THE TG FETISH ROW - they will not appear for female characters. But them above this row instead.]


[!<TheBukkakeFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the bukkake fetish toggle rule:
	if bukkake fetish is 0, now choice in row 4 of the Table of Player Options is 1;
	otherwise now choice in row 4 of the Table of Player Options is 0.

This is the bukkake nightmare rule:
	now choice in row 4 of the Table of Player Options is 1.
The bukkake nightmare rule is listed in the nightmare mode rules.

[!<ThePregnancyFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the pregnancy fetish toggle rule:
	if pregnancy fetish is 0, now choice in row 5 of the Table of Player Options is 1;
	otherwise now choice in row 5 of the Table of Player Options is 0.

This is the pregnancy nightmare rule:
	now choice in row 5 of the Table of Player Options is 1.
The pregnancy nightmare rule is listed in the nightmare mode rules.

[!<TheLactationFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the lactation fetish toggle rule:
	if lactation fetish is 0, now choice in row 6 of the Table of Player Options is 1;
	otherwise now choice in row 6 of the Table of Player Options is 0.

This is the lactation nightmare rule:
	now choice in row 6 of the Table of Player Options is 1.
The lactation nightmare rule is listed in the nightmare mode rules.

[!<TheWatersportsFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the watersports fetish toggle rule:
	if watersports fetish is 0, now choice in row 7 of the Table of Player Options is 1;
	otherwise now choice in row 7 of the Table of Player Options is 0.

This is the watersports nightmare rule:
	now choice in row 7 of the Table of Player Options is 1.
The watersports nightmare rule is listed in the nightmare mode rules.

[!<TheDiaperLoverToggleRule>+

REQUIRES COMMENTING

+!]
This is the diaper lover toggle rule:
	if diaper lover is 0:
		now choice in row 19 of the Table of Player Options is 1;
	otherwise if choice in row 19 of the Table of Player Options is -1:
		now choice in row 19 of the Table of Player Options is 2;
	otherwise if choice in row 19 of the Table of Player Options is 2:
		now choice in row 19 of the Table of Player Options is -1;
	otherwise:
		now choice in row 19 of the Table of Player Options is 0.

This is the diaper nightmare rule:
	if diaper lover is 0, now choice in row 19 of the Table of Player Options is 1;
	if diaper lover is -1, now choice in row 19 of the Table of Player Options is 2.
The diaper nightmare rule is listed in the nightmare mode rules.

[!<DecideWhichNumberIsWatersportsMechanics>+

REQUIRES COMMENTING

+!]
To decide which number is watersports mechanics:
	if watersports fetish is 1 or diaper lover >= 1, decide on 1;
	decide on 0.


[!<TheEggLayingFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the egg laying fetish toggle rule:
	if egg laying fetish is 0, now choice in row 8 of the Table of Player Options is 1;
	otherwise now choice in row 8 of the Table of Player Options is 0.

This is the egg laying nightmare rule:
	now choice in row 8 of the Table of Player Options is 1.
The egg laying nightmare rule is listed in the nightmare mode rules.

[!<TheInflationFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the inflation fetish toggle rule:
	if inflation fetish is 0, now choice in row 11 of the Table of Player Options is 1;
	otherwise now choice in row 11 of the Table of Player Options is 0.


This is the inflation nightmare rule:
	now choice in row 11 of the Table of Player Options is 1.
The inflation nightmare rule is listed in the nightmare mode rules.

[!<TheWeightGainFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the weight gain fetish toggle rule:
	if weight gain fetish is 0, now choice in row 12 of the Table of Player Options is 1;
	otherwise now choice in row 12 of the Table of Player Options is 0.

This is the weight gain nightmare rule:
	now choice in row 12 of the Table of Player Options is 1.
The weight gain nightmare rule is listed in the nightmare mode rules.

[!<TheArtificialEnhancementsFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the artificial enhancements fetish toggle rule:
	if artificial enhancements fetish is 0, now choice in row 13 of the Table of Player Options is 1;
	otherwise now choice in row 13 of the Table of Player Options is 0.

This is the artificial enhancements nightmare rule:
	now choice in row 13 of the Table of Player Options is 1.
The artificial enhancements nightmare rule is listed in the nightmare mode rules.



[!<TheExtremeProportionsFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the extreme proportions fetish toggle rule:
	if extreme proportions fetish is 0, now choice in row 9 of the Table of Player Options is 1;
	otherwise now choice in row 9 of the Table of Player Options is 0.

This is the extreme proportions nightmare rule:
	now choice in row 9 of the Table of Player Options is 1.
The extreme proportions nightmare rule is listed in the nightmare mode rules.

[!<TheTGFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the TG fetish toggle rule:
	if TG fetish is 0, now choice in row 10 of the Table of Player Options is 1;
	otherwise now choice in row 10 of the Table of Player Options is 0.

This is the TG nightmare rule:
	if the player is male, now choice in row 10 of the Table of Player Options is 1.
The TG nightmare rule is listed in the nightmare mode rules.

[!<TheInterracialFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the interracial fetish toggle rule:
	if interracial fetish is 0, now choice in row 45 of the Table of Player Options is 1;
	otherwise now choice in row 45 of the Table of Player Options is 0.

This is the interracial nightmare rule:
	now choice in row 45 of the Table of Player Options is 1.
The interracial nightmare rule is listed in the nightmare mode rules.

[!<YourselfIsQueenOfSpades>+

Does the player love them some black cock?

+!]
Definition: yourself is queen of spades:
	if interracial fetish is 0, decide no;
	if there is a worn interracial related thing, decide yes;
	decide no.

[!<TheMythicalCreatureFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the mythical creature fetish toggle rule:
	if mythical creature fetish is 0, now choice in row 48 of the Table of Player Options is 1;
	otherwise now choice in row 48 of the Table of Player Options is 0.

This is the mythical creature nightmare rule:
	now choice in row 48 of the Table of Player Options is 1.
The mythical creature nightmare rule is listed in the nightmare mode rules.

[!<TheTentacleFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the tentacle fetish toggle rule:
	if tentacle fetish is 0, now choice in row 61 of the Table of Player Options is 1;
	otherwise now choice in row 61 of the Table of Player Options is 0.

This is the tentacle nightmare rule:
	now choice in row 61 of the Table of Player Options is 1.
The tentacle nightmare rule is listed in the nightmare mode rules.

Fetish Options ends here.

