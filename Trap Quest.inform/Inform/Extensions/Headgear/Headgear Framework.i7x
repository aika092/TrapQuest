Headgear Framework by Headgear begins here.


A headgear is a kind of clothing. Headgear is usually unique.  A headgear can be hair growing.  A headgear is usually not hair growing. The soak-limit of a headgear is usually 7. A headgear can be roleplay. A headgear is usually not roleplay. [Can this headgear appear in the wardrobe when picking the random headgear starting option.]

headgear can be blondeness-neutral, blondeness-positive, blondeness-negative.  headgear is usually blondeness-neutral.
headgear can be brightness-neutral, brightness-positive, brightness-negative.  headgear is usually brightness-neutral.
headgear can be redness-neutral, redness-positive, redness-negative.  headgear is usually redness-neutral.

To say ShortDesc of (C - a headgear):
	say "headwear".

Definition: a headgear (called B) is ingredient:
	if B is product, decide no;
	decide yes.

To decide which number is the crafting key of (B - a headgear):
	decide on 33.

To compute hair colour change of (H - a headgear):
	if the headgear chance of H <= the threshold of H:
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

To decide which number is the initial outrage of (C - a headgear):
	decide on 1.

To set up magic state of (C - a headgear):
	now the raw-magic-modifier of C is 1.

[headgear-chance is a number that varies.
headgear-threshold is a number that varies.]
[We calculate the numbers like this because we'll be doing this same calculation a lot for different headgear and we might want the same results several times within a headgear's checks.]

To compute periodic effect of (H - a headgear):
	compute hair growth of H;
	compute hair colour change of H;
	compute class outfit of H.

To decide which number is the headgear chance of (H - a headgear):
	if unlucky is 1, decide on a random number between 0 and 175;
	decide on a random number between 1 and 250.

To decide which number is the threshold of (H - a headgear):
	if H is cursed:
		decide on  6;
	otherwise if H is blessed:
		decide on 3;
	otherwise:
		decide on 4.

To compute hair growth of (H - a headgear):
	if diaper quest is 0 and H is hair growing:
		let X be 0;
		if H is cursed, now X is -50;
		if H is blessed, now X is 150;
		if the raw largeness of hair <  max hair length and a random number between 1 and (200 + X + (the raw largeness of hair * 30)) is 1:
			say "Your [printed name of H] feels warm, as your hair grows slightly.";
			HairUp 1.

To compute hair colour change of (H - a headgear):
	do nothing.
	
To compute class outfit of (H - a headgear):
	do nothing.

Definition: a headgear (called C) is too boring:
	decide no.

Definition: a headgear (called C) is stealable:
	decide no.

Part - Wearability

headgear wearability rules is a rulebook.  The wearability rules of headgear is usually headgear wearability rules.

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
