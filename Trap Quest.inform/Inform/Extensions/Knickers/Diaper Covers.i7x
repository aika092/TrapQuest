Diaper Covers by Knickers begins here.

diaper cover is a kind of clothing. A diaper cover is usually manly. A diaper cover is usually crotch-intact. A diaper cover is usually polyester. A diaper cover is usually diaper-addiction-influencing. Understand "cover", "diaper cover" as a diaper cover.

Definition: a diaper cover is baby themed: decide yes.
Definition: a diaper cover is fetish appropriate:
	if diaper quest is 1, decide yes;
	decide no.
Definition: a diaper cover is product:
	if it is fetish appropriate, decide yes;
	decide no.
Definition: a diaper cover is recipe specific: decide yes.
Definition: a diaper cover is same-type:
	if theme-share-target is diaper cover, decide yes;
	decide no.

To decide which number is the alchemy key of (C - a diaper cover):
	if C is product, decide on 18;
	decide on 0.
To decide which number is the initial armour of (C - a diaper cover):
	decide on 10.
To decide which number is the initial outrage of (C - a diaper cover):
	if diaper quest is 0, decide on the initial cringe of C / 2;
	decide on 0.
To decide which number is the initial cringe of (C - a diaper cover):
	if C is waddle-walking and C is worn, decide on 12;
	decide on the unique cringe of C.
To decide which number is the unique cringe of (C - a diaper cover):
	decide on 6.
To decide which number is the crotch-tightness of (C - a diaper cover):
	decide on 0.

To decide which text is the RecipeDesc of (B - a diaper cover):
	decide on "The recipe just says 'Pee-soaked underwear'.".
To decide which figure-name is the recipe-image of (C - a diaper cover):
	decide on figure of teddy bear diaper cover.

To compute recipe specific cursing of (T - a diaper cover):
	if the noun is knickers:
		if the urine-soak of T > 0 and T is not diaper:
			now T is blessed;
		otherwise if the urine-soak of T > 0:
			now T is bland;
		otherwise:
			now T is cursed;
			now T is waddle-walking;
	otherwise:
		now T is waddle-walking;
		now T is cursed.

To decide what number is the original price of (C - a diaper cover):
	decide on 2.

The printed name of diaper cover is usually "[clothing-title-before][selfexamineuniquetitle of item described][clothing-title-after]". The text-shortcut of diaper cover is "dc".

To say ShortDesc of (C - a diaper cover):
	say "diaper cover".
To say MediumDesc of (C - a diaper cover):
	say selfexamineuniquetitle of C.

To say ClothingDesc of (C - a diaper cover):
	say "A large [selfexamineuniquetitle of C], that [if C is worn]completely covers[otherwise]could completely cover[end if] your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if]. [if C is worn and there is a worn diaper and C is not waddle-walking]You can feel it making it much easier to walk in your nappy[otherwise]Diaper covers halve the effective weight of diapers, and therefore reduce the amount they make you walk with a waddle[end if][if C is waddle-walking and C is identified and there is a worn diaper]... except this one, which has the [bold type]waddle-walking[roman type] magic attribute, and therefore does nothing to help with your waddling![otherwise if C is waddle-walking and C is identified]... except this one, which has the [bold type]waddle-walking[roman type] magic attribute, and therefore makes you walk with a waddle, even if you're not wearing a diaper![otherwise].[end if]".

To compute SelfExamineDesc of (K - a diaper cover):
	say "A large [selfexamineuniquetitle of K] completely covers your [if there is a worn not-exclusive diaper][random worn diaper][otherwise][ShortDesc of hips][end if][if K is waddle-walking], and forces you to walk with a waddle[end if]. ".

To say selfexamineuniquetitle of (K - a diaper cover):
	say "diaper cover".

To uniquely set up (K - a diaper cover):
	if diaper lover >= 1 and a random number between 1 and 8 is 1, now K is bed wetting.

