Wrist Bondage by Bondage begins here.

A wrist bond is a kind of bondage. Understand "cuffs" as wrist bond. A wrist bond is usually wrist-bound-in-front. A wrist bond is usually transformation-rare.

Definition: a wrist bond is same-type if theme-share-target is wrist bond.

To say ClothingDesc of (W - a wrist bond):
	say "[WristBondDesc][if W is not wrist locked and W is worn]They are currently not binding your wrists together. [otherwise if W is wrist-bound-in-front and W is worn]They are binding your wrists in front of you. [otherwise if W is worn]They are binding your wrists behind you. [end if]".

To decide which number is the initial outrage of (W - a wrist bond):
	decide on 2.

To compute SelfExamineDesc of (W - a wrist bond):
	if W is wrist locked, say "Your wrists are kept close together [if W is wrist-bound-in-front]in front of[otherwise]behind[end if] you by [ShortDesc of W]. ".

To say ShortDesc of (W - a wrist bond):
	say "wrist bondage".

To compute (C - a wrist bond) unique inheriting from (D - a wrist bond):
	if D is wrist-bound-in-front, now C is wrist-bound-in-front;
	otherwise now C is wrist-bound-behind.

pair of handcuffs is a wrist bond. The printed name of pair of handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of handcuffs[clothing-title-after]". The text-shortcut of pair of handcuffs is "hc".
Definition: a pair of handcuffs is grey themed: decide yes.

pair of pink handcuffs is a wrist bond. The printed name of pair of pink handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of pink handcuffs[clothing-title-after]". The text-shortcut of pair of pink handcuffs is "phc".
Definition: pair of pink handcuffs is pink themed:
	decide yes.

To decide which number is the initial outrage of (W - pair of pink handcuffs):
	decide on 4.

pair of furry handcuffs is a wrist bond. pair of furry handcuffs is leather. The printed name of pair of furry handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of furry handcuffs[clothing-title-after]". The text-shortcut of pair of furry handcuffs is "fhc".
Definition: pair of furry handcuffs is pink themed:
	decide yes.

To decide which number is the initial outrage of (W - pair of furry handcuffs):
	decide on 5.

pair of trashy handcuffs is a wrist bond. pair of trashy handcuffs is leather. The printed name of pair of trashy handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of trashy handcuffs[clothing-title-after]". The text-shortcut of pair of trashy handcuffs is "thc".
Definition: pair of trashy handcuffs is pink themed:
	decide yes.

To decide which number is the initial outrage of (W - pair of trashy handcuffs):
	decide on 6.

pair of wristcuffs is a wrist bond. The printed name of pair of wristcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of wristcuffs[clothing-title-after]". The text-shortcut of pair of wristcuffs is "wc".
Definition: pair of wristcuffs is black themed: decide yes.

To decide which number is the initial outrage of (W - pair of wristcuffs):
	decide on 3.

Figure of handcuffs is the file "Items/Accessories/Arm/handcuffs1.png".
Figure of pink handcuffs is the file "Items/Accessories/Arm/handcuffs2.png".
Figure of furry handcuffs is the file "Items/Accessories/Arm/handcuffs3.png".
Figure of trashy handcuffs is the file "Items/Accessories/Arm/handcuffs4.png".
Figure of wristcuffs is the file "Items/Accessories/Arm/wristcuffs1.png".

Definition: pair of trashy handcuffs is bow themed: decide yes.
Definition: pair of trashy handcuffs is gem themed: decide yes.

To decide which figure-name is clothing-image of (C - pair of handcuffs):
	decide on figure of handcuffs.
To decide which figure-name is clothing-image of (C - pair of pink handcuffs):
	decide on figure of pink handcuffs.
To decide which figure-name is clothing-image of (C - pair of furry handcuffs):
	decide on figure of furry handcuffs.
To decide which figure-name is clothing-image of (C - pair of trashy handcuffs):
	decide on figure of trashy handcuffs.
