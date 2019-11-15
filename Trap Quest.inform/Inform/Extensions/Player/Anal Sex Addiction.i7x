Anal Sex Addiction by Player begins here.

Part 1- Calculate Anal Sex Addiction

[!<DecideWhichNumberIsTheAnalSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the anal sex addiction of the player:
	if diaper quest is 1, decide on 0;
	decide on previous-anal-sex-addiction.

[!<DecideWhichNumberIsTheCalculatedAnalSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the calculated anal sex addiction of the player:
	let S be the raw anal sex addiction of the player;
	if submissive sex addict is 1, increase S by 3;
	repeat with C running through worn wearthings:
		increase S by the anal-sex-addiction-influence of C;
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

[!<DecideWhichNumberIsTheAnalSexAddictionInfluenceOfWearthing>+

REQUIRES COMMENTING

+!]
To decide which number is the anal-sex-addiction-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheAnalSexAddictionInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the anal-sex-addiction-influence of (C - a clothing):
	if C is anal-sex-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.

Part 2 - Modify Anal Sex Addiction


[!<Player>@<rawAnalSexAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw anal sex addiction. The raw anal sex addiction of the player is usually 1. [Min 1 Max 10]

[!<AnalSexAddictUpX>+

REQUIRES COMMENTING

+!]
To AnalSexAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	while X > 0:
		decrease X by 1;
		if the raw anal sex addiction of the player < 10, increase the raw anal sex addiction of the player by 1.

To AnalSexAddictDown (X - a number):
	let S be the raw anal sex addiction of the player;
	SilentlyAnalSexAddictDown X;
	decrease S by the raw anal sex addiction of the player;
	if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if][if the anal sex addiction of the player > 6]less desperate for[otherwise]less interested in[end if] anal sex.".

To SilentlyAnalSexAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyAnalSexAddictDown.

To SilentlyAnalSexAddictDown:
	if the raw anal sex addiction of the player > 1, decrease the raw anal sex addiction of the player by 1.



Anal Sex Addiction ends here.