To compute diaper cover assignment of (M - a monster):
	let DCN be true; [diaper cover needed]
	repeat with C running through the tradableItems of M:
		if C is diaper cover, now DCN is false;
	if DCN is true:
		let C be a random off-stage fetish appropriate diaper cover;
		if C is nothing, now C is a random fetish appropriate diaper cover;
		if C is a thing, add C to the tradableItems of M.

[
To restock (C - a diaper cover):
	let B be a random basic loot diaper cover;
	if B is diaper cover:
		repeat with L running through Standard Item Pen:
			if L is diaper cover, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting diaper cover rule:
	if diaper lover >= 1:
		let C be a random diaper cover;
		restock C.
The setup starting diaper cover rule is listed in the setup starting items rules.]

frilly-pink-diaper-cover is a diaper cover. frilly-pink-diaper-cover is cotton. frilly-pink-diaper-cover is not manly. The text-shortcut of frilly-pink-diaper-cover is "fpdc". Understand "frilly", "pink" as frilly-pink-diaper-cover.

Figure of frilly pink diaper cover is the file "Items/Clothes/Lower/Underwear/Diapers/Covers/diapercover1.png".

To decide which figure-name is clothing-image of (C - frilly-pink-diaper-cover):
	decide on figure of frilly pink diaper cover.

To say ClothingDesc of (C - frilly-pink-diaper-cover):
	say "A large frilly pink and blue diaper cover with a giant pink bow at the front, that [if C is worn]completely covers[otherwise]could completely cover[end if] your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if].".

To compute SelfExamineDesc of (K - frilly-pink-diaper-cover):
	say "A large [selfexamineuniquetitle of K] completely covers your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if]. ".

To say selfexamineuniquetitle of (K - frilly-pink-diaper-cover):
	say "frilly pink diaper cover".

Definition: frilly-pink-diaper-cover is pink themed: decide yes.
Definition: frilly-pink-diaper-cover is bow themed: decide yes.

To decide which number is the unique cringe of (C - frilly-pink-diaper-cover):
	decide on 8.

teddy-bear-diaper-cover is a diaper cover. teddy-bear-diaper-cover is cotton. teddy-bear-diaper-cover is not manly. The text-shortcut of teddy-bear-diaper-cover is "tbdc". Understand "teddy", "bear" as teddy-bear-diaper-cover.

Figure of teddy bear diaper cover is the file "Items/Clothes/Lower/Underwear/Diapers/Covers/diapercover2.png".

To decide which figure-name is clothing-image of (C - teddy-bear-diaper-cover):
	decide on figure of teddy bear diaper cover.

To say ClothingDesc of (C - teddy-bear-diaper-cover):
	say "A cosy pink cotton diaper cover with a teddy bear on the front. It [if C is worn]completely covers[otherwise]could completely cover[end if] your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if].".

To compute SelfExamineDesc of (K - teddy-bear-diaper-cover):
	say "A large [selfexamineuniquetitle of K] completely covers your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if]. ".

To say selfexamineuniquetitle of (K - teddy-bear-diaper-cover):
	say "teddy bear diaper cover".

Definition: teddy-bear-diaper-cover is bear themed: decide yes.
Definition: teddy-bear-diaper-cover is pink themed: decide yes.

orange rubber diaper cover is a diaper cover. orange rubber diaper cover is latex. The text-shortcut of orange rubber diaper cover is "ordc".

Figure of orange rubber diaper cover is the file "Items/Clothes/Lower/Underwear/Diapers/Covers/diapercover3.png".

To decide which figure-name is clothing-image of (C - orange rubber diaper cover):
	decide on figure of orange rubber diaper cover.

To say ClothingDesc of (C - orange rubber diaper cover):
	say "An orange latex diaper cover with a polka dot patten and black ruffles on the backside. It [if C is worn]completely covers[otherwise]could completely cover[end if] your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if].".

