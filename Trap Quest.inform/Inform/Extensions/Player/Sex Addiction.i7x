Sex Addiction by Player begins here.

Book - Sex Addiction

Part 1 - Calculate Sex Addiction

To decide which number is the sex addiction of the player: [This was done so we only calculate sex addiction once each round, which massively improves game engine performance]
	decide on previous-sex-addiction.

To decide which number is the sex-addiction-influence of (C - a wearthing):
	if diaper quest is 0, decide on the bimbo-influence of C;
	decide on 0.

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

To decide which number is the sex-addiction-influence of (C - a temptation clothing):
	let S be 2;
	decrease S by the magic-modifier of C;
	decide on S.

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

To decide which number is the relevant sex addiction of the player:
	if diaper quest is 1, decide on the diaper addiction of the player;
	let M be a random male monster penetrating a body part;
	if M is monster, decide on the relevant sex addiction of M;
	now M is a random live thing penetrating a body part;
	if M is a thing, decide on the relevant sex addiction of M;
	decide on the sex addiction of the player.

To decide which number is the relevant sex addiction of (M - a thing): [We want to know which orifice they're penetrating so we can use the appropriate variable to determine the player's reaction.]
	if diaper quest is 1, decide on the diaper addiction of the player;
	if M is asshole or M is penetrating asshole, decide on the anal sex addiction of the player * 2;
	if M is vagina or M is penetrating vagina, decide on the vaginal sex addiction of the player * 2;
	if M is face or M is penetrating face, decide on the oral sex addiction of the player * 2;
	if M is breasts or M is penetrating breasts, decide on the titfuck addiction of the player * 2;
	decide on the sex addiction of the player. [catch-all]

Part 2 - Modify Sex Addiction

The player has a number called raw sex addiction. The raw sex addiction of the player is usually 1. [Min 1 Max 20]

highest sex addiction is a number that varies. highest sex addiction is 0.

slowSexAddiction is a number that varies.
To SlowSexAddictUp (X - a number):
	let slowSexAddictionLimit be 0[ - diaper quest];
	if the player is a pervert, increase slowSexAddictionLimit by 1;
	if the class of the player is cheerleader, increase slowSexAddictionLimit by 2;
	if the player is a nympho, increase slowSexAddictionLimit by (the sex addiction of the player - 13) / 2; [nymphos love orgasms so much that it takes a long time for their nymphomania to get even worse]
	if debugmode > 0, say "Sex addiction threshold is [slowSexAddictionLimit] ticks.";
	while X > 0:
		decrease X by 1;
		increase slowSexAddiction by 1;
		if debugmode > 0, say "[slowSexAddiction - 1] --> [slowSexAddiction].";
		if slowSexAddiction > slowSexAddictionLimit:
			if debugmode > 0, say "Sex addiction increased.";
			now slowSexAddiction is 0;
			SexAddictUp 1.

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
					if the sex addiction of the player is 1, say "[first custom style][if the player is totalvirgin]Am I really going to have to take part in such perverted things in this game?![otherwise]I can't believe I've only been here a short while and I've already had sex...[end if][roman type][line break]";
					if the sex addiction of the player is 2, say "[first custom style][if the player is totalvirgin]The sex is all avoidable, right?[otherwise]If I can't avoid getting fucked, my situation is only going to get worse and worse. I've got to keep level headed.[end if][roman type][line break]";
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

To RandomAddictUp (X - a number):
	while X > 0:
		let N be a random number between 0 and 4;
		if N is 3 and the player is not possessing a vagina, now N is 1;
		if N is 4 and the largeness of breasts < 5, now N is 2;
		if diaper quest is 1, now N is 0;
		if N is 0, SexAddictUp 1;
		if N is 1, OralSexAddictUp 1;
		if N is 2, AnalSexAddictUp 1;
		if N is 3, VaginalSexAddictUp 1;
		if N is 4, TitfuckAddictUp 1;
		decrease X by 1.

