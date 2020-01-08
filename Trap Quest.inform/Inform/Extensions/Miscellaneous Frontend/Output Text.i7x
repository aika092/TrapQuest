Output Text by Miscellaneous Frontend begins here.


To decide which number is TQWhite:
	decide on 16777215.
To decide which number is TQMagenta:
	decide on 16711935.
To decide which number is TQPaleBrown:
	decide on 14993580.
To decide which number is TQLightBrown:
	decide on 11887901.
To decide which number is TQBrown:
	decide on 8414785.
To decide which number is TQDarkBrown:
	decide on 5848095.
To decide which number is TQDarkestBrown:
	decide on 1576193.
To decide which number is TQLightGrey:
	decide on 13882323.
To decide which number is TQDarkGrey:
	decide on 3355443.
To decide which number is TQBlack:
	decide on 0.
To decide which number is TQFullGreen:
	decide on 65280.
To decide which number is TQDarkishGreen:
	decide on 25600.
To decide which number is TQDarkGreen:
	decide on 32768.
To decide which number is TQDarkestGreen:
	decide on 9728.
To decide which number is TQFullRed:
	decide on 16711680.
To decide which number is TQDarkishRed:
	decide on 8323072.
To decide which number is TQDarkRed:
	decide on 6684672.
To decide which number is TQDarkestRed:
	decide on 1966080.
To decide which number is TQFullYellow:
	decide on 16763904.
To decide which number is TQDarkYellow:
	decide on 11701760.
To decide which number is TQHighlightYellow:
	decide on 16777146.
To decide which number is TQHighlightDarkYellow:
	decide on 8355677.

To decide which number is lightModeWhite:
	if darkMode > 0, decide on TQDarkestBrown;
	decide on TQWhite.
To decide which number is lightModeLightGrey:
	if darkMode > 0, decide on TQDarkGrey;
	decide on TQLightGrey.
To decide which number is lightModeFullGreen:
	if darkMode > 0, decide on TQDarkGreen;
	decide on TQFullGreen.
To decide which number is lightModeDarkGreen:
	if darkMode > 0, decide on TQDarkestGreen;
	decide on TQDarkishGreen.
To decide which number is lightModeFullRed:
	if darkMode > 0, decide on TQDarkRed;
	decide on TQFullRed.
To decide which number is lightModeDarkRed:
	if darkMode > 0, decide on TQDarkestRed;
	decide on TQDarkishRed.
To decide which number is lightModeFullYellow:
	if darkMode > 0, decide on TQDarkYellow;
	decide on TQFullYellow.
To decide which number is lightModeHighlightYellow:
	if darkMode > 0, decide on TQHighlightDarkYellow;
	decide on TQHighlightYellow.
To decide which text is lightModeWhiteHex:
	if darkMode > 0, decide on "#180D01"; [DarkestBrown]
	decide on "#ffffff".
To decide which text is lightModeWhiteGraphicsHex:
	if darkMode > 0, decide on "#180D01"; [DarkestBrown]
	decide on "#ffffff".
To decide which text is lightModeWhiteTextHex:
	if darkMode is 1, decide on "#180D01"; [DarkestBrown]
	decide on "#ffffff".
To decide which text is lightModeTextHex:
	if darkMode is 1, decide on "#ffffff"; [White text]
	decide on "#000000". [Black text]
To decide which text is lightModeSpecial1Hex:
	if darkMode is 1, decide on "#ee0000"; [Lighter red text]
	decide on "#aa0000". [Dark red text]
To decide which number is lightModeBrown:
	if darkMode > 0, decide on TQDarkBrown;
	decide on TQPaleBrown.
To decide which number is lightModeBorder:
	if darkMode > 0, decide on TQBlack;
	decide on TQDarkBrown.

[!<SayInputStyle>+

Red text

+!]
To say input-style:
	(- glk_set_style(style_Input); -)

[!<SayNewbieStyle>+

Green text

+!]
To say newbie style:
	(- glk_set_style(style_BlockQuote); -)

[!<tableOfUserStyles:Table>*

REQUIRES COMMENTING

*!]
Table of User Styles (continued)
style name	background color	justification	italic	indentation	first line indentation	fixed width	color
special-style-2	--	left-right-justified	true	15	-4	false	"#ff00ff" [magenta]
special-style-1	--	left-right-justified	true	15	-4	false	"#aa0000" [dark red]
blockquote-style	--	left-right-justified	false	0	0	false	"#006400" [dark green]
input-style	--	left-right-justified	false	0	0	false	"#ff0000" [pure red]
italic-style	--	center-justified	false	0	0	false	--


[Table of Common Color Values (continued)
glulx color value	assigned number
g-pure-blue	255
g-pure-green	65280
g-pure-cyan	65535
g-pure-yellow	16776960
g-pure-magenta	16711935
g-pure-red	16711680
g-dark-red	11141120 ]

Output Text ends here.
