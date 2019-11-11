Body Parts Definitions by Body Parts begins here.

[We keep track of major body parts separately as backdrops.]
[The player and the game may want to reference specific body parts of the body. These are defined here.]

[This is the default weight rule:
	now body-part-weight is 1.]

[!<BodyPart>@

REQUIRES COMMENTING

@inherits <Backdrop>

@!]
a body part is a kind of backdrop.

[!<Limb>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
a limb is a kind of body part.

[!<Flesh>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
a flesh is a kind of body part.

[!<Orifice>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
an orifice is a kind of body part.

[!<Fuckhole>@

REQUIRES COMMENTING

@inherits <Orifice>

@!]
a fuckhole is a kind of orifice. [Crotch orifices are called fuckholes, obviously]


[!<Fuckhole>@<soreness:Integer>*

REQUIRES COMMENTING

*@!]
a fuckhole has a number called soreness. The soreness of a fuckhole is usually 0.

[!<Fuckhole>@<tolerated:Integer>*

This value is a running counter of how much punishment a fuckhole has recently taken. If the hole is left alone long enough to recover some soreness, this value resets to 0, but if it is allowed to exceed one half the sex addiction value for this orifice, the player will have to roll to avoid losing some mental stats. See the Orifice Soreness extension by "Player".

*@!]
a fuckhole has a number called tolerated. The tolerated of a fuckhole is usually 0.

[!<Fuckhole>@<openness:Integer>*

REQUIRES COMMENTING

*@!]
a fuckhole has a number called openness. The openness of a fuckhole is usually 0.

[!<Fuckhole>@<realOpenness:Integer>*

REQUIRES COMMENTING

*@!]
a fuckhole has a number called real openness. The real openness of a fuckhole is usually 0.

[!<Fuckhole>@<previousSoreness:Integer>*

REQUIRES COMMENTING

*@!]
a fuckhole has a number called previous soreness.

[!<Fuckhole>@<previousOpenness:Integer>*

REQUIRES COMMENTING

*@!]
a fuckhole has a number called previous openness.

[!<Fuckhole>@<buildup:Integer>*

REQUIRES COMMENTING

*@!]
a fuckhole has a number called buildup.

To decide which number is the insertableGirthAcceptance of (F - a fuckhole):
	let T be 2 + diaper quest + ungape;
	if measurement tattoo is worn, increase T by 3;
	if diaper quest is 1 or ungape is 1:
		decide on (the sex addiction of the player / 3) + T;
	otherwise:
		decide on (the sex addiction of the player / 5) + the openness of F + T.

To fill (F - a fuckhole) times (X - a number):
	if F is asshole, AssFill X;
	otherwise PussyFill X.

[!<WhichNumberIsTheSemenVolumeOfFuckhole>+

REQUIRES COMMENTING

+!]
To decide which number is the semen-volume of (F - a fuckhole):
	if F is vagina , decide on the total volume of vagina;
	if F is asshole, decide on the semen volume of belly;
	decide on 0.

[!<FuckholeIsLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: a fuckhole is lewdly exposed if it is exposed.

To decide which number is the lewdly exposed outrage of (F - a fuckhole):
	let O be 16;
	if F is asshole and the semen volume of belly > 0, increase O by 2;
	if F is vagina and the semen volume of vagina > 0, increase O by 2;
	increase O by the openness of F / 5;
	decide on O.

[!<FuckholeIsAtLeastPartiallyLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: a fuckhole (called F) is at least partially lewdly exposed:
	if F is at least partially exposed, decide yes; [Plugs are not usable as modesty items]
	[if F is exposed and F is not actually occupied, decide yes; [Plugs are actually usable as modesty items]]
	decide no.

To decide which number is the at least partially lewdly exposed outrage of (F - a fuckhole):
	let O be 10;
	if F is asshole and the semen volume of belly > 0, increase O by 1;
	if F is vagina and the semen volume of vagina > 0, increase O by 1;
	increase O by the openness of F / 9; [only the most gaped orifices show through clothing]
	decide on O.

[!<GapeFuckholeTimesNumber>+

Increases the openness of the fuckhole "F". Should be implemented uniquely for each orifice.

@param <Fuckhole>:<F> The fuckhole being gaped

+!]
To gape (F - a fuckhole) times (X - a number):
	do nothing.

[!<RuinFuckhole>+

Calls the RuinFuckhole function with an argument of 1

@param <Fuckhole>:<F> The fuckhole being ruined

+!]
To ruin (F - a fuckhole):
	ruin F times 1.

[!<RuinFuckholeTimesNumber>+

Increases the soreness of a fuckhole "F" by a given number and handles all effects that should occur when a fuckhole gets sore.

@param <Fuckhole>:<F> The fuckhole being ruined
@param <Integer>:<X> The number of times to ruin F


+!]
To ruin (F - a fuckhole) times (X - a number):
	now the previous soreness of F is the soreness of F;
	unless F is vagina and the player is male, increase the buildup of F by 1;
	while X > 0:
		decrease X by 1;
		if the soreness of F > 8 and there is a worn cum dump's undergarment, now the soreness of F is 8; [undergarment prevents fainting from soreness]
		if F is orgasming:
			do nothing;
		otherwise if the buildup of F >= 20 and the soreness of F < 10:
			say "Regardless of how insensitive your [variable F] is, there's no way it can take an infinite fucking. Over time, you feel it getting slowly more and more sore...";
			now the soreness of F is 10;
			now the buildup of F is 0;
		otherwise if the soreness of F is 10 and X is 0 and there is an embodied thing penetrating F and for deposit only tattoo is not worn:
			check soreness fainting of F;
		let T be a random thing penetrating F;
		passively stimulate F from T;
		unless F is vagina and the player is male, RuinRoll F;
		if the previous soreness of F < 10 and the soreness of F is 10 and delayed fainting is 0, say RuinedFlav of F;
		now the previous soreness of F is the soreness of F.

[!<SayRuinedFlavOfFuckhole>+

REQUIRES COMMENTING

+!]
To say RuinedFlav of (F - a fuckhole):
	say "[bold type]Your [variable F] is completely and utterly ruined. You won't be able to think straight until it has healed at least a bit.[roman type][line break][one of][if sex fainting is 0][otherwise if there is a live thing penetrating F]If [FuckerDesc of random live thing penetrating F] keeps fucking you much longer, you'll be at risk of fainting.[otherwise]If anyone was to try and fuck your [variable F] now, you might faint.[end if][or][stopping][roman type][line break]".


[!<CheckSorenessFaintingOfFuckhole>+

REQUIRES COMMENTING

+!]
To check soreness fainting of (F - a fuckhole):
	if sex fainting is 1 or there is a futanari slutty sister penetrating F:
		let N be the raw anal sex addiction of the player;
		if F is vagina, now N is the raw vaginal sex addiction of the player;
		if the tolerated of F <=  N / 2:
			increase the tolerated of F by 1;
		otherwise:
			say "[one of]Your [variable F] is so sore that your mind can't take it any more. You feel yourself start to pass[or]You are on the verge of passing[stopping] out.[if debugmode > 0 and the raw delicateness of the player < 20]Do you want to steel your mind and power through (this will not change any stats because you are in debug mode)? [otherwise if the raw delicateness of the player < 20][line break]Do you want to steel your mind and attempt to power through (this will cause a slight increase in delicateness)? [end if]";
			if the raw delicateness of the player < 20 and the player is consenting:
				say "You steel your mind and manage to power through the intense feelings without fainting[if the delicateness of the player < 4][otherwise if the delicateness of the player < 8]. You whimper gently[otherwise if the delicateness of the player < 12]. You sob quietly[otherwise if the delicateness of the player < 16]. You can't help but cry[otherwise if diaper lover >= 1]. You bawl loudly like a baby[otherwise]. You bawl loudly[end if].";
				if debugmode is 0:
					PainUp 1;
					potentially despair about F sex;
			otherwise:
				if the raw delicateness of the player < 20, say "Your mind is too weak and the feelings are too intense, and you fail to stay conscious!";
				now delayed fainting is 1;
				IntDown 1;
				now the fainting reason of the player is 18;
	otherwise:
		increase sex-hurt-balance by 1;
		if sex-hurt-balance > 1:
			now sex-hurt-balance is 0;
			PainUp 1;
			potentially despair about F sex.

[!<sexHurtBalance:Integer>*

REQUIRES COMMENTING

*!]
sex-hurt-balance is a number that varies.

[!<PotentiallyDespairAboutFuckholeSex>+

REQUIRES COMMENTING

+!]
To potentially despair about (F - a fuckhole) sex:
	if the raw sex addiction of the player > the raw delicateness of the player:
		say "[one of]Your addiction to sex slightly decreases.[or]Your mind associates sex with pain, slightly reducing your opinion of it.[in random order] ";
		SilentlySexAddictDown 1;
		if F is asshole and the raw anal sex addiction of the player * 2 > the raw delicateness of the player, AnalSexAddictDown 1;
		if F is vagina and the raw vaginal sex addiction of the player * 2 > the raw delicateness of the player, VaginalSexAddictDown 1.


To trigger shameful orgasm of (F - a body part):
	vaginally orgasm shamefully.

To trigger shameful orgasm of (F - asshole):
	anally orgasm shamefully.

To trigger shameful orgasm of (F - breasts):
	breasts orgasm shamefully.

Definition: a body part (called F) is orgasming:
	if the player is extremely horny or F is pushed over the edge:
		trigger shameful orgasm of F;
		decide yes;
	decide no.

Definition: a fuckhole (called F) is orgasming:
	if for deposit only tattoo is not worn and (the player is extremely horny or F is pushed over the edge):
		trigger shameful orgasm of F;
		decide yes;
	decide no.


[!<HealFuckholeX>+

Reduces the soreness of a fuckhole by a given amount

@param <Fuckhole>:<F> The fuckhole being healed
@param <Integer>:<X> How much the fuckhole should be healed

!]
To heal (F - a fuckhole) times (X - a number):
	now the previous soreness of F is the soreness of F;
	let Y be X;
	while X > 0:
		decrease X by 1;
		if the soreness of F > 0:
			if Y is X - 1:
				say "Your [variable F] feels [if X > 2 and the soreness of F > 2]much [end if]less sore."; [We only say this once.]
				now the tolerated of F is 0;
			decrease the soreness of F by 1.

[A body part has a rule called weight-rule. body-part-weight is a number that varies. The weight-rule of body part is usually the default weight rule.]

[!<BodyPart>@<semenCoating:Integer>*

REQUIRES COMMENTING

*@!]
a body part has a number called semen coating.

[!<BodyPart>@<urineCoating:Integer>*

REQUIRES COMMENTING

*@!]
a body part has a number called urine coating.

[!<DecideWhichNumberIsTheDesireOfBodyPart>+

How much does the player want this body part to be used?

+!]
To decide which number is the desire of (B - a body part):
	decide on 0.

[!<BodyPart>@<desirability:Integer>*

How much do others want to use this body part for sex?

*@!]
a body part has a number called desirability.

[!<DecideWhichNumberIsTheWeightOfAThing>+

REQUIRES COMMENTING

+!]
To decide which number is the weight of (T - a thing):
	decide on 0.

Definition: A body part is glazed if the semen coating of it > 0.
Definition: A body part is overglazed if it is glazed.
Definition: hair is overglazed if the semen coating of it > 1.

[!<DecideWhichNumberIsTheWeightOfBodyPart>+

REQUIRES COMMENTING

+!]
[To decide which number is the weight of (B - a body part):
	follow the weight-rule of B;
	decide on body-part-weight.]

[!<SayShortDescOfBodyPart>+

REQUIRES COMMENTING

+!]
To say ShortDesc of (B - a body part):
	say "[printed name of B]".


[!<SayTotalDescOfBodyPart>+

REQUIRES COMMENTING

+!]
To say TotalDesc of (B - a body part):
	say "you have [ShortDesc of B].".

[!<BodyPartIsHeavy>+

REQUIRES COMMENTING

+!]
Definition: a body part (called F) is heavy:
	if the weight of F >= 10, decide yes;
	decide no.

[!<SayHeavyThings>+

REQUIRES COMMENTING

+!]
To say HeavyThings:
	let N be the number of heavy body parts;
	if N > 0:
		repeat with B running through heavy body parts:
			if N > 2, say "[ShortDesc of B], ";
			if N is 2, say "[ShortDesc of B] and ";
			if N is 1, say "[ShortDesc of B]";
			decrease N by 1;
	otherwise:
		say "heavy body parts".

[!<BodyPartIsLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: a body part is lewdly exposed: decide no.

[!<BodyPartIsAtLeastPartiallyLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: a body part is at least partially lewdly exposed: decide no.

To decide which object is the at least partial concealer of (C - a body part):
	decide on the concealer of C. [For most items there's no difference.]
To decide which object is the concealer of (C - a body part):
	decide on nothing.

Definition: a body part is exposed if the at least partial concealer of it is nothing.
Definition: a body part is at least partially exposed if the concealer of it is nothing.


To decide which number is the lewdly exposed outrage of (B - a body part):
	decide on 0. [not humiliating by default]
To decide which number is the at least partially lewdly exposed outrage of (B - a body part):
	let C be the lewdly exposed outrage of B - 4;
	if C < 0, decide on 0;
	decide on C.
To decide which number is the outrage of (B - a body part):
	let O be 0;
	if B is glazed and (B is exposed or (B is breasts and breasts is showing cleavage)), increase O by (the semen coating of B * 3); [the more cum, the more noticeable it is. quickly.]
	if B is lewdly exposed:
		now O is the lewdly exposed outrage of B + O;
	otherwise if B is at least partially lewdly exposed:
		now O is the at least partially lewdly exposed outrage of B + O;
	increase O by the unique outrage of B;
	if O > 20, decide on 20;
	if O < 0, decide on 0;
	decide on O.
To decide which number is the unique outrage of (B - a body part):
	decide on 0.
To decide which number is the cringe of (B - a body part):
	let C be the outrage of B;
	if C < 4, decide on 0;
	decide on C / 2. [if we haven't redefined it, then a bit less than the outrage should be a good estimate. Being naked is childish but it's not as childish as it is slutty.]


Report examining a body part:
	say "[input-style]Current outrageousness ([if the noun is lewdly exposed and (the noun is breasts or the noun is fuckhole)]lewdly exposed[otherwise if the noun is lewdly exposed]visible[otherwise if the noun is at least partially lewdly exposed]partially exposed[otherwise if the noun is exposed]visible[otherwise if the noun is breasts and breasts is showing cleavage]showing cleavage[otherwise if the noun is at least partially exposed]partially visible[otherwise]covered up[end if]): [outrage of the noun]/20[if diaper quest is 1][line break]Current babyishness: [cringe of the noun]/20[end if][roman type][line break]";

[!<BodyPartIsUnSoakedOrSoaked>+

REQUIRES COMMENTING

+!]
A body part can be unsoaked or soaked. A body part is usually unsoaked. [Used to track where we've already spread liquid movements to, so that recursive functions don't become infinite.]

[!<BodyPartIsOccupied>+

Appears to NPCs as if it's unavailable.

+!]
Definition: a body part is occupied:
	if it is actually occupied, decide yes;
	if it is fake occupied, decide yes;
	decide no.

[Can it be accessed right now with nothing blocking it?]
Definition: a body part is undefended: decide yes.



[!<BodyPartIsFakeOccupied>+

Some things can make an orifice 'appear' occupied to living things (not dildo traps etc.). E.g. salve of concealment.

+!]
Definition: a body part (called B) is fake occupied:
	repeat with C running through concealment salve covering B:
		unless C is cursed, decide yes;
	if pentagram tattoo is worn and B is vagina, decide yes;
	if there is an illusory kimono covering B, decide yes;
	decide no.

[!<BodyPartIsActuallyOccupied>+

Actually has something in it.

+!]
Definition: a body part is actually occupied:
	if there is a thing penetrating it, decide yes;
	decide no.

[!<YourselfIsExposed>+

Used by some NPCs to decide if they thing that the player is inappropriately dressed. Is something naughty showing?

+!]
Definition: yourself is exposed:
	if the player is not crotch covered or breasts is lewdly exposed, decide yes;
	decide no.

[!<YourselfIsCompletelyExposed>+

Used by some NPCs to decide if they thing that the player is inappropriately dressed. IS everything naughty showing?

+!]
Definition: yourself is completely exposed:
	if the player is not crotch covered and breasts is lewdly exposed, decide yes;
	decide no.

[!<YourselfIsNipplesExposed>+

Used by some NPCs to decide if they thing that the player is inappropriately dressed. Are nipples showing?

+!]
Definition: yourself is nipples exposed:
	repeat with B running through worn nipple covering clothing:
		unless B is top-displaced, decide no; [This one cares about lactation so we don't include dense here]
	decide yes.

[!<YourselfIsCrotchCovered>+

Is your crotch visible? (different from protected as skirts can help, kneeling & transparency matters)

+!]
Definition: yourself is crotch covered:
	if asshole is at least partially lewdly exposed, decide no;
	if vagina is at least partially lewdly exposed, decide no;
	if penis is at least partially lewdly exposed, decide no;
	decide yes.



Section - Image for graphics window


This is the body parts get focused rule:
	repeat with B running through overglazed body parts:
		focus-consider B.
The body parts get focused rule is listed in the focus finding rules.

To construct normal buttons for (T - a body part):
	if T is overglazed:
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of cum eating;
			now the ButtonCommand entry is "wipe [text-shortcut of T] with finger";
			now the ButtonColour entry is lightModeFullGreen;
			if face is actually occupied, now the ButtonColour entry is lightModeFullYellow;
			if face is not acceptableCumRag, now the ButtonColour entry is lightModeFullRed;
		repeat with C running through held clothing:
			if ButtonTableFull is 0 and (C is gloves or C is not worn) and the semen-soak of C + the urine-soak of C + the milk-soak of C < the soak-limit of C and C is acceptableCumRag:
				choose a blank row in the Table of Buttons;
				now the ButtonImage entry is examine-image of C;
				now the ButtonCommand entry is "wipe [text-shortcut of T] with [text-shortcut of C]";
				now the ButtonColour entry is lightModeFullGreen.



Body Parts Definitions ends here.

