Necklaces by Accessories begins here.

A necklace is a kind of accessory.  The printed name of necklace is usually "[TQlink of item described][item style][if item described is stethoscope]stethoscope[otherwise if item described is cowbell]cowbell[otherwise if item described is necktie]necktie[otherwise][accessory-colour of the item described] necklace[end if][clothing-title-after][TQxlink of item described][verb-desc of item described]".

A neckwear is a kind of clothing.  A neckwear is neck covering.  A neckwear is metal.    [Necklaces can now be worn in addition to other neckwear items]

Definition: a neckwear (called C) is untransformable:
	decide yes.

To uniquely set up (C - a neckwear):
	do nothing.

There are 6 necklaces.

To say ShortDesc of (C - a necklace):
	say "[accessory-colour of C] necklace".

neckwear wearability rules is a rulebook.  The wearability rules of neckwear is usually neckwear wearability rules.

This is the neckwear already worn rule:
	repeat with O running through worn neck covering clothing:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The neckwear already worn rule is listed in the neckwear wearability rules.

necklace wearability rules is a rulebook.  The wearability rules of necklace is usually necklace wearability rules.

This is the necklace already worn rule:
	repeat with O running through worn necklaces:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The necklace already worn rule is listed in the necklace wearability rules.

To restock (C - a necklace):
	let B be a random basic loot necklace;
	if B is necklace, now B is in Standard Item Pen.

This is the setup starting necklaces rule:
	let C be a random necklace;
	restock C.
The setup starting necklaces rule is listed in the setup starting items rules.

A submissive collar is a kind of neckwear.

Necklaces ends here.
