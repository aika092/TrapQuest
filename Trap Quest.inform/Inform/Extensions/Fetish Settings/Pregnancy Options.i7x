Pregnancy Options by Fetish Settings begins here.

Table of Pregnancy Options
title	subtable	description	toggle
"I would rather not give birth to something bizarre or inhuman."	--	--	inhuman pregnancy hater rule
"If it's at least partly human and doesn't come back I'm sure I'll be fine, but nothing too weird please!"	--	--	inhuman pregnancy disliker rule
"I'm prepared to risk giving birth to a monster, and even risk it growing up and deciding its own 'mother' would make a good mate! (+1 point)"	--	--	inhuman pregnancy rule
"Not only that, but it makes sense that when I'm pregnant with a monster, my pregnant belly might grow to absolutely insane sizes! (+2 points)"	--	--	inhuman pregnancy lover rule

This is the inhuman pregnancy lover rule:
	now choice in row 20 of the Table of Player Options is 3;
	follow quit rule.

This is the inhuman pregnancy rule:
	now choice in row 20 of the Table of Player Options is 2;
	follow quit rule.

This is the inhuman pregnancy disliker rule:
	now choice in row 20 of the Table of Player Options is 1;
	follow quit rule.

This is the inhuman pregnancy hater rule:
	now choice in row 20 of the Table of Player Options is 0;
	follow quit rule.

[!<randomSlowPregnancy:Integer>*

What have we chosen if the player selected random?

*!]
random slow pregnancy is a number that varies.
random slow birth is a number that varies.

To decide which number is slow pregnancy:
	if pregnancy fetish is 0, decide on 0;
	if sheer-suspenders is worn, decide on 0;
	if choice in row 49 of the Table of Player Options is -1, decide on random slow pregnancy;
	decide on choice in row 49 of the Table of Player Options.

To decide which number is slow birth:
	if pregnancy fetish is 0, decide on 0;
	if sheer-stockings is worn, decide on 3;
	if choice in row 75 of the Table of Player Options is 1, decide on random slow birth;
	decide on choice in row 75 of the Table of Player Options.

To decide which number is expectedChildRate:
	let E be 4;
	if slow pregnancy > 0:
		increase E by 2;
		if slow pregnancy > 1, increase E by 1;
	decrease E by slow birth;
	if E < 1, decide on 1; [Just to be safe]
	decide on E.

To decide which number is childValue times (N - a number):
	decide on (N * the children of the player) / expectedChildRate.

To decide which number is pregnancy points:
	if the player is female or tg fetish >= 1:
		let P be 3;
		if the player is female or TG fetish is 1:
			if choice in row 49 of the Table of Player Options is -1, increase P by 1;
			otherwise increase P by 2 - choice in row 49 of the Table of Player Options;
			increase P by choice in row 75 of the Table of Player Options;
		decide on P;
	decide on 0.

Table of Slow Pregnancy Options
title	subtable	description	toggle
"Pregnancy should be a rather slow process, to make it feel closer to real life. (+2 points)"	--	--	superslow pregnancy lover rule
"Pregnancy should not be too slow but not stupidly fast. (+1 point)"	--	--	slow pregnancy lover rule
"Pregnancies should grow superfast! (0 points)"	--	--	fast pregnancy lover rule
"Pregnancies should become full term immediately through magic! (-1 point)"	--	--	superfast pregnancy lover rule
"The way pregnancy works in this world should be a surprise! (+1 point)"	--	--	random pregnancy lover rule

This is the superfast pregnancy lover rule:
	now choice in row 49 of the Table of Player Options is 3;
	follow quit rule.

This is the superslow pregnancy lover rule:
	now choice in row 49 of the Table of Player Options is 0;
	follow quit rule.

This is the random pregnancy lover rule:
	now choice in row 49 of the Table of Player Options is -1;
	follow quit rule.

This is the fast pregnancy lover rule:
	now choice in row 49 of the Table of Player Options is 2;
	follow quit rule.

This is the slow pregnancy lover rule:
	now choice in row 49 of the Table of Player Options is 1;
	follow quit rule.

Table of Slow Birth Options
title	subtable	description	toggle
"Once my pregnancy hits full term, I should have to carry it around for a long time. (+3 points)"	--	--	superslow birth lover rule
"Birth should not take forever but I should be made to walk around with a full belly for a decent while. (+2 points)"	--	--	slow birth lover rule
"Give it just a minute then pop it out! (0 points)"	--	--	fast birth lover rule
"Birth should start a mere few moments after reaching full term! (-1 point)"	--	--	superfast birth lover rule
"The way birth works in this world should be a surprise! (+1 point)"	--	--	random birth lover rule

This is the superslow birth lover rule:
	now choice in row 75 of the Table of Player Options is 3;
	follow quit rule.

This is the slow birth lover rule:
	now choice in row 75 of the Table of Player Options is 2;
	follow quit rule.

This is the fast birth lover rule:
	now choice in row 75 of the Table of Player Options is 0;
	follow quit rule.

This is the superfast birth lover rule:
	now choice in row 75 of the Table of Player Options is -1;
	follow quit rule.

This is the random birth lover rule:
	now choice in row 75 of the Table of Player Options is 1;
	follow quit rule.


Figure of Pregnancy Type Selection Backdrop is the file "Special/Menus/pregnancybackdrop1.jpg".
Figure of Pregnancy Growth Selection Backdrop is the file "Special/Menus/pregnancybackdrop2.jpg".
Figure of Pregnancy Birth Selection Backdrop is the file "Special/Menus/pregnancybackdrop3.jpg".

