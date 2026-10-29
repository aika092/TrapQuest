Diaper Lover Options by Fetish Settings begins here.

To decide which number is diaper messing:
	if diaper lover <= 0, decide on 0;
	if choice in row 50 of the Table of Player Options <= 0, decide on 0;
	if (the player is not a top donator or diaper quest is 0) and choice in row 50 of the Table of Player Options >= 6, decide on 5;
	decide on choice in row 50 of the Table of Player Options.

Part 0 - Secret Diaper Option

Table of Secret Diaper Options
title	subtable	description	toggle
"Yes, I want diapers included in this game too."	--	--	secret diaper liker rule
"No thanks, keep the diaper play to Diaper Quest."	--	--	secret diaper disliker rule

This is the secret diaper liker rule:
	now choice in row 19 of the Table of Player Options is 1;
	follow quit rule.

This is the secret diaper disliker rule:
	now choice in row 19 of the Table of Player Options is 0;
	follow quit rule.

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
"If I make it to the [SlimeTarget], I should be allowed to use it instead of my diaper!"	--	--	toilet allowed rule
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
	decide on choice in row 46 of the Table of Player Options.

Table of Wet Diaper Swapping Options
title	subtable	description	toggle
"I would like absolutely minimal scenes where I am put in an already used diaper."	--	--	diaper swap hater rule
"I don't mind being put in used diapers, but only if they're unmessed."	--	--	diaper swap liker rule [1]
"In addition to the above, I'm also happy for people to [slimedrain] in my diaper while I'm wearing it."	--	--	diaper swap lover rule [2]

Table of Messy Diaper Swapping Options
title	subtable	description	toggle
"I would like absolutely minimal scenes where I am put in an already used diaper."	--	--	diaper swap hater rule [0]
"I don't mind being put in used diapers, but only if they're unmessed."	--	--	diaper swap liker rule [1]
"In addition to the above, I'm also happy for people to [slimedrain] in my diaper while I'm wearing it."	--	--	diaper swap lover rule [2]
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
	if the player is not a top donator, decide on 0;
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



Part 6 - Hungry Messer

[In Diaper Quest, with messing enabled, usually the player doesn't get hungry, and is supposed to play to avoid food, and therefore avoid messing. But another challenge might be if the player DOES get hungry...]

To decide which number is hungry messer:
	if diaper quest is 0, decide on 0;
	if weight gain fetish is 1, decide on 1;
	if diaper messing < 3, decide on 0;
	decide on choice in row 86 of the Table of Player Options.

Table of Hungry Messer Options
title	subtable	description	toggle
"My character doesn't get hungry (unless there's a temporary magical effect making it so). The game needs to pressure or force me into eating if it wants to make me poop."	--	--	food avoidance messer rule
"When my stomach is empty, I get hungry and start to slowly lose strength. Since I need to eat to survive, I'm inevitably going to find myself frequently needing to poop. (+8 points)"	--	--	hungry messer rule

This is the food avoidance messer rule:
	now choice in row 86 of the Table of Player Options is 0;
	follow quit rule.

This is the hungry messer rule:
	now choice in row 86 of the Table of Player Options is 1;
	follow quit rule.


Figure of secret dq Selection Backdrop is the file "Special/Menus/diaperbackdrop1.jpg".

To compute new secret dq selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 3;
	now fetishSelection is 6;
	let menuItems be 2;
	now current menu selection is 1;
	[wait 50 ms before continuing;]
	close the status window;
	while fetishMenuInProgress is 3:
		update the status line;
		refresh the graphics-window;
		let __x be the chosen letter;
		if __x is 81 or __x is 113 or __x is -6 or __x is 13 or __x is 32 or candidate replacement command is "quit":
			now fetishMenuInProgress is 0;
			now waitingForChar is false;
		otherwise if __x is -2 or __x is -5: [up or right]
			if current menu selection is 1, now previous menu selection is 1;
			if current menu selection is greater than 1, decrease current menu selection by 1;
			otherwise now current menu selection is menuItems;
		otherwise if __x is -3 or __x is -4: [down or left]
			if current menu selection is menuItems, now previous menu selection is menuItems;
			if current menu selection is less than menuItems, increase current menu selection by 1;
			otherwise now current menu selection is 1;
	if current menu selection is 1:
		now choice in row 19 of the Table of Player Options is 1;
	otherwise:
		now choice in row 19 of the Table of Player Options is 0;
	now current menu selection is 1;
	close the graphics-window;
	open the status window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To render full new secret dq selection menu:
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W1 be W / 2;
	display the image Figure of secret dq Selection Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	repeat with X running from 1 to 2:
		let X1 be 1;
		let X2 be W1 + 1;
		if X > 1:
			increase X1 by W1;
			increase X2 by W1;
		let TXT be the substituted form of "fet6[X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from X1 by 1 to X2 by H as TXT, ignoring redundant links;
		if X is current menu selection:
			let lineY be (247 * H) / 1080;
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at X1 by lineY with size (X2 - X1) by lineH;


Diaper Lover Options ends here.
