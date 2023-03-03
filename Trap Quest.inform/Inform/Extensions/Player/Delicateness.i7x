Delicateness by Player begins here.

Part 1 - Calculate Delicateness

To decide which number is the delicateness-influence of (C - a wearthing):
	decide on 0.

To decide which number is the delicateness-influence of (C - a clothing):
	if C is delicateness-influencing:
		let S be 0;
		decrease S by the magic-modifier of C; [Positive magic = subtracted delicateness]
		decide on S;
	decide on 0.

To decide which number is the delicateness of the player:
	if the class of the player is living sex doll, decide on 1;
	if the player is broken and mindbreak protection is 0, decide on 20;
	let S be the raw delicateness of the player;
	if submissive sex addict is 1, increase S by 7;
	if the womb volume of vagina >= 30 and the class of the player is not fertility goddess, increase S by 3;
	repeat with C running through worn wearthings:
		increase S by the delicateness-influence of C;
		if C is dominance clothing, decrease S by 3 + the magic-modifier of C;
	if there is a craved liquid-object:
		if there is a desperately craved liquid-object, decrease S by 3;
		otherwise decrease S by 2;
	if mindbreak protection is 1 and S > 16, decide on 16;
	if virgincursed > 0 and S < 8, decide on 8;
	if truffle-confidence-timer > 0, decrease S by 2;
	if S > 20, decide on 20;
	if S < 1, decide on 1;
	decide on S.

Part 2 - Modify Delicateness

The player has a number called raw delicateness. The raw delicateness of the player is usually 1. [Min 1 Max 20]

highest delicateness is a number that varies. highest delicateness is 0.

[!<painDuration:Integer>*

Used to determine how many turns we alter the player's expression in the character window.

*!]
pain-duration is a number that varies.

[!<painBalance:Integer>*

Used to make pain increase delicateness slower.

*!]
pain-balance is a number that varies.

