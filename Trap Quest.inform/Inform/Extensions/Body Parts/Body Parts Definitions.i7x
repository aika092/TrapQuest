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

REQUIRES COMMENTING

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

[!<WhichNumberIsTheSemenVolumeOfFuckhole>+

REQUIRES COMMENTING

+!]
To decide which number is the semen-volume of (F - a fuckhole):
	if F is vagina , decide on the semen volume of vagina;
	if F is asshole, decide on the semen volume of belly;
	decide on 0.

[!<FuckholeIsLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: a fuckhole (called F) is lewdly exposed:
	if F is exposed, decide yes; [Plugs are not usable as modesty items]
	[if F is exposed and F is not actually occupied, decide yes; [Plugs are actually usable as modesty items]]
	decide no.

To decide which number is the lewdly exposed outrage of (F - a fuckhole):
	let O be 11;
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
	decide on the lewdly exposed outrage of F - 2. [allows us to easily tweak this number]

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
	increase the buildup of F by 1;
	while X > 0:
		decrease X by 1;
		if the soreness of F > 8 and there is a worn cum dump's undergarment, now the soreness of F is 8; [undergarment prevents fainting from soreness]
		if the number of worn for deposit only tattoos is 0 and the player is extremely horny or F is pushed over the edge:
			if F is vagina, vaginally orgasm shamefully;
			otherwise anally orgasm shamefully;
		otherwise if the buildup of F >= 20 and the soreness of F < 10:
			say "Regardless of how insensitive your [variable F] is, there's no way it can take an infinite fucking. Over time, you feel it getting slowly more and more sore...";
			now the soreness of F is 10;
			now the buildup of F is 0;
		otherwise if the soreness of F is 10 and X is 0 and there is an embodied thing penetrating F and the number of worn for deposit only tattoos is 0:
			check soreness fainting of F;
		RuinRoll F;
		if the previous soreness of F < 10 and the soreness of F is 10 and delayed fainting is 0, say "[RuinedFlav of F]".

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

[!<BodyPart>@<desirability:Integer>*

REQUIRES COMMENTING

*@!]
a body part has a number called desirability.

[!<DecideWhichNumberIsTheWeightOfAThing>+

REQUIRES COMMENTING

+!]
To decide which number is the weight of (T - a thing):
	decide on 0.

[!<BodyPartIsGlazed>+

REQUIRES COMMENTING

+!]
Definition: A body part (called B) is glazed:
	if the semen coating of B > 0, decide yes;
	decide no.

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
Definition: a body part (called B) is lewdly exposed:
	decide no.

[!<BodyPartIsAtLeastPartiallyLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: a body part (called B) is at least partially lewdly exposed:
	decide no.

[!<BodyPartIsExposed>+

REQUIRES COMMENTING

+!]
Definition: a body part (called B) is exposed:
	decide yes.

[!<BodyPartIsAtLeastPartiallyExposed>+

REQUIRES COMMENTING

+!]
Definition: a body part (called B) is at least partially exposed:
	decide yes.


To decide which number is the lewdly exposed outrage of (B - a body part):
	decide on 0. [not humiliating by default]
To decide which number is the at least partially lewdly exposed outrage of (B - a body part):
	decide on 0. [not humiliating by default]
To decide which number is the outrage of (B - a body part):
	let O be 0;
	if B is exposed, increase O by the semen coating of B * 2;
	if B is lewdly exposed, decide on the lewdly exposed outrage of B + O;
	if B is at least partially lewdly exposed, decide on the at least partially lewdly exposed outrage of B + O;
	decide on O. [not humiliating by default]
To decide which number is the cringe of (B - a body part):
	let C be the outrage of B;
	if C < 4, decide on 0;
	decide on C - 3. [if we haven't redefined it, then a bit less than the outrage should be a good estimate. Being naked is childish but it's not as childish as it is slutty.]

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

[!<BodyPartIsFakeOccupied>+

Some things can make an orifice 'appear' occupied to living things (not dildo traps etc.). E.g. salve of concealment.

+!]
Definition: a body part is fake occupied:
	repeat with C running through concealment salve covering it:
		unless C is cursed, decide yes;
	if there is a pentagram tattoo covering it, decide yes;
	if there is an illusory kimono covering it, decide yes;
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


Include Desirability by Body Parts.



Body Parts Definitions ends here.

