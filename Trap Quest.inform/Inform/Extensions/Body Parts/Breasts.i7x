Breasts by Body Parts begins here.

Part 1 - Definitions

[!<Breasts>@

REQUIRES COMMENTING

@inherits <Flesh>

@!]
breasts is a flesh. breasts is everywhere. Understand "tits", "breast", "boobs", "cleavage", "bust" as breasts. Understand "chest" as breasts when the number of treasure chests in the location of the player is 0. The text-shortcut of breasts is "breasts".
To say FullExamineDesc of (B - breasts):
	say "[TotalDesc of breasts][line break]".

[!<Breasts>@<fleshVolume:Integer>*

REQUIRES COMMENTING

*@!]
Breasts has a number called flesh volume.

[!<Breasts>@<milkVolume:Integer>*

REQUIRES COMMENTING

*@!]
Breasts has a number called milk volume.

[!<Breasts>@<airVolume:Integer>*

REQUIRES COMMENTING

*@!]
Breasts has a number called air volume.

[!<Breasts>@<realFleshVolume:Integer>*

REQUIRES COMMENTING

*@!]
Breasts has a number called real flesh volume.

[!<Breasts>@<siliconeVolume:Integer>*

REQUIRES COMMENTING

*@!]
Breasts has a number called silicone volume.

[!<Breasts>@<previousLargeness:Integer>*

REQUIRES COMMENTING

*@!]
Breasts has a number called previous largeness.

[!<Breasts>@<realLargeness:Integer>*

REQUIRES COMMENTING

*@!]
Breasts has a number called real largeness.

[!<Breasts>@<rawSensitivity:Integer>*

REQUIRES COMMENTING

*@!]
Breasts has a number called raw sensitivity.

[!<DecideWhichNumberIsTheSensitivityOfBreasts>+

REQUIRES COMMENTING

+!]
To decide which number is the sensitivity of (B - breasts):
	let S be 0;
	if the class of the player is cowgirl:
		if the milk volume of breasts > 10, increase S by 1;
		if the milk volume of breasts > 20, increase S by 1;
		if the milk volume of breasts > 25, increase S by 1;
		if the milk volume of breasts > 30, increase S by 1;
		if the milk volume of breasts > 34, increase S by (the milk volume of breasts - 32) / 3;
	if there is a worn cow piercing:
		increase S by 1;
		if there is a worn nipple chain, increase S by 1;
	increase S by the raw sensitivity of breasts;
	if there is a worn nipple chain, increase S by 2;
	if true love tattoo is worn, increase S by 2;
	increase S by 6 * the trophy-mode of bust-trophy;
	decide on S.


To decide which number is the at least partially lewdly exposed outrage of (B - breasts):
	decide on 9.

To decide which number is the lewdly exposed outrage of (B - breasts):
	decide on 14.


Definition: breasts is exposed:
	if breasts is not at least partially exposed, decide no;
	if the number of worn actually breast covering nipple covering clothing is the number of worn see-through actually breast covering nipple covering clothing, decide yes; [Is all worn breast covering clothing see-through?]
	decide no.

Definition: breasts is at least partially exposed if the number of worn actually dense actually breast covering nipple covering clothing is 0.

Definition: breasts is lewdly exposed if breasts is exposed and (the player is sexed female or the largeness of breasts > 1).

Definition: breasts is at least partially lewdly exposed if breasts is at least partially exposed and the largeness of breasts > 1.

To decide which number is the cleavageCover of (C - a clothing):
	if C is breast covering:
		if C is fully covering, decide on 100;
		if C is high cut, decide on 7;
		if C is average cut, decide on 6;
		if C is low cut, decide on 5;
		if C is very low cut, decide on 4;
		if C is ridiculously low cut, decide on 3;
		if C is fully exposing, decide on 0;
	decide on 0.

To decide which number is cleavageCover: [The higher this number, the less humiliating giant breasts are]
	if there is worn actually dense high cut or higher actually breast covering clothing:
		decide on 7;
	otherwise if there is worn actually dense average cut actually breast covering clothing:
		decide on 6;
	otherwise if there is worn actually dense low cut actually breast covering clothing:
		decide on 5;
	otherwise if there is worn actually dense very low cut actually breast covering clothing:
		decide on 4;
	decide on 3.

