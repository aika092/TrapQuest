Ankle Bondage by Bondage begins here.

An ankle bond is a kind of bondage. Understand "cuffs" as ankle bond.

Include Dungeon Chains by Objects.

To decide which number is the initial outrage of (C - an ankle bond):
	decide on 2.

[!<YourselfIsAnkleBound>

REQUIRES COMMENTING

+!]
Definition: yourself is ankle bound:
	if there is a worn ankle bond, decide yes;
	decide no.

To compute SelfExamineDesc of (A - an ankle bond):
	say "Your ankles are kept close together by [ShortDesc of A]. ".

To say ShortDesc of (A - an ankle bond):
	say "ankle bondage".

A pair of anklecuffs is a kind of ankle bond. The printed name of pair of anklecuffs is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of anklecuffs[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of pair of anklecuffs is "ac". The printed plural name of pair of anklecuffs is "pairs of anklecuffs". There is 1 pair of anklecuffs.

Figure of anklecuffs is the file "anklecuffs1.png".

To decide which figure-name is clothing-image of (C - a pair of anklecuffs):
	decide on figure of anklecuffs.

To say ClothingDesc of (C - a pair of anklecuffs):
	say "A pair of metal, medieval looking anklecuffs.".

To say ShortDesc of (A - a pair of anklecuffs):
	say "pair of medieval anklecuffs".
	

Chapter - Wearability

ankle bond wearability rules is a rulebook. The wearability rules of ankle bond is usually ankle bond wearability rules.

This is the ankle bond already worn rule:
	repeat with O running through worn ankle bond:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The ankle bond already worn rule is listed in the ankle bond wearability rules.

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

