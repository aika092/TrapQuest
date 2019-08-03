Destroying by Objects begins here.

[!<DislodgeThing>+

REQUIRES COMMENTING

+!]
To dislodge (C - a thing):
	compute unique dislodging of C;
	if C is monster:
		now C is doing nothing special;
		now C is unwrapped;
	repeat with B running through body parts penetrated by C:
		now C is not penetrating B;
	repeat with B running through things grabbed by C:
		now C is not grabbing B;
	repeat with B running through things covered by C:
		now C is not covering B.

To compute unique dislodging of (C - a thing):
	do nothing.

[!<DestroyThing>+

REQUIRES COMMENTING

+!]
To destroy (T - a thing):
	remove T from play;
	dislodge T.

[!<UniquelyDestroyThing>+

REQUIRES COMMENTING

+!]
To uniquely destroy (T - a thing): [Are there any special rules we need to follow?]
	do nothing.



Destroying ends here.

