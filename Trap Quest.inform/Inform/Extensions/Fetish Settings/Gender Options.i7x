Gender Options by Fetish Settings begins here.

[!<tableOfGenderOptions:Table>*

REQUIRES COMMENTING

*!]
Table of Gender Options
title	subtable	description	toggle
"[roman type]I'm male, sissify[if diaper quest is 1] and babify[end if] me!"	--	--	male choice rule
"[roman type]I want to have a penis but always be gendered as a woman, right from the beginning."	--	--	trans choice rule
"[roman type]I want to have a vagina but always be gendered as a man, right from the beginning."	--	--	transtwo choice rule
"[roman type]I'm female, [if diaper quest is 1]babify[otherwise]sluttify[end if] me!"	--	--	female choice rule


[0 means that males are referred to as male pronouns at times
1 means that the player is always referred to as female]
To decide which number is transGender:
	decide on choice in row 79 of the Table of Player Options.
	

[!<TheMaleChoiceRule>+

REQUIRES COMMENTING

+!]
This is the male choice rule:
	now choice in row 1 of the Table of Player Options is 0;
	now choice in row 79 of the Table of Player Options is 0;
	follow quit rule.

[!<TheTransChoiceRule>+

REQUIRES COMMENTING

+!]
This is the trans choice rule:
	now choice in row 1 of the Table of Player Options is 0;
	now choice in row 79 of the Table of Player Options is 1;
	follow quit rule.

[!<TheFemaleChoiceRule>+

REQUIRES COMMENTING

+!]	
This is the female choice rule:
	now choice in row 1 of the Table of Player Options is 1;
	now choice in row 79 of the Table of Player Options is 0;
	follow quit rule.
	
[!<TheTranstwoChoiceRule>+

REQUIRES COMMENTING

+!]	
This is the transtwo choice rule:
	now choice in row 1 of the Table of Player Options is 1;
	now choice in row 79 of the Table of Player Options is 1;
	follow quit rule.

Gender Options ends here.

