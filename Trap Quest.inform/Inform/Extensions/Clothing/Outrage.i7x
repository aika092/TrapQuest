Outrage by Clothing begins here.

To decide which number is the outrage of (C - an object):
	decide on 0.

To decide which number is the partially visible outrage (N - a number) of (C - a thing):
	decide on (N * 7) / 10.
To decide which number is the partially visible outrage (N - a number) of (C - a dress):
	decide on (N * 17) / 20. [it's difficult to conceal much about a dress]
To decide which number is the partially visible outrage (N - a number) of (C - an equippable):
	decide on N / 2. [You can hide it behind your back]

To decide which number is the outrage of (C - a wearthing):
	if C is currently concealed, decide on 0;
	let O be the unworn outrage of C;
	if C is worn and C is not currently visible, decide on the partially visible outrage O of C;
	decide on O.

To decide which number is the unworn outrage of (C - a wearthing):
	decide on 0.

To decide which number is the notManlyFactor of (C - a clothing):
	if the player is presenting as male and C is not manly, decide on 1;
	decide on 0.

To decide which number is the unworn outrage of (C - a clothing):
	if C is messed knickers and diaper quest is 0 and C is currently at least partially visible, decide on 20;
	let O be the initial outrage of C;
	increase O by the notManlyFactor of C;
	[if O < 11 and C is drinkable condom pinned, now O is 11;] [can't have condoms pinned to your clothing for less than 11 outrage (also each condom including the first adds +1)]
	if diaper quest is 0 and O < 6 + the semen-soak of C and the semen-soak of C > 2, now O is 9; [can't have significant amounts of cum on your clothing for less than 9 outrage (also we will apply fluid outrage as normal on top of this 9)]
	if C is not worn or C is currently at least partially visible:
		increase O by the fluid outrage of C;
		if the used condoms of C > 0 and O < 11:
			now O is 11;
		increase O by the condom outrage of C;
	if O > 20, now O is 20;
	decide on O.

To decide which number is the fluid outrage of (C - a clothing):
	decide on the fluid cringe of C.

To decide which number is the fluid outrage of (C - a knickers):
	if diaper quest is 0, decide on the fluid cringe of C;
	decide on 0.

To decide which number is the fluid cringe of (C - a clothing):
	if it is external fluid immune and it is actually dense, decide on 0; [the liquid is all on the inside, and therefore not visible]
	if C is worn and (C is not currently at least partially visible or (the at least partial concealer of C is not arms and C is not currently visible)), decide on 0; [In general, clothing doesn't reveal its wet status when partially concealed, but arms is the exception]
	if C is swimming themed and the urine-soak of C < the soak-limit of C / 2: [Unless it's drenched in piss, we only care about semen-soak for swimwear]
		decide on (1 + the semen-soak of C) / 2;
	otherwise if diaper quest is 0:
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

Definition: a clothing (called C) is almost too much when visible:
	if the unworn outrage of C + 2 is too humiliating and the unworn outrage of C > 0, decide yes;
	decide no.

Definition: a clothing is outrageAcceptable:
	if the outrage of it <= 6, decide yes;
	decide no.

Outrage ends here.
