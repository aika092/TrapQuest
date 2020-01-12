Desirability by Body Parts begins here.

[!<blowjobSlut:Integer>*

REQUIRES COMMENTING

*!]
blowjob-slut is a number that varies.

[!<pussySlut>*

REQUIRES COMMENTING

*!]
pussy-slut is a number that varies.

[!<buttSlut:Integer>*

REQUIRES COMMENTING

*!]
butt-slut is a number that varies.

[!<titSlut:Integer>*

REQUIRES COMMENTING

*!]
tit-slut is a number that varies.

[!<targetedBodyPart:Object>*

REQUIRES COMMENTING

*!]
targeted-body-part is an object that varies.



[!<DecideWhichNumberIsTotalDesirability>+

REQUIRES COMMENTING

+!]
To decide which number is total desirability:
	let N be 0;
	repeat with B running through actual target body parts:
		unless B is presented-orifice and the number of actual target body parts > 1, increase N by the desirability of B;
	decide on N.

[!<ChooseASexMethod>+

REQUIRES COMMENTING

+!]
To choose a sex method:
	now targeted-body-part is nothing;
	if current-monster is butt slut immune:
		now targeted-body-part is a random actual target body part;
	otherwise:
		let targeting-RNG be a random number between 1 and total desirability;
		repeat with B running through actual target body parts:
			unless B is presented-orifice and the number of actual target body parts > 1:
				decrease targeting-RNG by the desirability of B;
				if targeting-RNG <= 0:
					now targeted-body-part is B;
					break.


[!<BodyPartIsMostDesirable>+

REQUIRES COMMENTING

+!]
Definition: a body part (called B) is most desirable:
	repeat with P running through body parts:
		if B is not P and the desirability of P >= the desirability of B, decide no;
	decide yes.

[!<TheDeterminingDesirabilityRule>+

REQUIRES COMMENTING

+!]
A time based rule (this is the determining desirability rule):
	if diaper quest is 0:
		now the desirability of face is 5 + the number of worn oral sex themed wearthings;
		now the desirability of breasts is 0;
		now the desirability of asshole is 5;
		now the desirability of vagina is 0;
		now the desirability of penis is 0;
		now the desirability of belly is 0; [remember that belly = urination]
		if the largeness of breasts > 7:
			now the desirability of breasts is the largeness of breasts / 2;
			follow the tit slut eligibility rules;
		if the player is female:
			now the desirability of vagina is 5;
			follow the pussy slut eligibility rules;
		if the size of penis > 0:
			now the desirability of penis is 5;
			follow the penis slut eligibility rules;
		if watersports fetish is 1:
			now the desirability of belly is 5;
			follow the piss slut eligibility rules;
		follow the butt slut eligibility rules;
		follow the blowjob slut eligibility rules;
		repeat with B running through body parts:
			if the desirability of B < 0, now the desirability of B is 0.

[!<YourselfIsATitSlut>+

Let's check if the player has a huge magical influence towards titfucks.

+!]
Definition: yourself is a tit slut:
	if the desirability of breasts >= 25 and breasts is most desirable, decide yes;
	decide no.

[!<titSlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of titfucks.

*!]
the tit slut eligibility rules is a rulebook.

[!<YourselfIsABlowjobSlut>+

Let's check if the player has a huge magical influence towards oral sex.

+!]
Definition: yourself is a blowjob slut:
	if the desirability of face >= 25 and face is most desirable, decide yes;
	decide no.

[!<BlowjobSlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of oral sex.

*!]
the blowjob slut eligibility rules is a rulebook.

[!<YourselfIsAPissSlut>+

Let's check if the player has a huge magical influence towards watersports.

+!]
Definition: yourself is a piss slut:
	if the desirability of belly >= 25 and belly is most desirable, decide yes;
	decide no.

[!<PissSlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of watersports.

*!]
the piss slut eligibility rules is a rulebook.

[!<YourselfIsAPussySlut>+

Let's check if the player has a huge magical influence towards vaginal sex.

+!]
Definition: yourself is a pussy slut:
	if the desirability of vagina >= 25 and vagina is most desirable, decide yes;
	decide no.

[!<pussySlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of vaginal sex.

*!]
the pussy slut eligibility rules is a rulebook.

[!<YourselfIsAButtSlut>+

Let's check if the player has a huge magical influence towards anal sex.

+!]
Definition: yourself is a butt slut:
	if the desirability of asshole >= 25 and asshole is most desirable, decide yes;
	decide no.

[!<buttSlutEligibilityRules:Rulebook>*

Let's check all the things that might increase the chances of anal sex.

*!]
the butt slut eligibility rules is a rulebook.

Definition: yourself is a penis slut:
	if the desirability of penis >= 25 and penis is most desirable, decide yes;
	decide no.

The penis slut eligibility rules is a rulebook.

Desirability ends here.

