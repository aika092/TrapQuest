Equippables Framework by Equippables begins here.

An equippable is a kind of clothing. An equippable can be slap ready, knee ready, kick ready or zap ready (this is the equippable-type property). An equippable is usually manly. The soak-limit of an equippable is usually 5. An equippable can be melee or projectile. An equippable is usually melee. An equippable is usually unique.

The printed name of an equippable is "[clothing-title-before][MediumDesc of item described][clothing-title-after]".

To say ShortDesc of of (E - an equippable):
	say "weapon".

To say MediumDesc of of (E - an equippable):
	say ShortDesc of E.

Definition: an equippable is alwaysSure: decide yes.

Definition: an equippable is stealable if diaper quest is 1.

Definition: a thing is zappable: decide no. [Can it be used to cast a magic combat spell?]
Definition: a thing is castable if it is zappable. [Can it be used to cast a magic spell?]

Definition: an equippable is zappable if it is zap ready and it is worn.
Definition: an equippable is hand ready if it is slap ready or it is zap ready.

Understand "wield [something]", "equip [something]" as wearing.

To compute attack of (E - an equippable) at (M - a monster):
	if E is zap ready:
		if the damage improvement of E > 0:
			say "You try to use your [ShortDesc of E] to cast a spell at [NameDesc of M]. Bang! A bolt of energy shoots out strikes [him of M]! A direct hit!";
		otherwise:
			say "You try to use your [ShortDesc of E] to cast a spell at [NameDesc of M]. Nothing happens!";
	otherwise:
		say "You strike the [noun] with your [E]! ".

To compute attack effect of (E - an equippable):
	do nothing.

To decide which number is the damage improvement of (E - a thing):
	decide on 0.

To uniquely set up (E - an equippable):
	do nothing.

Part 1 - Gloves

A gloves is a kind of equippable. A gloves is usually slap ready. Understand "pair", "pair of", "glove" as gloves.


tongue-gloves is a gloves. tongue-gloves is unique. tongue-gloves is biological. The printed name of tongue-gloves is "[clothing-title-before]tongue gloves[clothing-title-after]". The text-shortcut of tongue-gloves is "tgvs". Understand "tongue", "gloves" as tongue-gloves.

Figure of white tongue gloves is the file "Items/Accessories/Equippables/tonguegloves1a.png".
Figure of tonguing white tongue gloves is the file "Items/Accessories/Equippables/tonguegloves1b.png".
Figure of black tongue gloves is the file "Items/Accessories/Equippables/tonguegloves2a.png".
Figure of tonguing black tongue gloves is the file "Items/Accessories/Equippables/tonguegloves2b.png".

To decide which figure-name is the clothing-image of (C - tongue-gloves):
	if tonguesBlack is true:
		if C is tonguing, decide on figure of tonguing black tongue gloves;
		decide on figure of black tongue gloves;
	otherwise:
		if C is tonguing, decide on figure of tonguing white tongue gloves;
		decide on figure of white tongue gloves.

To say ClothingDesc of (C - tongue-gloves):
	say "A pair of [tonguesColour] gloves that nearly reach your armpit, with tongues for laces. [TongueStatus of C]".

To say ShortDesc of (C - tongue-gloves):
	say "pair of tongued gloves".

Definition: tongue-gloves is demonic: decide yes.
Definition: tongue-gloves is tongued: decide yes.
Definition: tongue-gloves is transformation-protected: decide yes.
Definition: tongue-gloves is white themed if tonguesBlack is false.
Definition: tongue-gloves is black themed if tonguesBlack is true.

To decide which number is the initial outrage of (C - tongue-gloves):
	if C is tonguing, decide on 14;
	decide on 4.




Part 2 - Wands

A vibe-wand is a kind of equippable. A vibe-wand is usually zap ready. Understand "vibe", "vibrator", "wand", "vibrating" as vibe-wand. A vibe-wand is usually projectile. A vibe-wand is usually plastic.

