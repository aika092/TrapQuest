Benefit Options by Fetish Settings begins here.


[!<tableOfBenefitOptions:Table>*

REQUIRES COMMENTING

*!]
Table of Benefit Options
title	subtable	description	toggle
"[roman type]Confirm Choices (shortcut: press Q)"	--	--	quit rule
"Reset Choices"	--	--	reset rule
"CHOOSE A BACKGROUND (5 points) [if background-nurse + background-sporty + background-waitress + background-pure <= 0]not [otherwise][bold type][end if]chosen[roman type]"	Table of Background Options	--	--
"CHOOSE A SECRET (7 points) [if tattoo-fetish + piercing-fetish + humiliation-fetish + artificial-fetish <= 0]not [otherwise][bold type][end if]chosen[roman type]"	Table of Secret Options	--	--
"Extra Strength: [bonus strength] ([bonus strength points] points used. [bonus strength cost].)"	--	--	bonus strength rule
"Extra Dexterity: [bonus dexterity] ([bonus dexterity points] points used. [bonus dexterity cost].)"	--	--	bonus dexterity rule
"Extra Intelligence: [bonus intelligence] ([bonus intelligence points] points used. [bonus intelligence cost].)"	--	--	bonus intelligence rule
"Reduce Maximum Breast Size ([MaxBreastSizeDesc] - [max breast size points] points used. [bonus breast cost].)"	--	--	max breast size rule
"Reduce Maximum Ass Size ([MaxAssSizeDesc] - [max ass size points] points used)"	--	--	max ass size rule
"Reduce Maximum Belly Size [if weight gain fetish is 1 or pregnancy fetish is 1 or inflation fetish is 1](Except [end if][if weight gain fetish is 1]fat[end if][if weight gain fetish is 1 and (pregnancy fetish is 1 or inflation fetish is 1)] and [end if][if pregnancy fetish is 1]pregnancy[end if][if pregnancy fetish is 1 and inflation fetish is 1] and [end if][if inflation fetish is 1]air inflation[end if][if weight gain fetish is 1 or pregnancy fetish is 1 or inflation fetish is 1])[end if] ([MaxBellySizeDesc] - [max belly size points] points used)"	--	--	max belly size rule
"Increase Minimum Penis Size ([if the player is female]Disabled since player is female[otherwise if min penis size is 0]No penis - 0 points used. [bonus penis cost][otherwise if min penis size is 1]Less than 1 inch - 1 point used. [bonus penis cost][otherwise if min penis size is 2]1 inch - 1 point used. [bonus penis cost][otherwise][min penis size] inch - [min penis size points] points used. [bonus penis cost][end if][if the player is male and tg fetish >= 1]  When this size is reached, TG can occur.[end if])"	--	--	min penis size rule
"Flatchested until sex change; disable futanari content ([if the player is female and trap fetish is 0]Free to enable, as the player is female[otherwise if TG fetish is 0 and trap fetish is 0]Free to enable, since TG fetish is disabled.[otherwise if trap fetish is 0]Not enabled - costs 3 points to enable[otherwise if trap fetish is 1 and the player is male and tg fetish >= 1]Enabled - 3 points used[otherwise if trap fetish is 1]Enabled - free to disable[end if])"	--	--	trap fetish toggle rule
"Mindbreak protection (player can't get broken: humiliation, bimbo and sex addiction cap slightly lowered) ([if mindbreak protection is 0]Not enabled - costs 4 points to enable[otherwise]Enabled - 4 points used[end if])"	--	--	mindbreak protection toggle rule
"Bondage protection (most common ways of getting bondage including chastity are prevented) ([if bondage protection is 0]Not enabled - costs 4 points to enable[otherwise]Enabled - 4 points used[end if])"	--	--	bondage protection toggle rule
"Spontaneous tattoos (If this is disabled, tattoos won't spawn on their own until you get one voluntarily) ([if spontaneous tattoos is 0]Not enabled - free to enable[otherwise]Enabled - free to disable[end if])"	--	--	spontaneous tattoos toggle rule
"Starting headgear rule (If this is enabled, a class headgear will appear in the pink wardrobe and other headgears will appear much more rarely) - 6 points ([if roleplay fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	roleplay fetish toggle rule



The reset rules is a rulebook.

[!<TheResetRule>+

REQUIRES COMMENTING

+!]
This is the reset rule:
	follow the empty background rules;
	follow the empty secret rules;
	follow the reset rules.

[!<SayMaxBreastsSizeDesc>+

REQUIRES COMMENTING

+!]
To say MaxBreastSizeDesc:
	say BreastCup max breast size.

[!<DecideWhichNumberIsMaxBellySizeModifier>+

REQUIRES COMMENTING

+!]
To decide which number is max belly size modifier:
	let M be max belly size points;
	if max belly size points > 0, increase M by 2;
	if max belly size points > 1, increase M by 2;
	if max belly size points > 2, increase M by 2;
	decide on M.

[!<DecideWhichNumberIsMaxBellySize>+

REQUIRES COMMENTING

+!]
To decide which number is max belly size:
	decide on 10 - max belly size modifier.

