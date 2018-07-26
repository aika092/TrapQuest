Semen Taste and Oral Sex Addiction by Player begins here.

Part 1 - Calculate Oral Sex Addiction

[!<DecideWhichNumberIsTheOralSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the oral sex addiction of the player: [For now, this is synonymous with semen taste]
	if diaper quest is 1, decide on 0;
	let S be the semen taste addiction of the player / 2;
	[repeat with C running through worn wearthings:
		increase S by the oral-sex-addiction-influence of C;]
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

[!<DecideWhichNumberIsTheOralSexAddictionInfluenceOfWearthing>+

REQUIRES COMMENTING

+!]
To decide which number is the oral-sex-addiction-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheOralSexAddictionInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the oral-sex-addiction-influence of (C - a clothing):
	if C is oral-sex-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.


[!<DecideWhichNumberIsTheSemenTasteAddictionInfluenceOfWearThing>+

REQUIRES COMMENTING

+!]
To decide which number is the semen-taste-addiction-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheSemenTasteAddictionInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the semen-taste-addiction-influence of (C - a clothing):
	decide on the oral-sex-addiction-influence of C.

[!<DecideWhichNumberIsTheSemenTasteAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the semen taste addiction of the player:
	decide on previous-semen-taste-addiction.

[!<DecideWhichNumberIsTheCalculatedSemenTasteAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the calculated semen taste addiction of the player:
	let S be the raw semen taste addiction of the player;
	if submissive sex addict is 1, increase S by 6;
	repeat with C running through worn wearthings:
		increase S by the semen-taste-addiction-influence of C;
	if S < recent-bimbo / 3, now S is recent-bimbo / 3;
	if S > 20, decide on 20;
	if S < 1, decide on 1;
	decide on S.

[!<YourselfIsCraving>+

REQUIRES COMMENTING

+!]
Definition: yourself is craving:
	if the stomach-semen of the player is 0 and the semen taste addiction of the player > 14:
		if cold turkey > the semen taste addiction of the player * 20, decide no;
		decide yes;
	decide no.

[!<YourselfIsDesperatelyCraving>+

REQUIRES COMMENTING

+!]
Definition: yourself is desperately craving:
	if the stomach-semen of the player is 0 and the semen taste addiction of the player > 17:
		if cold turkey > the semen taste addiction of the player * 20, decide no;
		decide yes;
	decide no.


Part 2 - Modify Oral Sex Addiction


[!<Player>@<rawSemenTasteAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw semen taste addiction. The raw semen taste addiction of the player is usually 1. [Min 1 Max 20]



[!<Player>@<rawOralSexAddiction:Integer>*

Not used because it's currently the same thing as semen taste addiction

*@!]
[The player has a number called raw oral sex addiction. The raw oral sex addiction of the player is usually 1. [Min 1 Max 10]]


[!<OralSexAddictUpX>+

REQUIRES COMMENTING

+!]
To OralSexAddictUp (X - a number):
	SemenTasteAddictUp X * 2.

[!<OralSexAddictDownX>+

REQUIRES COMMENTING

+!]
To OralSexAddictDown (X - a number):
	SemenTasteAddictDown X * 2.


[!<SemenTasteAddictUpX>+

REQUIRES COMMENTING

+!]
To SemenTasteAddictUp (X - a number):
	if the latex-transformation of the player > 4:
		now X is 0;
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	while X > 0:
		decrease X by 1;
		if the raw semen taste addiction of the player < 20:
			increase the raw semen taste addiction of the player by 1.

[!<SemenTasteAddictDownX>+

REQUIRES COMMENTING

+!]
To SemenTasteAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw semen taste addiction of the player > 1, decrease the raw semen taste addiction of the player by 1.


Semen Taste and Oral Sex Addiction ends here.

