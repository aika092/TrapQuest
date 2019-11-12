Unique Bras by Bra begins here.

A chastity bra is a kind of bra. A chastity bra is usually not-top-displacable. Figure of metal bra is the file "Items/Clothes/Upper/Bras/metalbra1.png". A chastity bra is usually metal.

There is 1 chastity bra. The text-shortcut of chastity bra is "cbr".

The min size of a chastity bra is usually 4. The max size of a chastity bra is usually 8. The support of a chastity bra is usually -4.

Definition: a chastity bra is grey themed: decide yes.

To say ShortDesc of (B - a chastity bra):
	say "chastity bra".

To say selfexaminetitle of (B - a chastity bra):
	say "shiny metal chastity bra".

To decide which figure-name is clothing-image of (C - a chastity bra):
	decide on figure of metal bra.

To say ClothingDesc of (C - a chastity bra):
	say "A heavy, shiny silver [printed name of C], which has very strong restraints to prevent excessive breast growth.";

To decide which number is the initial outrage of (C - a chastity bra):
	decide on 3.

To compute bra strain of (B - a chastity bra):
	while the size of B < the largeness of breasts + the leniency of B and the largeness of breasts > 1:
		if the air volume of breasts > 0:
			decrease the air volume of breasts by 1;
		otherwise if the milk volume of breasts > the flesh volume of breasts:
			decrease the milk volume of breasts by 1;
		otherwise if the flesh volume of breasts > 0:
			decrease the flesh volume of breasts by 1;
		otherwise:
			decrease the silicone volume of breasts by 1;
	say "[one of]You can feel your [printed name of B] preventing your [BreastDesc] from growing any further.[or][then purely at random]".






tongue-bra is a bra. tongue-bra is unique. tongue-bra is biological. tongue-bra is ridiculously low cut. The printed name of tongue-bra is "[clothing-title-before]tongue bra[clothing-title-after]". The text-shortcut of tongue-bra is "tgbr". Understand "tongue", "bra" as tongue-bra.
The min size of tongue-bra is 20. The max size of tongue-bra is 20. The support of tongue-bra is 0.

Figure of white tongue bra is the file "Items/Clothes/Upper/Bras/tonguebra1a.png".
Figure of tonguing white tongue bra is the file "Items/Clothes/Upper/Bras/tonguebra1b.png".
Figure of black tongue bra is the file "Items/Clothes/Upper/Bras/tonguebra2a.png".
Figure of tonguing black tongue bra is the file "Items/Clothes/Upper/Bras/tonguebra2b.png".

To decide which figure-name is the clothing-image of (C - tongue-bra):
	if tonguesBlack is true:
		if C is tonguing, decide on figure of tonguing black tongue bra;
		decide on figure of black tongue bra;
	otherwise:
		if C is tonguing, decide on figure of tonguing white tongue bra;
		decide on figure of white tongue bra.

To say ClothingDesc of (C - tongue-bra):
	say "This [tonguesColour] bra sits under your bust, with several large red tongues that rise up and barely cover your nipples and breast flesh. [TongueStatus of C]".

To say ShortDesc of (C - tongue-bra):
	say "tongued bra".
To say MediumDesc of (B - tongue-bra):
	say "[tonguesColour] [selfexaminetitle of B]".

Definition: tongue-bra is demonic: decide yes.
Definition: tongue-bra is tongued: decide yes.
Definition: tongue-bra is transformation-protected: decide yes.
Definition: tongue-bra is white themed if tonguesBlack is false.
Definition: tongue-bra is black themed if tonguesBlack is true.

To decide which number is the initial outrage of (C - tongue-bra):
	if C is tonguing, decide on 17;
	decide on 7.





A trainee bra is a kind of bra. There is 1 trainee bra. A trainee bra is usually unique. A trainee bra has a number called training-progress. The training-progress of a trainee bra is usually 0. A trainee bra can be magnetized. A trainee bra is usually magnetized. The text-shortcut of a trainee bra is usually "teb". The printed name of trainee bra is usually "[TQlink of item described][item style]trainee bra[clothing-title-after]". A trainee bra has a number called train-charge.

Figure of trainee bra is the file "Items/Clothes/Upper/Bras/traineebra1.png".

To decide which figure-name is clothing-image of (C - a trainee bra):
	decide on figure of trainee bra.

To say ClothingDesc of (C - a trainee bra):
	say "This silicone bra is outfitted with a pair of squishy pads, which mould flawlessly to accommodate your [BreastDesc]. Anyone looking at you would have to pay close attention to notice that the pads are making your bust seem a lot more impressive than it really is. Metal accents give the bra a futuristic high-tech appearance, and keep the straps in place with surprising security.".

Definition: a trainee bra is grey themed: decide yes.
Definition: a trainee bra is transformation-protected: decide yes.
Definition: a trainee bra is whore themed: decide yes.
Definition: a trainee bra is removable if it is not magnetized.

A trainee bra is usually latex. The support of a trainee bra is usually -10. The min size of trainee bra is usually 20. The max size of trainee bra is usually 20. A trainee bra is usually top-exclusive.

To say CupDesc of (C - a trainee bra):
	say "".

To decide which number is the perceived-bimbo-influence of (C - a trainee bra):
	decide on 2.[no perceived breast size for now, so this will do.]

trainee bra removability rules is a rulebook. The removability rules of trainee bra is usually trainee bra removability rules.

This is the magnetized trainee bra can't be removed rule:
	if the wearing-target is magnetized:
		if summoning is 0 and autoremove is false, say "The magnetic latches keep the [printed name of wearing-target] all but immobile. You[']ll need to find a way to deactivate it if you want to get it off.";
		rule fails.
