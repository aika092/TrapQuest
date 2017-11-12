Knickers Framework by Knickers begins here.

Knickers is a kind of clothing.  Knickers is usually crotch-intact. The soak-limit of knickers is usually 12.

Definition: a knickers (called B) is ingredient:
	if B is product, decide no;
	decide yes.

To decide which number is the crafting key of (B - a knickers):
	decide on 32.

To say ClothingDesc of (U - a knickers):
	say "[UniqueClothingDesc of U][if U is worn]It [ModestyDesc of U][end if]".

To say UniqueClothingDesc of (U - a knickers):
	say "This item doesn't have a description for some reason, this is probably a bug.".

To say ModestyDesc of (K - a knickers):
	let D be the armour of K - (the thickness of hips * 2);
	if D < 3, say "completely fails to cover your [ShortDesc of hips]";
	if D is 3, say "struggles to cover your [ShortDesc of hips]";
	if D is 4 or D is 5, say "partially covers your [ShortDesc of hips]";
	if D is 6 or D is 7, say "mostly covers your [ShortDesc of hips]";
	if D > 7, say "completely covers your [ShortDesc of hips]";
	if K is no protection:
		say "It [if K is crotch-displaced]currently [end if]does nothing to protect your crotch. ";
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

To say selfexamineuniquetitle of (K - a knickers):
	say "pair of panties".

Report examining knickers:
	if newbie tips is 1:
		if the noun is diaper, say "Diapers [if the number of worn diapers is 0]would [end if]help prevent against clothing stain and humiliation penalties from the act of urination.  [if the player is urine averse]Also when any worn item of clothing becomes fully soaked, your dexterity will be severely limited, and diapers hold a lot more urine before anything else before they become fully saturated.[otherwise if the incontinence of the player >= 5]Also you are incontinent, and so wearing diapers is the only way to reliably prevent against losing turns every now and then as you involuntarily wet yourself.[otherwise]You can use diapers as a mobile toilet; not that you really care about the smell of urine any more.[end if]";
		say "Underwear [if the noun is diaper]in general [end if][if the noun is no protection](but not this one!) [end if][if the number of worn knickers is 0]would provide[otherwise]provides[end if] a line of defence against things accessing your [fuckholes].".

To decide which number is the initial outrage of (K - a knickers):
	let X be 10 - the armour of K;
	if X < 0, decide on 0;
	decide on X.

To uniquely set up (K - a knickers):
	repair K;
	if diaper lover >= 1 and a random number between 1 and 8 is 1, now K is bed wetting;
	if K is actually sheer and a random number between 1 and 4 is 1, now K is protection;
	set up magic state of K.

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
	if diaper focus is 1, decide on a random eligible diaper.

This is the remove inappropriate knickers rule:
	repeat with B running through plug panties:
		unless B is WC plug panties, now B is in Holding Pen;
	repeat with B running through crotch ropes:
		now B is in Holding Pen;
	repeat with B running through crotchless panties:
		now B is in Holding Pen;
	repeat with B running through microshorts:
		now B is in Holding Pen.
The remove inappropriate knickers rule is listed in the diaper quest fix rules.

Definition: a knickers (called C) is leghole free:
	decide no.

The DQFigure of knickers is usually DQWhitePants.  

Part - Wearability

knickers wearability rules is a rulebook.  The wearability rules of knickers is usually knickers wearability rules.

This is the knickers already worn rule:
	repeat with O running through worn knickers:
		if summoning is 0, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [printed name of O][end if]!";
		rule fails.
The knickers already worn rule is listed in the knickers wearability rules.

This is the diapers disabled rule:
	if diaper lover <= 0 and wearing-target is diaper:
		if summoning is 0, say "[if debugmode is 0]You can't wear this, you should even be able to see this, whoops!  Please report the bug.[otherwise]Diapers are disabled, but since you're in debug mode I assume you want to be able to wear this![end if]";
		unless summoning is 0 and debugmode > 0, rule fails.
The diapers disabled rule is listed in the knickers wearability rules.

This is the overdress knickers top level clash rule:
	repeat with C running through worn crotch-in-place crotch covering overdresses:
		unless C is no protection and wearing-target is disposable diaper: [You could put on a disposable diaper through a ripped dress]
			if summoning is 0, say "You need to pull up your [printed name of C] to get this on successfully!";
			rule fails.
The overdress knickers top level clash rule is listed in the knickers wearability rules.

This is the anklecuffs knickers clash rule:
	repeat with C running through worn ankle bonds:
		if wearing-target is not disposable diaper:
			if summoning is 0:
				say "You can't wear that over your [printed name of C]!";
				rule fails.
The anklecuffs knickers clash rule is listed in the knickers wearability rules.

This is the hobble skirt knickers top level clash rule:
	repeat with C running through worn crotch-in-place crotch covering skirts:
		if C is not no protection:
			if summoning is 0, say "You need to pull up your [printed name of C] to get this on successfully!";
			rule fails.
The hobble skirt knickers top level clash rule is listed in the knickers wearability rules.

knickers removability rules is a rulebook.  The removability rules of knickers is usually knickers removability rules.

Report wearing knickers:
	if the noun is plug panties:
		if the player is male or the noun is pump plug panties:
			say "[if the bimbo of the player < 7][first custom style]I can't believe I'm doing this...  [roman type][end if]As you finish pulling the panties up to your body, you [if the raw sex addiction of the player < 3]gingerly [end if]push the rubber plug into your [if the openness of asshole > 4]open [otherwise]tight [end if][asshole].";
		otherwise:
			say "[if the bimbo of the player < 7][first custom style]I can't believe I'm doing this...  [roman type][end if]As you finish pulling the panties up to your body, you [if the raw sex addiction of the player < 3]gingerly [end if]push the rubber plugs into your [if the soreness of vagina > 4]open [otherwise]tight [end if][vagina] and [if the openness of asshole > 4]open [otherwise]tight [end if][asshole].";
			now the noun is penetrating vagina;
			PussyRuin 1;
		now the noun is penetrating asshole;
		AssRuin 1;
		if the noun is cursed and the noun is vibrating plug panties, say "[line break]The [if the player is female]ass [end if] plug starts vibrating!  That can't be good...";
	otherwise if the noun is unsure and the noun is cursed:
		if the noun is diaper, say "You pull the [ShortDesc of the noun] up around your hips, [if the bimbo of the player > 12]grinning timidly[otherwise]wincing[end if] as it crinkles loudly. As you finish pulling it into place, you feel a pulse of warmth along the seams! The waistband and leg holes tighten magically, ensuring you can't take it off.  This diaper is cursed!";
		otherwise say "You pull the [ShortDesc of the noun] up around your hips. As you finish adjusting them you feel a pulse of warmth along the seams! They [if the bimbo of the player < 11]firmly[otherwise][second custom style][one of]tightly[or]deliciously[or]enticingly[in random order][roman type][end if] conform to the contours of your [HipDesc] and [if the player is male][ShortDesc of penis][otherwise][vagina][end if]. [if the bimbo of the player > 8]They make you look so fuckable!  [end if]These panties are cursed!"; [Crowdsourced from Anya Snowdrifter]


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
