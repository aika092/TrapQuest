Ankle Bondage by Bondage begins here.

An ankle bond is a kind of bondage. Understand "cuffs" as ankle bond. An ankle bond is usually ankle-bound.

To decide which number is the initial outrage of (C - an ankle bond):
	decide on 2.

To compute SelfExamineDesc of (A - an ankle bond):
	say "Your ankles are kept close together by [ShortDesc of A]. ".

To say ShortDesc of (A - an ankle bond):
	say "ankle bondage".

A pair of anklecuffs is a kind of ankle bond. The printed name of pair of anklecuffs is "[clothing-title-before]pair of anklecuffs[clothing-title-after]". The text-shortcut of pair of anklecuffs is "ac". The printed plural name of pair of anklecuffs is "pairs of anklecuffs". There is 1 pair of anklecuffs.

Definition: a pair of anklecuffs is grey themed: decide yes.

Figure of anklecuffs is the file "Items/Accessories/Leg/anklecuffs1.png".

To decide which figure-name is clothing-image of (C - a pair of anklecuffs):
	decide on figure of anklecuffs.

To say ClothingDesc of (C - a pair of anklecuffs):
	say "A pair of metal, medieval looking anklecuffs.".

To say ShortDesc of (A - a pair of anklecuffs):
	say "pair of medieval anklecuffs".

ankle-ropes is an ankle bond. ankle-ropes is hemp. The printed name of ankle-ropes is "[clothing-title-before]ankle ropes[clothing-title-after]". The text-shortcut of ankle-ropes is "arps". Understand "ankle", "ropes" as ankle-ropes.

Figure of ankle ropes is the file "Items/Accessories/Leg/ankleropes1.jpg".

To decide which figure-name is clothing-image of (C - ankle-ropes):
	decide on figure of ankle ropes.

To say ClothingDesc of (C - ankle-ropes):
	say "Your ankles are cinched tightly together with rope, forcing you to hobble with the tiniest of steps.".

To say ShortDesc of (A - ankle-ropes):
	say "ankle ropes".

Chapter - Wearability

ankle bond wearability rules is a rulebook. The wearability rules of ankle bond is usually ankle bond wearability rules.

This is the ankle bond already worn rule:
	if wearing-target is ankle locking:
		repeat with O running through worn ankle locking clothing:
			if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
			rule fails.
The ankle bond already worn rule is listed in the global wearability rules.

This is the overdress ankle bondage clash rule:
	if wearing-target is crotch covering and wearing-target is unskirted:
		if the player is ankle bound and summoning is 0:
			say "You won't be able to successfully get this on whilst your ankles are bound...";
			rule fails.
The overdress ankle bondage clash rule is listed in the overdress wearability rules.

This is the trousers ankle bondage clash rule:
	if the player is ankle bound and summoning is 0:
		say "You won't be able to successfully get this on whilst your ankles are bound...";
		rule fails.
The trousers ankle bondage clash rule is listed in the trousers wearability rules.

Ankle Bondage ends here.
