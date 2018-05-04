Bondage Framework by Bondage begins here.


A clothing can be wristless, wrist-unbound, wrist-bound-in-front or wrist-bound-behind (this is the wrist-restriction property). Clothing is usually wristless.
Definition: a clothing is wrist locking if it is not wristless.
Definition: a clothing is wrist locked if it is wrist-bound-in-front or it is wrist-bound-behind.
Definition: yourself is wrist bound:
	if there is worn wrist locked clothing, decide yes;
	decide no.
Definition: yourself is wrist bound in front:
	if there is worn wrist-bound-in-front clothing, decide yes;
	decide no.
Definition: yourself is wrist bound behind:
	if there is worn wrist-bound-behind clothing, decide yes;
	decide no.

A clothing can be ankleless, ankle-unbound or ankle-bound (this is the ankle-restriction property). Clothing is usually ankleless.
Definition: a clothing is ankle locking if it is not ankleless.
Definition: yourself is ankle bound:
	if there is worn ankle-bound clothing, decide yes;
	decide no.

A clothing can be neckless, neck-unbound or neck-bound (this is the neck-restriction property). [If a clothing is neck locked then it connects to the player's neck, either by being a neck item itself or connected to one.]
Definition: a clothing is neck locking if it is not neckless.
Definition: a clothing is neck locked if it is neck-bound and there is worn neck covering clothing.

Definition: a clothing is restrictive rather than unrestrictive if the restrictivity of it > 0. 

To decide which number is the restrictivity of (C - a clothing):
	let R be 0;
	if C is wrist locking, increase R by 1;
	if C is ankle locking, increase R by 1;
	if C is neck locked, increase R by 1;
	decide on R.

To decide which number is the bondage dexterity penalty of the player: 
	let D be 0;
	repeat with C running through worn restrictive clothing:
		increase D by (the restrictivity of C) * (the restrictivity of C); [The more parts of the body this item connects, the more harshly it affects the player's dexterity.]
	decide on D.

bondage is a kind of clothing. bondage is usually metal. 


Definition: a bondage (called C) is too boring:
	decide no.

Definition: a bondage (called C) is stealable:
	decide no.

Definition: a bondage (called C) is untransformable:
	decide yes.

To decide which number is the bartering value of (T - a bondage) for (M - a dominatrix):
	decide on 2.

To say MonsterOfferAcceptFlav of (M - a dominatrix) to (T - a bondage):
	say "[speech style of M]'Hmm, I must admit, that would go great in my collection. [if M is unfriendly]Fine, I'll leave you alone, for now[otherwise]You have my thanks[end if].'[roman type][line break]".

To say ShortDesc of (T - a bondage):
	say "bondage".

To uniquely set up (C - a bondage):
	now the raw-magic-modifier of C is 0.

Include Wrist Collar Bar by Bondage.


Bondage Framework ends here.

