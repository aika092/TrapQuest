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
		if debuginfo > 0, say "[input-style]Flinch check: d10+9 ([R]) | [timesTicked + the delicateness of the player].5 = ([delicateness of the player]) delicateness + ([timesTicked].5) pain rating[roman type][line break]";
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
	if debuginfo > 0, say "[input-style]Flinch check: d10+9 ([R]) | [X + the delicateness of the player].5 = ([delicateness of the player]) delicateness + ([X].5) fear rating[roman type][line break]";
	if X + the delicateness of the player >= R:
		if T is "", now T is the substituted form of "As you [one of]recoil[or]flinch[or]tense up[in random order] with fear,";
		check sudden spit and expulsion with reason T.

Delicateness ends here.
