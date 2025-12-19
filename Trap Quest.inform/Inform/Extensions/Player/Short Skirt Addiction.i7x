Short Skirt Addiction by Player begins here.

Definition: a clothing (called C) is short-skirt-disallowed rather than short-skirt-allowed:
	if short skirts permanent suggestion > 0:
		if C is unskirted themed, decide yes;
		if (the front-skirt-length of C > short skirts permanent suggestion or the back-skirt-length of C > short skirts permanent suggestion) and C is crotch-in-place and C is not crotch-unzipped and C is actually dense, decide yes;
	decide no.

short skirts permanent suggestion is a number that varies. short skirts permanent suggestion is 0. [When above 0, this is the highest length of skirt tolerated]
Definition: a person is fighting against short skirts:
	if the player is in a predicament room, decide no;
	if short skirts permanent suggestion > 0:
		if there is worn short-skirt-disallowed clothing, decide yes;
	decide no.

short skirts reminder is a number that varies. short skirts reminder is 0.
An all time based rule (this is the fighting against short skirts fetish rule):
	if the player is fighting against short skirts:
		if short skirts reminder <= 0:
			let C be a random worn skirted short-skirt-disallowed clothing;
			if C is nothing, now C is a random worn short-skirt-disallowed clothing;
			if C is clothing, say "[bold type]You [one of][or]still [stopping]feel extremely uncomfortable in your [ShortDesc of C]! [one of]You can feel your body desperately wishing to be in [if C is unskirted and there is a worn skirted clothing]just a skirt[otherwise if C is unskirted]a skirt[otherwise if the front-skirt-length of C - 2 <= short skirts permanent suggestion and the back-skirt-length of C - 2 <= short skirts permanent suggestion]shorter skirt[otherwise]much shorter skirt[end if], and it's not only keeping you constantly distracted, but also making you feel much more stiff.[or][stopping][roman type][line break]";
			now short skirts reminder is 30;
		decrease short skirts reminder by 1.

Report wearing short-skirt-disallowed clothing:
	if the player is fighting against short skirts, say "You immediately feel extremely uncomfortable in these, thanks to your short skirts fetish.".
This is the stuff can't be summoned with short skirts fetish rule:
	if summoning is 1 and wearing-target is short-skirt-disallowed, rule fails.
The stuff can't be summoned with short skirts fetish rule is listed in the global wearability rules.

Short Skirt Addiction ends here.
