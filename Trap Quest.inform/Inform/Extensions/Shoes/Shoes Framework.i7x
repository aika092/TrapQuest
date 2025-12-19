Shoes Framework by Shoes begins here.

shoes is a kind of clothing. The printed name of a shoes is usually "[clothing-title-before]pair of [UniqueShortDesc of item described][clothing-title-after]". Understand "pair", "pair of" as shoes.

Definition: a shoes is foot covering: decide yes.
To decide which number is the default-soak-limit of (C - a shoes): decide on 7.

Definition: a shoes is hindrance-enabling: decide no. [Is it more likely to fall over when wearing these shoes compared to barefoot?]
Definition: a shoes is ankle covering: decide yes.

Definition: a heels is hindrance-enabling: decide yes.

To say ShoeType of (S - a shoes):
	say "shoes".

To say ShortestDesc of (C - a shoes):
	say "pair of shoes".

To decide which number is the kick-bonus of (S - a shoes):
	decide on 0.

Definition: a shoes is ingredient: decide yes.

To decide which number is the crafting key of (C - a shoes):
	decide on 51.

To decide which figure-name is the clothing-image of (H - a shoes):
	decide on the figure of leather peep toe heels. [failsafe, should never happen]

To compute SelfExamineDesc of (C - a shoes):
	say "You have a [ShortDesc of C] on your feet.".

To say ShortDesc of (C - a shoes):
	say "pair of [if the outrage of C > 7]slutty [end if][UniqueShortDesc of C]".

To say UniqueShortDesc of (C - a shoes):
	say "shoes".

To set up influence of (C - a shoes):
	set up random-based influence of C.

To restock (C - a shoes):
	let B be a random basic loot shoes;
	if B is shoes:
		repeat with L running through Standard Item Pen:
			if L is shoes, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting shoes rule:
	let C be a random shoes;
	restock C.
The setup starting shoes rule is listed in the setup starting items rules.

To decide which number is the unique cringe of (C - a shoes):
	decide on 0.

To decide which number is the hindrance-modifier of (C - a clothing):
	decide on 0.

Part - Wearability

Definition: a shoes (called C) is too outrageous: [Player will never refuse to wear shoes.]
	decide no.

shoes wearability rules is a rulebook. The wearability rules of shoes is usually shoes wearability rules.

This is the shoes already worn rule:
	repeat with S running through shoes worn by the player:
		if summoning is 0 and autowear is false, say "You can't wear those because you are already wearing a [printed name of S]!";
		rule fails.
The shoes already worn rule is listed in the shoes wearability rules.

This is the knickers stuck shoes clash rule:
	repeat with C running through worn stuck shoes:
		if summoning is 0 and autowear is false, say "You can't put these on because your [printed name of C] are stuck!";
		rule fails.
The knickers stuck shoes clash rule is listed in the knickers wearability rules.

This is the trousers stuck shoes clash rule:
	repeat with C running through worn stuck shoes:
		if summoning is 0 and autowear is false, say "You can't put these on because your [printed name of C] are stuck!";
		rule fails.
The trousers stuck shoes clash rule is listed in the trousers wearability rules.

Report wearing shoes:
	if the total-soak of the noun > 0:
		if the total-soak of the noun is the water-soak of the noun:
			say "It feels a bit gross to put your feet inside soaking wet shoes.";
			GrossOut 1;
		otherwise:
			say "The [if the total-soak of the noun is the semen-soak of the noun + the water-soak of the noun][semen][otherwise]fluids[end if] inside the shoes ooze around your feet and inside your toes.";
			GrossOut 4;
	if the noun is unsure and the noun is cursed, say "You finish slipping your [printed name of the noun] onto your [if there are worn stockings]stockings clad [end if]feet. As you take your first step you feel a pulse of warmth that runs from your toe tips to the back of your [feet]! The material of the [feet] shrinks to fit your feet [if the bimbo of the player < 6]firmly[otherwise if the bimbo of the player < 10]tightly[otherwise if the bimbo of the player < 15]deliciously[otherwise]enticingly[end if]. Lifting your foot tentatively, you can feel the sole of your [ShoeType of the noun] clinging to the bottom of your feet. These [ShoeType of the noun] are cursed!"; [Crowdsourced from Anya Snowdrifter]
	otherwise say "[if the bimbo of the player > 12 and a random number between 1 and 2 is 1][line break][second custom style]These make my ass look great![roman type][line break][end if]";
	if the noun is strut enabling and the strutskill of the player is 0 and the player is not wobbling, say "These heels are so [if the bimbo of the player < 5]beautiful[otherwise][second custom style]sexy[roman type][end if], you feel like [bold type]strut[roman type]ting around in them!".

Check taking off worn shoes:
	if the player is dildo stuck and the noun is heels:
		if the dexterity of the player < 6:
			say "You try and bend over whilst on the dildo to take off your heels but you just aren't flexible enough!" instead;
		if the player is wrist bound:
			say "You try and bend over whilst on the dildo to take off your heels, but it's just impossible whilst your wrists are bound!" instead;
		if the largeness of belly > 6:
			say "You try and bend over whilst on the dildo to take off your heels but your [BellyDesc] is in the way!" instead;
		if the largeness of breasts > 15:
			say "You try and bend over whilst on the dildo to take off your heels but your [BreastDesc] are getting in the way!" instead;
	otherwise if the noun is glued:
		try tearing off the noun;
		if the noun is glued:
			do nothing instead.

Carry out taking off shoes while the player is dildo stuck:
	say "You awkwardly bend over, forcing even more of your weight onto the dildo.";
	repeat with T running through traps penetrating a fuckhole:
		if T is penetrating asshole, ruin asshole;
		otherwise ruin vagina.

Shoes Framework ends here.
