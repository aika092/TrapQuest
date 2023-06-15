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
		if not-in-bag-things > 1 or (the number of worn bag of holding is 0 and the number of carried things > 1):
			let N be 0;
			if there is a worn bag of holding:
				repeat with T running through currently-not-in-bag things:
					unless T is vessel and there is a worn serving-bondage:
						if N > 0:
							say "Apart from your bag, you can only carry one item at a time while you have no [unless the class of the player is living sex doll]use of your [end if]hands, so you are forced to drop [NameDesc of T].";
							now T is in the location of the player;
						increase N by 1;
			otherwise:
				repeat with T running through carried things:
					unless T is vessel and there is a worn serving-bondage:
						if N > 0:
							say "You can only carry one item at a time with no hands, so you are forced to drop [NameDesc of T].";
							now T is in the location of the player;
						increase N by 1.

Before doing something to an in-bag thing when there is a worn bag of holding and the current action is not examining the noun and the current action is not offering the noun to a thing and the current action is not giving the noun to a thing and the current action is not BagFeeding the noun to a thing and the player is not able to manually use their hands:
	do nothing instead.

Before doing something to a portable thing when the noun is not held and the noun is not person and the noun is not feeding bowls and the current action is not examining the noun and the current action is not offering the noun to a thing and the current action is not giving the noun to a thing and the current action is not knifing the noun with a thing and the current action is not taking the noun and the current action is not dropping the noun and the noun is not plentiful accessory and the player is not able to manually use their hands:
	do nothing instead.

This is the living sex doll can't use hands rule:
	[#LXorDD this might need a special case if the player is trying to handle their detached penis: trying to pick it up, or trying but probably failing to remove it from an orifice.]
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
					say "It wasn't easy, but you managed to get a weak grip on it!";
					continue the action;
				otherwise:
					say "[one of]Your [LatexFlav]mitts didn't get a grip on it.[or]It's hard to feel in your [LatexFlav]hands.[or]It's hard to do when you can't feel from your fingers, even though you [i]do[/i] feel the [LatexFlav]hands gripping it, like someone else's.[or]It's weird that you can feel a pair of [LatexFlav]hands gripping it, but you can't feel [i]it[/i] with your own your [LatexFlav]fingers.[or]As you fail yet again, you realise they must have specially made it so your [']sensitive bits['] still feel pleasure - even more than normal - while the rest of you is numb.[or]You want to grind your teeth as you fail once again, but you can't even close your mouth from this stupid gaping [']Please fuck my mouth['] expression![or]For a moment, you thought you had a good grip on it: then it slips.[or]You thought you almost had it that time.[or]It escapes your grip again.[stopping]";
					allocate 2 seconds;
					rule fails;
			[Selkie: Should we add a check to see if they're vines you're trying to pull Barbara free of, when she calls for your help?
			###Aika: ...What? Why would we do that here?]
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
