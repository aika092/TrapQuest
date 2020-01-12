Exercise Shorts by Trousers begins here.

exercise shorts is a kind of trousers. An exercise shorts is manly. An exercise shorts is usually leg exposing. The armour of an exercise shorts is 8. Understand "exercise", "shorts" as exercise shorts.
To say ShortDesc of (Y - an exercise shorts):
	say "pair of exercise shorts".
To decide which object is the unique-upgrade-target of (C - an exercise shorts):
	if the number of worn knickers is 0, decide on a random off-stage hotpants;
	let E be a random off-stage exercise shorts;
	if E is clothing and the initial outrage of E > the initial outrage of C, decide on E;
	if diaper lover > 0, decide on a random off-stage yoga pants;
	decide on nothing.
Definition: an exercise shorts is exercise themed: decide yes.


blue-exercise-shorts is an exercise shorts. blue-exercise-shorts is rare.
The printed name of blue-exercise-shorts is usually "[clothing-title-before]loose blue exercise shorts[clothing-title-after]". Understand "loose", "blue" as blue-exercise-shorts. The text-shortcut of blue-exercise-shorts is "lbes".
Figure of blue exercise shorts is the file "Items/Clothes/Lower/Pants/exerciseshorts2.png".
To decide which figure-name is clothing-image of (H - blue-exercise-shorts):
	decide on figure of blue exercise shorts.
To say UniqueClothingDesc of (Y - blue-exercise-shorts):
	say "A pair of vintage 80s themed blue exercise shorts that are nice and baggy.".
To say MediumDesc of (Y - blue-exercise-shorts):
	say "pair of loose blue exercise shorts".
Definition: blue-exercise-shorts is blue themed: decide yes.
To decide which number is the initial outrage of (C - blue-exercise-shorts):
	decide on 1.
To decide which number is the defaultDiaperHidingLength of (C - blue-exercise-shorts):
	decide on 2. [Can only hide the thinnest of diapers]


grey-exercise-shorts is an exercise shorts.
The printed name of grey-exercise-shorts is usually "[clothing-title-before]tight grey exercise shorts[clothing-title-after]". Understand "tight", "grey" as grey-exercise-shorts. The text-shortcut of grey-exercise-shorts is "tges".
Figure of tight exercise shorts is the file "Items/Clothes/Lower/Pants/exerciseshorts1.png".
To decide which figure-name is clothing-image of (H - grey-exercise-shorts):
	decide on figure of tight exercise shorts.
To say UniqueClothingDesc of (Y - grey-exercise-shorts):
	say "A pair of tight grey exercise shorts that's a size too small for you.".
To say MediumDesc of (Y - grey-exercise-shorts):
	say "pair of tight grey exercise shorts".
Definition: grey-exercise-shorts is grey themed: decide yes.
To decide which number is the initial outrage of (C - grey-exercise-shorts):
	decide on 3.
To decide which number is the defaultDiaperHidingLength of (C - grey-exercise-shorts):
	decide on 0. [Can only hide normal underwear]





predicament-painted-cutoffs is a trousers. predicament-painted-cutoffs is unique. predicament-painted-cutoffs is crotch-exposing. The armour of predicament-painted-cutoffs is 1. The printed name of predicament-painted-cutoffs is "[clothing-title-before]painted cutoffs[clothing-title-after]". The text-shortcut of predicament-painted-cutoffs is "pcf". Understand "painted", "cutoffs" as predicament-painted-cutoffs. A predicament-painted-cutoffs can be hand-blocked. A predicament-painted-cutoffs can be hand-decided.

Figure of predicament-painted-cutoffs is the file "Items/Clothes/Lower/Pants/paintedcutoffs1.jpg".
Figure of full-painted-cutoffs is the file "Items/Clothes/Lower/Pants/paintedcutoffs2.jpg".

To decide which figure-name is clothing-image of (H - predicament-painted-cutoffs):
	if current-predicament is vibe-photo-predicament, decide on figure of full-painted-cutoffs;
	decide on figure of predicament-painted-cutoffs.

