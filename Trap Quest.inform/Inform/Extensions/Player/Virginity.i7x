Virginity by Player begins here.

Definition: yourself is totalvirgin:
	if the analvirgin of the player is 1 and the oralvirgin of the player is 1 and (the penetrativevirgin of the player is 1 or the player is not possessing a penis) and (the vaginalvirgin of the player is 1 or the player is not possessing a vagina), decide yes;
	decide no.

[!<Player>@<penetrativeVirgin:Integer>*

Have they had dominant penetrative sex?

*@!]
The player has a number called penetrativevirgin. The penetrativevirgin of the player is usually 1.

[!<Player>@<vaginalVirgin:Integer>*

Has something alive fucked their vagina?

*@!]
The player has a number called vaginalvirgin. The vaginalvirgin of the player is usually 1.

vaginalvirginity-taker is a thing that varies. vaginalvirginity-taker is the throne.
penisvirginity-taker is a thing that varies. penisvirginity-taker is the throne.
analvirginity-taker is a thing that varies. analvirginity-taker is the throne.
oralvirginity-taker is a thing that varies. oralvirginity-taker is the throne.

[!<Player>@<analVirgin:Integer>*

Has something alive fucked their asshole?

*@!]
The player has a number called analvirgin. The analvirgin of the player is usually 1.

[!<Player>@<oralVirgin:Integer>*

Has something alive fucked their mouth?

*@!]
The player has a number called oralvirgin. The oralvirgin of the player is usually 1.

[!<Player>@<virginBonus:Integer>*

If the player puts value in their virginity this starts to tick upwards. If they then lose their virginity it goes negative. It affects all three main stats.

*@!]
The player has a number called virgin bonus. The virgin bonus of the player is usually 0.

[!<virginityValued:Integer>*

Does the player care about their virginity?

*!]
virginity-valued is a number that varies. virginity-valued is 1.

Part 1 - Virginity Loss

[!<ComputeVirginityLoss>+

Triggered when the player loses vaginal virginity.

+!]
To compute virginity loss:
	now vaginalvirginity-taker is a random live virginity taking thing penetrating vagina;
	now the vaginalvirgin of the player is 0;
	say "[variable custom style][if the class of the player is virgin warrior and the class of the player is priestess]Aaah! Sorry sisters, I have failed you...[otherwise if the player is not a pervert]Oh god... so this is how I will forever remember losing my virginity...[otherwise if the player is not a nympho]I guess it was about time someone broke me in...[otherwise]I've given my virginity to a stranger. There's no going back from that! *giggle*[end if][roman type][line break]";
	let flav-said be 0;
	now the tattoo-title of virgin void tattoo is "virgin void";
	if virgin void tattoo is worn:
		say "A big red 'VOID' is suddenly magically stamped over the tattoo of the word 'virgin' on your belly!";
		focus-consider virgin void tattoo;
	if the virgin bonus of the player > 0:
		say "[if the player is not a pervert]You feel pure despair and[otherwise if the player is not a nympho]You shudder involuntarily as[otherwise]Perverse arousal mixed with a vague sense of self-disgust consumes you as[end if] you feel some of your strength and speed leave you. As that feeling of purity and promise fully leaves your soul, it feels as if it has left you in an even worse state than when you first began to feel it.";
		now flav-said is 1;
		now the virgin bonus of the player is -1;
		if virgin void tattoo is drawable and there is a worn tattoo:
			summon virgin void tattoo;
			say "Your skin stings as a tattoo is suddenly seared into your skin on the right hand side of your torso! You take a look: ";
			try examining virgin void tattoo;
	if the number of worn purity clothing > 0, say "Your aura of purity gone, your pure items lose their desire to travel with you.";
	repeat with H running through worn clothing:
		compute virginity-loss of H;
	if the class of the player is priestess:
		say "Your holy aura seems to diminish with the loss of your purity, enhancing the shame you are feeling. A strange new feeling of purpose passes through you, and you groan as your [vagina] loosens painfully.[line break][variable custom style]I guess all I'm good for is sex now...[roman type][line break]";
		if the openness of vagina < 10, increase the openness of vagina by 1;
		decrease the virgin bonus of the player by 1;
	progress quest of vaginal-virginity-quest;
	if the openness of vagina < 10, increase the openness of vagina by 1.

Part 2 - Virgin Reward

