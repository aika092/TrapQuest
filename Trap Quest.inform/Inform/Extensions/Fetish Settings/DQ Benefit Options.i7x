DQ Benefit Options by Fetish Settings begins here.

Table of Diaper Quest Benefit Options
title	subtable	description	toggle
"[roman type]Confirm Choices (shortcut: press Q)"	--	--	quit rule
"Reset Choices"	--	--	reset rule
"CHOOSE A BACKGROUND (5 points) [if background-selected is 0]not [otherwise][bold type][end if]chosen[roman type]"	Table of Background Options	--	--
"Extra Strength: [bonus strength] ([bonus strength points] points used. [bonus strength cost].)"	--	--	bonus strength rule
"Extra Dexterity: [bonus dexterity] ([bonus dexterity points] points used. [bonus dexterity cost].)"	--	--	bonus dexterity rule
"Extra Intelligence: [bonus intelligence] ([bonus intelligence points] points used. [bonus intelligence cost].)"	--	--	bonus intelligence rule
"Mindbreak protection (Prevents the final stages of dignity, delicateness and sex addiction) ([if mindbreak protection is 0]Not enabled - costs 4 points to enable[otherwise]Enabled - 4 points used[end if])"	--	--	mindbreak protection toggle rule
"Bondage protection ([if bondage protection is 0]Not enabled - costs 2 points to partially enable[otherwise if bondage protection is 1][bold type]Partially Enabled[roman type] (skeleton keys are less rare and even work on clothing NPCs lock on you with specific keys)[otherwise][bold type]Enabled[roman type] (bondage, including chastity, only happens from rare scenes when absolutely required) - 4 points used[end if])"	--	--	bondage protection toggle rule
"Maximum Incontinence: [if incontinence protection is 0]Full incontinence & doesn't automatically notice wet diapers - 0 points spent[otherwise if incontinence protection is 1]Full incontinence - 2 points spent[otherwise if incontinence protection is 2]Very incontinent - 4 points spent[otherwise if incontinence protection is 3]Quite incontinent - 6 points spent[otherwise if incontinence protection is 4]A little incontinent - 8 points spent[otherwise]No incontinence - 10 points used[end if] (costs 2 points per level)"	--	--	incontinence protection toggle rule
"Spontaneous tattoos (If this is enabled, tattoos can spontaneously appear on their own in response to what you do in the game. Otherwise this only starts happening after you get your first tattoo voluntarily) ([if spontaneous tattoos is 0]Not enabled - free to enable[otherwise][bold type]Enabled[roman type] - free to disable[end if])"	--	--	spontaneous tattoos toggle rule
"Slower timers (Things like the academy class bell and doom quest ritual are more forgiving.) - ([if slower timers is 1]Not enabled - costs 2 points to enable[otherwise][bold type]Enabled[roman type] - 2 points used[end if])"	--	--	slower timers toggle rule
"Easy Teaching (NPCs won't ask for a favour before teaching you a skill) - ([if easy teaching is 0]Not enabled - costs 2 points to enable[otherwise if easy teaching is 1][bold type]Enabled[roman type] - 2 points used[end if])"	--	--	easy teaching toggle rule
"Minimum tank liquid: [if bonus liquid is 0]nearly empty[end if][if bonus liquid is 1]mostly empty[end if][if bonus liquid is 2]half full[end if][if bonus liquid is 3]over halfway full[end if][if bonus liquid is 4]mostly full[end if][if bonus liquid is 5]nearly full[end if][if bonus liquid is 6]completely full[end if] ([(bonus liquid * (1 + bonus liquid)) / 2] points used. [bonus liquid cost].)"	--	--	bonus liquid toggle rule
"Combat visor (lets you see some of the behind-the-scenes numbers being calculated. Can be removed but then can't be worn again): [if combatvisor is 1][bold type]Enabled[roman type] - 1 point used[otherwise]Disabled - costs 1 point to enable[end if]"	--	--	combat visor toggle rule
[ALL BENEFIT OPTIONS MUST GO ABOVE THE COMBAT VISOR LINE, WHICH IS REMOVED WHEN THE PLAYER IS THE DONATOR]

This is the incontinence protection toggle rule:
	if incontinence protection < 5 and points count >= 2, increase choice in row 71 of the Table of Player Options by 1;
	otherwise now choice in row 71 of the Table of Player Options is 0.

This is the incontinence protection reset rule:
	now choice in row 71 of the Table of Player Options is 0.
The incontinence protection reset rule is listed in the reset rules.

DQ Benefit Options ends here.
