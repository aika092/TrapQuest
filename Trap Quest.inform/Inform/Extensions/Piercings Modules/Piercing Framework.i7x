Piercing Framework by Piercings Modules begins here.

A piercing is a kind of clothing. A piercing is usually unique. A piercing is usually metal.

Definition: a piercing (called C) is removable: [Some clothing can never be removed, even by monsters.]
	decide no.

Check taking off piercing:
	say "That's permanently welded into your skin!" instead. [We don't use the removability rules so that we can define custom phrases]
	
To decide which number is the heaviness of (C - a piercing):
	decide on 0.

Definition: a piercing (called P) is eligible:
	if P is off-stage, decide yes;
	decide no.

Definition: a piercing is destructible:
	decide no.

To say PiercingFlav of (P - a piercing):
	say "An arm comes down with a searing hot needle!  You scream as your flesh is burned and pierced. The needle is quickly moved and a [P] is pushed into place. The connection somehow welds itself shut, meaning that the piercing is permanent!".

Definition: a piercing (called C) is too boring:
	decide no.

To uniquely set up (C - a piercing):
	do nothing.

Definition: a piercing (called C) is untransformable:
	decide yes.

Check wearing piercing:
	say "You're already wearing it, that's permanently welded into your skin!" instead.

Check taking off piercing:
	say "You can't take that off, it's permanently pierced into your skin!" instead.

Piercing Framework ends here.