[currently unused]
[To FuckholeAddictUp (X - a number):
	while X > 0:
		let N be a random number between 1 and 2;
		if N is 1 and the player is possessing a vagina, VaginalSexAddictUp 1;
		otherwise AnalSexAddictUp 1;
		decrease X by 1.]
To OrificeAddictUp (X - a number):
	while X > 0:
		let N be a random number between 1 and 3;
		if N is 1 and the player is not possessing a vagina and tg fetish is 0, now N is a random number between 2 and 3;
		if N is 1, VaginalSexAddictUp 1;
		if N is 2, AnalSexAddictUp 1;
		if N is 3, OralSexAddictUp 1;
		decrease X by 1.

To FuckholeAddictDown (X - a number):
	while X > 0:
		let N be a random number between 1 and 2;
		if N is 1 and the player is possessing a vagina, VaginalSexAddictDown 1;
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

Book - Anal Sex Addiction


Part 1 - Calculate Anal Sex Addiction

To decide which number is the anal sex addiction of the player:
	if diaper quest is 1, decide on 0;
	decide on previous-anal-sex-addiction.

To decide which number is the calculated anal sex addiction of the player:
	let S be the raw anal sex addiction of the player;
	if submissive sex addict is 1, increase S by 3;
	repeat with C running through worn wearthings:
		increase S by the anal-sex-addiction-influence of C;
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

To decide which number is the anal-sex-addiction-influence of (C - a wearthing):
	decide on 0.

To decide which number is the anal-sex-addiction-influence of (C - a clothing):
	if C is anal-sex-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.

Part 2 - Modify Anal Sex Addiction

The player has a number called raw anal sex addiction. The raw anal sex addiction of the player is usually 1. [Min 1 Max 10]

To AnalSexAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	let S be the calculated anal sex addiction of the player;
	SilentlyAnalSexAddictUp X;
	now S is the calculated anal sex addiction of the player - S;
	if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]more [if the anal sex addiction of the player > 6]desperate for[otherwise]interested in[end if] anal sex.".

To SilentlyAnalSexAddictUp (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw anal sex addiction of the player < 10, increase the raw anal sex addiction of the player by 1.

To AnalSexAddictDown (X - a number):
	let S be the calculated anal sex addiction of the player;
	SilentlyAnalSexAddictDown X;
	decrease S by the calculated anal sex addiction of the player;
	if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]less [if the anal sex addiction of the player > 6]desperate for[otherwise]interested in[end if] anal sex.".

To SilentlyAnalSexAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyAnalSexAddictDown.

To SilentlyAnalSexAddictDown:
	if the raw anal sex addiction of the player > 1, decrease the raw anal sex addiction of the player by 1.

Book - Vaginal Sex Addiction


Part 1 - Calculate Vaginal Sex Addiction

To decide which number is the vaginal sex addiction of the player:
	if diaper quest is 1 or the player is not possessing a vagina, decide on 0;
	decide on previous-vaginal-sex-addiction.

To decide which number is the calculated vaginal sex addiction of the player:
	let S be the raw vaginal sex addiction of the player;
	if submissive sex addict is 1, increase S by 3;
	repeat with C running through worn wearthings:
		increase S by the vaginal-sex-addiction-influence of C;
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

To decide which number is the vaginal-sex-addiction-influence of (C - a wearthing):
	decide on 0.

To decide which number is the vaginal-sex-addiction-influence of (C - a clothing):
	if C is vaginal-sex-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.

Part 2 - Modify Vaginal Sex Addiction

The player has a number called raw vaginal sex addiction. The raw vaginal sex addiction of the player is usually 3. [Min 1 Max 10]

To VaginalSexAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	let S be the calculated vaginal sex addiction of the player;
	SilentlyVaginalSexAddictUp X;
	now S is the calculated vaginal sex addiction of the player - S;
	if S > 0 and (the player is possessing a vagina or TG fetish > 0), say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]more [if the vaginal sex addiction of the player > 6]desperate for[otherwise]interested in[end if] [if the player is possessing a vagina]vaginal sex[otherwise]being transformed into a woman[end if].".

