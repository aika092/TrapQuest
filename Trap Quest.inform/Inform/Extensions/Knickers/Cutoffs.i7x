Cutoffs by Knickers begins here.

cutoffs is a kind of knickers. cutoffs is usually denim. cutoffs is usually totally-exclusive. The armour of cutoffs is 7. Understand "pair", "of" as cutoffs. The soak-limit of cutoffs is usually 12.

Definition: a cutoffs is blue themed: decide yes.
Definition: a cutoffs is rippable: decide yes.

To compute SelfExamineDesc of (K - a cutoffs):
	say "A pair of tiny tiny denim cutoffs fails to provide much dignity to your [ShortDesc of hips]. ";

To say selfexamineuniquetitle of (K - a cutoffs):
	say "pair of cutoffs".

To decide which object is the unique-upgrade-target of (C - a cutoffs):
	if a random number between 1 and 3 > 1, decide on a random off-stage heart window cutoffs.

Definition: a cutoffs is uncovered themed: decide yes.

To decide which number is the unique outrage of (C - a cutoffs):
	decide on 2.

Part 1 - Neat Cutoffs

neat cutoffs is a cutoffs. The printed name of neat cutoffs is "[TQlink of item described][item style][cumdesc]pair of [unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]neat denim cutoffs[clothing-title-after]". The text-shortcut of neat cutoffs is "ndc".

To decide which figure-name is clothing-image of (C - neat cutoffs):
	decide on figure of neat cutoffs.

To say ClothingDesc of (K - neat cutoffs):
	say "Extremely tiny denim shorts, these are skimpier than most common underwear. They are so tight that they [if K is worn]are[otherwise]would be[end if] impossible to displace without completely removing them.".
Figure of neat cutoffs is the file "Items/Clothes/Lower/Underwear/Skimpy/Cutoffs/cutoffs1.png".

Part 2 - Torn Cutoffs

torn cutoffs is a cutoffs. The printed name of torn cutoffs is "[TQlink of item described][item style][cumdesc]pair of [unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]torn denim cutoffs[clothing-title-after]". The text-shortcut of torn cutoffs is "tdc".

To decide which figure-name is clothing-image of (C - torn cutoffs):
	decide on figure of torn cutoffs.

To say ClothingDesc of (K - torn cutoffs):
	say "Extremely tiny denim shorts, these are skimpier than most common underwear. The waist is wide enough that wearing them [if K is worn]is[otherwise]would be[end if] pretty comfortable.".
Figure of torn cutoffs is the file "Items/Clothes/Lower/Underwear/Skimpy/Cutoffs/cutoffs2.png".

Definition: torn cutoffs is displacable: decide yes.

Part 3 - Heart Window Cutoffs

heart window cutoffs is a cutoffs. heart window cutoffs is transformation-rare. heart window cutoffs is butt-windowed.

The printed name of heart window cutoffs is "[TQlink of item described][item style][cumdesc]pair of [unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]heart window denim cutoffs[clothing-title-after]". The text-shortcut of heart window cutoffs is "hwdc".

To decide which figure-name is clothing-image of (C - heart window cutoffs):
	decide on figure of heart window cutoffs.

To decide which number is the unique outrage of (C - heart window cutoffs):
	decide on 5.

To say ClothingDesc of (K - heart window cutoffs):
	say "Denim shorts with a heart shaped hole at the back and front that exposes [if K is worn]your[otherwise]the wearer's[end if] [genitals].".
Figure of heart window cutoffs is the file "Items/Clothes/Lower/Underwear/Skimpy/Cutoffs/cutoffs3.png".

Definition: heart window cutoffs is transformation-protected: decide yes.
Definition: heart window cutoffs is heart themed: decide yes.

predicament-painted-cutoffs is a knickers. predicament-painted-cutoffs is unique. predicament-painted-cutoffs is crotch-exposing. The armour of predicament-painted-cutoffs is 1. The printed name of predicament-painted-cutoffs is "[clothing-title-before]painted cutoffs[clothing-title-after]". The text-shortcut of predicament-painted-cutoffs is "pcf". Understand "painted", "cutoffs" as predicament-painted-cutoffs. A predicament-painted-cutoffs can be hand-blocked. A predicament-painted-cutoffs can be hand-decided.

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

To compute school periodic effect of (C - predicament-painted-cutoffs):
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
		purge NPC icons;
		request hand decision.

To decide which number is the initial outrage of (C - predicament-painted-cutoffs):
	if C is hand-blocked, decide on 2;
	decide on 12.

Cutoffs ends here.