The magnetized trainee bra can't be removed rule is listed in the trainee bra removability rules.

Report wearing trainee bra:
	say "The magnetic latches snap closed as you finish putting it on.";
	now the noun is magnetized.

To compute periodic effect of (C - a trainee bra):[remember that training-progress will sometimes be negative]
	BraGrow C;
	increase the train-charge of C by 1;
	if train-charge of C > 40:
		now the train-charge of C is 0;
		if artificial enhancements fetish is 1:
			if the training-progress of C >= 3:
				say "Your [printed name of C] emits [the training-progress of C + 1] short tones, tightening slightly each time. You feel a pinch as the bra emits a [the training-progress of C + 2]th, sustained tone and drops off your chest completely. Looking down, you realize the silicone pads have seamlessly attached themselves to your chest. You have breast implants!";
				BustImplantsUp 5;
				now the training-progress of C is 0;
				destroy C;
				ProgressUp senior robobellboy;
			otherwise:
				say "Your [printed name of C] [if the training-progress of C < 1]tightens and emits a short tone[otherwise]emits [the training-progress of C + 1] short tones, tightening slightly each time[end if]. The flexible lining of the bra begins to vibrate, secreting a warm fluid that it simultaneously massages into your [BreastDesc]. It feels way better than it has any right to, and when it finally stops, you're sure your chest is a lot more sensitive than it used to be.[line break]";
				TitFuckAddictUp 1;
				if lactation fetish is 1, increase the lactation rate of the player by 1;
				arouse 100 + (the sensitivity of breasts * 10);
				increase the training-progress of C by 1;
		otherwise:
			say "Your [printed name of C] [if the training-progress of C < 1]tightens and emits a short tone[otherwise]tightens and emits [the training-progress of C + 1] short tones[end if] as warm fluid begins seeping through the flexible lining of the bra, soaking into your skin. You hear another tone after a while, and look down [if the training-progress of C >= 3]to see the bra dropping off your chest completely![otherwise]to see the silhouette of the bra hasn't changed! Your breasts must be bigger![end if][line break]";
			increase the training-progress of C by 1;
			if the training-progress of C < 1, BustUp 1;
			otherwise BustUp the training-progress of C;
			if lactation fetish is 1, increase the lactation rate of the player by 1;
			if the training-progress of C >= 3:
				now the training-progress of C is 0;
				destroy C;
				ProgressUp senior robobellboy.

acolyte-chestpiece is a cupless bra. The text-shortcut of acolyte-chestpiece is "actp". acolyte-chestpiece is metal. The soak-limit of acolyte-chestpiece is 0. Understand "gold", "golden", "acolyte", "acolyte's", "chestpiece" as acolyte-chestpiece. acolyte-chestpiece is unique. acolyte-chestpiece is top-exclusive. The printed name of acolyte-chestpiece is "[clothing-title-before]acolyte's chestpiece[clothing-title-after]". acolyte-chestpiece has a number called charge. The charge of acolyte-chestpiece is usually 0.

Definition: acolyte-chestpiece is blessable: decide no.
Definition: acolyte-chestpiece is demonic: decide yes.
Definition: acolyte-chestpiece is yellow themed: decide yes.

Figure of acolyte chestpiece is the file "Items/Clothes/Upper/Bras/cuplessbra2.jpg".

To decide which figure-name is clothing-image of (C - acolyte-chestpiece):
	decide on figure of acolyte chestpiece.

To decide which object is the unique-upgrade-target of (C - acolyte-chestpiece):
	decide on nothing.

To say ShortDesc of (B - acolyte-chestpiece):
	say "acolyte's chestpiece".

To compute SelfExamineDesc of (B - a acolyte-chestpiece):
	say " that hang freely out of your pointless gold cupless bra. ".

To say ClothingDesc of (C - acolyte-chestpiece):
	say "This curved set of gem-encrusted gold 'plates' [if C is worn]rides so low that it exposes your[otherwise]would ride so low that it would completely expose the wearer's[end if] nipples.[if the charge of C > 0][line break][end if][if the charge of C > 4]The metal is warm to the touch, and you can tell it has absorbed a great deal of power.[otherwise if the charge of C > 1]The metal is slightly warm to the touch, and you can tell it has absorbed a bit of power.[otherwise]The metal is surprisingly cool to the touch.[end if][line break]You get the feeling that you would sink like a rock if you tried swimming in this.";

To MagicSteal (C - acolyte-chestpiece):
	if the charge of C < 5:
		say "Your [printed name of C] absorbs the magical energy!";
		increase the charge of C by 1;
		if the charge of C is 5:
			say "A surge of warmth passes through the metal, and you get the feeling it has reached maximum power.";
	otherwise:
		increase the magic-power of the player by 1.

This is the worshipper tit slut rule:
	if acolyte-chestpiece is worn, increase the desirability of breasts by 5.
The worshipper tit slut rule is listed in the tit slut eligibility rules.

[any fluid touching the breasts will cause arousal and fatigue gain.]

To decide which number is the titfuck-addiction-influence of (C - acolyte-chestpiece):
	decide on 1 - the magic-modifier of C.

To decide which number is the delicateness-influence of (C - acolyte-chestpiece):
	decide on 2 - the magic-modifier of C.

To decide which number is the strength-influence of (C - acolyte-chestpiece):
	if the charge of C < 5:
		if the magic-modifier of C < 0, decide on the magic-modifier of C;
		decide on 0;
	otherwise:
		if the magic-modifier of C > 0, decide on the magic-modifier of C + 1;
		decide on 1.

Unique Bras ends here.

