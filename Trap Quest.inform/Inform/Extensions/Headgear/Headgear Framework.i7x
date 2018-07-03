Headgear Framework by Headgear begins here.


A headgear is a kind of clothing. Headgear is usually unique. A headgear can be hair growing. A headgear is usually not hair growing. The soak-limit of a headgear is usually 7. [Can this headgear appear in the wardrobe when picking the random headgear starting option.]  A headgear has a number called hair-charge.  A headgear has a number called colour-charge.  A headgear has a number called outfit-charge.
A headgear can be roleplay. A headgear is usually not roleplay.

headgear can be blondeness-neutral, blondeness-positive, blondeness-negative. headgear is usually blondeness-neutral.
headgear can be brightness-neutral, brightness-positive, brightness-negative. headgear is usually brightness-neutral.
headgear can be redness-neutral, redness-positive, redness-negative. headgear is usually redness-neutral.

To say ShortDesc of (C - a headgear):
	say "headwear".

Definition: a headgear (called B) is ingredient:
	if B is product, decide no;
	decide yes.

To decide which number is the crafting key of (B - a headgear):
	decide on 33.

To compute hair colour change of (H - a headgear):
	increase the colour-charge of H by 1;
	if the colour-charge of H > the hair threshold of H:
		now the colour-charge of H is 0;
		let C be a random number between 1 and 3;
		if H is redness-neutral, now C is 1;[when we can't increase redness we force check brightness. NOTE: brightness increase is most likely.]
		if C is 1:
			if the brightness of hair < 3 and H is brightness-positive:
				say "You feel your [printed name of H] changing your hair colour.";
				HairBrightUp 1;
			if the brightness of hair > 0 and H is brightness-negative:
				say "You feel your [printed name of H] changing your hair colour.";
				HairBrightDown 1;
			if H is brightness-neutral, now C is 2;[we couldn't increase brightness so we try blondeness]
		if C is 2:
			if the blondeness of hair < 3 and H is blondeness-positive:
				say "Your feel your [printed name of H] changing your hair colour.";
				HairBlondeUp 1;
			if the blondeness of hair > 0 and H is blondeness-negative:
				say "You feel your [printed name of H] changing your hair colour.";
				HairBlondeDown 1;
			if H is blondeness-neutral, now C is 3;[couldn't increase blondeness so let's try redness]
		if C is 3:
			if the redness of hair < 3 and H is redness-positive:
				say "You feel your [printed name of H] changing your hair colour.";
				HairRedUp 1;
			if the redness of hair > 0 and H is redness-negative:
				say "You feel your [printed name of H] changing your hair colour.";
				HairRedDown 1.

To compute hair colour darken of (H - a headgear): [Some awesome headgears darken hair when blessed]
	if H is blessed and frozen hair is 0:
		increase the colour-charge of H by 1;
		if the colour-charge of H > the hair threshold of H * 3:
			now the colour-charge of H is 0;
			if the redness of hair > natural redness * 3 or the brightness of hair > natural brightness * 3 or the blondeness of hair > natural blondeness * 3:
				say "You feel the blessed holy power your [ShortDesc of H] darkening your hair colour. ";
				HairBrightDown 1;
				HairBlondeDown 1;
				HairRedDown 1.

To decide which number is the initial outrage of (C - a headgear):
	decide on 1.

To set up magic state of (C - a headgear):
	now the raw-magic-modifier of C is 1.

To compute periodic effect of (H - a headgear):
	if diaper quest is 0:
		compute hair growth of H;
		compute hair colour change of H;
	compute outfit of H;
	compute unique periodic effect of H.

To compute unique periodic effect of (H - a headgear):
	do nothing.

To compute outfit of (H - a headgear):
	increase the outfit-charge of H by 1;
	if the outfit-charge of H > the outfit threshold of H:
		now the outfit-charge of H is 0;
		compute class outfit of H.

To decide which number is the outfit threshold of (H - a headgear):
	decide on 25.

To decide which number is the hair threshold of (H - a headgear):
	if H is cursed:
		decide on 30;
	otherwise if H is blessed:
		decide on 75;
	otherwise:
		decide on 60.

To compute hair growth of (H - a headgear):
	if diaper quest is 0 and H is hair growing:
		increase the hair-charge of H by 1;
		if the hair-charge of H > the hair threshold of H + (the raw largeness of hair * 3):
			now the hair-charge of H is 0;
			say "Your [ShortDesc of H] feels warm as your hair grows slightly.";
			HairUp 1.

To compute class outfit of (H - a headgear):
	do nothing.

Definition: a headgear (called C) is too boring:
	decide no.

Definition: a headgear (called C) is too adult:
	decide no.

Definition: a headgear (called C) is stealable:
	decide no.

Part - Wearability

headgear wearability rules is a rulebook. The wearability rules of headgear is usually headgear wearability rules.

This is the headgear already worn rule:
	repeat with O running through worn headgear:
		unless wearing-target is scrunchie and the number of worn scrunchie is 1 and O is scrunchie: [A second scrunchie headgear can appear to turn a ponytail into a pigtail.]
			if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
			rule fails.
The headgear already worn rule is listed in the headgear wearability rules.

Carry out wearing headgear:
	if the noun is not cursed:
		say "As you put it on, it becomes cursed, sealing itself to your [ShortDesc of hair]!";
		now the noun is cursed.


Include Tiara by Headgear.
Include Maid Headdress by Headgear.
Include Scrunchies by Headgear.
Include Cow Ears by Headgear.
Include Runic Headband by Headgear.
Include Flower Hairclip by Headgear.
Include Laurel Wreath by Headgear.
Include Royal Circlet by Headgear.
Include Rubber Top Hat by Headgear.
Include Hoods by Headgear.
Include Cat Ears by Headgear.
Include Sissy Bow by Headgear.
Include Baby Bonnet by Headgear.
Include Santa Hat by Headgear.
Include Demon Horns by Headgear.
Include Severed Tentacle by Headgear.
Include Wasp Antennae by Headgear.
Include Cultist Veil by Headgear.
Include Vampiric Fangs by Headgear.
Include Fox Ears by Headgear.
Include Puppy Ears by Headgear.
Include Glittering Rose by Headgear.
Include Cumdumpster Hat by Headgear.
Include Heart Hairpin by Headgear.
Include Bunny Ears by Headgear.


Headgear Framework ends here.

