Maid Outfit by Dresses begins here.

A maid outfit is a kind of overdress. A maid outfit is unique.

Understand "maid", "maids", "maid's", "apron", "outfit" as maid outfit.

The text-shortcut of maid outfit is "mo".

To compute SelfExamineDesc of (M - a maid outfit):
	say "You are wearing a [ShortDesc of M]. ".

To say ShortDesc of (C - a maid outfit):
	say "maid's outfit".
To say MediumDesc of (C - a maid outfit):
	say "slutty maid's outfit".

Figure of Maid Outfit 1 is the file "Items/Clothes/Upper/Special/Maid/maid1.png".
Figure of Maid Outfit 2 is the file "Items/Clothes/Upper/Special/Maid/maid7.png".
Figure of Maid Outfit 3 is the file "Items/Clothes/Upper/Special/Maid/maid2.png".
Figure of Maid Outfit 4 is the file "Items/Clothes/Upper/Special/Maid/maid3.png".
Figure of Maid Outfit 5a is the file "Items/Clothes/Upper/Special/Maid/maid4a.png".
Figure of Maid Outfit 5b is the file "Items/Clothes/Upper/Special/Maid/maid4b.png".
Figure of Maid Outfit 6 is the file "Items/Clothes/Upper/Special/Maid/maid5.png".
Figure of Maid Outfit 7 is the file "Items/Clothes/Upper/Special/Maid/maid6.png".
Figure of Maid Outfit 8 is the file "Items/Clothes/Upper/Special/Maid/maid8.png".
Figure of Maid Outfit 9 is the file "Items/Clothes/Upper/Special/Maid/maid9.png".
Figure of Maid Outfit 10 is the file "Items/Clothes/Upper/Special/Maid/maid10.png".
Figure of Maid Outfit 11 is the file "Items/Clothes/Upper/Special/Maid/maid11.png".
Figure of Maid Outfit 12 is the file "Items/Clothes/Upper/Special/Maid/maid12.png".
Figure of Maid Outfit 13 is the file "Items/Clothes/Upper/Special/Maid/maid13.png".
Figure of Maid Outfit 14 is the file "Items/Clothes/Upper/Special/Maid/maid14.png".

To decide which number is the strength-influence of (C - a maid outfit):
	let S be 1;
	increase S by the magic-modifier of C;
	decide on S.

To set up influence of (C - a maid outfit):
	set up submissiveness-based influence of C.

This is the remove inappropriate maid outfits rule:
	repeat with B running through maid outfits:
		unless B is sexy-maid-outfit or B is cafe-maid-outfit or B is blue-sissy-maid-outfit or B is maid-waitress-outfit, now B is in Holding Pen.
The remove inappropriate maid outfits rule is listed in the diaper quest fix rules.

[Definition: a maid outfit is class-transformation-protected:
	if the class of the player is maid, decide yes;
	decide no.] [commented out because this blocks potential-upgrade-target from being checked]
Definition: a maid outfit is disintegration-protected:
	if the class of the player is maid, decide yes;
	decide no.
Definition: a maid outfit is transformation-theme-blockable: decide no.

To decide which object is the unique-upgrade-target of (M - a maid outfit):
	if cafe maid headdress is worn and M is not cafe-maid-outfit, decide on cafe-maid-outfit;
	decide on nothing.

To compute class set up of (M - a maid outfit):
	increase the raw-magic-modifier of M by the crawl count of the player / 10.

Part 0 - Maid Waitress Outfit

maid-waitress-outfit is a maid outfit. maid-waitress-outfit is fully covering. The text-shortcut of maid-waitress-outfit is "mwo". The printed name of maid-waitress-outfit is "[clothing-title-before]maid waitress outfit[clothing-title-after]". Understand "waitress" as maid-waitress-outfit.

To decide which figure-name is clothing-image of (C - maid-waitress-outfit):
	decide on figure of maid outfit 11.

To say ClothingDesc of (M - maid-waitress-outfit):
	say "A smart black garment with a high collar. A large white apron covers the front.".