[!<SayMaxBellySizeDesc>+

REQUIRES COMMENTING

+!]
To say MaxBellySizeDesc:
	if max belly size is 1, say "completely flat";
	if max belly size is 4, say "curvy";
	if max belly size is 7, say "full";
	if max belly size is 10, say "bulging".


[!<SayBonusStrengthCost>+

REQUIRES COMMENTING

+!]
To say bonus strength cost:
	if bonus strength < 2:
		say "Next increase costs 2 points";
	otherwise if bonus strength < 4:
		say "Next increase costs 3 points";
	otherwise if bonus strength < 6:
		say "Next increase costs 4 points";
	otherwise if bonus strength < 8:
		say "Next increase costs 5 points";
	otherwise:
		say "You are at maximum bonus strength".

[!<TheBonusStrengthRule>+

REQUIRES COMMENTING

+!]
This is the bonus strength rule:
	if bonus strength < 2:
		if points count > 1:
			increase choice in row 21 of the Table of Player Options by 2;
			increase choice in row 24 of the Table of Player Options by 1;
	otherwise if bonus strength < 4:
		if points count > 2:
			increase choice in row 21 of the Table of Player Options by 3;
			increase choice in row 24 of the Table of Player Options by 1;
	otherwise if bonus strength < 6:
		if points count > 3:
			increase choice in row 21 of the Table of Player Options by 4;
			increase choice in row 24 of the Table of Player Options by 1;
	otherwise if bonus strength < 8:
		if points count > 4:
			increase choice in row 21 of the Table of Player Options by 5;
			increase choice in row 24 of the Table of Player Options by 1.

This is the bonus strength reset rule:
	now choice in row 21 of the Table of Player Options is 0;
	now choice in row 24 of the Table of Player Options is 0.
The bonus strength reset rule is listed in the reset rules.

[!<SayBonusDexterityCost>+

REQUIRES COMMENTING

+!]
To say bonus dexterity cost:
	if bonus dexterity < 2:
		say "Next increase costs 2 points";
	otherwise if bonus dexterity < 4:
		say "Next increase costs 3 points";
	otherwise if bonus dexterity < 6:
		say "Next increase costs 4 points";
	otherwise if bonus dexterity < 8:
		say "Next increase costs 5 points";
	otherwise:
		say "You are at maximum bonus dexterity".

[!<TheBonusDexterityRule>+

REQUIRES COMMENTING

+!]
This is the bonus dexterity rule:
	if bonus dexterity < 2:
		if points count > 1:
			increase choice in row 22 of the Table of Player Options by 2;
			increase choice in row 25 of the Table of Player Options by 1;
	otherwise if bonus dexterity < 4:
		if points count > 2:
			increase choice in row 22 of the Table of Player Options by 3;
			increase choice in row 25 of the Table of Player Options by 1;
	otherwise if bonus dexterity < 6:
		if points count > 3:
			increase choice in row 22 of the Table of Player Options by 4;
			increase choice in row 25 of the Table of Player Options by 1;
	otherwise if bonus dexterity < 8:
		if points count > 4:
			increase choice in row 22 of the Table of Player Options by 5;
			increase choice in row 25 of the Table of Player Options by 1.

This is the bonus dexterity reset rule:
	now choice in row 22 of the Table of Player Options is 0;
	now choice in row 25 of the Table of Player Options is 0.
The bonus dexterity reset rule is listed in the reset rules.

[!<SayBonusIntelligenceCost>+

REQUIRES COMMENTING

+!]
To say bonus intelligence cost:
	if bonus intelligence < 2:
		say "Next increase costs 2 points";
	otherwise if bonus intelligence < 4:
		say "Next increase costs 3 points";
	otherwise if bonus intelligence < 6:
		say "Next increase costs 4 points";
	otherwise if bonus intelligence < 8:
		say "Next increase costs 5 points";
	otherwise:
		say "You are at maximum bonus intelligence".

[!<TheBonusIntelligenceRule>+

REQUIRES COMMENTING

+!]
This is the bonus intelligence rule:
	if bonus intelligence < 2:
		if points count > 1:
			increase choice in row 23 of the Table of Player Options by 2;
			increase choice in row 26 of the Table of Player Options by 1;
	otherwise if bonus intelligence < 4:
		if points count > 2:
			increase choice in row 23 of the Table of Player Options by 3;
			increase choice in row 26 of the Table of Player Options by 1;
	otherwise if bonus intelligence < 6:
		if points count > 3:
			increase choice in row 23 of the Table of Player Options by 4;
			increase choice in row 26 of the Table of Player Options by 1;
	otherwise if bonus intelligence < 8:
		if points count > 4:
			increase choice in row 23 of the Table of Player Options by 5;
			increase choice in row 26 of the Table of Player Options by 1.

This is the bonus intelligence reset rule:
	now choice in row 23 of the Table of Player Options is 0;
	now choice in row 26 of the Table of Player Options is 0.
The bonus intelligence reset rule is listed in the reset rules.

