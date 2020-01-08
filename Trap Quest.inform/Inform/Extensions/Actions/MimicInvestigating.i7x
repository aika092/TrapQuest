MimicInvestigating by Actions begins here.

MimicInvestigating is an action applying to one thing.

investigation-attempts is a number that varies. investigation-attempts is usually 0.

Check MimicInvestigating:
	if the number of worn wrist bonds > 0, say "You can't do that whilst bound at the wrists." instead.

Carry Out MimicInvestigating:
	say "You give the [printed name of the noun] [if investigation-attempts < 2]a good whack[otherwise if investigation-attempts < 4]a tentative smack[otherwise]an apprehensive tap[end if]";
	let M be memic;
	if the noun is M:
		let R be a random number between investigation-attempts and 0;
		if R > 2:
			say "The [printed name of the noun] swings open in reaction to your half-hearted attack, and a pair of green hands shoot out and immediately grab you by the wrists. [run paragraph on]";
			compute mimic teasing 2;
			say "The mimic disappears in a puff of pink smoke.";
		otherwise:
			say "The [printed name of the noun] shivers, flashing several different colours in rapid succession before disappearing in a puff of pink smoke.";
		mimicReplace M;
		increase the mimic-boredom of M by the mimic-boredom of M;
	otherwise:
		say "Nothing happens.";
		increase investigation-attempts by 1.

Report MimicInvestigating:
	allocate 3 seconds.

MimicInvestigating ends here.

