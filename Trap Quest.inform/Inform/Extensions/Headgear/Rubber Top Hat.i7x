Rubber Top Hat by Headgear begins here.


A rubber top hat is a kind of headgear.  A rubber top hat is usually latex.  Figure of rubber top hat is the file "tophat1.png".  A rubber top hat is blondeness-positive.  A rubber top hat is brightness-positive.  A rubber top hat is redness-negative.  A rubber top hat is usually hair growing.  The text-shortcut of a rubber top hat is "rth".

There is 1 rubber top hat.

To decide if a rubber top hat is roleplay:
	if artificial enhancements fetish is 1, decide yes;
	decide no.

The printed name of rubber top hat is usually "[TQlink of item described][clothing-title-before]rubber top hat[clothing-title-after][TQxlink of item described][verb-desc of item described]".


To decide which figure-name is the clothing-image of (C - a rubber top hat):
	decide on figure of rubber top hat.

To say ClothingDesc of (H - a rubber top hat):
	say "This pink rubber mini top hat is quite the novelty item for dressing up as a showgirl.  It also screams a love for everything girly, fake and superficial.".

To say ShortDesc of (H - a rubber top hat):
	say "mini top hat".

To compute SelfExamineDesc of (H - rubber top hat):
	let X be the largeness of hair;
	say "You are wearing a pink latex top hat in your [ShortDesc of hair].  ".
	
To compute hair growth of (H - a rubber top hat):
	let X be 0;
	if H is cursed, now X is -25;
	if H is blessed, now X is 50;
	if the largeness of hair <  max hair length and a random number between 1 and (100 + X + (the fake largeness of hair * 7) - (the outrage of H * 3)) is 1 and the fake largeness of hair > 0 and the fake largeness of hair < 10:
		say "Your [printed name of H] feels warm.  You feel the fake hair extensions in your hair grow in length!";
		FakeHairUp 1;

plastic-summoned is a number that varies.

To compute class outfit of (H - a rubber top hat):
	let R be a random off-stage pink rubber dress;
	let P be a random off-stage plentiful platform heels; [there are some rare ones we don't want]
	if the headgear chance of H < the threshold of H:
		if R is actually summonable or (R is pink rubber dress and plastic-summoned is 0):
			if plastic-summoned is 0:
				repeat with O running through worn dresses:
					say "Your [O] vanishes!";
					destroy O;
				repeat with O running through worn skirts:
					say "Your [O] vanishes!";
					destroy O;
			say "[bold type]Your [printed name of H] wobbles violently, and a tight rubber pink dress materialises around you.[roman type][line break]";
			summon R cursed;
			now the raw-magic-modifier of R is the largeness of breasts / 4;
			if the silicone volume of breasts is 0 and the player is not top heavy:
				let B be the largeness of breasts;
				while B is the largeness of breasts:
					BustImplantsUp 1;
				say "[bold type]You feel and hear your tits expanding like stretchy rubber until they are [BreastDesc]![roman type]  Touching and feeling them, you can definitely feel tight, less squishy areas below the nipple.  Somehow, your new dress has summoned breast implants inside of your boobs!";
			now plastic-summoned is 1;
		otherwise if the class of the player is silicone queen and P is actually summonable:
			summon P cursed;
			now P is pvc;
			now the heel-height of P is 4;
			now the raw-magic-modifier of P is 0;
			if the silicone volume of breasts + a random number between 1 and 10 > 10, now P is speed;
			otherwise now P is normal;
			say "[bold type][if the player is upright]You suddenly shoot four inches upwards off the ground![otherwise]The soles of your feet are forced into an arch![end if][roman type][line break]A pair of [printed name of P] have appeared on your feet.";
		otherwise if the class of the player is silicone queen and the total volume of hips < max ass size and the silicone volume of hips is 0:
			AssImplantsUp 1;
			say "[bold type]You feel and hear your ass expanding like stretchy rubber! Touching and feeling it, you can feel a tight, less squishy area in each cheek. Somehow, your dress has also summoned implants into your ass![roman type][line break]".

To set up influence of (C - a rubber top hat):
	set up sex-based influence of C.

Definition: a rubber top hat (called C) is condom pinnable:
	decide yes.



Rubber Top Hat ends here.
