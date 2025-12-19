Prayer Beads by Equippables begins here.

A magic-beads is a kind of equippable. a magic-beads is usually plastic. a magic-beads is usually zap ready. a magic-beads is unique. Understand "beads" as magic-beads.

Definition: magic-beads is cursable: decide no.
Definition: a magic-beads is blessable: decide no.
Definition: a magic-beads is magic themed: decide yes.

Figure of prayer beads is the file "Items/Accessories/Equippables/prayerbeads1.png".
Figure of jinx beads is the file "Items/Accessories/Equippables/jinxbeads1.png".
Figure of fire beads is the file "Items/Accessories/Equippables/firebeads1.png".



prayer-beads is a magic-beads. prayer-beads is unique. Understand "prayer", "prayer beads" as prayer-beads. The text-shortcut of a prayer-beads is usually "pyb".

To decide which figure-name is clothing-image of (C - prayer-beads):
	decide on figure of prayer beads.

Definition: prayer-beads is white themed: decide yes.

To say ShortDesc of (C - prayer-beads):
	say "prayer beads".

To decide which number is the charisma-influence of (C - prayer-beads):
	if ritual-beads is worn and the class of the player is priestess, decide on the size of ritual-beads - 3;
	decide on 0.

To decide which number is the intelligence-influence of (C - prayer-beads):
	let F be 0;
	if ritual-beads is worn, increase F by the size of ritual-beads;
	decide on F.

To compute periodic effect of (L - prayer-beads):
	if L is blessed and the number of dangerous regional monsters is 0 and a random number between 1 and 50 is 1:
		say "You feel a pleasant wave of warmth passing through your body as the [printed name of L] heals some of your bruises.";
		BodyHeal 1.

To say ClothingDesc of (W - prayer-beads):
	say "A set of white beads connected by a flexible wire. It emits a pleasant, reassuring warmth.".

To uniquely set up (C - prayer-beads):
	now C is blessed.

To compute attack of (E - prayer-beads) at (M - a monster):
	if the zap damage improvement of E > 0:
		say "You point your beads at [NameDesc of M], and reaching behind you, you rip your [ShortDesc of ritual-beads] out of your [variable (random body part penetrated by ritual-beads)]! A blast of power shoots out of your [ShortDesc of prayer-beads] - a direct hit!";
	otherwise:
		say "You try to use your [ShortDesc of E] to cast a spell at [NameDesc of M]. [if ritual-beads is worn]You feel your other hand instinctively reach to pull out your [ShortDesc of ritual-beads], but there is other clothing in the way. So, the spell fizzles[otherwise]Nothing happens[end if]!".

To decide which number is the zap damage improvement of (E - prayer-beads):
	if ritual-beads is worn and ritual-beads is autoremovable, decide on MagicPowerDamage + the magic-modifier of E + (the notch-taken of ritual-beads * 3);
	decide on 0.
To decide which number is the nolinebreaks zap damage improvement of (E - prayer-beads): [autoremovable check causes a newline]
	if ritual-beads is worn, decide on MagicPowerDamage + the magic-modifier of E + (the notch-taken of ritual-beads * 3);
	decide on 0.

To compute attack effect of (E - prayer-beads):
	if attack-type is 5 and ritual-beads is worn and ritual-beads is autoremovable:
		let F be a random body part penetrated by ritual-beads;
		say "The [if the notch-taken of ritual-beads is 1]bead[otherwise][notch-taken of ritual-beads] beads[end if] send your [variable F] spasming as you pull [if the notch-taken of ritual-beads is 1]it[otherwise]them[end if] out!";
		ruin F times (the notch-taken of ritual-beads + 1) / 2;
		now ritual-beads is carried by the player;
		dislodge ritual-beads.

jinx-beads is a magic-beads. jinx-beads is unique. Understand "jinx", "jinx beads" as jinx-beads. The text-shortcut of jinx-beads is usually "jxb". jinx-beads has a number called jinx-charge.

To decide which figure-name is clothing-image of (C - jinx-beads):
	decide on figure of jinx beads.