no-flinching is initially false. [can be used to flag times that the player can't flinch and expel from pain]

To UnflinchingPainUp (X - a number):
	now no-flinching is true;
	PainUp X;
	now no-flinching is false.

[A standard pain rating is 10.]
To PainUp (X - a number): [This function is anticipated to output some kind of flavour text when called]
	let pleasureTicks be 0; [how much pain has been redirected to pleasure?]
	let timesTicked be 0; [how many times did pain-balance go up?]
	let K be 0;
	repeat with C running through worn confidence clothing:
		if C is blessed, increase K by 1;
		increase K by 1;
	if X > 0:
		increase pain-duration by (X + 9) / 10;
		if the trophy-mode of pain-trophy > 0:
			increase pleasureTicks by X / 2;
			decrease X by pleasureTicks;
		if spank-heart tattoo is worn or (the raw sex addiction of the player >= 20 and the raw delicateness of the player >= 20):
			increase pleasureTicks by X / 2;
			decrease X by pleasureTicks;
	while X > 0:
		decrease X by 1;
		if a random number between 1 and 8 > K: [Sometimes confidence clothing stops delicateness increases]
			increase pain-balance by 1;
			increase timesTicked by 1;
			if pain-balance >= 20:
				if the raw delicateness of the player < 20, increase the raw delicateness of the player by 1;
				now pain-balance is 0;
	if timesTicked > 0:
		say "[variable custom style][if the delicateness of the player < 9][one of]Grr[or]Aaah[or]Ouch[or]Fuck[or]Shit[at random][otherwise if the delicateness of the player < 15][one of]Aaah[or]Ouch[or]Ahh, it hurts too bad[or]Nooo, I don't want to cry[or]Waaah[at random][otherwise][one of]I'm gonna cry[or]Waaah, it hurts[or]Ouchies[or]Waaah[at random][end if]![roman type][line break]";
		if highest delicateness <= the delicateness of the player: [We only say this bit if delicateness actually goes up]
			if the delicateness of the player is 1, say "[first custom style]Isn't this supposed to be a FUN game?![roman type][line break]";
			if the delicateness of the player is 2, say "[first custom style]I won't let them break me![roman type][line break]";
			if the delicateness of the player is 3, say "[first custom style]I've got to stay strong![roman type][line break]";
			if the delicateness of the player is 4, say "[first custom style]This is outrageous![roman type][line break]";
			if the delicateness of the player is 5, say "[first custom style]I'm going to find whoever created this game and kill them![roman type][line break]";
			if the delicateness of the player is 6, say "[variable custom style]Maybe relaxing and trying to enjoy whatever happens is the best way to survive down here...[roman type][line break]";
			if the delicateness of the player is 7, say "[variable custom style]Oh my god, if my friends could see me right now, they'd think I was being such a wimp.[roman type][line break]";
			if the delicateness of the player is 8, say "[variable custom style]They are NOT going to make me cry! Oh god, I'm going to cry aren't I?[roman type][line break]";
			if the delicateness of the player is 9, say "[variable custom style]I can't stop whimpering... [if there is a worn diaper]Maybe I deserve to wear diapers.[end if][roman type][line break]";
			if the delicateness of the player is 10, say "[variable custom style]I'm not strong enough to tolerate this much pain[if there is a monster in the location of the player]. If someone's bigger and stronger than me, I should probably just do what they say[end if]...[roman type][line break]";
			if the delicateness of the player is 11, say "[second custom style]Sometimes when things are tough I'm going to cry. There's nothing wrong with that, right?[roman type][line break]";
			if the delicateness of the player is 12, say "[second custom style]If I'm obedient, hopefully people will treat me gently?[roman type][line break]";
			if the delicateness of the player is 13, say "[second custom style][if diaper lover >= 1]So what if I sometimes act like a bit of a baby?[otherwise]I'm not brave, but hey, not everyone is, right?[end if][roman type][line break]";
			if the delicateness of the player is 14, say "[second custom style]I need someone big and strong to protect me![roman type][line break]";
			if the delicateness of the player is 15, say "[second custom style][if diaper lover >= 1]I'm just a fragile little baby[boy of the player], why is everyone being so mean to me in this place?[otherwise if the player is a sissy]I'm just a fragile little sissy, why does everyone have to be so mean to me?[otherwise]I feel so small and fragile...[end if][roman type][line break]";
			if the delicateness of the player is 16, say "[second custom style]Won't anyone take GENTLE care of little me?![roman type][line break]";
			if the delicateness of the player is 17, say "[second custom style][if diaper lover >= 1]I'm so scared of getting hurt, I almost don't want to fight back at all...[end if][roman type][line break]";
			if the delicateness of the player is 18, say "[second custom style][if diaper lover >= 1 and there is a matron in the location of the player]Nana knows what's best for me. I'll try to be a good [boy of the player] for [him of a matron].[otherwise if diaper lover >= 1]I want my Nana![otherwise]*sniff* I want my mummy.[end if][roman type][line break]";
			if the delicateness of the player is 19, say "[second custom style][if the bimbo of the player > 17][NameBimbo] deserves[otherwise]I deserve[end if][if there is a worn diaper] to be punished, I'm a very naughty nappied baby![otherwise if diaper lover >= 1] to be kept in nappies for ever and ever after this, I'm so naughty![otherwise] to be punished, I'm a bad [boy of the player].[end if][roman type][line break]";
			if the delicateness of the player is 20, say "[second custom style]I love it! I love how much it hurts! I deserve this![roman type][line break]";
	if no-flinching is false:
		let R be a random number between 11 and 20;
		if debuginfo > 0, say "[input-style]Avoid flinch check: d10+9 ([R]) | [timesTicked + the delicateness of the player].5 = ([delicateness of the player]) delicateness + ([timesTicked].5) pain rating[roman type][line break]";
		if timesTicked + the delicateness of the player >= R:
			let T be the substituted form of "As you [one of]recoil[or]flinch[or]tense up[in random order] with pain,";
			check sudden spit and expulsion with reason T;
	if pleasureTicks > 0:
		let T be "[one of]magic of [NameDesc of pain-trophy][or][NameDesc of pain-trophy][']s magic[purely at random]";
		if spank-heart tattoo is worn:
			if the trophy-mode of pain-trophy is 1, now T is "[T] and [spank-heart tattoo]";
			otherwise now T is "[spank-heart tattoo]";
		if the raw sex addiction of the player >= 20 and the raw delicateness of the player >= 20, now T is "nymphomaniacal and ultra-submissive nature of your mind";
		say "[one of]Thanks to the [T], the pain feels so good![or]Thanks to the [T], the painful sensation feels incredible![or]The [T] turns the sensation of pain into sexual pleasure![then at random]";
		stimulate vagina;
		check for arousal change; [might have happened in the middle of a big loop]
		unless vagina is orgasming, SlowSexAddictUp (pleasureTicks + 9) / 10; [This can trigger a shameful orgasm. If it does, we don't increase sex addiction any further]
		if the raw sex addiction of the player >= 20 and the trophy-mode of pain-trophy > 0:
			say "Your brain is now a mushy mess of pleasure-obsessed nymphomania. [bold type]You feel the magical effect of [NameDesc of pain-trophy] [bold type]deactivate itself.[roman type][line break]";
			now the trophy-mode of pain-trophy is 0;
	if highest delicateness < the delicateness of the player, now highest delicateness is the delicateness of the player.

slowDelicateness is a number that varies.
To SlowDelicateUp (X - a number):
	let slowDelicatenessLimit be 0[ - diaper quest];
	if the player is not feeling dominant, increase slowDelicatenessLimit by 1;
	if the player is feeling submissive, increase slowDelicatenessLimit by (the delicateness of the player - 13) / 2; [submissives are used to submitting so much that it takes a long time for their submissiveness to get even worse]
	if debugmode > 0, say "Delicateness threshold is [slowDelicatenessLimit] ticks.";
	while X > 0:
		decrease X by 1;
		increase slowDelicateness by 1;
		if debugmode > 0, say "[slowDelicateness - 1] --> [slowDelicateness].";
		if slowDelicateness > slowDelicatenessLimit:
			if debugmode > 0, say "Delicateness increased.";
			now slowDelicateness is 0;
			DelicateUp 1.

To DelicateUp (X - a number):
	let K be 0;
	repeat with C running through worn confidence clothing:
		if C is blessed, increase K by 1;
		increase K by 1;
	let D be the raw delicateness of the player;
	while X > 0:
		decrease X by 1;
		if a random number between 1 and 8 > K: [Sometimes confidence clothing stops delicateness increases]
			if the raw delicateness of the player < 20:
				increase the raw delicateness of the player by 1;
	if the raw delicateness of the player > D, say "You feel [if the player is feeling dominant]less dominant[otherwise]more submissive[end if]!".

To SilentlyDelicateUp (X - a number):
	let K be 0;
	repeat with C running through worn confidence clothing:
		if C is blessed, increase K by 1;
		increase K by 1;
	while X > 0:
		decrease X by 1;
		if a random number between 1 and 8 > K: [Sometimes confidence clothing stops delicateness increases]
			if the raw delicateness of the player < 20:
				increase the raw delicateness of the player by 1.

To DelicateDown (X - a number):
	if the raw delicateness of the player > 1 and the player is not broken, say "You feel [if the player is feeling submissive]less submissive[otherwise]more dominant[end if]!";
	SilentlyDelicateDown X.

To SilentlyDelicateDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the raw delicateness of the player > 1, decrease the raw delicateness of the player by 1.

[A standard fear rating is 10.]
To FearUp (X - a number):
	FearUp X with reason "".

To FearUp (X - a number) with reason (T - a text): [This function is anticipated to output some kind of flavour text when called]
	if X > 10:
		say "[variable custom style][if the player is not feeling submissive]FUCK[otherwise][one of]AAAAAH[or]EEEEEK[in random order][end if]![roman type][line break]";
	otherwise if X > 5:
		say "[variable custom style][if the player is feeling dominant][one of]Holy shit[or]Spooky[or]Woah[in random order].[otherwise if the player is not feeling submissive][one of]Woah[or]Fuck[or]Shit[or]Holy shit[in random order]![otherwise][one of]Aaaah[or]Eeeek[or]Waaah[in random order]![end if][roman type][line break]";
	otherwise:
		say "[variable custom style][one of]Oh[or]Oh my[or]Gosh[or]Jeez, that made me jump[or]I was not expecting that[in random order]![roman type][line break]";
	let R be a random number between 11 and 20;
	if debuginfo > 0, say "[input-style]Avoid flinch check: d10+9 ([R]) | [X + the delicateness of the player].5 = ([delicateness of the player]) delicateness + ([X].5) fear rating[roman type][line break]";
	if X + the delicateness of the player >= R:
		if T is "", now T is the substituted form of "As you [one of]recoil[or]flinch[or]tense up[in random order] with fear,";
		check sudden spit and expulsion with reason T.

gross-sensation is a text that varies.
silent-gross-out is initially false.

[X should be the number at which the player can tolerate the grossness. X + 7 should be the number where it turns them on. At 5 or less grossness, the player will never have the most extreme reaction (hated).
Room stinks of sex and cum: 2
Room stinks of piss: 3
Sloppy kiss / snowball kiss: 3
Taste own pussy: 3
Licking sweaty body part: 4
Felching vaginal creampie: 4
Spit in mouth: 4
Feet in fluid-filled shoes: 4
Masturbated in a wet diaper: 5
Made to wear wet diaper / used as diaper urinal: 5
Drinking mix of fluids: 5
Intimacy with gross partner: 5
Given a swirlie: 5
Wet diaper on face: 6
Puking when gagging: 6
Intimacy with partially humanoid (centaur): 6
Licking theoretically dirty body part / bottom of feet: 6
Anilingus / A2M: 7
Wearing messy diaper / messy diaper smell in the room: 7
Intimacy with vaguely humanoid (deep one) or tentacles: 8
Masturbated in messy diaper: 9
Licking from puddle on ground: 9
Licking bottom of shoe: 9
Drinking anal creampie: 10
Messy diapers near face: 10
Intimacy with 90% bestial partner (hellhound): 11
Messy diapers on face: 11
Drinking / eating other anal food or enemas: 12
]
To GrossOut (X - a number):
	say GrossOut X.
To say GrossOut (X - a number):
	GrossOut X with reason "" and sensation "feeling".

To SmellGrossOut (X - a number):
	say GrossOut X.
To say SmellGrossOut (X - a number):
	GrossOut X with reason "" and sensation "[one of]smell[or]stench[as decreasingly likely outcomes]".

To TasteGrossOut (X - a number):
	say TasteGrossOut X.
To say TasteGrossOut (X - a number):
	GrossOut X with reason "" and sensation "[one of]taste[or]flavour[as decreasingly likely outcomes]".

To SilentlyGrossOut (X - a number):
	now silent-gross-out is true;
	GrossOut X with reason "" and sensation "";
	now silent-gross-out is false;
	compute potential addiction gain from grossness X.

To GrossOut (X - a number) with reason (T - a text) and sensation (S - a text): [This function is anticipated to output some kind of flavour text when called]
	NonAddictiveGrossOut X with reason T and sensation S;
	compute potential addiction gain from grossness X.

To NonAddictiveGrossOut (X - a number) with reason (T - a text) and sensation (S - a text): [This function is anticipated to output some kind of flavour text when called]
	if the player is a december 2022 top donator or diaper quest is 1:
		let G be X - the grossness addiction of the player;
		if G >= 5: [hated]
			if silent-gross-out is false, say "[variable custom style][one of]This is the most disgusting thing that's ever happened to me in my life[or]YEUUUURGH[or]I'm gonna puke[or]DISGUSTING[or]This is going to make me hurl[then at random]![roman type][line break]";
			cool down 5000;
		otherwise if G > 0: [disliked]
			if silent-gross-out is false, say "[variable custom style][one of]Yuck[or]Gross[or]This is so nasty, eww[or]Yuck yuck yuck[or]Eurgh[or]I can't stand this [S][or]This is so wrong[in random order]![roman type][line break]";
			cool down 1000;
		otherwise if G > -7: [tolerated]
			if silent-gross-out is false:
				if the grossness addiction of the player < 7:
					say "[variable custom style][one of]I don't want to get used to this, but I can tolerate it[or]Grim, but I can handle it[or]A little gross, I guess[or]Not my favourite [S][in random order].[roman type][line break]";
				otherwise if the grossness addiction of the player < 14:
					say "[variable custom style][one of]This is fucking gross, haha![or]How nasty.[or]Wow, that is one strong [S].[in random order][roman type][line break]";
				otherwise:
					say "[second custom style][one of]Nasty. Just the way I like it.[or]Yuck. But also, yum![or]Not a problem for a nasty bitch like me![in random order][roman type][line break]";
		otherwise if G > -14: [loved]
			if silent-gross-out is false:
				if the grossness addiction of the player < 10:
					say "[variable custom style][one of]I can't believe how much I love this disgusting [S][or]Oh my god, this is really turning me on[or]How fucked up is it that I fucking love this [S] now[in random order]![roman type][line break]";
				if the grossness addiction of the player < 14:
					say "[variable custom style][one of]I can't deny it any more... I fucking love this [S][or]This [S] is so gross, but it's also so fucking good[or]I'm getting addicted to this [S][in random order]![roman type][line break]";
				otherwise:
					say "[second custom style][one of]Yes... YES! SO DISGUSTING! SO GOOD![or]So gross! I need more![or]I can't get enough of this disgusting [S][or]I'm addicted to this [S][in random order]![roman type][line break]";
				now G is G * -200;
				arouse G;
		otherwise: [boring]
			if silent-gross-out is false, say "[second custom style][one of]I can hardly even call this gross any more. It just doesn't excite me.[or]Gross? More like boring...[or]What a boring [S]. I need something more extreme![in random order][roman type][line break]";
		if G > 0:
			let R be a random number between 1 and 10;
			if debuginfo > 0, say "[input-style]Avoid flinch check: d10 ([R]) | [G].5 = ([X].5) grossness - ([grossness addiction of the player]) grossness addiction[roman type][line break]";
			if G >= R:
				if T is "", now T is the substituted form of "As you [one of]recoil[or]flinch[or]tense up[in random order] with disgust,";
				check sudden spit and expulsion with reason T.

To compute potential addiction gain from grossness (X - a number):
	if the player is a december 2022 top donator or diaper quest is 1:
		let G be X - the grossness addiction of the player;
		let R be a random number between -9 and 5;
		if debuginfo > 0, say "[input-style]Grossness gain avoidance check: d15 - 10 ([R]) | [G].5 = ([X].5) grossness - ([grossness addiction of the player]) grossness addiction[roman type][line break]";
		if R < G:
			GrossnessAddictUp 1.


To SilentlyGrossOut (X - a number):
	now silent-gross-out is true;
	SlowGrossOut X;
	now silent-gross-out is false;
	compute slow addiction gain from grossness X.

To SlowGrossOut (X - a number): [This function is anticipated to be called every turn for a potentially long number of turns, and so we want smaller text outputs and less addiction & arousal gain]
	NonAddictiveSlowGrossOut X;
	compute slow addiction gain from grossness X.

To NonAddictiveSlowGrossOut (X - a number): [This function is anticipated to be called every turn for a potentially long number of turns, and so we want smaller text outputs and less addiction gain]
	if the player is a december 2022 top donator or diaper quest is 1:
		let G be X - the grossness addiction of the player;
		if G >= 5: [hated]
			if silent-gross-out is false, say "[variable custom style][one of]Gonna puke...[or]Gonna hurl...[or]DISGUSTING![or]YEUUUURGH![or]EEEUUURGH![or]I feel ill...[then at random][roman type][line break]";
			cool down 1000;
		otherwise if G > 0: [disliked]
			if silent-gross-out is false, say "[variable custom style][one of]Yuck[or]Too gross[or]So nasty[or]Eww[or]Yuck yuck yuck[or]Eurgh[or]Too much[or]So wrong[in random order]![roman type][line break]";
			cool down 200;
		otherwise if G > -7: [tolerated]
			if silent-gross-out is false:
				if the grossness addiction of the player < 14:
					say "[variable custom style][one of]Blergh[or]Grim[or]A little gross[or]Not nice[or]Barely tolerable[or]Yuck[in random order].[roman type][line break]";
				otherwise:
					say "[second custom style][one of]Hehe[or]Haha[or]Heh[at random], [one of]I'm so[or]I'm[or]this is[at random] [one of]pretty [or][purely at random][one of]nasty[or]gross[or]sick[or]fucked up[in random order].[roman type][line break]";
		otherwise if G > -14: [loved]
			if the grossness addiction of the player < 10 and silent-gross-out is false:
				say "[variable custom style][one of]Aaah[or]Oooh[or]Mmmmm[or]Yes[or]Nice[in random order]...[roman type][line break]";
			now G is G * -40;
			arouse G;
		otherwise: [boring]
			say "[variable custom style][one of]Meh.[or][or]Boring...[or][or]Yawn.[or][cycling][roman type][line break]";

To compute slow addiction gain from grossness (X - a number):
	if the player is a december 2022 top donator or diaper quest is 1:
		let G be X - the grossness addiction of the player;
		let R be a random number between 0 and 9; [if the player is already tolerant, they won't gain more]
		if debuginfo > 0, say "[input-style]Grossness gain avoidance check: d10 - 1 ([R]) | [G].5 = ([X].5) grossness - ([grossness addiction of the player]) grossness addiction[roman type][line break]";
		if R < G:
			SlowGrossnessAddictUp 1.

Delicateness ends here.
