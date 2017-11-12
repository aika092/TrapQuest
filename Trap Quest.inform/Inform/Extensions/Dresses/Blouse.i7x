Blouse by Dresses begins here.

A bodice is a kind of overdress.  A bodice is usually unskirted.  A bodice is usually satin.  Understand "blouse" as bodice.  A bodice is usually high cut.  A bodice is usually rare.  The text-shortcut of bodice is "blo".

A pink bodice is a kind of bodice.  A pink bodice is usually only arm covering.  A black bodice is a kind of bodice.   The text-shortcut of pink bodice is "pbl".  The text-shortcut of black bodice is "bbl".

Figure of Black Blouse is the file "blouse1.png".
Figure of Pink Blouse is the file "blouse2.png".

To decide which figure-name is clothing-image of (C - a bodice):
	if C is pink bodice, decide on Figure of Pink Blouse;
	decide on Figure of Black Blouse.

To say ClothingDesc of (C - a bodice):
	say "A loose fitting blouse that is a lot more modest than any other piece of clothing you've seen in this game.  [if the semen-soak of C > 0]If it wasn't covered in [semen], it [otherwise]It [end if]would probably help you feel less humiliated about yourself.".

To compute SelfExamineDesc of (C - a bodice):
	say "A [ShortDesc of C] keeps your top half modestly covered.  ".

To say ShortDesc of (C - a bodice):
	say "blouse".

To say ShortDesc of (C - a pink bodice):
	say "pink blouse".
To say ShortDesc of (C - a black bodice):
	say "black blouse".

To decide which number is the initial outrage of (C - a bodice):
	decide on 0.
	
To decide which number is the original price of (C - a bodice):
	decide on 8.

To decide which number is the humiliation-influence of (O - a bodice):
	let B be 1;
	increase B by the magic-modifier of O;
	decide on B.

To set up influence of (C - a bodice):
	set up random-based influence of C.

To decide which object is the unique-upgrade-target of (C - a pink bodice):
	if diaper quest is 1 and the number of worn skirts is 0, decide on a random kitty cat baby dress;
	decide on nothing.

To decide which object is the potential-upgrade-target of (C - a bodice):
	if there is a worn skirt and there is an off-stage jacket:
		decide on a random off-stage jacket;
	otherwise if the number of worn skirts is 0:
		if C is black bodice, decide on a random off-stage black clubbing dress;
		otherwise decide on a random off-stage pink clubbing dress;
	decide on nothing.

There are 4 unique pink bodices. [needed for wench drops.]

The printed name of pink bodice is usually "[TQlink of item described][clothing-title-before]pink blouse[clothing-title-after][TQxlink of item described][verb-desc of item described]".

There are 4 unique black bodices.  [needed for wench drops.]

The printed name of black bodice is usually "[TQlink of item described][clothing-title-before]black blouse[clothing-title-after][TQxlink of item described][verb-desc of item described]".

This is the blouse fix rule:
	now a random black bodice is plentiful.
The blouse fix rule is listed in the diaper quest fix rules.


Blouse ends here.
