Body Limit Options by Fetish Settings begins here.

Table of Body Limit Options
title	subtable	description	toggle
"[roman type]Previous Menu (shortcut: press Q)"	--	--	quit rule
"Reduce Maximum Breast Size ([MaxBreastSizeDesc] - [max breast size points] points used. [bonus breast cost].)"	--	--	max breast size rule
"Reduce Maximum Ass Size ([MaxAssSizeDesc] - [max ass size points] points used)"	--	--	max ass size rule
"Reduce Maximum Belly Size [if weight gain fetish is 1 or pregnancy fetish is 1 or inflation fetish is 1](Except [end if][if weight gain fetish is 1]fat[end if][if weight gain fetish is 1 and (pregnancy fetish is 1 or inflation fetish is 1)] and [end if][if pregnancy fetish is 1]pregnancy[end if][if pregnancy fetish is 1 and inflation fetish is 1] and [end if][if inflation fetish is 1]air inflation[end if][if weight gain fetish is 1 or pregnancy fetish is 1 or inflation fetish is 1])[end if] ([MaxBellySizeDesc] - [max belly size points] points used)"	--	--	max belly size rule
"Futanari NPCs (Can biologically female NPCs have penises? If disabled, they'll have strapons instead) - [if futanari fetish is 2][bold type]enabled[roman type] (WITHOUT balls)[otherwise if futanari fetish is 1][bold type]enabled[roman type] (WITH balls)[otherwise if lady fetish is 2]disabled - all NPCs are set to masculine[otherwise]disabled[end if]"	--	--	futanari fetish rule
"Futanari content (Can you, as a biologically female player, grow a penis?) - [if player futanari fetish is 2][bold type]enabled[roman type] (WITHOUT balls)[otherwise if player futanari fetish is 1][bold type]enabled[roman type] (WITH balls)[otherwise if the player is not the donator]disabled - beta testers only for now[otherwise]disabled[end if]"	--	--	player futanari fetish rule
"Increase Minimum Penis Size ([if the player is female]Disabled since player is female[otherwise if min penis size is 0]No penis - 0 points used. [bonus penis cost][otherwise if min penis size is 1]Less than 1 inch - 1 point used. [bonus penis cost][otherwise if min penis size is 2]1 inch - 1 point used. [bonus penis cost][otherwise][min penis size] inch - [min penis size points] points used. [bonus penis cost][end if][if the player is male and tg fetish >= 1]When this size is reached, TG can occur.[end if])"	--	--	min penis size rule
"Flatchested until sex change ([if trap fetish is 0]Not enabled - costs 3 points to enable[otherwise]Enabled - 3 points used[end if])"	--	--	trap fetish toggle rule

[DO NOT PUT ANYTHING BELOW THE FLATCHESTED UNTIL SEX CHANGE OPTION]

This is the max breast size rule:
	if max breast size <= min breast size:
		follow the max breast size reset rule;
	otherwise if bonus max breast size points < max breast size points and bonus max breast size points < 4:
		increase choice in row 33 of the Table of Player Options by 1;
	otherwise if points count > 0:
		increase choice in row 27 of the Table of Player Options by 1;
	otherwise:
		follow the max breast size reset rule.

This is the max breast size reset rule:
	now choice in row 33 of the Table of Player Options is 0;
	now choice in row 27 of the Table of Player Options is 0.
The max breast size reset rule is listed in the reset rules.

To say bonus breast cost:
	if max breast size <= min breast size:
		say "No more points can be spent here due to starting proportions";
	otherwise if bonus max breast size points < max breast size points and bonus max breast size points < 4:
		say "Next increase is free";
	otherwise:
		say "Next increase costs 1 point".

This is the max ass size rule:
	if points count > 0 and max ass size - extreme proportions fetish > min ass size, increase choice in row 28 of the Table of Player Options by 1;
	otherwise follow the max ass size reset rule.

This is the max ass size reset rule:
	now choice in row 28 of the Table of Player Options is 0.
The max ass size reset rule is listed in the reset rules.

This is the max belly size rule:
	if points count > 0 and max belly size points < 3, increase choice in row 37 of the Table of Player Options by 1;
	otherwise follow the max belly size reset rule.

This is the max belly size reset rule:
	now choice in row 37 of the Table of Player Options is 0.
The max belly size reset rule is listed in the reset rules.

This is the min penis size rule:
	if min penis size points is 1 and micro-choice < 2:
		increase choice in row 30 of the Table of Player Options by 1;
	otherwise if min penis size points < (5 - (natural body shape * 2)) and the player is male and (points count > 0 or tg fetish >= 1):
		increase choice in row 29 of the Table of Player Options by 1;
	otherwise:
		follow the min penis size reset rule.

This is the min penis size reset rule:
	now choice in row 29 of the Table of Player Options is 0;
	now choice in row 30 of the Table of Player Options is 0.
The min penis size reset rule is listed in the reset rules.

To say bonus penis cost:
	if tg fetish >= 1:
		say "All increases are free. ";
	otherwise if min penis size points is 1 and micro-choice < 2:
		say "Next increase is free. ";
	otherwise if min penis size is 7:
		say "You are at maximum minimum penis length. ";
	otherwise:
		say "Next increase costs 1 point. ".

This is the trap fetish toggle rule:
	if tg fetish > 0 and trap fetish is 0 and points count >= 3, now choice in row 34 of the Table of Player Options is 1;
	otherwise now choice in row 34 of the Table of Player Options is 0.

This is the trap fetish reset rule:
	now choice in row 34 of the Table of Player Options is 0.
The trap fetish reset rule is listed in the reset rules.

[We don't really want this to reset each time, players probably want to stick with their selection]
[This is the futanari fetish reset rule:
	now choice in row 68 of the Table of Player Options is 0.
The futanari fetish reset rule is listed in the reset rules.]

Part 2 - Silicone Milk

Table of Silicone Milk Options
title	subtable	description	toggle
"Silicone-enhanced breasts should be able to store less breast milk than fully natural breasts of the same size."	--	--	silicone milk clash rule
"Man fuck realism, I want to be able to get some big plastic sloshy milk fountains!"	--	--	silicone milk merge rule

This is the silicone milk merge rule:
	now choice in row 84 of the Table of Player Options is 0;
	follow quit rule.

This is the silicone milk clash rule:
	now choice in row 84 of the Table of Player Options is 1;
	follow quit rule.

Body Limit Options ends here.
