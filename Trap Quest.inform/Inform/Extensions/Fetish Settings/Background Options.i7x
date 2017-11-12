Background Options by Fetish Settings begins here.


[!<tableOfBackgroundOptions:Table>

REQUIRES COMMENTING

*!]
Table of Background Options
title	subtable	description	toggle
"[roman type]Previous Menu (shortcut: press Q)"	--	--	quit rule
"Background (only one): Nursing Student (you can sometimes scrounge up some bandages that slightly heal you, base intelligence slightly higher) - 5 points ([if background-nurse is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	first aid skill toggle rule
"Background (only one): Sporty (slightly higher strength, slightly reduced intelligence, build fatigue slightly slower) - 5 points ([if background-sporty is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	sporty background toggle rule
"Background (only one): Waitress (slightly higher dexterity, your work uniform's shoes are slightly impractical, so you have some skill walking in heels) - 5 points ([if background-waitress is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	waitress background toggle rule
"Background (only one): Pure (you start out really caring about your virginity) - 5 points ([if background-pure is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	pure background toggle rule
[MAKE SURE PURE BACKGROUND REMAINS THE BOTTOM ROW WHEN ADDING OTHERS]


[!<emptyBackgroundRules:Rulebook>*

REQUIRES COMMENTING

*!]
The empty background rules is a rulebook.

[!<TheFirstAidEmptyBackgroundRule>+

REQUIRES COMMENTING

+!]
This is the first aid empty background rule:
	now choice in row 52 of the Table of Player Options is 0.

The first aid empty background rule is listed in the empty background rules.

[!<TheFirstAidSkillToggleRule>+

REQUIRES COMMENTING

+!]
This is the first aid skill toggle rule:
	follow the empty background rules;
	if points count >= 5, now choice in row 52 of the Table of Player Options is 1.

[!<TheSportyEmptyBackgroundRule>+

REQUIRES COMMENTING

+!]
This is the sporty empty background rule:
	now choice in row 53 of the Table of Player Options is 0.

The sporty empty background rule is listed in the empty background rules.

[!<TheSportyBackgroundRule>+

REQUIRES COMMENTING

+!]
This is the sporty background toggle rule:
	follow the empty background rules;
	if points count >= 5, now choice in row 53 of the Table of Player Options is 1.

[!<TheWaitressEmptyBackgroundRule>+

REQUIRES COMMENTING

+!]
This is the waitress empty background rule:
	now choice in row 54 of the Table of Player Options is 0.

The waitress empty background rule is listed in the empty background rules.

[!<TheWaitressBackgroundtoggleRule>+

REQUIRES COMMENTING

+!]
This is the waitress background toggle rule:
	follow the empty background rules;
	if background-waitress is 0 and points count >= 5, now choice in row 54 of the Table of Player Options is 1.

[!<ThePureEmptyBackgroundRule>+

REQUIRES COMMENTING

+!]
This is the pure empty background rule:
	now choice in row 55 of the Table of Player Options is 0.

The pure empty background rule is listed in the empty background rules.

[!<ThePureBackgroundToggleRule>+

REQUIRES COMMENTING

+!]
This is the pure background toggle rule:
	follow the empty background rules;
	if points count >= 5, now choice in row 55 of the Table of Player Options is 1.




Background Options ends here.