To compute new pregnancy type selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 3;
	now fetishSelection is 1;
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
			otherwise now current menu selection is 4;
		otherwise if __x is -3 or __x is -4: [down or left]
			if current menu selection is 4, now previous menu selection is 4;
			if current menu selection is less than 4, increase current menu selection by 1;
			otherwise now current menu selection is 1;
	if current menu selection is 1:
		now choice in row 20 of the Table of Player Options is 0;
	otherwise if current menu selection is 2:
		now choice in row 20 of the Table of Player Options is 1;
	otherwise if current menu selection is 3:
		now choice in row 20 of the Table of Player Options is 2;
	otherwise:
		now choice in row 20 of the Table of Player Options is 3;
	now current menu selection is 1;
	close the graphics-window;
	open the status window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To render full new pregnancy type selection menu:
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W1 be (W * 416) / 1920; [first and third columns are smaller than 25%]
	let W2 be W / 4;
	display the image Figure of Pregnancy Type Selection Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	repeat with X running from 1 to 4:
		let X1 be 1;
		let X2 be W1 + 1;
		if X > 1:
			increase X1 by W1;
			increase X2 by W2;
			if X > 2:
				increase X1 by W2;
				increase X2 by W1;
				if X > 3:
					increase X1 by W1;
					now X2 is W - 1;
		let TXT be the substituted form of "fet6[X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from X1 by 1 to X2 by H as TXT, ignoring redundant links;
		if X is current menu selection:
			let lineY be (130 * H) / 1080;
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at X1 by lineY with size (X2 - X1) by lineH;

To compute new pregnancy growth selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 3;
	now fetishSelection is 3;
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
			otherwise now current menu selection is 5;
		otherwise if __x is -3 or __x is -4: [down or left]
			if current menu selection is 5, now previous menu selection is 5;
			if current menu selection is less than 5, increase current menu selection by 1;
			otherwise now current menu selection is 1;
	if current menu selection is 1:
		now choice in row 49 of the Table of Player Options is 3;
	otherwise if current menu selection is 2:
		now choice in row 49 of the Table of Player Options is 2;
	otherwise if current menu selection is 3:
		now choice in row 49 of the Table of Player Options is 1;
	otherwise if current menu selection is 4:
		now choice in row 49 of the Table of Player Options is 0;
	otherwise:
		now choice in row 49 of the Table of Player Options is -1;
	now current menu selection is 1;
	close the graphics-window;
	open the status window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To render full new pregnancy growth selection menu:
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W2 be W / 5;
	let Wx be W2 / 10;
	display the image Figure of Pregnancy Growth Selection Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	let X1 be 1;
	let X2 be X1 + W2 + Wx;
	repeat with X running from 1 to 5:
		let TXT be the substituted form of "fet6[X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from X1 by 1 to X2 by H as TXT, ignoring redundant links;
		if X is current menu selection:
			let lineY be (130 * H) / 1080;
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at X1 by lineY with size (X2 - X1) by lineH;
		now X1 is X2 + 1;
		increase X2 by W2;
		if X is 1, decrease X2 by Wx; [first selection is a little longer, second is a little shorter]

To compute new pregnancy birth selection window:
	now the position of the graphics-window is g-placeabove;
	now the measurement of the graphics-window is 99;
	open the graphics-window;
	[let H be the height of the graphics-window;
	let W be the width of the graphics-window;]
	now fetishMenuInProgress is 3;
	now fetishSelection is 4;
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
			otherwise now current menu selection is 5;
		otherwise if __x is -3 or __x is -4: [down or left]
			if current menu selection is 5, now previous menu selection is 5;
			if current menu selection is less than 5, increase current menu selection by 1;
			otherwise now current menu selection is 1;
	if current menu selection is 1:
		now choice in row 75 of the Table of Player Options is -1;
	otherwise if current menu selection is 2:
		now choice in row 75 of the Table of Player Options is 0;
	otherwise if current menu selection is 3:
		now choice in row 75 of the Table of Player Options is 2;
	otherwise if current menu selection is 4:
		now choice in row 75 of the Table of Player Options is 3;
	otherwise:
		now choice in row 75 of the Table of Player Options is 1;
	now current menu selection is 1;
	close the graphics-window;
	open the status window;
	now the position of the graphics-window is g-placeleft;
	now the measurement of the graphics-window is default-graphics-window-measurement.

To render full new pregnancy birth selection menu:
	let H be the height of the graphics-window;
	let W be the width of the graphics-window;
	let W1 be (W * 416) / 1920; [first and third columns are smaller than 25%]
	let W2 be W / 5;
	display the image Figure of Pregnancy Birth Selection Backdrop in the graphics-window at 0 by 0 with dimensions W by H;
	let X1 be 1;
	let X2 be W2 + X1;
	repeat with X running from 1 to 5:
		let TXT be the substituted form of "fet6[X]";
		set a graphlink in the graphics-window identified as hyperinventoryobject for yourself from X1 by 1 to X2 by H as TXT, ignoring redundant links;
		if X is current menu selection:
			let lineY be (130 * H) / 1080;
			let lineH be (2 * H) / 1080;
			if lineH < 1, now lineH is 1;
			draw a rectangle 16029161 in the graphics-window at X1 by lineY with size (X2 - X1) by lineH;
		increase X1 by W2;
		increase X2 by W2;

Pregnancy Options ends here.
