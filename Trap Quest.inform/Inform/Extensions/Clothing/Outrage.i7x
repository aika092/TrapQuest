Outrage by Clothing begins here.


To decide which number is the outrage of (C - an object):
	decide on 0.

To decide which number is the outrage of (C - a wearthing):
	if C is worn:
		if C is not currently visible, decide on 0;
	decide on the unworn outrage of C.

To decide which number is the unworn outrage of (C - a clothing):
	if C is messed knickers and diaper quest is 0, decide on 20;
	let O be the initial outrage of C;
	if the player is male:
		unless C is manly:
			if the bimbo of the player < 5, increase O by 1;
		if C is undies and C is total protection:
			if the armour of C > 6 and O > 2 and O < 6, now O is 2;
	if the player is female or the bimbo of the player > 9:
		if C is plentiful accessory, now O is 1;
		if C is undies and C is total protection:
			if the armour of C > 6 and O > 2 and O < 6, now O is 2;
	if diaper quest is 0, increase O by the fluid outrage of C;
	increase O by the condom outrage of C;
	if O < 9 and C is condom pinned, now O is 9; [can't have condoms pinned to your clothing for less than 9 outrage]
	if C is breast covering and C is actually sheer and O < the at least partially lewdly exposed outrage of breasts and breasts is at least partially lewdly exposed, now O is the at least partially lewdly exposed outrage of breasts; [EXPERIMENTAL: This is an item that partially exposes the player's breasts and therefore can't be less humiliating than being partially topless.]
	if C is breast covering and (C is nipple exposing or C is see-through) and O < the lewdly exposed outrage of breasts and breasts is lewdly exposed, now O is the lewdly exposed outrage of breasts; [EXPERIMENTAL: This is an item that exposes the player's breasts and therefore can't be less humiliating than being topless.]
	if C is crotch covering and C is actually sheer and O < the at least partially lewdly exposed outrage of asshole and asshole is at least partially lewdly exposed, now O is the at least partially lewdly exposed outrage of asshole; [EXPERIMENTAL: This is an item that partially exposes the player's butthole, does nothing for breast modesty and therefore can't be less humiliating than being partially bottomless.]
	if C is skirted and C is actually sheer and O < the at least partially lewdly exposed outrage of asshole and asshole is at least partially lewdly exposed, now O is the at least partially lewdly exposed outrage of asshole; [EXPERIMENTAL: This is a skirted item that partially exposes the player's butthole, does nothing for breast modesty and therefore can't be less humiliating than being partially bottomless.]	
	if C is crotch covering and (C is not total protection or C is see-through) and O < the lewdly exposed outrage of asshole and asshole is lewdly exposed, now O is the lewdly exposed outrage of asshole; [EXPERIMENTAL: This is an item that exposes the player's butthole, does nothing for breast modesty and therefore can't be less humiliating than being bottomless.]
	if C is skirted and (C is super-short or C is see-through) and O < the lewdly exposed outrage of asshole and asshole is lewdly exposed, now O is the lewdly exposed outrage of asshole; [EXPERIMENTAL: This is a skirted item that exposes the player's butthole, does nothing for breast modesty and therefore can't be less humiliating than being bottomless.]
	if C is worn currently visible clothing:
		if C is crotch-displaced or C is crotch-unzipped or C is crotch-ripped, increase O by 3; [This item should be blocking the crotch but it isn't.  How outrageous!]
	if O > 20, now O is 20;
	decide on O.

To decide which number is the outrage of (C - a vessel):
	if C is squirt dildo:
		decide on 11;
	otherwise if C is baby's bottle:
		decide on 8;
	otherwise if C is cocktail glass:
		decide on 3;
	otherwise:
		decide on 0.

To decide which number is the outrage of (C - a lubricant):
	decide on 7.

To decide which number is the outrage of (C - a sex toy):
	decide on 10 + the girth of C.
		
To decide which number is the fluid outrage of (C - a clothing):
	if diaper quest is 0:
		decide on (the semen-soak of C / 2) + (the urine-soak of C / 2) + (the milk-soak of C / 5);
	otherwise:
		if C is crotch covering and C is wet, decide on 5;
		decide on 0.

Definition: a clothing (called C) is dirty:
	if the total-soak of C - the water-soak of C > 0, decide yes;
	if C is diaper and the mess of C > 0, decide yes;
	decide no.

To say fluids of (C - a clothing):
	if the urine-soak of C > 0, say "[urine][if the milk-soak of C > 0 and the semen-soak of C > 0], [otherwise if the milk-soak of C > 0 or the semen-soak of C > 0] and [end if]";
	if the milk-soak of C > 0, say "[milk][if the semen-soak of C > 0] and [end if]";
	if the semen-soak of C > 0, say "[semen]".
	
To decide which number is the initial outrage of (C - a thing):
	decide on 0. [Default assumption is that it is not humiliating.]


Definition: a clothing (called C) is too boring:
	if diaper quest is 1, decide no;
	if the bimbo of the player > 7 and the outrage of C + 7 is not too humiliating and the outrage of C < 11 and C is dense and C is not super-short and C is not short, decide yes;
	decide no.


Definition: a clothing (called C) is almost too much:
	if the outrage of C + 2 is too humiliating and the outrage of C > 0, decide yes;
	decide no.


Outrage ends here.
