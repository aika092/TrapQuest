Imp by Monster begins here.

An imp is a kind of monster. An imp is male. An imp can be player-brood. An imp is usually not player-brood. [This will be used to flag the imp as one of your children]

Definition: an imp is willing to urinate:
	if it is unfriendly, decide yes;
	decide no.

Definition: an imp is father material: decide yes.

Definition: an imp is raunchy: decide yes.

Definition: an imp is summoningRelevant: decide no. [Doesn't count towards the number of monsters in the region for the purposes of summoning portals.]

Definition: an imp is actually seducable:
	if diaper quest is 0 and it is seducable and it is in the location of the player and it is interested and it is unseduced and it is not penetrating a body part and it is unfriendly, decide yes; [imps are not reactive, but can be seduced when unfriendly]
	decide no.

An imp has a number called imp-rudeness. The imp-rudeness of an imp is usually 0. [determines the chances of imp leaving after being attacked]

Figure of imp 1 is the file "NPCs/MultiFloor/Imp/imp1.jpg".
Figure of imp 2 is the file "NPCs/MultiFloor/Imp/imp2.jpg".
Figure of imp 3 is the file "NPCs/MultiFloor/Imp/imp3.png".
Figure of imp cutscene 1 is the file "NPCs/MultiFloor/Imp/cutscene-imp-fuck1.jpg".
Figure of imp cutscene 2 is the file "NPCs/MultiFloor/Imp/cutscene-imp-preg1.jpg".

To decide which figure-name is the monster-image of (M - an imp):
	if lady fetish is 1, decide on Figure of imp 3;
	decide on figure of imp 1.
To decide which figure-name is the unfriendly-monster-image of (M - an imp):
	if lady fetish is 1, decide on Figure of imp 3;
	decide on figure of imp 2.

To decide which figure-name is the sex-profile of (M - an imp):
	if lady fetish is 1, decide on Figure of imp 3;
	if M is penetrating a body part, decide on Figure of imp cutscene 1;
	decide on figure of Missing NPC. [Defaults back to the non-sex stuff.]

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
		say "A tiny, naked [man of M] with red skin. [if full-lady fetish is 1][big his of M] breasts aren't particularly large for [his of M] size, but the strap-on dildo sticking out of the harness around [his of M] waist sure is[otherwise if lady fetish is 1][big his of M] breasts aren't particularly large for [his of M] size, but the [manly-penis] hanging between [his of M] legs sure is[otherwise]The [manly-penis] hanging between [his of M] legs is huge for [his of M] size[end if], and [if the intelligence of the player > 5]from the way [he of M]'s looking at you, it isn't hard to tell where [he of M][']d like to put it[otherwise]you have a lot of trouble focusing long enough to keep yourself from staring[end if]. For some reason you don't feel too self-conscious about [him of M] seeing you in humiliating situations - it's probably because [he of M] doesn't feel very human, and doesn't seem to be at all interested in what you're up to at any given moment. [if the imp-rudeness of M > 3][big he of M] has become more and more irritable[otherwise if the imp-rudeness of M > 1][big he of M] feels like [he of M] is growing impatient faster than before[otherwise if the imp-rudeness of M > 0][big he of M] seems to be getting more and more bored following you around everywhere[otherwise if M is friendly]You get the feeling that [he of M] could turn on you at any time[otherwise][big he of M] hasn't been very loyal to you[end if]...";
	otherwise:
		say "A tiny, red-skinned [man of M] dressed in rags. [unless M is unfriendly]You get the feeling that [he of M] could turn on you at any time[otherwise][big he of M] hasn't been very loyal to you[end if]...".

To say MonsterComment of (M - an imp):
	let U be 0;
	if M is unfriendly, now U is 1;
	if diaper quest is 1:
		if U is 1, say "[variable custom style][big he of M] turned on me! Meanie!";
		otherwise say "[variable custom style][one of][big he of M] better not attack me...[or][big he of M] has a mean face.[at random]";
	otherwise if the class of the player is worshipper:
		if the bimbo of the player < 7:
			if U is 1, say "[variable custom style][one of]Even though [he of M]'s weak, I still can't fight [him of M]...[or][if M is not penetrating a body part]My only chance is to get someone else to fight [him of M] for me... [otherwise]Even when my attacker is the lowest of the low, I still get turned into a cocksleeve...[end if][or]If I can't run away, and I can't fight, then [if M is penetrating a body part]I guess this outcome was inevitable[otherwise]what CAN I do?[end if][in random order]";
			otherwise say "[variable custom style][one of]I'm... even lower than [him of M]?[or]I want to say [he of M] works for me, but... it's the other way around, isn't it?[or]I can't really get away from [him of M], and I can't fight [him of M], so... I guess I know what happens when [he of M] turns on me.[in random order]";
		otherwise if the bimbo of the player < 12:
			if U is 1, say "[variable custom style][one of][big he of M] totally betrayed me, so... why is it fun?[or][if M is not penetrating a body part][big he of M] might go away if I get someone else to fight [him of M] for me, but why doesn't that sound good?[otherwise][big he of M]'ll be satisfied after this![end if][or]I can't run and I can't fight, so I might as well do whatever [he of M] wants.[in random order]";
			otherwise say "[variable custom style][one of]Even if [he of M]'s weak, [he of M]'s still a mighty demon. I'm below [him of M] no matter what I do.[or][big he of M] may be guarding me because [he of M] wants to fuck me, but at least I have protection, right?[or][big he of M] follows me everywhere. I'm so safe from everyone else! Watch out everyone who isn't [him of M]![in random order]";
		otherwise:
			if U is 1, say "[variable custom style][one of][big he of M] only turned on me so I could win [him of M] back![or][if M is not penetrating a body part]I should hurry up and satisfy [him of M] already. [big he of M] deserves it, after all [he of M]'s done for me.[otherwise][big he of M]'s going to be so happy after [he of M] busts this nut![end if][or]Even if I could run, I still wouldn't.[in random order]";
			otherwise say "[variable custom style][one of][big he of M] may look weak, but that's because all [his of M] strength is below the waist. I should get below [his of M] waist too![or]A good bodyguard has your back. A perfect bodyguard has your butt. Thank you![or][big he of M] follows me everywhere because he needs me. For sex.[in random order]";
	otherwise if the class of the player is priestess:
		if M is player-brood, say "An angry voice sounds in your head.[second custom style]Disgraced Sister, [one of]you should not feel familial love toward such a being. Drive it away at once![or]you have brought this vile creature into being. It is your responsibility.[or]you must not succumb to such a being. You must escape before you are defiled again![in random order]";
		otherwise say "A panicked voice sounds in your head.[second custom style]Lost Sister, [one of]your holy power is useless against such a being! Drive it away!'[or][if M is penetrating a body part]you must not submit to this vile assault! Resist, sister! You must resist!'[otherwise if U is 1]that is a vile, corrupted existence. You must not let it defile you!'[otherwise]that is a vile, corrupted being. You must never trust it.'[end if][or]you have become snarled in a web of darkness. You must seek help!'[in random order]";
	otherwise if the bimbo of the player < 7:
		if the player is gendered male, say "[first custom style][one of][if U is 1][big he of M]'s looking at me like I look at chicks![otherwise][big he of M] looks weak, but that's better than nothing.[end if][or][big he of M] [if U is 1]probably can't keep dodging forever.[otherwise]seems a little scummy, but who doesn't?[end if][or]How do I get rid of this [if M is presenting as male]guy[otherwise]chick[end if]?[in random order]";
		otherwise say "[first custom style][one of][if U is 1]Stop looking at me like that, you BRUTE![otherwise]What's [he of M] planning?[end if][or][if U is 1]Why am I surprised it betrayed me?[otherwise]I can smell the entitlement from here. News flash: I won't be fucking you.[end if][or]Stop following me![in random order]";
	otherwise if the bimbo of the player < 12:
		say "[variable custom style][one of]That lecherous look in [his of M] eye is kind of... exciting.[or]Well, on the bright side [he of M]'ll probably stay on my side if I [if U is 1]satisfy [him of M].[otherwise]keep [him of M] entertained.[end if][or][big he of M] follows me EVERYWHERE.[or]What's [he of M] thinking?[in random order]";
	otherwise:
		say "[second custom style][one of]I love that terrible look in [his of M] eye. [if U is 1]Pin me down[otherwise]Attack me[end if] already, sexy![or]It's fine if [he of M]turns on me. I just need to satisfy [him of M], and then we'll be friends again![or][big he of M] follows me everywhere. So romantic....[or]I wonder what [he of M]'s thinking?[in random order]";
	say "[roman type][line break]".

To set up (M - an imp):
	reset M;
	now the monstersetup of M is 1;
	now the raw difficulty of M is the starting difficulty of M;
	now the health of M is the maxhealth of M;
	now the imp-rudeness of M is 0;
	compute refractoryReset of M;
	now the favour of M is 99.[always start at max favour]

To decide which number is the starting difficulty of (M - an imp):
	decide on 3.

To compute birth set up of (M - an imp):
	set up M;
	now M is player-brood;
	now M is in the location of the player.

To compute reward (N - a number) set up of (M - an imp):
	set up M;
	increase the raw difficulty of M by (N - 1);
	now the health of M is the maxhealth of M;
	now M is in the location of the player.

Definition: an imp (called M) is objectifying the player:
	if the player is prone and the player is immobile and the player is in danger, decide yes;
	if the favour of M < the aggro limit of M, decide yes;
	decide no.

Part 1 - Misc Flavour

To compute (M - a monster) stomping (N - an imp):
	if M is in the location of the player, say "[BigNameDesc of M] lifts [NameDesc of N] off the ground, ignoring [his of N] cursing as [he of M] forces [his of M] [DickDesc of M] into [NameDesc of N]'s [HoleDesc of N]! [BigNameDesc of N] abdomen bulges obscenely as [NameDesc of M] fucks [him of N], and [he of N] shrieks as [NameDesc of M][']s [LongDickDesc of M] forces [him of M] to [if full-lady fetish is 1]squirt[otherwise]cum[end if] and immediately disappear.";
	otherwise say "You hear cursing and shrieking coming from somewhere else in the dungeon!";
	destroy N.

To compute (M - demon lord) stomping (N - an imp):
	unless N is unfriendly, compute N protecting against M.[the imp betrays you]

To say MuteGreetResponse of (M - an imp):
	say "[BigNameDesc of M] replies noncommittally. Looks like [he of M] isn't much for conversation.".

To say MuteQuestion of (M - an imp):
	say "[variable custom style]'Hey, do you understand me?'[roman type][line break]".
To say MuteResponse of (M - an imp):
	say "[speech style of M]'Yeah, but I try not to.'[roman type][line break]".

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
		if M is not in the location of the player and the location of the player is not bossed: [The imps always follow you, no matter where you go. Unless it's a boss room.]
			now M is in the location of the player;
			say "A portal appears, and [NameDesc of M] hops out!";
			if M is not interested, check guaranteed perception of M.

[rather than becoming bored, they turn on you]
To compute friendly boredom of (M - an imp):
	if M is in the location of the player and the refractory-period of M <= 0:
		compute sudden objectification of M;
		now the boredom of M is 0;
		anger M.

To check consensual submissive sex of (M - an imp):
	now current-monster is M;
	if presented-orifice is a reasonable target and the refractory-period of current-monster <= 500:
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
					interest N;
					let B be a random reasonable target body part;
					if B is body part:
						now the chosen-orifice of N is B;
						say "[BigNameDesc of N] seems to think [he of N][']s been invited to join in!";
						now current-monster is N;
						follow the insertion rules of N;
					otherwise:
						say "[BigNameDesc of N] begins masturbating in your direction!";
						if bukkake fetish is 1:
							let B be face;
							if a random number between 1 and 2 is 1, now B is hips;
							say "[big he of N] quickly climaxes, spraying [his of N] hot [semen] [one of]across[or]all over[or]liberally across[in random order] your [printed name of B].";
							AnnouncedSquirt semen on B by (the semen load of N);
						otherwise:
							say "[big he of N] quickly climaxes, spraying [his of N] semen on the ground!";
							SemenPuddleUp the semen load of N;
						orgasm N;
				if N is not penetrating a body part, now N is not friendly-fucking; [Make sure this flag doesn't linger when it's not supposed to]
		now current-monster is M;
	otherwise:
		if presented-orifice is not nothing:
			say PresentFriendlyRejectionFlav of current-monster;
		otherwise:
			say "[BigNameDesc of M] can't seem to understand what you want from [him of M].".

To say PresentFriendlyAcceptanceFlav of (M - an imp):
	say "[BigNameDesc of M] perks up, and so does [his of M] [DickDesc of M]!".

To say PresentFriendlyRejectionFlav of (M - an imp):
	if presented-orifice is a reasonable target and the refractory-period of current-monster > 500, say "[BigNameDesc of M] shakes [his of M] head. It seems that [he of M][']s not ready to go again yet.";
	otherwise say "[BigNameDesc of M] seems to ignore your request.".

To satisfy (M - an imp):
	if M is interested:
		dislodge M;
		now the favour of M is 99;
		compute refractoryReset of M;
		if M is in the location of the player and M is awake, say SatisfiedFlav of M;
	otherwise:
		satisfy M for 200 seconds.

To compute refractoryReset of (M - an imp): [Usually this is only used for intelligent NPCs so we need to hard code it here]
	now the blue-balls of M is 0;
	now the refractory-period of M is the refractory-time of M.

To decide which number is the refractory-time of (M - an imp):
	decide on 500. [This can be tweaked for balancing purposes. Goes down by a random per round based on imp-rudeness.]

To compute periodic recovery of (M - an imp):
	let R be a random number between 1 and the imp-rudeness of M;
	decrease the refractory-period of M by R;
	let P be the refractory-period of M;
	if M is in the location of the player: [really only matters in the school and in the extra credit zone]
		if P < 200 and R + P >= 200: [If the current refractory period just dropped below 200, run this code]
			say "[BigNameDesc of M] glances at you, snickering. Looks like [he of M][']s getting bored...";
		otherwise if the refractory-period of M < 100 and R + the refractory-period of M >= 100:
			say "[BigNameDesc of M] makes an obscene gesture at you.[big he of M] seems like [he of M] really needs a way to entertain [himself of M]...";
		otherwise if the refractory-period of M < 20 and R + the refractory-period of M >= 20:
			say "[one of][BigNameDesc of M] stares at you, licking [his of M] lips[or][BigNameDesc of M][']s eyes linger on your body[at random]. It seems like [he of M][']s about to turn on you...".

To say SatisfiedFlav of (M - an imp):
	if M is in the location of the player and M is not dying:
		let U be 0;
		if M is unfriendly, now U is 1; [This check can cause a line break]
		decrease the imp-rudeness of M by 2;
		say "[BigNameDesc of M] [if U is 1]seems satisfied, and stops acting hostile[otherwise]seems very satisfied[end if].";
		interest M.

Part 2 - Perception

[imps should only be aggressive if you're stuck by the demoness]
To compute perception of (M - an imp):
	say "[BigNameDesc of M] notices you[if the player is sluttily dressed].[otherwise]![end if]"; [The output for clothing humiliation takes place within the 'sluttily dressed' check.]
	if M is unfriendly:
		say "[BigNameDesc of M] grins evilly. Looks like [he of M]'s turned on you!";
		anger M;
	otherwise:
		say "[BigNameDesc of M] eyes you mischievously.".

Part 3 - Combat

Section 1 - Attack

To compute (M - an imp) protecting against (X - a monster):
	if the player is prone and the player is immobile and the player is in danger:
		if the refractory-period of M < the refractory-time of M - 30: [After they've just used you, they don't do it again immediately.]
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
	if the reaction of the player is 0:
		let N be the number of infernal monsters penetrating a body part;
		if the class of the player is priestess, decrease N by 1;
		if a random number between -1 and N < 1, decide no;
	decide yes.

Section 2 - Damage

Definition: an imp is damageable:
	if the imp-rudeness of it >= the difficulty of it, decide yes;
	decide no.

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
	say "[BigNameDesc of M] leaps away from you, sticking out [his of M] tongue as a portal opens up behind [him of M]. [big he of M] cackles tauntingly as [he of M] jumps through and portal closes after [him of M]. It seems that [he of M][']s got fed up of being your follower, and is gone for good.".

Definition: an imp is auto-banish-loot-dropping: decide no. [Will it automatically drop jewellery when it is banished in this manner?]

Imp ends here.