To SilentlyVaginalSexAddictUp (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw vaginal sex addiction of the player < 10, increase the raw vaginal sex addiction of the player by 1.

To VaginalSexAddictDown (X - a number):
	let S be the calculated vaginal sex addiction of the player;
	SilentlyVaginalSexAddictDown X;
	decrease S by the calculated vaginal sex addiction of the player;
	if S > 0 and (the player is possessing a vagina or TG fetish > 0), say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]less [if the vaginal sex addiction of the player > 6]desperate for[otherwise]interested in[end if] [if the player is possessing a vagina]vaginal sex[otherwise]being transformed into a woman[end if].".

To SilentlyVaginalSexAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyVaginalSexAddictDown.

To SilentlyVaginalSexAddictDown:
	if the raw vaginal sex addiction of the player > 1, decrease the raw vaginal sex addiction of the player by 1.

Book - Oral Sex Addiction


Part 1 - Calculate Oral Sex Addiction

To decide which number is the oral sex addiction of the player:
	decide on previous-oral-sex-addiction.

To decide which number is the calculated oral sex addiction of the player:
	if diaper quest is 1, decide on 0;
	let S be the raw oral sex addiction of the player;
	if submissive sex addict is 1, increase S by 3;
	repeat with C running through worn wearthings:
		increase S by the oral-sex-addiction-influence of C;
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

To decide which number is the oral-sex-addiction-influence of (C - a wearthing):
	decide on 0.

To decide which number is the oral-sex-addiction-influence of (C - a clothing):
	if C is oral-sex-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.

To decide which number is the semen-taste-addiction-influence of (C - a wearthing):
	decide on 0.

To decide which number is the semen-taste-addiction-influence of (C - a clothing):
	if C is semen-taste-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.

To decide which number is the semen taste addiction of the player:
	decide on previous-semen-taste-addiction.

To decide which number is the calculated semen taste addiction of the player:
	let S be the raw semen taste addiction of the player;
	if submissive sex addict is 1, increase S by 6;
	repeat with C running through worn wearthings:
		increase S by the semen-taste-addiction-influence of C;
	if S < recent-bimbo / 3, now S is recent-bimbo / 3;
	if S > 20, decide on 20;
	if S < 1, decide on 1;
	decide on S.

Definition: yourself is craving semen:
	if the stomach-semen of the player is 0 and the semen volume of face is 0 and the semen taste addiction of the player > 14:
		if cold turkey > the semen taste addiction of the player * 20, decide no;
		decide yes;
	decide no.

Definition: yourself is desperately craving semen:
	if the stomach-semen of the player is 0 and the semen volume of face is 0 and the semen taste addiction of the player > 17:
		if cold turkey > the semen taste addiction of the player * 20, decide no;
		decide yes;
	decide no.

Part 2 - Modify Oral Sex Addiction

The player has a number called raw semen taste addiction. The raw semen taste addiction of the player is usually 1. [Min 1 Max 20]

The player has a number called raw oral sex addiction. The raw oral sex addiction of the player is usually 1. [Min 1 Max 10]

To OralSexAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	let S be the calculated oral sex addiction of the player;
	SilentlyOralSexAddictUp X;
	now S is the calculated oral sex addiction of the player - S;
	if S > 0, say "You feel [if S > 2]much [otherwise if S is 2]significantly [end if]more [if the oral sex addiction of the player > 6]orally fixated[otherwise]interested in performing oral sex[end if].".

To SilentlyOralSexAddictUp (X - a number):
	while X > 0:
		decrease X by 1;
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
		SilentlySemenTasteAddictDown.

To SilentlySemenTasteAddictDown:
	if the raw semen taste addiction of the player > 1, decrease the raw semen taste addiction of the player by 1.

