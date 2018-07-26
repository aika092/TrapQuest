Orgasms by Player begins here.

[TODO: orgasm count variables]

[!<refactoryPeriod:Integer>*

REQUIRES COMMENTING

*!]
refactoryperiod is a number that varies.

[!<PersonIsAbleToOrgasm>+

REQUIRES COMMENTING

+!]
Definition: a person is able to orgasm:
	if player-fucking is 1, decide yes;
	if the player is unable to orgasm so soon, decide no;
	if the class of the player is royal slave:
		if there is a monster grabbing the player or there is a monster penetrating a body part:[a reason why the player might want to masturbate during a blowjob]
			if the reaction of the player is 0, decide no;
			decide yes;
		decide no;
	decide yes.

[!<AnallyOrgasmShamefully>+

REQUIRES COMMENTING

+!]
To anally orgasm shamefully:
	if the player is not able to orgasm:
		if the class of the player is royal slave, say "You feel the beginnings of a [one of][or]familiar [stopping]wave of pleasure [one of]rippling[or]surging[as decreasingly likely outcomes] through your [if the player is male]prostate[otherwise]asshole[end if], only to have it just...stop. [line break][variable custom style][one of]I was pretty sure I was about to cum... maybe it has something to do with this [ShortDesc of a random worn headgear]?[or]Again? Am I not allowed to cum or something? Maybe it's because I'm not acting like a slave...[stopping][roman type][line break]";
		otherwise say "You would cum again but your body is so exhausted from its most recent climax that the wave of pleasure is weaker and less fulfilling than a full orgasm.";
		arouse the sex addiction of the player * 10;
		follow the drilldo orgasm resolution rule;
	otherwise if the player is male:
		say "[one of][if there is a worn asshole tattoo]You feel your [random asshole tattoo worn by the player] spark with delight as your extremely sensitive[otherwise]Your[end if] prostate [if soreness of asshole > 8]can't take the extreme stimulation any more[otherwise]feels incredible[end if]!  You feel a wave of pleasure and your [if the player is upright]knees buckle. [otherwise]muscles tense then relax. [end if][bold type]You've just had your first anal orgasm!  [or][bold type]Your prostate feels overly sensitive as that familiar wave of pleasure rushes through you and you have another anal orgasm. [stopping][roman type][line break]";
		orgasm;
		punish shameful male orgasm;
	otherwise:
		say "[one of][if there is a worn asshole tattoo]You feel your [random asshole tattoo worn by the player] spark with delight as your extremely sensitive[otherwise]Your[end if] [asshole] [if soreness of asshole > 8]can't take the extreme stimulation any more[otherwise]feels incredible[end if]!  You feel a wave of pleasure and your [if the player is upright]knees buckle[otherwise]muscles tense then relax[end if] as your [vagina] [if the openness of vagina < 6]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if]. [bold type]You've just had your first anal orgasm[if tg fetish >= 1] as a girl[end if]![roman type][line break][or][bold type]Your [asshole] feels overly sensitive as that familiar wave of pleasure rushes through you and you have another anal orgasm. [roman type]You feel a wave of pleasure and your muscles tense then relax as your [vagina] [if the openness of vagina < 6]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if].[stopping]";
		say "[if the player is not disgraced][line break][first custom style]What a shameful way to orgasm...[otherwise if the player is not shameless][line break][variable custom style]Cumming like that is so humiliating. So why do I find myself just getting turned on even more?[otherwise][line break][second custom style]I came just from my butthole... I'm so dirty![end if][roman type][line break]";
		orgasm;
		SexAddictUp 1 + the number of monsters penetrating vagina;
	if refactoryperiod > 0:
		if there is a camera trap in the location of the player and there is an off-stage shameful orgasm poster:
			let P be a random off-stage shameful orgasm poster;
			say "[FlashFlav of a random camera trap in the location of the player]";
			say "It captured the moment as you began orgasming.";
			say "[one of][line break][variable custom style][if the player is not disgraced]Oh shit. I bet I didn't look very dignified right then.[otherwise]Now everyone will know that I came from my [asshole].[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][line break][second custom style]I bet that pic looks FILTHY![end if][stopping][roman type][line break]";
			set up P;
		severeHumiliate;
		progress quest of anal-orgasm-quest;
		if newbie tips is 1, say shameful tip;
		if the player is upright, try kneeling;
	otherwise:
		now refactoryperiod is 2.[The player couldn't cum, but we still increase it so the game does not immediately try again.]

[!<VaginallyOrgasmShamefully>+

REQUIRES COMMENTING

+!]
To vaginally orgasm shamefully:
	if the player is not able to orgasm:
		if the class of the player is royal slave, say "You feel the beginnings of a [one of][or]familiar [stopping] wave of pleasure [one of]rippling[or]surging[as decreasingly likely outcomes] through your [vagina], only to have it just...stop. [line break][variable custom style][one of]I was pretty sure I was about to cum...does it have something to do with this [ShortDesc of a random worn headgear]?[or]Again? Am I not allowed to cum or something? Maybe they want me to act more like a slave first...[stopping][roman type][line break]";
		otherwise say "You would cum again but your body is so exhausted from its most recent climax that the wave of pleasure is weaker and less fulfilling than a full orgasm.";
		arouse the sex addiction of the player * 10;
		follow the drilldo orgasm resolution rule;
	otherwise if the player is male: [normal shameful male orgasm]
		say "You feel a wave of pleasure and your [if the player is upright]knees buckle[otherwise]muscles tense then relax[end if] as you [one of]cum hard[or]climax[or]orgasm[at random].[roman type][line break]";
		orgasm;
		punish shameful male orgasm;
	otherwise:
		say "[one of]Your [vagina] can't take the stimulation any more!  You feel a wave of pleasure and your [if the player is upright or the class of the player is living sex doll]knees buckle[otherwise]muscles tense then relax[end if] as your [vagina] [if the latex-transformation of the player > 3]sends sparks flying through your mind[otherwise if the openness of vagina < 4]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if]. [bold type]You've just had your first vaginal orgasm![roman type][line break][or][bold type]Your [vagina] pulsates as that familiar wave of pleasure rushes through you and you have another orgasm. [roman type]You feel a wave of pleasure[if the latex-transformation of the player <= 3] and your muscles tense then relax[end if] as your [vagina] [if the latex-transformation of the player > 3]sends sparks flying through your mind[otherwise if the openness of vagina < 4]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if].[stopping]";
		if interracial fetish is 1 and there is a dark skinned male monster penetrating vagina, say "[one of][if the sex addiction of the player < 6][line break][first custom style]I can't believe I just came from a black [manly-penis]...[otherwise if the raw sex addiction of the player < 11][line break][variable custom style]I just came all over a black [manly-penis]... I didn't know it would feel so good.[otherwise][line break][second custom style]Oh my god, black [manly-penis] is the best. I want more![end if][or][if the sex addiction of the player < 6][first custom style]What is it about black [manly-penis] that makes me cum, even when I don't want to?![otherwise if the sex addiction of the player < 9][first custom style]If this keeps happening, I know I won't be able to stop myself from genuinely enjoying getting railed by big black [manly-penis]. [second custom style]I might be enjoying it already...[otherwise if the sex addiction of the player < 12][variable custom style]I only cum this hard when it's a black [manly-penis]![otherwise][second custom style]That felt so FUCKING good! I need even more black [manly-penis]![end if][stopping][roman type][line break]";
		otherwise say "[one of][if the sex addiction of the player < 8][line break][first custom style]I can't believe I just came...[otherwise if the raw sex addiction of the player < 13][line break][variable custom style]I just came... I didn't know it would feel so good.[otherwise][line break][second custom style]That felt sooooo good... I want more![end if][or][if the sex addiction of the player < 8][first custom style]I have to find a way to stop orgasming like this...[otherwise if the sex addiction of the player < 13][first custom style]If this keeps happening, I know I'll get addicted. [second custom style]I might be already...[otherwise][second custom style]That felt so FUCKING good! More![end if][stopping][roman type][line break]";
		SexAddictUp 1 + the number of monsters penetrating asshole;
		orgasm;
		strongHumiliate;
		if newbie tips is 1, say shameful tip;
		if the player is upright, try kneeling.

[!<BreastsOrgasmShamefully>+

REQUIRES COMMENTING

+!]
To breasts orgasm shamefully:
	say "[bold type]You feel a wave of pleasure and your [if the player is upright]knees buckle. [otherwise if the player is male]muscles tense then relax. [otherwise if the openness of vagina < 6]as your [vagina] dribbles a small amount of girlcum. [otherwise]as your [vagina] squirts out girlcum. [end if][one of]You've just had your first orgasm from getting tit-fucked!  [or]Your orgasm triggered by your sensitive breasts leaves you panting. [stopping][roman type][line break]";
	orgasm;
	if the player is male, punish shameful male orgasm;
	severeHumiliate;
	if newbie tips is 1, say shameful tip;
	if the player is upright, try kneeling.

[!<PunishShamefulOrgasm>+

REQUIRES COMMENTING

+!]
To punish shameful orgasm:
	if the player is male, punish shameful male orgasm;
	otherwise punish shameful female orgasm.

[!<PunishShamefulMaleOrgasm>+

REQUIRES COMMENTING

+!]
To punish shameful male orgasm:
	if TG fetish is 3 and the size of penis <= min penis size:
		say DefaultSexChangeFlav;
		say "The fact that this is happening as you shudder through yet another anal orgasm [if the player is not a pervert]merely rubs salt in the wound[otherwise]makes the process feel immensely submissive and pleasurable[end if], as if confirming that you deserve this.";
		sexchange the player;
	otherwise if the number of worn chastity cages is 0 or a random number between 1 and 5 > 3:
		if the size of penis > min penis size and the latex-transformation of the player <= 3:
			PenisDown 1;
			say "The shameful nature of your orgasm makes your manhood [Shrink] into a [ShortDesc of penis].";
		SexAddictUp 1;
	otherwise:
		say "[one of]You expected to feel a bit light-headed after, but you don't. [or][stopping]Your [random worn chastity cage] pulses softly.".

[!<PunishShamefulFemaleOrgasm>+

REQUIRES COMMENTING

+!]
To punish shameful female orgasm:
	SexAddictUp 1.

[!<ShamefulTip>+

REQUIRES COMMENTING

+!]
To say shameful tip:
	say "[one of][item style]Newbie tip: You had a shameful orgasm!  These will increase sex addiction and humiliation[if the player is male] and reduce the size of your penis[end if]. In other words, avoid them!  You can masturbate to reduce your arousal, which makes it less likely you'll orgasm from something else.[roman type][line break][or][stopping]".

[!<orgasmFatigueEffectsRules:Rulebook>*

REQUIRES COMMENTING

*!]
The orgasm fatigue effects rules is a rulebook.

[!<ejaculationRules:Rulebook>*

REQUIRES COMMENTING

*!]
The ejaculation rules is a rulebook.

[!<orgasmResolutionRule:Rulebook>*

REQUIRES COMMENTING

*!]
The orgasm resolution rules is a rulebook.

[!<OrgasmQuietly>+

REQUIRES COMMENTING

+!]
To orgasm quietly:
	now player-fucking is 1;
	orgasm;
	now player-fucking is 0.

[!<Orgasm>+

REQUIRES COMMENTING

+!]
To orgasm:
	increase refactoryperiod by 3;
	follow the ejaculation rules;	
	follow the orgasm fatigue effects rules;
	follow the orgasm resolution rules.

[!<ThePlayerBecomesFatiguedFromOrgasmingRule>+

REQUIRES COMMENTING

+!]
This is the player becomes fatigued from orgasming rule:
	if the fatigue of the player < the tired threshold of the player / 2:
		say "Your powerful orgasm leaves you feeling a bit tired.";
		now the fatigue of the player is the tired threshold of the player / 2.
The player becomes fatigued from orgasming rule is listed last in the orgasm fatigue effects rules.

[!<ThePlayerBecomesVeryFatiguedFromOrgasmingWithAPlugRule>+

REQUIRES COMMENTING

+!]
This is the player becomes very fatigued from orgasming with a plug rule:
	let P be a random sex toy penetrating asshole;
	if the fatigue of the player < the tired threshold of the player and P is sex toy:
		say "Your [asshole] powerfully spasms around your [ShortDesc of P], increasing the intensity of your orgasm and leaving you feeling fatigued.";
		now the fatigue of the player is the tired threshold of the player.
The player becomes very fatigued from orgasming with a plug rule is listed first in the orgasm fatigue effects rules.

[!<TheEjaculationHandledSeparatelyForFuckingNPCsRule>+

REQUIRES COMMENTING

+!]
This is the ejaculation handled separately for fucking NPCs rule:
	if player-fucking is not 0, rule fails.
The ejaculation handled separately for fucking NPCs rule is listed first in the ejaculation rules.

[!<TheLatexDollsdoNotEjaculateRule>+

REQUIRES COMMENTING

+!]
This is the latex dolls don't ejaculate rule:
	if the latex-transformation of the player >= 3, rule fails.
The latex dolls don't ejaculate rule is listed first in the ejaculation rules.

[!<TheGirlsDoNotJizzSemenRule>+

REQUIRES COMMENTING

+!]
This is the girls don't jizz semen rule:
	if the player is female, rule succeeds.
The girls don't jizz semen rule is listed last in the ejaculation rules.

[!<TheLackOfPenisForEjaculationRule>+

REQUIRES COMMENTING

+!]
This is the lack of penis for ejaculation rule:
	if the size of penis <= 0:
		if the player is male, say "You would have ejaculated, but you no longer have a penis.";
		rule fails.
The lack of penis for ejaculation rule is listed last in the ejaculation rules.

[!<TheCondomOfKingsEjaculationRule>+

REQUIRES COMMENTING

+!]
This is the condom of kings ejaculation rule:
	let C be a random worn condom of kings;
	if C is condom of kings:
		say "[one of]Your [ShortDesc of penis] [if the size of penis < 3]dribbles a small amount of [semen][otherwise if the size of penis < 5]shoots warm [semen][otherwise if the size of penis < 9]shoots several strings of warm [semen][otherwise]fires rope after rope of potent [semen][end if] into your [printed name of a random condom of kings worn by the player].[or]Your [ShortDesc of penis] [if the size of penis < 3]twitches pitifully as it fills your[otherwise if the size of penis < 6]throbs powerfully as it fills your[otherwise]flexes as it floods your[end if] [printed name of a random condom of kings worn by the player] with a [if the size of penis < 3]feeble[otherwise if the size of penis < 5]warm[otherwise if the size of penis < 8]thick, creamy[otherwise]massive[end if] load[at random].";
		now C is creamfilled;
		if C is not cursed:
			say "The opening of the condom suddenly tightens, as if reacting to the shamefulness of your orgasm! You watch[if the bimbo of the player < 5] with horror[otherwise], intrigued[end if] as a wave of bright pink spreads out from the emblem on the tip, overriding the aura of pride and manliness with overpowering shame. It's cursed!";
			now C is cursed;
		rule succeeds.
The condom of kings ejaculation rule is listed last in the ejaculation rules.

[!<TheChastityCageEjaculationRule>+

REQUIRES COMMENTING

+!]
This is the chastity cage ejaculation rule:
	if there is a worn chastity cage:
		let P be a random bottom level pee protection clothing worn by the player;
		say "[one of]Your [player-penis] quivers pitifully as a stream of white [semen] dribbles out of your plastic chastity cage[or]Your [player-penis] twitches as hot [semen] leaks out of the hole in your plastic chastity cage[or]You can feel your [player-penis] twitching as warm [semen] streams out of your little plastic cage[in random order], [if P is clothing]and into your [printed name of P]. You shiver as your load trickles down your balls and over your skin.[otherwise]and into a shameful pool on the ground.[end if]";[this only happens from anal orgasms, so we can call it shameful!]
		compute ejaculation;
		rule succeeds.
The chastity cage ejaculation rule is listed last in the ejaculation rules.

[!<TheEjaculationIntoClothingRule>+

REQUIRES COMMENTING

+!]
This is the ejaculation into clothing rule:
	let P be a random bottom level pee protection clothing worn by the player;
	if P is clothing:
		if penis is exposed, say "[one of]Your [ShortDesc of penis] [if the size of penis < 3]quivers excitedly[otherwise]flexes powerfully[end if] as it [if the size of penis < 3]dribbles its small amount of [semen] into[otherwise if the size of penis < 6]splurts warm [semen] into[otherwise if the size of penis < 9]drools its thick, creamy load into[otherwise]floods your [printed name of a random bottom level pee protection clothing worn by the player] with its massive, creamy load.[end if][if the size of penis < 8] your [printed name of P].[end if][or]Your [ShortDesc of penis] [if the size of penis < 3]quivers from within your[otherwise]strains against your[end if] [printed name of a random bottom level pee protection clothing worn by the player], wiping your mind with pleasure [if P is fluid immune]as it coats the tough inner [clothing-material of P][otherwise]as it darkens the [clothing-material of P][end if] with a [if the size of penis < 3]pitifully tiny load[otherwise if the size of penis < 5]warm, gooey load[otherwise if the size of penis < 8]thick, creamy load[otherwise]massive load[end if] , which [if P is fluid immune]slowly rolls down your balls.[otherwise]soaks the inner fabric[end if].[or]Your [Shortdesc of penis] spurts a [if the size of penis < 3]feeble load[otherwise if the size of penis < 5]warm load[otherwise if the size of penis < 9]thick load[otherwise]massive, creamy load[end if] into your [printed name of P], [if P is fluid immune] which hits the inner [clothing-material of P] and splashes back against your skin. You tremble as the slimy [semen] rolls down your shaft.[otherwise], which creates a noticeable dark spot in the [clothing-material of P] as it soaks up your [semen].[end if][in random order]";
		otherwise say "[one of]Your [ShortDesc of penis] [if the size of penis < 3]quivers excitedly[otherwise]flexes powerfully[end if] as [if the size of penis < 3]a small amount of [semen] slowly dribbles from the tip, collecting in your[otherwise if the size of penis < 6]splurts warm [semen] against your belly, which slowly rolls down into your[otherwise if the size of penis < 9]drools its thick, creamy load into[otherwise]shoots several thick, creamy ropes against your belly, which ooze slowly into your[end if] [printed name of a random bottom level pee protection clothing worn by the player][or]Your [ShortDesc of penis] [if the size of penis < 3]quivers pitifully[otherwise]strains against your[end if] [printed name of a random bottom level pee protection clothing worn by the player], wiping your mind with pleasure [if P is fluid immune]as it drips into the [clothing-material of P][otherwise]as it darkens the [clothing-material of P][end if] with a [if the size of penis < 3]pitifully tiny load[otherwise if the size of penis < 5]warm, gooey load[otherwise if the size of penis < 8]thick, creamy load[otherwise]massive load[end if] as it slowly rolls down your belly and [if P is fluid immune]dribbles down your balls.[otherwise]soaks the upper part of the fabric[end if].[or]Your [Shortdesc of penis] spurts a [if the size of penis < 3]feeble load[otherwise if the size of penis < 5]warm load[otherwise if the size of penis < 9]thick load[otherwise]massive, creamy load[end if] against your belly, which slowly rolls down into your [printed name of P], [if P is fluid immune] which doesn't absorb any of the [semen] at all, allowing you to feel your slimy load dribble slowly over your skin.[otherwise], which creates a noticeable dark spot in the [clothing-material of P] as it soaks up your [semen].[end if][in random order]";
		compute ejaculation;
		rule succeeds.
The ejaculation into clothing rule is listed last in the ejaculation rules.

[!<TheDefaultEjaculationRule>+

REQUIRES COMMENTING

+!]
This is the default ejaculation rule:
	say "[one of]Your [ShortDesc of penis] [if the size of penis < 3]dribbles its small amount of [semen][otherwise if the size of penis < 5]ejaculates[otherwise]shoots string after string of potent [semen][end if] onto the ground.[or]Your [ShortDesc of penis] [if the size of penis < 3]quivers as it dribbles a tiny amount of [semen][otherwise if the size of penis < 6]throbs gently as it shoots a couple small strings of [semen][otherwise if the size of penis < 9]throbs powerfully as it shoots several stings of potent [semen][otherwise]pulses with primal power as it fires several long ropes of [semen][end if] into a[if the size of penis > 8]n impressive[end if] puddle on the ground.[at random]";
	compute ejaculation;
	rule succeeds.
The default ejaculation rule is listed last in the ejaculation rules.

[!<ComputeEjaculation>+

REQUIRES COMMENTING

+!]
To compute ejaculation:
	let P be a random bottom level pee protection clothing worn by the player;
	if P is clothing:
		let A be the size of penis;
		if penis is exposed and A > 1:
			CumBellyUp 1;
			cumsoak (A - 1) on P;
		otherwise:
			cumsoak A on P;
	otherwise:
		SemenPuddleUp the size of penis.		

[!<TheOrgasmStopsMasturbationResolutionRule>+

REQUIRES COMMENTING

+!]
This is the orgasm stops masturbation resolution rule:
	if wanking is 1, now came-while-wanking is 1.
The orgasm stops masturbation resolution rule is listed last in the orgasm resolution rules.

[!<TheLivingBeltOfSturdinessOrgasmResolutionRule>+

REQUIRES COMMENTING

+!]
This is the living belt of sturdiness orgasm resolution rule:
	if the living belt of sturdiness is thrusting and the buildup of the living belt of sturdiness > 0:
		if the living belt of sturdiness is not penetrating vagina: [must be penetrating something if it's thrusting, so it must be in the butt!]
			say "The metallic tentacle in your [asshole] [one of]seems to react[or]reacts[stopping] to your orgasm, pulsing rhythmically as it thrusts with ever increasing intensity. You can feel it [if the player is male]kneading your prostate, milking you for every last drop of cum[otherwise]twisting around inside you, eking out every last bit of pleasure[end if] as the tendril begins to bulge, and the loop around your waist grows progressively tighter and hotter against your skin. [one of][if the raw sex addiction of the player < 7][line break][first custom style]Wait, what[']s happen-[otherwise if the raw sex addiction of the player < 14][line break][variable custom style]Why does it feel like it's going to-[otherwise][line break][second custom style]Mmm, the only thing missing is a big fat load right up my-[end if][or][if the raw sex addiction of the player < 7][first custom style]Oh no! It's going to-[otherwise if the raw sex addiction of the player < 14][variable custom style]It's going to cum insi-[otherwise][second custom style]I can feel it! It's gonna cum insi-[end if][stopping][roman type][line break]The tentacle jams itself in as far as it can go, throbbing violently as it [if the buildup of the living belt of sturdiness < 3]fills your [asshole] with several spurts of alien [semen][otherwise if the buildup of the living belt of sturdiness < 6]unleashes several powerful spurts of alien [semen] directly into your [asshole][otherwise]torrents an obscene amount of alien [semen] directly into your [asshole][end if]!";
		otherwise if the living belt of sturdiness is not penetrating asshole:
			say "The metallic tentacle in your [vagina] [one of]seems to react[or]reacts[stopping] to your orgasm, pulsing rhythmically as it thrusts with ever increasing intensity. You can feel it twisting around inside you, massaging your g-spot and jostling your clit as the tentacle begins to bulge, and the loop around your waist grows progressively tighter, and hotter, against your skin. [one of][if the raw sex addiction of the player < 7][line break][first custom style]Wait, what[']s happen-[otherwise if the raw sex addiction of the player < 14][line break][variable custom style]Why does it feel like it's going to-[otherwise][line break][second custom style]Mmm, the only thing missing is a fat wad in my-[end if][or][if the raw sex addiction of the player < 7][first custom style]Oh no! It's going to-[otherwise if the raw sex addiction of the player < 14][variable custom style]It's going to cum insi-[otherwise][second custom style]I can feel it! It's gonna creampie-[end if][stopping][roman type][line break]The tentacle jams itself in as far as it can go, throbbing violently as it [if the buildup of the living belt of sturdiness < 3]fills your [vagina] with several spurts of alien [semen][otherwise if the buildup of the living belt of sturdiness < 6]unleashes several powerful spurts of alien [semen] directly into your [vagina][otherwise]torrents an obscene amount of alien [semen] directly into your [vagina][end if]!";[could probably be differentiated a bit more.]
		otherwise:
			say "The metallic tentacles in your holes [one of]seem to react[or]react[stopping] to your orgasm, pulsing rhythmically as begin picking up speed. You can feel them twisting around inside you, elongating and intensifying your orgasm as a fast moving wave of warmth spreads from the loop around your waist and travels toward the tentacles buried in your [vagina] and [asshole]. [one of][if the raw sex addiction of the player < 7][line break][first custom style]Wait, what[']s happen-[otherwise if the raw sex addiction of the player < 14][line break][variable custom style]Why does it feel like they[']re about to-[otherwise][line break][second custom style]Mmm, the only thing missing is a double-[end if][or][if the raw sex addiction of the player < 7][first custom style]Oh no! They[']re about to-[otherwise if the raw sex addiction of the player < 14][variable custom style]They[']re going to cum insi-[otherwise][second custom style]I can feel it! They[']re gonna cum insi-[end if][stopping][roman type][line break]Your eyes go wide as they jam themselves in as far as they can go, throbbing violently as [if the buildup of the living belt of sturdiness < 3]they take turns filling your holes with several spurts of alien [semen][otherwise if the buildup of the living belt of sturdiness < 6]take turns filling your [vagina] and [asshole] with torrents of creamy alien [semen][otherwise]take turns flooding your holes with obscene amounts of alien [semen][end if]!";[On women, the first half of the semen prioritises assholes and the second half priorities vagina. But if the belt is only penetrating one hole (the other was occupied at the moment of penetration) then it gets the full amount. Could probably be coded simpler than this.]
		let S be the buildup of the living belt of sturdiness / 2;
		now the buildup of the living belt of sturdiness is 0; [stops infinite loops in rare circumstances where PussyFill causes ruin vagina times causes another orgasm]
		if the living belt of sturdiness is penetrating asshole, AssFill S;
		otherwise PussyFill S;
		now S is the buildup of the living belt of sturdiness - S;
		if the player is male:
			AssFill S;
		otherwise if the living belt of sturdiness is penetrating vagina:
			PussyFill S;
		otherwise:
			AssFill S;
		say "The [printed name of the living belt of sturdiness], apparently satisfied, stops thrusting but remains inside you.";
	now the buildup of the living belt of sturdiness is 0. [This should always happen even if for some reason the belt didn't ejaculate]
The living belt of sturdiness orgasm resolution rule is listed first in the orgasm resolution rules.

This is the monster orgasm cutscene rule:
	let M be a random monster penetrating a fuckhole;
	if M is monster and image cutscenes is 1, get orgasm image of M in a random fuckhole penetrated by M.
The monster orgasm cutscene rule is listed last in the orgasm resolution rules.

[!<TheDrillOrgasmCutsceneRule>+

REQUIRES COMMENTING

+!]
This is the drill orgasm cutscene rule:
	if there is a drill pole trap penetrating a fuckhole and image cutscenes is 1, display figure of pole cutscene 4.
The drill orgasm cutscene rule is listed last in the orgasm resolution rules.

[!<TheUpdateArousalOrgasmResolutionRule>+

REQUIRES COMMENTING

+!]
This is the update arousal orgasm resolution rule:
	now the arousal of the player is minimum arousal;
	update arousal. [This prevents us from updating the player next turn saying 'did you know, you're less horny now!']
The update arousal orgasm resolution rule is listed last in the orgasm resolution rules.

[!<TheDiaperOrgasmResolutionRule>+

REQUIRES COMMENTING

+!]
This is the diaper orgasm resolution rule:
	let D be a random worn total protection diaper;
	if D is diaper:
		if D is dry and D is not messed, DiaperAddictUp 1;
		otherwise DiaperAddictUp 2.		
The diaper orgasm resolution rule is listed last in the orgasm resolution rules.

[!<TheGirlsPeeWhenTheyOrgasmRule>+

REQUIRES COMMENTING

+!]
This is the girls pee when they orgasm rule:
	if the player is female and (the bladder of the player > 6 or the player is in WoodsBoss01) and player-urinating is 0:
		if the bladder of the player is 0, now the bladder of the player is 2;
		now delayed urination is 1;
		say "As you cum, you [if the player is bursting]can't help but let go of your bladder too[otherwise]find yourself peeing at the same time[end if]!";
		try urinating.
The girls pee when they orgasm rule is listed last in the orgasm resolution rules.

[!<TheHentaiOrgasmResolutionRule>+

REQUIRES COMMENTING

+!]
This is the hentai orgasm resolution rule:
	if the milk volume of breasts > 4:[###maybe have this influenced by breast sensitivity]
		let N be a random worn nipple covering clothing;
		let M be the milk volume of breasts / 5;
		say "Your nipples start to spontaneously squirt milk into [if N is clothing]your [printed name of N][otherwise]a puddle on the floor.[end if][line break][variable custom style][if the bimbo of the player < 8]Gross![otherwise]Uh-oh![end if][roman type]";
		say "[one of][line break][variable custom style]Good grief! That was a most peculiar feeling![roman type][line break][or][line break][variable custom style]Wow, that was a strange coincidence! I hope.[roman type][line break][or]Once again, you seem to squirt milk [i]as[/i] you climaxed. [line break][variable custom style]Huh! I thought that only happened in Hentai fiction![roman type][line break]I hope that's not going to happen [i]every[/i] time![or]Oh, man... again? You feel your face turn red.[line break][variable custom style] I think my boobs have been turned into helplessly-squirting milk dispensers when I come![roman type][line break]Surely, not?  Please?[or]Oh, no! [line break][variable custom style]It's true: each time I come, my boobies squirt milky goodness![roman type][line break]Worse, you can't help but privately thrill at the feel of the thin fluid squirting from your so-sensitive and swollen nips![or][line break][variable custom style]Oooh, yesss! Squirt, squirt! So good! [roman type][line break]Uh... you feel your face flush pink in shame at just how much you enjoyed that sensation![or][line break][variable custom style]Here we go again - yum![roman type][line break]So I ejaculate milk from my boobies now? So what? Is it really such a big deal?[roman type] You feel the warm milk running wetly down your swollen boobs.[or][line break][variable custom style]I love my milky boobs.[roman type][line break][stopping][roman type][line break]";
		moderateHumiliate;
		if N is clothing, milksoak M on N;
		otherwise milkpuddleup M;
		decrease the milk volume of breasts by M.
The hentai orgasm resolution rule is listed last in the orgasm resolution rules.

[!<TheChastityCageOrgasmRule>+

REQUIRES COMMENTING

+!]
This is the chastity cage orgasm resolution rule:
	if there is a worn chastity cage:
		if a random worn chastity cage is not cursed:
			say "You feel your [random worn chastity cage] become cursed[one of][or] again[stopping]!";
			now a random worn chastity cage is cursed.
The chastity cage orgasm resolution rule is listed last in the orgasm resolution rules.

[!<TheDrilldoOrgasmResolutionRule>+

REQUIRES COMMENTING

+!]
This is the drilldo orgasm resolution rule:
	if there is a dildo trap penetrating a fuckhole:
		repeat with R running through dildo traps penetrating a fuckhole:
			dislodge R;
			compute orgasm resolution of R;
		check immobility;
		try kneeling.
The drilldo orgasm resolution rule is listed last in the orgasm resolution rules.

[!<ThePlayerIsTooDelicateToNotGetSubmissiveResolutionRule>+

REQUIRES COMMENTING

+!]
This is the player is too delicate to not get submissive resolution rule:
	if the delicateness of the player - 4 > the sex addiction of the player:
		SexAddictUp 1.
The player is too delicate to not get submissive resolution rule is listed last in the orgasm resolution rules.

[!<TheGameEndingOrgasmRule>+

REQUIRES COMMENTING

+!]
This is the game ending orgasm rule:
	if the raw intelligence of the player is 0 and infinite mode is 0 and diaper quest is 0:
		say "The game would normally end here, but you can keep playing if you really want. Keep playing? [yesnolink] ";
		if the player consents:
			say "Fine, keep playing to your heart's content.";
			now infinite mode is 1;
		otherwise:
			say "That final orgasm did it - you are now almost completely mindless. You cannot think about anything except sex; in fact you can barely think of any words with more than one syllable. [line break][second custom style]'Fuck.... Me....'[roman type][line break]You are perfectly content with your new state of mind, as if it's the only thing you've ever wanted.[line break][second custom style]'We'd better pull her out of the game, looks like she's completely lost it. Any more and we might risk damaging her basic speech and memory functions.'[roman type][line break]";
			now earnings is 99999;
			end the story finally saying "You have lost - you are now a brainless bimbo.".
The game ending orgasm rule is listed last in the orgasm resolution rules.

[!<ThePortalAppeasementResolutionRule>+

This function is called whenever the player has an orgasm, and increases the cooldown of any summoning portal nearby.

+!]
This is the portal appeasement resolution rule:
	if summoning-circle is in the location of the player and summoning-circle is active:
		ChargeUp a summoning-circle by 100;
		say "A wave of relief seems to pass through the immediate area as you ride out the last of your orgasm. The [printed name of summoning-circle] seems to have lost a rather significant amount of energy![line break]";
	if giant-statue is in the location of the player and giant-statue is active:
		ChargeUp giant-statue by 80;
		say "A low rumble, almost like a sigh, passes through the immediate area as you ride out the last of your orgasm. The [printed name of giant-statue] seems to be pumping out a lot less energy![line break]".
The portal appeasement resolution rule is listed in the orgasm resolution rules.

[!<infiniteMode:Integer>*

REQUIRES COMMENTING

*!]
infinite mode is a number that varies.

[!<DecideWhichNumberIsTheAnalSensitivityInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the anal sensitivity influence of (C - a thing):
	decide on 0.


[!<DecideWhichNumberIsTheSensitivityOfAsshole>+

REQUIRES COMMENTING

+!]
To decide which number is the sensitivity of (F - asshole):
	let S be 0;
	repeat with T running through worn things:
		increase S by the anal sensitivity influence of T;
	if the player is a sissy, increase S by 3;
	if the soreness of asshole > 5, increase S by 1;
	if the soreness of asshole > 8, increase S by 1;
	decide on S.

[!<DecideWhichNumberIsTheVaginalSensitivityInfluenceOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the vaginal sensitivity influence of (C - a thing):
	decide on 0.

[!<DecideWhichNumberIsTheSensitivityOfVagina>+

REQUIRES COMMENTING

+!]
To decide which number is the sensitivity of (F - vagina):
	let S be 0;
	repeat with C running through worn things:
		increase S by the vaginal sensitivity influence of C;
	if the soreness of vagina > 5, increase S by 1;
	if the soreness of vagina > 8, increase S by 1;
	decide on S.

[!<PersonIsUnableToOrgasmSoSoon>+

REQUIRES COMMENTING

+!]
Definition: a person is unable to orgasm so soon:
	if the player is not able to get horny or the arousal of the player - 500 <= minimum arousal or refactoryperiod > 0, decide yes;
	decide no.

[!<BreastsIsPushedOverTheEdge>+

REQUIRES COMMENTING

+!]
Definition: breasts (called B) is pushed over the edge:
	if the player is unable to orgasm so soon or the player is not a bit horny, decide no;
	if the sensitivity of breasts >= 8:
		if arousal of the player + ((the sensitivity of breasts - 7) * 1000) > a random number between 7000 and 12000, decide yes;
	decide no.

[!<FuckholeIsPushedOverTheEdge>+

REQUIRES COMMENTING

+!]
Definition: a fuckhole (called F) is pushed over the edge:
	if the player is unable to orgasm so soon or the player is not a bit horny, decide no; [No more than one orgasm in a round, and arousal needs to build at least a bit before the next one!]
	let N be -1;
	increase N by the stimulation of a random thing penetrating F on F / 4;
	increase N by the sensitivity of F;
	increase N by the enjoyment of F;
	if N < 0, now N is 0;
	now N is the square root of N; [some logarithmic scaling; 0>0, 1-3>1, 4-8>2, 9-15>3]
	let A be 4 - fuckhole arousal; [A decreases as arousal increases. NB at 9000 arousal (extremely horny) A becomes -1, allowing for orgasms at any value of N.]
	if N <= A, decide no; [enjoyment is too low to trigger an orgasm from this level of arousal]
	[Now we know that N is greater than A]
	let O1 be a random number between N and A;
	let O2 be a random number between N and A;
	let O3 be a random number between N and A;
	if debuginfo > 0, say "[input-style]Orgasm check: stimulation ([N]) & [one of]arousal-based [or][stopping]orgasm resistance ([A]); RNG([A]~[N]) = [O1] and RNG([A]~[N]) = [O2] must both be above minimum value of [A].[roman type][line break]";
	if O1 > A and O2 > A[ and O3 > A], decide yes; [With O2: If N = A+1 then orgasm chance is 1 in 4; if N = A+2 then orgasm chance is 4 in 9; if N = A+3 then orgasm chance is 9 in 16 which is over 55%;   With O3: If N = A+1 then orgasm chance is 1 in 8; if N = A+2 then orgasm chance is 8 in 27 (just under 1 in 3); if N = A+3 then orgasm chance is 27 in 64 which is over 40%]
	decide no.

[!<DecideWhichNumberIsFuckholeArousal>+

REQUIRES COMMENTING

+!]
To decide which number is fuckhole arousal:
	decide on (the arousal of the player + 1000) / 2000.

[!<DecideWhichNumberIsTheEnjoymentOfFuckhole>+

REQUIRES COMMENTING

+!]
To decide which number is the enjoyment of (F - a fuckhole):
	if diaper quest is 1:
		check immobility;
		if the player is immobile, decide on 4;
		decide on 2;
	let A be 0;
	if there is a worn focus band, decrease A by (a random number between 0 and 3) + a random number between 0 and 3;
	if the reaction of the player is 0 and the player is not friendly-fucking, decrease A by 2;
	if interracial fetish is 1:
		repeat with M running through monsters penetrating a fuckhole:
			if M is dark skinned:
				increase A by 1;
				if the player is queen of spades, increase A by 1;
			otherwise:
				if the player is queen of spades, decrease A by 2;
				if M is penetrating vagina, decrease A by the number of worn black hole tattoos;
	if A < 0, decide on 0;
	decide on A.


Orgasms ends here.

