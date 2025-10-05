Gender Options by Fetish Settings begins here.

Table of Gender Options
title	subtable	description	toggle
"[roman type]I'm male, sissify[if diaper quest is 1] and babify[end if] me!"	--	--	male choice rule
"[roman type]I want to have a penis but always be gendered as a woman, right from the beginning."	--	--	trans choice rule
"[roman type]I'm female, [if diaper quest is 1]babify[otherwise]sluttify[end if] me!"	--	--	female choice rule

[0 means that males are referred to as male pronouns at times
1 means that the player is always referred to as female]
To decide which number is transGender:
	if transToggle is true:
		decide on 1 minus (choice in row 79 of the Table of Player Options);
	otherwise:
		decide on choice in row 79 of the Table of Player Options.

This is the male choice rule:
	now choice in row 1 of the Table of Player Options is 0;
	now choice in row 79 of the Table of Player Options is 0;
	follow quit rule.

This is the trans choice rule:
	now choice in row 1 of the Table of Player Options is 0;
	now choice in row 79 of the Table of Player Options is 1;
	follow quit rule.

This is the female choice rule:
	now choice in row 1 of the Table of Player Options is 1;
	now choice in row 79 of the Table of Player Options is 0;
	follow quit rule.

Figure of Gender Selection Backdrop is the file "Special/Menus/genderbackdrop1.jpg".

To compute new gender selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 3;
	now fetishSelection is 0;
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
			otherwise now current menu selection is 3;
		otherwise if __x is -3 or __x is -4: [down or left]
			if current menu selection is 3, now previous menu selection is 3;
			if current menu selection is less than 3, increase current menu selection by 1;
			otherwise now current menu selection is 1;
	if current menu selection is 1:
		now choice in row 1 of the Table of Player Options is 0;
		now choice in row 79 of the Table of Player Options is 0;
	otherwise if current menu selection is 2:
		now choice in row 1 of the Table of Player Options is 0;
		now choice in row 79 of the Table of Player Options is 1;
	otherwise:
		now choice in row 1 of the Table of Player Options is 1;
		now choice in row 79 of the Table of Player Options is 0;
	now current menu selection is 1;
	close the graphics-window;
	open the status window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To render full new gender selection menu:
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W2 be W / 3;
	display the image Figure of Gender Selection Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	repeat with X running from 1 to 3:
		let X2 be 1 + (W2 * X);
		let X1 be X2 - W2;
		let TXT be the substituted form of "fet6[X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from X1 by 1 to X2 by H as TXT, ignoring redundant links;
		if X is current menu selection:
			let lineY be (130 * H) / 1080;
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at X1 by lineY with size W2 by lineH;

Gender Options ends here.
