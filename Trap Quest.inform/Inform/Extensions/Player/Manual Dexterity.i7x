Manual Dexterity by Player begins here.

manual hands attempt is a number that varies.

The hands restriction rules is a rulebook.

Definition: yourself is able to manually use their hands:
	now manual hands attempt is 1;
	if the player is able to use their hands:
		now manual hands attempt is 0;
		decide yes;
	now manual hands attempt is 0;
	decide no.

Definition: yourself is able to use their hands:
	follow the hands restriction rules;
	if the rule failed, decide no;
	decide yes.

An all later time based rule (this is the harsh inventory rule):
	if the player is not able to use their hands:
		if not-in-bag > 1 or (the number of worn bag of holding is 0 and the number of carried things > 1):
			let N be 0;
			if there is a worn bag of holding:
				repeat with T running through carried not-in-bag things:
					if N > 0:
						say "Apart from your bag, you can only carry one item at a time while you have no [unless the class of the player is living sex doll]use of your [end if]hands, so you are forced to drop [NameDesc of T].";
						now T is in the location of the player;
					increase N by 1;
			otherwise:
				repeat with T running through carried things:
					if N > 0:
						say "You can only carry one item at a time with no hands, so you are forced to drop [NameDesc of T].";
						now T is in the location of the player;
					increase N by 1.

Before doing something to an in-bag thing when there is a worn bag of holding and the current action is not examining the noun and the current action is not offering the noun to a thing and the current action is not giving the noun to a thing and the player is not able to manually use their hands:
	do nothing instead.

Before doing something to a portable thing when the noun is not held and the noun is not person and the current action is not examining the noun and the current action is not offering the noun to a thing and the current action is not giving the noun to a thing and the current action is not taking the noun and the player is not able to manually use their hands:
	do nothing instead.

This is the living sex doll can't use hands rule:
	if the class of the player is living sex doll:
		if manual hands attempt is 1, say "You only have inflatable latex stumps for hands, so you can't do that!";
		rule fails.
The living sex doll can't use hands rule is listed first in the hands restriction rules.

The manual dexterity restriction rules is a rulebook.

Definition: yourself is able to use manual dexterity:
	if the player is not able to use their hands, decide no;
	[more rules restricting manual dexterity go here]
	decide yes.

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
The hand use required for masturbation rule is listed last in the global masturbation restriction rules.

Manual Dexterity ends here.