Book - Titfuck Addiction


The player has a number called raw titfuck addiction. The raw titfuck addiction of the player is usually 1. [Min 1 Max 10]

breasts has a number called raw sensitivity.

To decide which number is the sensitivity of (B - breasts):
	let S be the raw sensitivity of breasts;
	if the class of the player is cowgirl:
		if the milk volume of breasts > 10, increase S by 1;
		if the milk volume of breasts > 20, increase S by 1;
		if the milk volume of breasts > 25, increase S by 1;
		if the milk volume of breasts > 30, increase S by 1;
		if the milk volume of breasts > 34, increase S by (the milk volume of breasts - 32) / 3;
	if there is a worn cow piercing:
		increase S by 1;
		if there is a worn nipple chain, increase S by 1;
	if there is a worn nipple chain, increase S by 2;
	if true love tattoo is worn, increase S by 2;
	increase S by 6 * the trophy-mode of bust-trophy;
	decide on S.

Part 1 - Calculate Titfuck Addiction

To decide which number is the titfuck addiction of the player:
	if diaper quest is 1, decide on 0;
	decide on previous-titfuck-addiction.

To decide which number is the calculated titfuck addiction of the player:
	let S be the raw titfuck addiction of the player;
	if submissive sex addict is 1, increase S by 3;
	repeat with C running through worn wearthings:
		increase S by the titfuck-addiction-influence of C;
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

To decide which number is the titfuck-addiction-influence of (C - a wearthing):
	decide on 0.

To decide which number is the titfuck-addiction-influence of (C - a clothing):
	if C is titfuck-addiction-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted sex addiction]
		decide on S;
	decide on 0.

Part 2 - Modify Titfuck Addiction

To TitfuckAddictUp (X - a number):
	if there is a worn pure totem:
		let S be a random worn pure totem;
		say "Your [printed name of S] glows brightly and slowly disintegrates.[line break]";
		only destroy S;
		decrease X by 3;
	let S be the sensitivity of breasts;
	SilentlyTitfuckAddictUp X;
	now S is the sensitivity of breasts - S;
	if S > 0, say "Your breasts feel [if S > 2]much [otherwise if S is 2]significantly [end if]more [if the titfuck addiction of the player > 6]oversensitive[otherwise]sensitive[end if].".

To SilentlyTitfuckAddictUp (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw titfuck addiction of the player < 10, increase the raw titfuck addiction of the player by 1;
		increase the raw sensitivity of breasts by 1.

To TitfuckAddictDown (X - a number):
	let S be the sensitivity of breasts;
	SilentlyTitfuckAddictDown X;
	decrease S by the sensitivity of breasts;
	if S > 0, say "Your breasts feel [if S > 2]much [otherwise if S is 2]significantly [end if]less [if the titfuck addiction of the player > 6]oversensitive[otherwise]sensitive[end if].".

To SilentlyTitfuckAddictDown (X - a number):
	while X > 0:
		decrease X by 1;
		SilentlyTitfuckAddictDown.

To SilentlyTitfuckAddictDown:
	if the raw titfuck addiction of the player > 1, decrease the raw titfuck addiction of the player by 1;
	if the raw sensitivity of breasts > 1, decrease the raw sensitivity of breasts by 1.

Book - BBC Addiction

Part 1 - Calculate BBC Addiction

To decide which number is the BBC Addiction of the player:
	decide on previous-bbc-addiction.

To decide which number is the calculated BBC Addiction of the player:
	let S be the raw BBC Addiction of the player;
	repeat with C running through worn wearthings:
		increase S by the BBC-sex-addiction-influence of C;
	if S > 10, decide on 10;
	if S < 1, decide on 1;
	decide on S.

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

The player has a number called raw BBC Addiction. The raw BBC Addiction of the player is usually 1. [Min 1 Max 10]

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


Sex Addiction ends here.
