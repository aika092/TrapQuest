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
				HairBrightUp 1;
				say "You feel your [printed name of H] changing your hair colour.";
			if the brightness of hair > 0 and H is brightness-negative:
				HairBrightDown 1;
				say "You feel your [printed name of H] changing your hair colour.";
			if H is brightness-neutral, now C is 2;[we couldn't increase brightness so we try blondeness]
		if C is 2:
			if the blondeness of hair < 3 and H is blondeness-positive:
				HairBlondeUp 1;
				say "Your feel your [printed name of H] changing your hair colour.";
			if the blondeness of hair > 0 and H is blondeness-negative:
				HairBrightDown 1;
				say "You feel your [printed name of H] changing your hair colour.";
				if H is blondeness-neutral, now C is 3;[couldn't increase blondeness so let's try redness]
		if C is 3:
			if the redness of hair < 3 and H is redness-positive:
				HairRedUp 1;
				say "You feel your [printed name of H] changing your hair colour.";
			if the redness of hair > 0 and H is redness-negative:
				HairRedDown 1;
				say "You feel your [printed name of H] changing your hair colour.".

To compute hair colour darken of (H - a headgear): [Some awesome headgears darken hair when blessed]
	if H is blessed and frozen hair is 0:
		increase the colour-charge of H by 1;
		if the colour-charge of H > the hair threshold of H * 3:
			now the colour-charge of H is 0;
			if the redness of hair > natural redness * 3 or the brightness of hair > natural brightness * 3 or the blondeness of hair > natural blondeness * 3:
				say "You feel your headband darkening hair colour. ";
				HairBrightDown 1;
				HairBlondeDown 1;
				HairRedDown 1.

To decide which number is the initial outrage of (C - a headgear):
	decide on 1.

To set up magic state of (C - a headgear):
	now the raw-magic-modifier of C is 1.

To compute periodic effect of (H - a headgear):
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


Headgear Framework ends here.

