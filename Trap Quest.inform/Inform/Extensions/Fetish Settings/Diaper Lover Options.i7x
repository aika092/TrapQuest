Diaper Lover Options by Fetish Settings begins here.

Part 1 - Diaper Lover

[!<tableOfDiaperOptions:Table>*

REQUIRES COMMENTING

*!]
Table of Diaper Options
title	subtable	description	toggle
"Only wetting today please. Disable messing for now, maybe another time!"	--	--	extreme diaper liker rule
"Absolutely not. Please permanently disable messing and never ask me again."	--	--	extreme diaper hater rule
"Enable diaper messing scenes only (these will always be 'cleaned up' right away afterwards)."	--	--	extreme diaper lover rule
"Enable diaper messing (you'll need to go find a change yourself)[if the player is not a top donator] [bracket]DISABLED - Patrons only[close bracket][end if]."	--	--	messed diaper lover rule


[!<TheMessedDiaperLoverRule>+

REQUIRES COMMENTING

+!]	
This is the messed diaper lover rule:
	if the player is a top donator:
		now choice in row 19 of the Table of Player Options is 4;
		follow quit rule.	

[!<TheExtremeDiaperLoverRule>+

REQUIRES COMMENTING

+!]
This is the extreme diaper lover rule:
	now choice in row 19 of the Table of Player Options is 3;
	follow quit rule.

[!<TheExtremeDiaperLikerRule>+

REQUIRES COMMENTING

+!]
This is the extreme diaper liker rule:
	now choice in row 19 of the Table of Player Options is 1;
	follow quit rule.

[!<TheExtremeDiaperHaterRule>+

REQUIRES COMMENTING

+!]
This is the extreme diaper hater rule:
	now choice in row 19 of the Table of Player Options is 2;
	follow quit rule.

Part 2 - Toilet Allowance


[!<tableOfToiletAllowanceOptions:Table>+

REQUIRES COMMENTING

+!]
Table of Toilet Allowance Options
title	subtable	description	toggle
"If I make it to the toilet, I should be allowed to use it instead of my diaper!"	--	--	toilet allowed rule
"If I'm in a cursed diaper, that's my own fault! (+3 points)"	--	--	toilet forbidden rule


[!<TheToiletAllowedRule>+

REQUIRES COMMENTING

+!]
This is the toilet allowed rule:
	now choice in row 39 of the Table of Player Options is 0;
	follow quit rule.

[!<TheToiletForbiddenRule>+

REQUIRES COMMENTING

+!]
This is the toilet forbidden rule:
	now choice in row 39 of the Table of Player Options is 1;
	follow quit rule.



Part 3 - Panty Messing


[!<tableOfPantyMessingOptions:Table>+

REQUIRES COMMENTING

+!]
Table of Panty Messing Options
title	subtable	description	toggle
"Messing is only for diapers!"	--	--	panty wetter rule
"Incontinence applies all the time, even when I'm wearing panties! (+1 point)"	--	--	panty messer rule


[!<ThePantyWetterRule>+

REQUIRES COMMENTING

+!]
This is the panty wetter rule:
	now choice in row 50 of the Table of Player Options is 0;
	follow quit rule.

[!<ThePantyMesserRule>+

REQUIRES COMMENTING

+!]
This is the panty messer rule:
	now choice in row 50 of the Table of Player Options is 1;
	follow quit rule.

Part 4 - Diaper Focus


[!<tableOfDiaperFocusOptions:Table>+

REQUIRES COMMENTING

+!]
Table of Diaper Focus Options
title	subtable	description	toggle
"If a guy wants to fuck me, it makes sense for him to rip off my diaper if I'm wearing one."	--	--	diaper unfocus rule
"The game should be focused on diapers, and if I'm wearing one, any punishments I suffer from losing a fight should bear that in mind."	--	--	diaper focus rule


[!<TheDiaperUnfocusRule>+

REQUIRES COMMENTING

+!]
This is the diaper unfocus rule:
	now choice in row 43 of the Table of Player Options is 0;
	follow quit rule.

[!<TheDiaperFocusRule>+

REQUIRES COMMENTING

+!]
This is the diaper focus rule:
	now choice in row 43 of the Table of Player Options is 1;
	follow quit rule.

[!<YourselfIsDiaperFocused>+

The player is only actually diaper focused while there is a worn diaper that can be used safely.

+!]
Definition: yourself is diaper focused:
	if diaper focus is 1 and (there is a worn total protection diaper or there is a worn messed diaper), decide yes;
	decide no.

[!<TheDiaperFocusPussySlutRule>+

If the player is diaper focused, vaginal sex is much less likely.

+!]
This is the diaper focus pussy slut rule:
	if the player is diaper focused, decrease the desirability of vagina by 10.
The diaper focus pussy slut rule is listed first in the pussy slut eligibility rules.

[!<TheDiaperFocusButtSlutRule>+

If the player is diaper focused, anal sex is much less likely.

+!]
This is the diaper focus butt slut rule:
	if the player is diaper focused, decrease the desirability of asshole by 5.
The diaper focus butt slut rule is listed first in the butt slut eligibility rules.


Diaper Lover Options ends here.

