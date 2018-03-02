Bodysuit by Dresses begins here.

bodysuit is a kind of overdress. A bodysuit is usually latex. A bodysuit is fully covering. A bodysuit is usually unskirted. A bodysuit is usually leg covering. A bodysuit is usually only arm covering. A bodysuit is usually zippable. A bodysuit is usually crotch-intact. A bodysuit is usually not-top-displacable.

Figure of latex bodysuit 1 is the file "Items\Clothes\Upper\Latex\bodysuit1.png".

The printed name of bodysuit is usually "[TQlink of item described][clothing-title-before]latex bodysuit[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of bodysuit is "lab".

This is the remove inappropriate bodysuits rule:
	repeat with B running through bodysuits:
		now B is in Holding Pen.
The remove inappropriate bodysuits rule is listed in the diaper quest fix rules.

A rubber bodysuit is a kind of bodysuit. A rubber bodysuit is usually sheer. A rubber bodysuit is usually neck covering. There is 1 latex rubber bodysuit.

To decide which figure-name is clothing-image of (C - a rubber bodysuit):
	decide on figure of latex bodysuit 1.

To say ClothingDesc of (C - a rubber bodysuit):
	say "A cream coloured translucent skin-tight suit that goes up to the neck and down to the feet. The suit clings to the body to make sure it hides none of its curves, and it has a zipper at the crotch. Frills at the neck prevent the wearing of any other neckwear. The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...".

To compute SelfExamineDesc of (C - a bodysuit):
	say "Your neck to your feet is covered by a [ShortDesc of C]. ".

To say ShortDesc of (O - a bodysuit):
	say "skin hugging cream latex bodysuit";

To decide which number is the initial outrage of (C - a bodysuit):
	decide on 12.

To decide which number is the original price of (C - a bodysuit):
	decide on 8.

To decide which number is the dexterity-influence of (C - a bodysuit):
	let D be 1;
	increase D by the magic-modifier of C;
	decide on D.

To decide which number is the strength-influence of (C - a bodysuit):
	let D be 1;
	increase D by the magic-modifier of C;
	decide on D.

To decide which number is the bimbo-influence of (C - a bodysuit):
	decide on 1.

To uniquely set up (C - a bodysuit):
	set up magic state of C;
	if C is cursed:
		if a random number between 1 and 2 is 1, now the magic-type of C is posture training;
	otherwise:
		if a random number between 1 and 3 is 1, now the magic-type of C is speed.

Report wearing bodysuit:
	say "It takes a long time to get it [if the largeness of breasts > 9]over your [BreastDesc]![otherwise if the largeness of belly > 4]over your [BellyDesc]![otherwise]on.[end if]";
	now seconds is 12.

Definition: a bodysuit (called C) is end of transformation chain:
	decide yes.


Bodysuit ends here.

