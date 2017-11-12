Body Parts Definitions by Body Parts begins here.

[We keep track of major body parts separately as backdrops.]
[The player and the game may want to reference specific body parts of the body.  These are defined here.]

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

[A body part has a rule called weight-rule.  body-part-weight is a number that varies.  The weight-rule of body part is usually the default weight rule.]

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
	decide on 0.  [not humiliating by default]
To decide which number is the at least partially lewdly exposed outrage of (B - a body part):
	decide on 0.  [not humiliating by default]
To decide which number is the outrage of (B - a body part):
	let O be 0;
	if B is exposed, increase O by the semen coating of B * 2;
	if B is lewdly exposed, decide on the lewdly exposed outrage of B + O;
	if B is at least partially lewdly exposed, decide on the at least partially lewdly exposed outrage of B + O;
	decide on O.  [not humiliating by default]
To decide which number is the cringe of (B - a body part):
	let C be the outrage of B;
	if C < 4, decide on 0;
	decide on C - 3.  [if we haven't redefined it, then a bit less than the outrage should be a good estimate. Being naked is childish but it's not as childish as it is slutty.]

[!<BodyPartIsUnSoakedOrSoaked>+

REQUIRES COMMENTING

+!]
A body part can be unsoaked or soaked.  A body part is usually unsoaked.  [Used to track where we've already spread liquid movements to, so that recursive functions don't become infinite.]

[!<BodyPartIsOccupied>+

Appears to NPCs as if it's unavailable.

+!]
Definition: a body part is occupied:
	if it is actually occupied, decide yes;
	if it is fake occupied, decide yes;
	decide no.

[!<BodyPartIsFakeOccupied>+

Some things can make an orifice 'appear' occupied to living things (not dildo traps etc.).  E.g. salve of concealment.

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

Used by some NPCs to decide if they thing that the player is inappropriately dressed.  Is something naughty showing? 

+!]
Definition: yourself is exposed:
	if the player is not crotch covered or breasts is lewdly exposed, decide yes;
	decide no.

[!<YourselfIsCompletelyExposed>+

Used by some NPCs to decide if they thing that the player is inappropriately dressed.  IS everything naughty showing?

+!]
Definition: yourself is completely exposed:
	if the player is not crotch covered and breasts is lewdly exposed, decide yes;
	decide no.

[!<YourselfIsNipplesExposed>+

Used by some NPCs to decide if they thing that the player is inappropriately dressed.  Are nipples showing?

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
