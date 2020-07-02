Semen Taste and Oral Sex Addiction by Player begins here.

Part 1 - Calculate Oral Sex Addiction

[!<DecideWhichNumberIsTheOralSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the oral sex addiction of the player:
	decide on previous-oral-sex-addiction.

[!<DecideWhichNumberIsTheCalculatedOralSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the calculated oral sex addiction of the player:
	if diaper quest is 1, decide on 0;
	let S be the raw oral sex addiction of the player;
	if submissive sex addict is 1, increase S by 3;
	repeat with C running through worn wearthings:
		increase S by the oral-sex-addiction-influence of C;
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
	if C is semen-taste-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.

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
Definition: yourself is craving semen:
	if the stomach-semen of the player is 0 and the semen volume of face is 0 and the semen taste addiction of the player > 14:
		if cold turkey > the semen taste addiction of the player * 20, decide no;
		decide yes;
	decide no.

[!<YourselfIsDesperatelyCraving>+

REQUIRES COMMENTING

+!]
Definition: yourself is desperately craving semen:
	if the stomach-semen of the player is 0 and the semen volume of face is 0 and the semen taste addiction of the player > 17:
		if cold turkey > the semen taste addiction of the player * 20, decide no;
		decide yes;
	decide no.

Part 2 - Modify Oral Sex Addiction

[!<Player>@<rawSemenTasteAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw semen taste addiction. The raw semen taste addiction of the player is usually 1. [Min 1 Max 20]

[!<Player>@<rawOralSexAddiction:Integer>*

*@!]
The player has a number called raw oral sex addiction. The raw oral sex addiction of the player is usually 1. [Min 1 Max 10]

[!<OralSexAddictUpX>+

REQUIRES COMMENTING

+!]
To OralSexAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	let S be the raw oral sex addiction of the player * -1;
	while X > 0:
		decrease X by 1;
		SilentlyOralSexAddictUp;
		if X is 0:
			increase S by the raw oral sex addiction of the player;
			if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]more [if the oral sex addiction of the player > 6]orally fixated[otherwise]interested in performing oral sex[end if].".

To SilentlyOralSexAddictUp:
	if the raw oral sex addiction of the player < 10, increase the raw oral sex addiction of the player by 1.

To OralSexAddictDown (X - a number):
	let S be the raw oral sex addiction of the player;
	SilentlyOralSexAddictDown X;
	decrease S by the raw oral sex addiction of the player;
	if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]less [if the oral sex addiction of the player > 6]orally fixated[otherwise]interested in performing oral sex[end if].".

To SilentlyOralSexAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyOralSexAddictDown.

To SilentlyOralSexAddictDown:
	if the raw oral sex addiction of the player > 1, decrease the raw oral sex addiction of the player by 1.

To SemenTasteAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.";
		only destroy S;
		decrease X by 3;
	let S be the calculated semen taste addiction of the player;
	SilentlySemenTasteAddictUp X;
	let S be the calculated semen taste addiction of the player - S;
	if S > 0, say "You feel [if S > 1]significantly [end if]more [if the calculated semen taste addiction of the player > 13]addicted to[otherwise if the calculated semen taste addiction of the player > 6]accustomed to[otherwise]tolerant of[end if] the taste of [semen].".

To SilentlySemenTasteAddictUp (X - a number):
	if the latex-transformation of the player > 4:
		now X is 0;
	while X > 0:
		decrease X by 1;
		if the raw semen taste addiction of the player < 20 and (watersports fetish is 1 or a random number between -1 and yellow theme bonus < 1): [When watersports is disabled, yellow items help suppress semen taste addiction gains]
			increase the raw semen taste addiction of the player by 1.

To SemenTasteAddictDown (X - a number):
	let S be the calculated semen taste addiction of the player;
	SilentlySemenTasteAddictDown X;
	decrease S by the calculated semen taste addiction of the player;
	if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]less [if the calculated semen taste addiction of the player > 14]addicted to the taste of [semen][otherwise if the calculated semen taste addiction of the player > 6]interested in drinking [semen][otherwise]tolerant of the taste of [semen][end if].".

To SilentlySemenTasteAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlySemenTasteAddictDown;

To SilentlySemenTasteAddictDown:
	if the raw semen taste addiction of the player > 1, decrease the raw semen taste addiction of the player by 1.

Semen Taste and Oral Sex Addiction ends here.