To decide which number is the outrage of (B - breasts):
	let O be 0;
	let S be the semen coating of B * the semen coating of B;
	if S > 0:
		if there is worn actually dense fully covering actually breast covering clothing, now S is 0; [can be fully concealed which prevents us from seeing that they're glazed with cum]
	unless diaper quest is 1 and the breastskill of the player is 1:
		let P be 0; [This will be the value of how lewd it is that the player's nipples are visible]
		if there is a worn currently at least partially visible top-displaced clothing, increase O by 2;
		if B is lewdly exposed, now P is the lewdly exposed outrage of B + O;
		if B is at least partially lewdly exposed, now P is the at least partially lewdly exposed outrage of B + O;
		now O is (2 + (the largeness of breasts * 3)) / cleavageCover; [This will be the value of how lewd it is that the player has big breasts, scaled down by how much of the titty meat is covered up by clothing]
		if P > O, now O is P; [Take the larger of what's humiliating from big cleavage and exposed nipples]
	now O is (S + O) / (the trophy-mode of bust-trophy + 1); [Add on semen coating; Bust trophy halves outrage]
	if O > 20, decide on 20;
	if O < 0, decide on 0;
	decide on O.

To decide which number is the cringe of (B - breasts):
	let C be the outrage of B;
	if C < 4:
		if B is exposed, decide on 2;
		decide on 0;
	decide on C - 3. [if we haven't redefined it, then a bit less than the outrage should be a good estimate. Being naked is childish but it's not as childish as it is slutty.]


Definition: breasts is showing cleavage:
	if the largeness of breasts < 4, decide no;
	if there is worn actually dense fully covering actually breast covering clothing, decide no;
	decide yes.

Definition: a clothing (called C) is ridiculously low cut or higher:
	if C is chestless or C is fully exposing, decide no;
	decide yes.

Definition: a clothing (called C) is very low cut or higher:
	if C is chestless or C is fully exposing or C is ridiculously low cut, decide no;
	decide yes.

Definition: a clothing (called C) is low cut or higher:
	if C is chestless or C is fully exposing or C is ridiculously low cut or C is very low cut, decide no;
	decide yes.

Definition: a clothing (called C) is average cut or higher:
	if C is average cut or C is high cut or C is fully covering, decide yes;
	decide no.

Definition: a clothing (called C) is high cut or higher:
	if C is high cut or C is fully covering, decide yes;
	decide no.

Definition: a clothing (called C) is ridiculously low cut or lower:
	if C is fully exposing or C is ridiculously low cut, decide yes;
	decide no.

Definition: a clothing (called C) is very low cut or lower:
	if C is very low cut or C is ridiculously low cut or lower, decide yes;
	decide no.

Definition: a clothing (called C) is low cut or lower:
	if C is low cut or C is very low cut or lower, decide yes;
	decide no.




[!<DecideWhichNumberIsTheLargenessOfBreasts>+

REQUIRES COMMENTING

+!]
To decide which number is the largeness of breasts:
	let O be the air volume of breasts;
	[if the milk volume of breasts > the flesh volume of breasts, increase O by the milk volume of breasts;]
	increase O by the flesh volume of breasts; [Flesh can contain up to as much milk as it has size. After that, breasts expand even further.]
	increase O by the silicone volume of breasts;
	let B be 1;
	if O < 16:
		now B is (O + 2) / 2;
	otherwise if O < 19:
		now B is 9;
	otherwise if O < 22:
		now B is 10;
	otherwise if O < 25:
		now B is 11;
	otherwise if O < 28:
		now B is 12;
	otherwise if O < 44:
		now B is (O + 24) / 4;
	otherwise if O < 50:
		now B is 17;
	otherwise if O < 58:
		now B is 18;
	otherwise if O < 70:
		now B is 19;
	otherwise:
		now B is 20;
	if B > 11 and extreme proportions fetish is 0, now B is 11;
	if B > max breast size, decide on max breast size;
	decide on B.

[Supportable breast weight feeds into supported breast weight, we just use this to calculate weight before clothing gets involved.]
[!<WhichNumberIsTheSupportableWeightOfBreasts>+

REQUIRES COMMENTING

+!]
To decide which number is the supportable weight of breasts:
	let Z be the flesh volume of breasts + the milk volume of breasts + (the silicone volume of breasts / 3) [silicone is a lot less heavy than real flesh];
	let O be Z - (the air volume of breasts * 2);
	if there is a worn buoyant salve covering breasts:
		let S be a random worn buoyant salve covering breasts;
		if S is cursed, increase O by 4;
		otherwise decrease O by 3;
		if S is blessed, decrease O by 3;
	if Atlas tattoo is worn, decrease O by 3;
	if abyssal tattoo is worn and the class of the player is silicone queen:
		decrease O by the silicone volume of breasts / 6; [breast implants weigh half as much for the silicone queen if you've got the bonus]
	if the air volume of breasts <= 0 and O < 0, now O is 0; [Can't have negative weight without inflation fetish]
	decide on O.

[!<DecideWhichNumberIsTheWeightOfBreasts>+

REQUIRES COMMENTING

+!]
To decide which number is the weight of (XXX - breasts):
	let S be the supportable weight of breasts;
	[If the weight of breasts < 1, then we don't make calculations about how well it's supported. Essentially clothing can help you fight fatigue gain and strength requirements, but not help you defy gravity.]
	if S > 0:
		repeat with B running through bras worn by the player:
			if the largeness of breasts + 2 > the size of B and B is top-placed, decrease S by the support of B;
			decrease S by the magic-modifier of B;
		repeat with O running through overdresses worn by the player:
			if O is maternity dress:
				if O is cursed:
					if the pregnancy of the player is 0:
						increase S by 4;
					otherwise:
						increase S by 2;
				otherwise if O is blessed:
					if the pregnancy of the player is 0:
						decrease S by 2;
					otherwise:
						decrease S by 4;
			if the class of the player is silicone queen:
				decrease S by 1;
				if O is not cursed, decrease S by 2;
				if O is blessed, decrease S by 2;
		if there is a worn nipple chain:
			let N be a random nipple chain worn by the player;
			decrease S by 1;
			if N is blessed, decrease S by 2;
		now S is S / 2;
		if S < 1, now S is 1;
	if the latex-transformation of the player > 1 and S > 10, now S is 10;
	if the latex-transformation of the player > 5 and S > 0, now S is 0;
	decide on S.

[!<BreastsIsHeavy>+

REQUIRES COMMENTING

+!]
Definition: breasts is heavy if the weight of breasts >= 18.

[!<YourselfIsTopHeavy>+

Are breasts going to fail to grow any further?

+!]
Definition: yourself is top heavy if the largeness of breasts >= max breast size.

[!<DecideWhichNumberIsMaxBreastSize>+

REQUIRES COMMENTING

+!]
To decide which number is max breast size:
	if diaper quest is 1, decide on 5;
	if trap fetish is 1 and the player is male and the player is virtual, decide on 1;
	if there is a restricting salve covering breasts, decide on recent-breasts-largeness;
	let Z be 11;
	if extreme proportions fetish is 1, now Z is 20;
	decrease Z by max breast size points;
	decrease Z by choice in row 33 of the Table of Player Options;
	if Z < min breast size, decide on min breast size;
	if Z > 1, decide on Z;
	decide on 1.

To decide which number is min breast size:
	if the player is sexed male, decide on 1;
	decide on 1 + (starting body shape * 2).

[!<breastsPresentableRules:Rulebook>*

REQUIRES COMMENTING

*!]
the breasts presentable rules is a rulebook.
the presentable rules of breasts is usually the breasts presentable rules.

[!<TheBreastsTooTinyForTitfuck>+

REQUIRES COMMENTING

+!]
This is the breasts too tiny for titfuck rule:
	if the largeness of breasts < 5:
		if auto is 0, say "Your [BreastDesc] are too small to provide a good titfuck.";
		rule fails.
The breasts too tiny for titfuck rule is listed in the breasts presentable rules.

[!<TheBreastsCoveredByClothingRule>+

REQUIRES COMMENTING

+!]
This is the breasts covered by clothing rule:
	let allDisplacable be 1;
	repeat with B running through worn breast covering top-placed clothing:
		if B is not fully exposing and B is not optional-top-displacable:
			unless (B is top-displacable and B is not glued) or B is usually autoremovable, now allDisplacable is 0;
	if allDisplacable is 0:
		repeat with B running through worn breast covering top-placed clothing:
			if B is not fully exposing and B is not optional-top-displacable:
				if auto is 0, say "You would need to take your [printed name of B] off first.";
				rule fails.
The breasts covered by clothing rule is listed in the breasts presentable rules.

[!<TheMonsterDoesNotDoTitfucksRule>+

REQUIRES COMMENTING

+!]
This is the monster doesn't do titfucks rule:
	if auto is 1 and the number of willing to do titfucks monsters in the location of the player is 0, rule fails.
The monster doesn't do titfucks rule is listed in the breasts presentable rules.

[!<TheTooHornyToPresentBreastsRule>+

REQUIRES COMMENTING

+!]
This is the too horny to present breasts rule:
	if the player is horny:
		if auto is 0 or there is an actually presentable fuckhole: [The automatic action rule does not care if you are horny, unless a fuckhole is actually presentable as well.]
			if the player is very horny and the sensitivity of breasts < 8:
				if auto is 0, say "You are too aroused and your [if the player is not possessing a vagina][asshole] is[otherwise][vagina] and [asshole] are[end if] begging to be fucked, you can't bring yourself to do that!";
				rule fails;
			if the semen addiction of the player < 6 and bukkake fetish is 1:
				if auto is 0, say "The thought of getting [semen] over your [BreastDesc] is just too gross, you can't bring yourself to offer that!";
				rule fails.
The too horny to present breasts rule is listed in the breasts presentable rules.

[!<breastsBlinded:Integer>*

REQUIRES COMMENTING

*!]
breasts-blinded is a number that varies.

[!<PersonIsBreastsBlinded>+

REQUIRES COMMENTING

+!]
Definition: a person is breasts blinded:
	if the largeness of breasts > 10 and the weight of breasts < 0:
		if breasts-blinded is 0:
			now breasts-blinded is 1;
			say "[bold type]Your [ShortDesc of breasts] are now floating in front of your face, obscuring your vision! [one of]You will have lowered combat damage, slightly lowered dexterity and be unable to search until they deflate.[or][stopping][roman type][line break]";
		decide yes;
	otherwise:
		if breasts-blinded is 1:
			now breasts-blinded is 0;
			say "[bold type]Your [ShortDesc of breasts] are no longer obscuring your vision.[roman type][line break]";
		decide no.

[!<DecideWhichNumberIsTheDesireOfBreasts>+

How much does the player want this body part to be used?

+!]
To decide which number is the desire of (B - breasts):
	decide on the titfuck addiction of the player.


Part 2 - Description

[!<SayShortDescOfBreasts>+

Very brief details (size)

+!]
To say ShortDesc of breasts:
	say BreastDesc.

[!<SayMediumDescOfBreasts>+

Less brief details (size, exposure, semen)

+!]
To say MediumDesc of (B - breasts):
	say "[if breasts is lewdly exposed]fully exposed [CumBreastDesc][otherwise if breasts is at least partially lewdly exposed]visible [CumBreastDesc][otherwise if breasts is showing cleavage][CumBreastDesc] [CleavageDesc][otherwise if breasts is not exposed]concealed [CumBreastDesc][end if]".

To say CumBreastDesc:
	say "[if the semen coating of breasts > 6]cum-coated [otherwise if the semen coating of breasts > 0]cum-splattered [end if][BreastDesc]".

To say CleavageDesc:
	if breasts is showing cleavage:
		if there is worn actually dense high cut actually breast covering clothing:
			say "with some slight cleavage showing";
		otherwise if there is worn actually dense average cut actually breast covering clothing:
			say "showing a normal amount of cleavage";
		otherwise if there is worn actually dense low cut actually breast covering clothing:
			say "showing a lot of cleavage";
		otherwise if there is worn actually dense very low cut actually breast covering clothing:
			say "with lots of cleavage spilling out";
		otherwise if there is worn actually dense actually breast covering clothing:
			say "(barely covered at all)".



[!<SayTotalDescOfBreasts>+

REQUIRES COMMENTING

+!]
To say TotalDesc of breasts:
	say "You are ";
	if the player is upright:
		if the largeness of breasts < 11 or the latex-transformation of the player > 1, say "[if the throne is triggered or the player is horse stuck]sitting down[otherwise]standing up[end if] with [if the largeness of breasts is 1]a [end if]";
		otherwise say "somehow managing to stand up with ";
	otherwise:
		if the largeness of breasts < 11 or the latex-transformation of the player > 1, say "on your knees, with [if the largeness of breasts is 1]a [end if]";
		otherwise say "on your hands and knees under the weight of your ";
	if there is a worn bra:
		say "[BreastDesc][BraDesc]";
	otherwise if the player is prone:
		say "[BreastDesc][BreastKneelingDesc]";
	otherwise:
		say "[BreastDesc][BreastStandingDesc]";
	if lactation fetish is 1 or inflation fetish is 1 or artificial enhancements fetish is 1:
		if the latex-transformation of the player is 0, say BreastFillDesc;
		say BreastLactationRate;
	say "[BreastWeight][BreastModesty]";
	if the semen coating of breasts > 7:
		say "[BreastsTheyAre] completely covered in [semen]. ";
	otherwise if the semen coating of breasts > 4:
		say "[BreastsTheyAre] dripping with [semen]. ";
	otherwise if the semen coating of breasts > 0:
		say "[BreastsTheyAre] slightly splattered with [semen]. ".

[!<SayBreastsTheyAre>+

REQUIRES COMMENTING

+!]
To say BreastsTheyAre:
	if the largeness of breasts is 1, say "It is";
	otherwise say "They are".

[!<SayBraDesc>+

REQUIRES COMMENTING

+!]
To say BraDesc:
	compute SelfExamineDesc of a random worn bra.

[!<SayBreastDesc>+

REQUIRES COMMENTING

+!]
To say BreastDesc:
	let X be the largeness of breasts;
	if X is 1, say "[if the player is female]almost [end if]flat chest";
	if X is 2, say "minuscule AA bee stings";
	if X is 3, say "tiny A cup bullets";
	if X is 4, say "small B cup bosoms";
	if X is 5, say "modest C cup breasts";
	if X is 6, say "average D cup tits";
	if X is 7, say "pronounced DD cup knockers";
	if X is 8, say "large E cup boobs";
	if X is 9, say "huge F cup jugs";
	if X is 10, say "swollen G cup hooters";
	if X is 11, say "inflated GG cup balloons";
	if X is 12, say "impressive H cup coconuts";
	if X is 13, say "massive HH cup watermelons";
	if X is 14, say "humongous JJ cup bazookas";
	if X is 15, say "outrageous KK cup gobstoppers";
	if X is 16, say "incredible L cup hemispheres";
	if X is 17, say "ridiculous beach balls";
	if X is 18, say "comically sized jawbreakers";
	if X is 19, say "back breaking, comically sized mountain peaks";
	if X is 20, say "impossibly voluminous globes".

[To be used in sentences like "Your breasts <bounce> as you strut along." ]
[!<SayBreastBounceDesc>+

REQUIRES COMMENTING

+!]
To say BreastBounceDesc:
	let X be the largeness of breasts;
	if X is 1, say "are flat and don't move";
	if X is 2, say "quiver slightly";
	if X is 3, say "quiver";
	if X is 4, say "judder";
	if X is 5, say "jiggle";
	if X is 6, say "bounce";
	if X is 7, say "bounce like jelly";
	if X is 8, say "bounce up and down";
	if X is 9, say "bounce and sway";
	if X is 10, say "jostle about";
	if X is 11, say "wobble";
	if X is 12, say "wobble and sway";
	if X is 13, say "plunge and bounce";
	if X is 14, say "quake and wobble";
	if X is 15, say "wobble like mountains of jello";
	if X is 16, say "bungee jump";
	if X is 17, say "bounce comically";
	if X is 18, say "oscillate moon-like, making you sway";
	if X is 19, say "try to topple you flat to the floor";
	if X is 20, say "drag you around behind them".

[!<SayBreastBouncingDesc>+

REQUIRES COMMENTING

+!]
To say BreastBouncingDesc:
	let X be the largeness of breasts;
	if X is 1, say "flat and unmoving";
	if X is 2, say "quivering slightly";
	if X is 3, say "quivering";
	if X is 4, say "juddering";
	if X is 5, say "jiggling";
	if X is 6, say "bouncing";
	if X is 7, say "bouncing like jelly";
	if X is 8, say "bouncing up and down";
	if X is 9, say "bouncing and swaying";
	if X is 10, say "jostling about";
	if X is 11, say "wobbling";
	if X is 12, say "wobbling and swaying";
	if X is 13, say "plunging and bouncing";
	if X is 14, say "quaking and wobbling";
	if X is 15, say "wobbling like jello mountains";
	if X is 16, say "bungee jumping";
	if X is 17, say "bouncing comically";
	if X is 18, say "oscillating moon-like, making you sway";
	if X is 19, say "trying to topple you flat to the floor";
	if X is 20, say "dragging you around behind them".

[!<SayRealDescOfBreasts>+

REQUIRES COMMENTING

+!]
To say RealDesc of (XXX - breasts): [So that both can be used.]
	say RealBreastDesc.

[!<SayRealBreastDesc>+

REQUIRES COMMENTING

+!]
To say RealBreastDesc:
	let X be the real largeness of breasts;
	if X <= 1, say "relatively flat chest";
	if X is 2, say "AA cup breasts";
	if X is 3, say "A cup breasts";
	if X is 4, say "B cup breasts";
	if X is 5, say "C cup breasts";
	if X is 6, say "D cup breasts";
	if X is 7, say "DD cup breasts";
	if X is 8, say "E cup breasts";
	if X is 9, say "F cup breasts";
	if X is 10, say "G cup breasts";
	if X is 11, say "GG cup breasts";
	if X is 12, say "H cup breasts";
	if X is 13, say "HH cup breasts";
	if X is 14, say "JJ cup breasts";
	if X is 15, say "KK cup breasts";
	if X is 16, say "L cup breasts";
	if X is 17 or X is 18 or X is 19, say "[one of]stupidly large breasts[or]unnaturally huge breasts[or]comically giant[at random]";
	if X is 20, say "world record breaking breasts".

[!<SayBreastStandingDesc>+

REQUIRES COMMENTING

+!]
To say BreastStandingDesc:
	if the weight of breasts > the largeness of breasts:
		let X be the largeness of breasts;
		if the latex-transformation of the player > 2, now X is 100;
		if X is 100, say " that wobble gently as they protrude straight forward from your chest, [if the latex-transformation of the player < 5]as if they are[otherwise]as they are[end if] made of latex and filled with air. ";
		if X < 6, say ". ";
		if X is 6, say " that wobble as you walk. ";
		if X is 7, say " that bounce around a bit as you walk. ";
		if X is 8, say " that distract you with their weight. ";
		if X is 9, say " that make it difficult to keep a straight back. ";
		if X is 10, say " that are ruining your posture. ";
		if X is 11, say " that bounce significantly as you walk, exaggerating all your movements. ";
		if X is 12, say " that threaten to make you lose your balance. ";
		if X is 13, say " that prevent you from seeing the ground in front of you. ";
		if X is 14, say " that you have to support with your arms to stop them from slapping against your stomach. ";
		if X is 15, say " that ache from their own weight pulling them down. ";
		if X is 16, say " that flail wildly as you move. ";
		if X is 17, say ", larger than any realistic cup size, that are in danger of smacking you in the face painfully if you jump. ";
		if X is 18, say " that make you look like a poorly drawn hentai girl, and are making you weak at the knees even when just standing still. ";
		if X is 19, say " that are almost forcing you onto your hands and knees with their weight. ";
		if X is 20, say " that threaten to tip you off your feet at any moment. ";
	otherwise:
		say ". ".

[!<SayBreastKneelingDesc>+

REQUIRES COMMENTING

+!]
To say BreastKneelingDesc:
	if the weight of breasts > the largeness of breasts:
		let X be the largeness of breasts;
		if the latex-transformation of the player > 2, now X is 100;
		if X is 100, say " that wobble gently as they protrude straight forward from your chest, [if the latex-transformation of the player < 5]as if they are[otherwise]as they are[end if] made of latex and filled with air. ";
		if X < 6, say ". ";
		if X is 6, say " that wobble underneath you as you crawl. ";
		if X is 7, say " that hang and sway as you crawl. ";
		if X is 8, say " that are constantly distracting you as you try to crawl around. ";
		if X is 9, say " that get in the way of your elbows as you crawl. ";
		if X is 10, say " that keep bumping into each other and bouncing off each other as you crawl. ";
		if X is 11, say " that are forcing your chest and head closer to the ground, and pushing your ass into the air. ";
		if X is 12, say " that keep touching the ground as you crawl. ";
		if X is 13, say " that are so large, that your nipples keep rubbing against the ground as you crawl. ";
		if X is 14, say " that keep bouncing awkwardly and hitting the floor as you crawl. ";
		if X is 15, say " that ache from their weight and your continued attempts to keep them off the ground as you crawl. ";
		if X is 16, say " that drag across the floor as you crawl. ";
		if X is 17, say ", larger than any realistic cup size, that drag awkwardly along the floor as you crawl. ";
		if X is 18, say " that make you look a poorly drawn hentai girl, and drag painfully along the floor as you crawl. ";
		if X is 19, say " that you struggle to drag along the floor with you as you crawl. ";
		if X is 20, say " that are exhausting to shovel along the floor with you as you crawl. ";
	otherwise:
		say ". ".

[!<SayBreastFillDesc>+

REQUIRES COMMENTING

+!]
To say BreastFillDesc:
	if the milk volume of breasts is 0:
		say "";
	otherwise if the flesh volume of breasts + the air volume of breasts + the silicone volume of breasts > the milk volume of breasts * 2:
		say "The amount of [milk] they contain is small compared to the overall size of your breasts. ";
	otherwise if the flesh volume of breasts + the air volume of breasts + the silicone volume of breasts > the milk volume of breasts:
		say "They feel like they are holding a decent amount of [milk]. ";
	otherwise if the flesh volume of breasts + the air volume of breasts + the silicone volume of breasts is the milk volume of breasts or the flesh volume of breasts + the air volume of breasts + the silicone volume of breasts > the milk volume of breasts / 2:
		say "They feel like they are bloated with [milk]. ";
	otherwise:
		say "They feel like they are extremely bloated with [milk]. ";
	if the silicone volume of breasts is 0:
		say "";
	otherwise if the flesh volume of breasts + the air volume of breasts + the milk volume of breasts > the silicone volume of breasts * 2:
		say "They contain a pair of small silicone implants. ";
	otherwise if the flesh volume of breasts + the air volume of breasts + the milk volume of breasts > the silicone volume of breasts:
		say "They contain a pair of decently sized silicone implants. ";
	otherwise if the flesh volume of breasts + the air volume of breasts + the milk volume of breasts is the silicone volume of breasts or the flesh volume of breasts + the air volume of breasts + the milk volume of breasts > the silicone volume of breasts / 2:
		say "They contain [if the silicone volume of breasts > 12]extremely large[otherwise if the silicone volume of breasts > 8]large[otherwise]medium sized[end if] silicone implants. ";
	otherwise:
		say "The vast majority of your bust can be attributed to your [if the silicone volume of breasts > 12]extremely large[otherwise if the silicone volume of breasts > 8]large[otherwise]decently sizeable[end if] silicone implants. ";
	if the air volume of breasts is 0:
		say "";
	otherwise if the flesh volume of breasts + the milk volume of breasts + the silicone volume of breasts > the air volume of breasts * 2:
		say "They are slightly inflated with air. ";
	otherwise if the flesh volume of breasts + the milk volume of breasts + the silicone volume of breasts > the air volume of breasts:
		say "They are inflated with a decent amount of air. ";
	otherwise if the flesh volume of breasts + the milk volume of breasts + the silicone volume of breasts is the air volume of breasts or the flesh volume of breasts + the milk volume of breasts + the silicone volume of breasts > the air volume of breasts / 2:
		say "They are ballooned with a huge amount of air. ";
	otherwise:
		say "They are ballooned with a massive amount of air. ".

To say BreastLactationRate:
	let R be the lactation rate of the player;
	if R > 0, say "The [if R < 2]sporadic tingling[otherwise if R < 4]occasional itch[otherwise if R < 6]recurrent tickling[otherwise if R < 8]persistent prickling[otherwise]incessant throbbing[end if] in your [if the largeness of breasts < 5][one of]breasts[or]boobs[or]tits[in random order][otherwise][one of]titties[or]jugs[or]udders[in random order][end if] warns you when you're about to [if R < 3]leak a few drops of milk[otherwise if R < 5]squirt your next cup of cream[otherwise if R < 7]pour your next pint of dairy[otherwise if R < 9]start spraying quarts of moo juice[otherwise]gush another gallon of nipple nectar[end if]. ".

[!<SayBreastWeight>+

REQUIRES COMMENTING

+!]
To say BreastWeight:
	let W be the weight of breasts;
	if the largeness of breasts > 2:
		if the sensitivity of breasts >= 10:
			say "They are extremely sensitive to the touch, similar to [if the player is not possessing a vagina]the underside of the tip of a penis[otherwise]your clitoris[end if], and you can feel them almost craving to feel a [manly-penis] rubbing in between them.";
		otherwise if the sensitivity of breasts > 6:
			say "They are sensitive to the touch, with any contact stimulating you just like an ordinary sex organ.";
		otherwise if the sensitivity of breasts > 2:
			say "They are a little sensitive to the touch, and when something rubs against them, it makes you feel light-headed and fuzzy inside, as if it was one big nipple.";
		if W < -6:
			say "They weigh significantly less than air and are trying to pull you up off the ground like a pair of helium balloons. [if the largeness of breasts > 7 and the number of worn bras is 0]They are floating in front of your face, obscuring your vision. [end if]";
		otherwise if W < 0:
			say "They are lighter than air, gently rising upwards from your chest. ";
		otherwise if W < 3:
			say "They are essentially weightless. ";
		otherwise if W < 9:
			say "They are a bit heavy. ";
		otherwise if W < 15:
			say "They are weighing you down a noticeable amount, but it could be worse. ";
		otherwise if W < 21:
			say "They are weighing you down to the point where it's a constantly noticeable burden. ";
		otherwise if W < 27:
			say "They are weighing you down a lot, your back is not happy! ";
		otherwise if W < 33:
			say "They are ridiculously heavy, and you can't help but lean forward as they pull your upper body towards the ground. ";
		otherwise:
			say "They are much heavier than any real world breasts ever would be. [if the player is upright]Normal walking is out of the question, you are going to have to kneel down and rest every few minutes. [end if]".

[!<SayBreastModesty>+

REQUIRES COMMENTING

+!]
To say BreastModesty:
	if breasts is lewdly exposed:
		if there is a worn breast covering top-placed clothing:
			say "Your chest is clearly visible through your [ShortDesc of random worn breast covering top-placed clothing]. ";
		otherwise if there is a worn nipple covering top-placed clothing:
			say "Your nipples are clearly visible through your [ShortDesc of random worn breast covering clothing]. ";
		otherwise:
			say "They are completely uncovered, on display for anyone who wants to [if the bimbo of the player < 5]perv on[otherwise if the bimbo of the player < 10]ogle at[otherwise]get intimate with[end if] them. ";
	otherwise if breasts is at least partially lewdly exposed:
		if there is a worn breast covering top-placed clothing:
			say "Your chest is partially visible through your [ShortDesc of random worn breast covering top-placed clothing]. ";
		otherwise if there is a worn nipple covering top-placed clothing:
			say "Your nipples are clearly visible through your [ShortDesc of random worn nipple covering top-placed clothing]. ";
	otherwise if breasts are not at least partially exposed:
		say "[BreastsTheyAre] hidden safely behind your [ShortDesc of random worn actually dense nipple covering clothing]. ";
	otherwise if the player is female:
		say "[BreastsTheyAre] so flat that you could be mistaken for a man. This does mean that it's not particularly outrageous for your nipples to be on display. ";

[!<SayBreastCupNumber>+

REQUIRES COMMENTING

+!]
To say BreastCup (M - a number):
	if M <= 1, say "flat chest";
	if M is 2, say "AA cup";
	if M is 3, say "A cup";
	if M is 4, say "B cup";
	if M is 5, say "C cup";
	if M is 6, say "D cup";
	if M is 7, say "DD cup";
	if M is 8, say "E cup";
	if M is 9, say "F cup";
	if M is 10, say "G cup";
	if M is 11, say "GG cup";
	if M is 12, say "H cup";
	if M is 13, say "HH cup";
	if M is 14, say "JJ cup";
	if M is 15, say "KK cup";
	if M is 16, say "L cup";
	if M is 17, say "massive";
	if M is 18, say "ridiculous";
	if M is 19, say "comical";
	if M >= 20, say "impossibly huge".


Part 3 - Modify Breast Size


[!<PersonIsOverbusted>+

REQUIRES COMMENTING

+!]
Definition: a person (called P) is overbusted:
	let Z be 11;
	if extreme proportions fetish is 1, now Z is 20;
	decrease Z by max breast size points;
	if the largeness of breasts > Z, decide yes;
	decide no.

[!<BustUpX>+

REQUIRES COMMENTING

+!]
To Bustup (X - a number):
	let B be the largeness of breasts;
	if the player is a flatchested trap or diaper quest is 1, now X is 0;
	while X > 0:
		decrease X by 1;
		if there is a restricting salve covering breasts:
			say "[one of]You feel your [BreastDesc] try to grow, but the salve of restriction stops them from changing size![or][or][or][or][or][in random order]";
			now X is 0;
		otherwise if the player is top heavy and inflation fetish is 1 and the air volume of breasts > 0:
			let Z be 0;
			if fast breast expansion is 0 and extreme proportions fetish is 0, now Z is 1;
			if fast breast expansion is 0 and extreme proportions fetish is 1, now Z is a random number from 1 to 2;
			if fast breast expansion is 1 and extreme proportions fetish is 0, now Z is a random number from 1 to 2;
			if fast breast expansion is 1 and extreme proportions fetish is 1, now Z is 2;
			if the air volume of breasts < Z, now Z is the air volume of breasts;
			increase the flesh volume of breasts by Z;
			decrease the air volume of breasts by Z;
		otherwise if the player is top heavy and lactation fetish is 1 and the milk volume of breasts > the flesh volume of breasts:
			let Z be 0;
			if fast breast expansion is 0 and extreme proportions fetish is 0, now Z is 1;
			if fast breast expansion is 0 and extreme proportions fetish is 1, now Z is a random number from 1 to 2;
			if fast breast expansion is 1 and extreme proportions fetish is 0, now Z is a random number from 1 to 2;
			if fast breast expansion is 1 and extreme proportions fetish is 1, now Z is 2;
			if the milk volume of breasts < Z, now Z is the milk volume of breasts;
			increase the flesh volume of breasts by Z;
			decrease the milk volume of breasts by Z;
			MilkUp Z;
		otherwise if the player is not top heavy:
			let Z be 0;
			if fast breast expansion is 0 and extreme proportions fetish is 0, now Z is 1;
			if fast breast expansion is 0 and extreme proportions fetish is 1, now Z is a random number from 1 to 2;
			if fast breast expansion is 1 and extreme proportions fetish is 0, now Z is a random number from 1 to 2;
			if fast breast expansion is 1 and extreme proportions fetish is 1, now Z is 2;
			increase the flesh volume of breasts by Z;
		otherwise:
			say "[one of]You feel your breasts try to grow, but apparently they can't get any bigger![or][or][or][or][or][in random order]";
			now X is 0;
	if the largeness of breasts > B:
		say "Your breasts have visibly [one of]grown[or]swelled[or]expanded[at random] into [ShortDesc of breasts].";
		if the largeness of breasts is 1:
			if the bimbo of the player < 8, say "[one of][line break][first custom style][line break]Woah, am I getting boobs?[roman type][line break][or][stopping]";
			otherwise say "[one of][line break][second custom style][line break]Oooh, I'm growing tits![roman type][line break][or][stopping]";
			if the player is male, cutshow figure of body reaction 1 for breasts;
		if the largeness of breasts is 3:
			if the bimbo of the player < 8, say "[one of][line break][first custom style][line break][if the player is sexed male]Yep, I'm definitely[otherwise]Wow, I'm[end if] growing boobs...[roman type][line break][or][stopping]";
			otherwise say "[one of][line break][second custom style][line break]I can't wait to see what I look like with huge tits![roman type][line break][or][stopping]";
			if the player is male, cutshow figure of body reaction 2 for breasts;
		if the largeness of breasts is 5:
			if the bimbo of the player < 8, say "[one of][line break][first custom style][line break]Okay, these boobs are getting worryingly big now...[roman type][line break][or][stopping]";
			otherwise say "[one of][line break][second custom style][line break]My boobs keep growing...[roman type][line break][or][stopping]";
		if the largeness of breasts is 10:
			if the bimbo of the player < 12, say "[one of][line break][first custom style][line break]Surely my boobs can't get any bigger?![roman type][line break][or][stopping]";
			otherwise say "[one of][line break][second custom style][line break]Tee hee, my tits are MASSIVE...[roman type][line break][or][stopping]";
		if the largeness of breasts is 15:
			if the bimbo of the player < 15:
				say "[one of][line break][first custom style][line break]My back is going to break if these ridiculous boobs get any bigger![roman type][line break][or][stopping]";
				cutshow figure of body reaction 14 for breasts;
			otherwise:
				say "[one of][line break][second custom style][line break]*giggle* My tits are just ridiculously huge! I wonder if they can grow any bigger?[roman type][line break][or][stopping]";
				cutshow figure of body reaction 15 for breasts;
		compute bra strain;
		update appearance level;
	if the player is overbusted, say "[one of][bold type]BustUp function has increased breasts to larger than max size. Please report bug with as much information as possible about the situation.[roman type][line break][or][stopping]".



[!<SetRealBreastSize>+

REQUIRES COMMENTING

+!]
To Set Real Breast Size:
	let O be the real flesh volume of breasts;
	increase O by the silicone volume of breasts;
	if O < 16:
		now the real largeness of breasts is (O + 2) / 2;
	otherwise if O < 19:
		now the real largeness of breasts is 9;
	otherwise if O < 22:
		now the real largeness of breasts is 10;
	otherwise if O < 25:
		now the real largeness of breasts is 11;
	otherwise if O < 28:
		now the real largeness of breasts is 12;
	otherwise if O < 44:
		now the real largeness of breasts is (O + 24) / 4;
	otherwise if O < 50:
		now the real largeness of breasts is 17;
	otherwise if O < 58:
		now the real largeness of breasts is 18;
	otherwise if O < 70:
		now the real largeness of breasts is 19;
	otherwise:
		now the real largeness of breasts is 20;
	if the real largeness of breasts > 10 and extreme proportions fetish is 0, now the real largeness of breasts is 10.

[!<BustDownX>+

REQUIRES COMMENTING

+!]
To Bustdown (X - a number):
	while X > 0:
		decrease X by 1;
		2Bustdown;

[!<boobShrinkFlav:Integer>*

REQUIRES COMMENTING

*!]
boobshrinkflav is a number that varies.

[!<2BustDown>+

REQUIRES COMMENTING

+!]
To 2Bustdown:
	if the flesh volume of breasts is 0:
		say "Your boobs['] attempt to shrink fails because [if the milk volume of breasts is 0 and the air volume of breasts is 0]you have a flat chest[otherwise]you would have a flat chest if your breasts weren't filled with [end if][if the milk volume of breasts > 0][milk][end if][if the milk volume of breasts > 0 and the air volume of breasts > 0] and [end if][if the air volume of breasts > 0]air[end if]!";
	otherwise if there is a restricting salve covering breasts:
		say "[one of]You feel your [BreastDesc] try to shrink, but the salve of restriction stops them from changing size![or][or][or][or][or][in random order]";
	otherwise if the flesh volume of breasts <= the real flesh volume of breasts:
		if boobshrinkflav is 0, say "[if the faint count of the player is 0]Your boobs refuse to shrink. [one of]What could that mean?[or][stopping][otherwise]Your boobs refuse to shrink. [one of]Oh dear, that must mean your real world breasts have now grown to this size![or]They won't go smaller than your real world size![stopping][end if]";
		now boobshrinkflav is 1;
	otherwise:
		decrease the flesh volume of breasts by 1;

To decide which number is the milk capacity of (B - breasts):
	let F be the flesh volume of breasts * 2;
	if F > 40, decide on 40;
	decide on F.

[!<MilkUpX>+

REQUIRES COMMENTING

+!]
To Milkup (X - a number):
	if the player is a flatchested trap or lactation fetish is 0, now X is 0;
	if the latex-transformation of the player > 5, now X is 0;
	let old-B be the largeness of breasts;
	while X > 0:
		decrease X by 1;
		if the milk volume of breasts < the milk capacity of breasts:
			2MilkUp; [This is the player's breasts silently filling up with milk.]
		otherwise if the player is top heavy and X is 1: [This is only done for the final unit of milk]
			increase the milk volume of breasts by 1;
			trigger lactation; [We have filled the player's breasts beyond legal capacity so we trigger lactation, which will empty some of it.]
		otherwise if the player is top heavy:
			increase the milk volume of breasts by 1; [When temporarily overfilling beyond legal capacity, we don't want to break any bras that are suddenly "too small" so we don't use 2MilkUp]
		otherwise:
			2Milkup; [We do this if the player's breast flesh is completely full of milk but the breasts are still allowed to grow.]
			increase the flesh volume of breasts by 1;
			update appearance level;
	if old-B < the largeness of breasts:
		say "Your breasts are forced to grow into [ShortDesc of breasts] to contain all the milk!";
		unless last-lactated-time - earnings < 60, trigger lactation; [Don't want to cause lactation super frequently]
	if the milk volume of breasts >= the milk capacity of breasts and a random number between 1 and 2 is 1 and (the milk volume of breasts > 5 or the player is top heavy), say "[one of][variable custom style]I really need a [if the bimbo of the player > 5]good [end if]milking![roman type][line break][or][or][cycling]".


[!<2MilkUp>+

REQUIRES COMMENTING

+!]
To 2Milkup:
	let X be 0;
	if fast breast expansion is 0 and extreme proportions fetish is 0, now X is 1;
	if fast breast expansion is 0 and extreme proportions fetish is 1, now X is a random number from 1 to 2;
	if fast breast expansion is 1 and extreme proportions fetish is 0, now X is a random number from 1 to 2;
	if fast breast expansion is 1 and extreme proportions fetish is 1, now X is 2;
	increase the milk volume of breasts by X;
	compute bra strain;

[!<MilkDownX>+

REQUIRES COMMENTING

+!]
To Milkdown (X - a number):
	while X > 0:
		decrease X by 1;
		2Milkdown;

[!<2MilkDown>+

REQUIRES COMMENTING

+!]
To 2Milkdown:
	if the milk volume of breasts > 0:
		decrease the milk volume of breasts by 1;
		increase the lactation-count of the player by 1;

[!<BustInflateX>+

REQUIRES COMMENTING

+!]
To BustInflate (X - a number):
	if the number of worn research airhancers > 0, increase X by 1;
	now X is X * 2;
	if the player is a flatchested trap, now X is 0;
	let previous-weight be the weight of breasts;
	while X > 0:
		decrease X by 1;
		if the player is not top heavy and inflation fetish is 1, increase the air volume of breasts by 1;
	compute bra strain;
	update appearance level;
	if previous-weight > -6 and the weight of breasts < -5 :
		say "Your [BreastDesc] are now significantly lighter than air! You can constantly feel their pull, trying to lift you up off the ground.";
	otherwise if previous-weight > -1 and the weight of breasts < 0:
		say "Your [BreastDesc] are now lighter than air! They gently try to rise from your body like two helium balloons glued to your chest.";
	otherwise if previous-weight > 0 and the weight of breasts is 0:
		say "Your [BreastDesc] are now weightless! They seem to ignore the effects of gravity and now constantly wobble.";
	if the player is overbusted, say "[one of][bold type]BustInflate function has increased breasts to larger than max size. Please report bug with as much information as possible about the situation.[roman type][line break][or][stopping]";

[!<BustDeflateX>+

REQUIRES COMMENTING

+!]
To BustDeflate (X - a number):
	while X > 0:
		decrease X by 1;
		if the air volume of breasts > 0, decrease the air volume of breasts by 1;

[!<BustImplantsUpX>+

REQUIRES COMMENTING

+!]
To BustImplantsUp (X - a number):
	if the player is a flatchested trap, now X is 0;
	let attempt-done be 0;
	while X > 0:
		decrease X by 1;
		if the player is not top heavy:
			increase the silicone volume of breasts by 1;
		otherwise if the air volume of breasts > 0:
			decrease the air volume of breasts by 1;
			increase the silicone volume of breasts by 1;
		otherwise if the milk volume of breasts > the flesh volume of breasts and attempt-done is 0:
			now attempt-done is 1;
			say "Your new [if the silicone volume of breasts > 0]and improved [end if]implants put such internal pressure on your [BreastDesc] that they instantly lactate!";
			trigger lactation;
			increase the silicone volume of breasts by 1;
		otherwise if attempt-done < 2:
			say "Your [BreastDesc] are just too big, the skin won't stretch any further! Your new [if the silicone volume of breasts > 0]and improved [end if]implants shrink under the pressure.";
			now attempt-done is 2;
		if X is 0:
			let C be a random worn cheerleader outfit;
			let L be a random off-stage rubber cheerleader outfit;
			if blue-rubber-cheerleader-outfit is off-stage, now L is blue-rubber-cheerleader-outfit;
			if C is a thing and L is a thing, transform C into L;
	compute bra strain;
	update appearance level;
	if the player is overbusted, say "[one of][bold type]BustImplants function has increased breasts to larger than max size. Please report bug with as much information as possible about the situation.[roman type][line break][or][stopping]";

[!<BustImplantsDownX>+

REQUIRES COMMENTING

+!]
To BustImplantsDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the silicone volume of breasts > 0, decrease the silicone volume of breasts by 1.

breastStimulationFlavAllowed is initially true.

To stimulate (X - breasts):
	if breasts is pushed over the edge:
		breasts orgasm shamefully;
	otherwise if the sensitivity of breasts >= 2 and the player is able to get horny:
		arouse (the square root of (the sensitivity of breasts * 1000)) * 10;
		if breastStimulationFlavAllowed is true:
			if the sensitivity of breasts >= 10:
				say "[one of]The nerves in your breasts explode with sensation! [if the player is possessing a vagina]Your [vagina] gushes with pleasure.[otherwise if the player is possessing a penis]Your [player-penis] twitches rapidly.[end if][or]Your entire body shudders with pleasure.[or]Sparks of pure euphoria fly through your brain.[or]Your super sensitive tits cause you to moan with pleasure.[at random]";
			otherwise if the sensitivity of breasts >= 6:
				say "[one of]Your breasts feel amazing. [if the player is possessing a vagina]Your [vagina] gets wetter.[otherwise if the player is possessing a penis]Your [player-penis] stirs gently.[end if][or][or][or]You close your eyes and shiver. it feels so good![or][or][or]Your super sensitive tits cause you to moan with pleasure.[or][or][or]You [if there is a worn chastity cage or the player is barbie]wish you could masturbate![otherwise]can't help but gently play with yourself, eyes rolling to the back of your head with pleasure.[end if][or][stopping]";
			otherwise:
				say "[one of]It actually feels quite pleasurable for you.[or][or][or]You realise you are breathing heavily. Are your breasts somehow getting more sensitive?[or][or][or]You let out an involuntary whimper. It actually feels good![or][or][or]You shiver as a wave of sexual pleasure flows through you.[or][stopping]".

Report going:
	let SB be the sensitivity of breasts;
	if SB > 5:
		let C be bottom level lactation cover;
		if C is clothing:
			let SM be 24;
			if C is fully covering, now SM is 19;
			if C is high cut, now SM is 20;
			if C is average cut, now SM is 21;
			if C is low cut, now SM is 22;
			if C is very low cut, now SM is 23;
			if SB * 3 > SM, now SM is SB * 3;
			if a random number between 5 and SM < SB:
				say "Your [ShortDesc of C] rubs against your [if SM < 24][BreastDesc] and [end if]sensitive nipples as you [if the player is upright]walk[otherwise]crawl[end if].";
				if a random number between 1 and 5 > 1, now breastStimulationFlavAllowed is false;
				stimulate breasts;
				now breastStimulationFlavAllowed is true;
		otherwise if the player is prone and SB > 7 and the largeness of breasts > 10:
			let SM be 24;
			if SB * 3 > SM, now SM is SB * 3;
			if a random number between 5 and SM < SB:
				say "Your sensitive nipples rub against the ground as you crawl.";
				if a random number between 1 and 5 > 1, now breastStimulationFlavAllowed is false;
				stimulate breasts;
				now breastStimulationFlavAllowed is true.



Section - Image for graphics window

The text-shortcut of breasts is "breasts".
Figure of CumBreastsButton is the file "Special/Buttons/cumbreasts.png".

To decide which figure-name is the examine-image of (T - breasts):
	if T is overglazed, decide on Figure of CumBreastsButton;
	decide on figure of no-image-yet.


Breasts ends here.

