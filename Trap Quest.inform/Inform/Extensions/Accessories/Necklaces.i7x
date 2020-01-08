Necklaces by Accessories begins here.

A necklace is a kind of accessory. The printed name of necklace is usually "[TQlink of item described][item style][accessory-colour of the item described] necklace[clothing-title-after]".

A neckwear is a kind of clothing. A neckwear is neck covering. A neckwear is metal. [Necklaces can now be worn in addition to other neckwear items]

Definition: a neckwear is transformation-protected: decide yes.

There are 6 necklaces.

Figure of sapphire necklace is the file "Items/Accessories/Neck/necklace1.png".
Figure of emerald necklace is the file "Items/Accessories/Neck/necklace2.png".
Figure of ruby necklace is the file "Items/Accessories/Neck/necklace3.png".
Figure of pink diamond necklace is the file "Items/Accessories/Neck/necklace4.png".
Figure of pure diamond necklace is the file "Items/Accessories/Neck/necklace5.png".
Figure of solid gold necklace is the file "Items/Accessories/Neck/necklace6.png".

To decide which figure-name is the examine-image of (R - a necklace):
	if R is sapphire, decide on figure of sapphire necklace;
	if R is emerald, decide on figure of emerald necklace;
	if R is ruby, decide on figure of ruby necklace;
	if R is pink diamond, decide on figure of pink diamond necklace;
	if R is pure diamond, decide on figure of pure diamond necklace;
	decide on figure of solid gold necklace.


To say ShortDesc of (C - a necklace):
	say "[accessory-colour of C] necklace".

neckwear wearability rules is a rulebook. The wearability rules of neckwear is usually neckwear wearability rules.

This is the neckwear already worn rule:
	repeat with O running through worn neck covering clothing:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The neckwear already worn rule is listed in the neckwear wearability rules.

necklace wearability rules is a rulebook. The wearability rules of necklace is usually necklace wearability rules.

This is the necklace already worn rule:
	repeat with O running through worn necklaces:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The necklace already worn rule is listed in the necklace wearability rules.

To restock (C - a necklace):
	let B be a random basic loot necklace;
	if B is necklace, now B is in Standard Item Pen.

[This is the setup starting necklaces rule:
	let C be a random necklace;
	restock C.
The setup starting necklaces rule is listed in the setup starting items rules.]

A submissive collar is a kind of neckwear. A submissive collar is usually transformation-rare.
Definition: a submissive collar is same-type if theme-share-target is submissive collar.
To decide which number is the initial outrage of (C - a submissive collar):
	decide on 8.

Necklaces ends here.
