Cringe by Clothing begins here.

[Cringe is the ABDL version of outrage. How much does it make the player seem like a little rather than a grownup.]

To decide which number is the cringe of (C - an object):
	decide on 0.

To decide which number is the partially visible cringe (N - a number) of (C - a thing):
	decide on (N * 15) / 20.
To decide which number is the partially visible cringe (N - a number) of (C - a diaper): [diapers are just as humiliating even when partially covered up]
	decide on N.
To decide which number is the partially visible cringe (N - a number) of (C - a dress):
	decide on (N * 17) / 20. [it's difficult to conceal much about a dress]
To decide which number is the partially visible cringe (N - a number) of (C - an equippable):
	decide on N / 2. [You can hide it behind your back]

To decide which number is the cringe of (C - a wearthing):
	if C is currently concealed, decide on 0;
	let O be the unworn cringe of C;
	if C is worn and C is not currently visible, decide on the partially visible cringe O of C;
	decide on O.

To decide which number is the outrage of (C - a diaper):
	if diaper quest is 0, decide on the cringe of C;
	decide on 0.

To decide which number is the cringe of (C - a diaper):
	if C is worn:
		if C is not currently at least partially visible, decide on 0;
		if C is not currently visible:
			if the trophy-mode of diaper-trophy is 1 and the at least partial concealer of C is not arms, decide on 0;
	let O be the unworn cringe of C;
	if C is worn and C is not currently visible, now O is (O * 8) / 10;
	decide on O.

To decide which number is the unworn cringe of (C - a clothing):
	if C is messed knickers and C is currently at least partially visible and tubesuit is not worn, decide on 20; [tubesuit protects against smell escaping]
	let O be the initial cringe of C;
	if C is not worn or C is currently at least partially visible, increase O by the fluid cringe of C;
	if C is worn currently visible knickers:
		unless C is hotpants or C is cutoffs or C is diaper, increase O by 2; [Having one's knickers exposed is rather childlike.]
	if O > 20, now O is 20;
	decide on O.

To decide which number is the initial cringe of (C - a thing):
	decide on 0. [Default assumption is that it is not childish.]

Definition: a clothing (called C) is too adult:
	if the bimbo of the player > 7 and the cringe of C + 7 is not too humiliating and the cringe of C < 11 and C is actually dense and C is not super-short and C is not short and (C is not breast covering or C is normally-nipple-covering), decide yes;
	decide no.

Definition: a clothing (called C) is almost too cringeworthy:
	if the cringe of C + 2 is too humiliating and the cringe of C > 0, decide yes;
	decide no.

Cringe ends here.
