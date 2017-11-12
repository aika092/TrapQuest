Equippables Framework by Equippables begins here.

An equippable is a kind of clothing.  An equippable can be slap ready, knee ready or kick ready.  An equippable is usually manly. The soak-limit of an equippable is usually 5. An equippable can be melee or projectile. An equippable is usually melee.

Definition: an equippable (called C) is stealable: [Some clothing can never be stolen or destroyed, even by monsters.]
	if diaper quest is 1, decide yes;
	decide no.

Understand "wield [something]", "equip [something]" as wearing.  

To compute attack of (E - an equippable) at (M - a monster):
	say "You strike the [noun] with your [E]!  ".

To compute attack effect of (E - an equippable):
	do nothing.
	
To decide which number is the damage improvement of (E - an equippable):
	decide on 0.

To uniquely set up (E - an equippable):
	do nothing.

Part 1 - Gloves

A gloves is a kind of equippable.  A gloves is usually slap ready.  Understand "pair", "pair of", "glove" as gloves.

Part 2 - Wearability

equippable wearability rules is a rulebook.  The wearability rules of equippable is usually equippable wearability rules.

This is the slap ready equippable already worn rule:
	if wearing-target is slap ready:
		repeat with O running through worn slap ready equippables:
			if summoning is 0, say "You can't because [if O is wearing-target]you're already wielding it[otherwise]you're already wielding the [printed name of O][end if]!";
			rule fails.
The slap ready equippable already worn rule is listed in the equippable wearability rules.

This is the rings gloves clash rule:
	if there are worn gloves and wearing-target is ring and summoning is 0:
		say "You need to remove your [random worn gloves] first.";
		rule fails.
The rings gloves clash rule is listed in the global wearability rules.
	
Check taking off cursed worn equippable:
	if the noun is slap ready:
		say "The [printed name of noun] is welded to your [if there is worn gloves][random worn gloves][otherwise]hand[end if]!";
		now the curse-ID of the noun is sure instead.

Check taking off worn gloves:
	if the noun is cursed:
		say "The [printed name of noun] won't come off!";
		now the curse-ID of the noun is sure instead;
	let E be a random worn slap ready equippable;
	if E is clothing and E is not the noun:
		say "You would need to stop wielding the [E] first." instead.

Equippables Framework ends here.
