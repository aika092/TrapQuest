Imp by Monster begins here.

An imp is a kind of monster. An imp is male.

Definition: an imp is willing to urinate if it is unfriendly.

Definition: an imp is father material if the player is a august 2019 top donator.

Definition: an imp is raunchy: decide yes.

Definition: an imp is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

An imp has a number called imp-rudeness. The imp-rudeness of an imp is usually 0. [determines the chances of imp taking leaving after being attacked]

Figure of imp 1 is the file "NPCs/MultiFloor/imp1.png".

To decide which figure-name is the monster-image of (M - an imp):
	decide on figure of imp 1.

To say ShortDesc of (M - an imp):
	say "imp".

wily imp is an imp. The text-shortcut of wily imp is "wii".
To say MediumDesc of (M - wily imp):
	say "wily imp".

snickering imp is an imp. The text-shortcut of snickering imp is "sni".
To say MediumDesc of (M - snickering imp):
	say "snickering imp".

snivelling imp is an imp. The text-shortcut of snivelling imp is "svi".
To say MediumDesc of (M - snivelling imp):
	say "snivelling imp".

simpering imp is an imp. The text-shortcut of simpering imp is "smi".
To say MediumDesc of (M - simpering imp):
	say "simpering imp".

devilish imp is an imp. The text-shortcut of devilish imp is "dvi".
To say MediumDesc of (M - devilish imp):
	say "devilish imp".

naughty imp is an imp. The text-shortcut of naughty imp is "nai".
To say MediumDesc of (M - naughty imp):
	say "naughty imp".

To decide which number is the girth of (M - an imp):
	decide on 2.

Definition: an imp is infernal: decide yes.

To say MonsterDesc of (M - an imp):
	if diaper quest is 0:
		say "A tiny, naked [man of M] with red skin. [if full-lady fetish is 1][big his of M] breasts are quite large for [his of M] size, as is the strap-on dildo sticking out of the harness around [his of M] waist[otherwise if lady fetish is 1][big his of M] breasts are quite large for [his of M] size, as is the [manly-penis] hanging between [his of M] legs[otherwise]The [manly-penis] hanging between [his of M] legs is huge for [his of M] size[end if], and [if the intelligence of the player > 5]from the way [he of M]'s looking at you, it isn't hard to tell where [he of M][']d like to put it[otherwise]you have a lot of trouble focusing long enough to keep yourself from staring[end if]. For some reason you don't feel too self-conscious about [him of M] seeing you in humiliating situations - it's probably because [he of M] doesn't feel very human, and doesn't seem to be at all interested in what you're up to at any given moment. [if the imp-rudeness of M > 3][big he of M] has become more and more irritable[otherwise if the imp-rudeness of M > 1][big he of M] feels like [he of M] is growing impatient faster than before[otherwise if the imp-rudeness of M > 0][big he of M] seems to be getting more and more bored following you around everywhere[otherwise if M is friendly]You get the feeling that [he of M] could turn on you at any time[otherwise][big he of M] hasn't been very loyal to you[end if]...";
	otherwise:
		say "A tiny, red-skinned [man of M] dressed in rags. [unless M is unfriendly]You get the feeling that [he of M] could turn on you at any time[otherwise][big he of M] hasn't been very loyal to you[end if]...".

To set up (M - an imp):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is 3;
	now the health of M is the maxhealth of M;
	now the imp-rudeness of M is 0;
	compute refactoryReset of M;
	now the favour of M is 99.[always start at max favor]

To compute birth set up of (M - an imp):
	set up M;
	now M is in the location of the player.

To compute reward (N - a number) set up of (M - an imp):
	set up M;
	increase the raw difficulty of M by (N - 1);
	now the health of M is the maxhealth of M;
	now M is in the location of the player.

Definition: an imp (called M) is objectifying the player:
	if the player is stuck, decide yes;
	if the favour of M < the aggro limit of M, decide yes;
	decide no.

Part 1 - Misc Flavour

To compute (M - a monster) stomping (N - an imp):
	if M is in the location of the player, say "[BigNameDesc of M] lifts [NameDesc of N] off the ground, ignoring [his of N] cursing as [he of M] forces [his of M] [DickDesc of M] into [NameDesc of N]'s [HoleDesc of N]! [BigNameDesc of N] abdomen bulges obscenely as [NameDesc of M] fucks [him of N], and [he of N] shrieks as [NameDesc of M][']s [LongDickDesc of M] forces [him of M] to [if full-lady fetish is 1]squirt[otherwise]cum[end if] and immediately disappear.";
	otherwise say "You hear cursing and shrieking coming from somewhere else in the dungeon!";
	destroy N.

