Monster Descriptions by Monster Framework begins here.

The printed name of a monster is usually "[monster-title-before of item described][MediumDesc of item described][monster-title-after of item described]". 
The printed plural name of a monster is usually "[monster-title-before of item described][MediumDesc of item described]s[monster-title-after of item described]". 

To say MediumDesc of (M - a monster):
	say "ERROR - NPC missing title".

To say monster-title-before of (M - a monster):
	say "[if M is in the location of the player][TQlink of M][end if][input-style]".

To say monster-title-after of (M - a monster):
	say "[if the sleep of M > 0] (fast asleep)[end if][shortcut-desc][roman type][if M is in the location of the player][TQxlink of M][verb-desc of M][end if]".

The description of a monster is usually "[FullMonsterDesc of item described]".

To say FullMonsterDesc of (M - a monster):
	if images visible is 1, display monster-image of M;
	say MonsterDesc of M.

To say MonsterDesc of (M - a monster):
	say "This NPC seems to be missing [his of M] description!".

To decide which figure-name is the monster-image of (M - a monster):
	decide on figure of no-image-yet.

After examining a monster:
	unless the noun is not intelligent or the noun is robot:
		say "[FavourDesc of the noun]";
	if the health of the noun < the maxhealth of the noun / 4:
		say "[BigNameDesc of noun] looks near death.";
	otherwise if the health of the noun < the maxhealth of the noun / 2:
		say "[BigNameDesc of noun] seems to be quite injured.";
	if the noun is wrapped, say "[BigNameDesc of noun] is wearing a condom around [his of the noun] [manly-penis].".

To say FavourDesc of (M - a monster):
	let O be a random body part penetrated by M;
	if O is body part:
		say "You have a very intimate relationship with [NameDesc of M]. [big he of M][']s [if diaper quest is 0]fucking[otherwise]got access to[end if] your [variable O]!";
	otherwise if M is unfriendly:
		say "You have a bad relationship with [NameDesc of M]. It seems like [he of M] wants to fight. [if M is interested][big he of M] is looking right at you![otherwise][big he of M] doesn't seem interested in you right now.[end if]";
	if M is guardian:
		say "You have a very solid relationship with [NameDesc of M], and would expect [him of M] to help you out in a fight.";
	otherwise if M is ally:
		say "You have a very good relationship with [NameDesc of M], and you think there's a chance [he of M] might even help you out in a fight.";
	otherwise if M is buddy:
		say "You have a good relationship with [NameDesc of M], and feel confident that [he of M] would be more than happy to share advice and resources with you.";
	otherwise if M is acquaintance:
		say "You have a neutral relationship with [NameDesc of M]; [he of M] is unlikely to help you out too much but also isn't acting aggressive.";
	otherwise if M is annoyed:
		say "You do not have a very good relationship with [NameDesc of M]; in fact [he of M] probably considers you somewhat of an annoyance.".

Before examining a nearby monster:
	say "[description of noun]" instead.



Monster Descriptions ends here.

