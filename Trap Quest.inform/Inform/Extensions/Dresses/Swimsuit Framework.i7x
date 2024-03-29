Swimsuit Framework by Dresses begins here.

A swimsuit is a kind of underdress. A swimsuit is usually unskirted. A swimsuit is usually nylon. A swimsuit is usually bottom-exclusive. A swimsuit is usually top-displacable. A swimsuit is usually erect-nipple-exposing. The text-shortcut of swimsuit is "ss". The printed name of a swimsuit is "[clothing-title-before][MediumDesc of item described][clothing-title-after]".

Definition: swimsuit is same-type:
	if theme-share-target is swimsuit, decide yes;
	decide no.

To compute SelfExamineDesc of (C - a swimsuit):
	say "A [ShortDesc of C] clings tightly to your body. ".

To say ShortDesc of (C - a swimsuit):
	say "swimsuit".
To say MediumDesc of (C - a swimsuit):
	say ShortDesc of C.

To set up magic attribute of (C - a swimsuit):
	if a random number between 1 and 2 is 1, now C is dominance;
	if a random number between 1 and 3 is 1, now C is protection;
	set up rare magic attribute of C.

Definition: a swimsuit is swimming themed: decide yes.
Definition: a swimsuit is uncovered themed: decide yes.

Chapter - Monokini

A monokini is a kind of swimsuit. A monokini is usually crotch-intact. Understand "onepiece", "swimsuit" as monokini.

To decide which number is the initial outrage of (C - a monokini):
	decide on 3.
To decide which number is the crotch-tightness of (C - a monokini):
	if C is crotch-intact, decide on 3;
	decide on 0.
To decide which number is the initial armour of (C - a monokini):
	decide on 4.

This is the remove inappropriate swimwear rule:
	repeat with B running through monokini:
		if the initial cringe of B is 0, now B is in Holding Pen.
The remove inappropriate swimwear rule is listed in the diaper quest fix rules.

A normal-monokini is a kind of monokini.

Chapter - Slutty Monokinis

[There are a few different types of monokini, really just for transformation sequence handling.]

A string monokini is a kind of monokini. A string monokini is normally-nipple-exposing. A string monokini is belly exposing. A string monokini is usually fully exposing. A string monokini is transformation-rare.
To decide which object is the unique-upgrade-target of (C - a string monokini):
	[if tutorial is 1, decide on nothing;]
	decide on a random off-stage transformation-eligible colour-sharing slut monokini.
To decide which number is the penis-capacity of (C - a string monokini):[what's the largest size of penis it can cover?]
	decide on 1.
To decide which number is the initial armour of (C - a string monokini):
	decide on 2.

A minimalist monokini is a kind of monokini. A minimalist monokini is usually very low cut.  A minimalist monokini is usually optional-top-displacable.
To decide which number is the initial outrage of (C - a minimalist monokini):
	decide on 6.
To decide which number is the penis-capacity of (C - a minimalist monokini):[what's the largest size of penis it can cover?]
	decide on 4.

A strap monokini is a kind of monokini. Understand "strap" as strap monokini. A strap monokini is usually ridiculously low cut. A strap monokini is usually optional-top-displacable.
To decide which number is the initial outrage of (C - a strap monokini):
	decide on 8.
To decide which number is the penis-capacity of (C - a strap monokini):[what's the largest size of penis it can cover?]
	decide on 2.

A slut monokini is a kind of string monokini. A slut monokini is usually neck covering. A slut monokini is usually optional-top-displacable.
To decide which number is the initial outrage of (C - a slut monokini):
	decide on 12.
Definition: a slut monokini is end of transformation chain: decide yes.
To decide which number is the penis-capacity of (C - a slut monokini):[what's the largest size of penis it can cover?]
	decide on 1.

To compute SelfExamineDesc of (O - a string monokini):
	say "A [ShortDesc of O] stretches over your body without covering much at all. ".

To say ShortDesc of (C - a string monokini):
	say "string swimsuit".

To decide which number is the initial outrage of (C - a string monokini):
	decide on 9.

Swimsuit Framework ends here.
