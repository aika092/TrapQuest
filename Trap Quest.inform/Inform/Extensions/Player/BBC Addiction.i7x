BBC Addiction by Player begins here.

Part 1- Calculate BBC Addiction

[!<DecideWhichNumberIsTheBBCAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the BBC Addiction of the player:
	decide on previous-bbc-addiction.

[!<DecideWhichNumberIsTheCalculatedBBCAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the calculated BBC Addiction of the player:
	let S be the raw BBC Addiction of the player;
	repeat with C running through worn wearthings:
		increase S by the BBC-sex-addiction-influence of C;
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

[!<DecideWhichNumberIsTheBBCAddictionInfluenceOfWearthing>+

REQUIRES COMMENTING

+!]
To decide which number is the BBC-sex-addiction-influence of (C - a wearthing):
	if C is interracial themed, decide on 1;
	decide on 0.

Definition: yourself is gagging for black cock:
	if (the player is very horny and the bbc addiction of the player > 4) or (the player is horny and the bbc addiction of the player > 6) or (the player is a bit horny and the bbc addiction of the player > 8): [It's much faster for the CPU to check this first, rather than do all the stuff to check whether an NPC is unfriendly]
		if there is a dark skinned male dangerous monster in the location of the player, decide yes;
	decide no.

A gagging for cock rule (this is the BBC addicted players need black cock rule):
	if the player is gagging for black cock, rule succeeds.

[!<YourselfIsQueenOfSpades>+

Does the player love them some black cock?

+!]
Definition: yourself is queen of spades:
	if interracial fetish is 0, decide no;
	if the number of worn interracial themed wearthings > 1, decide yes;
	decide no.

Part 2 - Modify BBC Addiction

[!<Player>@<rawBBCAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw BBC Addiction. The raw BBC Addiction of the player is usually 1. [Min 1 Max 10]

[!<BBCAddictUpX>+

REQUIRES COMMENTING

+!]
To BBCAddictUp (X - a number):
	if interracial fetish is 1:
		let S be the calculated BBC addiction of the player;
		SilentlyBBCAddictUp X;
		now S is the calculated BBC addiction of the player - S;
		if S > 0:
			if the calculated BBC addiction of the player > 3, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]more [if the calculated BBC addiction of the player > 6]addicted to[otherwise]interested in[end if] [BlackCock].";
			otherwise say "You feel your racial preference for white people becoming less strong.".

To SilentlyBBCAddictUp (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw BBC Addiction of the player < 10, increase the raw BBC Addiction of the player by 1.

To BBCAddictDown (X - a number):
	let S be the calculated BBC addiction of the player;
	SilentlyBBCAddictDown X;
	decrease S by the calculated BBC addiction of the player;
	if S > 0:
		if the calculated BBC addiction of the player > 3, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]less [if the calculated BBC addiction of the player > 6]addicted to[otherwise]interested in[end if][BlackCock].";
		otherwise say "You feel your racial preference for white people returning.".

To SilentlyBBCAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyBBCAddictDown.

To SilentlyBBCAddictDown:
	if the raw BBC addiction of the player > 1, decrease the raw BBC addiction of the player by 1.

BBC Addiction ends here.