Definition: jinx-beads is black themed: decide yes.

To say ShortDesc of (C - jinx-beads):
	say "jinx beads".

To decide which number is the fatigue-influence of (C - jinx-beads):
	let F be 3;
	decrease F by the magic-modifier of C;
	decide on F.

To decide which number is the dexterity-influence of (C - jinx-beads):
	let F be 1;
	increase F by the magic-modifier of C;
	if ritual-beads is worn, increase F by the size of ritual-beads;
	decide on F.

To compute periodic effect of (L - jinx-beads):
	increase the jinx-charge of L by 1;
	if the jinx-charge of L > 50:
		now the jinx-charge of L is 0;
		compute jinx of L.

To decide which number is the zap damage improvement of (E - jinx-beads):
	let W be MagicPowerDamage + the magic-modifier of E;
	if ritual-beads is worn:
		if the notch-taken of ritual-beads > 5, increase W by 1;
		if the notch-taken of ritual-beads is 10, increase W by 1;
	decide on W.

To compute attack of (E - jinx-beads) at (M - a monster):
	say "You point your beads at [NameDesc of M] and a small bolt of purple energy shoots out - a direct hit!";

To compute attack effect of (E - jinx-beads):
	let X be 5;
	decrease X by the magic-modifier of E;
	if X < 0, now X is 1;
	increase the jinx-charge of E by X.

To compute jinx of (L - jinx-beads):
	let M be the make-up of face;
	let B be the brightness of hair;
	HairBrightDown 1;
	FaceUp 1;
	if M < the make-up of face and B > the brightness of hair:
		say "The [printed name of L] curl around your fingers as your hair colour darkens, seemingly draining its colour into the new layer of makeup that appears on your face.";
	otherwise if M < the make-up of face or B > the brightness of hair:
		say "The [printed name of L] curl around your fingers as [if B > the brightness of hair]your hair colour darkens[otherwise]a new layer of makeup appears on your face[end if].";
	moderateHumiliate.

To say ClothingDesc of (W - jinx-beads):
	say "A set of black beads connected by a flexible wire. They feel strangely cold.".

To uniquely set up (C - jinx-beads):
	now C is cursed.

A magic consequences rule (this is the jinx beads magic rule):
	if jinx-beads is worn, compute jinx of jinx-beads.

fire-beads is a magic-beads. fire-beads is unique. Understand "fire", "fire beads" as fire-beads. The text-shortcut of fire-beads is "frb".

To say ClothingDesc of (W - fire-beads):
	say "A set of red and yellow beads connected by a flexible wire. It emits a hearth-like warmth.";

To decide which figure-name is clothing-image of (C - fire-beads):
	decide on figure of fire beads.

Definition: fire-beads is demonic: decide yes.
Definition: fire-beads is red themed: decide yes.
Definition: fire-beads is yellow themed: decide yes.

To decide which number is the delicateness-influence of (C - fire-beads):
	let F be 0;
	decrease F by the magic-modifier of C;
	decide on F;

To decide which number is the strength-influence of (C - fire-beads):
	let F be 0;
	if ritual-beads is worn, increase F by the size of ritual-beads;
	decide on F.

[Causes water to dry off faster.]
To compute periodic effect of (W - fire-beads):
	repeat with B running through worn clothing:
		if the water-soak of B > 0:
			decrease the water-soak of B by 1;
			break.

To decide which number is the zap damage improvement of (W - fire-beads):
	let X be MagicPowerDamage + the magic-modifier of W + 3;
	if ritual-beads is worn, increase X by the notch-taken of ritual-beads / 2;
	decide on X.

To compute attack of (W - fire-beads) at (M - a monster):
	say "You point your beads at [NameDesc of M], and a blast of flames shoots out of your [ShortDesc of W] - a direct hit!";

To compute attack effect of (E - fire-beads):
	say "The flames are so hot they even burn you!";
	if ritual-beads is worn:
		BodyRuin (the notch-taken of ritual-beads / 3) + 1;
	otherwise:
		BodyRuin 1.

Prayer Beads ends here.
