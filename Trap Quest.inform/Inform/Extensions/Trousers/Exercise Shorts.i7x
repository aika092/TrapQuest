Exercise Shorts by Trousers begins here.

exercise shorts is a kind of trousers. There is 1 exercise shorts. The armour of exercise shorts is 8. The printed name of exercise shorts is usually "[clothing-title-before]exercise shorts[clothing-title-after]". The text-shortcut of exercise shorts is "es". Figure of exercise shorts is the file "Items/Clothes/Lower/Pants/exerciseshorts1.png".

To decide which figure-name is clothing-image of (H - an exercise shorts):
	decide on figure of exercise shorts.

To say UniqueClothingDesc of (Y - an exercise shorts):
	say "A pair of tight grey exercise shorts that's a size too small for you.".

To say ShortDesc of (Y - an exercise shorts):
	say "pair of exercise shorts".

To decide which object is the unique-upgrade-target of (C - an exercise shorts):
	if the number of worn knickers is 0, decide on a random off-stage hotpants;
	if diaper lover > 0, decide on a random off-stage yoga pants;
	decide on nothing.

Definition: exercise shorts is exercise themed: decide yes.
Definition: exercise shorts is grey themed: decide yes.


predicament-painted-cutoffs is a trousers. predicament-painted-cutoffs is unique. predicament-painted-cutoffs is crotch-exposing. The armour of predicament-painted-cutoffs is 1. The printed name of predicament-painted-cutoffs is "[clothing-title-before]painted cutoffs[clothing-title-after]". The text-shortcut of predicament-painted-cutoffs is "pcf". Figure of predicament-painted-cutoffs is the file "Items/Clothes/Lower/Pants/paintedcutoffs1.jpg". Understand "painted", "cutoffs" as predicament-painted-cutoffs. A predicament-painted-cutoffs can be hand-blocked. A predicament-painted-cutoffs can be hand-decided.

To decide which figure-name is clothing-image of (H - predicament-painted-cutoffs):
	decide on figure of predicament-painted-cutoffs.

To say UniqueClothingDesc of (Y - predicament-painted-cutoffs):
	say "Blue and white paint has been applied to your loins in a way that would make it look like you're wearing denim cutoffs, but there are two hand-prints missing! In order to make it look convincing, you need to hold your hands (which also have blue paint on them) in the exact correct position, which makes it look like you have your hands in your pockets. This will put the tips of your thumbs right on top of your clit.".

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
	if the player is in Predicament20 or the player is not in a predicament room:
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
	if the noun is east and the player is in Predicament19: [Reaching home safely]
		now predicament-painted-cutoffs is not hand-blocked;
		now predicament-painted-cutoffs is hand-decided;
	otherwise:
		request hand decision.

To decide which number is the initial outrage of (C - predicament-painted-cutoffs):
	if C is hand-blocked, decide on 2;
	decide on 12.


Exercise Shorts ends here.
