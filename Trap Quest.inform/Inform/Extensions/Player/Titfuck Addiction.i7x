Titfuck Addiction by Player begins here.

Part 1 - Calculate Titfuck Addiction

[!<DecideWhichNumberIsTheTitfuckAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the titfuck addiction of the player:
	if diaper quest is 1, decide on 0;
	decide on previous-titfuck-addiction.

[!<DecideWhichNumberIsTheCalculatedTitfuckAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the calculated titfuck addiction of the player:
	let S be the raw sensitivity of breasts;
	if submissive sex addict is 1, increase S by 3;
	repeat with C running through worn wearthings:
		increase S by the titfuck-addiction-influence of C;
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

[!<DecideWhichNumberIsTheTitfuckAddictionInfluenceOfWearThing>+

REQUIRES COMMENTING

+!]
To decide which number is the titfuck-addiction-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheTitfuckAddictionInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the titfuck-addiction-influence of (C - a clothing):
	if C is titfuck-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.

Part 2 - Modify Titfuck Addiction


[!<Player>@<rawTitfuckAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw titfuck addiction. The raw titfuck addiction of the player is usually 1. [Min 1 Max 10]

[!<TitfuckAddictUpX>+

REQUIRES COMMENTING

+!]
To TitfuckAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	while X > 0:
		decrease X by 1;
		if the raw titfuck addiction of the player < 10, increase the raw titfuck addiction of the player by 1.

[!<TitfuckAddictDownX>+

REQUIRES COMMENTING

+!]
To TitfuckAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw titfuck addiction of the player > 1, decrease the raw titfuck addiction of the player by 1.


[!<TitfuckAddictUpX>+

REQUIRES COMMENTING

+!]
To TitfuckAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	while X > 0:
		decrease X by 1;
		if the raw sensitivity of breasts < 10, increase the raw sensitivity of breasts by 1.


To TitfuckAddictDown (X - a number):
	let S be the raw sensitivity of breasts;
	SilentlyTitfuckAddictDown X;
	decrease S by the raw sensitivity of breasts;
	if S > 0, say "Your breasts feel [if S > 2]much [otherwise if S is 2]significantly [end if]less [if the titfuck addiction of the player > 6]oversensitive[otherwise]sensitive[end if].".

To SilentlyTitfuckAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyTitfuckAddictDown.

To SilentlyTitfuckAddictDown:
	if the raw sensitivity of breasts > 1, decrease the raw sensitivity of breasts by 1.


Titfuck Addiction ends here.
