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
"Mindbreak protection (player can't get broken: humiliation, bimbo and sex addiction cap slightly lowered) ([if mindbreak protection is 0]Not enabled - costs 4 points to enable[otherwise][bold type]Enabled[roman type] - 4 points used[end if])"	--	--	mindbreak protection toggle rule
"Bondage protection (most common ways of getting bondage including chastity are prevented) ([if bondage protection is 0]Not enabled - costs 4 points to enable[otherwise][bold type]Enabled[roman type] - 4 points used[end if])"	--	--	bondage protection toggle rule
"Spontaneous tattoos (If this is enabled, tattoos can spontaneously appear on their own in response to what you do in the game. Otherwise this only starts happening after you get your first tattoo voluntarily) ([if spontaneous tattoos is 0]Not enabled - free to enable[otherwise][bold type]Enabled[roman type] - free to disable[end if])"	--	--	spontaneous tattoos toggle rule
"Starting headgear rule (If this is enabled, a class headgear will appear in the pink wardrobe and you can choose to start that class journey straight away. You won't get that headgear the normal way until you've worn it.) - ([if roleplay fetish is 0]Not enabled - costs 1 point to enable[otherwise][bold type]Enabled[roman type] - 1 point used[end if])"	--	--	roleplay fetish toggle rule
"Minimum tank liquid: [if bonus liquid is 0]nearly empty[end if][if bonus liquid is 1]mostly empty[end if][if bonus liquid is 2]half full[end if][if bonus liquid is 3]over halfway full[end if][if bonus liquid is 4]mostly full[end if][if bonus liquid is 5]nearly full[end if][if bonus liquid is 6]completely full[end if] ([(bonus liquid * (1 + bonus liquid)) / 2] points used. [bonus liquid cost].)"	--	--	bonus liquid toggle rule
"No Gag Reflex - ([if super gag reflex is 0]Not enabled - costs 3 points to enable[otherwise if super gag reflex is 1][bold type]Partially enabled[roman type] (player never has problems deepthroating, never pukes the cum back up afterwards, but some rare situations can still cause puking) - 3 points used; costs 1 more point to fully enable[otherwise][bold type]Fully enabled[roman type] (player never has problems deepthroating, never pukes ever) - 4 points used[end if])"	--	--	super gag reflex toggle rule
"Remove Guest NPC (lets you get rid of the random patron-designed NPC that spawns each game): [if the player is not the donator]Beta testers only, sorry![otherwise if supportersEnabled is 0][bold type]Removed[roman type] (1 point used)[otherwise]Not removed (costs 1 point to enable)[end if]"	--	--	supporters enabled toggle rule
"Combat visor (lets you see some of the behind-the-scenes numbers being calculated. Can be removed but then can't be worn again): [if combatvisor is 1][bold type]Enabled[roman type] - 1 point used[otherwise]Disabled - costs 1 point to enable[end if]"	--	--	combat visor toggle rule
[ALL NON-DONATOR BENEFIT OPTIONS MUST GO ABOVE THE COMBAT VISOR LINE, WHICH IS REMOVED WHEN THE PLAYER IS THE DONATOR]

To compute random bonuses:
	let N be 0;
	follow the reset rule;
	while N < 500 and points count > 0:
		increase N by 1;
		choose a random row in the Table of Benefit Options;
		if diaper quest is 1, choose a random row in the Table of Diaper Quest Benefit Options;
		if there is toggle entry and toggle entry is not quit rule and toggle entry is not reset rule and toggle entry is not spontaneous tattoos toggle rule and toggle entry is not combat visor toggle rule and toggle entry is not supporters enabled toggle rule and toggle entry is not super gag reflex toggle rule and (a random number between 1 and 3 is 1 or toggle entry is not bonus liquid toggle rule):
			follow toggle entry;
		otherwise if there is subtable entry:
			if subtable entry is Table of Secret Options or subtable entry is Table of Background Options:
				choose a random row in subtable entry;
				if there is toggle entry and toggle entry is not quit rule, follow toggle entry.

The reset rules is a rulebook.

This is the reset rule:
	follow the empty background rules;
	follow the empty secret rules;
	follow the reset rules.

[!<SayMaxBreastsSizeDesc>+

This is the max size that breasts can go to.

+!]
To say MaxBreastSizeDesc:
	say BreastCup max breast size.

[!<DecideWhichNumberIsMaxBellySizeModifier>+

Used for calculating what the max belly size is. This is how much less than normal max it is.

+!]
To decide which number is max belly size modifier:
	let M be max belly size points;
	if max belly size points > 0, increase M by 2;
	if max belly size points > 1, increase M by 2;
	if max belly size points > 2, increase M by 2;
	decide on M.

[!<DecideWhichNumberIsMaxBellySize>+

Normal max is 10. We reduce by 3 per rank of max belly size points.

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

[This doesn't cost points and the player will probably want to choose the same thing each time.]
[This is the spontaneous tattoos reset rule:
	now choice in row 36 of the Table of Player Options is 0.
The spontaneous tattoos reset rule is listed in the reset rules.]

[!<TheRoleplayFetishToggleRule>+

REQUIRES COMMENTING

+!]
This is the roleplay fetish toggle rule:
	if roleplay fetish is 0 and points count >= 1, now choice in row 47 of the Table of Player Options is 1;
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

This is the combat visor toggle rule:
	if combatvisor is 0 and points count >= 1, now choice in row 76 of the Table of Player Options is 1;
	otherwise now choice in row 76 of the Table of Player Options is 0.

This is the supporters enabled toggle rule:
	if supportersEnabled is 1 and points count >= 1, now choice in row 77 of the Table of Player Options is 0;
	otherwise now choice in row 77 of the Table of Player Options is 1.

This is the super gag reflex toggle rule:
	if super gag reflex is 0 and points count >= 3:
		now choice in row 82 of the Table of Player Options is 1;
	otherwise if super gag reflex is 1 and points count >= 1:
		now choice in row 82 of the Table of Player Options is 2;
	otherwise:
		now choice in row 82 of the Table of Player Options is 0.

Benefit Options ends here.
