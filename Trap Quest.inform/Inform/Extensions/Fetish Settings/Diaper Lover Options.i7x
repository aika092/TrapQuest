Diaper Lover Options by Fetish Settings begins here.

To decide which number is diaper messing:
	if diaper lover <= 0, decide on 0;
	if choice in row 50 of the Table of Player Options <= 0, decide on 0;
	if (the player is not a top donator or diaper quest is 0) and choice in row 50 of the Table of Player Options >= 6, decide on 5;
	decide on choice in row 50 of the Table of Player Options.

Part 1 - Diaper Lover

Table of Diaper Options
title	subtable	description	toggle
"Only wetting today please. Disable messing for now, maybe another time!"	--	--	extreme diaper liker rule
"Absolutely not. Please permanently disable messing and never ask me again (to reverse this, you'll need to delete your 'character' settings file)."	--	--	extreme diaper hater rule
"Enable diaper messing scenes only (these will always be 'cleaned up' right away afterwards)."	--	--	extreme diaper lover rule
"Enable diaper messing (you'll need to go find a change yourself)."	--	--	messed diaper lover rule
"Messiness can happen all the time, even when I'm wearing panties! (+1 point)"	--	--	panty messer rule
"Yes to panty messing, and also messy diapers are usually left behind for me to clean up myself! (+1 point)[if diaper quest is 0] [bracket]DISABLED - Doesn't work in TQ yet, only DQ[close bracket][otherwise if the player is not a top donator] [bracket]DISABLED - Patrons only[close bracket][end if]"	--	--	diaper tidier rule
"Yes to panty messing and messy diaper tidying, and also enable scenes where my face is smushed against the (outside!) of messy diapers! (+3 points)[if diaper quest is 0] [bracket]DISABLED - Doesn't work in TQ yet, only DQ[close bracket][otherwise if the player is not a top donator] [bracket]DISABLED - Patrons only[close bracket][end if]"	--	--	diaper faceplanter rule

This is the messed diaper lover rule:
	now choice in row 50 of the Table of Player Options is 4;
	follow quit rule.

This is the extreme diaper lover rule:
	now choice in row 50 of the Table of Player Options is 3;
	follow quit rule.

This is the extreme diaper liker rule:
	now choice in row 50 of the Table of Player Options is 1;
	follow quit rule.

This is the extreme diaper hater rule:
	now choice in row 50 of the Table of Player Options is -2;
	follow quit rule.

This is the panty messer rule:
	now choice in row 50 of the Table of Player Options is 5;
	follow quit rule.

This is the diaper tidier rule:
	if the player is a top donator:
		now choice in row 50 of the Table of Player Options is 6;
		follow quit rule.

This is the diaper faceplanter rule:
	if the player is a top donator:
		now choice in row 50 of the Table of Player Options is 7;
		follow quit rule.

Part 2 - Toilet Allowance

Table of Toilet Allowance Options
title	subtable	description	toggle
"If I make it to the toilet, I should be allowed to use it instead of my diaper!"	--	--	toilet allowed rule
"If I'm in a cursed diaper, that's my own fault! (+3 points)"	--	--	toilet forbidden rule

This is the toilet allowed rule:
	now choice in row 39 of the Table of Player Options is 0;
	follow quit rule.

This is the toilet forbidden rule:
	now choice in row 39 of the Table of Player Options is 1;
	follow quit rule.

Part 3 - Diaper Swapper

To decide which number is diaper swapping:
	if diaper lover is 0, decide on 0;
	if the player is not a december 2022 diaper donator, decide on 0;
	decide on choice in row 46 of the Table of Player Options.

Table of Wet Diaper Swapping Options
title	subtable	description	toggle
"I would like absolutely minimal scenes where I am put in an already used diaper."	--	--	diaper swap hater rule
"I don't mind being put in used diapers, but only if they're unmessed."	--	--	diaper swap liker rule
"In addition to the above, I'm also happy for people to pee in my diaper while I'm wearing it."	--	--	diaper swap lover rule

Table of Messy Diaper Swapping Options
title	subtable	description	toggle
"I would like absolutely minimal scenes where I am put in an already used diaper."	--	--	diaper swap hater rule [0]
"I don't mind being put in used diapers, but only if they're unmessed."	--	--	diaper swap liker rule [1]
"In addition to the above, I'm also happy for people to pee in my diaper while I'm wearing it."	--	--	diaper swap lover rule [2]
"In addition to the above, I'm also happy to be forced to wear a diaper that's already been messed in."	--	--	messy diaper swap liker rule [3]
"In addition to the above, I'm also happy for people to mess in a diaper I'm currently wearing! (Mostly using magic)"	--	--	messy diaper swap lover rule [4]

This is the diaper swap hater rule:
	now choice in row 46 of the Table of Player Options is 0;
	follow quit rule.

This is the diaper swap liker rule:
	now choice in row 46 of the Table of Player Options is 1;
	follow quit rule.

This is the diaper swap lover rule:
	now choice in row 46 of the Table of Player Options is 2;
	follow quit rule.

This is the messy diaper swap liker rule:
	now choice in row 46 of the Table of Player Options is 3;
	follow quit rule.

This is the messy diaper swap lover rule:
	now choice in row 46 of the Table of Player Options is 4;
	follow quit rule.

Part 4 - Diaper Cumrag

To decide which number is diaper cumrag:
	if diaper lover is 0, decide on 0;
	if the player is not a december 2022 diaper donator, decide on 0;
	decide on choice in row 85 of the Table of Player Options.

Table of Diaper Cumrag Options
title	subtable	description	toggle
"I don't want anyone else to ejaculate semen into my diaper."	--	--	diaper cumrag hater rule
"I'm okay with risking people ejaculating semen into my diaper."	--	--	diaper cumrag liker rule
"In addition to the above, I'm also happy to give a helping hand."	--	--	diaper cumrag lover rule

This is the diaper cumrag hater rule:
	now choice in row 85 of the Table of Player Options is 0;
	follow quit rule.

This is the diaper cumrag liker rule:
	now choice in row 85 of the Table of Player Options is 1;
	follow quit rule.

This is the diaper cumrag lover rule:
	now choice in row 85 of the Table of Player Options is 2;
	follow quit rule.


Part 5 - Diaper Focus

Table of Diaper Focus Options
title	subtable	description	toggle
"If a guy wants to fuck me, it makes sense for him to rip off my diaper if I'm wearing one."	--	--	diaper unfocus rule
"The game should be focused on diapers, and if I'm wearing one, any punishments I suffer from losing a fight should bear that in mind."	--	--	diaper focus rule

This is the diaper unfocus rule:
	now choice in row 43 of the Table of Player Options is 0;
	follow quit rule.

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
