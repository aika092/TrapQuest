Festive Options by Fetish Settings begins here.

Table of Festive Options
title	subtable	description	toggle
"[roman type]Confirm Choice (shortcut: press Q)"	--	--	quit rule
"Halloween content: ([if the player is not a top donator]alpha testers only outside of the Halloween release![otherwise if halloween content is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	halloween content toggle rule
"Christmas content: ([if the player is not a top donator]alpha testers only outside of the Christmas release![otherwise if christmas content is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	christmas content toggle rule
"April Fools content: ([if the player is not a top donator]alpha testers only outside of the early April release![otherwise if april fools content is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	april fools content toggle rule
"Easter content: ([if easter content is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	easter content toggle rule

This is the christmas content toggle rule:
	if the player is a top donator:
		if the choice in row 65 of the Table of Player Options < 9, now the choice in row 65 of the Table of Player Options is 9; [this enables it]
		otherwise now the choice in row 65 of the Table of Player Options is 0. [this disables it]

This is the easter content toggle rule:
	[if the player is a top donator:]
	if the choice in row 66 of the Table of Player Options < 2, now the choice in row 66 of the Table of Player Options is 2;
	otherwise now the choice in row 66 of the Table of Player Options is 0.

This is the april fools content toggle rule:
	if the player is a top donator:
		if the choice in row 67 of the Table of Player Options < 3, now the choice in row 67 of the Table of Player Options is 3;
		otherwise now the choice in row 67 of the Table of Player Options is 0.

This is the halloween content toggle rule:
	if the player is a top donator:
		if the choice in row 80 of the Table of Player Options < 9, now the choice in row 80 of the Table of Player Options is 9;
		otherwise now the choice in row 80 of the Table of Player Options is 8.

Definition: a clothing is halloween themed: decide no.

To decide which number is christmas content:
	if the player is not a top donator, decide on 0;
	if choice in row 65 of the Table of Player Options < 9, decide on 0;
	decide on 1.

To decide which number is easter content:
	if diaper quest is 0, decide on 0;
	if choice in row 66 of the Table of Player Options < 2, decide on 1;
	decide on 0.

To decide which number is april fools content:
	if the player is not a top donator, decide on 0;
	if choice in row 67 of the Table of Player Options < 3, decide on 0;
	decide on 1.

To decide which number is halloween content:
	if the player is not a top donator, decide on 0;
	if choice in row 80 of the Table of Player Options < 9, decide on 0;
	decide on 1.

Festive Options ends here.
