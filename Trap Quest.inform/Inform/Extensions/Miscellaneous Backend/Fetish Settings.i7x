Fetish Settings by Miscellaneous Backend begins here.


[!<AThingIsFetishAppropriate>+

Some things are only 'fetish appropriate' (and therefore allowed in the game) when certain fetishes are enabled.

+!]
Definition: a thing (called C) is fetish appropriate:
	if C is product:
		let R be the recipe of the alchemy key of C;
		if R is recipe:
			if R is appropriate, decide yes;
		decide no;
	decide yes.

[!<fileOfPlayerOptions:File>*

REQUIRES COMMENTING

*!]
The File of Player Options (owned by another project) is called "character". 

[!<tableOfPlayerOptions:Table>*

REQUIRES COMMENTING

*!]
Table of Player Options
choice
-1 [player-gender]
100 [player-name]
0 [was the name randomly selected last time]
0 [bukkake fetish]
0 [pregnancy fetish]
0 [lactation fetish]
0 [watersports fetish]
0 [egg laying fetish]
0 [extreme proportions fetish]
0 [TG fetish]
0 [inflation fetish]
0 [weight gain fetish]
0 [artificial enhancements fetish]
0 [fast breast expansion]
0 [latex prisoner]
0 [bondage prisoner]
0 [unlucky]
0 [forgetful airhead]
0 [diaper lover]
0 [inhuman pregnancy]
0 [bonus strength points]
0 [bonus dexterity points]
0 [bonus intelligence points]
0 [bonus strength]
0 [bonus dexterity]
0 [bonus intelligence]
0 [max breast size points]
0 [max ass size points]
0 [min penis size points]
0 [micro-choice]
0 [cheater-check]
0 [submissive sex addict]
0 [bonus breast size points]
0 [trap fetish]
0 [mindbreak resistance]
0 [spontaneous tattoos]
0 [max belly size points]
0 [map reset]
0 [toilet allowance]
0 [hair redness]
0 [hair blondeness]
0 [hair brightness]
0 [diaper focus]
1 [sex fainting]
0 [interracial fetish]
0 [diaper quest]
0 [roleplay fetish i.e. starting headgear]
0 [mythical creature fetish]
0 [slow pregnancy]
0 [panty messing]
1 [clothing-imprinting]
0 [background: nurse]
0 [background: sporty]
0 [background: waitress]
0 [background: pure]
0 [secret: tattoos]
0 [secret: piercings]
0 [secret: humiliation]
0 [secret: artificial]
0 [ungape]
0 [tentacle fetish]


[!<DecideWhichNumberIsPlayerGender>+

REQUIRES COMMENTING

+!]
To decide which number is player-gender:
	decide on choice in row 1 of the Table of Player Options.

[!<DecideWhichNumberIsThePlayerName>+

REQUIRES COMMENTING

+!]
To decide which number is the player-name:
	decide on choice in row 2 of the Table of Player Options.

[!<DecideWhichNumberIsBukkakeFetish>+

REQUIRES COMMENTING

+!]
To decide which number is bukkake fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 4 of the Table of Player Options.

[!<DecideWhichNumberIsPregnancyFetish>+

REQUIRES COMMENTING

+!]
To decide which number is pregnancy fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 5 of the Table of Player Options.

[!<DecideWhichNumberIsLactationFetish>+

REQUIRES COMMENTING

+!]
To decide which number is lactation fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 6 of the Table of Player Options.

[!<DecideWhichNumberIswatersportsFetish>+

REQUIRES COMMENTING

+!]
To decide which number is watersports fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 7 of the Table of Player Options.

[!<DecideWhichNumberIsEggLayingFetish>+

REQUIRES COMMENTING

+!]
To decide which number is egg laying fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 8 of the Table of Player Options.

[!<DecideWhichNumberIsExtremeProportionsFetish>+

REQUIRES COMMENTING

+!]
To decide which number is extreme proportions fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 9 of the Table of Player Options.

