Manual Dexterity by Player begins here.

manual hands attempt is a number that varies.

The hands restriction rules is a rulebook.

Definition: yourself is able to manually use their hands:
	now manual hands attempt is 1;
	follow the hands restriction rules;
	if rule failed, decide no;
	decide yes.

Definition: yourself is able to use their hands:
	now manual hands attempt is 0;
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

Before doing something to an in-bag thing when there is a worn bag of holding and the current action is not examining the noun and the current action is not offering the noun to a thing and the current action is not giving the noun to a thing and the current action is not BagFeeding the noun to a thing and the player is not able to manually use their hands:
	do nothing instead.

Before doing something to a portable thing when the noun is not held and the noun is not person and the current action is not examining the noun and the current action is not offering the noun to a thing and the current action is not giving the noun to a thing and the current action is not knifing the noun with a thing and the current action is not taking the noun and the noun is not plentiful accessory and the player is not able to manually use their hands:
	do nothing instead.

This is the living sex doll can't use hands rule:
	[####LXorDD this might need a special case if the player is trying to handle their detached penis: trying to pick it up, or trying but probably failing to remove it from an orifice.]
	let X be the noun;
	if X is a body part, now X is the second noun;
	if the class of the player is living sex doll:
		if manual hands attempt is 1:
			if X is pink pill:
				if a random number between 1 and 3 is 1:
					say "It wasn't easy, but you've got it!";
					continue the action;
				otherwise:
					say "You didn't manage it that time.";
					allocate 2 seconds;
					rule fails;
			otherwise if X is players-detached-dick:
				if a random number between 0 and 20 <= size of players-detached-dick: [So even if it's the 0-sized decal they can eventually stick it back on ('in')]
					say "It wasn't easy, but you've got it!";
					continue the action;
				otherwise:
					say "You didn't manage it that time.";
					allocate 2 seconds;
					rule fails;
			say "You only have inflatable latex stumps for hands, so you can't do that!";
			rule fails.
The living sex doll can't use hands rule is listed first in the hands restriction rules.

The manual dexterity restriction rules is a rulebook.

Definition: yourself is able to use manual dexterity: [automatic check, so we do not want a bespoke text output from this function explaining why they are unable to use manual dexterity]
	now manual hands attempt is 0; [unnecessary because this is done at the start of the check directly below, but just in case]
	if the player is not able to use their hands, decide no;
	[more rules restricting manual dexterity go here]
	follow the manual dexterity restriction rules;
	if the rule failed, decide no;
	decide yes.

Definition: yourself is able to manually use manual dexterity: [play manually inputted command, so we can have a bespoke text output from this function explaining why they are unable to use manual dexterity]
	if the player is not able to manually use their hands, decide no;
	now manual hands attempt is 1;
	follow the manual dexterity restriction rules;
	if the rule failed, decide no;
	decide yes.

[!<TheHandUseRequiredForMasturbationRule>+

Prevents masturbation

+!]
This is the hand use required for masturbation rule:
	if the player is not able to use their hands:
		if auto is 0, say "You can't use your hands at the moment!";
		rule fails.
The hand use required for masturbation rule is listed last in the global masturbation restriction rules.

Manual Dexterity ends here.