[!<TheMaxBreastSizeRule>+

REQUIRES COMMENTING

+!]
This is the max breast size rule:
	if max breast size <= min breast size:
		do nothing;
	otherwise if choice in row 33 of the Table of Player Options < max breast size points and choice in row 33 of the Table of Player Options  < 4:
		increase choice in row 33 of the Table of Player Options by 1;
	otherwise if points count > 0 and max breast size points < 6:
		increase choice in row 27 of the Table of Player Options by 1.

This is the max breast size reset rule:
	now choice in row 33 of the Table of Player Options is 0;
	now choice in row 27 of the Table of Player Options is 0.
The max breast size reset rule is listed in the reset rules.

[!<SayBonusBreastCost>+

REQUIRES COMMENTING

+!]
To say bonus breast cost:
	if max breast size <= min breast size:
		say "No more points can be spent here due to starting proportions";
	otherwise if choice in row 33 of the Table of Player Options < max breast size points and choice in row 33 of the Table of Player Options < 4:
		say "Next increase is free";
	otherwise if max breast size points < 6:
		say "Next increase costs 1 point";
	otherwise:
		say "No more points can be spent here".

[!<TheMaxAssSizeRule>+

REQUIRES COMMENTING

+!]
This is the max ass size rule:
	if points count > 0 and max ass size points < 6 and max ass size - 2 >= min ass size, increase choice in row 28 of the Table of Player Options by 1.

This is the max ass size reset rule:
	now choice in row 28 of the Table of Player Options is 0.
The max ass size reset rule is listed in the reset rules.

[!<TheMaxBellyCountSizeRule>+

REQUIRES COMMENTING

+!]
This is the max belly size rule:
	if points count > 0 and max belly size points < 3, increase choice in row 37 of the Table of Player Options by 1.

This is the max belly size reset rule:
	now choice in row 37 of the Table of Player Options is 0.
The max belly size reset rule is listed in the reset rules.

[!<TheMinPenisSizeRule>+

REQUIRES COMMENTING

+!]
This is the min penis size rule:
	if min penis size points is 1 and micro-choice < 2:
		increase choice in row 30 of the Table of Player Options by 1;
	otherwise:
		if min penis size points < 5 and the player is male and points count > 0 or tg fetish >= 1, increase choice in row 29 of the Table of Player Options by 1.

This is the min penis size reset rule:
	now choice in row 29 of the Table of Player Options is 0;
	now choice in row 30 of the Table of Player Options is 0.
The min penis size reset rule is listed in the reset rules.

[!<SayBonusPenisCost>+

REQUIRES COMMENTING

+!]
To say bonus penis cost:
	if tg fetish >= 1:
		say "All increases are free. ";
	otherwise if min penis size points is 1 and micro-choice < 2:
		say "Next increase is free. ";
	otherwise if min penis size is 7:
		say "You are at maximum minimum penis length. ";
	otherwise:
		say "Next increase costs 1 point. ".


[!<TheTrapFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the trap fetish toggle rule:
	if trap fetish is 0 and points count >= 3, now choice in row 34 of the Table of Player Options is 1;
	otherwise now choice in row 34 of the Table of Player Options is 0.

This is the trap fetish reset rule:
	now choice in row 34 of the Table of Player Options is 0.
The trap fetish reset rule is listed in the reset rules.

[!<TheMindbreakProtectionToggleRule>+

REQUIRES COMMENTING

+!]
This is the mindbreak protection toggle rule:
	if mindbreak protection is 0 and points count >= 4, now choice in row 35 of the Table of Player Options is 1;
	otherwise now choice in row 35 of the Table of Player Options is 0.

This is the mindbreak protection reset rule:
	now choice in row 35 of the Table of Player Options is 0.
The mindbreak protection reset rule is listed in the reset rules.

[!<TheSpontaneousTattoosToggleRule>+

REQUIRES COMMENTING

+!]
This is the spontaneous tattoos toggle rule:
	if spontaneous tattoos is 0, now choice in row 36 of the Table of Player Options is 1;
	otherwise now choice in row 36 of the Table of Player Options is 0.

This is the spontaneous tattoos reset rule:
	now choice in row 36 of the Table of Player Options is 0.
The spontaneous tattoos reset rule is listed in the reset rules.

[!<TheRoleplayFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the roleplay fetish toggle rule:
	if roleplay fetish is 0 and points count >= 6, now choice in row 47 of the Table of Player Options is 1;
	otherwise now choice in row 47 of the Table of Player Options is 0.

This is the roleplay fetish reset rule:
	now choice in row 47 of the Table of Player Options is 0.
The roleplay fetish reset rule is listed in the reset rules.


[!<TheBondageProtectionToggleRule>+

REQUIRES COMMENTING

+!]
This is the bondage protection toggle rule:
	if bondage protection is 0 and points count >= 4, now choice in row 64 of the Table of Player Options is 1;
	otherwise now choice in row 64 of the Table of Player Options is 0.

This is the bondage protection reset rule:
	now choice in row 64 of the Table of Player Options is 0.
The bondage protection reset rule is listed in the reset rules.



Benefit Options ends here.

