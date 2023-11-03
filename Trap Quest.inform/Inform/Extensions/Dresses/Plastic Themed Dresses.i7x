Plastic Themed Dresses by Dresses begins here.

A silicone dress is a kind of overdress. A silicone dress is unique. A silicone dress is latex. A silicone dress is short. A silicone dress has a number called charge. A silicone dress is erect-nipple-exposing.

Definition: a silicone dress is pink themed: decide yes.

To decide which number is the initial outrage of (C - a silicone dress):
	decide on 5.

To compute class set up of (C - a silicone dress):
	now the raw-magic-modifier of C is the largeness of breasts / 5.

To say ClassSummonFlav of (C - a silicone dress):
	say "A tight [ShortDesc of C] appears on your body!";
	if the silicone volume of breasts is 0 and the player is not top heavy:
		let B be the largeness of breasts;
		while B is the largeness of breasts:
			BustImplantsUp 1; [Replaces any air with silicone.]
		say "[bold type]You feel and hear your tits expanding like stretchy rubber until they are [BreastDesc]![roman type] Touching and feeling them, you can definitely feel tight, less squishy areas below the nipple. Somehow, your new dress has summoned breast implants inside of your boobs!";
	if the total weighty volume of hips < max ass size and the silicone volume of hips is 0:
		AssImplantsUp 1;
		say "[bold type]You feel and hear your ass expanding like stretchy rubber! Touching and feeling it, you can feel a tight, less squishy area in each cheek. Somehow, your dress has also summoned implants into your ass![roman type][line break]".

A growing silicone dress is a kind of silicone dress.

Definition: a silicone dress is class-relevant:
	if the class of the player is silicone queen, decide yes;
	decide no.
Definition: a growing silicone dress is upgradable:
	if the player is not top heavy, decide yes;
	decide no.
Definition: a growing silicone dress is transformation-protected:
	if it is not upgradable, decide yes;
	decide no.
Definition: a growing silicone dress is disintegration-protected: decide yes.
Definition: a growing silicone dress is loop-safe-upgradable:
	if it is upgradable, decide yes;
	decide no.