To decide which number is the initial outrage of (C - maid-waitress-outfit):
	decide on 1.

Definition: maid-waitress-outfit is sissifying: decide yes.
Definition: maid-waitress-outfit is black themed: decide yes.
Definition: maid-waitress-outfit is white themed: decide yes.
Definition: maid-waitress-outfit is potentially erection concealing: decide yes. [non-tight skirts conceal erections]

To decide which object is the potential-upgrade-target of (M - maid-waitress-outfit):
	if sexy-maid-outfit is off-stage, decide on sexy-maid-outfit;
	otherwise decide on the potential-upgrade-target of sexy-maid-outfit. [If the next target is not off-stage, we skip it.]

Part 1 - Sexy maid outfit

sexy-maid-outfit is a maid outfit. sexy-maid-outfit is high cut. sexy-maid-outfit is short. The text-shortcut of sexy-maid-outfit is "mo1". The printed name of sexy-maid-outfit is "[clothing-title-before]sexy maid outfit[clothing-title-after]". Understand "sexy" as sexy-maid-outfit.

To decide which figure-name is clothing-image of (C - sexy-maid-outfit):
	decide on figure of maid outfit 1.

To say ClothingDesc of (M - sexy-maid-outfit):
	say "A black satin garment with only white straps for sleeves. Probably the sort of thing you'd find if you searched the internet for a sexy maid costume. [if diaper quest is 0]With a simple ruffled apron and a familiar logo printed on the skirt, this[otherwise]This[end if] sleek dress will catch eyes as you stand on your heels to dust the top shelf.".

To decide which number is the initial outrage of (C - sexy-maid-outfit):
	decide on 3.

To decide which object is the potential-upgrade-target of (M - sexy-maid-outfit):
	if diaper focus is 1 and blue-sissy-maid-outfit is off-stage, decide on blue-sissy-maid-outfit;
	if drooping-maid-outfit is off-stage, decide on drooping-maid-outfit;
	decide on the potential-upgrade-target of drooping-maid-outfit. [If the next target is not off-stage, we skip it.]

Definition: sexy-maid-outfit is black themed: decide yes.
Definition: sexy-maid-outfit is white themed: decide yes.
Definition: sexy-maid-outfit is bow themed: decide yes.

Part 2 - Drooping Maid Outfit

drooping-maid-outfit is a maid outfit. drooping-maid-outfit is low cut. drooping-maid-outfit is short. The text-shortcut of drooping-maid-outfit is "mo2". The printed name of drooping-maid-outfit is "[clothing-title-before]drooping maid outfit[clothing-title-after]". Understand "drooping" as drooping-maid-outfit.

To decide which figure-name is clothing-image of (C - drooping-maid-outfit):
	decide on figure of maid outfit 2.

To say ClothingDesc of (M - drooping-maid-outfit):
	say "A black and white satin garment with black straps. With a simple ruffled apron, this would be an acceptable item if it wasn't for the rather low cut of the top.".

To decide which number is the initial outrage of (C - drooping-maid-outfit):
	decide on 4.

To decide which object is the potential-upgrade-target of (M - drooping-maid-outfit):
	if cheap-maid-outfit is off-stage, decide on cheap-maid-outfit;
	otherwise decide on the potential-upgrade-target of cheap-maid-outfit. [If the next target is not off-stage, we skip it.]

Definition: drooping-maid-outfit is black themed: decide yes.
Definition: drooping-maid-outfit is white themed: decide yes.

Part 3 - Cheap Maid Outfit

cheap-maid-outfit is a maid outfit. cheap-maid-outfit is pvc. cheap-maid-outfit is short. The text-shortcut of cheap-maid-outfit is "mo3". The printed name of cheap-maid-outfit is "[clothing-title-before]cheap maid outfit[clothing-title-after]". Understand "cheap" as cheap-maid-outfit.

To decide which figure-name is clothing-image of (C - cheap-maid-outfit):
	decide on figure of maid outfit 3.

To say ClothingDesc of (M - cheap-maid-outfit):
	say "This squeaky latex dress holds firmly to your body and squeaks with each sway of your hips. The white apron looks stark and flat compared to the glistening material of the dress.".

