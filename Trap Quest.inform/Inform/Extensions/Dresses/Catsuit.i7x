Catsuit by Dresses begins here.

catsuit is a kind of overdress. A catsuit is usually latex. A catsuit is usually transformation-rare. A catsuit is usually manly. A catsuit is usually unskirted. A catsuit is usually leg covering. A catsuit is usually only arm covering. A catsuit is usually crotch-exposing. The printed name of catsuit is usually "[clothing-title-before]latex catsuit[clothing-title-after]". The text-shortcut of catsuit is "cst". Understand "cat", "suit" as catsuit.

To decide which object is the unique-upgrade-target of (C - a catsuit):
	if diaper quest is 0 and there is a worn demonic wearthing, decide on tongue-suit;
	decide on nothing.

Report wearing catsuit:
	say "It takes a long time to get it [if the largeness of breasts > 9]over your [BreastDesc]![otherwise if the largeness of belly > 4]over your [BellyDesc]![otherwise]on.[end if]";
	allocate 12 seconds.

To say ShortDesc of (C - a catsuit):
	say "catsuit".

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

This is the remove inappropriate catsuits rule:
	repeat with B running through catsuits:
		now B is in Holding Pen.
The remove inappropriate catsuits rule is listed in the diaper quest fix rules.

Definition: a catsuit is displacable: decide no.

Figure of Latex Catsuit 1 is the file "Items/Clothes/Upper/Latex/latexcatsuit1.png".
Figure of Latex Catsuit 2 is the file "Items/Clothes/Upper/Latex/latexcatsuit2.png".
Figure of Latex Catsuit 3 is the file "Items/Clothes/Upper/Latex/latexcatsuit3.png".

outrageous-catsuit is a humiliating situation.
Definition: outrageous-catsuit (called A) is applicable:
	let B be a random worn catsuit;
	let O be the outrage of B;
	if B is crotch covering or B is not fully exposing, decide no; [e.g. pink catsuit]
	if the player is not disgraced and O is too humiliating and (penis is exposed or vagina is exposed), decide yes;
	decide no.
To reflect on (A - outrageous-catsuit):
	let B be a random worn catsuit;
	if the player is not a pervert:
		say "[first custom style][one of]If anyone I know ever sees photos of me in this catsuit, [if the player is female]with my tits and [vagina] on full display, [end if]I will be so mortified that I will just curl up into a ball and die.[or]Everyone can see my [genitals]... this catsuit is just so pointless![stopping]";
	otherwise if the dexterity-influence of B > 0 and the player is a pervert:
		say "[second custom style][one of]I know this catsuit is completely outrageous, but I do somehow feel more flexible![or]This naughty catsuit just makes me feel so limber![stopping]";
	otherwise:
		say "[variable custom style][one of]This catsuit has holes specifically for my chest and [genitals]. This must be the sluttiest item of clothing ever made.[or]I need to get this catsuit off as soon as possible, before someone else sees me![stopping]".

Part 1 - Pink Catsuit

A pink catsuit is a kind of catsuit. A pink catsuit is very low cut. A pink catsuit is womanly. A pink catsuit is crotch-intact. A pink catsuit is plentiful. There is 1 pink catsuit. A pink catsuit is usually optional-top-displacable. The printed name of pink catsuit is usually "[clothing-title-before]pink latex catsuit[clothing-title-after]". The text-shortcut of pink catsuit is "pcs".

Definition: a pink catsuit is pink themed: decide yes.

To decide which figure-name is clothing-image of (C - a pink catsuit):
	decide on figure of latex catsuit 3.

To say ClothingDesc of (C - a pink catsuit):
	say "A pink, skin-tight suit that goes up to the neck and down to the ankles. The suit clings to the body to make sure it hides none of its curves, and it has a long strip missing down the middle to show off a lot of cleavage. [if C is not worn]The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...[end if][line break]".

To compute SelfExamineDesc of (C - a pink catsuit):
	say "Your neck to your ankles is covered by a [MediumDesc of C]. ".

To say MediumDesc of (C - a pink catsuit):
	say "skin hugging pink latex catsuit".

To decide which number is the initial outrage of (C - a pink catsuit):
	decide on 6.

To decide which number is the original price of (C - a pink catsuit):
	decide on 8.

Part 2 - Black Catsuit

A black catsuit is a kind of catsuit. A black catsuit is fully exposing. There is 1 black catsuits. The printed name of black catsuit is usually "[clothing-title-before]black latex catsuit[clothing-title-after]". The text-shortcut of black catsuit is "bcs".

To decide which figure-name is clothing-image of (C - a black catsuit):
	if C is worn by the player and the player is prone, decide on Figure of Latex Catsuit 2;
	otherwise decide on Figure of Latex Catsuit 1.