[!<DecideWhichNumberIsTGFetish>+

REQUIRES COMMENTING

+!]	
To decide which number is TG fetish:
	decide on choice in row 10 of the Table of Player Options.

[!<DecideWhichNumberIsInflationFetish>+

REQUIRES COMMENTING

+!]
To decide which number is inflation fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 11 of the Table of Player Options.

[!<DecideWhichNumberIsWeightGainFetish>+

REQUIRES COMMENTING

+!]
To decide which number is weight gain fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 12 of the Table of Player Options.

[!<DecideWhichNumberIsArtificialEnhancementsFetish>+

REQUIRES COMMENTING

+!]
To decide which number is artificial enhancements fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 13 of the Table of Player Options.

[!<DecideWhichNumberIsFastBreastExpansion>+

REQUIRES COMMENTING

+!]
To decide which number is fast breast expansion:
	if diaper quest is 1, decide on 0;
	decide on choice in row 14 of the Table of Player Options.

[!<DecideWhichNumberIsLatexPrisoner>+

REQUIRES COMMENTING

+!]
To decide which number is latex prisoner:
	if diaper quest is 1, decide on 0;
	decide on choice in row 15 of the Table of Player Options.

[!<DecideWhichNumberIsBondagePrisoner>+

REQUIRES COMMENTING

+!]
To decide which number is bondage prisoner:
	if diaper quest is 1, decide on 0;
	decide on choice in row 16 of the Table of Player Options.

[!<DecideWhichNumberIsUnlucky>+

REQUIRES COMMENTING

+!]
To decide which number is unlucky:
	decide on choice in row 17 of the Table of Player Options.

[!<DecideWhichNumberIsForgetfulAirhead>+

REQUIRES COMMENTING

+!]
To decide which number is forgetful airhead:
	if diaper quest is 1, decide on 0;
	decide on choice in row 18 of the Table of Player Options.

