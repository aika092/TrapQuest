Secret Options by Fetish Settings begins here.

Table of Secret Options
title	subtable	description	toggle
"[roman type]Previous Menu (shortcut: press Q)"	--	--	quit rule
"Secret (only one): You secretly wonder what it would be like to be covered in tattoos (+1 strength & dex per three tattoos) - 7 points ([if tattoo-fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	tattoo fetish toggle rule
"Secret (only one): You secretly wonder what it would be like to be heavily pierced (+1 strength & dex per piercing) - 7 points ([if piercing-fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	 piercing fetish toggle rule
"Secret (only one): You secretly find humiliation kind of exhilarating (up to +5 strength & dex depending on decency) - 7 points ([if humiliation-fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	 humiliation fetish toggle rule
"Secret (only one): You secretly find the idea of artificial enhancement exciting[if artificial enhancements fetish is 0] - Only Available with Artificial Enhancements Selected![otherwise] - (up to +5 strength & dex depending on breast, hip and lip enhancements)[end if] - 7 points ([if artificial-fetish is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	 artificial fetish toggle rule

The empty secret rules is a rulebook.

This is the tattoo empty secret rule:
	now choice in row 56 of the Table of Player Options is 0.

The tattoo empty secret rule is listed in the empty secret rules.

This is the tattoo fetish toggle rule:
	if choice in row 56 of the Table of Player Options is 1:
		now choice in row 56 of the Table of Player Options is 0;
	otherwise:
		follow the empty secret rules;
		if points count >= 7, now choice in row 56 of the Table of Player Options is 1.

This is the piercing empty secret rule:
	now choice in row 57 of the Table of Player Options is 0.

The piercing empty secret rule is listed in the empty secret rules.

This is the piercing fetish toggle rule:
	if choice in row 57 of the Table of Player Options is 1:
		now choice in row 57 of the Table of Player Options is 0;
	otherwise:
		follow the empty secret rules;
		if points count >= 7, now choice in row 57 of the Table of Player Options is 1.

This is the humiliation empty secret rule:
	now choice in row 58 of the Table of Player Options is 0.

The humiliation empty secret rule is listed in the empty secret rules.

This is the humiliation fetish toggle rule:
	if choice in row 58 of the Table of Player Options is 1:
		now choice in row 58 of the Table of Player Options is 0;
	otherwise:
		follow the empty secret rules;
		if points count >= 7, now choice in row 58 of the Table of Player Options is 1.

This is the artificial empty secret rule:
	now choice in row 59 of the Table of Player Options is 0.

The artificial empty secret rule is listed in the empty secret rules.

This is the artificial fetish toggle rule:
	if choice in row 59 of the Table of Player Options is 1:
		now choice in row 59 of the Table of Player Options is 0;
	otherwise:
		follow the empty secret rules;
		if points count >= 7 and artificial enhancements fetish is 1, now choice in row 59 of the Table of Player Options is 1.

Secret Options ends here.
