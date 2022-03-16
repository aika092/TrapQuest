Orgasms by Player begins here.

[TODO: orgasm count variables]

refractoryperiod is a number that varies.
orgasm-count is a number that varies. orgasm-count is 0.
anal-orgasms is a number that varies. anal-orgasms is 0.
vaginal-orgasms is a number that varies. vaginal-orgasms is 0.

Definition: a person is able to orgasm:
	[if player-fucking is not DOMINANT-NONE and refractoryperiod < 1, decide yes;]
	if player-fucking is not DOMINANT-NONE, decide yes;
	if the class of the player is royal slave:
		if there is a monster grabbing the player or there is a monster penetrating a body part:[a reason why the player might want to masturbate during a blowjob]
			if the reaction of the player is 0, decide no;
			decide yes;
		decide no;
	decide yes.

[!<SayProstateOrgasmFlav>+
Displays text when a male player has a shameful anal orgasm

+!]
To say ProstateOrgasmFlav:
	let M be a random monster penetrating asshole;
	if M is monster, compute prostate orgasm hijack of M;
	otherwise say DefaultProstateOrgasmFlav.

[!<ComputeProstateOrgasmHijackOfMonster>+

Handles any special code to be run, if any, when a monster is penetrating the player during a prostate orgasm

@param <Monster>:<M> The monster penetrating the player's ass

+!]
To compute prostate orgasm hijack of (M - a monster):
	say DefaultProstateOrgasmFlav.

[!<SayDefaultProstateOrgasmFlav>+

Default text that displays when a male player has a shameful anal orgasm

+!]
To say DefaultProstateOrgasmFlav:
	say "[one of][if there is a worn asshole-tattoo]You feel your [random asshole-tattoo worn by the player] spark with delight as your extremely sensitive[otherwise]Your[end if] prostate [if soreness of asshole > 8]can't take the extreme stimulation any more[otherwise]feels incredible[end if]! [if the player is unable to orgasm so soon]Despite your lack of arousal you[otherwise]You[end if] feel a wave of pleasure and your [if the player is upright]knees buckle. [otherwise]muscles tense then relax. [end if][bold type]You've just had your first anal orgasm![or][bold type]Your prostate feels overly sensitive as that familiar wave of pleasure rushes through you and you have another anal orgasm. [stopping][roman type][line break]".

[!<SayAnalOrgasmFlav>+

Displays text when the player experiences a shameful anal orgasm

+!]
To say AnalOrgasmFlav:
	let M be a random monster penetrating asshole;
	if M is monster, compute anal orgasm hijack of M;
	otherwise say DefaultAnalOrgasmFlav.

[!<ComputeAnalOrgasmHijackOfMonster>+

Handles any special code to be run, if any, when a monster is penetrating the player during a shameful anal orgasm

@param <Monster>:<M> The monster penetrating the player's ass

+!]
To compute anal orgasm hijack of (M - a monster):
	say DefaultAnalOrgasmFlav.

[!<SayDefaultAnalOrgasmFlav>+

Default text that displays when a female player has a shameful anal orgasm

+!]
To say DefaultAnalOrgasmFlav:
	say "[one of][if there is a worn asshole-tattoo]You feel your [random asshole-tattoo worn by the player] spark with delight as your extremely sensitive[otherwise]Your[end if] [asshole] [if soreness of asshole > 8]can't take the extreme stimulation any more[otherwise]feels incredible[end if]! [if the player is unable to orgasm so soon]Despite your lack of arousal you[otherwise]You[end if] feel a wave of pleasure and your [if the player is upright]knees buckle[otherwise]muscles tense then relax[end if] as your [vagina] [if the openness of vagina < 6]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if]. [bold type]You've just had your first anal orgasm[if tg fetish >= 1] as a girl[end if]![roman type][line break][or][bold type]Your [asshole] feels overly sensitive as that familiar wave of pleasure rushes through you and you have another anal orgasm. [roman type]You feel a wave of pleasure and your muscles tense then relax as your [vagina] [if the openness of vagina < 6]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if].[stopping]".

