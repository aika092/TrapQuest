MimicInvestigating by Actions begins here.

MimicInvestigating is an action applying to one thing.

Check MimicInvestigating:
	if the number of worn wrist bonds > 0, say "You can't do that whilst bound at the wrists." instead.

Carry Out MimicInvestigating:
	say "You give the [printed name of the noun] a good whack.";
	let M be memic;
	if the noun is M:
		say "The [printed name of the noun] shivers, flashing several different colours in rapid succession before disappearing in a puff of pink smoke.";
		now the mimic-boredom of M is 0;
		mimicReplace M;
		increase the mimic-boredom of M by the mimic-boredom of M;
	otherwise:
		say "Nothing happens.".

Report MimicInvestigating:
	now seconds is 3.

MimicInvestigating ends here.

