Removability by Clothing begins here.


the global removability rules is a rulebook.

Definition: a clothing (called C) is actually removable:
	now summoning is 0;
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
	if C is actually removable:
		now summoning is 0;
		decide yes;
	now summoning is 0;
	decide no.

autoremove is initially false.
autolayerremove is initially false.
Definition: a clothing (called C) is autoremovable: [Can it be removed right now]
	now autoremove is true;
	if C is actually removable:
		now autoremove is false;
		decide yes;
	now autoremove is false;
	decide no.
Definition: a clothing (called C) is usually autoremovable: [Can it be removed once the stuff on top has been displaced or removed]
	now autoremove is true;
	now autolayerremove is true;
	if C is actually removable:
		now autoremove is false;
		now autolayerremove is false;
		decide yes;
	now autoremove is false;
	now autolayerremove is false;
	decide no.

This is the not wearing rule:
	if wearing-target is not worn:
		if summoning is 0 and autoremove is false, say "But you are not wearing that!";
		rule fails.
The not wearing rule is listed in the global removability rules.

This is the unremovable rule:
	if wearing-target is unremovable:
		if wipeChecking is true, rule succeeds; [we are currently checking if wipes would work]
		if summoning is 0 and autoremove is false, say "You can't find any way to take it off!";
		rule fails.
The unremovable rule is listed in the global removability rules.

This is the cursed unremovable rule:
	if wearing-target is cursed clothing and summoning is 0 and the class of the player is not cultist:
		if autoremove is false, say "It won't budge! It's magically forcing you to keep [if wearing-target is equippable]wielding[otherwise]wearing[end if] it.";
		rule fails.
The cursed unremovable rule is listed in the global removability rules.

This is the locked unremovable rule:
	if wearing-target is unremovable and wearing-target is locked clothing and summoning is 0:
		if autoremove is false, say "It's locked on! You'll need to find someone with a key.";
		rule fails.
The locked unremovable rule is listed in the global removability rules.

This is the player won't automatically remove glue rule:
	if wearing-target is unremovable and wearing-target is glued clothing and summoning is 0 and autoremove is true, rule fails.
The player won't automatically remove glue rule is listed in the global removability rules.

This is the removal blocking rule:
	repeat with C running through worn removal-blocking wearthings:
		if summoning is 0 and autoremove is false, say RemovalBlocked of C;
		rule fails.
The removal blocking rule is listed in the global removability rules.

To say RemovalBlocked of (C - a wearthing):
	say "Your [ShortDesc of C] is somehow preventing you from taking this off!".

This is the top layer removal rule:
	if wearing-target is top layer:
		repeat with O running through worn top layer clothing:
			if the top-layer of O > the top-layer of wearing-target:
				if summoning is 0 and autoremove is false, say "You can't remove that without first removing your [printed name of O]!";
				if autolayerremove is false, rule fails.
The top layer removal rule is listed in the global removability rules.

This is the mid layer removal rule:
	if wearing-target is mid layer:
		repeat with O running through worn mid layer clothing:
			if the mid-layer of O > the mid-layer of wearing-target:
				if summoning is 0 and autoremove is false, say "You can't remove that without first removing your [printed name of O]!";
				if autolayerremove is false, rule fails.
The mid layer removal rule is listed in the global removability rules.

This is the bottom layer removal rule:
	if wearing-target is bottom layer:
		repeat with O running through worn bottom layer unskirted clothing:
			if the bottom-layer of O > the bottom-layer of wearing-target:
				unless O is no protection and wearing-target is not crotch-pullup:
					if summoning is 0 and autoremove is false, say "You can't remove that without first removing your [printed name of O]!";
					if autolayerremove is false, rule fails;
		repeat with C running through worn crotch-in-place crotch covering hobble-skirted clothing: [These will always be on top]
			unless wearing-target is C:
				if summoning is 0 and autoremove is false, say "You need to pull up your [printed name of C] first.";
				if autolayerremove is false, rule fails;
		repeat with A running through worn ankle bonds:
			if wearing-target is crotch-pullup:
				if summoning is 0 and autoremove is false, say "You can't remove that without first removing your [printed name of A]!";
				if autolayerremove is false, rule fails.
The bottom layer removal rule is listed in the global removability rules.

Check taking off clothing:
	now summoning is 0;
	unless the noun is actually removable, do nothing instead.



Removability ends here.

