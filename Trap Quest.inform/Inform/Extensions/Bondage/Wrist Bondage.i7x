Wrist Bondage by Bondage begins here.

A wrist bond is a kind of bondage. Understand "cuffs" as wrist bond. A wrist bond is usually wrist-bound-in-front.

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

pair of handcuffs is a wrist bond. The printed name of pair of handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of handcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of pair of handcuffs is "hc".

pair of pink handcuffs is a wrist bond. The printed name of pair of pink handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of pink handcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of pair of pink handcuffs is "phc".

To decide which number is the initial outrage of (W - pair of pink handcuffs):
	decide on 5.

pair of furry handcuffs is a wrist bond. pair of furry handcuffs is leather. The printed name of pair of furry handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of furry handcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of pair of furry handcuffs is "fhc".

To decide which number is the initial outrage of (W - pair of furry handcuffs):
	decide on 6.

pair of trashy handcuffs is a wrist bond. pair of trashy handcuffs is leather. The printed name of pair of trashy handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of trashy handcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of pair of trashy handcuffs is "thc".

To decide which number is the initial outrage of (W - pair of trashy handcuffs):
	decide on 7.

A pair of wristcuffs is a wrist bond. The printed name of pair of wristcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of wristcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of pair of wristcuffs is "wc".

To decide which number is the initial outrage of (W - pair of wristcuffs):
	decide on 3.

Figure of handcuffs is the file "Items\Accessories\Arm\handcuffs1.png".
Figure of pink handcuffs is the file "Items\Accessories\Arm\handcuffs2.png".
Figure of furry handcuffs is the file "Items\Accessories\Arm\handcuffs3.png".
Figure of trashy handcuffs is the file "Items\Accessories\Arm\handcuffs4.png".
Figure of wristcuffs is the file "Items\Accessories\Arm\wristcuffs1.png".

Definition: pair of handcuffs (called P) is untransformable:
	decide no.
Definition: pair of wristcuffs (called P) is untransformable:
	decide no.
Definition: pair of pink handcuffs (called P) is untransformable:
	decide no.
Definition: pair of furry handcuffs (called P) is untransformable:
	decide no.

Definition: pair of trashy handcuffs (called C) is bow themed:
	decide yes.

To decide which object is the potential-upgrade-target of (P - pair of handcuffs):
	decide on pair of wristcuffs.
To decide which object is the potential-upgrade-target of (P - pair of wristcuffs):
	decide on pair of pink handcuffs.
To decide which object is the potential-upgrade-target of (P - pair of pink handcuffs):
	decide on pair of furry handcuffs.
To decide which object is the potential-upgrade-target of (P - pair of furry handcuffs):
	decide on pair of trashy handcuffs.

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
The wrist bondage prevents hand use rule is listed in the hands restriction rules.

Chapter - Wearability

wrist bond wearability rules is a rulebook. The wearability rules of wrist bond is usually wrist bond wearability rules.

This is the wrist bond already worn rule:
	if wearing-target is wrist locking:
		repeat with O running through worn wrist locking clothing:
			if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
			rule fails.
The wrist bond already worn rule is listed in the global wearability rules.

This is the overdress wrist bondage clash rule:
	if the player is wrist bound and summoning is 0:
		say "You won't be able to successfully get this on whilst your wrists are bound...";
		rule fails.
The overdress wrist bondage clash rule is listed in the overdress wearability rules.

This is the corset wrist bondage clash rule:
	if the player is wrist bound and summoning is 0:
		say "You won't be able to successfully get this on whilst your wrists are bound...";
		rule fails.
The corset wrist bondage clash rule is listed in the corset wearability rules.

This is the bra wrist bondage clash rule:
	if the player is wrist bound and summoning is 0:
		say "You won't be able to successfully get this on whilst your wrists are bound...";
		rule fails.
The bra wrist bondage clash rule is listed in the bra wearability rules.

Carry out wearing wrist bond:
	say "Cuff yourself behind your back? [yesnolink]";
	if the player consents:
		say "You click the locks into place behind your back.";
		now the noun is wrist-bound-behind;
	otherwise:
		say "You click the locks into place with your wrists in front of you.";
		now the noun is wrist-bound-in-front.


Wrist Bondage ends here.