[!<DecideWhichNumberIsDiaperLover>+

REQUIRES COMMENTING

+!]
To decide which number is diaper lover:
	if diaper quest is 1 and choice in row 19 of the Table of Player Options < 1, decide on 1;
	if choice in row 19 of the Table of Player Options is -1, decide on 0;
	if choice in row 19 of the Table of Player Options >= 4 and a random number between 1 and 100 is 1: [Don't want to do this check all the time as it will cause more lag, but never doing it would allow people to bypass donator validation by editing prefs file]
		if the player is not a top donator, now choice in row 19 of the Table of Player Options is 3;
	decide on choice in row 19 of the Table of Player Options.

[!<DecideWhichNumberIsInhumanPregnancy>+

REQUIRES COMMENTING

+!]
To decide which number is inhuman pregnancy:
	if diaper quest is 1, decide on 0;
	decide on choice in row 20 of the Table of Player Options.

[!<DecideWhichNumberIsBonusStrengthPoints>+

REQUIRES COMMENTING

+!]
To decide which number is bonus strength points:
	decide on choice in row 21 of the Table of Player Options.

[!<DecideWhichNumberIsBonusDexterityPoints>+

REQUIRES COMMENTING

+!]
To decide which number is bonus dexterity points:
	decide on choice in row 22 of the Table of Player Options.

[!<DecideWhichNumberIsBonusIntelligencePoints>+

REQUIRES COMMENTING

+!]
To decide which number is bonus intelligence points:
	decide on choice in row 23 of the Table of Player Options.

[!<DecideWhichNumberIsBonusStrength>+

REQUIRES COMMENTING

+!]	
To decide which number is bonus strength:
	decide on choice in row 24 of the Table of Player Options.

[!<DecideWhichNumberIsBonusDexterity>+

REQUIRES COMMENTING

+!]	
To decide which number is bonus dexterity:
	decide on choice in row 25 of the Table of Player Options.

[!<DecideWhichNumberIsBonusIntelligence>+

REQUIRES COMMENTING

+!]
To decide which number is bonus intelligence:
	decide on choice in row 26 of the Table of Player Options.

[!<DecideWhichNumberIsMaxBreastSizePoints>+

REQUIRES COMMENTING

+!]
To decide which number is max breast size points:
	if diaper quest is 1, decide on 0;
	decide on choice in row 27 of the Table of Player Options.

[!<DecideWhichNumberIsMaxAssSizePoints>+

REQUIRES COMMENTING

+!]
To decide which number is max ass size points:
	if diaper quest is 1, decide on 0;
	decide on choice in row 28 of the Table of Player Options.

[!<DecideWhichNumberIsMinPenisSizePoints>+

REQUIRES COMMENTING

+!]
To decide which number is min penis size points:
	if diaper quest is 1, decide on 0;
	decide on choice in row 29 of the Table of Player Options.

[!<DecideWhichNumberIsMicroChoice>+

REQUIRES COMMENTING

+!]
To decide which number is micro-choice:
	if diaper quest is 1, decide on 0;
	decide on choice in row 30 of the Table of Player Options.

[!<DecideWhichNumberIsCheaterCheck>+

REQUIRES COMMENTING

+!]
To decide which number is cheater-check:
	decide on choice in row 31 of the Table of Player Options.

[!<DecideWhichNumberIsSubmissiveSexAddict>+

REQUIRES COMMENTING

+!]
To decide which number is submissive sex addict:
	if diaper quest is 1, decide on 0;
	decide on choice in row 32 of the Table of Player Options.

[!<DecideWhichNumberIsTrapFetish>+

REQUIRES COMMENTING

+!]
To decide which number is trap fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 34 of the Table of Player Options.

[!<DecideWhichNumberIsMindbreakProtection>+

REQUIRES COMMENTING

+!]
To decide which number is mindbreak protection:
	decide on choice in row 35 of the Table of Player Options.

[!<DecideWhichNumberIsSpontaneousTattoos>+

REQUIRES COMMENTING

+!]
To decide which number is spontaneous tattoos:
	if tattoo-fetish is 1, decide on 1;
	decide on choice in row 36 of the Table of Player Options.

[!<DecideWhichNumberIsMaxBellySizePoints>+

REQUIRES COMMENTING

+!]
To decide which number is max belly size points:
	if diaper quest is 1, decide on 0;
	decide on choice in row 37 of the Table of Player Options.

[!<DecideWhichNumberIsMapReset>+

REQUIRES COMMENTING

+!]
To decide which number is map reset:
	if diaper quest is 1, decide on 0;
	decide on choice in row 38 of the Table of Player Options.

[!<DecideWhichNumberIsToiletAllowance>+

REQUIRES COMMENTING

+!]
To decide which number is toilet allowance:
	decide on choice in row 39 of the Table of Player Options.

[!<DecideWhichNumberIsNaturalRednessPoints>+

REQUIRES COMMENTING

+!]
To decide which number is natural redness points:
	decide on choice in row 40 of the Table of Player Options.

[!<DecideWhichNumberIsNaturalRedness>+

REQUIRES COMMENTING

+!]
To decide which number is natural redness:
	decide on choice in row 40 of the Table of Player Options.

[!<DecideWhichNumberIsNaturalBlondenessPoints>+

REQUIRES COMMENTING

+!]
To decide which number is natural blondeness points:
	decide on choice in row 41 of the Table of Player Options.

[!<DecideWhichNumberIsNaturalBlondeness>+

REQUIRES COMMENTING

+!]
To decide which number is natural blondeness:
	decide on choice in row 41 of the Table of Player Options.

[!<DecideWhichNumberIsNaturalBrightnessPoints>+

REQUIRES COMMENTING

+!]
To decide which number is natural brightness points:
	decide on choice in row 42 of the Table of Player Options.

[!<DecideWhichNumberIsNaturalBrightness>+

REQUIRES COMMENTING

+!]
To decide which number is natural brightness:
	decide on choice in row 42 of the Table of Player Options.

[!<DecideWhichNumberIsDiaperFocus>+

REQUIRES COMMENTING

+!]
To decide which number is diaper focus:
	if diaper lover is 0, decide on 0;
	if diaper quest is 1, decide on 1;
	decide on choice in row 43 of the Table of Player Options.

[!<DecideWhichNumberIsSexFainting>+

REQUIRES COMMENTING

+!]
To decide which number is sex fainting:
	if diaper quest is 1, decide on 0;
	decide on choice in row 44 of the Table of Player Options.

[!<DecideWhichNumberIsInterracialFetish>+

REQUIRES COMMENTING

+!]
To decide which number is interracial fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 45 of the Table of Player Options.


[!<DecideWhichNumberIsRoleplayFetish>+

REQUIRES COMMENTING

+!]
To decide which number is roleplay fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 47 of the Table of Player Options.

[!<DecideWhichNumberIsBeastFetish>+

REQUIRES COMMENTING

+!]
To decide which number is mythical creature fetish:
	if diaper quest is 1, decide on 0;
	decide on choice in row 48 of the Table of Player Options.

[!<randomSlowPregnancy:Integer>*

REQUIRES COMMENTING

*!]
random slow pregnancy is a number that varies.

[!<DecideWhichNumberIsSlowPregnancy>+

REQUIRES COMMENTING

+!]
To decide which number is slow pregnancy:
	if diaper quest is 1, decide on 0;
	if choice in row 49 of the Table of Player Options is -1, decide on random slow pregnancy;
	decide on choice in row 49 of the Table of Player Options.

[!<DecideWhichNumberIsPantyMessing>+

REQUIRES COMMENTING

+!]
To decide which number is panty messing:
	decide on choice in row 50 of the Table of Player Options.

[!<DecideWhichNumberIsClothingImprinting>+

REQUIRES COMMENTING

+!]
To decide which number is clothing-imprinting:
	decide on choice in row 51 of the Table of Player Options.

[!<DecideWhichNumberIsBackgroundNurse>+

REQUIRES COMMENTING

+!]
To decide which number is background-nurse:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 52 of the Table of Player Options.

[!<DecideWhichNumberIsBackgroundSporty>+

REQUIRES COMMENTING

+!]
To decide which number is background-sporty:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 53 of the Table of Player Options.

[!<DecideWhichNumberIsBackgroundWaitress>+

REQUIRES COMMENTING

+!]
To decide which number is background-waitress:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 54 of the Table of Player Options.

[!<DecideWhichNumberIsBackgroundPure>+

REQUIRES COMMENTING

+!]
To decide which number is background-pure:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 55 of the Table of Player Options.

[!<DecideWhichNumberIsTattooFetish>+

REQUIRES COMMENTING

+!]
To decide which number is tattoo-fetish:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 56 of the Table of Player Options.

[!<DecideWhichNumberIsPiercingFetish>+

REQUIRES COMMENTING

+!]
To decide which number is piercing-fetish:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 57 of the Table of Player Options.

[!<DecideWhichNumberIsHumiliationFetish>+

REQUIRES COMMENTING

+!]
To decide which number is humiliation-fetish:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 58 of the Table of Player Options.

[!<DecideWhichNumberIsArtificialFetish>+

REQUIRES COMMENTING

+!]
To decide which number is artificial-fetish:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 59 of the Table of Player Options.
	
[!<DecideWhichNumberIsUnGape>+

REQUIRES COMMENTING

+!]
To decide which number is ungape:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 60 of the Table of Player Options.

[!<DecideWhichNumberIsTentacleFetish>+

REQUIRES COMMENTING

+!]
To decide which number is tentacle fetish:
	if diaper quest is 1, decide on 0;
	decide on the choice in row 61 of the Table of Player Options.

[!<AThingIsAFlatchestedTrap>+

REQUIRES COMMENTING

+!]
Definition: a thing (called T) is a flatchested trap:
	if diaper quest is 1, decide no;
	if trap fetish is 1 and the player is male, decide yes;
	if the player is male and max breast size <= 1, decide yes;
	decide no.


Part - Options Menus

The nightmare mode rules is a rulebook.


[!<TheNightmareModeRule>+

REQUIRES COMMENTING

+!]
This is the nightmare mode rule:
	follow the nightmare mode rules.


Include Gender Options by Fetish Settings.
Include Diaper Lover Options by Fetish Settings.
Include Pregnancy Options by Fetish Settings.
Include Instant TG Options by Fetish Settings.


[!<tableOfKinkOptions:Table>*

REQUIRES COMMENTING

*!]
Table of Kink Options
title	subtable	description	toggle
"[roman type]Confirm Choices (shortcut: press Q)"	--	--	quit rule
"ENABLE SPECIFIC EROTIC CONTENT"	Table of Fetish Options	--	--
"ENABLE OTHER HANDICAPS"	Table of Handicap Options	--	--
"RANDOMISE CHOICES"	--	--	randomise choices rule
["RANDOMISE CHOICES and surprise me"	--	--	secret randomise choices rule]
"NIGHTMARE MODE: Choose everything!"	--	--	nightmare mode rule

[!<tableOfDiaperFetishOptions:Table>*

REQUIRES COMMENTING

*!]
Table of Diaper Fetish Options
title	subtable	description	toggle
"[roman type]Confirm Choices (shortcut: press Q)"	--	--	quit rule
"Fashion victim (more cursed/forced/transforming clothing) - 6 points ([if unlucky is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	unlucky toggle rule
"RECOMMENDED Clothes Imprinting - 0 points ([if clothing-imprinting is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	imprinting toggle rule
"Male-to-female sex change - 2 points ([if TG fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	TG fetish toggle rule
[DO NOT PUT ANY FETISHES BELOW THE TG FETISH ROW - they will not appear for female characters.  Put them above the TG fetish row instead.]

Include Fetish Options by Fetish Settings.
Include Handicap Options by Fetish Settings.
Include Benefit Options by Fetish Settings.
Include DQ Benefit Options by Fetish Settings.
Include Background Options by Fetish Settings.
Include Secret Options by Fetish Settings.

Part - Points


[!<DecideWhichNumberIsPositivePointsCost>+

REQUIRES COMMENTING

+!]
To decide which number is positive points count:
	let X be 0;
	if diaper quest is 1, increase X by 10;
	if bukkake fetish is 1, increase X by 7;
	if pregnancy fetish is 1, increase X by pregnancy points;
	if inhuman pregnancy is 2 and (the player is female or tg fetish >= 1), increase X by 1;
	if lactation fetish is 1, increase X by 5;
	if watersports fetish is 1, increase X by 3;
	if diaper lover >= 1 and diaper quest is 0, increase X by diaper points;
	if egg laying fetish is 1, increase X by 3;
	if weight gain fetish is 1, increase X by 3;
	if inflation fetish is 1, increase X by 4;
	if artificial enhancements fetish is 1, increase X by 2;
	if interracial fetish is 1, increase X by 2;
	if mythical creature fetish is 1, increase X by 6;
	if extreme proportions fetish is 1, increase X by 11;
	if tg fetish >= 1, increase X by 2;
	if diaper lover >= 1 and toilet allowance is 1, increase X by 3;
	if diaper lover >= 4 and panty messing is 1, increase X by 1;
	if fast breast expansion is 1, increase X by 4;
	if forgetful airhead is 1, increase X by 5;
	if map reset is 1, increase X by 4;
	if unlucky is 1, increase X by 6;
	if submissive sex addict is 1, increase X by 7;
	if latex prisoner is 1, increase X by 8;
	if bondage prisoner is 1, increase X by 8;
	if ungape is 1, increase X by 2;
	if tentacle fetish is 1, increase X by 6;
	increase X by natural redness;
	increase X by natural blondeness;
	increase X by natural brightness;
	decide on X.

[!<DecideWhichNumberIsPregnancyPoints>+

REQUIRES COMMENTING

+!]
To decide which number is pregnancy points:
	if the player is female or tg fetish >= 1:
		let P be 5;
		if choice in row 49 of the Table of Player Options is -1 or choice in row 49 of the Table of Player Options is 2, increase P by 1;
		if choice in row 49 of the Table of Player Options is 1, increase P by 2;
		if choice in row 49 of the Table of Player Options is 3, decrease P by 1;
		decide on P;
	decide on 0.

[!<DecideWhichNumberIsDiaperPoints>+

REQUIRES COMMENTING

+!]
To decide which number is diaper points:
	if watersports fetish is 1, decide on 5;
	decide on 3.

[!<DecideWhichNumberIsTrapPoints>+

REQUIRES COMMENTING

+!]
To decide which number is trap points:
	if the player is male and tg fetish >= 1, decide on 3;
	decide on 0.

[!<DecideWhichNumberIsPointsCount>+

REQUIRES COMMENTING

+!]
To decide which number is points count:
	let X be positive points count;
	decrease X by bonus strength points;
	decrease X by bonus dexterity points;
	decrease X by bonus intelligence points;
	decrease X by max breast size points;
	decrease X by max ass size points;
	decrease X by max belly size points;
	if TG fetish is 0, decrease X by min penis size points;
	if trap fetish is 1, decrease X by trap points;
	decrease X by mindbreak protection * 4;
	decrease X by roleplay fetish * 6;
	decrease X by the background-nurse * 5;
	decrease X by 5 * background-sporty;
	decrease X by 5 * background-waitress;
	decrease X by 5 * background-pure;
	decrease X by 7 * tattoo-fetish;
	decrease X by 7 * piercing-fetish;
	decrease X by 7 * humiliation-fetish;
	decrease X by 7 * artificial-fetish;
	decide on X.


[!<TheSecretRandomiseChoicesRule>+

REQUIRES COMMENTING

+!]
This is the secret randomise choices rule:
	follow randomise choices rule;
	follow quit rule.

[!<TheRandomiseChoicesRule>+

REQUIRES COMMENTING

+!]
This is the randomise choices rule:
	repeat with X running from 1 to 100:
		let R be a random number from 1 to 21;
		if R is 1, follow bukkake fetish toggle rule;
		if R is 2, follow pregnancy fetish toggle rule;
		if R is 3, follow lactation fetish toggle rule;
		if R is 4, follow extreme proportions fetish toggle rule;
		if R is 5, follow fast breast expansion toggle rule;
		if R is 6, follow forgetful airhead toggle rule;
		if R is 7, follow cum addiction toggle rule;
		if R is 8, follow watersports fetish toggle rule;
		if R is 9, follow latex prisoner toggle rule;
		if R is 10, follow bondage prisoner toggle rule;
		if R is 11 and the player is male, follow TG fetish toggle rule;
		if R is 12, follow egg laying fetish toggle rule;
		if R is 13, follow inflation fetish toggle rule;
		if R is 14, follow weight gain fetish toggle rule;
		if R is 15, follow artificial enhancements fetish toggle rule;
		if R is 16, follow diaper lover toggle rule;
		if R is 17, follow spontaneous tattoos toggle rule;
		if R is 18, follow map reset toggle rule;
		if R is 19, follow mythical creature fetish toggle rule;
		if R is 20, follow tentacle fetish toggle rule;
		if R is 21, follow the roleplay fetish toggle rule.

[!<TheRandomiseBonusesRule>+

REQUIRES COMMENTING

+!]
This is the randomise bonuses rule:
	while points count > 0:
		let R be a random number between 1 and 10;
		if R < 4:
			follow bonus strength rule;
		otherwise if R < 7:
			follow bonus dexterity rule;
		otherwise if R < 10:
			follow bonus intelligence rule;
		otherwise:
			if the player is male and a random number from 1 to 2 is 1 and TG fetish is 0:
				follow min penis size rule;
			otherwise:
				if a random number from 1 to 3 is 1:
					follow max breast size rule;
				otherwise if a random number from 1 to 2 is 1:
					follow max belly size rule;
				otherwise:
					follow max ass size rule.


Fetish Settings ends here.
