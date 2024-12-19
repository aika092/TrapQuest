Exposure Addiction by Player begins here.

skimpy underwear fetish is a number that varies. skimpy underwear fetish is -1.
[
0: Crotchless & diapers only
1: G-strings & thongs
3: Hotpants
6: Briefs
9: Panties
]

To decide which number is underwear-cover-limit:
	if skimpy underwear fetish is 0, decide on 0;
	if daddy's little girl tattoo is worn, decide on 1;
	if skimpy underwear fetish > 0, decide on skimpy underwear fetish;
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

An all later time based rule (this is the fighting against skimpy underwear fetish rule):
	if the player is fighting against skimpy underwear:
		if skimpy underwear reminder <= 0:
			let C be a random worn skimpy-underwear-disallowed knickers;
			if C is knickers, say "[bold type]You [one of][or]still [stopping]feel extremely uncomfortable in your [ShortDesc of C]! [one of]You can feel your body desperately wishing to be free of it because [if diaper lover > 0 and the player is no-panties-allowed]you only want to wear diapers[otherwise if the player is no-panties-allowed]you hate wearing underwear[otherwise]it's not skimpy enough for you[end if], and it's making it harder to think properly, and making all your muscles tense up, making you much more stiff.[or][stopping][roman type][line break]";
			now skimpy underwear reminder is 30;
		decrease skimpy underwear reminder by 1.

Report wearing skimpy-underwear-disallowed knickers:
	if the player is fighting against skimpy underwear, say "[bold type]You immediately feel extremely uncomfortable in these,[roman type] thanks to your [if the class of the player is faerie]faerie instinct[otherwise if diaper lover >= 1]diaper fetish[otherwise if the player is no-panties-allowed]fetish for not wearing panties[otherwise]fetish for only wearing skimpy underwear[end if]. Your focus and muscle tension, and therefore your dexterity and intelligence, will be significantly negatively affected while you're wearing them.".

This is the knickers can't be summoned with skimpy underwear fetish rule:
	if summoning is 1 and wearing-target is skimpy-underwear-disallowed, rule fails.
The knickers can't be summoned with skimpy underwear fetish rule is listed in the knickers wearability rules.

topless temporary fetish is a number that varies.

To decide which number is topless-fetish:
	if diaper quest is 1:
		if the class of the player is faerie and the largeness of breasts > 1, decide on 1;
		otherwise decide on 0;
	otherwise:
		if topless temporary fetish > 0 or topless tattoo is worn or black strap hood is worn, decide on 1;
		otherwise decide on 0.

Definition: a clothing (called C) is topless-fetish-disallowed:
	if topless-fetish is 1:
		if C is pasties and the class of the player is faerie, decide no;
		if C is nipple covering clothing, decide yes;
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
	if topless-fetish is 1, say "[one of][if the class of the player is faerie][bold type]As a faerie, you have an aversion to wearing human clothes. Specifically, you feel that you must keep your nipples at least partially visible at all times.[roman type][line break][otherwise if the humiliation of the player >= 37000][bold type]You have now become so addicted to the sexual thrill of degradation that you feel that you must keep your nipples at least partially visible at all times.[roman type][line break][end if][or][stopping]";
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

Exposure Addiction ends here.
