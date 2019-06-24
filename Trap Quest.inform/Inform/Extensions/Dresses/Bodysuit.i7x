Bodysuit by Dresses begins here.

bodysuit is a kind of overdress. A bodysuit is fully covering. A bodysuit is usually unskirted. A bodysuit is usually leg covering. A bodysuit is usually only arm covering. A bodysuit is usually zippable. A bodysuit is usually crotch-intact. A bodysuit is usually not-top-displacable.

The printed name of bodysuit is usually "[clothing-title-before][clothing-material of item described] bodysuit[clothing-title-after]".

This is the remove inappropriate bodysuits rule:
	repeat with B running through rubber bodysuits:
		now B is in Holding Pen.
The remove inappropriate bodysuits rule is listed in the diaper quest fix rules.

To compute SelfExamineDesc of (C - a bodysuit):
	say "Your neck to your feet is covered by a [ShortDesc of C]. ".

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
	if C is cursed:
		if a random number between 1 and 2 is 1, now the magic-type of C is posture training;
	otherwise:
		if a random number between 1 and 3 is 1, now the magic-type of C is speed.

Report wearing bodysuit:
	say "It takes a long time to get it [if the largeness of breasts > 9]over your [BreastDesc]![otherwise if the largeness of belly > 4]over your [BellyDesc]![otherwise]on.[end if]";
	allocate 12 seconds.

Definition: a bodysuit is end of transformation chain: decide yes.

Part - Latex Bodysuit

A rubber bodysuit is a kind of bodysuit. A rubber bodysuit is usually sheer. A rubber bodysuit is usually neck covering. There is 1 manly latex rubber bodysuit.  The text-shortcut of rubber bodysuit is "lab".

Figure of latex bodysuit 1 is the file "Items/Clothes/Upper/Latex/bodysuit1.png".

To decide which figure-name is clothing-image of (C - a rubber bodysuit):
	decide on figure of latex bodysuit 1.

To say ClothingDesc of (C - a rubber bodysuit):
	say "A cream coloured translucent skin-tight suit that stretches up to the neck and down to the feet. The suit clings to the body to make sure it hides none of its curves, and it has a zipper at the crotch. Frills at the neck prevent the wearing of any other neckwear. The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...".

To say ShortDesc of (O - a rubber bodysuit):
	say "skin hugging cream latex bodysuit".

Part - Full Body Baby Romper

full body baby romper is a kind of bodysuit. There is 1 transformation-rare full body baby romper. The text-shortcut of full body baby romper is "fbbr".

The printed name of full body baby romper is usually "[clothing-title-before]full body baby romper[clothing-title-after]".

Figure of full body baby romper is the file "Items/Clothes/Upper/Rompers/romper5.png".

To decide which figure-name is clothing-image of (C - a full body baby romper):
	decide on figure of full body baby romper.

Definition: a full body baby romper is babywear: decide yes.
Definition: a full body baby romper is bear themed: decide yes.
Definition: a full body baby romper is cat themed: decide yes.
Definition: a full body baby romper is bow themed: decide yes.
Definition: a full body baby romper is drink themed: decide yes.
Definition: a full body baby romper is pink themed: decide yes.

To say ClothingDesc of (C - a full body baby romper):
	say "This snug pink romper stretches all the way down [if C is worn]your[otherwise]the wearer's[end if] arms and legs. A colourful pattern of rubber ducks, smiling suns, teddies, sippy cups and socks leaves no doubt as to the age appropriateness of the garment.".

To say ShortDesc of (O - a full body baby romper):
	say "baby romper".
To say MediumDesc of (O - a full body baby romper):
	say "full body baby romper".

To decide which number is the initial outrage of (C - a full body baby romper):
	if diaper quest is 0, decide on 6;
	decide on 0.

To decide which number is the initial cringe of (C - a full body baby romper):
	decide on 12.

Bodysuit ends here.