To say UniqueClothingDesc of (Y - predicament-painted-cutoffs):
	say "Blue and white paint has been applied to your loins in a way that would make it look like you're wearing denim cutoffs[if current-predicament is vibe-photo-predicament]! Hopefully it's convincing enough that people won't notice...[otherwise], but there are two hand-prints missing! In order to make it look convincing, you need to hold your hands (which also have blue paint on them) in the exact correct position, which makes it look like you have your hands in your pockets. This will put the tips of your thumbs right on top of your clit[end if].".

To say ShortDesc of (Y - predicament-painted-cutoffs):
	say "painted-on cutoffs".


Definition: predicament-painted-cutoffs is blue themed: decide yes.
Definition: predicament-painted-cutoffs is transformation-protected: decide yes.
Definition: predicament-painted-cutoffs is removable: decide no.
Definition: predicament-painted-cutoffs is discovered varied: decide no.
Definition: predicament-painted-cutoffs is potentially at least partially asshole covering if it is hand-blocked.
Definition: predicament-painted-cutoffs is potentially asshole covering if it is hand-blocked.
Definition: predicament-painted-cutoffs is potentially at least partially vagina covering if it is hand-blocked.
Definition: predicament-painted-cutoffs is potentially vagina covering if it is hand-blocked.

To compute periodic effect of (C - predicament-painted-cutoffs):
	if current-predicament is vibe-photo-predicament:
		now C is hand-blocked;
		if the player is in Predicament20 or the player is not in a predicament room:
			say "[bold type]The paint on your loins fades from existence![roman type][line break]";
			only destroy predicament-painted-cutoffs;
			destroy vibe-photo-predicament;
	otherwise if the player is in Predicament20 or the player is not in a predicament room:
		say "[bold type]The paint on your hands and loins fades from existence! [roman type]The vibrating eggs drop to the floor, motionless.";
		only destroy predicament-painted-cutoffs;
		only destroy painted-vibrator-hands;
		increase the predicament-completed of painted-cutoffs-predicament by 1;
	otherwise:
		if the player is in a park room, cutshow Figure of painted cutoffs predicament;
		request hand decision;
		if C is hand-blocked:
			say "The egg vibrators are both pushed into your clit from either side. They buzz away powerfully!";
			stimulate vagina from painted-vibrator-hands;
	now C is not hand-decided.

To request hand decision:
	let C be predicament-painted-cutoffs;
	if C is not hand-decided:
		let T be a random carried thing;
		if T is a thing or the player is prone or refactoryperiod > 0:
			say bold type;
			if refactoryperiod > 0, say "You can't bring yourself to cover the hand prints of your [C] while your oversensitive clit is still recovering from your recent orgasm!";
			otherwise say "You can't cover the hand prints of your [C] while [if T is a thing]carrying [NameDesc of T][otherwise]on your knees[end if][bold type].";
			say "[roman type][line break]";
			now C is not hand-blocked;
			now C is hand-decided;
		otherwise:
			say "[if C is hand-blocked]Keep covering[otherwise]Cover[end if] the hand prints of your [ShortDesc of C]?";
			now temporaryYesNoBackground is Figure of No-Image-Yet;
			if the player is consenting:
				now C is hand-blocked;
			otherwise if C is hand-blocked:
				say "You take your hands away. Now anyone who sees you will instantly be able to tell you're not wearing any pants.";
				now C is not hand-blocked;
			update appearance level;
			now C is hand-decided;
			now temporaryYesNoBackground is Figure of small image.

Carry out going when predicament-painted-cutoffs is worn:
	if current-predicament is vibe-photo-predicament:
		do nothing;
	otherwise if the noun is east and the player is in Predicament19: [Reaching home safely]
		now predicament-painted-cutoffs is not hand-blocked;
		now predicament-painted-cutoffs is hand-decided;
	otherwise:
		request hand decision.

To decide which number is the initial outrage of (C - predicament-painted-cutoffs):
	if C is hand-blocked, decide on 2;
	decide on 12.



Exercise Shorts ends here.
