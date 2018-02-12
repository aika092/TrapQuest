Removability by Clothing begins here.


the global removability rules is a rulebook.

Definition: a clothing (called C) is actually removable:
	now wearing-target is C;
	follow the global removability rules;
	if the rule failed, decide no;
	follow the removability rules of C;
	if the rule failed, decide no;
	decide yes.

[Definition: a clothing (called C) is actually unremovable:
	if C is actually removable, decide no;
	decide yes.]

Definition: a clothing (called C) is actually strippable:
	now summoning is 1;
	if C is actually removable, decide yes;
	now summoning is 0;
	decide no.

This is the not wearing rule:
	if wearing-target is not worn:
		if summoning is 0, say "But you are not wearing that!";
		rule fails.
The not wearing rule is listed in the global removability rules.

This is the unremovable rule:
	if wearing-target is unremovable:
		if summoning is 0, say "You can't find any way to take it off!";
		rule fails.
The unremovable rule is listed in the global removability rules.

This is the top layer removal rule:
	if wearing-target is top layer:
		repeat with O running through worn top layer clothing:
			if the top-layer of O > the top-layer of wearing-target:
				if summoning is 0, say "You can't remove that without first removing your [printed name of O]!";
				rule fails.
The top layer removal rule is listed in the global removability rules.

This is the mid layer removal rule:
	if wearing-target is mid layer:
		repeat with O running through worn mid layer clothing:
			if the mid-layer of O > the mid-layer of wearing-target:
				if summoning is 0, say "You can't remove that without first removing your [printed name of O]!";
				rule fails.
The mid layer removal rule is listed in the global removability rules.

This is the bottom layer removal rule:
	if wearing-target is bottom layer:
		repeat with O running through worn bottom layer unskirted clothing:
			if the bottom-layer of O > the bottom-layer of wearing-target:
				unless O is no protection and wearing-target is leghole free:
					if summoning is 0, say "You can't remove that without first removing your [printed name of O]!";
					rule fails;
		repeat with C running through worn crotch-in-place crotch covering hobble-skirted clothing: [These will always be on top]
			unless wearing-target is C:
				if summoning is 0, say "You need to pull up your [printed name of C] first.";
				rule fails;
		repeat with A running through worn ankle bonds:
			unless wearing-target is leghole free:
				if summoning is 0, say "You can't remove that without first removing your [printed name of A]!";
				rule fails.
The bottom layer removal rule is listed in the global removability rules.

Check taking off clothing:
	now summoning is 0;
	unless the noun is actually removable, do nothing instead.



Removability ends here.

