Prayer Beads by Equippables begins here.

A magic-beads is a kind of equippable. a magic-beads is usually plastic. a magic-beads is rare. Understand "beads" as magic-beads.

Definition: magic-beads is cursable:
	decide no.

Definition: a magic-beads is blessable:
	decide no.



prayer-beads is a magic-beads. prayer-beads is plastic. prayer-beads is unique. Understand "prayer", "prayer beads" as prayer-beads. The text-shortcut of a prayer-beads is usually "pyb".

To say ShortDesc of (C - prayer-beads):
	say "prayer beads".

To decide which number is the fatigue-influence of (C - prayer-beads):
	unless the class of the player is priestess, decide on 0;
	let F be -1;
	decrease F by the magic-modifier of C;
	if ritual-beads is worn, decrease F by the charge of ritual-beads;
	decide on F.

To decide which number is the intelligence-influence of (C - prayer-beads):
	let F be 1;
	increase F by the magic-modifier of C;
	if ritual-beads is worn, increase F by the charge of ritual-beads;
	decide on F.

To compute periodic effect of (L - prayer-beads):
	if L is blessed and the number of nearby dangerous monsters is 0 and a random number between 1 and 15 is 1:
		say "You feel a pleasant wave of warmth passing through your body as the [printed name of L] heals some of your bruises";
		BodyHeal 1.

To say ClothingDesc of (W - prayer-beads):
	say "A set of white beads connected by a flexible wire. It emits a pleasant, reassuring warmth.".

To uniquely set up (C - a prayer-beads):
	now C is blessed.


jinx-beads is an equippable. jinx-beads is plastic. jinx-beads is unique. Understand "jinx", "jinx beads" as jinx-beads. The text-shortcut of jinx-beads is usually "jxb".

To say ShortDesc of (C - jinx-beads):
	say "jinx beads".

To decide which number is the fatigue-influence of (C - jinx-beads):
	let F be 1;
	increase F by the magic-modifier of C;
	decide on F;

To decide which number is the dexterity-influence of (C - jinx-beads):
	let F be 1;
	increase F by the magic-modifier of C;
	if ritual-beads is worn, increase F by the charge of ritual-beads;
	decide on F.

To compute periodic effect of (L - jinx-beads):
	if a random number between 1 and 30 is 1:
		let M be the make-up of face;
		let B be the brightness of hair;
		HairBrightDown 1;
		FaceUp 1;
		if M < the make-up of face and B > the brightness of hair:
			say "The [printed name of L] curl around your fingers as your hair colour darkens, seemingly draining its color into the new layer of makeup that appears on your face.";
		otherwise if M < the make-up of face or B > the brightness of hair:
			say "The [printed name of L] curl around your fingers as [if B > the brightness of hair]your hair colour darkens[otherwise]a new layer of makeup appears on your face[end if].".

To say ClothingDesc of (W - jinx-beads):
	say "A set of black and pink beads connected by a flexible wire. You get the feeling that they aren't on your side.".

To uniquely set up (C - a jinx-beads):
	now C is cursed.

Prayer Beads ends here.
