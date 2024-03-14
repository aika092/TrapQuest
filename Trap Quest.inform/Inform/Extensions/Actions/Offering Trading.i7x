Offering Trading by Actions begins here.

To decide what number is the charisma-influence of (C - a thing):
	if C is charisma-influencing clothing, decide on the magic-modifier of C;
	decide on 0.

To decide which number is the charisma of the player:
	let X be 0;
	increase X by the make-up of face;
	if the make-up of face is 2 and the makeupskill of the player is 1 and make up time - earnings < 1000, increase X by 5;
	increase X by gem theme bonus;
	repeat with C running through worn wearthings:
		increase X by the charisma-influence of C;
		if C is temptation clothing, increase X by 1;
	if the class of the player is cheerleader, increase X by 2;
	if the class of the player is succubus:
		if demon horns is cursed, increase X by 1;
		otherwise increase X by 2;
	decide on X.

Offering it to is an action applying to two things.

Check offering it to:
	if the second noun is bag of holding, try BagFeeding the noun to the second noun instead;
	if the second noun is not monster, say "You can only offer things to other people." instead;
	if the second noun is penetrating a body part or the second noun is grabbing the player, say "It's a bit late for that, don't you think?" instead;
	if the noun is body part, try presenting the noun instead;
	if the noun is not portable, say "That's not something you can give." instead;
	if the noun is diaper and the second noun is witch, try giving the noun to the second noun instead;
	if the noun is worn and the noun is not autoremovable, say "You'd need to remove it first." instead;
	if the second noun is uninterested, say "The [second noun] doesn't seem to be paying attention to you." instead;
	if the second noun is mechanic and the woman-status of woman-player is 91 and the mechanic-scene of woman-player <= 3 and woman-player is in the location of the player and mechanic is unfriendly, say "[big he of mechanic] doesn't seem interested in counter-offers." instead;
	if the errand-value of the noun for the second noun > 0 and the second noun is friendly:
		if the noun is slave collar and the second noun is pimp:
			compute special collar delivery instead;
		otherwise:
			compute errand completion of the second noun instead;
	if the second noun is rejecting the noun, say "You already tried that, and [he of the second noun] wasn't interested." instead;
	if the second noun is wench and the second noun is dangerous and the noun is desirable knickers and the second noun is not horny-wench:
		allocate 4 seconds;
		compute the second noun WenchReceiving the noun instead;
		do nothing instead. [Weird bug where the above command doesn't do the "instead" bit.]

Carry out offering it to:
	allocate 6 seconds;
	now convincing power is 0;
	say OfferFlav of the noun;
	increase convincing power by the bartering value of the noun for the second noun;
	if convincing power > 0 and the owner of the noun is not the second noun:
		increase convincing power by ((the charisma of the player * 4) scaled) / 4; [makes it slightly more logarithmic]
	if convincing power > 10, now convincing power is 10;
	compute the second noun considering the noun.

Understand "offer [something] to [something]", "trade [something] with [something]" as offering it to.

To say OfferFlav of (T - a thing):
	if the player is able to speak:
		say "[variable custom style][if the owner of the noun is the second noun]'Here, you can have it back!'[otherwise if the second noun is unfriendly]'Please, take this instead!'[otherwise][FriendlyOfferFlav of T][end if][roman type][line break]";
	otherwise if the player is able to make sounds:
		say "[variable custom style][muffled sounds][roman type][line break]";
	otherwise:
		say "You hold the item up to the [second noun].".
To say FriendlyOfferFlav of (T - a thing):
	say "'Would you be interested in this?'".

Part - Monsters Reaction

To decide which number is the bartering value of (T - a thing) for (M - a monster):
	if M is student or M is staff member or M is robomatron or M is slutty sister or M is orc or M is goblin, decide on 0;
	if T is plentiful accessory and M is intelligent, decide on the price of T;
	decide on 0.

convincing power is a number that varies.

To decide which number is the convincability of (M - a monster):
	let I be 0;
	if a random number between 5 and 25 <= the intelligence of the player, increase I by 1;
	if a random number between 10 and 25 <= the intelligence of the player, increase I by 1;
	if the health of M < the maxhealth of M, decrease I by 1;
	if the health of M < the maxhealth of M / 2, decrease I by 1;
	decide on I.

To compute (M - a monster) considering (T - a thing):
	if M is not interested:
		say "[BigNameDesc of M] isn't even looking at you.";
	otherwise if M is able to see stolen goods and M is not the owner of T:
		say MonsterThiefOfferRejectFlav of M to T;
	otherwise if M is the owner of T:
		say MonsterThiefOfferAcceptFlav of M to T;
		say ReclaimFlav of M for T;
		compute final resolution of M taking T; [NO favour gain]
	otherwise if (M is shopkeeper or M is royal guard) and there is held stolen thing:
		say MonsterCriminalOfferRejectFlav of M to T;
	otherwise if convincing power > 0 and (M is friendly or (convincing power + the convincability of M) >= the square root of (a random number between 1 and 15)):
		say MonsterOfferAcceptFlav of M to T;
		if M is awake and M is in the location of the player, compute resolution of M taking T;
		compute final resolution of M taking T;
	otherwise:
		if M is not rejecting T, make M expectant; [The player can keep offering things they haven't offered yet without the NPC immediately moving to punishment.]
		now M is rejecting T;
		say MonsterOfferRejectFlav of M to T.

To say MonsterOfferRejectFlav of (M - a monster) to (T - a thing):
	if M is intelligent, say "[if M is unfriendly][BigNameDesc of M] smiles.[otherwise][BigNameDesc of M] looks a bit confused.[end if][line break][speech style of M][if convincing power > 0 and M is unfriendly]'You're not going to get let off that easy.'[otherwise]'Why the hell would I want that?'[end if][roman type][line break]";
	otherwise say "[BigNameDesc of M] completely ignores the [T].".

To say MonsterThiefOfferRejectFlav of (M - a monster) to (T - a thing):
	if M is intelligent, say "[BigNameDesc of M] scowls.[line break][speech style of M]'How dare you steal my stuff and THEN try to trade for it!'[roman type][line break]".

To say MonsterThiefOfferAcceptFlav of (M - a monster) to (T - a thing):
	if M is intelligent, say "[speech style of M]'Of course I'll take it, it's ALREADY MINE!'[roman type][line break]".

To say MonsterCriminalOfferRejectFlav of (M - a monster) to (T - a thing):
	if M is intelligent, say "[BigNameDesc of M] frowns.[line break][speech style of M]'It's too late for that!'[roman type][line break]".

To say MonsterOfferAcceptFlav of (M - a monster) to (T - a thing):
	if M is intelligent:
		if M is unfriendly:
			say "[BigNameDesc of M] smiles.[line break][speech style of M]'[if the bartering value of T for M + the favour of M > the aggro limit of M + 4]Wow, really? Thanks a lot! Maybe I've made a mistake judging you. You're alright.'[otherwise if the bartering value of T for M + the favour of M > the aggro limit of M]Heh, I can't turn down an offer like that. Thanks a bunch. We're cool now.'[otherwise]Fair enough, have it your way. I'll leave you alone... this time.'[end if][roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] seems elated.[line break][speech style of M]'Wow, thank you so much! How generous of you.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] turns [his of M] full attention to [NameDesc of T], completely ignoring you for now!".

To say MonsterTakeFlav of (M - a monster) to (T - a thing):
	say "[BigNameDesc of M] takes [NameDesc of T].".

To compute resolution of (M - a monster) taking (T - a thing):
	if M is intelligent and M is unfriendly:
		say MonsterTakeFlav of M to T;
		satisfy M;
		let BV be the bartering value of T for M;
		FavourUp M by ((1 + BV) / 2);
		progress quest of christmas-quest;
	otherwise if M is intelligent:
		say MonsterTakeFlav of M to T;
		compute offer reward of M for T;
		say OfferFriendshipFlav of M;
	otherwise:
		say MonsterTakeFlav of M to T;
		if M is unfriendly, progress quest of christmas-quest;
		bore M.

To compute final resolution of (M - a monster) taking (T - a thing):
	if M is taxable, add T to the taxableItems of M;
	if T is players-detached-dick:
		compute handing over detached dick to M; [#LXorDD]
	otherwise if T is clothing:
		now M is carrying T;
	otherwise:
		destroy T.

To say OfferThanksFlav of (M - a monster) for (T - a thing):
	if the bartering value of T for M > 2, say "[speech style of M]'Thanks a lot for this!'[roman type][line break]".

Definition: a monster is gift giving:
	if the number of entries in the tradableItems of it > 0, decide yes;
	decide no.

To compute offer reward of (M - a monster) for (T - a thing): [The NPC checks if any items in its tradableItems list are low enough 'tradability' to consider handing off.]
	compute standard offer reward of M for T.

To compute standard offer reward of (M - a monster) for (T - a thing): [The NPC checks if any items in its tradableItems list are low enough 'tradability' to consider handing off.]
	let BV be the bartering value of T for M;
	if M is intelligent, FavourUp M by ((1 + BV) / 2);
	let X be nothing;
	if M is gift giving and M is buddy:
		sort the tradableItems of M in random order;
		sort the tradableItems of M in reverse tradability order;
		repeat with C running through the tradableItems of M:
			if C is off-stage or C is carried by M, now X is C;
	if X is a thing:
		if debugmode > 0, say "[input-style]Considering gifting the player [MediumDesc of X]: Gift value ([tradability of X].5) | ([the charisma of the player + the favour of M - the aggro limit of M]) = ([the charisma of the player]) charisma + ([the favour of M - the aggro limit of M]) favour [bold type]AND [input-style]([BV * 2]) value of [ShortDesc of T][roman type][line break]";
		if the charisma of the player + the favour of M - the aggro limit of M > the tradability of X and BV * 2 > the tradability of X:
			compute M rewarding X;
			remove X from the tradableItems of M.

To compute (M - a monster) rewarding (T - a thing):
	if T is clothing, blandify and reveal T;
	now T is in the location of the player;
	if T is alchemy product:
		now T is bland;
		now T is sure;
	say RewardFlav of M for T;
	compute autotaking T.

To say RewardFlav of (M - a monster) for (T - a thing):
	if M is intelligent, say "[speech style of M]'[one of]Hopefully this will help you in your travels[or]Maybe you'll find this helpful[in random order].'[roman type][line break]";
	say "[BigNameDesc of M] puts a [T] on the ground in front of you.".

To say OfferFriendshipFlav of (M - a monster):
	if M is intelligent, say "[speech style of M][if M is guardian]'I'm thankful to have you as my ally[otherwise if M is ally]'We should stick together, you and me[otherwise if M is buddy]'I'm very glad to have met you[otherwise if M is acquaintance]'You're all right[otherwise if M is friendly]'Maybe you're not as much of a [bitch] as I thought[otherwise]'Maybe next time I use you, I'll try to be more gentle[end if].'[roman type][line break]".

Offering Trading ends here.
