Semen Addiction by Player begins here.

Part 1 - Calculate Semen Addiction

To decide which number is the semen addiction of the player:
	decide on previous-semen-addiction.

To decide which number is the semen-addiction-influence of (C - a wearthing):
	decide on 0.

To decide which number is the semen-addiction-influence of (C - a clothing):
	if C is semen-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted semen addiction]
		decide on S;
	decide on 0.

To decide which number is the calculated semen addiction of the player:
	let S be the raw semen addiction of the player;
	repeat with C running through worn wearthings:
		increase S by the semen-addiction-influence of C;
	if slimegirl is worn:
		let I be the intensity of slimegirl;
		increase S by I * 3;
	if S < the semen taste addiction of the player, decide on the semen taste addiction of the player;
	if S < recent-bimbo / 3, now S is recent-bimbo / 3;
	if S > 20, decide on 20;
	if S < 1, decide on 1;
	decide on S.

Part 2 - Modify Semen Addiction

The player has a number called raw semen addiction. The raw semen addiction of the player is usually 1. [Min 1 Max 20]

highest semen addiction is a number that varies.

slowSemenAddiction is a number that varies.
To SlowSemenAddictUp (X - a number):
	let slowSemenAddictionLimit be 0;
	if the semen addiction of the player > 4, increase slowSemenAddictionLimit by 1;
	if the class of the player is cheerleader, increase slowSemenAddictionLimit by 1;
	if the semen addiction of the player > 13, increase slowSemenAddictionLimit by 1;
	if debugmode > 0, say "Semen addiction threshold is [slowSemenAddictionLimit] ticks.";
	while X > 0:
		decrease X by 1;
		increase slowSemenAddiction by 1;
		if debugmode > 0, say "[slowSemenAddiction - 1] --> [slowSemenAddiction].";
		if slowSemenAddiction > slowSemenAddictionLimit:
			if debugmode > 0, say "Semen addiction increased.";
			now slowSemenAddiction is 0;
			SemenAddictUp 1.

creampieAddictCountdown is a number that varies.
An all later time based rule (this is the creampie addict countdown rule):
	if creampieAddictCountdown > 0, decrease creampieAddictCountdown by 1.

To SemenAddictUp (X - a number):
	let K be 0;
	if the latex-transformation of the player > 4 or diaper quest is 1:
		if diaper quest is 1, SexAddictUp X; [Redirecting the increase to a relevant stat]
		now X is 0;
	repeat with C running through worn confidence clothing:
		if C is blessed, increase K by 1;
		increase K by 1;
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	while X > 0:
		decrease X by 1;
		if a random number between 1 and 8 > K and (creampieAddictCountdown < X or the number of live things penetrating a fuckhole is 0): [creampieAddictCountdown stops semen addiction going crazy if the player receives a creampie over several turns]
			if the raw semen addiction of the player < 20:
				increase the raw semen addiction of the player by 1;
				if the trophy-mode of condom-trophy > 0 and there is a live thing penetrating a fuckhole and the raw semen addiction of the player < 20, increase the raw semen addiction of the player by 1;
	if there is a live thing penetrating a fuckhole and creampieAddictCountdown <= 0, now creampieAddictCountdown is 2.

To SemenAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw semen addiction of the player > 1:
			decrease the raw semen addiction of the player by 1;
			if X is 0, say "You feel less [if the semen addiction of the player > 12]addicted to[otherwise if the semen addiction of the player > 6]interested in[otherwise]tolerant of[end if] [one of][if bukkake fetish is 1][one of]being ejaculated on[or]receiving facials[or]getting coated in [semen][stopping][otherwise]the feeling of [semen][end if][or]being creampied[or]having your [fuckholes] pumped full of [semen][in random order].".

semen-encountered is a number that varies.