To compute (M - demon lord) stomping (N - an imp):
	compute N protecting against M.[the imp betrays you]
	[if M is in the location of the player, say "[BigNameDesc of M] lifts [NameDesc of N] off the ground and jams [him of N] face first onto [his of M] [DickDesc of M]. [BigNameDesc of N]'s throat bulges obscenely as [NameDesc of M] facefucks [him of M], and [he of N] emits a strangled gagging noise as [his of N] master forces [him of M] to spontaneously [if full-lady fetish is 1]squirt[otherwise]cum[end if] and disappear.";
	otherwise say "You hear gagging noises coming from somewhere else in the hotel!";
	destroy N.]

To say MuteGreetResponse of (M - an imp):
	say "[BigNameDesc of M] replies noncommittally. Looks like [he of M] isn't much for conversation.".

To say MuteQuestionResponse of (M - an imp):
	say "[variable custom style]'Hey, do you understand me?'[roman type][line break]";
	say "[speech style of M]'Yeah, but I try not to.'[roman type][line break]";

To say PregGrowth of (M - an imp):
	say "the demon spawn".

To compute labour to (M - an imp):
	compute infernal birth.

To compute fatherhood to (M - an imp):
	distract M.

To decide which number is the seek roll of (M - an imp):
	if M is friendly, decide on 1; [imps always follow you around perfectly when not bored]
	decide on a random number between 0 and 3. [Most monsters have a 75% chance of successfully moving.]

A later time based rule (this is the imps follow the player rule): [after compute monsters]
	repeat with M running through on-stage imps:
		if M is not in the location of the player:
			now M is in the location of the player;
			say "A portal appears, and [NameDesc of M] hops out!";
			if M is not interested, compute perception of M.

[rather than becoming bored, they turn on you]
To compute friendly boredom of (M - an imp):
	if M is in the location of the player and the refactory-period of M <= 0:
		compute sudden objectification of M;
		now the boredom of M is 0;
		anger M.

To check consensual submissive sex of (M - an imp):
	now current-monster is M;
	if presented-orifice is a reasonable target and the refactory-period of current-monster <= 500:
		now the chosen-orifice of current-monster is presented-orifice;
		say PresentFriendlyAcceptanceFlav of current-monster;
		now the chosen-orifice of M is presented-orifice;
		now M is friendly-fucking;
		if the imp-rudeness of M > 0, decrease the imp-rudeness of M by 1;
		follow the insertion rules of M;
		repeat with N running through imps in the location of the player:
			if N is not M:
				calm N;
				now N is friendly-fucking;
				if the imp-rudeness of N > 0, decrease the imp-rudeness of N by 1;
				if N is not penetrating a body part:
					now N is interested;
					let B be a random reasonable target body part;
					if B is body part:
						now the chosen-orifice of M is B;
						say "[BigNameDesc of N] seems to think [he of N][']s been invited to join in!";
						follow the insertion rules of M;
					otherwise:
						say "[BigNameDesc of N] begins masturbating in your direction!";
						if bukkake fetish is 1:
							say "[big he of N] quickly climaxes, spraying you with [his of N] [semen]!";
							let B be face;
							if a random number between 1 and 2 is 1, now B is hips;
							squirt semen on B by (the semen load of N);
						orgasm N;
				if N is not penetrating a body part, now N is not friendly-fucking; [Make sure this flag doesn't linger when it's not supposed to]
	otherwise:
		if presented-orifice is not nothing:
			say PresentFriendlyRejectionFlav of current-monster;
		otherwise:
			say "[BigNameDesc of M] can't seem to understand what you want from [him of M].".

To say PresentFriendlyAcceptanceFlav of (M - an imp):
	say "[BigNameDesc of M] perks up, and so does [his of M] [DickDesc of M]!".

To say PresentFriendlyRejectionFlav of (M - an imp):
	if presented-orifice is a reasonable target and the refactory-period of current-monster > 500, say "[BigNameDesc of M] shakes [his of M] head. It seems that [he of M][']s not ready to go again yet.";
	otherwise say "[BigNameDesc of M] seems to ignore your request.".

To satisfy (M - an imp):
	if M is interested:
		dislodge M;
		now the favour of M is 99;
		compute refactoryReset of M;
		if M is in the location of the player and M is awake, say SatisfiedFlav of M;
	otherwise:
		satisfy M for 200 seconds.

To compute refactoryReset of (M - an imp): [Usually this is only used for intelligent NPCs so we need to hard code it here]
	now the blue-balls of M is 0;
	now the refactory-period of M is the refactory-time of M.