To decide which number is the initial outrage of (C - cheap-maid-outfit):
	decide on 5.

To decide which object is the potential-upgrade-target of (M - cheap-maid-outfit):
	if fetish-maid-outfit is off-stage, decide on fetish-maid-outfit;
	otherwise decide on the potential-upgrade-target of fetish-maid-outfit. [If the next target is not off-stage, we skip it.]

Definition: cheap-maid-outfit is black themed: decide yes.
Definition: cheap-maid-outfit is black-and-white themed: decide yes.

Part 4 - Fetish Maid Outfit

fetish-maid-outfit is a maid outfit. fetish-maid-outfit is latex. fetish-maid-outfit is unskirted. fetish-maid-outfit is crotch-intact. fetish-maid-outfit is crotch-intact. The text-shortcut of fetish-maid-outfit is "mo4". The printed name of fetish-maid-outfit is "[clothing-title-before]fetish maid outfit[clothing-title-after]". Understand "fetish" as fetish-maid-outfit.

To decide which figure-name is clothing-image of (C - fetish-maid-outfit):
	decide on figure of maid outfit 4.

To say ClothingDesc of (M - fetish-maid-outfit):
	say "A black corset with ruffled lace barely constitutes as a dress. In fact, it's not a dress, it's more of a romper, since it has legholes rather than a skirt. It's extremely tight, showing off your figure and glistening with shiny material.".

To decide which number is the initial outrage of (C - fetish-maid-outfit):
	decide on 6.
To decide which number is the crotch-tightness of (C - fetish-maid-outfit):
	decide on 3.
To decide which number is the initial armour of (C - fetish-maid-outfit):
	decide on 6.

Definition: fetish-maid-outfit is black themed: decide yes.

To decide which object is the potential-upgrade-target of (M - fetish-maid-outfit):
	if pink-maid-outfit is off-stage and the number of worn skirts is 0, decide on pink-maid-outfit;
	otherwise decide on the potential-upgrade-target of pink-maid-outfit. [If the next target is not off-stage or would clash with a skirt, we skip it.]

Part 5 - Pink Maid Outfit

pink-maid-outfit is a maid outfit. pink-maid-outfit is sheer. pink-maid-outfit is belly exposing. pink-maid-outfit is short. pink-maid-outfit is fully covering. pink-maid-outfit is optional-top-displacable. The text-shortcut of pink-maid-outfit is "mo5". The printed name of pink-maid-outfit is "[clothing-title-before]pink maid outfit[clothing-title-after]". Understand "pink" as pink-maid-outfit.

To decide which figure-name is clothing-image of (C - pink-maid-outfit):
	decide on figure of maid outfit 5a.

To say ClothingDesc of (M - pink-maid-outfit):
	say "A pink lacy top, with an open belly. Held on with spaghetti straps, it could easily be torn away by the weakest of monsters.[line break]";
	if images visible is 1, appropriate-display figure of maid outfit 5b;
	say "A pink tartan skirt with a built in apron. The design is reminiscent of an old-timey diner, which makes sense; you'll be taking plenty of orders while wearing this.".

To decide which number is the initial outrage of (C - pink-maid-outfit):
	decide on 7.

To decide which object is the potential-upgrade-target of (M - pink-maid-outfit):
	if slutty-maid-outfit is off-stage, decide on slutty-maid-outfit;
	otherwise decide on the potential-upgrade-target of slutty-maid-outfit. [If the next target is not off-stage, we skip it.]

Definition: pink-maid-outfit is tartan themed: decide yes.
Definition: pink-maid-outfit is pink themed: decide yes.

Part 6 - Slutty Maid Outfit

slutty-maid-outfit is a maid outfit. slutty-maid-outfit is nylon. slutty-maid-outfit is unskirted. slutty-maid-outfit is crotch-intact. slutty-maid-outfit is crotch-intact. slutty-maid-outfit is sheer. The text-shortcut of slutty-maid-outfit is "mo6". The printed name of slutty-maid-outfit is "[clothing-title-before]slutty maid outfit[clothing-title-after]". Understand "slutty" as slutty-maid-outfit.

