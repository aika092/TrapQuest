Wrist Bondage by Bondage begins here.

A wrist bond is a kind of bondage. Understand "cuffs" as wrist bond.

To say ClothingDesc of (W - a wrist bond):
	say "[WristBondDesc][if W is bound-in-front and W is worn]They are binding your wrists in front of you. [otherwise if W is worn]They are binding your wrists behind you. [end if]".

To decide which number is the initial outrage of (W - a wrist bond):
	decide on 2.

Wrist bond can be bound-in-front or bound-behind.

[!<YourselfIsWristBound>+

REQUIRES COMMENTING

+!]
Definition: yourself is wrist bound:
	if there is a worn wrist bond, decide yes;
	decide no.

[!<YourselfIsWristBound>+

REQUIRES COMMENTING

+!]
Definition: yourself is wrist bound in front:
	if there is a worn bound-in-front wrist bond, decide yes;
	decide no.

[!<YourselfIsWristBoundBehind>+

REQUIRES COMMENTING

+!]
Definition: yourself is wrist bound behind:
	if there is a worn bound-behind wrist bond, decide yes;
	decide no.


To decide which number is the initial outrage of (C - a wrist bond):
	decide on 2.

To compute SelfExamineDesc of (W - a wrist bond):
	say "Your wrists are kept close together [if W is bound-in-front]in front of[otherwise]behind[end if] you by [ShortDesc of W]. ".

To say ShortDesc of (W - a wrist bond):
	say "wrist bondage".

To compute (C - a wrist bond) unique inheriting from (D - a wrist bond):
	if D is bound-in-front, now C is bound-in-front;
	otherwise now C is bound-behind.

A pair of handcuffs is a kind of wrist bond. The printed name of pair of handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of handcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of pair of handcuffs is "pairs of handcuffs". There is 1 pair of handcuffs.
The text-shortcut of pair of handcuffs is "hc".

A pair of pink handcuffs is a kind of wrist bond. The printed name of pair of pink handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of pink handcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of pair of handcuffs is "pairs of pink handcuffs". There is 1 pair of pink handcuffs.
The text-shortcut of pair of pink handcuffs is "phc".

To decide which number is the initial outrage of (W - a pair of pink handcuffs):
	decide on 5.

A pair of furry handcuffs is a kind of wrist bond. The printed name of pair of furry handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of furry handcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of pair of furry handcuffs is "pairs of furry handcuffs". There is 1 leather pair of furry handcuffs.
The text-shortcut of pair of furry handcuffs is "fhc".

To decide which number is the initial outrage of (W - a pair of furry handcuffs):
	decide on 6.

A pair of trashy handcuffs is a kind of wrist bond. The printed name of pair of trashy handcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of trashy handcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of pair of trashy handcuffs is "pairs of trashy handcuffs". There is 1 leather pair of trashy handcuffs.
The text-shortcut of pair of trashy handcuffs is "thc".

To decide which number is the initial outrage of (W - a pair of trashy handcuffs):
	decide on 7.

A pair of wristcuffs is a kind of wrist bond. The printed name of pair of wristcuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of wristcuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of pair of wristcuffs is "pairs of wristcuffs". There is 1 pair of wristcuffs.
The text-shortcut of pair of wristcuffs is "wc".

To decide which number is the initial outrage of (W - a pair of wristcuffs):
	decide on 3.

Figure of handcuffs is the file "Items\Accessories\Arm\handcuffs1.png".
Figure of pink handcuffs is the file "Items\Accessories\Arm\handcuffs2.png".
Figure of furry handcuffs is the file "Items\Accessories\Arm\handcuffs3.png".
Figure of trashy handcuffs is the file "Items\Accessories\Arm\handcuffs4.png".
Figure of wristcuffs is the file "Items\Accessories\Arm\wristcuffs1.png".

Definition: a pair of handcuffs (called P) is untransformable:
	decide no.
Definition: a pair of wristcuffs (called P) is untransformable:
	decide no.
Definition: a pair of pink handcuffs (called P) is untransformable:
	decide no.
Definition: a pair of furry handcuffs (called P) is untransformable:
	decide no.


Definition: a pair of trashy handcuffs (called C) is bow themed:
	decide yes.

To decide which object is the potential-upgrade-target of (P - pair of handcuffs):
	decide on a random pair of wristcuffs.
To decide which object is the potential-upgrade-target of (P - pair of wristcuffs):
	decide on a random pair of pink handcuffs.
To decide which object is the potential-upgrade-target of (P - pair of pink handcuffs):
	decide on a random pair of furry handcuffs.
To decide which object is the potential-upgrade-target of (P - pair of furry handcuffs):
	decide on a random pair of trashy handcuffs.

To decide which figure-name is clothing-image of (C - a pair of handcuffs):
	decide on figure of handcuffs.
To decide which figure-name is clothing-image of (C - a pair of pink handcuffs):
	decide on figure of pink handcuffs.
To decide which figure-name is clothing-image of (C - a pair of furry handcuffs):
	decide on figure of furry handcuffs.
To decide which figure-name is clothing-image of (C - a pair of trashy handcuffs):
	decide on figure of trashy handcuffs.
To decide which figure-name is clothing-image of (C - a pair of wristcuffs):
	decide on figure of wristcuffs.

To say WristBondDesc:
	if the item described is pair of handcuffs, say "A pair of metal, medieval looking handcuffs.";
	if the item described is pair of pink handcuffs, say "A pair of pink metal handcuffs.";
	if the item described is pair of furry handcuffs, say "A pair of leather cuffs with pink fluffy material on the inside to make them look more designed for sex play than true bondage.";
	if the item described is pair of trashy handcuffs, say "A pair of leather cuffs with pink fluffy material on the inside to make them look more designed for sex play than true bondage. The leather is studded all over with fake diamonds, pink bows and roses making it impossible to take [if item described is worn]you[otherwise]the wearer[end if] seriously.";
	if the item described is pair of wristcuffs, say "A luxury pair of leather wristcuffs connected by a golden chain, for [if the bimbo of the player < 8]comfortable use[otherwise][line break][second custom style]fun times[roman type][line break][end if] in the bedroom.".

To say ShortDesc of (W - a pair of handcuffs):
	say "a medieval pair of handcuffs".

To say ShortDesc of (W - a pair of wristcuffs):
	say "a comfortable pair of leather wristcuffs".

This is the wrist bondage prevents hand use rule:
	if the player is wrist bound behind:
		if manual hands attempt is 1, say "[variable custom style]I can't do that with my hands bound behind my back![roman type][line break]";
		rule fails.
The wrist bondage prevents hand use rule is listed in the hands restriction rules.

Chapter - Wearability

wrist bond wearability rules is a rulebook. The wearability rules of wrist bond is usually wrist bond wearability rules.

This is the wrist bond already worn rule:
	repeat with O running through worn wrist bond:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The wrist bond already worn rule is listed in the wrist bond wearability rules.

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
		now the noun is bound-behind;
	otherwise:
		say "You click the locks into place with your wrists in front of you.";
		now the noun is bound-in-front.


Wrist Bondage ends here.