To compute climax effect of (E - a vibe-wand):
	do nothing.

To decide which number is the masturbation-bonus of (E - a vibe-wand):
	let X be 1;
	if E is cursed, now X is -1;[You could potentially want a cursed vibrator if you like to spend a lot of time masturbating]
	if E is blessed, now X is 2;
	increase X by the magic-modifier of E;
	increase X by the raw-masturbation-bonus of E;
	decide on X.

To decide which number is the damage improvement of (W - a vibe-wand):
	let X be MagicPowerDamage + 2;
	increase X by the magic-modifier of W;
	if X < 0, decide on 0;
	decide on X.

To compute attack of (W - a vibe-wand) at (M - a monster):
	say "You flick the wand, slashing at [NameDesc of M] with arcs of [if W is pink themed]pink [end if]magic.".

To decide which number is the raw-masturbation-bonus of (E - a vibe-wand):
	decide on 0.

To decide which number is the initial outrage of (E - a vibe-wand):
	decide on 9.

Part 3 - Wearability

equippable wearability rules is a rulebook. The wearability rules of equippable is usually equippable wearability rules.

This is the hand ready equippable already worn rule:
	if wearing-target is hand ready:
		repeat with O running through worn equippables:
			if O is hand ready:
				if summoning is 0 and autowear is false, say "You can't because [if O is wearing-target]you're already wielding it[otherwise]you're already wielding the [ShortDesc of O][end if]!";
				rule fails.
The hand ready equippable already worn rule is listed in the equippable wearability rules.

[This is the rings gloves clash rule:
	if there are worn gloves and wearing-target is ring and summoning is 0:
		say "You need to remove your [random worn gloves] first.";
		rule fails.
The rings gloves clash rule is listed in the global wearability rules.]

Check taking off cursed worn equippable:
	if the noun is hand ready:
		say "The [ShortDesc of noun] is welded to your [if there is worn gloves and the noun is not gloves][random worn gloves][otherwise]hand[end if]!";
		now the curse-ID of the noun is sure instead.

Check taking off worn gloves:
	if the noun is cursed:
		say "The [ShortDesc of noun] won't come off!";
		now the curse-ID of the noun is sure instead;
	let E be a random worn slap ready equippable;
	if E is nothing, let E be a random worn zap ready equippable;
	if E is clothing and E is not the noun:
		say "You would need to stop wielding the [E] first." instead.




painted-vibrator-hands is a gloves.
The printed name of painted-vibrator-hands is "[clothing-title-before]painted vibrator hands[clothing-title-after]". The text-shortcut of painted-vibrator-hands is "pvh". Figure of painted-vibrator-hands is the file "Items/Accessories/Equippables/thumbvibrators1.jpg". Understand "painted", "vibrator", "hands" as painted-vibrator-hands.
Definition: painted-vibrator-hands is blue themed: decide yes.
Definition: painted-vibrator-hands is transformation-protected: decide yes.
Definition: painted-vibrator-hands is removable: decide no.
Definition: painted-vibrator-hands is discovered varied: decide no.

To decide which number is the stimulation of (D - painted-vibrator-hands) on (B - a body part):
	decide on a random number between 5 and 10.

To decide which figure-name is clothing-image of (H - painted-vibrator-hands):
	decide on figure of painted-vibrator-hands.

To say UniqueClothingDesc of (Y - painted-vibrator-hands):
	say "Blue and white paint has been applied to the backs of your hands in the correct pattern to complete the missing pattern around your crotch. Two silently but powerfully buzzing blue egg vibrators are somehow stuck to the inner tips of your two thumbs. That's right... in order to make your painted-on cutoffs look convincing, you would need to push the two egg vibrators into your sensitive clit...".

To say ShortDesc of (Y - painted-vibrator-hands):
	say "thumb vibrators".


Equippables Framework ends here.