To compute SelfExamineDesc of (K - orange rubber diaper cover):
	say "A large [selfexamineuniquetitle of K] completely covers your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if]. ".

To say selfexamineuniquetitle of (K - orange rubber diaper cover):
	say "orange rubber diaper cover".

Definition: orange rubber diaper cover is orange themed: decide yes.
Definition: orange rubber diaper cover is halloween themed: decide yes.
To decide which number is the unique cringe of (C - orange rubber diaper cover):
	decide on 5.
To decide which number is the initial outrage of (C - orange rubber diaper cover):
	decide on 4.

halloween rubber diaper cover is a diaper cover. halloween rubber diaper cover is pvc. Understand "themed" as halloween rubber diaper cover. The text-shortcut of halloween rubber diaper cover is "htdc".

Figure of halloween rubber diaper cover is the file "Items/Clothes/Lower/Underwear/Diapers/Covers/diapercover4.png".

To decide which figure-name is clothing-image of (C - halloween rubber diaper cover):
	decide on figure of halloween rubber diaper cover.

To say ClothingDesc of (C - halloween rubber diaper cover):
	say "An orange pvc diaper cover with the words [']I DRIVE MOMMY BATTY['] on the front in colourful letters. It [if C is worn]completely covers[otherwise]could completely cover[end if] your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if]. You can sense that it makes women who identify as your [']mommy['] always angry with you.".

To compute SelfExamineDesc of (K - halloween rubber diaper cover):
	say "A large [selfexamineuniquetitle of K] completely covers your [if there is a worn diaper][random worn diaper][otherwise][ShortDesc of hips][end if]. ".

To say selfexamineuniquetitle of (K - halloween rubber diaper cover):
	say "halloween themed diaper cover".

Definition: halloween rubber diaper cover is orange themed: decide yes.
Definition: halloween rubber diaper cover is halloween themed: decide yes.
Definition: halloween rubber diaper cover is fetish appropriate: decide no. [only spawns from failed quests]

To decide which number is the unique cringe of (C - halloween rubber diaper cover):
	decide on 10.

Chapter 1 Wearability

diaper cover wearability rules is a rulebook. The wearability rules of a diaper cover is usually diaper cover wearability rules.

This is the diaper cover already worn rule:
	repeat with O running through worn diaper covers:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The diaper cover already worn rule is listed in the diaper cover wearability rules.

This is the diaper covers disabled rule:
	if diaper lover <= 0:
		if summoning is 0 and autowear is false, say "You can't wear this, you should even be able to see this, whoops! Please report the bug.";
		rule fails.
The diaper covers disabled rule is listed in the diaper cover wearability rules.

This is the diaper cover crotch clash rule:
	repeat with C running through worn crotch covering clothing:
		unless C is knickers:
			if C is bottom-exclusive:
				if autowear is false, say "You can't wear that at the same time as your [printed name of C]!";
				rule fails;
			if summoning is 0:
				if wearing-target is crotch-pullup and C is crotch-pullup:
					if autowear is false, say "You can't wear that over your [printed name of C]!";
					rule fails;
				otherwise if wearing-target is crotch-tie-up and C is crotch-in-place:
					if autowear is false, say "You can't get that on without first displacing your [printed name of C]!";
					rule fails.
The diaper cover crotch clash rule is listed in the diaper cover wearability rules.


This is the diaper cover only goes over diapers rule:
	if the number of worn diapers is 0:
		if summoning is 0 and autowear is false, say "Why would you wear this if you're not wearing a diaper?";
		rule fails.
The diaper cover only goes over diapers rule is listed in the diaper cover wearability rules.

This is the diaper cover can't go over waddle diapers rule:
	if there is a worn totally-exclusive diaper:
		if summoning is 0 and autowear is false, say "That diaper is way too big to fit a cover over!";
		rule fails.
The diaper cover can't go over waddle diapers rule is listed in the diaper cover wearability rules.

Diaper Covers ends here.
