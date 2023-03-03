Secret Options by Fetish Settings begins here.

To decide which number is total-chosen-secrets:
	decide on tattoo-fetish + piercing-fetish + humiliation-fetish + artificial-fetish.
To decide which number is next-secret-cost:
	decide on 6 - total-chosen-secrets.
To decide which number is total-secret-cost:
	let C be 0;
	let T be total-chosen-secrets;
	if T > 0:
		repeat with X running from 1 to total-chosen-secrets:
			increase C by 7 - X;
	decide on C.

Table of Secret Options
title	subtable	description	toggle
"[roman type]Previous Menu (shortcut: press Q)"	--	--	quit rule
"Secret: You secretly wonder what it would be like to be covered in tattoos (+1 intelligence per three tattoos) - [next-secret-cost + tattoo-fetish] points ([if tattoo-fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	tattoo fetish toggle rule
"Secret: You secretly wonder what it would be like to be heavily pierced (+1 strength per piercing; piercings become slightly more common) - [next-secret-cost + piercing-fetish] points ([if piercing-fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	 piercing fetish toggle rule
"Secret: You secretly find humiliation kind of exhilarating (up to +10 magic power depending on your (lack of) self-respect) - [next-secret-cost + humiliation-fetish] points ([if humiliation-fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	 humiliation fetish toggle rule
"Secret: You secretly find the idea of artificial enhancement exciting[if artificial enhancements fetish is 0] - Only Available with Artificial Enhancements Selected![otherwise] - (up to +5 dex depending on breast, buttcheek and lip enhancements)[end if] - [next-secret-cost + artificial-fetish] points ([if artificial-fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	 artificial fetish toggle rule

The empty secret rules is a rulebook.

This is the tattoo empty secret rule:
	now choice in row 56 of the Table of Player Options is 0.

The tattoo empty secret rule is listed in the empty secret rules.

This is the tattoo fetish toggle rule:
	if choice in row 56 of the Table of Player Options is 1:
		now choice in row 56 of the Table of Player Options is 0;
	otherwise:
		if points count >= next-secret-cost, now choice in row 56 of the Table of Player Options is 1.

This is the piercing empty secret rule:
	now choice in row 57 of the Table of Player Options is 0.

The piercing empty secret rule is listed in the empty secret rules.

This is the piercing fetish toggle rule:
	if choice in row 57 of the Table of Player Options is 1:
		now choice in row 57 of the Table of Player Options is 0;
	otherwise:
		if points count >= next-secret-cost, now choice in row 57 of the Table of Player Options is 1.

This is the humiliation empty secret rule:
	now choice in row 58 of the Table of Player Options is 0.

The humiliation empty secret rule is listed in the empty secret rules.

This is the humiliation fetish toggle rule:
	if choice in row 58 of the Table of Player Options is 1:
		now choice in row 58 of the Table of Player Options is 0;
	otherwise:
		if points count >= next-secret-cost, now choice in row 58 of the Table of Player Options is 1.

This is the artificial empty secret rule:
	now choice in row 59 of the Table of Player Options is 0.

The artificial empty secret rule is listed in the empty secret rules.

This is the artificial fetish toggle rule:
	if choice in row 59 of the Table of Player Options is 1:
		now choice in row 59 of the Table of Player Options is 0;
	otherwise:
		if points count >= next-secret-cost, now choice in row 59 of the Table of Player Options is 1.

Secret Options ends here.