To say SemenEncounterFlav:
	if highest semen addiction < the semen addiction of the player:
		if the semen addiction of the player is 1, say "[first custom style][if the semen coating of face > 0 or the semen coating of breasts > 0 or the semen coating of belly > 0 or the semen coating of thighs > 0]I need to wipe this gross stuff off me RIGHT NOW![otherwise]Ugh, my insides feel all weird and slimy. How disgusting. I've GOT to avoid that happening again.[end if][roman type][line break]";
		if the semen addiction of the player is 2, say "[first custom style][if the semen coating of face > 0 or the semen coating of breasts > 0 or the semen coating of belly > 0 or the semen coating of thighs > 0]I can't stand the feel of [semen]! Gross![otherwise]I can't stand the taste of [semen]! Gross![end if][roman type][line break]";
		if the semen addiction of the player is 3, say "[first custom style]There is no way that I'm going to allow this game to keep making me deal with this fucking disgusting bodily fluid. I'm avoiding it all from here on, mark my words.[roman type][line break]";
		if the semen addiction of the player is 4, say "[first custom style]No, no, not again! Eww.[roman type][line break]";
		if the semen addiction of the player is 5, say "[first custom style]Bah, [semen] is so slimy![roman type][line break]";
		if the semen addiction of the player is 6, say "[variable custom style]It feels like I'm slowly getting used to the feeling of [semen]. It must be the game slowly warping my mind![roman type][line break]";
		if the semen addiction of the player is 7, say "[variable custom style]I guess you could say [semen] feels kind of cool, a bit like PVC glue.[roman type][line break]";
		if the semen addiction of the player is 8, say "[second custom style]How have I never noticed how nice the smell of [semen] is?[roman type][line break]";
		if the semen addiction of the player is 9, say "[variable custom style]Ooh, [if (the total semen volume of vagina > 0 or the semen volume of belly > 0) and (there is a live thing penetrating a fuckhole or bukkake fetish is 0)]the feeling of getting creampied is actually quite rewarding[otherwise]watching men ejaculate is really quite fascinating[end if]! This must be the work of the game... but it's not necessarily a BAD thing, right?[roman type][line break]";
		if the semen addiction of the player is 10, say "[variable custom style]I should be thanking them for making me like [semen], they're just helping me enjoy the game as much as possible![roman type][line break]";
		if the semen addiction of the player is 11, say "[second custom style]Wow, I can't believe I used to hate [semen]. I can't get enough of this stuff![roman type][line break]";
		if the semen addiction of the player is 12, say "[second custom style]Aww is that all? I was kind of hoping there would be more.[roman type][line break]";
		if the semen addiction of the player is 13, say "[variable custom style]This is getting out of hand, I'm really getting addicted to this stuff! Soon I'm not going to be able to bring myself to say no to [manly-penis]![roman type][line break]";
		if the semen addiction of the player is 14, say "[second custom style][if the total semen volume of vagina > 0 or the semen volume of belly > 0]Having [semen] in me is making me feel more comforted... and proud[otherwise]I'm going to wear all this cum like a symbol of pride[end if]![roman type][line break]";
		if the semen addiction of the player is 15, say "[second custom style][if the player is a nympho]I like it better when I'm full of [semen]. It helps remind me what I'm to be used for.[otherwise]This world is great, it's basically making sure I always have [semen] on tap![end if][roman type][line break]";
		if the semen addiction of the player is 16, say "[second custom style]This is enough to satisfy me for now, I guess...[roman type][line break]";
		if mindbreak protection is 0:
			if the semen addiction of the player is 17, say "[second custom style][if the stomach-semen of the player is 0 and the semen volume of face is 0]I need it inside me NOW![otherwise]The more of this I can get inside me, the better.[end if][roman type][line break]";
			if the semen addiction of the player is 18, say "[second custom style]I need [semen] in me... on me... over me... mmm, give me your [manly-penis]s.[roman type][line break]";
			if the semen addiction of the player is 19, say "[second custom style][NameBimbo] needs more cum...[roman type][line break]";
		now highest semen addiction is the semen addiction of the player;
		now semen-encountered is 1;
	otherwise if semen-encountered is 0:
		now semen-encountered is 1;
		say "[if the semen addiction of the player < 6][line break][first custom style][one of]Fuck[or]Shit[or]No no no[purely at random]![otherwise if the semen addiction of the player < 9][line break][variable custom style][one of]Gross[or]Eew[or]Grr[stopping].[otherwise if the semen addiction of the player < 12][otherwise if the semen addiction of the player < 15][line break][second custom style]Ooh, yummy![otherwise if the bimbo of the player < 17][second custom style]I want more![otherwise][second custom style][NameBimbo][one of] wants more[or] needs more[or][']s not full yet[then at random]![end if][roman type][line break]".

Semen Addiction ends here.
