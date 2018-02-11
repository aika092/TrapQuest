Penis by Body Parts begins here.

Part 1 - Definitions

[!<Penis>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
penis is a body part. penis is everywhere. The description of penis is "[if the player is male][TotalDesc of penis][PenisModesty][otherwise]You don't have a penis.[end if]".

Understand "prick", "willy", "pecker", "clitty", "noodle", "dickie", "winky", "weeny", "cock", "dick", "bellend", "dong", "johnson", "wang", "weiner" as penis.

[!<Penis>@<size:Integer>*

REQUIRES COMMENTING

*@!]
penis has a number called size. the size of penis is usually 0.

[!<Penis>@<realSize:Integer>*

REQUIRES COMMENTING

*@!]
penis has a number called real size. The real size of penis is usually 0.

[!<PenisIsTiny>+

REQUIRES COMMENTING

+!]
Definition: penis is tiny:
	if the size of penis > 0 and the size of penis < 4, decide yes;
	decide no.

[!<PenisIsLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: penis is lewdly exposed:
	if penis is exposed, decide yes;
	decide no.

To decide which number is the lewdly exposed outrage of (P - penis):
	decide on 12 - the size of penis. [allows us to easily tweak this number]

[!<PenisIsAtLeastPartiallyLewdlyExposed>+

REQUIRES COMMENTING

+!]
Definition: penis is at least partially lewdly exposed:
	if penis is at least partially exposed, decide yes;
	decide no.

To decide which number is the at least partially lewdly exposed outrage of (P - penis):
	decide on 10 - the size of penis. [allows us to easily tweak this number]

[!<PenisIsExposed>+

REQUIRES COMMENTING

+!]
Definition: penis is exposed:
	if the size of penis <= 0, decide no;
	if there is a worn actually at least partially penis covering clothing, decide no;
	decide yes.

[!<PenisIsAtLeastPartiallyExposed>+

REQUIRES COMMENTING

+!]
Definition: penis is at least partially exposed:
	if the size of penis <= 0, decide no;
	if there is a worn actually penis covering clothing, decide no;
	decide yes.

[!<PenisIsSexAvailable>+

REQUIRES COMMENTING

+!]
Definition: penis is sex available:
	if there is a worn restricting research airhancer, decide no;
	if there is a worn chastity cage, decide no;
	if there is a worn condom of kings, decide no;
	decide yes.

[!<PenisIsSexVulnerable>+

REQUIRES COMMENTING

+!]
Definition: penis is sex vulnerable:
	if there is a worn potentially penis covering clothing, decide no;
	if penis is sex available, decide yes;
	decide no.

[!<ClothingIsPotentiallyPenisCovering>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is potentially penis covering:[does not check if penis is visible, only if it is covered by something.]
	if C is potentially pussy covering clothing, decide yes;
	if C is skirted clothing:
		if the number of worn crotch-in-place undies > 0, decide yes;[your penis is propped up, so it's concealed by all skirts.]
		if C is not super-short and C is not short, decide yes; [long skirts protect against exposure]
		if the player is upright and C is not super-short and the size of penis < 4, decide yes; [short skirts protect against exposure as long as you're standing and have a small penis]
	decide no.

[!<ClothingIsActuallyPenisCovering>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is actually penis covering:
	unless C is potentially penis covering, decide no;
	if C is actually dense, decide yes;
	decide no.

[!<ClothingIsActuallyAtLeastPartiallyPenisCovering>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is actually at least partially penis covering:
	unless C is potentially penis covering, decide no;
	if C is not see-through, decide yes;
	decide no.

[!<DecideWhichNumberIsMinPenisSize>+

REQUIRES COMMENTING

+!]
To decide which number is min penis size:
	if min penis size points is 0, decide on diaper quest;
	decide on min penis size points + diaper quest + micro-choice.

Part 2 - Description

[!<SayShortDescOfPenis>+

REQUIRES COMMENTING

+!]
To say ShortDesc of penis:
	say "[PenisFlavour the size of penis]".

[!<SayMediumDescOfPenis>+

Less brief details (size, exposure)

+!]
To say MediumDesc of (P - penis):
	say "[if penis is lewdly exposed]fully exposed [otherwise if penis is at least partially lewdly exposed]slightly visible [otherwise if penis is not exposed]concealed [end if][ShortDesc of penis]".

[!<SayRealDescOfPenis>+

REQUIRES COMMENTING

+!]
To say RealDesc of penis:
	say "[PenisFlavour the real size of penis]".

[!<SayRealPenisDesc>+

REQUIRES COMMENTING

+!]
To say RealPenisDesc:
	say RealDesc of penis.

[!<SayPenisFlavourNumber>+

REQUIRES COMMENTING

+!]
To say PenisFlavour (N - a number):
	if N is 0, say "barbie doll style lack of genitalia";
	if N is 1, say "less than 1 inch, clitoris-like pee pee";
	if N is 2, say "1 inch micropenis";
	if N is 3, say "worthless 3 inch pecker";
	if N is 4, say "tiny 4 inch willy";
	if N is 5, say "small 5 inch dick";
	if N is 6, say "average 6 inch prick";
	if N is 7, say "above average 7 inch cock";
	if N is 8, say "large 8 inch dong";
	if N is 9, say "giant 10 inch tool";
	if N is 10, say "12 inch monster".

[!<SayTotalDescOfPenis>+

REQUIRES COMMENTING

+!]
To say TotalDesc of penis:
	if the size of penis > 0:
		if there is worn chastity cage:
			say "Your [ShortDesc of penis] and [ShortBallsDesc] are kept soft and locked away inside a chastity cage. ";
		otherwise if there is a worn pussy covering clothing:
			say "You have a [ShortDesc of penis] and [ShortBallsDesc]. ";
		otherwise:
			say "Your [ShortDesc of penis] and [ShortBallsDesc] [if the size of penis > 5]sway freely. [otherwise if the size of penis > 3]hang freely. [otherwise]are barely noticeable. [end if]";
	otherwise if the player is male:
		say "A doll-like flat mound exists where your penis used to be. [if watersports fetish is 1 or diaper lover >= 1]There's just a tiny hole to allow you to pee.[end if]".

[!<SayShortBallsDesc>+

REQUIRES COMMENTING

+!]
To say ShortBallsDesc:
	if the size of penis < 3:
		say "internal testicles";
	otherwise if the size of penis < 5:
		say "small, tight ball sac";
	otherwise if the size of penis < 7:
		say "average scrotum";
	otherwise:
		say "heavy, full balls".

[!<SayPenisModesty>+

REQUIRES COMMENTING

+!]
To say PenisModesty:
	if penis is exposed:
		if there is a pussy covering clothing:
			let W be a random pussy covering clothing;
			say "It is clearly visible [if W is actually dense]poking out of[otherwise]through[end if] your [selfexamineuniquetitle of W]. ";
		otherwise:
			say "You have no clothing covering it. ";
	otherwise if the size of penis > 0:
		let W be a random worn actually penis covering clothing;
		say "It can't be seen thanks to the [selfexamineuniquetitle of W]. ".

Part 3 - Modify Penis Stats


previous penis length is a number that varies.

To PenisUp (X - a number):
	if the player is female, now X is 0;
	now previous penis length is the size of penis;
	if there is a worn cumlust tattoo:
		OralSexAddictUp X;
		now X is 0;
	if tg fetish is 2, now X is -1; [no text flavour]
	if there is a worn bitch tattoo, now X is X / 2;
	if X is 0:
		say "[if the player is male]Your [manly-penis] can't seem to grow any larger![end if]";
	while X > 0:
		decrease X by 1;
		if the size of penis < 10:
			increase the size of penis by 1;
			say "You feel your penis grow into a [ShortDesc of penis]!";
		otherwise:
			dignify 15;
			if X is 0, say "Your monster of a [manly-penis] can't seem to grow any larger! You feel like a stud!".

Shrink is a text that varies. Shrink is "shrink".

[X is not how much the penis shrinks, but how many times it does so]
To PenisDown (X - a number):
	now previous penis length is the size of penis;
	let flav-said be 0;
	while X > 0:
		decrease X by 1;
		if the size of penis > min penis size:
			let R be a random number from 1 to (the pregnancy rate of the player + TG fetish + the number of worn dolly tattoos);
			decrease the size of penis by a random number from 1 to R;
		otherwise if the player is male and the size of penis is 0 and previous penis length is 0:
			say "You feel a strange pang in your crotch... you feel that your penis tried to shrink even further, but since you have nothing left, it can't!";
			now X is 0;
	if the size of penis < min penis size, now the size of penis is min penis size;
	let C be a random worn chastity cage;
	if the size of penis <= 0 and C is a thing and previous penis length > 0:
		say "Your [C] drops off and falls to the floor.";
		now C is in the location of the player;
	if previous penis length > the size of penis + 2:
		now Shrink is "shrivel";
	otherwise:
		now Shrink is "shrink".


Penis ends here.

