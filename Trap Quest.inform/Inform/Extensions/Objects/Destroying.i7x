Destroying by Objects begins here.

To dislodge (C - a thing):
	compute unique dislodging of C;
	if C is monster:
		now C is doing nothing special;
		now C is unwrapped;
	repeat with B running through body parts penetrated by C:
		now C is not penetrating B;
	repeat with B running through things grabbed by C:
		now C is not grabbing B;
	repeat with B running through body parts wrangled by C:
		now C is not wrangling B;
		if C is monster, now the wrangle-bonus of C is 0; [there may have been a timer counting down to automatic release, using these variables]
	repeat with B running through things covered by C:
		now C is not covering B.

To compute unique dislodging of (C - a thing):
	do nothing.

To destroy (T - a thing):
	uniquely destroy T;
	now the owner of T is nothing;
	remove T from play;
	repeat with M running through monsters:
		now M is not rejecting T;
	dislodge T.

To uniquely destroy (T - a thing): [Are there any special rules we need to follow?]
	do nothing.

Destroying ends here.
