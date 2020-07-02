Trousers Framework by Trousers begins here.

Trousers is a kind of clothing. A trousers is usually crotch-intact. A trousers is usually manly. A trousers is usually leg covering.

Definition: a trousers is same-type if theme-share-target is trousers.

Definition: a trousers is displacable: decide yes.

To decide which number is the trouserLength of (C - a trousers):
	decide on 10.

To decide which object is the concealer of (C - a trousers):
	repeat with S running through worn actually dense skirt-covering-crotch clothing:
		if the skirtLength of S >= the trouserLength of C, decide on S;
	decide on nothing.

To decide which number is the initial outrage of (C - a trousers):
	if C is crotch-exposing, decide on 8;
	if C is yoga pants, decide on 0;
	if C is zippable, decide on 2;
	decide on 1.

To say ClothingDesc of (U - a trousers):
	say "[UniqueClothingDesc of U][if U is worn]It [ModestyDesc of U][end if]".

To uniquely set up (C - a trousers):
	repair C;
	now the raw-magic-modifier of C is 0.

To set up influence of (C - a trousers):
	set up random-based influence of C.

Definition: a trousers is rippable:
	if it is total protection and it is not ass plugging and it is not vagina plugging and it is not zippable, decide yes;
	decide no.

To restock (C - a trousers):
	let B be a random basic loot trousers;
	if B is trousers, now B is in Standard Item Pen.

This is the setup starting trousers rule:
	let C be a random trousers;
	restock C.
The setup starting trousers rule is listed in the setup starting items rules.

To say ShortDesc of (C - a trousers):
	say "pair of trousers".

Report examining trousers:
	if newbie tips is 1, say "[one of][newbie style]Pants [if the number of worn trousers is 0]would [end if]provide a line of defence against things accessing your [fuckholes].[roman type][line break][or][stopping]".

Part - Wearability

Report wearing trousers:
	if the noun is cursed:
		let K be a random worn uncursed knickers;
		if K is knickers and the noun is yoga pants:
			say "You pull the [ShortDesc of the noun] up around your hips. As you finish pulling them over your [random worn knickers], you feel the pants heating up along with your underwear! They firmly conform to the contours of your [ShortDesc of hips] and [genitals]. These are cursed, and now so are your [random worn knickers]!"; [Crowdsourced from Yorekani]
			curse K;
		otherwise:
			say "You pull the [ShortDesc of the noun] up around your hips. As you finish adjusting them you feel a pulse of warmth along the seams! They firmly conform to the contours of your [ShortDesc of hips] and [genitals]. [if the noun is unsure]These are cursed![end if]".

trousers wearability rules is a rulebook. The wearability rules of trousers is usually trousers wearability rules.

This is the trousers already worn rule:
	repeat with O running through worn trousers:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The trousers already worn rule is listed in the trousers wearability rules.

This is the hobble skirt trousers top level clash rule:
	repeat with C running through worn crotch-in-place crotch covering hobble-skirted clothing:
		if summoning is 0:
			if autowear is false, say "You need to pull up your [printed name of C] to get this on successfully!";
			rule fails.
The hobble skirt trousers top level clash rule is listed in the trousers wearability rules.

This is the knickers trousers clash rule:
	if summoning is 0:
		repeat with C running through worn trousers:
			if (wearing-target is not disposable diaper or C is crotch-in-place):
				if autowear is false, say "You can't wear that over your [printed name of C]!";
				rule fails.
The knickers trousers clash rule is listed in the knickers wearability rules.

trousers removability rules is a rulebook. The removability rules of trousers is usually trousers removability rules.

Trousers Framework ends here.