Definition: a growing silicone dress is transformation-theme-blockable: decide no. [It doesn't care about the theme it shares with other items.]
To decide which number is the transformability of (C - a growing silicone dress):
	decide on 12.
To decide which object is the unique-upgrade-target of (C - a growing silicone dress):
	decide on C.

To transform (C - a growing silicone dress):
	say "Your silicone implants grow [one of]a small amount[or]some more[stopping]!";
	BustImplantsUp 1.

To set up influence of (C - a silicone dress):
	set up sex-based influence of C.

To say ShortDesc of (C - a silicone dress):
	say "rubber minidress".

[#LXorDD:
 Try to increase the size of artificial enhancements, within a range:
 1: breasts
 2: ass
 3: lips
 4: labia
 If O is 1, 2, 3, or 4, that option is selected
 Otherwise a random choice within the nominated range of choices is made.
 Returns the number of the body part if it 'improved' something, otherwise 0.
]
To decide which number is ArtificialUp (R - a number) options with override (O - a number):
	let N be O;
	if N is 0, now N is a random number between 1 and R;
	if N is 1 and the player is not top heavy and the silicone volume of breasts < 20:
		say "[if the silicone volume of breasts is 0][bold type]You feel and hear your tits expanding like stretchy rubber until they are [BreastDesc]![roman type] Touching and feeling them, you can definitely feel tight, less squishy areas below the nipple. Somehow, your new dress has summoned breast implants inside of your boobs![otherwise]You feel your breast implants slightly increase in size.[end if]";
		BustImplantsUp 1 + extreme proportions fetish;
		decide on 1;
	if R is 1 or (N is 1 and O is not 0): [Only fall through if allowable.]
		decide on 0;
	if N <= 2 and the total weighty volume of hips < max ass size and the silicone volume of hips > 0:
		say "You feel your ass implants slightly increase in size.";
		AssImplantsUp 1 + extreme proportions fetish;
		decide on 2;
	if R is 2 or (N is 2 and O is not 0): [Only fall through if allowable.]
		decide on 0;
	if N <= 3 and lips of face < max lip size:
		say "You feel your lips tingle and swell, like [one of]collagen has been teleported [italic type]inside[roman type] them[or]a bee just stung them[or]you just had collagen injections[or]the cells just put on a mad growth spurt[or]someone just gave you a fat lip[at random], plumping them up.";
		LipsUp 1;
		decide on 3;
	if R is 3 or (N is 3 and O is not 0): [Only fall through if allowable.]
		decide on 0;
	if player is possessing a vagina and labia plumpness of the vagina < max labia plumpness:
		say "There's a sudden intense warmth and [italic type]activity[roman type] in your [vagina], making you gasp and bite your lip as you sense parts of your female anatomy swell up, growing [one of]puffy[or]even puffier[or]puffier still[stopping]. You can feel [one of]parts of you[or]your labia[or]the lips of your [vagina][or]those succulent [']petals['][at random] [one of]plump up[or]rub together[or]rubbing against one another[or]grow larger[at random].";
		LabiaUp 1;
		decide on 4;
	otherwise:
		say "There's a pink glow and weird feeling in your [mystical-player-penis] that alternates hot and cold, a kind of buzzing and suction, and a feeling of [one of]cells draining away[or]shrinkage[or]lessening[or]internal drainage[or]loss[at random]. The glow fades... and you feel you have, too, somehow.";
		SpecialPenisDown 1;
		decide on 4;
	decide on 0.

To compute periodic effect of (R - a silicone dress):
	increase the charge of R by 1;
	if the charge of R > 100 / (unlucky + 1):
		now the charge of R is 0;
		if ArtificialUp 2 options with override 0 is 0:
			say "You feel an odd ripple through your body, but nothing seems to happen.".

To UniquePinkWardrobeUnclash (C - a silicone dress):
	repeat with O running through worn removable breast covering clothing:
		if the cleavageCover of O > the cleavageCover of C, WardrobeVanish O.

plastic-is-fantastic dress is a growing silicone dress. plastic-is-fantastic dress is low cut. Understand "plastic", "plastic is", "fantastic", "pink", "rubber", "dress" as plastic-is-fantastic dress.

The printed name of plastic-is-fantastic dress is "[clothing-title-before]pink rubber 'PLASTIC IS FANTASTIC' dress[clothing-title-after]". The text-shortcut of plastic-is-fantastic dress is "pifd".

Figure of plastic-is-fantastic dress is the file "Items/Clothes/Upper/Latex/rubberdress1.png".

To decide which figure-name is clothing-image of (C - plastic-is-fantastic dress):
	decide on figure of plastic-is-fantastic dress.

To say ClothingDesc of (C - plastic-is-fantastic dress):
	say "This tight fitting pink dress is made of rubber and [if C is worn and the largeness of breasts > 6]stretches lewdly over your [BreastDesc], proudly displaying[otherwise]displays[end if] the words 'PLASTIC IS FANTASTIC' across [if C is worn]your[otherwise]the[end if] chest.".

To say MediumDesc of (C - plastic-is-fantastic dress):
	say "'PLASTIC IS FANTASTIC' minidress".

To decide which object is the unique-upgrade-target of (C - plastic-is-fantastic dress):
	if the used condoms of C > 0, decide on condoms dress;
	decide on nothing.

daddy issues dress is a growing silicone dress. daddy issues dress is high cut. daddy issues dress is not-top-displacable. Understand "pink", "rubber" as daddy issues dress.

Definition: daddy issues dress is class-relevant:
	if the class of the player is silicone queen or the class of the player is schoolgirl, decide yes;
	decide no.

Definition: a clothing is brat themed: decide no.
Definition: daddy issues dress is brat themed: decide yes. [schoolgirl + silicone queen]

The printed name of daddy issues dress is "[clothing-title-before]pink rubber 'Daddy Issues' dress[clothing-title-after]". The text-shortcut of daddy issues dress is "ddid".

Figure of daddy issues dress is the file "Items/Clothes/Upper/Latex/rubberdress5.png".

To decide which figure-name is clothing-image of (C - daddy issues dress):
	decide on figure of daddy issues dress.

To say ClothingDesc of (C - daddy issues dress):
	say "This tight fitting pink dress is made of rubber and [if C is worn and the largeness of breasts > 6]stretches lewdly over your [BreastDesc], proudly displaying[otherwise]displays[end if] the words 'Daddy's Girl' across [if C is worn]your[otherwise]the[end if] chest and the words 'DADDY ISSUES' across [if C is worn]your[otherwise]the[end if] upper thighs.".

To say MediumDesc of (C - daddy issues dress):
	say "'DADDY ISSUES' minidress".

condoms dress is a silicone dress. condoms dress is high cut.

The printed name of condoms dress is "[clothing-title-before]condoms dress[clothing-title-after]". The text-shortcut of condoms dress is "cndd".

Definition: condoms dress is class-relevant:
	if the class of the player is silicone queen or the class of the player is condom collector, decide yes;
	decide no.

To compute class set up of (C - condoms dress):
	now the quest of C is condom-creampie-quest;
	now C is cursed.

Figure of condoms dress is the file "Items/Clothes/Upper/Latex/rubberdress6.png".

To decide which figure-name is clothing-image of (C - condoms dress):
	decide on figure of condoms dress.

To say ClothingDesc of (C - condoms dress):
	say "This short dress is made entirely from unravelled condoms. Mercifully, they are not filled with semen.".

To say ShortDesc of (C - condoms dress):
	say "condoms dress".
To say MediumDesc of (C - condoms dress):
	say "dress made of condoms".

To decide which number is the initial outrage of (C - condoms dress):
	decide on 11.

To decide which object is the unique-upgrade-target of (C - condoms dress):
	decide on giant condom.

giant condom is a growing silicone dress. giant condom is fully covering. giant condom is see-through. giant condom is not-top-displacable. giant condom is hobble-skirted. giant condom is crotch-intact.

The printed name of giant condom is "[clothing-title-before]giant condom[clothing-title-after]". The text-shortcut of giant condom is "gcdm".

This is the giant condom prevents hand use rule:
	if giant condom is worn:
		if manual hands attempt is 1, say "[variable custom style]I can't do that whilst my arms are stuck to my sides under this giant condom![roman type][line break]";
		rule fails.
The giant condom prevents hand use rule is listed in the hands restriction rules.

Definition: giant condom is class-relevant:
	if the class of the player is silicone queen or the class of the player is condom collector, decide yes;
	decide no.

Figure of giant condom is the file "Items/Clothes/Upper/Latex/rubberdress7.png".

To decide which figure-name is clothing-image of (C - giant condom):
	decide on figure of giant condom.

To say ClothingDesc of (C - giant condom):
	say "This giant condom-shaped piece of latex covers your whole body and prevents you from moving your arms.".

To say ShortDesc of (C - giant condom):
	say "giant condom".
To say MediumDesc of (C - giant condom):
	say "giant condom".

To decide which number is the initial outrage of (C - giant condom):
	decide on 14.

rubber-bunny-waitress-outfit is a growing silicone dress. rubber-bunny-waitress-outfit is unskirted. rubber-bunny-waitress-outfit is crotch-intact. rubber-bunny-waitress-outfit is totally-exclusive.

The printed name of rubber-bunny-waitress-outfit is "[clothing-title-before]latex bunny waitress outfit[clothing-title-after]". The text-shortcut of rubber-bunny-waitress-outfit is "lbwo". Understand "bunny", "waitress", "outfit" as rubber-bunny-waitress-outfit.

Definition: rubber-bunny-waitress-outfit is class-relevant:
	if the class of the player is silicone queen or the class of the player is bunny, decide yes;
	decide no.

Figure of rubber-bunny-waitress-outfit is the file "Items/Clothes/Upper/Latex/rubberdress3.png".

To decide which figure-name is clothing-image of (C - rubber-bunny-waitress-outfit):
	decide on figure of rubber-bunny-waitress-outfit.

To say ClothingDesc of (C - rubber-bunny-waitress-outfit):
	say "This fetishy take on a classic sexy waitress outfit has the usual black satin replaced with shiny pink latex. A V-shaped crotch and a white fluffy cottontail completes the garment[if background-waitress is 0]. It makes the wearer better at avoiding spilling drinks[end if].".

To say ShortDesc of (C - rubber-bunny-waitress-outfit):
	say "bunny outfit".
To say MediumDesc of (C - rubber-bunny-waitress-outfit):
	say "latex bunny waitress outfit".

To compute class set up of (C - rubber-bunny-waitress-outfit):
	compute default bunny outfit class set up of C.

Definition: rubber-bunny-waitress-outfit is pink themed: decide yes.
Definition: rubber-bunny-waitress-outfit is party themed: decide yes.

rubber-royal-dress is a growing silicone dress. rubber-royal-dress is low cut. rubber-royal-dress is only arm covering. Understand "pink", "latex", "royal", "dress" as rubber-royal-dress.

Definition: rubber-royal-dress is class-relevant:
	if the class of the player is silicone queen or the class of the player is princess, decide yes;
	decide no.

The printed name of rubber-royal-dress is "[clothing-title-before]pink latex royal dress[clothing-title-after]". The text-shortcut of rubber-royal-dress is "plrd".

Figure of rubber-royal-dress is the file "Items/Clothes/Upper/Latex/rubberdress8.png".

To decide which figure-name is clothing-image of (C - rubber-royal-dress):
	decide on figure of rubber-royal-dress.

To say ClothingDesc of (C - rubber-royal-dress):
	say "This tight fitting pink latex dress is decorated with black bows and frills, and [if C is worn and the largeness of breasts > 6]stretches lewdly over your [BreastDesc], proudly displaying[otherwise]displays[end if] a lot of [if C is worn]your[otherwise]the wearer's[end if] cleavage, and exposes a lot of thigh. It somehow comes across as fetishy, yet rather fancy, and perhaps even regal, partywear.".

To say MediumDesc of (C - rubber-royal-dress):
	say "regal latex minidress".

Definition: rubber-royal-dress is pink themed: decide yes.
Definition: rubber-royal-dress is bow themed: decide yes.
Definition: rubber-royal-dress is party themed: decide yes.

To compute class set up of (C - rubber-royal-dress):
	if silver-tiara is worn, transform silver-tiara into trashy-tiara.

Plastic Themed Dresses ends here.