To decide which figure-name is clothing-image of (C - slutty-maid-outfit):
	decide on figure of maid outfit 6.

To say ClothingDesc of (M - slutty-maid-outfit):
	say "An extremely sheer dress, letting one gaze at everything beneath. With only a tiny bit more hidden away by the apron, this dress lets the eye pierce through and stare at every inch of you; it's as if it isn't there.[if M is total protection]The bottom half of the outfit does cover your crotch but doesn't seem very strong.[end if]";

To decide which number is the initial outrage of (C - slutty-maid-outfit):
	decide on 8.

To decide which number is the initial armour of (C - slutty-maid-outfit):
	decide on 2.

Definition: slutty-maid-outfit is black themed: decide yes.
Definition: slutty-maid-outfit is black-and-white themed: decide yes.
Definition: slutty-maid-outfit is potentially erection concealing: decide yes. [non-tight skirts conceal erections]

To decide which object is the potential-upgrade-target of (M - slutty-maid-outfit):
	if V-shape-maid-outfit is off-stage, decide on V-shape-maid-outfit;
	otherwise decide on the potential-upgrade-target of V-shape-maid-outfit. [If the next target is not off-stage, we skip it.]

Part 7 - V-shape Maid Outfit

V-shape-maid-outfit is a maid outfit. V-shape-maid-outfit is denim. V-shape-maid-outfit is unskirted. V-shape-maid-outfit is crotch-intact. V-shape-maid-outfit is ridiculously low cut. The text-shortcut of V-shape-maid-outfit is "mo7". The printed name of V-shape-maid-outfit is "[clothing-title-before]V-shape maid outfit[clothing-title-after]". Understand "V-shape" as V-shape-maid-outfit.

To decide which figure-name is clothing-image of (C - V-shape-maid-outfit):
	decide on figure of maid outfit 7.

To say ClothingDesc of (M - V-shape-maid-outfit):
	say "An extremely complex corset comprised of black satin, white lace, and some buckles to make sure it doesn't go anywhere. Holding tightly and keeping your posture at a perfect ten, this is a corset worthy of only the most obedient and beautiful of royal maids. The top of the outfit is so low that it [if M is not worn]might not even cover your nipples[otherwise if M is at least partially nipple covering]can barely even cover your nipples[otherwise]fails to even cover your nipples[end if].".

To decide which number is the initial outrage of (C - V-shape-maid-outfit):
	decide on 9.
To decide which number is the crotch-tightness of (C - V-shape-maid-outfit):
	decide on 4.
To decide which number is the initial armour of (C - V-shape-maid-outfit):
	decide on 4.

Definition: V-shape-maid-outfit is uniquely nipple exposing:
	if the largeness of breasts > 6, decide yes;
	decide no.

Definition: V-shape-maid-outfit is black themed: decide yes.
Definition: V-shape-maid-outfit is white themed: decide yes.

To decide which object is the potential-upgrade-target of (M - V-shape-maid-outfit):
	if fishnet-maid-outfit is off-stage, decide on fishnet-maid-outfit;
	otherwise decide on the potential-upgrade-target of fishnet-maid-outfit. [If the next target is not off-stage, we skip it.]

Part 8 - Fishnet Maid Outfit

fishnet-maid-outfit is a maid outfit. fishnet-maid-outfit is fully covering. fishnet-maid-outfit is mesh. fishnet-maid-outfit is unskirted. fishnet-maid-outfit is crotch-intact. fishnet-maid-outfit is see-through. The text-shortcut of fishnet-maid-outfit is "mo8". The printed name of fishnet-maid-outfit is "[clothing-title-before]fishnet maid outfit[clothing-title-after]". Understand "fishnet" as fishnet-maid-outfit.

To decide which figure-name is clothing-image of (C - fishnet-maid-outfit):
	decide on figure of maid outfit 8.