To say ClothingDesc of (C - a black catsuit):
	say "A black, skin-tight suit that goes up to the neck and down to the ankles. The suit clings to the body to make sure it hides none of its curves, and it has holes for breasts and is crotchless, meaning it fails to cover all of one's most sensitive parts! [if the largeness of breasts > 6]It would definitely do nothing to support your [BreastDesc]. [end if][if C is not worn]The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...[end if][line break]".

To compute SelfExamineDesc of (C - a black catsuit):
	say "Your neck to your ankles (except your tits and crotch) is covered by a [MediumDesc of C]. ".

To say MediumDesc of (O - a black catsuit):
	say "skin hugging black latex catsuit".

To decide which number is the initial outrage of (C - a black catsuit):
	decide on 10.

To decide which number is the original price of (C - a black catsuit):
	decide on 7.

Report wearing latex clothing:
	repeat with B running through worn cursed latex clothing:
		if the noun is black catsuit or B is black catsuit: [cursed latex clothing sticks to each other if at least one is a catsuit]
			if the noun is not B:
				say "Your [printed name of B] seem to melt into your [printed name of the noun] to form one item of clothing... uh-oh.";
				fully curse the noun;
				fully curse B.

Definition: a black catsuit is black themed: decide yes.

Part 3 - WC Catsuit

A WC catsuit is a kind of catsuit. A WC catsuit is usually arm exposing. A WC catsuit is usually fully covering. The printed name of WC catsuit is usually "[clothing-title-before]latex human toilet catsuit[clothing-title-after]". Understand "human", "toilet" as WC catsuit. There is 1 unique WC catsuit. Figure of WC catsuit is the file "Items/Clothes/Upper/Special/WcLatexCat.png". The text-shortcut of WC catsuit is "wcs". A WC catsuit is usually oral-sex-addiction-influencing.
Definition: a WC catsuit is toilet themed: decide yes.
Definition: a WC catsuit is white themed: decide yes.

[!<TheWCCatsuitPissSlutRule>+

Significantly increases the chances of urination.

+!]
This is the WC catsuit piss slut rule:
	if there is a worn WC catsuit, increase the desirability of belly by 20.
The WC catsuit piss slut rule is listed in the piss slut eligibility rules.

To decide which figure-name is clothing-image of (C - a WC catsuit):
	decide on figure of WC catsuit.

To say ClothingDesc of (C - a WC catsuit):
	say "A white, skin-tight suit that goes up to the neck and down to the knees. The suit clings to the body to make sure it hides none of its curves, and it has a massive gap at the crotch, leaving the wearer completely exposed! Even worse, the catsuit has stick figures of a man and a woman printed on the chest, much like you would see at the entrance to a public toilet.[if C is not worn]The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...[end if][line break]".

To compute SelfExamineDesc of (C - a WC catsuit):
	say "Your neck to your knees (except your crotch) is covered by a [MediumDesc of C]. ".

To say MediumDesc of (O - a WC catsuit):
	say "white [']human toilet['] catsuit".

Definition: a WC catsuit is class-transformation-protected if the class of the player is human toilet.

To decide which number is the initial outrage of (C - a WC catsuit):
	decide on 16.

plugsuit is an overdress. plugsuit is latex. plugsuit is manly. plugsuit is unskirted. plugsuit is bottom-exclusive. plugsuit is crotch-intact. plugsuit is vagina plugging. The plug size of plugsuit is 2. The printed name of plugsuit is "[clothing-title-before]latex plugsuit[clothing-title-after]". The text-shortcut of plugsuit is "pst". Understand "suit" as plugsuit.

Definition: plugsuit is displacable: decide no.
Definition: plugsuit is black themed: decide yes.
Definition: plugsuit is fetish appropriate if diaper quest is 0.

Figure of plugsuit is the file "Items/Clothes/Upper/Latex/plugsuit1.jpg".

To decide which figure-name is clothing-image of (C - plugsuit):
	decide on figure of plugsuit.

To say ClothingDesc of (C - plugsuit):
	say "A black, skin-tight one-piece leotard. The suit clings to the body to make sure it hides none of its curves. A plug is inbuilt into the crotch of the garment, to ensure that anyone who wears the item has their [if the player is female][vagina][otherwise][asshole][end if] kept [if the vaginal sex addiction of the player > 3]nice and [end if]full.".

To compute SelfExamineDesc of (C - plugsuit):
	let F be a random fuckhole penetrated by C;
	say "Your neck to your crotch is covered by a [ShortDesc of C][if F is fuckhole]. Its in-built plug is keeping your [variable F] open and stimulated[end if].".

To say ShortDesc of (C - plugsuit):
	say "catsuit".
To say MediumDesc of (C - plugsuit):
	say "black latex plugsuit".

To decide which number is the initial outrage of (C - plugsuit):
	decide on 5.

To decide which number is the original price of (C - a plugsuit):
	decide on 4.

Catsuit ends here.
