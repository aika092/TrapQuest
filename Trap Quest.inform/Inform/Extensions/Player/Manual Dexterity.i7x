Manual Dexterity by Player begins here.


[!<manualHandsAttempt:Integer>*

REQUIRES COMMENTING

*!]
manual hands attempt is a number that varies.

[!<handsRestrictionRules:Rulebook>*

REQUIRES COMMENTING

*!]
The hands restriction rules is a rulebook.

[!<YourselfIsAbleToManuallyUseTheirHands>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to manually use their hands:
	now manual hands attempt is 1;
	if the player is able to use their hands:
		now manual hands attempt is 0;
		decide yes;
	now manual hands attempt is 0;
	decide no.

[!<YourselfIsAbleToUseTheirHands>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to use their hands:
	follow the hands restriction rules;
	if the rule failed, decide no;
	decide yes.

[!<TheLivingSexDollCanNotUseHandsRule>+

REQUIRES COMMENTING

+!]
This is the living sex doll can't use hands rule:
	if the player is a living sex doll:
		if manual hands attempt is 1, say "You only have inflatable latex stumps for hands, so you can't do that!";
		rule fails.
The living sex doll can't use hands rule is listed first in the hands restriction rules.

[!<manualDexterityRestrictionRules:Rulebook>*

REQUIRES COMMENTING

*!]
The manual dexterity restriction rules is a rulebook.

[!<YourselfIsAbleToUseManualDexterity>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to use manual dexterity:
	if the player is not able to use their hands, decide no;
	[more rules restricting manual dexterity go here]
	decide yes.

[!<YourselfIsAbleToManuallyUseManualDexterity>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to manually use manual dexterity: [play manually inputted command, so we can have a bespoke text output from this function explaining why they are unable to use manual dexterity]
	now manual hands attempt is 1;
	if the player is able to use manual dexterity:
		now manual hands attempt is 0;
		decide yes;
	follow the manual dexterity restriction rules;
	if the rule failed:
		now manual hands attempt is 0;
		decide no;
	now manual hands attempt is 0;
	decide no.


[!<TheHandUseRequiredForMasturbationRule>+

Prevents masturbation

+!]
This is the hand use required for masturbation rule:
	if the player is not able to use their hands:
		if auto is 0, say "You can't use your hands at the moment!";
		rule fails.
The hand use required for masturbation rule is listed last in the masturbation restriction rules.
	

Manual Dexterity ends here.