To say ClothingDesc of (M - fishnet-maid-outfit):
	say "This maid outfit is simply a fully exposing fishnet dress combined with a white apron at the front.".

To decide which number is the initial outrage of (C - fishnet-maid-outfit):
	decide on 10.

To decide which number is the initial armour of (C - fishnet-maid-outfit):
	decide on 1.

Definition: fishnet-maid-outfit is black themed: decide yes.
Definition: fishnet-maid-outfit is white themed: decide yes.

[The apron conceals the front half (because it's actually dense even though the rest isn't) but not the back half (i.e. the player's asshole).]
Definition: fishnet-maid-outfit is potentially vagina covering:
	if it is crotch-in-place, decide yes;
	decide no.
Definition: fishnet-maid-outfit is potentially at least partially vagina covering:
	if it is crotch-in-place, decide yes;
	decide no.

To decide which object is the potential-upgrade-target of (M - fishnet-maid-outfit):
	if black fetish hobble dress is off-stage, decide on black fetish hobble dress;
	decide on nothing.

Part 9 - Blue Sissy Maid Outfit

blue-sissy-maid-outfit is a maid outfit. blue-sissy-maid-outfit is fully covering. blue-sissy-maid-outfit is polyester. The text-shortcut of blue-sissy-maid-outfit is "bmo". blue-sissy-maid-outfit is short. The printed name of blue-sissy-maid-outfit is "[clothing-title-before]blue sissy maid outfit[clothing-title-after]". Understand "blue", "sissy" as blue-sissy-maid-outfit.

To decide which figure-name is clothing-image of (C - blue-sissy-maid-outfit):
	decide on figure of maid outfit 9.

To say ClothingDesc of (M - blue-sissy-maid-outfit):
	say "A blue polyester garment with a high collar and ruffles everywhere including the shoulders and short skirt. Many layers of ruffles live beneath the skirt. A large white apron covers the front.".

To decide which number is the initial outrage of (C - blue-sissy-maid-outfit):
	if diaper quest is 0, decide on the initial cringe of C;
	decide on 0.

To decide which number is the initial cringe of (C - blue-sissy-maid-outfit):
	decide on 4.

Definition: blue-sissy-maid-outfit is sissifying: decide yes.
Definition: blue-sissy-maid-outfit is blue themed: decide yes.
Definition: blue-sissy-maid-outfit is transformation-protected:
	if the class of the player is maid, decide yes;
	decide no.

Part 10 - Cafe Maid Outfit

cafe-maid-outfit is a maid outfit. cafe-maid-outfit is fully covering. cafe-maid-outfit is polyester. The text-shortcut of cafe-maid-outfit is "cmo". cafe-maid-outfit is short. The printed name of cafe-maid-outfit is "[clothing-title-before]cafe maid outfit[clothing-title-after]". Understand "cafe" as cafe-maid-outfit.

To decide which figure-name is clothing-image of (C - cafe-maid-outfit):
	decide on figure of maid outfit 10.

To say ClothingDesc of (M - cafe-maid-outfit):
	say "A pink polyester garment with a high collar and ruffles everywhere including the shoulders and short skirt. Many layers of ruffles live beneath the skirt. A large white apron covers the front.".

To decide which number is the initial outrage of (C - cafe-maid-outfit):
	decide on 0.

To decide which number is the initial cringe of (C - cafe-maid-outfit):
	decide on 4.

Definition: cafe-maid-outfit is sissifying: decide yes.
Definition: cafe-maid-outfit is pink themed: decide yes.
Definition: cafe-maid-outfit is white themed: decide yes.
Definition: cafe-maid-outfit is transformation-protected:
	if the class of the player is maid, decide yes;
	decide no.

Part 12 - Black Latex Maid Outfit

black-latex-maid-outfit is a maid outfit. black-latex-maid-outfit is fully exposing. black-latex-maid-outfit is neck covering. black-latex-maid-outfit is latex. The text-shortcut of black-latex-maid-outfit is "blmo". black-latex-maid-outfit is short. The printed name of black-latex-maid-outfit is "[clothing-title-before]black latex maid outfit[clothing-title-after]". Understand "black" as black-latex-maid-outfit.

To decide which figure-name is clothing-image of (C - black-latex-maid-outfit):
	decide on figure of maid outfit 12.

To say ClothingDesc of (M - black-latex-maid-outfit):
	say "A black latex dress. A big cut-out section exposes the wearer's chest. Even more outrageously, the skirt has a big apron-shaped section that is completely see-through.".

To compute class set up of (M - black-latex-maid-outfit):
	if there is worn stumbling headgear, now M is cursed.

To decide which number is the initial outrage of (C - black-latex-maid-outfit):
	decide on 14.

[See through window at the front]
Definition: black-latex-maid-outfit is potentially penis covering: decide no.
Definition: black-latex-maid-outfit is potentially at least partially vagina covering: decide no.
Definition: black-latex-maid-outfit is potentially vagina covering: decide no.
Definition: black-latex-maid-outfit is potentially-partially-bottom-layer-concealing: decide no.

Definition: black-latex-maid-outfit is black themed: decide yes.
Definition: black-latex-maid-outfit is transformation-protected:
	if the class of the player is maid, decide yes;
	decide no.
Definition: black-latex-maid-outfit is class-relevant:
	if the class of the player is latex fetish model, decide yes;
	decide no.


Part 13 - Milkmaid Outfit

milkmaid-outfit is a maid outfit. milkmaid-outfit is very low cut. milkmaid-outfit is neck covering. milkmaid-outfit is totally-exclusive. milkmaid-outfit is only arm covering. milkmaid-outfit is nylon. milkmaid-outfit is unskirted. milkmaid-outfit is belly exposing. The printed name of milkmaid-outfit is "[clothing-title-before]milkmaid outfit[clothing-title-after]". Understand "milkmaid" as milkmaid-outfit. The text-shortcut of milkmaid-outfit is "mmo".

To decide which figure-name is clothing-image of (C - milkmaid-outfit):
	decide on figure of maid outfit 13.

To say ClothingDesc of (M - milkmaid-outfit):
	say "This cow print outfit is really just a micro bikini top with connected arms and connected neck frills, complete with a large noisy cowbell.".

To decide which number is the initial outrage of (C - milkmaid-outfit):
	decide on 6.
Definition: milkmaid-outfit is black themed: decide yes.
Definition: milkmaid-outfit is white themed: decide yes.
Definition: milkmaid-outfit is cow themed: decide yes.
Definition: milkmaid-outfit is cowbelled: decide yes.
Definition: milkmaid-outfit is class-relevant:
	if the class of the player is maid or the class of the player is cowgirl, decide yes;
	decide no.


Part 14 - Bunny Maid Outfit

bunny-maid-outfit is a maid outfit. bunny-maid-outfit is very low cut. bunny-maid-outfit is totally-exclusive. bunny-maid-outfit is pvc. bunny-maid-outfit is unskirted. bunny-maid-outfit is crotch-intact. The printed name of bunny-maid-outfit is "[clothing-title-before]bunny maid outfit[clothing-title-after]". Understand "bunny" as bunny-maid-outfit. The text-shortcut of bunny-maid-outfit is "bnmo".

To decide which figure-name is clothing-image of (C - bunny-maid-outfit):
	decide on figure of maid outfit 14.

To say ClothingDesc of (M - bunny-maid-outfit):
	say "This pink plastic outfit is really just a micro swimsuit with a small frilly, shiny apron at the belly.".

To decide which number is the initial outrage of (C - bunny-maid-outfit):
	decide on 6.
Definition: bunny-maid-outfit is pink themed: decide yes.
Definition: bunny-maid-outfit is heart themed: decide yes.
Definition: bunny-maid-outfit is class-relevant:
	if the class of the player is maid or the class of the player is bunny or the class of the player is silicone queen, decide yes;
	decide no.
To decide which number is the crotch-tightness of (C - bunny-maid-outfit):
	decide on 3.
To decide which number is the penis-capacity of (C - bunny-maid-outfit):
	decide on 1.

Maid Outfit ends here.
