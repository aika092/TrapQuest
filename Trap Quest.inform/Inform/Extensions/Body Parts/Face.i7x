Face by Body Parts begins here.

Part 1 - Definitions

[!<Face>@

REQUIRES COMMENTING

@inherits <Orifice>

@!]
face is an orifice. Face is everywhere. The printed name of face is "[if item described is occupied]mouth[otherwise]face[end if]". Understand "mouth", "blowjob", "oral", "oral sex", "fellatio", "cunnilingus", "blow job" as face. [This way 'offer/suggest blowjob/etc. is understood by the game] The text-shortcut of face is "face".
To say FullExamineDesc of (B - face):
	say "[ImageDesc of face][TotalDesc of face]".

[!<Face>@<previousMakeUp:Integer>*

REQUIRES COMMENTING

*@!]
Face has a number called previous make-up.

[!<Face>@<previousHairLength:Integer>*

REQUIRES COMMENTING

*@!]
Face has a number called previous hair length.

[!<Face>@<previousHairRedness:Integer>*

REQUIRES COMMENTING

*@!]
Face has a number called previous hair redness.

[!<Face>@<previousHairBrightness:Integer>*

REQUIRES COMMENTING

*@!]
Face has a number called previous hair brightness.

[!<Face>@<previousHairBlondeness:Integer>*

REQUIRES COMMENTING

*@!]
Face has a number called previous hair blondeness.

[!<Player>@<makeUp:Integer>*

REQUIRES COMMENTING

*@!]
Face has a number called make-up. [Min 0 Max 3 - A high number means slutty makeup.]

[!<Player>@<lips:Integer>*

REQUIRES COMMENTING

*@!]
Face has a number called lips.

[Can it be accessed right now with nothing blocking it?]
Definition: face is undefended if face is not actually occupied.

[!<facePresentableRules:Rulebook>*

REQUIRES COMMENTING

*!]
the face presentable rules is a rulebook.
the presentable rules of face is usually the face presentable rules.

To decide which object is the concealer of (F - face):
	decide on a random worn actually dense hood.

To decide which object is the at least partial concealer of (F - face):
	if face is listed in the armUses of arms, decide on arms;
	if there is a worn not-see-through hood, decide on a random worn not-see-through hood;
	if cultist veil is worn, decide on cultist veil;
	decide on nothing.

[!<TheUnableToSpeakToPresentRule>+

REQUIRES COMMENTING

+!]
[This is the not able to speak to present rule:
	if the player is not able to speak:
		if auto is 0, say "You can't do that whilst not able to speak!";
		rule fails.
The not able to speak to present rule is listed in the face presentable rules.]

[!<TheFaceOccupiedRule>+

REQUIRES COMMENTING

+!]
This is the face occupied rule:
	if face is actually occupied:
		if auto is 0, say "Your mouth is a bit full already, don't you think?";
		rule fails.
The face occupied rule is listed in the face presentable rules.

[!<TheTooMuchDignityToPresentFaceRule>+

REQUIRES COMMENTING

+!]
[This is the too much dignity to present face rule:
	if the humiliation of the player < HUMILIATION-PROUD + 2000 and debugmode < 1:
		if (the virgin of the player is 0 and the player is female) or (the analvirgin of the player is 0 and the player is male): [virgins can always attempt to preserve their virginity]
			if auto is 0, say "You have too much self respect to do that!";
			rule fails.
The too much dignity to present face rule is listed in the face presentable rules.]

[!<TheTooHornyToPresentFaceRule>+

REQUIRES COMMENTING

+!]
This is the too horny to present face rule:
	if the orifice soreness of the player < 7 and the analvirgin of the player is 0 and the player is horny and the virgin of the player is 0 or the player is male: [This way females can always present mouth to avoid virginity loss, and all players can present mouth to avoid anal virginity loss]
		if auto is 0 or there is an actually presentable fuckhole: [The automatic action rule does not care if you are horny, unless a fuckhole is actually presentable as well.]
			if the player is very horny:
				if auto is 0, say "You are too aroused and your [if the player is male][asshole] is[otherwise][vagina] and [asshole] are[end if] begging to be fucked; you can't bring yourself to do that!";
				rule fails.
The too horny to present face rule is listed in the face presentable rules.

[!<TheMonsterDoesNotDoOralRule>+

REQUIRES COMMENTING

+!]
This is the monster doesn't do oral rule:
	if auto is 1 and the number of willing to do oral monsters in the location of the player is 0, rule fails.
The monster doesn't do oral rule is listed in the face presentable rules.

[!<FaceIsUsableWithoutPenetration>+

REQUIRES COMMENTING

+!]
Definition: face is usable without penetration:
	if current-monster is requiring facial penetration, decide no;
	decide yes.

[!<MonsterIsRequiringFacialPenetration>+

REQUIRES COMMENTING

+!]
Definition: a monster is requiring facial penetration: decide yes.

[!<FaceIsExposed>+

REQUIRES COMMENTING

+!]
Definition: face is exposed:
	if there is a worn hood, decide no;
	decide yes.

Definition: face is lewdly exposed if it is exposed.

To decide which number is the lewdly exposed outrage of (F - face):
	if diaper quest is 1 and the make-up of face >= 3, decide on 2;
	let O be the make-up of face * 2;
	increase O by the lips of face * 2;
	increase O by alcohol-level * 3;
	decide on O.

To decide which number is the cringe of (F - face):
	let O be alcohol-level * 3;
	if F is exposed:
		if the make-up of face >= 3, increase O by 4;
	decide on O.

[!<DecideWhichNumberIsTheDesireOfFace>+

How much does the player want this body part to be used?

+!]
To decide which number is the desire of (B - face):
	decide on the oral sex addiction of the player.

This is the plushlip blowjob slut rule:
	increase the desirability of face by 2 * the lips of face.
The plushlip blowjob slut rule is listed in the blowjob slut eligibility rules.

Part 2 - Description

[!<SayShortDescOfFace>+

REQUIRES COMMENTING

+!]
To say ShortDesc of (F - face):
	if the make-up of face is 0, say "plain";
	if the make-up of face is 1, say "lightly made up";
	if the make-up of face is 2, say "heavily made up";
	if the make-up of face is 3, say "[if diaper quest is 1 and permanent makeup is 1]frozen kawaii[otherwise if diaper quest is 1]messily made up[otherwise]whore painted[end if]";
	if the semen coating of face > 7:
		say ", cum plastered";
	otherwise if the semen coating of face > 4:
		say ", partially cum-covered";
	otherwise if the semen coating of face > 0:
		say ", creamed";
	if the lips of face is 1:
		say " big-lipped";
	otherwise if the lips of face > 1:
		say " whore-lipped";
	say " face".

[!<SayMediumDescOfFace>+

REQUIRES COMMENTING

+!]
To say MediumDesc of (F - face):
	let A be alcohol-level;
	if A > 2:
		say "wasted ";
	otherwise if A > 1:
		say "drunken ";
	otherwise if A > 0:
		say "tipsy ";
	say ShortDesc of face.

[!<SayTotalDescOfFace>+

REQUIRES COMMENTING

+!]
To say TotalDesc of face:
	say "You have [LipDesc], and ";
	if the semen coating of face > 7:
		say "your face [MakeUpDesc][if the make-up of face is 0] but is completely covered in [semen].[otherwise]. It is also completely plastered in [semen]![end if]";
	otherwise if the semen coating of face > 4:
		say "your face [MakeUpDesc] and is dripping with [semen].";
	otherwise if the semen coating of face > 0:
		say "your face [MakeUpDesc] and has a few lines of [semen] slowly dripping off it.";
	otherwise:
		say "your face [MakeUpDesc].";
	let A be alcohol-level;
	if A > 0, say "[if A > 2]Your expression is one of someone who is pretty much off [his of the player] tits with intoxication, and at risk of going completely off the rails if [he of the player] has any more[otherwise if A > 1]Your vacant expression is one of someone who is rather drunk[otherwise]It's easy to tell you're a bit tipsy just by looking at your glazed-over eyes[end if].";
	if the number of things penetrating face > 0 or the latex-transformation of the player > 6:
		let B be a random thing penetrating face;
		if the latex-transformation of the player > 6:
			say "Your rubber mouth[if B is gag], currently occupied by a [ShortDesc of B],[end if] has no tongue or inner moisture, permanently open and fixed in a submissive O-shape.";
		otherwise:
			say "Your mouth is currently occupied by a [ShortDesc of B].".

[!<SayMakeUpDesc>+

REQUIRES COMMENTING
Just a note: I double checked my spelling dictionary, which includes American spelling. It's make-up, not makeup or make up. (Selkie)

+!]
To say MakeUpDesc:
	if the make-up of face is 0, say "is essentially make-up free";
	if the make-up of face is 1, say "is decorated with some make-up, as if you were going out for the night";
	if the make-up of face is 2, say "is covered in a large amount of make-up,[one of] giving you a face that demands attention[or] drawing attention to your face[purely at random]";
	if the make-up of face is 3:
		if diaper quest is 1:
			if permanent makeup is 1, say "is covered in heavy kawai make-up with white hearts on the cheeks and is fixed in a vacant expression";
			otherwise say "is smothered in overdone make-up, which looks like it was done by a three-year-old";
		otherwise:
			say "is smothered in overdone make-up, which [one of]gives you an almost doll-like face[or]encourages men to treat you like a slut[or]most men would take as a signal that you're an easy lay[or]is begging for all the [if the bimbo of the player < 12]wrong[otherwise][line break][second custom style]right[roman type][line break][end if] sorts of attention[or]makes you look like a total [whore][purely at random]".

[!<SayLipDesc>+

REQUIRES COMMENTING

+!]
To say LipDesc:
	if diaper quest is 1:
		say "lips";
	otherwise:
		if the lips of face is 0:[default]
			say "[if the player is male][one of]narrow[or]unremarkable[at random][otherwise][one of]slender[or]delicate[at random][end if]";
		if the lips of face is 1:
			say "[one of]flared[or]full[or][if artificial enhancements fetish is 1]pouting[otherwise]big[end if][or]well-developed[at random]";
		if the lips of face is 2:[maximum for vanilla players]
			say "[if artificial enhancements fetish is 1][one of]beestung[or]plush[or]plump[or]fleshy[at random][otherwise][one of]plush[or]dick sucking[or]pouting[at random][end if]";
		if the latex-transformation of the player > 6:
			say "[one of]plastic[or]upholstered[or]pillowy[or]padded[at random]";[lips are fixed at 3.]
		otherwise if the lips of face > 2:
			say "[one of]swollen[or]oversized[or]huge[or]corpulent[or]augmented[at random] dick sucking";
		say " lips".

Part 3 - Modify Face Stats

[!<FaceUpX>+

REQUIRES COMMENTING

+!]
To FaceUp (X - a number):
	now the previous make-up of face is the make-up of face;
	while X > 0:
		decrease X by 1;
		if the make-up of face < 3, increase the make-up of face by 1;
	update appearance level.

[!<FaceDownX>+

REQUIRES COMMENTING

+!]
To FaceDown (X - a number):
	now the previous make-up of face is the make-up of face;
	while X > 0:
		decrease X by 1;
		if face is temporarily made up:
			decrease the make-up of face by 1;
	update appearance level.

Definition: face is permanently made up if the class of the player is silicone queen or Permanent MakeUp is 1 or the latex-transformation of the player >= 7.
Definition: face is temporarily made up if the make-up of face > 0 and face is not permanently made up.

[!<permanentMakeUp:Integer>*

REQUIRES COMMENTING

*!]
Permanent MakeUp is a number that varies. Permanent MakeUp is 0.

[!<LipsUpX>+

REQUIRES COMMENTING

+!]
To LipsUp (X - a number):
	while X > 0:
		decrease X by 1;
		if the lips of face < 2 + artificial enhancements fetish:
			increase the lips of face by 1;
			if X is 0:
				display lips cutscene;
	update appearance level.

To display lips cutscene:
	if the lips of face is 1, cutshow figure of lips cutscene 1 for face;
	if the lips of face is 2:
		if the bimbo of the player < 9, cutshow figure of lips cutscene 2a for face;
		otherwise cutshow figure of lips cutscene 2b for face;
	if the lips of face is 3, cutshow figure of lips cutscene 3 for face.

Section - Image for graphics window

Understand "my face", "visage", "mouth", "lips" as face. Figure of cum eating is the file "Special/Buttons/mouth.jpg".

[examine-image is documented in Necessary Figures]

Face ends here.
