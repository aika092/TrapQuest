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
"CHOOSE BODY SHAPE LIMITATIONS"	Table of Body Limit Options	--	--
"Extra Strength: [bonus strength] ([bonus strength points] points used. [bonus strength cost].)"	--	--	bonus strength rule
"Extra Dexterity: [bonus dexterity] ([bonus dexterity points] points used. [bonus dexterity cost].)"	--	--	bonus dexterity rule
"Extra Intelligence: [bonus intelligence] ([bonus intelligence points] points used. [bonus intelligence cost].)"	--	--	bonus intelligence rule
"Mindbreak protection (player can't get broken: humiliation, bimbo and sex addiction cap slightly lowered) ([if mindbreak protection is 0]Not enabled - costs 4 points to enable[otherwise]Enabled - 4 points used[end if])"	--	--	mindbreak protection toggle rule
"Bondage protection (most common ways of getting bondage including chastity are prevented) ([if bondage protection is 0]Not enabled - costs 4 points to enable[otherwise]Enabled - 4 points used[end if])"	--	--	bondage protection toggle rule
"Spontaneous tattoos (If this is disabled, tattoos won't spawn on their own until you get one voluntarily) ([if spontaneous tattoos is 0]Not enabled - free to enable[otherwise]Enabled - free to disable[end if])"	--	--	spontaneous tattoos toggle rule
"Starting headgear rule (If this is enabled, a class headgear will appear in the pink wardrobe and other headgears will appear much more rarely) - 6 points ([if roleplay fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	roleplay fetish toggle rule
"Minimum tank liquid: [if bonus liquid is 0]nearly empty[end if][if bonus liquid is 1]mostly empty[end if][if bonus liquid is 2]half full[end if][if bonus liquid is 3]over halfway full[end if][if bonus liquid is 4]mostly full[end if][if bonus liquid is 5]nearly full[end if][if bonus liquid is 6]completely full[end if] ([(bonus liquid * (1 + bonus liquid)) / 2] points used.  [bonus liquid cost].)"	--	--	bonus liquid toggle rule


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

To say bonus liquid cost:
	if bonus liquid < max bonus liquid, say "Next increase costs [bonus liquid + 1] points"; 
	if bonus liquid is max bonus liquid, say "You are at maximum bonus liquid". 
This is the bonus liquid toggle rule: 
	if bonus liquid < max bonus liquid and points count > bonus liquid, increase choice in row 63 of the Table of Player Options by 1. 
This is the bonus liquid reset rule:
	now choice in row 63 of the Table of Player Options is 0. 
The bonus liquid reset rule is listed in the reset rules.

Benefit Options ends here.

