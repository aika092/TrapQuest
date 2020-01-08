Ribbon Bra by Bra begins here.


A ribbon bra is a kind of bra. Figure of ribbon bra is the file "Items/Clothes/Upper/Bras/ribbonbra1.png". A ribbon bra is usually normally-nipple-exposing. A ribbon bra is ridiculously low cut. A ribbon bra is usually optional-top-displacable. The soak-limit of a ribbon bra is usually 9. A ribbon bra is usually transformation-rare.

There is 1 ribbon bra. The text-shortcut of ribbon bra is "rib".

The min size of a ribbon bra is usually 4. The max size of a ribbon bra is usually 13. The support of a ribbon bra is usually 1.

To say ShortDesc of (B - a ribbon bra):
	say "ribbon bra".

To compute SelfExamineDesc of (B - a ribbon bra):
	let X be the largeness of breasts;
	let B be a random bra worn by the player;
	let Y be the size of B;
	if X < 3:
		say " that are inside ";
	otherwise:
		if Y > X + 2:
			say " that hang freely inside the constraints of ";
		otherwise if Y > X and Y < X + 3:
			say " that sit loosely inside the constraints of ";
		otherwise if Y is X:
			say " that sit perfectly inside the constraints of ";
		otherwise if Y < X and Y > X - 2:
			say " that fit tightly inside the constraints of ";
		otherwise if Y < X - 1:
			say " that are overflowing out of the constraints of ";
	say "your red ribbon bra, keeping your nipples exposed. ".


To decide which figure-name is clothing-image of (C - a ribbon bra):
	decide on figure of ribbon bra.

To say ClothingDesc of (C - a ribbon bra):
	say "This bra provides little support, and since the cups are simply two black ribbons across the nipples, reveals a lot of flesh, including the nipples themselves which are framed by a metal ring. [if lactation fetish is 1]However because of its design in this way, it doesn't get soaked by lactating nipples.[otherwise]You're not really sure what the benefit is to wearing this kind of bra.[end if]";

To decide which number is the original price of (C - a ribbon bra):
	decide on 1.

To decide which number is the initial outrage of (C - a ribbon bra):
	decide on 10.

To decide which object is the unique-upgrade-target of (C - a ribbon bra):
	if the number of worn knickers is 0 and the number of worn bra is 0 and the number of worn dress is 0, decide on a random off-stage ribbon dress;
	decide on nothing.

Definition: a ribbon bra is bow themed: decide yes.
Definition: a ribbon bra is red themed: decide yes.


Ribbon Bra ends here.

