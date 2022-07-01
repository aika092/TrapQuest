Clothing Setup by Clothing begins here.

To Set Up Clothing:
	if tutorial is 0:
		repeat with C running through clothing:
			if C is not immune to change, set up C.

To decurse (C - a clothing):
	if C is cursed, silently bless C;
	if C is posture training or C is constriction or C is milk production, now C is blandness;
	if C is stumbling or C is temptation or C is bed wetting, now C is blandness.


[!<SetUpClothing>+

Uses the setUpMagicStateOfClothing, UniquelySetUpClothing, and SetUpInfluenceOfClothing functions to set up
the clothing "C."

@param <Clothing>:<C> The clothing to set up.

+!]
To set up (C - a clothing):
	repair C; [this also correctly sets up zippable crotches]
	set up armour of C;
	set up influence of C;
	set up magic state of C;
	uniquely set up C.

To set up armour of (C - a clothing):
	now the damage of C is 0;
	now the armour of C is the initial armour of C.

To decide which number is the initial armour of (C - a clothing):
	if C is unremovable, decide on 99;
	if C is hobble-skirted or C is trousers, decide on 8;
	if C is overdress, decide on 5;
	if C is crotch covering, decide on the penis-capacity of C;
	decide on 5.

[!<UniquelySetUpClothing>+

Defines any special code that needs to run when this clothing is being set up

@param <Clothing>:<C> The clothing to set up.

+!]
To uniquely set up (C - a clothing):
	do nothing.

Definition: a clothing (called C) is discovered varied:
	if C is not cursable, decide no; [Items that can't be cursed also can't get these things]
	if C is rare or C is unique, decide no; [rare items shouldn't be found with like a -3]
	decide yes.

[!<SetUpMagicStateOfClothing>+

Used in the setUpClothing function. Sets up the magic modifier for this clothing and handles the BUC state of this clothing. Be careful modifying this for items because it could mean the item doesn't vary.

@param <Clothing>:<C> The clothing to set up.

+!]
To set up magic state of (C - a clothing):
	if C is alwaysSure, now C is sure;
	if C is alwaysIdentified, now C is identified;
	if C is discovered varied:
		now the raw-magic-modifier of C is 0;
		now C is bland;
		if C is magic-enhanceable:
			increase the raw-magic-modifier of C by a random number between -1 and 1;
			increase the raw-magic-modifier of C by a random number between -1 and 1;
			increase the raw-magic-modifier of C by a random number between -1 and 1;
			increase the raw-magic-modifier of C by a random number between -1 and 1;
			increase the raw-magic-modifier of C by a random number between -1 and 1;
		set up BUC of C;
		set up magic attribute of C.

To set up BUC of (C - a clothing):
	let R be a random number between (0 - unlucky) and 8;
	if R <= 2, now C is cursed;
	if R >= 7 and C is not cursed, now C is blessed.

To set up magic attribute of (C - a clothing):
	now C is blandness;
	if a random number between 1 and 10 is unlucky, now C is provocation.

Clothing Setup ends here.
