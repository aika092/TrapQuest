Instant TG Options by Fetish Settings begins here.

Definition: yourself is ready for uncommon event tg:[used to be "ready for event TG"]
	if the player is not sexed male or tg fetish is 0, decide no;
	if uncommon event tg is 1 or the size of penis <= min penis size, decide yes;
	decide no.
Definition: yourself is ready for common event TG:[implies regular event tg]
	if the player is not sexed male or tg fetish is 0, decide no;
	if common event tg is 1 or the size of penis <= min penis size, decide yes;
	decide no.

[
1: TG never happens from shrinkage
2: TG happens from orgasms at minimum penis size
3: TG happens shorty after penis shrinks to minimum value
4: TG happens instantly when penis shrinks to minimum value
]
To decide which number is shrink TG:
	if TG fetish is 0, decide on 0;
	decide on 1 + (choice in row 73 of the Table of Player Options / 3).
To decide which number is orgasm shrink TG:[shrink tg 2+]
	if shrink TG > 1, decide on 1;
	decide on 0.
To decide which number is timer shrink TG:[shrink tg 3]
	if shrink TG is 3, decide on 1;
	decide on 0.
To decide which number is instant shrink TG:[shrink tg 4]
	if shrink TG is 4, decide on 1;
	decide on 0.

Table of TG Occurence Options
title	subtable	description	toggle
"Once at minimum penis size ([PenisFlavour min penis size]), I still have to encounter some kind of event to be transformed."	--	--	instant tg hater rule
"Once I have a [PenisFlavour min penis size], I still have to encounter some kind of event, or experience another shameful orgasm, to be transformed."	--	--	instant tg disliker rule
"Shortly after I get a [PenisFlavour min penis size], transformation should occur!"	--	--	instant tg liker rule
"As soon I get a [PenisFlavour min penis size], transformation should occur!"	--	--	instant tg lover rule

This is the instant tg lover rule:
	increase choice in row 73 of the Table of Player Options by 9;
	follow quit rule.

This is the instant tg liker rule:
	increase choice in row 73 of the Table of Player Options by 6;
	follow quit rule.

This is the instant tg disliker rule:
	increase choice in row 73 of the Table of Player Options by 3;
	follow quit rule.

This is the instant tg hater rule:
	follow quit rule.

[
Before minimum penis size...
1: TG only happens from the most telegraphed of events
2: TG happens from some unlucky events
3: TG can happen spontaneously from relatively common events
]
To decide which number is event TG:
	if TG fetish is 0, decide on 0;
	decide on 1 + the remainder after dividing choice in row 73 of the Table of Player Options by 3.
To decide which number is uncommon event tg:[event tg 2+]
	if event TG > 1, decide on 1;
	decide on 0.
To decide which number is common event TG:[event tg 3]
	if event TG > 2, decide on 1;
	decide on 0.

Table of TG Timing Options
title	subtable	description	toggle
"[if diaper quest is 0]Outside of wearing specific vaginal virginity headgear, t[otherwise]T[end if]ransforming into a [if transGender is 1]biological [end if]woman should be something that can only happen once I reach minimum penis size."	--	--	spontaneous tg hater rule
"Transforming into a [if transGender is 1]biological [end if]woman should usually wait until I reach minimum penis size, unless I get [']caught out['] by something particularly unlucky and/or powerful."	--	--	spontaneous tg liker rule
"Transforming into a [if transGender is 1]biological [end if]woman should be something that is always at risk of happening to me at any time!"	--	--	spontaneous tg lover rule

This is the spontaneous tg lover rule:
	increase the choice in row 73 of the Table of Player Options by 2;
	follow quit rule.

This is the spontaneous tg liker rule:
	increase the choice in row 73 of the Table of Player Options by 1;
	follow quit rule.

This is the spontaneous tg hater rule:
	[increase the choice in row 73 of the Table of Player Options by 0;]
	follow quit rule.


Instant TG Options ends here.
