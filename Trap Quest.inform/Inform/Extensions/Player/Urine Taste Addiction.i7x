Urine Taste Addiction by Player begins here.

Part 1 - Calculate Urine Taste Addiction

To decide which number is the urine-taste-addiction-influence of (C - a wearthing):
	decide on 0.

To decide which number is the urine-taste-addiction-influence of (C - a clothing):
	if C is urine-taste-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted urine addiction]
		decide on S;
	decide on 0.

To decide which number is the urine taste addiction of the player:
	let S be the raw urine taste addiction of the player;
	repeat with C running through worn wearthings:
		increase S by the urine-taste-addiction-influence of C;
	if S > 20, decide on 20;
	if S < 1, decide on 1;
	decide on S.

Part 2 - Modify Urine Taste Addiction

The player has a number called raw urine taste addiction. The raw urine taste addiction of the player is usually 1. [Min 1 Max 20]

To UrineTasteAddictUp (X - a number):
	if watersports fetish is 1:
		if there is a worn pure totem:
			let S be a random worn pure totem;
			say "Your [printed name of S] glows brightly and slowly disintegrates.";
			only destroy S;
			decrease X by 3;
		let U be the urine taste addiction of the player;
		SilenentlyUrineTasteAddictUp X;
		let U be the urine taste addiction of the player - U;
		if U > 0, say "You feel [if U > 1]significantly [end if]more [if the urine taste addiction of the player > 13]addicted to[otherwise if the urine taste addiction of the player > 6]accustomed to[otherwise]tolerant of[end if] the taste of [urine].".

To SilenentlyUrineTasteAddictUp (X - a number):
	if watersports fetish is 0 or the latex-transformation of the player > 4:
		now X is 0;
	let YTB be yellow theme bonus;
	while X > 0:
		decrease X by 1;
		if the raw urine taste addiction of the player < 20 and a random number between -1 and yellow theme bonus < 1:
			increase the raw urine taste addiction of the player by 1.

To UrineTasteAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw urine taste addiction of the player > 1, decrease the raw urine taste addiction of the player by 1.

Urine Taste Addiction ends here.
