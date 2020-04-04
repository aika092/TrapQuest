Sex Addiction by Player begins here.

Part 1 - Calculate Sex Addiction

[!<DecideWhichNumberIsTheSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the sex addiction of the player: [This was done so we only calculate sex addiction once each round, which massively improves game engine performance]
	decide on previous-sex-addiction.

[!<DecideWhichNumberIsTheSexAddictionInfluenceOfWearthing>+

REQUIRES COMMENTING

+!]
To decide which number is the sex-addiction-influence of (C - a wearthing):
	if diaper quest is 0, decide on the bimbo-influence of C;
	decide on 0.

[!<DecideWhichNumberIsTheSexAddictionInfluenceOfClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the sex-addiction-influence of (C - a clothing):
	if C is sex-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		if diaper quest is 0, decide on S + the bimbo-influence of C;
		decide on S;
	otherwise if C is tongued and C is black themed:
		decide on -1;
	if diaper quest is 0, decide on the bimbo-influence of C;
	decide on 0.

[!<DecideWhichNumberIsTheSexAddictionInfluenceOfTemptationClothing>+

REQUIRES COMMENTING

+!]
To decide which number is the sex-addiction-influence of (C - a temptation clothing):
	let S be 2;
	decrease S by the magic-modifier of C;
	decide on S.

[!<DecideWhichNumberIsTheCalculatedSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the calculated sex addiction of the player:
	let S be the raw sex addiction of the player;
	repeat with C running through worn wearthings:
		increase S by the sex-addiction-influence of C;
	if submissive sex addict is 1, increase S by 8;
	if slimegirl is worn:
		let I be the intensity of slimegirl;
		increase S by I * 3;
	if the arousal of the player >= 5000, increase S by (the arousal of the player - 2000) / 3000;
	decrease S by the theme bonus of the sex addiction theme rules;
	if S < the oral sex addiction of the player, now S is the oral sex addiction of the player; [NB these sex addictions are 1 - 10 whereas base sex addiction is 1 - 20, so at max oral sex addiction it's only putting sex addiction to 10/20]
	if S < the titfuck addiction of the player, now S is the titfuck addiction of the player;
	if S < the anal sex addiction of the player, now S is the anal sex addiction of the player;
	if S < the vaginal sex addiction of the player - 2, now S is the vaginal sex addiction of the player - 2;
	if S < recent-bimbo / 3, now S is recent-bimbo / 3;
	if the latex-transformation of the player > 3 and S < the latex-transformation of the player + 2, now S is the latex-transformation of the player + 2;
	if the humiliation of the player >= 40000 and S < 8, now S is 8;
	if mindbreak protection is 1 and S > 16, decide on 16;
	if S > 20, decide on 20;
	if S < 1, decide on 1;
	decide on S.

[The following various addictions describe how much the player enjoys having sex using that body part.]

[!<DecideWhichNumberIsTheRelevantSexAddictionOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the relevant sex addiction of the player:
	if diaper quest is 1, decide on the diaper addiction of the player;
	let M be a random male monster penetrating a body part;
	if M is monster, decide on the relevant sex addiction of M;
	now M is a random live thing penetrating a body part;
	if M is a thing, decide on the relevant sex addiction of M;
	decide on the sex addiction of the player.

[!<DecideWhichNumberIsTheRelevantSexAddictionOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the relevant sex addiction of (M - a thing): [We want to know which orifice they're penetrating so we can use the appropriate variable to determine the player's reaction.]
	if diaper quest is 1, decide on the diaper addiction of the player;
	if M is asshole or M is penetrating asshole, decide on the anal sex addiction of the player * 2;
	if M is vagina or M is penetrating vagina, decide on the vaginal sex addiction of the player * 2;
	if M is face or M is penetrating face, decide on the oral sex addiction of the player * 2;
	if M is breasts or M is penetrating breasts, decide on the titfuck addiction of the player * 2;
	decide on the sex addiction of the player. [catch-all]

Part 2 - Modify Sex Addiction

[!<Player>@<rawSexAddiction:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called raw sex addiction. The raw sex addiction of the player is usually 1. [Min 1 Max 20]

[!<highestSexAddiction:Integer>*

REQUIRES COMMENTING

*!]
highest sex addiction is a number that varies. highest sex addiction is 0.

slowSexAddiction is a number that varies.
To SlowSexAddictUp (X - a number):
	let slowSexAddictionLimit be 1 - diaper quest;
	if the player is a pervert, increase slowSexAddictionLimit by 1;
	if the player is a nympho, increase slowSexAddictionLimit by the sex addiction of the player - 13; [nymphos love orgasms so much that it takes a long time for their nymphomania to get even worse]
	while X > 0:
		decrease X by 1;
		increase slowSexAddiction by 1;
		if slowSexAddiction > slowSexAddictionLimit:
			now slowSexAddiction is 0;
			SexAddictUp 1.

[!<SexAddictUpX>+

REQUIRES COMMENTING

+!]
To SexAddictUp (X - a number):
	let K be 0;
	[increase X by a random number from 0 to 1;] [Balancing mechanic]
	if diaper quest is 1, increase X by X;
	repeat with C running through worn confidence clothing:
		if C is blessed, increase K by 1;
		increase K by 1;
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [ShortDesc of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	while X > 0:
		decrease X by 1;
		if a random number between 1 and 8 > K: [Sometimes confidence clothing stops sex addiction increases]
			if the raw sex addiction of the player < 20:
				if (highest sex addiction < the sex addiction of the player and X is 0 or the sex addiction of the player is 19) and diaper quest is 0: [We only want to output 1 thing from this list even if sex addiction goes up multiple times]
					if the sex addiction of the player is 1, say "[first custom style][if the virgin of the player is 1 and the analvirgin of the player is 1]Am I really going to have to take part in such perverted things in this game?![otherwise]I can't believe I've only been here a short while and I've already had sex...[end if][roman type][line break]";
					if the sex addiction of the player is 2, say "[first custom style][if the virgin of the player is 1 and the analvirgin of the player is 1]The sex is all avoidable, right?[otherwise]If I can't avoid getting fucked, my situation is only going to get worse and worse. I've got to keep level headed.[end if][roman type][line break]";
					if the sex addiction of the player is 3, say "[first custom style]Oh no, I can feel my resistance fading... every time something sexual happens I'm going to enjoy this world a little bit more. I have a to find a way out![roman type][line break]";
					if the sex addiction of the player is 4, say "[first custom style]I have to avoid the sex! The game is rigged to make me get addicted...[roman type][line break]";
					if the sex addiction of the player is 5, say "[first custom style]I am not enjoying this. I am NOT enjoying this!!! Why does my body feel like it's disagreeing with me?[roman type][line break]";
					if the sex addiction of the player is 6, say "[variable custom style][if the analvirgin of the player is 1]Maybe it's worth trying anal sex, at least once. Just to confirm that it is as gross and nasty as I think it is.[otherwise]Anal sex feels so... intimate. Which if you think about it, is actually kind of romantic. Maybe kinky stuff isn't so bad after all...[end if][roman type][line break]";
					if the sex addiction of the player is 7, say "[variable custom style]Maybe I've got it all wrong. Maybe I should be using this game to experiment with my body. At least it's safe down here, since nothing is real.[roman type][line break]";
					if the sex addiction of the player is 8, say "[variable custom style]I guess the truth is, why does it matter if I happen to enjoy it? It's just sex.[roman type][line break]";
					if the sex addiction of the player is 9, say "[variable custom style]Why was I so convinced that being perverted is a bad thing, anyway? Being different is what makes people interesting.[roman type][line break]";
					if the sex addiction of the player is 10, say "[second custom style][if the semen taste addiction of the player > 12]Hey, if I have to act like a slut in order to get another yummy dose of [semen], that's fine with me.[otherwise if the oral sex addiction of the player > 4]It actually feels rather rewarding to pleasure someone with my mouth. And why wouldn't it? It's such an intimate act.[otherwise]I think I would love giving blowjobs if I didn't have to deal with so much [semen] afterwards.[end if][line break][first custom style]Wait, what sort of thought was that?! Who I am becoming?[roman type][line break]";
					if the sex addiction of the player is 11, say "[second custom style]I seriously have no idea why I used to be so resistant to indulging in kinky sex. What a stupid idea.[roman type][line break]";
					if the sex addiction of the player is 12, say "[second custom style]Life would be so pointless without sex...[roman type][line break]";
					if the sex addiction of the player is 13, say "[second custom style]I definitely prefer getting fucked from behind like a whore to boring old vanilla sex. It's just so much more exciting and kinky.[roman type][line break]";
					if the sex addiction of the player is 14, say "[second custom style]Sure, getting my holes rammed full of monster [manly-penis] isn't going to help me win the game, but it sure is fun![roman type][line break]";
					if the sex addiction of the player is 15, say "[second custom style]I like it better when I'm full of [manly-penis]. It makes life feel so much more... fulfilling.[roman type][line break]";
					if the sex addiction of the player is 16, say "[second custom style]I'm not afraid to admit it, I'm addicted to [manly-penis]. I love cocks and cocks love me. What's wrong with that?[roman type][line break]";
					if the sex addiction of the player is 17, say "[second custom style]Nasty, filthy, degrading sex is the only sex worth having. Unless my orgasm makes me feel like a cheap whore, I'm not really interested.[roman type][line break]";
					if the sex addiction of the player is 18, say "[second custom style]Hunks, this way! Over here! Give [NameBimbo] your big [manly-penis]s and she'll make you feel good.[roman type][line break]";
					if the sex addiction of the player is 19, say "[second custom style][NameBimbo] wants more cummies! [NameBimbo] needs more [manly-penis]s...[roman type][line break]";
				[otherwise if X is 1:
					say "You feel slightly light-headed, but in a good way.";]
				increase the raw sex addiction of the player by 1;
				if there is a live thing penetrating asshole, AnalSexAddictUp 1;
				if there is a live thing penetrating vagina, VaginalSexAddictUp 1;
			otherwise if the raw sex addiction of the player is 20:
				if the raw intelligence of the player > 1, say "The fog rises as your [if the arousal of the player is minimum arousal]orgasm addled[otherwise]one track minded[end if] brain finds it a little bit more difficult to think about anything except your next orgasm.";
				IntDown 1;
			otherwise:
				say "[one of]You feel slightly light-headed, but then it passes.[or][or][or][cycling]";
	if highest sex addiction < the sex addiction of the player, now highest sex addiction is the sex addiction of the player.

To SexAddictDown (X - a number):
	let S be the raw sex addiction of the player;
	SilentlySexAddictDown X;
	decrease S by the raw sex addiction of the player;
	if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if][if the player is a nympho]less sex obsessed[otherwise if the player is a pervert]less perverted[otherwise]more in control of your lewd thoughts[end if].".

To SilentlySexAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlySexAddictDown.

To SilentlySexAddictDown:
	if the raw sex addiction of the player > 1, decrease the raw sex addiction of the player by 1.

[!<RandomAddictUpX>+

REQUIRES COMMENTING

+!]
To RandomAddictUp (X - a number):
	while X > 0:
		let N be a random number between 0 and 4;
		if N is 3 and the player is male, now N is 1;
		if N is 4 and the largeness of breasts < 5, now N is 2;
		if diaper quest is 1, now N is 0;
		if N is 0, SexAddictUp 1;
		if N is 1, OralSexAddictUp 1;
		if N is 2, AnalSexAddictUp 1;
		if N is 3, VaginalSexAddictUp 1;
		if N is 4, TitfuckAddictUp 1;
		decrease X by 1.

[!<FuckholeAddictDownX>+

REQUIRES COMMENTING

+!]
To FuckholeAddictDown (X - a number):
	while X > 0:
		let N be a random number between 1 and 2;
		if N is 1 and the player is female, VaginalSexAddictDown 1;
		otherwise AnalSexAddictDown 1;
		decrease X by 1.

[!<Player>@<fuckedCount:Integer>*

The number of times the player has had submissive sex with unfriendly monsters

*@!]
The player has a number called submission-count. The submission-count of the player is 0.

[!<Player>@<sexCount:Integer>*

The number of times the player has had submissive sex with any monster, not just unfriendly ones

*@!]
The player has a number called sex-count. The sex-count of the player is 0.

Sex Addiction ends here.
