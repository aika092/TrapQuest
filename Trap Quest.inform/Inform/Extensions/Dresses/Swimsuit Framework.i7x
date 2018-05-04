Swimsuit Framework by Dresses begins here.

A swimsuit is a kind of underdress. A swimsuit is usually swimwear. A swimsuit is usually unskirted. A swimsuit is usually nylon. A swimsuit is usually bottom-exclusive. A swimsuit is usually optional-top-displacable. The text-shortcut of swimsuit is "ss".

To compute SelfExamineDesc of (C - a swimsuit):
	say "A [ShortDesc of C] clings tightly to your body. ".

To say ShortDesc of (C - a swimsuit):
	say "swimsuit".

To uniquely set up (C - a swimsuit):
	if a random number between 1 and 2 is 1, now C is dominance;
	if a random number between 1 and 3 is 1, now C is protection.



Chapter - Monokini

A monokini is a kind of swimsuit. A monokini is usually crotch-intact. Understand "onepiece", "swimsuit" as monokini. A monokini is usually top-displacable. 

To say ShortDesc of (C - a monokini):
	say "swimsuit".

To decide which number is the initial outrage of (C - a monokini):
	decide on 3.

To decide which number is the original price of (C - a monokini):
	if C is total protection, decide on 5;
	decide on 1.

This is the remove inappropriate swimwear rule:
	repeat with B running through monokini:
		now B is in Holding Pen.
The remove inappropriate swimwear rule is listed in the diaper quest fix rules.

Chapter - Slutty Monokinis


[There are a few different types of monokini, really just for transformation sequence handling.]

A string monokini is a kind of monokini. The armour of string monokini is usually 2. The soak-limit of a string monokini is usually 5. A string monokini is normally-nipple-exposing. A string monokini is belly exposing. A string monokini is usually fully exposing. A string monokini is unique.
To decide which object is the potential-upgrade-target of (C - a string monokini):
	[if tutorial is 1, decide on nothing;]
	decide on a random off-stage slut monokini.

A minimalist monokini is a kind of monokini. A minimalist monokini is usually very low cut. 
To decide which number is the initial outrage of (C - a minimalist monokini):
	decide on 7.
To decide which object is the potential-upgrade-target of (C - a minimalist monokini):
	decide on a random off-stage strap monokini.

A strap monokini is a kind of monokini. Understand "strap" as strap monokini. A strap monokini is usually ridiculously low cut. 
To decide which number is the initial outrage of (C - a strap monokini):
	decide on 9.
To decide which object is the potential-upgrade-target of (C - a strap monokini):
	decide on a random off-stage string monokini.

A slut monokini is a kind of string monokini. A slut monokini is usually neck covering.
To decide which number is the initial outrage of (C - a slut monokini):
	decide on 13.
Definition: a slut monokini (called C) is end of transformation chain:
	decide yes.

To compute SelfExamineDesc of (O - a string monokini):
	say "A [ShortDesc of O] stretches over your body without covering much at all. ".

To say ShortDesc of (C - a string monokini):
	say "string swimsuit".

To decide which number is the initial outrage of (C - a string monokini):
	decide on 11.

To decide which number is the original price of (C - a string monokini):
	if C is total protection, decide on 3;
	decide on 1.


Swimsuit Framework ends here.