To compute periodic recovery of (M - an imp):
	let R be a random number between 1 and the imp-rudeness of M;
	decrease the refactory-period of M by R;
	if the refactory-period of M < 200 and R + the refactory-period of M >= 200:
		say "[BigNameDesc of M] glances at you, snickering. Looks like [he of M][']s getting bored...";
	otherwise if the refactory-period of M < 100 and R + the refactory-period of M >= 100:
		say "[BigNameDesc of M] makes an obscene gesture at you.[big he of M] seems like [he of M] really needs a way to entertain [himself of M]...";
	otherwise if the refactory-period of M < 20 and R + the refactory-period of M >= 20:
		say "[one of][BigNameDesc of M] stares at you, licking [his of M] lips[or][BigNameDesc of M][']s eyes linger on your body[at random]. It seems like [he of M][']s about to turn on you...".

To say SatisfiedFlav of (M - an imp):
	if M is in the location of the player and M is not dying:
		let U be 0;
		if M is unfriendly, now U is 1;[This check can cause a line break]
		decrease the imp-rudeness of M by 2;
		say "[BigNameDesc of M] [if U is 1]seems satisfied, and stops acting hostile[otherwise]seems very satisfied[end if].";
		now M is interested;
		now the boredom of M is 0;[just in case]

Part 2 - Perception

[imps should only be aggressive if you're stuck by the demoness]
To compute perception of (M - an imp):
	now M is interested;
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if M is unfriendly:
		say "[BigNameDesc of M] grins evilly. Looks like [he of M]'s turned on you!";
		anger M;
	otherwise:
		say "[BigNameDesc of M] eyes you mischievously.".

Part 3 - Combat

Section 1 - Attack

To compute (M - an imp) protecting against (X - a monster):
	if the player is stuck or (the player is prone and the player is in danger):
		if the refactory-period of M < the refactory-time of M - 30: [After they've just used you, they don't do it again immediately.]
			say "[BigNameDesc of M] grins evilly. Looks like [he of M][']s turned on you!";
			anger M;
	otherwise if X is demoness:
		say "[BigNameDesc of M] watches on, [one of]seemingly uncertain about[or]still unsure[stopping] what to do.";
	otherwise if X is infernal:
		say "[BigNameDesc of M] [one of]looks from you to [NameDesc of X], chuckling evilly as [he of M] switches sides.[or]doesn't spare you another glance as [he of M] immediately takes [NameDesc of X]'s side.[or]immediately moves to [NameDesc of X]'s side, abandoning you.[or]abandons you to join forces with [NameDesc of X].[then at random]";
		anger M;
	otherwise:
		compute X receiving 1 damage from M;
		if M is damageable:
			say "[BigNameDesc of X] snarls and attacks [NameDesc of M] in retaliation.";
			compute standard damage of M;
		otherwise:
			say "[BigNameDesc of X] flails at [NameDesc of M] in self-defence.";
			increase the imp-rudeness of M by 1.

To say AllyDamageFlav of (M - an imp) on (X - a monster):
	say "[BigNameDesc of M] [one of]claws [NameDesc of X][or]laughs as [he of M] punches [NameDesc of X][or]punches [NameDesc of X][or]kicks [NameDesc of X][then at random]!".

To decide if (M - an imp) is willing to creampie (F - vagina):
	if there is a worn xavier's cunt tattoo, decide no;[they respect their master]
	if the class of the player is priestess and the number of infernal monsters penetrating the player < 3, decide no;
	decide yes.

Section 2 - Damage

Definition: an imp is damageable if the imp-rudeness of it >= the difficulty of it.

To say damage-flavour of (N - a number) on (M - an imp):
	if N is 0:
		say "[BigNameDesc of M] hops backwards, dodging your attack! [big he of M] frowns and makes an annoyed sound.";
		increase the imp-rudeness of M by 1;
	otherwise if N is 1:
		say "That felt extremely weak, you doubt it hurt much at all.";
	otherwise if N is 2:
		say "That felt quite weak, but hopefully it hurt a bit.";
	otherwise if N < 5:
		say "[BigNameDesc of M] definitely felt that. A respectable hit!";
	otherwise if N < 7:
		say "[BigNameDesc of M] visibly recoils from the hit. A [if critical is 1][bold type]critical hit[roman type][otherwise]strong hit[end if]!";
	otherwise if N < 9:
		say "Wow, you felt that connect with incredible force. A super strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!";
	otherwise:
		say "POW! Your attack is accompanied by a loud sound. An almost impossibly strong [if critical is 1][bold type]critical hit[roman type][otherwise]hit[end if]!".

To compute standard damage of (M - an imp):
	compute automatic banishment of M.

To say BanishFleeFlav of (M - an imp):
	say "[BigNameDesc of M] leaps away from you, sticking out [his of M] tongue as a portal opens up behind [him of M]. [big he of M] cackles tauntingly as [he of M] jumps through and portal closes after [him of M].".

Definition: an imp is auto-banish-loot-dropping: decide no. [Will it automatically drop jewellery when it is banished in this manner?]

Imp ends here.
