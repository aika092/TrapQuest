Clothing Setup by Clothing begins here.


To Set Up Clothing:
	if tutorial is 0:
		repeat with C running through clothing:
			if C is not immune to change, set up C;
		set up store.

To decurse (C - a clothing):
	if C is cursed, now C is bland;
	if C is posture training or C is constriction or C is milk production, now C is blandness;
	if C is stumbling or C is temptation or C is bed wetting, now C is blandness.

[!<ClothingIsShopEligible>+

Is this something that can appear in the shop?

+!]
Definition: a clothing (called C) is shop-eligible:
	if C is not basic loot, decide no;
	if C is not fetish appropriate, decide no;
	if C is accessory or C is wrist bond or C is ankle bond or C is diaper, decide no;
	let X be 0;
	repeat with P running through store clothing in Dungeon41:
		if the price of C is the price of P, increase X by 1;
	if X < 2, decide yes;
	decide no.

To Set Up Store:
	let shop-clothing be 0;
	let diaper-stored be 0;
	repeat with C running through store clothing in Dungeon41:
		if C is diaper, increase diaper-stored by 1;
		otherwise increase shop-clothing by 1;
	while diaper lover >= 1 and diaper-stored < 3:
		let D be a random eligible diaper;
		if D is diaper:
			if D is not in Standard Item Pen:
				clean D;
				repair D;
				now D is in Dungeon41;
				now D is store;
		increase diaper-stored by 1;
	if pregnancy fetish is 1 and the number of maternity dress in Dungeon41 is 0:
		let D be a random off-stage maternity dress;
		if D is clothing:
			clean D;
			now D is in Dungeon41;
			now D is store;
			if a random number between 1 and 3 is 1, now D is cursed;
	while shop-clothing < 6:
		let L be a random shop-eligible clothing;
		now L is in Dungeon41;
		now L is store;
		increase shop-clothing by 1;	
	if the number of trousers in Dungeon41 is 0: [We want at least one pair of trousers]
		let T be a random off-stage trousers;
		unless T is nothing:
			now T is in Dungeon41;
			now T is store;
			increase shop-clothing by 1;
	let H be a random off-stage designer handbag of holding;
	if H is clothing:
		now H is in Dungeon41;
		now H is store;
		increase shop-clothing by 1;
	repeat with C running through store clothing:
		decurse C;
		if the raw-magic-modifier of C < 0, now the raw-magic-modifier of C is 0;
		now C is sure;
		now C is identified.

A time based rule (this is the shop cycling rule):[if the player is in the room, describe the shopkeeper restocking everything]
	if the remainder after dividing time-earnings by 995 < time-seconds:
		let C be a random store clothing in Dungeon41;
		if C is clothing, destroy C;
		let D be a random store clothing in Dungeon41;
		if D is clothing, destroy D;
		let E be a random store clothing in Dungeon41;
		if E is clothing, destroy E;
		set up store.

[!<SetUpClothing>+

Uses the setUpMagicStateOfClothing, UniquelySetUpClothing, and SetUpInfluenceOfClothing functions to set up 
the clothing "C."

@param <Clothing>:<C> The clothing to set up.

+!]
To set up (C - a clothing):
	if C is zippable, now C is crotch-zipped;
	set up influence of C;
	set up magic state of C;
	uniquely set up C.

[!<UniquelySetUpClothing>+

Defines any special code that needs to run when this clothing is being set up

@param <Clothing>:<C> The clothing to set up.

+!]
To uniquely set up (C - a clothing):
	do nothing.

[!<SetUpMagicStateOfClothing>+

Used in the setUpClothing function. Sets up the magic modifier for this clothing and handles the BUC state of this clothing. Be careful modifying this for items because it could mean the item doesn't vary.

@param <Clothing>:<C> The clothing to set up.

+!]
To set up magic state of (C - a clothing):
	now the raw-magic-modifier of C is 0;
	now C is bland;
	increase the raw-magic-modifier of C by a random number between -1 and 1;
	increase the raw-magic-modifier of C by a random number between -1 and 1;
	increase the raw-magic-modifier of C by a random number between -1 and 1;
	increase the raw-magic-modifier of C by a random number between -1 and 1;
	increase the raw-magic-modifier of C by a random number between -1 and 1;
	if a random number between -7 and unlucky is 1 and the raw-magic-modifier of C is 0, now the raw-magic-modifier of C is -1;
	if the raw-magic-modifier of C < 0, now C is cursed;
	let R be a random number between 0 and 8;
	if the raw-magic-modifier of C is 0 and R <= 1, now C is cursed;
	if R >= 7 and C is not cursed, now C is blessed.
	

Include Outrage by Clothing.
Include Cringe by Clothing.
Include Price by Clothing.
Include Printed Names by Clothing.
Include Description by Clothing.
Include Layering by Clothing.
Include Visibility by Clothing.
Include Summoning by Clothing.
Include Wearability by Clothing.
Include Removability by Clothing.
Include Magic State by Clothing.
Include Transformation by Clothing.
Include Influence by Clothing.
Include Imprinting by Clothing.


Include Headgear Framework by Headgear.
Include Shoes Framework by Shoes.
Include Bra Framework by Bra.
Include Knickers Framework by Knickers.
Include Trousers Framework by Trousers.
Include Dresses Framework by Dresses.
Include Corsets Framework by Corsets.
Include Skirts Framework by Skirts.
Include Belt Framework by Belts Suspenders.
Include Suspenders Framework by Belts Suspenders.
Include Stockings Framework by Stockings.
Include Accessories Framework by Accessories.
Include Piercing Framework by Piercings Modules.
Include Equippables Framework by Equippables.
Include Bondage Framework by Bondage.
Include Sex Toy Framework by Sex Toys.
Include Condom of Kings by Clothing.
Include Tattoos Framework by Tattoos.
Include Bags of Holding Framework by Bags of Holding.

Clothing Setup ends here.