To virginreward:
	let H be a random worn headgear;
	if plate warrior chestpiece is worn and flower hairclip is blessed: [No more increases after you get this.]
		do nothing;
	otherwise if the player-class is the succubus:
		say "[bold type]You can't imagine why you ever cared so much about purity, and you feel dark energy from the stone pressed into your flesh corrupt the power within you![roman type][line break]";
		now virginity-valued is 0;
	otherwise if the player is soulless:
		say "[bold type]You begin to feel a brief flash of pride at having retained your virginity, but even as you do it sucks away into the emptiness within your heart.[roman type][line break]";[This prevents you gaining virgin bonuses while your soul is gone.]
	otherwise if H is clothing and the quest of H is virginity-retention-quest:
		say "[bold type]You are extremely proud of yourself for still having managed to retain your virginity! [one of]You[or]Once again you[stopping] feel [if background-pure is 1]yourself gaining real, physical power just from the happiness you feel from[otherwise][one of]elated from[or]motivated by[or]happy for[at random][end if] having retained your purity.[roman type][line break]";
		progress quest of virginity-retention-quest;
		if the class of the player is magical girl, MagicPowerUp 2;
		increase the virgin bonus of the player by background-pure;
	otherwise if flower hairclip is actually summonable or (heart hairpin is worn and the class of the player is not schoolgirl) or runic headband is worn:
		if background-pure > 0 or sword-of-purity is worn:
			if heart hairpin is worn:
				say "[bold type]You resolve to yourself that there is no way you are going to let this creepy game take away your virginity.[roman type][line break]";
				transform heart hairpin into flower hairclip;
			otherwise if runic headband is worn:
				say "[bold type]You resolve to yourself that there is no way you are going to let this creepy game take away your virginity.[roman type][line break]";
				transform runic headband into flower hairclip;
				now flower hairclip is cursed;
				AltarUniqueReward of flower hairclip;
			otherwise:
				say "[bold type]You resolve to yourself that there is no way you are going to let this creepy game take away your virginity. Somehow, the game seems to sense this and summons a hairclip with a pure white rose onto your head![roman type][line break]";
				summon flower hairclip cursed;
			let H be a random worn headgear;
			now the quest of H is virginity-retention-quest;
		otherwise:
			say "[bold type]You pause for a moment and reflect on the fact that you've [one of]managed to go this whole game without getting fucked in the [vagina] by anything that could be considered living. Regardless of the other experiences it has put you through, this game has not taken your virginity![roman type] You feel that by placing a lot of value on your virginity, you could gain some internal strength to help you fight your way through this world. But the negative impact of losing your virginity in the future would likely be more severe. Would you like to make the mental decision to care deeply about your virginity? [or]Still haven't lost your virginity. [roman type]Maybe now is the time to make the mental decision to care deeply about retaining it? [stopping]";
			if the player is consenting:
				if heart hairpin is worn:
					transform heart hairpin into flower hairclip;
				otherwise if runic headband is worn:
					transform runic headband into flower hairclip;
					now flower hairclip is cursed;
					AltarUniqueReward of flower hairclip;
				otherwise:
					say "As if it can read your thoughts, the game summons a hairclip with a pure white rose onto your head!";
					summon flower hairclip cursed;
				now virginity-valued is 1;
				let H be a random worn headgear;
				now the quest of H is virginity-retention-quest;
			otherwise:
				say "You decide that [one of]in this game, placing all of your hopes on your virginity might not be the most sensible idea. At the very least, this[or]this still[stopping] isn't the right moment.".

[!<TheVirginbonusPussySlutRule>+

The higher the virgin bonus gets, the more desirable it gets for NPCs to take your virginity.

+!]
This is the virginbonus pussy slut rule:
	if virginity-valued > 0, increase the desirability of vagina by virginity-count of virginity-retention-quest + (the virgin bonus of the player / 2).
The virginbonus pussy slut rule is listed in the pussy slut eligibility rules.

Part - Virgin Punish (Sissification)

Definition: yourself is a sissy:
	if the player is gendered male and (the class of the player is sissyclass or the number of worn sissifying clothing > 1), decide yes;
	decide no.

