Festive Options by Fetish Settings begins here.

Table of Festive Options
title	subtable	description	toggle
"[roman type]Return to Main Menu (shortcut: press Q)"	--	--	quit rule
"Halloween content: ([if the player is not a top donator][bold type]enabled[roman type] - alpha testers only can disable this during the Halloween release![otherwise if halloween content is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	halloween content toggle rule
"Christmas content: ([if the player is not a top donator]alpha testers only outside of the Christmas release![otherwise if christmas content is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	christmas content toggle rule
"April Fools content: ([if april fools content is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	april fools content toggle rule
"Easter content: ([if the player is not a top donator]alpha testers only outside of the Easter release![otherwise if easter content is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	easter content toggle rule
["April Fools content: ([if the player is not a top donator]alpha testers only outside of the April Fools release![otherwise if april fools content is 0]disabled[otherwise][bold type]enabled[roman type][end if])"	--	--	april fools content toggle rule]

This is the christmas content toggle rule:
	if the choice in row 65 of the Table of Player Options is 0, now the choice in row 65 of the Table of Player Options is 1;
	otherwise now the choice in row 65 of the Table of Player Options is 0.

This is the easter content toggle rule:
	if the choice in row 66 of the Table of Player Options is 0, now the choice in row 66 of the Table of Player Options is 1;
	otherwise now the choice in row 66 of the Table of Player Options is 0.

This is the april fools content toggle rule:
	if the choice in row 67 of the Table of Player Options is -1, now the choice in row 67 of the Table of Player Options is 1;
	otherwise now the choice in row 67 of the Table of Player Options is -1.

This is the halloween content toggle rule:
	if the choice in row 80 of the Table of Player Options < 2, now the choice in row 80 of the Table of Player Options is 2; [this DISABLES it]
	otherwise now the choice in row 80 of the Table of Player Options is 0. [this enables it]

Definition: a clothing is halloween themed: decide no.

Festive Options ends here.
