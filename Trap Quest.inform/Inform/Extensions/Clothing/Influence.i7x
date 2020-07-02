Influence by Clothing begins here.

Clothing can be strength-influencing, dexterity-influencing, intelligence-influencing, sex-addiction-influencing, anal-sex-addiction-influencing, vaginal-sex-addiction-influencing, oral-sex-addiction-influencing, titfuck-addiction-influencing, semen-addiction-influencing, semen-taste-addiction-influencing, milk-taste-addiction-influencing, urine-taste-addiction-influencing, diaper-addiction-influencing, delicateness-influencing, heel-skill-influencing, luck-influencing, not-influencing (this is the clothing-influence property). Clothing is usually not-influencing.

To set up stat-based influence of (C - a clothing):
	let R be a random number between 1 and 4;
	if R is 1, now C is strength-influencing;
	if R is 2, now C is dexterity-influencing;
	if R is 3, now C is intelligence-influencing;
	if R is 4, now C is luck-influencing.

To set up taste-based influence of (C - a clothing):
	now C is semen-taste-addiction-influencing;
	let R be a random number between 1 and 3;
	if R is 1 and watersports fetish is 1, now C is urine-taste-addiction-influencing;
	if R is 2 and lactation fetish is 1, now C is milk-taste-addiction-influencing;
	if diaper quest is 1 and C is semen-taste-addiction-influencing, now C is milk-taste-addiction-influencing.

To set up submissiveness-based influence of (C - a clothing):
	now C is delicateness-influencing;
	let R be a random number between 1 and 2;
	if R is 1, now C is sex-addiction-influencing;
	if R is 2 and diaper lover >= 1, now C is diaper-addiction-influencing.

To set up sex-based influence of (C - a clothing):
	now C is sex-addiction-influencing;
	if diaper quest is 0:
		let R be a random number between 1 and 6;
		if R is 1, now C is anal-sex-addiction-influencing;
		if R is 2 and the player is possessing a vagina, now C is vaginal-sex-addiction-influencing;
		if R is 3, now C is oral-sex-addiction-influencing;
		if R is 4 and max breast size > 7, now C is titfuck-addiction-influencing;
		if R is 5, now C is semen-addiction-influencing.

To set up random-based influence of (C - a clothing):
	let R be a random number between 1 and 4;
	if R is 1, set up stat-based influence of C;
	if R is 2, set up taste-based influence of C;
	if R is 3, set up submissiveness-based influence of C;
	if R is 4, set up sex-based influence of C.

To set up influence of (C - a clothing):
	do nothing.

Influence ends here.