To anally orgasm shamefully:
	if the player is not able to orgasm:
		if the class of the player is royal slave, say "You feel the beginnings of a [one of][or]familiar [stopping]wave of pleasure [one of]rippling[or]surging[as decreasingly likely outcomes] through your [if the player is sexed male]prostate[otherwise]asshole[end if], only to have it just... stop.[line break][variable custom style][one of]I was pretty sure I was about to cum... maybe it has something to do with this [ShortDesc of a random worn headgear]?[or]Again? Am I not allowed to cum or something? Maybe it's because I'm not acting like a slave...[stopping][roman type][line break]";
		otherwise say "[if refractoryperiod > 0]You would cum again but your body is so exhausted from its most recent climax that the wave of pleasure[otherwise]You feel a wave of pleasure that[end if] is weaker and less fulfilling than a full orgasm.";
		arouse the sex addiction of the player * 10;
		follow the drilldo orgasm resolution rule;
	otherwise if the player is sexed male:
		say ProstateOrgasmFlav;
		orgasm;
		punish shameful male orgasm;
		increase anal-orgasms by 1;
	otherwise:
		say AnalOrgasmFlav;
		say "[if the player is not disgraced][line break][first custom style]What a shameful way to orgasm...[otherwise if the player is not shameless][line break][variable custom style]Cumming like that is so humiliating. So why do I find myself just getting turned on even more?[otherwise][line break][second custom style]I came just from my butthole... I'm so dirty![end if][roman type][line break]";
		orgasm;
		slowSexAddictUp 1 + the number of live things penetrating vagina;
		if diaper quest is 1, progress quest of asshole-presenting-quest;
		increase anal-orgasms by 1;
	if refractoryperiod > 0:
		if there is a camera trap in the location of the player and there is an off-stage shameful orgasm poster:
			let P be a random off-stage shameful orgasm poster;
			say "[FlashFlav of a random camera trap in the location of the player]";
			say "It captured the moment as you began orgasming.";
			say "[one of][line break][variable custom style][if the player is not disgraced]Oh shit. I bet I didn't look very dignified right then.[otherwise]Now everyone will know that I came from my [asshole].[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][line break][second custom style]I bet that pic looks FILTHY![end if][stopping][roman type][line break]";
			set up P;
		[severeHumiliate;]
		progress quest of anal-orgasm-quest;
		if diaper quest is 0 and (the raw anal sex addiction of the player < 4 or there is a live thing penetrating asshole), AnalSexAddictUp 1;
		if newbie tips is 1, say shameful tip;
		if the player is upright, try kneeling;
	otherwise:
		now refractoryperiod is 2.[The player couldn't cum, but we still increase it so the game does not immediately try again.]

[!<SayVaginalOrgasmFlav>+

Displays text when the player experiences a shameful vaginal orgasm

+!]
To say VaginalOrgasmFlav:
	let M be a random monster penetrating vagina;
	if M is monster, compute vaginal orgasm hijack of M;
	otherwise say DefaultVaginalOrgasmFlav.

[!<ComputeVaginalOrgasmHijackOfMonster>+

Handles any special code to be run, if any, when a monster is penetrating the player during a shameful vaginal orgasm

@param <Monster>:<M> The monster penetrating the player's pussy

+!]
To compute vaginal orgasm hijack of (M - a monster):
	say DefaultVaginalOrgasmFlav.

[!<SayDefaultVaginalOrgasmFlav>+

Default text that displays when the player has a shameful vaginal orgasm

+!]
To say DefaultVaginalOrgasmFlav:
	say "[one of]Your [vagina] can't take the stimulation any more! You feel a wave of pleasure and your [if the player is upright or the class of the player is living sex doll]knees buckle[otherwise]muscles tense then relax[end if] as your [vagina] [if the latex-transformation of the player > 3]sends sparks flying through your mind[otherwise if the openness of vagina < 4]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if]. [bold type]You've just had your first vaginal orgasm![roman type][line break][or][bold type]Your [vagina] pulsates as that familiar wave of pleasure rushes through you and you have another orgasm. [roman type]You feel a wave of pleasure[if the latex-transformation of the player <= 3] and your muscles tense then relax[end if] as your [vagina] [if the latex-transformation of the player > 3]sends sparks flying through your mind[otherwise if the openness of vagina < 4]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if].[stopping]".

To vaginally orgasm shamefully:
	if the player is not able to orgasm:
		if the class of the player is royal slave, say "You feel the beginnings of a [one of][or]familiar [stopping] wave of pleasure [one of]rippling[or]surging[as decreasingly likely outcomes] through your [vagina], only to have it just... stop.[line break][variable custom style][one of]I was pretty sure I was about to cum... does it have something to do with this [ShortDesc of a random worn headgear]?[or]Again? Am I not allowed to cum or something? Maybe they want me to act more like a slave first...[stopping][roman type][line break]";
		otherwise say "[if refractoryperiod > 0]You would cum again but your body is so exhausted from its most recent climax that the wave of pleasure[otherwise]You feel a wave of pleasure that[end if] is weaker and less fulfilling than a full orgasm.";
		arouse the sex addiction of the player * 10;
		follow the drilldo orgasm resolution rule;
	otherwise if the player is male:
		penis orgasm shamefully;[Unless the player is futa, we treat vaginal orgasms as penis-based.]
	otherwise if the player is possessing a vagina:
		increase vaginal-orgasms by 1;
		say VaginalOrgasmFlav;
		if interracial fetish is 1 and there is a dark skinned male monster penetrating vagina, say "[one of][if the sex addiction of the player < 6][line break][first custom style]I can't believe I just came from a black [manly-penis]...[otherwise if the raw sex addiction of the player < 11][line break][variable custom style]I just came all over a black [manly-penis]... I didn't know it would feel so good.[otherwise][line break][second custom style]Oh my god, black [manly-penis] is the best. I want more![end if][or][if the sex addiction of the player < 6][first custom style]What is it about black [manly-penis] that makes me cum, even when I don't want to?![otherwise if the sex addiction of the player < 9][first custom style]If this keeps happening, I know I won't be able to stop myself from genuinely enjoying getting railed by big black [manly-penis]. [second custom style]I might be enjoying it already...[otherwise if the sex addiction of the player < 12][variable custom style]I only cum this hard when it's a black [manly-penis]![otherwise][second custom style]That felt so FUCKING good! I need even more black [manly-penis]![end if][stopping][roman type][line break]";
		otherwise say "[one of][if the sex addiction of the player < 8][line break][first custom style]I can't believe I just came...[otherwise if the raw sex addiction of the player < 13][line break][variable custom style]I just came... I didn't know it would feel so good.[otherwise][line break][second custom style]That felt sooooo good... I want more![end if][or][if the sex addiction of the player < 8][first custom style]I have to find a way to stop orgasming like this...[otherwise if the sex addiction of the player < 13][first custom style]If this keeps happening, I know I'll get addicted. [second custom style]I might be already...[otherwise][second custom style]That felt so FUCKING good! More![end if][stopping][roman type][line break]";
		orgasm;
		slowSexAddictUp 1 + the number of live things penetrating asshole;
		if diaper quest is 1, progress quest of asshole-presenting-quest;
		if diaper quest is 0 and (the raw vaginal sex addiction of the player < 4 or there is a live thing penetrating vagina), VaginalSexAddictUp 1;
		[strongHumiliate;]
		if newbie tips is 1, say shameful tip;
		if the player is upright, try kneeling.

To breasts orgasm shamefully:
	say "[bold type]You feel a wave of pleasure and your [if the player is upright]knees buckle. [otherwise if the player is not possessing a vagina]muscles tense then relax. [otherwise if the openness of vagina < 6]as your [vagina] dribbles a small amount of girlcum. [otherwise]as your [vagina] squirts out girlcum. [end if][one of]You've just had your first orgasm from your breasts! [or]Your orgasm triggered by your sensitive breasts leaves you panting. [stopping][roman type][line break]";
	orgasm;
	if the player is male, punish shameful male orgasm;
	TitfuckAddictUp 1;
	if newbie tips is 1, say shameful tip;
	if the player is upright, try kneeling.

[Triggers from femdom/sissydom where the player is on the bottom.]
To penis orgasm shamefully:
	say "[if the player is unable to orgasm so soon]Despite your lack of arousal you[otherwise]You[end if] feel a wave of pleasure and your [if the player is upright]knees buckle[otherwise]muscles tense then relax[end if] as you [one of]cum hard[or]climax[or]orgasm[at random].[roman type][line break]";
	orgasm;
	[punish shameful male orgasm; For now, this doesn't reduce penis size or trigger TG]
	if there is a live thing penetrating penis, PenisObedienceUp 1;
	slowSexAddictUp 1 + the number of live things penetrating face;
	[if newbie tips is 1, say shameful tip;]
	if the player is upright, try kneeling.

To punish shameful male orgasm:
	if shrink tg > 1 and the size of penis <= min penis size:
		say DefaultSexChangeFlav;
		say "The fact that this is happening as you shudder through yet another shameful orgasm [if the player is not a pervert]merely rubs salt in the wound[otherwise]makes the process feel immensely submissive and pleasurable[end if], as if confirming that you deserve this.";
		sexchange the player;
	otherwise if the number of worn chastity cages is 0 or a random number between 1 and 5 > 3:
		if the mystical size of penis > min penis size and the latex-transformation of the player <= 3:
			SilentlySpecialPenisDown 1; [#LXorDD]
			say "The shameful nature of your orgasm makes [one of]your feel less masculine. You look down and see that you now have[or]your [player-penis] shrink into[stopping] a [mystical ShortDesc of penis].";
		slowSexAddictUp 1 + the number of live things penetrating face;
	otherwise:
		say "[one of]You expected to feel a bit light-headed after, but you don't. [or][stopping]Your [random worn chastity cage] pulses softly.";
	if diaper quest is 1, progress quest of asshole-presenting-quest;
	if the player is gendered male and the penetrativevirgin of the player is 1 and pink sissy bow is off-stage and the player is not in a predicament room and pink sissy bow is actually summonable and (asshole is actually occupied or there is worn sissifying clothing):
		summon pink sissy bow cursed;
		say "Suddenly, a [MediumDesc of pink sissy bow] appears in your hair! Clearly you've been acting too much like a sissy...".

To say shameful tip:
	say "[one of][newbie style]Newbie tip: You had a shameful orgasm! These will increase sex addiction[if the player is possessing a penis] and reduce the size of your penis[end if]. In other words, avoid them! You can masturbate to reduce your arousal, which makes it less likely you'll orgasm from something else.[roman type][line break][or][stopping]".

The orgasm fatigue effects rules is a rulebook.

The ejaculation rules is a rulebook.

The orgasm resolution rules is a rulebook.

To orgasm quietly:
	now player-fucking is DOMINANT-DOMINANT;
	orgasm;
	now player-fucking is DOMINANT-NONE.

totalOrgasmCount is a number that varies.

To orgasm:
	increase orgasm-count by 1;
	increase refractoryperiod by 3;
	[if the player is possessing a penis, now the rawness of penis is 0;]
	follow the ejaculation rules;
	follow the orgasm fatigue effects rules;
	follow the orgasm resolution rules;
	increase totalOrgasmCount by 1;
	now the delayed arousal of the player is 0.

This is the player becomes fatigued from orgasming rule:
	if the fatigue of the player < the tired threshold of the player / 2:
		say "Your powerful orgasm leaves you feeling a bit tired.";
		now the fatigue of the player is the tired threshold of the player / 2.
The player becomes fatigued from orgasming rule is listed last in the orgasm fatigue effects rules.

This is the player becomes very fatigued from orgasming with a plug rule:
	let P be a random sex toy penetrating asshole;
	if the fatigue of the player < the tired threshold of the player and P is sex toy:
		say "Your [asshole] powerfully spasms around your [ShortDesc of P], increasing the intensity of your orgasm and leaving you feeling fatigued.";
		now the fatigue of the player is the tired threshold of the player.
The player becomes very fatigued from orgasming with a plug rule is listed first in the orgasm fatigue effects rules.

This is the ejaculation handled separately for fucking NPCs rule:
	if player-fucking is not DOMINANT-NONE and player-fucker is not thighs, rule fails.
The ejaculation handled separately for fucking NPCs rule is listed first in the ejaculation rules.

This is the latex dolls don't ejaculate rule:
	if the latex-transformation of the player >= 5, rule fails. [#LXorDD: Allow them to ejaculate until they can also no longer eat or drink or pee.]
The latex dolls don't ejaculate rule is listed first in the ejaculation rules.

This is the girls don't jizz semen rule:
	if the player is not possessing a penis:
		unless players-detached-dick is somewhere-here: [#LXorDD: NB latexness rule has already been checked, as this one is last.]
			rule succeeds.
The girls don't jizz semen rule is listed last in the ejaculation rules.

This is the lack of penis for ejaculation rule:
	unless the player is somehow possessing a penis: [#LXorDD: detached dicks can ejaculate.]
		if the player is sexed male, say "You would have ejaculated, but you no longer have a penis.";
		rule fails.
The lack of penis for ejaculation rule is listed last in the ejaculation rules.

This is the condom of kings ejaculation rule:
	let C be a random worn condom of kings;
	if C is condom of kings:
		let A be the semen load of the player;
		say "[one of]Your [mystical ShortDesc of penis] [if A < 3]dribbles a small amount of [semen][otherwise if A < 5]shoots warm [semen][otherwise if A < 9]shoots several strings of warm [semen][otherwise]fires rope after rope of potent [semen][end if] into your [printed name of a random condom of kings worn by the player].[or]Your [mystical ShortDesc of penis] [if A < 3]twitches pitifully as it fills your[otherwise if A < 6]throbs powerfully as it fills your[otherwise]flexes as it floods your[end if] [printed name of a random condom of kings worn by the player] with a [if A < 3]feeble[otherwise if A < 5]warm[otherwise if A < 8]thick, creamy[otherwise]massive[end if] load[at random].";
		now C is creamfilled;
		if C is not cursed:
			say "The opening of the condom suddenly tightens, as if reacting to the shamefulness of your orgasm! You watch[if the bimbo of the player < 5] with horror[otherwise], intrigued[end if] as a wave of bright pink spreads out from the emblem on the tip, overriding the aura of pride and manliness with overpowering shame. It's cursed!";
			now C is cursed;
		rule succeeds.
The condom of kings ejaculation rule is listed last in the ejaculation rules.

This is the chastity cage ejaculation rule:
	if there is a worn chastity cage:
		let P be a random bottom level pee protection clothing worn by the player;
		say "[one of]Your [player-penis] quivers pitifully as a stream of white [semen] dribbles out of your plastic chastity cage[or]Your [player-penis] twitches as hot [semen] leaks out of the hole in your plastic chastity cage[or]You can feel your [player-penis] twitching as warm [semen] streams out of your little plastic cage[in random order], [if P is clothing]and into your [printed name of P].[otherwise if the player is possessing a scrotum]You shiver as your load trickles down your balls and over your skin.[otherwise]and into a shameful pool on the ground.[end if]";[this only happens from anal orgasms, so we can call it shameful!]
		compute ejaculation;
		rule succeeds.
The chastity cage ejaculation rule is listed last in the ejaculation rules.

This is the penetration ejaculation rule:
	if there is a live thing penetrating penis:
		let M be a random live thing penetrating penis;
		compute erection orgasm of M;[See the Special Events extension]
		rule succeeds.
The penetration ejaculation rule is listed last in the ejaculation rules.

[It would be harsh for the player to get cum soaked pants before the game ends]
This is the football game ejaculation rule:
	if remote-controlled-vibrator is worn:
		let A be the semen load of the player;
		say "Your [mystical ShortDesc of penis] [if A < 3]quivers excitedly[otherwise]flexes powerfully[end if] as [if A < 3]a small amount of [semen] slowly dribbles from the tip[otherwise if A < 6]splurts warm [semen][otherwise if A < 8]drools its thick, creamy load[otherwise if A < 11]shoots several thick, creamy ropes[otherwise]shoots its almost inhuman load[end if] into [NameDesc of remote-controlled-vibrator].";
		rule succeeds.
The football game ejaculation rule is listed last in the ejaculation rules.

This is the ejaculation into clothing rule:
	let A be the semen load of the player;
	let P be a random bottom level pee protection clothing worn by the player;
	if P is clothing:
		if P is portal-pants:
			say "Your [mystical ShortDesc of penis] [if A < 3]quivers excitedly[otherwise]flexes powerfully[end if] as [if A < 3]a small amount of [semen] slowly dribbles from the tip[otherwise if A < 6]splurts warm [semen][otherwise if A < 8]drools its thick, creamy load[otherwise if A < 11]shoots several thick, creamy ropes[otherwise]shoots its almost inhuman load[end if][run paragraph on]";
		otherwise if P is potentially penis covering:
			say "[one of]Your [mystical ShortDesc of penis] [if A < 3]quivers excitedly[otherwise]flexes powerfully[end if] as it [if A < 3]dribbles its small amount of [semen] into[otherwise if A < 6]splurts warm [semen] into[otherwise if A < 9]drools its thick, creamy load into[otherwise]floods your [printed name of a random bottom level pee protection clothing worn by the player] with its massive, creamy load.[end if][if A < 8] your [printed name of P].[end if][or]Your [mystical ShortDesc of penis] [if A < 3]quivers from within your[otherwise]strains against your[end if] [printed name of a random bottom level pee protection clothing worn by the player], wiping your mind with pleasure [if P is fluid immune]as it coats the tough inner [clothing-material of P][otherwise]as it darkens the [clothing-material of P][end if] with a [if A < 3]pitifully tiny load[otherwise if A < 5]warm, gooey load[otherwise if A < 8]thick, creamy load[otherwise]massive load[end if], which [if P is fluid immune]slowly rolls down your shaft[otherwise]darkening the inner fabric[end if].[or]Your [mystical ShortDesc of penis] spurts a [if A < 3]feeble load[otherwise if A < 5]warm load[otherwise if A < 9]thick load[otherwise]massive, creamy load[end if] into your [printed name of P], [if P is fluid immune] which hits the inner [clothing-material of P] and splashes back against your skin. You tremble as the slimy [semen] rolls down your shaft.[otherwise]which creates a noticeable dark spot in the [clothing-material of P].[end if][in random order]";
		otherwise:
			say "Your [mystical ShortDesc of penis] [if A < 3]quivers excitedly[otherwise]flexes powerfully[end if] as [if A < 3]a small amount of [semen] slowly dribbles[otherwise if A < 6]it drools warm [semen][otherwise if A < 9]it splurts out thick, creamy [semen], which oozes down your belly and [otherwise]shoots out several thick, creamy ropes, which ooze slowly down your belly and[end if] down your shaft, collecting in the waist band of your [printed name of a random bottom level pee protection clothing worn by the player], [if P is fluid immune]which doesn't absorb anything at all, allowing you to feel your slimy load dribble slowly over your skin[otherwise]which creates a noticeable dark spot in the fabric[end if].";
		compute ejaculation;
		rule succeeds.
The ejaculation into clothing rule is listed last in the ejaculation rules.

This is the ejaculation capture rule:
	let A be the semen load of the player;
	let collecting be nothing;
	if diaper quest is 0 and the player is not immobile and the player is not in danger and the player is able to use manual dexterity:
		let LV be the list of carried open topped vessels;
		if the number of entries in LV > 0:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			truncate LV to 9 entries;
			say "Where do you want your [semen] to go?[line break]";
			repeat with V running through LV:
				set next numerical response to "in the [ShortDesc of V][if the doses of V > 0] (You'll lose its current contents of [PotionType of V])[end if]";
			set numerical response 0 to "on the ground";
			compute multiple choice question;
			if player-numerical-response > 0, now collecting is entry player-numerical-response in LV;
	if collecting is bottle:
		say "[one of]Your [mystical ShortDesc of penis] [if A < 3]dribbles its small amount of [semen][otherwise if A < 5]ejaculates[otherwise]shoots string after string of potent [semen][end if] into the [ShortDesc of collecting][or]Your [mystical ShortDesc of penis] [if A < 3]quivers as it dribbles a tiny amount of [semen][otherwise if A < 6]throbs gently as it shoots a couple small strings of [semen][otherwise if A < 9]throbs powerfully as it shoots several stings of potent [semen][otherwise if A < 11]pulses with primal power as it fires several long ropes of [semen][otherwise]pulses with primal power as it jets huge, almost inhuman levels of [semen][end if] into the [ShortDesc of collecting][at random]. The strong smell hits your nostrils as you hold it in your hand, and you feel a [if the semen taste addiction of the player < 7]a weird temptation to taste just a tiny bit, which you quickly push to the back of your mind[otherwise if the semen taste addiction of the player > 13]a strong urge to drink it, which you push to the back of your mind for now[otherwise]bit more comfortable around [semen][end if].";
		SilentlySemenTasteAddictUp 1;
		now the fill-colour of collecting is creamy;
		DoseUp collecting by A / 3;
		now collecting is player-origin;
		if a random number between 1 and 5 is 1:
			if bondage protection < 2 and the player is not immobile and collecting is waitress vessel:
				compute service spill punishment;
			otherwise if there is a worn tattoo and drinkme tattoo is not worn:
				summon drinkme tattoo;
				say "A new tattoo appears on your leg!";
				try examining drinkme tattoo;
				say "[variable custom style]Uh-oh...[roman type][line break]";
			otherwise if collecting is not cursed:
				now collecting is cursed;
				now the curse-ID of collecting is sure;
				say "[bold type]Your [ShortVesselDesc of collecting] is surrounded by a dark glow. It has been cursed![roman type][line break]";
		rule succeeds.
The ejaculation capture rule is listed last in the ejaculation rules.

This is the default ejaculation rule:
	let A be the semen load of the player;
	say "[one of]Your [mystical ShortDesc of penis] [if A < 3]dribbles its small amount of [semen][otherwise if A < 5]ejaculates[otherwise]shoots string after string of potent [semen][end if] onto the ground.[or]Your [mystical ShortDesc of penis] [if A < 3]quivers as it dribbles a tiny amount of [semen][otherwise if A < 6]throbs gently as it shoots a couple small strings of [semen][otherwise if A < 9]throbs powerfully as it shoots several stings of potent [semen][otherwise if A < 11]pulses with primal power as it fires several long ropes of [semen][otherwise]pulses with primal power as it jets out an almost inhuman amount of [semen][end if] into a[if A > 8]n impressive[end if] puddle on the ground.[at random]";
	compute ejaculation;
	rule succeeds.
The default ejaculation rule is listed last in the ejaculation rules.

[#LXorDD: Allow the detached dick to ejaculate.]
To decide which number is the semen load of (Y - yourself):
	let N be the mystical size of penis; [#LXorDD: Allow the detached dick to work, too.]
	if the latex-transformation of the player >= 5, now N is 0; [But you're not supposed to ejaculate if latex TF level 5 or more.]
	if the trophy-mode of ejaculate-trophy is 1, decide on (N * 2) + 7;
	decide on N.

To compute ejaculation:
	let P be a random bottom level pee protection clothing worn by the player;
	if P is clothing:
		let A be the semen load of the player;
		if penis is exposed and A > 1:
			UnannouncedSquirt semen on belly by 1;
			AnnouncedExpel semen on P by (A - 1);
		otherwise:
			AnnouncedExpel semen on P by A;
	otherwise:
		SemenPuddleUp the size of penis;
	compute maybe detached dick ejaculation. [#LXorDD]

This is the penis softens after ejaculation rule:
	if penis is penis-erect:
		if the player is possessing a penis:
			let P be a random bottom level pee protection clothing worn by the player;
			if there is a live thing penetrating penis:[we let the flavour handle that, since there's a chance we might not want the player going soft yet. ]
				do nothing;
			otherwise:
				[#LXorDD Cock rings give a 2/3 chance of staying erect]
				if there is a worn portal-cock-ring and (a random number between 1 and 3 > 1):
					say cock ring effect of portal-cock-ring;
				otherwise if P is clothing and penis is exposed:
					say "Your [mystical ShortDesc of penis] softens enough to slip back into your [ShortDesc of P].";
					now penis is not penis-erect;
				otherwise:
					say "Your [mystical ShortDesc of penis] slowly softens.";
					now penis is not penis-erect;
		otherwise:
			now penis is not penis-erect.
The penis softens after ejaculation rule is listed last in the orgasm resolution rules.

This is the orgasm stops masturbation resolution rule:
	if wanking is 1, now came-while-wanking is 1.
The orgasm stops masturbation resolution rule is listed last in the orgasm resolution rules.

This is the living belt of sturdiness orgasm resolution rule:
	if the living belt of sturdiness is thrusting and the buildup of the living belt of sturdiness > 0:
		if the living belt of sturdiness is not penetrating vagina: [must be penetrating something if it's thrusting, so it must be in the butt!]
			say "The metallic tentacle in your [asshole] [one of]seems to react[or]reacts[stopping] to your orgasm, pulsing rhythmically as it thrusts with ever increasing intensity. You can feel it [if the player is sexed male]kneading your prostate, milking you for every last drop of cum[otherwise]twisting around inside you, eking out every last bit of pleasure[end if] as the tendril begins to bulge, and the loop around your waist grows progressively tighter and hotter against your skin. [one of][if the raw sex addiction of the player < 7][line break][first custom style]Wait, what's happen-[otherwise if the raw sex addiction of the player < 14][line break][variable custom style]Why does it feel like it's going to-[otherwise][line break][second custom style]Mmm, the only thing missing is a big fat load right up my-[end if][or][if the raw sex addiction of the player < 7][first custom style]Oh no! It's going to-[otherwise if the raw sex addiction of the player < 14][variable custom style]It's going to cum insi-[otherwise][second custom style]I can feel it! It's gonna cum insi-[end if][stopping][roman type][line break]The tentacle jams itself in as far as it can go, throbbing violently as it [if the buildup of the living belt of sturdiness < 3]fills your [asshole] with several spurts of alien [semen][otherwise if the buildup of the living belt of sturdiness < 6]unleashes several powerful spurts of alien [semen] directly into your [asshole][otherwise]torrents an obscene amount of alien [semen] directly into your [asshole][end if]!";
		otherwise if the living belt of sturdiness is not penetrating asshole:
			say "The metallic tentacle in your [vagina] [one of]seems to react[or]reacts[stopping] to your orgasm, pulsing rhythmically as it thrusts with ever increasing intensity. You can feel it twisting around inside you, massaging your G-spot and jostling your clit as the tentacle begins to bulge, and the loop around your waist grows progressively tighter, and hotter, against your skin. [one of][if the raw sex addiction of the player < 7][line break][first custom style]Wait, what's happen-[otherwise if the raw sex addiction of the player < 14][line break][variable custom style]Why does it feel like it's going to-[otherwise][line break][second custom style]Mmm, the only thing missing is a fat wad in my-[end if][or][if the raw sex addiction of the player < 7][first custom style]Oh no! It's going to-[otherwise if the raw sex addiction of the player < 14][variable custom style]It's going to cum insi-[otherwise][second custom style]I can feel it! It's gonna creampie-[end if][stopping][roman type][line break]The tentacle jams itself in as far as it can go, throbbing violently as it [if the buildup of the living belt of sturdiness < 3]fills your [vagina] with several spurts of alien [semen][otherwise if the buildup of the living belt of sturdiness < 6]unleashes several powerful spurts of alien [semen] directly into your [vagina][otherwise]torrents an obscene amount of alien [semen] directly into your [vagina][end if]!";[could probably be differentiated a bit more.]
		otherwise:
			say "The metallic tentacles in your holes [one of]seem to react[or]react[stopping] to your orgasm, pulsing rhythmically as begin picking up speed. You can feel them twisting around inside you, elongating and intensifying your orgasm as a fast moving wave of warmth spreads from the loop around your waist and travels toward the tentacles buried in your [vagina] and [asshole]. [one of][if the raw sex addiction of the player < 7][line break][first custom style]Wait, what's happen-[otherwise if the raw sex addiction of the player < 14][line break][variable custom style]Why does it feel like they're about to-[otherwise][line break][second custom style]Mmm, the only thing missing is a double-[end if][or][if the raw sex addiction of the player < 7][first custom style]Oh no! They're about to-[otherwise if the raw sex addiction of the player < 14][variable custom style]They're going to cum insi-[otherwise][second custom style]I can feel it! They're gonna cum insi-[end if][stopping][roman type][line break]Your eyes go wide as they jam themselves in as far as they can go, throbbing violently as [if the buildup of the living belt of sturdiness < 3]they take turns filling your holes with several spurts of alien [semen][otherwise if the buildup of the living belt of sturdiness < 6]take turns filling your [vagina] and [asshole] with torrents of creamy alien [semen][otherwise]take turns flooding your holes with obscene amounts of alien [semen][end if]!";[On women, the first half of the semen prioritises assholes and the second half priorities vagina. But if the belt is only penetrating one hole (the other was occupied at the moment of penetration) then it gets the full amount. Could probably be coded simpler than this.]
		let S be the buildup of the living belt of sturdiness / 2;
		now the buildup of the living belt of sturdiness is 0; [stops infinite loops in rare circumstances where PussyFill causes ruin vagina times causes another orgasm]
		if the living belt of sturdiness is penetrating asshole, AssFill S;
		otherwise PussyFill S;
		now S is the buildup of the living belt of sturdiness - S;
		if the player is not possessing a vagina:
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
	if M is monster and image cutscenes > 0, get orgasm image of M in a random fuckhole penetrated by M.
The monster orgasm cutscene rule is listed last in the orgasm resolution rules.

This is the drill orgasm cutscene rule:
	let D be a random drill pole trap penetrating a fuckhole;
	if D is a thing, cutshow figure of pole cutscene 4 for D.
The drill orgasm cutscene rule is listed last in the orgasm resolution rules.

This is the update arousal orgasm resolution rule:
	now the arousal of the player is minimum arousal;
	update arousal. [This prevents us from updating the player next turn saying 'did you know, you're less horny now!']
The update arousal orgasm resolution rule is listed last in the orgasm resolution rules.

This is the diaper orgasm resolution rule:
	if diaper lover > 0:
		let D be a random worn total protection diaper;
		if the player is grossed out:
			say "You can feel the gross smell in your nostrils being imprinted into your brain...";
			if diaper focus > 0 and the raw sex addiction of the player < the raw diaper addiction of the player:
				SexAddictUp 2;
				DiaperAddictUp 1;
			otherwise:
				SexAddictUp 1;
				DiaperAddictUp 2;
		otherwise if D is diaper:
			if diaper focus > 0 and the raw sex addiction of the player < the raw diaper addiction of the player:
				SexAddictUp 1; [Don't want sex addiction to fall too far behind diaper addiction from orgasms]
			otherwise if D is clean:
				DiaperAddictUp 1;
			otherwise:
				DiaperAddictUp 2;
		otherwise if the number of worn diaper is 0 and the number of changing the player monsters grabbing the player is 0:
			if diaper quest is 1, SexAddictUp 1;
			DiaperAddictDown 1.
The diaper orgasm resolution rule is listed last in the orgasm resolution rules.

This is the BBC orgasm resolution rule:
	if interracial fetish is 1:
		repeat with M running through monsters penetrating a body part:
			if M is dark skinned:
				if a random number between 2 and 12 > the raw bbc addiction of the player, BBCAddictUp 1;
				if there is a worn tattoo:
					let T be a random interracial themed drawable tattoo;
					if T is tattoo:
						say "[bold type]A [T] [bold type]shimmers into existence on your skin![roman type][line break]";
						summon T;
						try examining T;
			otherwise if M is human:
				if a random number between 1 and 4 < the raw bbc addiction of the player, BBCAddictDown 1.
The BBC orgasm resolution rule is listed last in the orgasm resolution rules.

[This is the girls pee when they orgasm rule:
	if the player is possessing a vagina and player-fucking is DOMINANT-NONE and watersports mechanics is 1 and (the bladder of the player > bladder-risky-level or the player is in WoodsBoss01) and player-urinating is 0:
		if the bladder of the player is 0, now the bladder of the player is 2;
		now delayed urination is 2;
		if the player is bursting, now delayed urination is 1;
		say "As you cum, you [if the player is bursting]can't help but let go of your bladder too[otherwise]find yourself peeing at the same time[end if]!";
		try urinating.
The girls pee when they orgasm rule is listed last in the orgasm resolution rules.]

This is the players expel things when they orgasm rule:
	let T be the substituted form of "As you [one of]shudder in [or][cycling]orgasm,";
	check sudden spit and expulsion with reason T.
The players expel things when they orgasm rule is listed last in the orgasm resolution rules.

This is the hentai orgasm resolution rule:
	if the milk volume of breasts > 4 and the player is not in a predicament room and the class of the player is not cowgirl and the class of the player is not royal slave:[###maybe have this influenced by breast sensitivity]
		let N be bottom level lactation cover;
		let M be the milk volume of breasts / 5;
		say "Your nipples start to spontaneously squirt milk into [if N is clothing]your [printed name of N][otherwise]a puddle on the floor[end if].[line break][variable custom style][if the bimbo of the player < 8]Gross![otherwise]Uh-oh![end if][roman type]";
		say "[one of][line break][variable custom style]Good grief! That was a most peculiar feeling![roman type][line break][or][line break][variable custom style]Wow, that was a strange coincidence! I hope.[roman type][line break][or]Once again, you seem to squirt milk [i]as[/i] you climaxed.[line break][variable custom style]Huh! I thought that only happened in hentai fiction![roman type][line break]I hope that's not going to happen [i]every[/i] time![or]Oh, man... again? You feel your face turn red.[line break][variable custom style] I think my boobs have been turned into helplessly-squirting milk dispensers when I come! Surely, not? Please?[roman type][line break][or]Oh, no![line break][variable custom style]It's true: each time I come, my boobies squirt milky goodness![roman type][line break]Worse, you can't help but privately thrill at the feel of the thin fluid squirting from your so-sensitive and swollen nips![or][line break][variable custom style]Oooh, yesss! Squirt, squirt! So good! [roman type][line break]Uh... you feel your face flush pink in shame at just how much you enjoyed that sensation![or][line break][variable custom style]Here we go again - yum![roman type][line break]So I ejaculate milk from my boobies now? So what? Is it really such a big deal?[roman type] You feel the warm milk running wetly down your swollen boobs.[or][line break][variable custom style]I love my milky boobs.[roman type][line break][stopping][roman type][line break]";
		[moderateHumiliate;]
		if N is clothing:
			AnnouncedExpel milk on N by M;
		otherwise:
			milkpuddleup M;
			if M > 2, cutshow figure of lactation orgasm 1 for breasts;
		decrease the milk volume of breasts by M.
The hentai orgasm resolution rule is listed last in the orgasm resolution rules.

This is the ass expulsion from orgasm rule:
	if asshole is not actually occupied and the total squirtable fill of belly > 0 and currently-squirting is 0:
		say "As you cum, you can't help but let go of your anal sphincter!";
		AssSquirt.
The ass expulsion from orgasm rule is listed last in the orgasm resolution rules.

This is the drilldo orgasm resolution rule:
	if there is a dildo trap penetrating a fuckhole:
		repeat with R running through dildo traps penetrating a fuckhole:
			compute orgasm resolution of R;
			dislodge R;
		check immobility;
		try kneeling.
The drilldo orgasm resolution rule is listed last in the orgasm resolution rules.

This is the player is too delicate to not get submissive resolution rule:
	if the delicateness of the player - 4 > the sex addiction of the player:
		slowSexAddictUp 1.
The player is too delicate to not get submissive resolution rule is listed last in the orgasm resolution rules.

This is the game ending orgasm rule:
	if the raw intelligence of the player is 0 and infinite mode is 0 and diaper quest is 0:
		say "The game would normally end here, but you can keep playing if you really want. Keep playing? ";
		if the player is consenting:
			say "Fine, keep playing to your heart's content.";
			now infinite mode is 1;
		otherwise:
			say "That final orgasm did it - you are now almost completely mindless. You cannot think about anything except sex; in fact you can barely think of any words with more than one syllable.[line break][second custom style]'Fuck... Me...'[roman type][line break]You are perfectly content with your new state of mind, as if it's the only thing you've ever wanted.[line break][second custom style]'We'd better pull [him of the player] out of the game, looks like [he of the player]'s completely lost it. Any more and we might risk damaging [his of the player] basic speech and memory functions.'[roman type][line break]";
			now earnings is 99999;
			end the story finally saying "You have lost - you are now a brainless bimbo.".
The game ending orgasm rule is listed last in the orgasm resolution rules.

[!<ThePortalAppeasementResolutionRule>+

This function is called whenever the player has an orgasm, and increases the cooldown of any summoning portal nearby.

+!]
This is the portal appeasement resolution rule:
	let S be a random summoning portal in the location of the player;
	if S is active:
		ChargeDown S by a random number between 100 and 80;
		say "A wave of pressure passes through the immediate area as you ride out the last of your orgasm. The [printed name of S] seems to be pumping out even more energy![line break]".
The portal appeasement resolution rule is listed in the orgasm resolution rules.

infinite mode is a number that varies.

To decide which number is the anal sensitivity influence of (C - a wearthing):
	decide on 0.

To decide which number is the sensitivity of (F - asshole):
	let S be 0;
	repeat with T running through worn wearthings:
		increase S by the anal sensitivity influence of T;
	if the player is a sissy, increase S by 2;
	if the soreness of asshole > 5, increase S by 1;
	if the soreness of asshole > 8, increase S by 1;
	decide on S.

To decide which number is the vaginal sensitivity influence of (C - a wearthing):
	decide on 0.

To decide which number is the sensitivity of (F - a body part):
	decide on 0.

To decide which number is the sensitivity of (F - vagina):
	let S be 0;
	repeat with C running through worn wearthings:
		increase S by the vaginal sensitivity influence of C;
	if the soreness of vagina > 5, increase S by 1;
	if the soreness of vagina > 8, increase S by 1;
	if the labia plumpness of the vagina > 0:
		[#LXorDD: sensitivity is usually small: typically less than 3.]
		if the labia plumpness of the vagina > 1:
			increase S by (the labia plumpness of the vagina - 1);
		otherwise if a random number between 1 and 2 is 1:
			increase S by 1;
	decide on S.

Definition: a person is unable to orgasm so soon rather than able to orgasm so soon:
	if the player is not able to get horny or the arousal of the player - 500 <= minimum arousal or refractoryperiod > 0, decide yes;
	decide no.

Definition: a body part (called B) is pushed over the edge:
	decide no.

Definition: breasts (called B) is pushed over the edge:
	if the player is unable to orgasm so soon or the player is not a bit horny, decide no;
	if the sensitivity of breasts > 10 and arousal of the player > a random number between 7000 and 12000, decide yes;
	decide no.

constant-stimulation-started is a number that varies.
constant-stimulation-latest is a number that varies.
An all later time based rule (this is the check for constant stimulation rule):
	if constant-stimulation-latest is not time-turns, now constant-stimulation-started is 0.

This is the constant stimulation counter reset rule:
	now constant-stimulation-started is 0.
The constant stimulation counter reset rule is listed in the orgasm resolution rules.

Definition: yourself is able to cum hornilessly: [Some things just stimulate you so much that you cum even without being aroused]
	if the latex-transformation of the player > 3, decide no;
	if refractoryperiod > 0, decide no;
	decide yes.

Definition: yourself is cumming hornilessly:
	if the player is able to cum hornilessly:
		if constant-stimulation-started > 0 and constant-stimulation-latest - constant-stimulation-started > a random number between 5 and 6, decide yes;
	decide no.

Definition: penis (called P) is pushed over the edge:
	if the player is unable to orgasm so soon:
		if the player is cumming hornilessly, decide yes;
		decide no;
	if the player is not a bit horny, decide no;
	if the rawness of penis > the max-rawness of penis, decide yes;
	decide no.

Definition: a fuckhole (called F) is pushed over the edge:
	if the player is unable to orgasm so soon:
		if the player is cumming hornilessly, decide yes;
		decide no;
	if the player is not a bit horny, decide no; [No more than one orgasm in a round, and arousal needs to build at least a bit before the next one!]
	let N be -1;
	let T be a random thing penetrating F;
	let ST be the stimulation of T on F / 2;
	let SEN be the sensitivity of F;
	let ENJ be the enjoyment of F;
	increase N by ST + SEN + ENJ;
	if N < 0, now N is 0;
	if debuginfo > 1, say "[input-style][F] orgasm threshold check: stimulation ([ST]) + sensitivity ([SEN]) + orgasm vulnerability ([ENJ]) = [N]; square rooted = ";
	now N is the square root of N; [some logarithmic scaling; 0>0, 1-3>1, 4-8>2, 9-15>3]
	let A be 4 - fuckhole arousal; [A decreases as arousal increases. NB at 9000 arousal (extremely horny) A becomes -1, allowing for orgasms at any value of N.]
	if debuginfo > 1, say "[N] | ([A].5) orgasm threshold based on arousal[if N <= A]... player is currently too unaroused to orgasm.[roman type][end if][line break]";
	if N <= A, decide no; [enjoyment is too low to trigger an orgasm from this level of arousal]
	[Now we know that N is greater than A]
	let O1 be a random number between N and A;
	let O2 be a random number between N and A;
	[let O3 be a random number between N and A;]
	[let OL be A + 1;
	if OL >= N, now N is OL + 1;]
	let OL be A;
	if debuginfo > 0, say "[input-style]Orgasm check: [one of]arousal-based [or][stopping]orgasm resistance ([A]) & stimulation ([N]); RNG([A]~[N]) = [O1] and RNG([A]~[N]) = [O2] must both be above [OL].[roman type][line break]";
	if O1 > OL and O2 > OL, decide yes; [If N = A+1 then orgasm chance is 1 in 4; if N = A+2 then orgasm chance is 4 in 9; if N = A+3 then orgasm chance is 9 in 16 which is over 55%;]
	decide no.

To decide which number is fuckhole arousal:
	decide on (the arousal of the player + 1000) / 2000.

To decide which number is the enjoyment of (F - a fuckhole):
	if diaper quest is 1:
		check immobility;
		if the player is immobile, decide on 4;
		decide on 2;
	let A be 2;
	if focus band is worn, decrease A by (a random number between 0 and 3) + a random number between 0 and 3;
	if the reaction of the player is 0 and wrestler-jumpsuit is worn, decrease A by 2;
	if the reaction of the player is 1 or the player is friendly-fucking, increase A by 2;
	if A < 0, decide on 0;
	decide on A.

To trigger shameful orgasm of (F - a body part):
	vaginally orgasm shamefully.

To trigger shameful orgasm of (F - asshole):
	anally orgasm shamefully.

To trigger shameful orgasm of (F - breasts):
	breasts orgasm shamefully.

[!<ABodyPartIsOrgasming>+

Determines whether a given body part is currently having an orgasm, and if so, triggers a shameful orgasm

@param <BodyPart>:<F> The body part potentially having an orgasm
@return <Boolean> If true, the body part has an orgasm. If false, it does not.

!]
Definition: a body part (called F) is orgasming:
	if F is pushed over the edge:
		trigger shameful orgasm of F;
		decide yes;
	decide no.

Definition: a fuckhole (called F) is orgasming:
	if (for deposit only tattoo is not worn or F is not vagina) and (the player is extremely horny or F is pushed over the edge):
		trigger shameful orgasm of F;
		decide yes;
	decide no.

Orgasms ends here.
