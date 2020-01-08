Short Skirt Addiction by Player begins here.

Definition: a clothing (called C) is short-skirt-disallowed:
	if short skirts permanent fetish > 0:
		if C is actually dense trousers:
			unless C is crotch-exposing or C is crotch-ripped or C is crotch-assless, decide yes;
		if C is actually dense skirted clothing:
			unless C is super-short or (C is short and short skirts permanent fetish < 2) or C is not crotch-in-place, decide yes;
	decide no.

short skirts permanent fetish is a number that varies. short skirts permanent fetish is 0.
Definition: a person is fighting against short skirts:
	if short skirts permanent fetish > 0:
		if there is worn short-skirt-disallowed clothing, decide yes;
	decide no.

short skirts reminder is a number that varies. short skirts reminder is 0.
A time based rule (this is the fighting against short skirts fetish rule):
	if the player is fighting against short skirts:
		if short skirts reminder <= 0:
			let C be a random worn skirted short-skirt-disallowed clothing;
			if C is nothing, now C is a random worn short-skirt-disallowed trousers;
			if C is clothing, say "[bold type]You [one of][or]still [stopping]feel extremely uncomfortable in your [ShortDesc of C]! [one of]You can feel your body desperately wishing to be in a much shorter skirt, and it's somehow restricting your physical strength.[or][stopping][roman type][line break]";
			now short skirts reminder is 30;
		decrease short skirts reminder by 1.

Report wearing short-skirt-disallowed clothing:
	if the player is fighting against short skirts, say "You immediately feel extremely uncomfortable in these, thanks to your short skirts fetish.".
This is the skirts can't be summoned with short skirts fetish rule:
	if summoning is 1 and wearing-target is short-skirt-disallowed, rule fails.
The skirts can't be summoned with short skirts fetish rule is listed in the global wearability rules.

Short Skirt Addiction ends here.
