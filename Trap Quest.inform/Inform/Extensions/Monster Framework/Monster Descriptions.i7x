Monster Descriptions by Monster Framework begins here.

To decide which figure-name is the monster-image of (M - a monster):
	decide on figure of no-image-yet.

After examining a monster:
	unless the noun is not intelligent or the noun is robot:
		say "[FavourDesc of the noun]";
	if the health of the noun < the maxhealth of the noun / 4:
		say "The [noun] looks near death.";
	otherwise if the health of the noun < the maxhealth of the noun / 2:
		say "The [noun] seems to be quite injured.";
	if the noun is wrapped, say "The [noun] is wearing a condom around [his of the noun] [manly-penis].".

To say FavourDesc of (M - a monster):
	if the noun is penetrating a body part:
		let O be a random orifice penetrated by the noun;
		say "You have a very intimate relationship with the [noun]. [big he of the noun]'s fucking your [variable O]!";
	if the noun is guardian:
		say "You have a very solid relationship with the [noun], and would expect [him of the noun] to help you out in a fight.";
	otherwise if the noun is ally:
		say "You have a very good relationship with the [noun], and you think there's a chance [he of the noun] might even help you out in a fight.";
	otherwise if the noun is buddy:
		say "You have a good relationship with the [noun], and feel confident that [he of the noun] would be more than happy to share advice and resources with you.";
	otherwise if the noun is acquaintance:
		say "You have a neutral relationship with the [noun]; [he of the noun] is unlikely to help you out too much but also isn't acting aggressive.";
	otherwise if the noun is annoyed:
		say "You do not have a very good relationship with the [noun]; in fact [he of the noun] probably considers you somewhat of an annoyance.";
	otherwise if the noun is unfriendly:
		say "You have a bad relationship with the [noun]. It seems like [he of the noun] wants to fight. [if the noun is interested][big he of the noun] is looking right at you![otherwise][big he of the noun] doesn't seem interested in you right now.[end if]".

Before examining a nearby monster:
	say "[description of item described]" instead.

Monster Descriptions ends here.

