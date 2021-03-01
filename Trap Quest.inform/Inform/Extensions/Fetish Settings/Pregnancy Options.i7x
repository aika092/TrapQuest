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
	if choice in row 49 of the Table of Player Options is -1, decide on random slow pregnancy;
	decide on choice in row 49 of the Table of Player Options.

To decide which number is slow birth:
	if pregnancy fetish is 0, decide on 0;
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

Pregnancy Options ends here.
