Avatar Alterations by Player begins here.

Definition: a clothing is short-skirt-exception: decide no.

Definition: a clothing (called C) is short-skirt-disallowed rather than short-skirt-allowed:
	if short skirts permanent optimization > 0:
		if C is short-skirt-exception, decide no;
		if C is unskirted themed, decide yes;[Unskirted, literally, means it can't be worn with a skirt.]
		if (the front-skirt-length of C > short skirts permanent optimization or the back-skirt-length of C > short skirts permanent optimization) and C is crotch-in-place and C is not crotch-unzipped and C is actually dense, decide yes;
	decide no.

To say OptimizeTip:
	if newbie tips is 1, say "[one of][newbie style]Your in-game body has been [bold type]optimized![newbie style] Optimizations will encourage your body to act 'efficently' (slutty) in response to certain situations or clothing. If you allow your avatar to act as it wants, your maximum stats will be increased, but if you fight back, your maximum stats are reduced![roman type][line break][or][stopping]".

[At 1 or higher, each 'optimization' increases maximum str, dex and int.]
optimize-acceptance is a number that varies. optimize-acceptance is 0.
[When negative, maximum stats are reduced. When positive, maximum stats are increased.]
optimize-feedback-timer is a number that varies. optimize-feedback-timer is 0.

To compute temporary optimize reward:
	say "[line break]You feel a rush as you go along with your avatar's impulses. Your maximum stats have increased!";
	FatigueDown 5;
	now optimize-feedback-timer is 50.
To compute temporary optimize punishment:
	say "[line break]You feel painful feedback as you go resist your avatar's impulses. Your maximum stats have decreased!";
	PainUp 5;
	now optimize-feedback-timer is -50.
A later time based rule (this is the optimizer-feedback decay rule):
	if optimize-feedback-timer > 0:
		decrease optimize-feedback-timer by time-seconds;
		if optimize-feedback-timer < 0:
			say "The boost from harmonizing with your virtual body has run its course. Your maximum stats have dropped to normal levels.";
			now optimize-feedback-timer is 0;
	otherwise if optimize-feedback-timer < 0:
		increase optimize-feedback-timer by time-seconds;
		if optimize-feedback-timer > 0:
			say "The feedback from fighting back against your virtual body has run its course. Your maximum stats have risen to normal levels.";
			now optimize-feedback-timer is 0.

short skirts permanent optimization is a number that varies. short skirts permanent optimization is -1.
[When above 0, this is the highest length of skirt tolerated;
0: none
1: ultra short
2: super short
3: Very short
4: Short
5: Thigh Length
6: Knee Length
7: Shin Length
8: Calf Length
9: Ankle Length
10: Floor Length
]
To say SkirtOptimizeNotice:
	let O be short skirts permanent optimization;
	let C be a random worn short-skirt-disallowed clothing;
	say "Your muscles twitch uncomfortably as your virtual body [bold type]optimizes[roman type] itself for [SkirtLength O] skirts![if C is clothing] You suddenly feel extremely uncomfortable in your [ShortDesc of C]![line break][variable custom style]They're just not skimpy enough for me any more...[roman type][line break][end if]";
	say OptimizeTip.
To SkirtOptimize (N - a number):
	if N > 10, now N is 10;
	if short skirts permanent optimization < 0 or N < short skirts permanent optimization:
		now short skirts permanent optimization is N;
		say SkirtOptimizeNotice;
	otherwise if short skirts permanent optimization > 0:
		decrease short skirts permanent optimization by 1;
		say SkirtOptimizeNotice.
Definition: a person is fighting against short skirts:
	if the player is in a predicament room, decide no;
	if short skirts permanent optimization > 0:
		if there is worn short-skirt-disallowed clothing, decide yes;
	decide no.

short skirts reminder is a number that varies. short skirts reminder is 0.
An all time based rule (this is the fighting against short skirts fetish rule):
	if the player is fighting against short skirts:
		if short skirts reminder <= 0:
			let C be a random worn skirted short-skirt-disallowed clothing;
			if C is nothing, now C is a random worn short-skirt-disallowed clothing;
			if C is clothing, say "[bold type]You [one of][or]still [stopping]feel extremely uncomfortable in your [ShortDesc of C]! [one of]You can feel your body desperately wishing to be in [if C is unskirted and there is a worn skirted clothing]just a skirt[otherwise if C is unskirted]a skirt[otherwise if the front-skirt-length of C - 2 <= short skirts permanent optimization and the back-skirt-length of C - 2 <= short skirts permanent optimization]shorter skirt[otherwise]much shorter skirt[end if], and it's not only keeping you constantly distracted, but also making you feel much more stiff.[or][stopping][roman type][line break]";
			now short skirts reminder is 30;
		decrease short skirts reminder by 1.

Report wearing short-skirt-disallowed clothing:
	if the player is fighting against short skirts, say "You immediately feel extremely uncomfortable in these, thanks to your short skirts fetish.".
This is the stuff can't be summoned with short skirts fetish rule:
	if summoning is 1 and wearing-target is short-skirt-disallowed, rule fails.
The stuff can't be summoned with short skirts fetish rule is listed in the global wearability rules.

skimpy underwear optimization is a number that varies. skimpy underwear optimization is -1.
[
0: Crotchless & diapers only
1: G-strings & thongs
3: Hotpants
6: Briefs
9: Panties
]
To say UnderwearOptimizeNotice:
	let O be skimpy underwear optimization;
	say "Your muscles twitch uncomfortably as your virtual body [bold type]optimizes[roman type] itself for [if diaper lover >= 1]diapers[otherwise]crotchless underwear[otherwise if O >= 9]panties[otherwise if O >= 6]briefs[otherwise if O >= 3]hotpants[otherwise if O >= 1]thongs and g-strings[end if]![if there is worn skimpy-underwear-disallowed knickers]You suddenly feel extremely uncomfortable in your [ShortDesc of random worn skimpy-underwear-disallowed knickers]![line break][variable custom style]They're just not skimpy enough for me any more...[roman type][line break][end if]";
	if newbie tips is 1, say "[one of][newbie style]If you wear any underwear less skimpy than that, your maximum stats will be reduced. Otherwise, your maximum stats will be increased instead![roman type][line break][or][stopping]";
	say OptimizeTip.
To UnderwearOptimize (N - a number):
	if N > 9, now N is 9;
	if skimpy underwear optimization < 0 or N < skimpy underwear optimization:
		now skimpy underwear optimization is N;
		say UnderwearOptimizeNotice;
	otherwise if skimpy underwear optimization > 0:
		decrease skimpy underwear optimization by 1;
		say UnderwearOptimizeNotice.

To decide which number is underwear-cover-limit:
	if skimpy underwear optimization is 0, decide on 0;
	if daddy's little girl tattoo is worn, decide on 1;
	if skimpy underwear optimization > 0, decide on skimpy underwear optimization;
	decide on 999999.

Definition: yourself is no-panties-allowed rather than allowed-panties:
	if underwear-cover-limit is 0 or no-panties tattoo is worn or the diaper addiction of the player > 17 or the class of the player is faerie, decide yes;
	decide no.

Definition: a knickers (called C) is skimpy-underwear-disallowed rather than skimpy-underwear-allowed:
	if C is diaper or C is training pants or C is no protection, decide no;
	if the assModesty of C > underwear-cover-limit or the player is no-panties-allowed, decide yes;
	decide no.

Definition: yourself is fighting against skimpy underwear:
	if the player is in a predicament room, decide no;
	if there is a worn skimpy-underwear-disallowed knickers, decide yes;
	decide no.

skimpy underwear reminder is a number that varies. skimpy underwear reminder is 0.

To say SkimpyUnderwearReminderFlav:
	let C be a random worn skimpy-underwear-disallowed knickers;
	say "You can feel your body desperately wishing to be free of it because [if diaper lover > 0 and the player is no-panties-allowed]you only want to wear diapers[otherwise if the player is no-panties-allowed]you hate wearing underwear[otherwise]it's not skimpy enough for you[end if], and it's making it harder to think properly, and making all your muscles tense up, making you much more stiff.";

An all later time based rule (this is the fighting against skimpy underwear optimization rule):
	if the player is fighting against skimpy underwear:
		if skimpy underwear reminder <= 0:
			let C be a random worn skimpy-underwear-disallowed knickers;
			if C is knickers, say "[bold type]You [one of][or]still [stopping]feel extremely uncomfortable in your [ShortDesc of C]! [one of]You can feel your body desperately wishing to be free of it because [if diaper lover > 0 and the player is no-panties-allowed]you only want to wear diapers[otherwise if the player is no-panties-allowed]you hate wearing underwear[otherwise]it's not skimpy enough for you[end if], and it's making it harder to think properly, and making all your muscles tense up, making you much more stiff.[or][stopping][roman type][line break]";
			now skimpy underwear reminder is 30;
		decrease skimpy underwear reminder by 1.

Report wearing skimpy-underwear-disallowed knickers:
	if the player is fighting against skimpy underwear, say "[bold type]You immediately feel extremely uncomfortable in these,[roman type] thanks to your [if the class of the player is faerie]faerie instinct[otherwise if diaper lover >= 1]diaper fetish[otherwise if the player is no-panties-allowed]fetish for not wearing panties[otherwise]fetish for only wearing skimpy underwear[end if]. Your focus and muscle tension, and therefore your dexterity and intelligence, will be significantly negatively affected while you're wearing them.".

This is the knickers can't be summoned with skimpy underwear optimization rule:
	if summoning is 1 and wearing-target is skimpy-underwear-disallowed, rule fails.
The knickers can't be summoned with skimpy underwear optimization rule is listed in the knickers wearability rules.

cleavage optimization is a number that varies. cleavage optimization is usually -1.
[topless temporary fetish is a number that varies.]
[When above -1, this is the lowest cleavage accepted
0: Fully Exposing/Topless
1-3: Ridiculously Low Cut
4: Very Low Cut
5: Low Cut
6: Average Cut
7: High Cut
8+: Fully Covering
]
To say CleavageOptimizeNotice:
	let O be cleavage optimization;
	say "Your muscles twitch uncomfortably as your virtual body [bold type]optimizes[roman type] itself for [NecklineLength O] tops!";
	if newbie tips is 1, say "[one of][newbie style]If you wear any top with less cleavage than that, your maximum stats will be reduced. Otherwise, your maximum stats will be increased instead![roman type][line break][or][stopping]";
	say OptimizeTip.
To CleavageOptimize (N - a number):
	if N > 8, now N is 8;
	if cleavage optimization < 0 or N < cleavage optimization:
		now cleavage optimization is N;
		say CleavageOptimizeNotice;
	otherwise if cleavage optimization > 0:
		decrease cleavage optimization by 1;
		say CleavageOptimizeNotice.


To decide which number is topless-fetish:
	if diaper quest is 1:
		if the class of the player is faerie and the largeness of breasts > 1, decide on 1;
		otherwise decide on 0;
	otherwise:
		if cleavage optimization > -1 or topless tattoo is worn or black strap hood is worn, decide on 1;
		otherwise decide on 0.

Definition: a clothing (called C) is topless-fetish-disallowed:
	if topless-fetish is 1:
		if C is pasties and the class of the player is faerie, decide no;
		if cleavage optimization is 0 and C is nipple covering, decide yes;
		if the cleavageCover of C is 0, decide no;
		if (the cleavageCover of C > cleavage optimization) and C is top-placed and C is top-intact and C is actually dense, decide yes;
	decide no.

Definition: yourself is fighting against topless:
	if the player is in a predicament room, decide no;
	if topless-fetish is 1:
		if there is worn topless-fetish-disallowed clothing, decide yes;
	decide no.

This is the topless tattoo gets focused when relevant rule:
	if topless tattoo is worn and the player is fighting against topless, focus-consider topless tattoo.
The topless tattoo gets focused when relevant rule is listed in the focus finding rules.

braless reminder is a number that varies. braless reminder is 0.

An all later time based rule (this is the fighting against topless fetish rule):
	if topless-fetish is 1, say "[one of][if the class of the player is faerie][bold type]As a faerie, you have an aversion to wearing human clothes. Specifically, you feel that you must keep your nipples at least partially visible at all times.[roman type][line break][otherwise if the humiliation of the player >= 37000][bold type]You have now become so addicted to the sexual thrill of degradation that you feel that you must keep your breasts at least partially visible at all times.[roman type][line break][end if][or][stopping]";
	if the player is fighting against topless:
		if braless reminder <= 0:
			let C be a random worn topless-fetish-disallowed clothing;
			if C is clothing, say "[bold type]You [one of][or]still [stopping]feel terrible wearing your [ShortDesc of C]! [one of][if topless tattoo is worn]Your heart aches and you[otherwise]You[end if] want to free your nipples. It lowers your awareness and consumes your thought.[or][if C is actually top-displacable]You would feel much better if you pulled it out of the way and exposed your breasts.[end if][stopping][roman type][line break]";
			now braless reminder is 30;
		decrease braless reminder by 1.

Report wearing topless-fetish-disallowed clothing:
	if the player is fighting against topless, say "[bold type]You feel very uncomfortable wearing this[roman type], [if topless tattoo is worn]the tattooed eye in your chest aches[otherwise]because you know they want to see your [BreastDesc][end if].".

This is the bra can't be summoned with braless fetish rule:
	if summoning is 1 and (topless-fetish is 1 or the class of the player is faerie):
		if wearing-target is topless-fetish-disallowed actually not-top-displacable clothing, rule fails. [Bras that can be displaced are allowed, since then it's up to the player]
The bra can't be summoned with braless fetish rule is listed in the bra wearability rules.


htrigger-tasty is a number that varies.
htrigger-maturity is a number that varies.
htrigger-pussy is a number that varies.
htrigger-please is a number that varies.

To TastyOptimize:
	if htrigger-tasty is 0:
		now htrigger-tasty is 1;
		if legacy content is 1, say "For some reason the word 'tasty' repeats in your head over and over and over and over. [run paragraph on]";
		if diaper quest is 0, say "Your muscles twitch uncomfortably as your virtual body is [bold type]optimized[roman type] with a new macro for sucking [manly-penis]. You feel that if you were to hear someone say [if legacy content is 1]that word[otherwise]'tasty'[end if] out loud, your avatar would automatically move itself into position!";
		otherwise say "Your muscles twitch uncomfortably as your virtual body is [bold type]optimized[roman type] with a new macro for eating oodles and boodles of food. You feel that if you were to hear someone say [if legacy content is 1]that word[otherwise]'tasty'[end if] out loud, your avatar would automatically move to feed itself!";
		now htrigger is "";
		say OptimizeTip.

To MaturityOptimize:
	if htrigger-maturity is 0:
		now htrigger-maturity is 1;
		say "Your muscles twitch uncomfortably as your virtual body is [bold type]optimized[roman type] with a new macro for messing itself. You feel that if you were to hear someone say 'Maturity' out loud, your avatar would automatically move to void your bowels!";
		now htrigger is "";
		say OptimizeTip.

To PussyFlashOptimize:
	if htrigger-pussy is 0:
		now htrigger-pussy is 1;
		say "Your muscles twitch uncomfortably as your virtual body is [bold type]optimized[roman type] with a new macro for showing off its [vagina]. You feel that if you were to hear someone say 'cunt' or 'pussy' out loud, your avatar would automatically move to get yours on display!";
		now htrigger is "";
		say OptimizeTip.

To PleaseOptimize:
	if htrigger-please is 0:
		now htrigger-please is 1;
		say "Your muscles twitch uncomfortably as your virtual body is [bold type]optimized[roman type] with a new macro for [if diaper lover > 0][slimedraining] on itself[otherwise]getting horny[end if]. You feel that if you were to hear someone say 'please' out loud, your avatar would [if diaper lover > 0]start [Slimeshoot]ing[otherwise]get turned on[end if]!";
		now htrigger is "";
		say OptimizeTip.

The speech triggers rules is a rulebook.

This is the great ones optimized rule:
	if htrigger is "great one" and player-h-great is 1:
		say "Just thinking about the [great ones] makes you feel how powerless you are in comparison to them!";
		slightHumiliate.
The great ones optimized rule is listed in the speech triggers rules.

This is the present-for-oral optimized rule:
	if htrigger is "tasty" and htrigger-tasty is 1 and diaper quest is 0:
		say "[bold type]Having heard the word 'tasty', [if legacy content is 0]your virtual body automatically starts[otherwise]you find yourself automatically[end if] [if face is actually occupied]trying to present[otherwise]presenting[end if] your mouth for use.[roman type][line break]Do you fight it?";
		unless the player is consenting:
			if the player is upright, try silently kneeling;
			let M be a random interested monster in the location of the player;
			if M is nothing:
				now M is a random monster in the location of the player;
				if M is monster, interest M;
			if the player is prone:
				if face is actually occupied:
					say "[if the bimbo of the player > 14]Unfortunately[otherwise]Fortunately[end if], your mouth is already occupied.";
				otherwise if M is nothing:
					say "All that happens is that you feel a little silly, since there's nobody here to offer a blowjob to.";
				otherwise:
					try direct-presenting face to M;
			compute temporary optimize reward;
		otherwise:
			say "You retake control before things can progress too far, sending painful sensory feedback through your body.";
			compute temporary optimize punishment;
		now another-turn is 1.
The present-for-oral optimized rule is listed in the speech triggers rules.

This is the eat-all-food optimized rule:
	if htrigger is "tasty" and htrigger-tasty is 1 and diaper quest is 1:
		say "[bold type]Having heard the word 'tasty', [if legacy content is 0]your virtual body automatically starts acting to make you[otherwise]you find yourself automatically starting to[end if] eat everything you can.[roman type][line break]Do you fight it?";
		unless the player is consenting:
			if the number of held food > 0 and face is not actually occupied and the player is able to eat:
				now auto is 1;
				repeat with F running through held food:
					try TQeating F;
				now auto is 0;
			otherwise if face is actually occupied:
				say "[if the bimbo of the player > 14]Unfortunately[otherwise]Fortunately[end if], your mouth is already occupied.";
			otherwise:
				say "[if the bimbo of the player > 14]Unfortunately[otherwise]Fortunately[end if], there's nothing to actually eat.";
			compute temporary optimize reward;
		otherwise:
			say "You retake control before things can progress too far, sending painful sensory feedback through your body.";
			compute temporary optimize punishment;
		now another-turn is 1.
The eat-all-food optimized rule is listed in the speech triggers rules.

This is the autopush optimized rule:
	if htrigger is "maturity" and htrigger-maturity is 1:
		say "[bold type]Having heard the word 'maturity', [if legacy content is 1]you find you automatically start[otherwise]your virtual body automatically starts[end if] [if the player is upright]squatting, grunting,[otherwise]grunting[end if] and pushing.[roman type][line break]Do you fight it?";
		unless the player is consenting:
			if asshole is not actually occupied and there are worn soilable knickers:
				now voluntarySquatting is 1;
				compute partial messing;
			otherwise:
				say "Luckily, there's nothing to make a mess of.";
			compute temporary optimize reward;
		otherwise:
			say "You retake control before things can progress too far, sending painful sensory feedback through your body.";
			compute temporary optimize punishment;
			now another-turn is 1.
The autopush optimized rule is listed in the speech triggers rules.

This is the autospread optimized rule:
	if (htrigger is "pussy" or htrigger is "cunt") and htrigger-pussy is 1:
		say "[bold type]Having heard the word '[htrigger]', [if legacy content is 0]your virtual body automatically starts[otherwise]you find yourself automatically[end if] trying to get your [vagina] on display.[roman type][line break]Do you fight it?";
		unless the player is consenting:
			if the player is possessing a vagina and vagina is not lewdly exposed:
				repeat with C running through worn potentially at least partially vagina covering skirted clothing: [We do skirted first to try and make sure that the order makes sense]
					if C is displacable:
						say "You pull up your [ShortDesc of C]!";
						displace C;
					otherwise:
						say "You try to remove your [ShortDesc of C]!";
						try taking off C;
				repeat with C running through worn potentially at least partially vagina covering trousers: [We do trousers next to try and make sure that the order makes sense]
					if C is displacable:
						say "You pull down your [ShortDesc of C]!";
						displace C;
					otherwise if C is crotch-zipped:
						say "You unzip your [ShortDesc of C]!";
						ZipDown C;
					otherwise:
						say "You try to remove your [ShortDesc of C]!";
						try taking off C;
				repeat with C running through worn potentially at least partially vagina covering unskirted clothing: [We do everything else last to try and make sure that the order makes sense]
					if C is displacable:
						say "You pull your [ShortDesc of C] to the side!";
						displace C;
					otherwise if C is crotch-zipped:
						say "You unzip your [ShortDesc of C]!";
						ZipDown C;
					otherwise:
						say "You try to remove your [ShortDesc of C]!";
						try taking off C;
			otherwise if the player is not possessing a vagina:
				say "Luckily you don't have a [vagina] to get on display.";
			otherwise:
				say "Luckily? your [vagina] is already on display.";
			compute temporary optimize reward;
		otherwise:
			say "You retake control before things can progress too far, sending painful sensory feedback through your body.";
			compute temporary optimize punishment;
		now another-turn is 1.
The autospread optimized rule is listed in the speech triggers rules.

This is the autoslime optimized rule:
	if htrigger is "please" and htrigger-please is 1:
		if diaper lover > 0:
			say "[bold type]Having heard the word 'please', [if legacy content is 0]your virtual body automatically starts releasing its[otherwise]you find yourself automatically releasing your[end if] hold on your [SlimeContainer].[roman type][line break]Do you fight it?";
			unless the player is consenting:
				if the bladder of the player > 0 and the latex-transformation of the player <= 4:
					now delayed urination is 1;
					try urinating;
				otherwise:
					say "Luckily, you don't need to [slimedrain] right now...";
				compute temporary optimize reward;
			otherwise:
				say "You retake control before things can progress too far, sending painful sensory feedback through your body.";
				compute temporary optimize punishment;
				now another-turn is 1;
		otherwise:[Different effect from the statue when diapers are disabled]
			if legacy content is 0, say "[bold type]Having heard the word 'please', your avatar starts charging you up with arousal.[roman type][line break]Do you fight it?";
			otherwise say "[bold type]Having heard the word 'please', your head fills with a deep blissful arousal.[roman type][line break]Do you fight it?";
			unless the player is consenting:
				if the player is able to get horny:
					arouse 5000;
					check for arousal change;
					if the player is very horny and the player is able to automatically masturbate:
						now auto is 1;
						try masturbating;
						now auto is 0;
						now another-turn is 1;
				otherwise:
					say "Luckily, the arousal doesn't seem to stick.";
			otherwise:
				say "You retake control before things can progress too far, sending painful sensory feedback through your body.";
				compute temporary optimize punishment;
				now another-turn is 1.
The autoslime optimized rule is listed in the speech triggers rules.

[TODO:
Heel length optimizer
No-erections optimizer
]
To decide which number is optimized-neuron-count:
	let N be 0;
	if short skirts permanent optimization > -1, increase N by 1;
	if skimpy underwear optimization > -1, increase N by 1;
	if cleavage optimization > -1, increase N by 1;
	increase N by optimized-triggers-count;
	decide on N.

To decide which number is optimized-triggers-count:
	let N be 0;
	increase N by htrigger-tasty;
	increase N by htrigger-maturity;
	increase N by htrigger-pussy;
	increase N by htrigger-please;
	decide on N.

This is the optimize rejection rule:
	now short skirts permanent optimization is -1;
	now skimpy underwear optimization is -1;
	now cleavage optimization is -1;
	now htrigger-tasty is 0;
	now htrigger-maturity is 0;
	now htrigger-pussy is 0;
	now htrigger-please is 0;
	now optimize-acceptance is 0.

[Strength, Dexterity, and intelligence maximum values are influenced by this amount.]
To decide which number is raw-optimizer-bonus:
	let N be 0;
	if the player is fighting against short skirts:
		decrease N by 1 + (2 * optimize-acceptance);
	otherwise if short skirts permanent optimization > -1:
		increase N by optimize-acceptance;
	if the player is fighting against skimpy underwear:
		decrease N by 1 + (2 * optimize-acceptance);
	otherwise if skimpy underwear optimization > -1:
		increase N by optimize-acceptance;
	if the player is fighting against topless:
		decrease N by 1 + (2 * optimize-acceptance);
	otherwise if cleavage optimization > -1:
		increase N by optimize-acceptance;
	if optimize-feedback-timer > 0, increase N by optimize-acceptance;
	if optimize-feedback-timer < 0, decrease N by 1 + (2 * optimize-acceptance);
	decide on N.
To decide which number is maximum-optimizer-bonus:
	let N be 0;
	if the player is fighting against short skirts:
		decrease N by 1 + optimize-acceptance;
	otherwise if short skirts permanent optimization > -1:
		increase N by 1 + optimize-acceptance;
	if the player is fighting against skimpy underwear:
		decrease N by 1 + optimize-acceptance;
	otherwise if skimpy underwear optimization > -1:
		increase N by 1 + optimize-acceptance;
	if the player is fighting against topless:
		decrease N by 1 + optimize-acceptance;
	otherwise if cleavage optimization > -1:
		increase N by 1 + optimize-acceptance;
	if optimize-feedback-timer > 0, increase N by 1 + optimize-acceptance;
	if optimize-feedback-timer < 0, decrease N by 1 + optimize-acceptance;
	decide on N.

The optimizer listing rules is a rulebook.

This is the optimum skirts listing rule:
	if short skirts permanent optimization > -1, say "Your avatar has been optimized for wearing [if short skirts permanent optimization > 0]skirts.[otherwise]bottomless outfits.[end if]".
The optimum skirts listing rule is listed in the optimizer listing rules.
This is the optimum tops listing rule:
	if short skirts permanent optimization > -1, say "Your avatar has been optimized for wearing [if cleavage optimization > 0]revealing tops.[otherwise]topless outfits.[end if]".
The optimum tops listing rule is listed in the optimizer listing rules.
This is the optimum pantsu listing rule:
	if skimpy underwear optimization > -1, say "Your avatar has been optimized for wearing [if skimpy underwear optimization > 0]skimpy underwear.[otherwise]crotchless underwear[end if]".
The optimum pantsu listing rule is listed in the optimizer listing rules.

This is the optimum please listing rule:
	if htrigger-please > 0:
		if diaper lover > 0, say "Your avatar has been optimized with a [SlimeDraining] macro. Verbal Code(s): 'please'.";
		otherwise say "Your avatar has been optimized with an arousal macro. Verbal Code(s): 'please'.".
The optimum please listing rule is listed in the optimizer listing rules.
This is the optimum matu listing rule:
	if htrigger-maturity > 0, say "Your avatar has been optimized with a pushing macro. Verbal Code(s): 'maturity'.".
The optimum matu listing rule is listed in the optimizer listing rules.
This is the optimum pussy listing rule:
	if htrigger-pussy > 0, say "Your avatar has been optimized with a genitals exposure macro. Verbal Code(s): 'pussy', 'cunt'.".
The optimum pussy listing rule is listed in the optimizer listing rules.
This is the optimum tasty listing rule:
	if htrigger-tasty > 0, say "Your avatar has been optimized with [if diaper quest is 1]an eatingp[otherwise]an oral presenting[end if] macro. Verbal Code(s): 'tasty'.".
The optimum tasty listing rule is listed in the optimizer listing rules.



Avatar Alterations ends here.
