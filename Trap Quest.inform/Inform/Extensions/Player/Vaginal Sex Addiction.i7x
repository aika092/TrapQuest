Vaginal Sex Addiction by Player begins here.

Part 1- Calculate Vaginal Sex Addiction

[!<DecideWhichNumberIsTheVaginalSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the vaginal sex addiction of the player:
	if diaper quest is 1 or the player is not possessing a vagina, decide on 0;
	decide on previous-vaginal-sex-addiction.

[!<DecideWhichNumberIsTheCalculatedVaginalSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the calculated vaginal sex addiction of the player:
	let S be the raw vaginal sex addiction of the player;
	if submissive sex addict is 1, increase S by 3;
	repeat with C running through worn wearthings:
		increase S by the vaginal-sex-addiction-influence of C;
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

[!<DecideWhichNumberIsTheVaginalSexAddictionInfluenceOfWearthing>+

REQUIRES COMMENTING

+!]
To decide which number is the vaginal-sex-addiction-influence of (C - a wearthing):
	decide on 0.

[!<DecideWhichNumberIsTheVaginalSexAddictionInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the vaginal-sex-addiction-influence of (C - a clothing):
	if C is vaginal-sex-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.

Part 2 - Modify Vaginal Sex Addiction

[!<Player>@<rawVaginalSexAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw vaginal sex addiction. The raw vaginal sex addiction of the player is usually 3. [Min 1 Max 10]

[!<VaginalSexAddictUpX>+

REQUIRES COMMENTING

+!]
To VaginalSexAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	while X > 0:
		decrease X by 1;
		if the raw vaginal sex addiction of the player < 10, increase the raw vaginal sex addiction of the player by 1.

To VaginalSexAddictDown (X - a number):
	let S be the raw vaginal sex addiction of the player;
	SilentlyVaginalSexAddictDown X;
	decrease S by the raw vaginal sex addiction of the player;
	if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if][if the vaginal sex addiction of the player > 6]less desperate for[otherwise]less interested in[end if] vaginal sex.".

To SilentlyVaginalSexAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyVaginalSexAddictDown.

To SilentlyVaginalSexAddictDown:
	if the raw vaginal sex addiction of the player > 1, decrease the raw vaginal sex addiction of the player by 1.

Vaginal Sex Addiction ends here.
