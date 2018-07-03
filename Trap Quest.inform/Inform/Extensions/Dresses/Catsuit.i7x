Catsuit by Dresses begins here.

catsuit is a kind of overdress. A catsuit is usually latex. A catsuit is usually unique. A catsuit is usually unskirted. A catsuit is usually leg covering. A catsuit is usually only arm covering. The printed name of catsuit is usually "[TQlink of item described][clothing-title-before]latex catsuit[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of catsuit is "cst". Understand "cat", "suit" as catsuit.

Report wearing catsuit:
	say "It takes a long time to get it [if the largeness of breasts > 9]over your [BreastDesc]![otherwise if the largeness of belly > 4]over your [BellyDesc]![otherwise]on.[end if]";
	now seconds is 12.

To uniquely set up (C - a catsuit):
	if C is cursed:
		if a random number between 1 and 2 is 1, now the magic-type of C is posture training;
	otherwise:
		if a random number between 1 and 3 is 1, now the magic-type of C is speed.

To decide which number is the dexterity-influence of (C - a catsuit):
	let D be 0;
	if C is not cursed: [When not cursed, this increases dexterity by the number of all other latex items.]
		increase D by the magic-modifier of C;
		increase D by the number of worn latex clothing - 1;
	decide on D.

To decide which number is the bimbo-influence of (C - a catsuit):
	decide on 2.

This is the remove inappropriate catsuits rule:
	repeat with B running through catsuits:
		now B is in Holding Pen.
The remove inappropriate catsuits rule is listed in the diaper quest fix rules.

Definition: a catsuit is displacable:
	decide no.

Figure of Latex Catsuit 1 is the file "Items/Clothes/Upper/Latex/latexcatsuit1.png".
Figure of Latex Catsuit 2 is the file "Items/Clothes/Upper/Latex/latexcatsuit2.png".
Figure of Latex Catsuit 3 is the file "Items/Clothes/Upper/Latex/latexcatsuit3.png".

Part 1 - Pink Catsuit

A pink catsuit is a kind of catsuit. A pink catsuit is very low cut. A pink catsuit is crotch-intact. There is 1 pink catsuit. A pink catsuit is usually optional-top-displacable. The printed name of pink catsuit is usually "[TQlink of item described][clothing-title-before]pink latex catsuit[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of pink catsuit is "pcs".

To decide which figure-name is clothing-image of (C - a pink catsuit):
	decide on figure of latex catsuit 3.

To say ClothingDesc of (C - a pink catsuit):
	say "A pink, skin-tight suit that goes up to the neck and down to the ankles. The suit clings to the body to make sure it hides none of its curves, and it has a long strip missing down the middle to show off a lot of cleavage. [if C is not worn]The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...[end if][line break]".

To compute SelfExamineDesc of (C - a pink catsuit):
	say "Your neck to your ankles is covered by a [ShortDesc of C]. ".

To say ShortDesc of (C - a pink catsuit):
	say "skin hugging pink latex catsuit";

To decide which number is the initial outrage of (C - a pink catsuit):
	decide on 9.

To decide which number is the original price of (C - a pink catsuit):
	decide on 8.

To decide which object is the potential-upgrade-target of (C - a pink catsuit):
	decide on a random off-stage black catsuit.

Part 2 - Black Catsuit

A black catsuit is a kind of catsuit. A black catsuit is fully exposing. There is 1 black catsuits. The printed name of black catsuit is usually "[TQlink of item described][clothing-title-before]black latex catsuit[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of black catsuit is "bcs".

To decide which figure-name is clothing-image of (C - a black catsuit):
	if C is worn by the player and the player is prone, decide on Figure of Latex Catsuit 2;
	otherwise decide on Figure of Latex Catsuit 1.

To say ClothingDesc of (C - a black catsuit):
	say "A black, skin-tight suit that goes up to the neck and down to the ankles. The suit clings to the body to make sure it hides none of its curves, and it has holes for breasts and is crotchless, meaning it fails to cover all of one's most sensitive parts!  [if the largeness of breasts > 6]It would definitely do nothing to support your [BreastDesc]. [end if][if C is not worn]The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...[end if][line break]".

To compute SelfExamineDesc of (C - a black catsuit):
	say "Your neck to your ankles (except your tits and crotch) is covered by a [ShortDesc of C]. ".

To say ShortDesc of (O - a black catsuit):
	say "skin hugging black latex catsuit";

To decide which number is the initial outrage of (C - a black catsuit):
	if the largeness of breasts < 3, decide on 11;
	decide on 16.

To decide which number is the original price of (C - a black catsuit):
	decide on 7.

Report wearing latex clothing:
	repeat with B running through worn cursed latex clothing:
		if the noun is black catsuit or B is black catsuit: [cursed latex clothing sticks to each other if at least one is a catsuit]
			if the noun is not B:
				say "Your [printed name of B] seem to melt into your [printed name of the noun] to form one item of clothing... uh-oh.";
				fully curse the noun;
				fully curse B.

Part 3 - WC Catsuit

A WC catsuit is a kind of catsuit. A WC catsuit is usually arm exposing. A WC catsuit is usually fully covering. The printed name of WC catsuit is usually "[TQlink of item described][clothing-title-before]latex human toilet catsuit[clothing-title-after][TQxlink of item described][verb-desc of item described]". Understand "human", "toilet" as WC catsuit. There is 1 WC catsuit. Figure of WC catsuit is the file "Items/Clothes/Upper/Special/WcLatexCat.png". The text-shortcut of WC catsuit is "wcs". A WC catsuit is usually oral-sex-addiction-influencing.

[!<TheWCCatsuitPissSlutRule>+

Significantly increases the chances of urination.

+!]
This is the WC catsuit piss slut rule:
	if there is a worn WC catsuit, increase the desirability of belly by 20.
The WC catsuit piss slut rule is listed in the piss slut eligibility rules.

To decide which figure-name is clothing-image of (C - a WC catsuit):
	decide on figure of WC catsuit.

To say ClothingDesc of (C - a WC catsuit):
	say "A white, skin-tight suit that goes up to the neck and down to the knees. The suit clings to the body to make sure it hides none of its curves, and it has a massive gap at the crotch, leaving the wearer completely exposed!  Even worse, the catsuit has stick figures of a man and a woman printed on the chest, much like you would see at the entrance to a public toilet.[if C is not worn]The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...[end if][line break]".

To compute SelfExamineDesc of (C - a WC catsuit):
	say "Your neck to your knees (except your crotch) is covered by a [ShortDesc of C]. ".

To say ShortDesc of (O - a WC catsuit):
	say "skin hugging white latex catsuit".

Definition: a WC catsuit (called C) is untransformable:
	if the class of the player is human toilet, decide yes;
	decide no.


Catsuit ends here.

