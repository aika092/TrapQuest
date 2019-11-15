Outrage by Clothing begins here.


To decide which number is the outrage of (C - an object):
	decide on 0.

To decide which number is the outrage of (C - a wearthing):
	if C is worn:
		if C is not currently at least partially visible, decide on 0;
		if C is clothing and (C is crotch-displaced or C is crotch-unzipped or C is crotch-ripped):
			let O be the unworn outrage of C;
			if C is crotch-displaced and C is skirted and the player is upright and the number of lewdly exposed fuckholes is 0, increase O by 1; [A little less outrageous than below because there are a few reasons you might pull up a skirt, e.g. combat]
			otherwise increase O by 3; [This item should be blocking the crotch but it isn't. How outrageous!]
			decide on O;
	decide on the unworn outrage of C.

To decide which number is the notManlyFactor of (C - a clothing):
	if the player is presenting as male and C is not manly, decide on 1;
	decide on 0.

To decide which number is the unworn outrage of (C - a clothing):
	if C is messed knickers and diaper quest is 0 and C is currently visible, decide on 20;
	let O be the initial outrage of C;
	increase O by the notManlyFactor of C;
	if C is sheer-when-wet and C is actually sheer, increase O by 2; [Wet T-shirt contest is not really a dignified look]
	if O < 11 and C is drinkable condom pinned, now O is 11; [can't have condoms pinned to your clothing for less than 11 outrage (also each condom including the first adds +1)]
	if diaper quest is 0 and O < 9 and the semen-soak of C > 0, now O is 9; [can't have cum on your clothing for less than 9 outrage (also we will apply fluid outrage as normal on top of this 9)]
	increase O by the fluid outrage of C;
	increase O by the condom outrage of C;
	[if C is breast covering and C is actually sheer and O < the at least partially lewdly exposed outrage of breasts and breasts is at least partially lewdly exposed, now O is the at least partially lewdly exposed outrage of breasts;
	if C is breast covering and (C is nipple exposing or C is see-through) and O < the lewdly exposed outrage of breasts and breasts is lewdly exposed, now O is the lewdly exposed outrage of breasts;
	if C is crotch covering and C is actually sheer and O < the at least partially lewdly exposed outrage of asshole and asshole is at least partially lewdly exposed, now O is the at least partially lewdly exposed outrage of asshole;
	if C is skirted and C is actually sheer and O < the at least partially lewdly exposed outrage of asshole and asshole is at least partially lewdly exposed, now O is the at least partially lewdly exposed outrage of asshole;
	if C is crotch covering and (C is not total protection or C is see-through) and O < the lewdly exposed outrage of asshole and asshole is lewdly exposed, now O is the lewdly exposed outrage of asshole;
	if C is skirted and (C is super-short or C is see-through) and O < the lewdly exposed outrage of asshole and asshole is lewdly exposed, now O is the lewdly exposed outrage of asshole;] [EXPERIMENTAL: Items can't be less humiliating than what they expose.]
	if O > 20, now O is 20;
	decide on O.

To decide which number is the outrage of (C - a vessel):
	if C is squirt dildo:
		decide on 11;
	otherwise if C is baby's bottle:
		decide on 8;
	otherwise if C is cocktail-glass:
		decide on 3;
	otherwise:
		decide on 0.

To decide which number is the outrage of (C - a lubricant):
	decide on 7.

To decide which number is the outrage of (C - a sex toy):
	decide on 10 + the girth of C.

To decide which number is the fluid outrage of (C - a clothing):
	decide on the fluid cringe of C.

To decide which number is the fluid outrage of (C - a knickers):
	if diaper quest is 0, decide on the fluid cringe of C;
	decide on 0.

To decide which number is the fluid cringe of (C - a clothing):
	if diaper quest is 0:
		decide on (1 + the semen-soak of C + the urine-soak of C + the milk-soak of C) / 2;
	otherwise:
		if C is crotch covering and C is wet, decide on 5;
		decide on 0.

Definition: a clothing (called C) is dirty rather than clean:
	if the total-soak of C - the water-soak of C > 0, decide yes;
	if C is messed knickers, decide yes;
	decide no.

To say fluids of (C - a clothing):
	if the urine-soak of C > 0, say "[urine][if the milk-soak of C > 0 and the semen-soak of C > 0], [otherwise if the milk-soak of C > 0 or the semen-soak of C > 0] and [end if]";
	if the milk-soak of C > 0, say "[milk][if the semen-soak of C > 0] and [end if]";
	if the semen-soak of C > 0, say "[semen]".

To decide which number is the initial outrage of (C - a thing):
	if diaper quest is 0, decide on the initial cringe of C / 2; [in TQ, cringe = outrage]
	decide on 0. [Default assumption is that it is not humiliating.]

Definition: a number (called N) is too boring:
	if diaper quest is 1, decide no;
	if the bimbo of the player > 7 and N + 7 is not too humiliating and N <= 11, decide yes;
	decide no.

Definition: a clothing (called C) is too boring:
	if diaper quest is 1, decide no;
	if the outrage of C is too boring and C is actually dense and C is not super-short[ and C is not short], decide yes;
	decide no.

Definition: a clothing (called C) is almost too much:
	if the outrage of C + 2 is too humiliating and the outrage of C > 0, decide yes;
	decide no.

Definition: a clothing is outrageAcceptable if the outrage of it <= 6.


Outrage ends here.

