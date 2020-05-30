Knickers Framework by Knickers begins here.

Knickers is a kind of clothing. Knickers is usually crotch-intact. The soak-limit of knickers is usually 12.

Definition: a knickers is ingredient if it is not product.
Definition: a knickers is same-type if theme-share-target is knickers and theme-share-target is not undies. [In general, undies don't become non-undies.]

To decide which number is the crafting key of (B - a knickers):
	decide on 32.

To say TypeTitle of (T - a knickers):
	say "underwear".

To say ClothingDesc of (U - a knickers):
	say "[UniqueClothingDesc of U][if U is worn]It [ModestyDesc of U][end if]".

To say UniqueClothingDesc of (U - a knickers):
	say "This item doesn't have a description for some reason, this is probably a bug.".

To say AssModestyDesc of (K - a clothing):
	let D be the hipExposure of K;
	if the hipModesty of K < 3:
		say "completely fails to cover your [AssDesc][run paragraph on]";
	otherwise if D > 7:
		say "fails to cover the vast majority of your [AssDesc][run paragraph on]";
	otherwise if D > 5:
		say "struggles to cover your [AssDesc][run paragraph on]";
	otherwise if D > 3:
		say "partially covers your [AssDesc][run paragraph on]";
	otherwise if D > 0:
		say "mostly covers your [AssDesc][run paragraph on]";
	otherwise:
		say "completely covers your [AssDesc][run paragraph on]".

To say ModestyDesc of (K - a clothing):
	say "[AssModestyDesc of K]";
	if K is no protection:
		say "It [if K is crotch-displaced]currently [end if]does nothing to protect your crotch[if K is crotch-ripped], because there is a massive rip in the [clothing-material of K][end if]. ";
	otherwise if penis is exposed:
		say "It is failing to conceal your [ShortDesc of penis]. ";
	otherwise:
		say ". ".

To decide which number is the original price of (C - a knickers):
	let X be the armour of C;
	if C is plug panties, now X is 3;
	decide on X.

To compute SelfExamineDesc of (K - a knickers):
	say "A [selfexamineuniquetitle of K] [ModestyDesc of K]".

To say ShortDesc of (K - a knickers):
	say selfexamineuniquetitle of K.
To say MediumDesc of (K - a knickers):
	say selfexamineuniquetitle of K.

To say selfexamineuniquetitle of (K - a knickers):
	say "pair of panties".

Report examining knickers:
	if diaper lover > 0 and the noun is worn and the magic-modifier of the noun is not 0:
		if the magic-modifier of the noun > 0, say "You can sense that it is [if the magic-modifier of the noun > 1]significantly [end if]helping you hold onto your bladder[if diaper lover >= 3] and bowels[end if].";
		otherwise say "You can sense that it is [if the magic-modifier of the noun < -1]significantly [end if]reducing your ability to hold onto your bladder[if diaper lover >= 3] and bowels[end if].";
	if newbie tips is 1:
		if the noun is diaper, say "[one of][item style]Diapers [if the number of worn diapers is 0]would [end if]help prevent against clothing stain and humiliation penalties from the act of urination. [if the player is urine averse]Also when any worn item of clothing becomes fully soaked, your dexterity will be severely limited, and diapers hold a lot more urine before anything else before they become fully saturated.[otherwise if the player is incontinent]Also you are incontinent, and so wearing diapers is the only way to reliably prevent against losing turns every now and then as you involuntarily wet yourself.[otherwise]You can use diapers as a mobile toilet; not that you really care about the smell of urine any more.[end if][roman type][line break][or][stopping]";
		say "[one of][item style]Underwear [if the noun is diaper]in general [end if][if the noun is no protection or (the player is male and the noun is pussy protection)](but not this one!) [end if][if the number of worn knickers is 0]would provide[otherwise]provides[end if] a line of defence against things accessing your [fuckholes].[roman type][line break][or][stopping]".

To decide which number is the core outrage of (C - a knickers): [This is plugged into both outrage and cringe]
	if C is crotch-exposing, decide on 11;
	[if C is crotch-ripped, decide on 12;] [Let's try turning this off. Ripped underwear doesn't make it lewd, but of course what it exposes is probably lewd.]
	if C is actually sheer, decide on 8; [Sheer undies? Very lewd!]
	let O be 10 - the armour of C;
	if O < 3, decide on 3; [It's always a bit tiny bit outrageous to have your bottoms on display, even if it's swimwear]
	decide on O.

To decide which number is the initial outrage of (C - a knickers):
	decide on the core outrage of C + the unique outrage of C.
To decide which number is the initial cringe of (C - a knickers):
	decide on 1 + the unique cringe of C.

To decide which number is the unique outrage of (C - a knickers): [Some underwear has additional factors that make it lewd, e.g. a rude phrase]
	if C is crotch-assless, decide on 4;
	decide on 0.
To decide which number is the unique cringe of (C - a knickers): [Some underwear has additional factors that make it babyish, e.g. a silly motif]
	decide on 0.

To uniquely set up (K - a knickers):
	repair K;
	if K is diaper and diaper quest is 1, now the soak-limit of K is 18 + the DQBulk of K * 3;
	if diaper lover >= 1 and a random number between 1 and 8 is 1, now K is bed wetting;
	if K is actually sheer and a random number between 1 and 4 is 1, now K is protection.

To set up influence of (C - a knickers):
	set up random-based influence of C.

To restock (C - a knickers):
	let B be a random basic loot knickers;
	if B is knickers, now B is in Standard Item Pen.

This is the setup starting knickers rule:
	let C be a random basic loot knickers;
	repeat with N running from 1 to 5:
		restock C.
The setup starting knickers rule is listed in the setup starting items rules.

To decide which object is the unique-upgrade-target of (C - a knickers):
	if a random number between 0 and diaper focus is 1, decide on a random eligible diaper.

This is the remove inappropriate knickers rule:
	repeat with B running through plug panties:
		unless B is WC plug panties, now B is in Holding Pen;
	now crotch rope is in Holding Pen;
	repeat with B running through crotchless-panties:
		now B is in Holding Pen;
	repeat with B running through microshorts:
		now B is in Holding Pen.
The remove inappropriate knickers rule is listed in the diaper quest fix rules.

Part - Wearability

knickers wearability rules is a rulebook. The wearability rules of knickers is usually knickers wearability rules.

This is the knickers already worn rule:
	repeat with O running through worn knickers:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The knickers already worn rule is listed in the knickers wearability rules.

This is the diapers disabled rule:
	if diaper lover <= 0 and wearing-target is diaper:
		if summoning is 0 and autowear is false, say "[if debugmode is 0]You can't wear this, you should even be able to see this, whoops! Please report the bug.[otherwise]Diapers are disabled, but since you're in debug mode I assume you want to be able to wear this![end if]";
		unless summoning is 0 and debugmode > 0, rule fails.
The diapers disabled rule is listed in the knickers wearability rules.

This is the knickers top level clash rule:
	if summoning is 0:
		repeat with C running through worn crotch-pullup clothing:
			unless C is no protection and wearing-target is not crotch-pullup: [You could put on a disposable diaper through a ripped outfit]
				if autowear is false, say "You need to [if C is displacable and wearing-target is not crotch-pullup]displace[otherwise]remove[end if] your [printed name of C] to get this on successfully!";
				rule fails.
The knickers top level clash rule is listed in the knickers wearability rules.

This is the hobble skirt knickers top level clash rule:
	if summoning is 0:
		repeat with C running through worn total protection crotch covering skirts:
			if autowear is false, say "You need to pull up your [printed name of C] to get this on successfully!";
			rule fails.
The hobble skirt knickers top level clash rule is listed in the knickers wearability rules.

knickers removability rules is a rulebook. The removability rules of knickers is usually knickers removability rules.

Report wearing knickers:
	if the noun is plug panties:
		if the player is not possessing a vagina or the noun is pump plug panties:
			say "[if the bimbo of the player < 7][line break][first custom style]I can't believe I'm doing this... [roman type][line break][end if]As you finish pulling the panties up to your body, you [if the raw sex addiction of the player < 3]gingerly [end if]push the rubber plug into your [if the openness of asshole > 4]open [otherwise]tight [end if][asshole].";
		otherwise:
			say "[if the bimbo of the player < 7][line break][first custom style]I can't believe I'm doing this... [roman type][line break][end if]As you finish pulling the panties up to your body, you [if the raw sex addiction of the player < 3]gingerly [end if]push the rubber plugs into your [if the soreness of vagina > 4]open [otherwise]tight [end if][vagina] and [if the openness of asshole > 4]open [otherwise]tight [end if][asshole].";
			now the noun is penetrating vagina;
			ruin vagina;
		now the noun is penetrating asshole;
		ruin asshole;
		if the noun is cursed and the noun is vibrating plug panties, say "[line break]The [if the player is female]ass [end if] plug starts vibrating! That can't be good...";
	otherwise if the noun is unsure and the noun is cursed:
		if the noun is diaper, say "You pull the [ShortDesc of the noun] up around your hips, [if the bimbo of the player > 12]grinning timidly[otherwise]wincing[end if] as it crinkles loudly. As you finish pulling it into place, you feel a pulse of warmth along the seams! The waistband and leg holes tighten magically, ensuring you can't take it off. This diaper is cursed!";
		otherwise say "You pull the [ShortDesc of the noun] up around your hips. As you finish adjusting them you feel a pulse of warmth along the seams! They [if the bimbo of the player < 11]firmly[otherwise][second custom style][one of]tightly[or]deliciously[or]enticingly[in random order][roman type][end if] conform to the contours of your [ShortDesc of hips] and [if the player is male][ShortDesc of penis][otherwise][vagina][end if]. [if the bimbo of the player > 8]They make you look so fuckable! [end if]These panties are cursed!"; [Written by Anya Snowdrifter]
	if the size of penis > 0 and the penis-capacity of the noun > 0:
		if the noun is crotch-intact and the noun is pussy covering:
			if the noun is potentially penis covering:
				say "Your [ShortDesc of penis] fits comfortably inside the fabric!";
			otherwise if the noun is potentially at least partially penis covering:
				say "Your [ShortDesc of penis] barely fits inside this tiny piece of fabric!";
			otherwise:
				say "Your [ShortDesc of penis] can't even fit inside this tiny piece of fabric!".

Check taking off worn knickers:
	if the noun is cursed:
		say "Try as you might you cannot find a way to slip your fingers under the fabric of your [printed name of the noun], it's as if it is fused to your skin!";
		now the noun is sure instead;
	if the player is ankle bound and the noun is not disposable diaper, say "You won't be able to successfully get these off whilst your ankles are bound..." instead;
	if the noun is vibrating plug panties and the effect of the noun is 2:
		if there is a shopkeeper in the location of the player, say "You don't dare do that whilst the shopkeeper is watching you." instead; [These are the panties the shopkeeper gave you.]
		now the effect of the noun is 1; [If you manage to take them off we get rid of the above flag that says the shopkeeper cares]
	if the noun is glued:
		try tearing off the noun;
		if the noun is glued:
			do nothing instead.

Knickers Framework ends here.