To decide which figure-name is clothing-image of (C - pair of wristcuffs):
	decide on figure of wristcuffs.

To say WristBondDesc:
	if the item described is pair of handcuffs, say "A pair of metal, medieval looking handcuffs.";
	if the item described is pair of pink handcuffs, say "A pair of pink metal handcuffs.";
	if the item described is pair of furry handcuffs, say "A pair of leather cuffs with pink fluffy material on the inside to make them look more designed for sex play than true bondage.";
	if the item described is pair of trashy handcuffs, say "A pair of leather cuffs with pink fluffy material on the inside to make them look more designed for sex play than true bondage. The leather is studded all over with fake diamonds, pink bows and roses making it impossible to take [if item described is worn]you[otherwise]the wearer[end if] seriously.";
	if the item described is pair of wristcuffs, say "A luxury pair of leather wristcuffs connected by a golden chain, for [if the bimbo of the player < 8]comfortable use[otherwise][line break][second custom style]fun times[roman type][line break][end if] in the bedroom.".

To say ShortDesc of (W - pair of handcuffs):
	say "a medieval pair of handcuffs".

To say ShortDesc of (W - pair of wristcuffs):
	say "a comfortable pair of leather wristcuffs".

This is the wrist bondage prevents hand use rule:
	if the player is wrist bound behind:
		if manual hands attempt is 1, say "[variable custom style]I can't do that with my hands bound behind my back![roman type][line break]";
		rule fails.
The wrist bondage prevents hand use rule is listed in the manual dexterity restriction rules.

Chapter - Wearability

wrist bond wearability rules is a rulebook. The wearability rules of wrist bond is usually wrist bond wearability rules.

This is the wrist bond already worn rule:
	if wearing-target is wrist locking:
		repeat with O running through worn wrist locking clothing:
			if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
			rule fails.
The wrist bond already worn rule is listed in the global wearability rules.

This is the overdress wrist bondage clash rule:
	if the player is wrist bound and summoning is 0:
		say "You won't be able to successfully get this on whilst your wrists are bound...";
		rule fails.
The overdress wrist bondage clash rule is listed in the overdress wearability rules.

This is the wrist bondage dress removal clash rule:
	if the player is wrist bound and wearing-target is not wrist locked:
		if summoning is 0 and autoremove is false, say "You won't be able to strip out of this dress whilst your wrists are bound...";
		rule fails.
The wrist bondage dress removal clash rule is listed in the overdress removability rules.

This is the corset wrist bondage clash rule:
	if the player is wrist bound and summoning is 0:
		say "You won't be able to successfully get this on whilst your wrists are bound...";
		rule fails.
The corset wrist bondage clash rule is listed in the corset wearability rules.

This is the wrist bondage corset removal clash rule:
	if the player is wrist bound and wearing-target is not wrist locked:
		if summoning is 0 and autoremove is false, say "You won't be able to get out of this corset whilst your wrists are bound...";
		rule fails.
The wrist bondage corset removal clash rule is listed in the corset removability rules.

This is the bra wrist bondage clash rule:
	if the player is wrist bound and summoning is 0:
		if autowear is false, say "You won't be able to successfully get this on whilst your wrists are bound...";
		rule fails.
The bra wrist bondage clash rule is listed in the bra wearability rules.

This is the wrist bondage bra removal clash rule:
	if the player is wrist bound and wearing-target is not wrist locked:
		if summoning is 0 and autoremove is false, say "You won't be able to strip this off whilst your wrists are bound...";
		rule fails.
The wrist bondage bra removal clash rule is listed in the bra removability rules.

Carry out wearing wrist bond:
	say "Cuff yourself behind your back? ";
	if the player is bimbo consenting:
		say "You click the locks into place behind your back.";
		now the noun is wrist-bound-behind;
	otherwise:
		say "You click the locks into place with your wrists in front of you.";
		now the noun is wrist-bound-in-front.

Wrist Bondage ends here.