To virginpunish:
	if virgincursed > 0 and transGender is 0 and the player is not in a predicament room and the player is gendered male:
		let S be a random off-stage sissifying transformation-eligible actually summonable clothing;
		if S is clothing and virgincursed < 3:
			say VirginFlav;
			say "[bold type]As if reacting to your feelings, you suddenly feel a [ShortDesc of S] appear on you![line break][variable custom style][one of]Uh-oh...[or]This is making me feel like a pathetic [sissy slut]...[or]Even more [sissy] clothing?![stopping][roman type][line break]";
			summon S cursed with quest;
			now the raw-magic-modifier of S is the number of worn sissifying clothing - 2;
			announce sissification;
		otherwise if the mystical size of penis > min penis size:
			say VirginFlav;
			SpecialPenisDown 1; [#LXorDD]
		otherwise if the player is possessing a penis and the number of worn chastity bonds is 0:
			say VirginFlav;
			let C be a random off-stage fetish appropriate chastity cage;
			if C is actually summonable:
				say "[bold type]As if reacting to your feelings, you suddenly feel a [ShortDesc of C] [bold type]appear on you![line break][variable custom style]How am I ever supposed to lose my virginity now? I'm stuck like this forever...[roman type][line break]";
				summon C locked;
		otherwise if the raw sex addiction of the player < 15 and the raw sex addiction of the player < the raw delicateness of the player:
			say VirginFlav;
			if the raw anal sex addiction of the player <= the raw sex addiction of the player / 2:
				say "You start to daydream about [manly-penis] filling your [asshole] and smashing your [one of]prostate[or]sissy button[stopping]. [line break][variable custom style][if the bimbo of the player < 10]Maybe I'll try anal again? It's not so bad and it made me cum really hard last time...[otherwise]I should find some [manly-penis] to pound my [asshole] till my [sissy-penis] squirts, I don't deserve to cum like a boy![end if][roman type][line break]";
				AnalSexAddictUp 1;
			otherwise:
				say "You start to daydream about all kinds of humiliating and kinky sexual scenarios.[line break][variable custom style][if the bimbo of the player < 8]I guess if a chick is hot enough I would let her peg me[otherwise if the bimbo of the player < 12]You know all this submissive sex isn't so bad, [manly-penis] gets me so hot and bothered thinking about it[otherwise]I belong on my knees with my [sissy-penis] ignored, my [asshole] plugged, and my mouth full of [manly-penis][end if].[roman type][line break]";
				SexAddictUp 1;
		otherwise if the raw delicateness of the player < 15:
			say VirginFlav;
			say "You suddenly feel less able to stand up to the monsters you meet in this game.[line break][variable custom style]Maybe it's easier if I just [if the bimbo of the player < 10]do whatever I'm told![otherwise]fuck and suck till I'm a mindless whore and my [sissy-penis] is forgotten![end if][roman type][line break]";
			DelicateUp 1.

To announce sissification:
	if the player is a sissy, say "[one of]You [if the bimbo of the player < 9]reluctantly [end if]admit to yourself that you are now officially a sissy. You become acutely aware that 'sissy' is now your official title. You realise you feel more comfortable [bold type]beg[roman type]ging[bold type] for mercy[roman type] now.[or][stopping]".

To check virginity with (M - a monster):
	if the penetrativevirgin of the player is 1 and player-fuckchoice is FUCK-PENETRATION and the fuck-get of the player + the anal-get of the player > 0:[anal AND vaginal count]
		if virgincursed is 1:
			if player-fucking is DOMINANT-NONE or player-fucking is DOMINANT-SHAMEFUL:[only 'true' dominant sex can reverse your virgin curse]
				say "[variable custom style][one of]Wait...does that count?[or]No way that counts...[or]I'm gonna be a virgin forever...[then at random][roman type][line break]";
			otherwise:
				virginremovecurse;
				now the penetrativevirgin of the player is 0;
				now penisvirginity-taker is M;
		otherwise:
			say "[variable custom style]After that, nobody can call me a virgin. Pretty sure.[roman type][line break]";
			now the penetrativevirgin of the player is 0;
			now penisvirginity-taker is M.

To check realtime virginity with (M - a monster):
	if the penetrativevirgin of the player is 1 and M is penis-virginity taking:
		if virgincursed is 1:[only 'true' dominant sex can reverse your virgin curse]
			say "[variable custom style][one of]Wait...does that count?[or]No way that counts...[or]I'm gonna be a virgin forever...[then at random][roman type][line break]";
		otherwise:
			say "[variable custom style]After that, nobody can call me a virgin. Pretty sure.[roman type][line break]";
			now the penetrativevirgin of the player is 0;
			now penisvirginity-taker is M.

To virginremovecurse:
	say "[variable custom style]I did it! I lost my virginity![roman type][line break]You feel as if a curse has been lifted!";
	now virgincursed is 0.

To say VirginFlav:
	if virgincursed < 3:
		say "[bold type]Another wave of [if the player is not broken]shame[otherwise]the curse[end if] flows through you as you [one of][or]once again [stopping]find yourself thinking about your embarrassing virginity.[roman type][line break]";
	otherwise:
		say "[bold type]Another wave of arousal flows through your mind you as you're reminded about your [if the player is not broken]embarrassing virginity.[otherwise]status as a virgin submissive slut.[end if][roman type][line break]";


Part 3 - Virginity Taking Things

[!<ThingIsVirginityTaking>+

This allows us to flag some stuff (e.g. female monsters) as not actually taking virginity.

+!]
Definition: a thing is virginity taking: decide yes.

Definition: A thing is live: decide no.

[!<YourselfIsLiveFucked>+

Is the player being penetrated by something alive?

+!]
Definition: yourself is live fucked:
	if there is a live thing penetrating a body part, decide yes;
	decide no.

To compute virginity-loss of (T - a thing):
	if T is worn: [special things like the sinful priestess effect could have already modified the item]
		say "Your [printed name of T] drops to the ground.";
		now T is in the location of the player;
		dislodge T.

To compute virginity-loss of (T - a clothing):
	if T is purity and T is worn: [special things like the sinful priestess effect could have already modified the item]
		say "Your [printed name of T] drops to the ground.";
		now T is in the location of the player;
		dislodge T.

Virginity ends here.
