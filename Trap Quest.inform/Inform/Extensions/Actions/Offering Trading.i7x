Offering Trading by Actions begins here.


[!<DecideWhichNumberIsTheCharismaOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the charisma of the player:
	let X be 0;
	increase X by the make-up of face;
	increase X by gem theme bonus * 3;
	if the class of the player is cheerleader, increase X by 2;
	if the player is a sissy, decrease X by 2;
	if the class of the player is royal slave, decrease X by 2;
	if the class of the player is succubus, increase X by 1;
	if there is a worn book of regrets, increase X by 1;
	if bitch tattoo is worn, decrease X by 1;
	decide on X.

[!<offerItTo:Action>*

REQUIRES COMMENTING

*!]
Offering it to is an action applying to two things.

[!<CheckOfferingItTo>+

REQUIRES COMMENTING

+!]
Check offering it to:
	if the second noun is bag of holding, try BagFeeding the noun to the second noun instead;
	if the second noun is not monster, say "You can only offer things to other people." instead;
	if the second noun is penetrating a body part or the second noun is grabbing the player, say "It's a bit late for that, don't you think?" instead;
	if the noun is body part, try presenting the noun instead;
	if the second noun is rejecting the noun, say "You already tried that, and [he of the second noun] wasn't interested." instead;
	if the noun is not portable, say "That's not something you can give." instead;
	if the noun is diaper and the second noun is witch, try giving the noun to the second noun instead;
	if the noun is worn and the noun is not autoremovable, say "You'd need to remove it first." instead;
	if the second noun is uninterested, say "The [second noun] doesn't seem to be paying attention to you." instead;
	if the second noun is wench and the second noun is dangerous and the noun is desirable knickers and the second noun is not horny-wench:
		allocate 4 seconds;
		compute the second noun WenchReceiving the noun instead;
		do nothing instead. [Weird bug where the above command doesn't do the "instead" bit.]


[!<CarryOutOfferingItTo>+

REQUIRES COMMENTING

+!]
Carry out offering it to:
	now convincing power is 0;
	say OfferFlav of the noun;
	increase convincing power by the bartering value of the noun for the second noun;
	if convincing power > 0:
		increase convincing power by the charisma of the player;
	if convincing power > 8, now convincing power is 8;
	compute the second noun considering the noun;
	allocate 6 seconds.

Understand "offer [something] to [something]", "trade [something] with [something]" as offering it to.

[!<SayOfferFlavOfThing>+

REQUIRES COMMENTING

+!]
To say OfferFlav of (T - a thing):
	if the player is able to speak:
		say "[variable custom style]'[if the second noun is unfriendly]Please, take this instead!'[otherwise]Would you be interested in this?'[end if][roman type][line break]";
	otherwise if the player is able to make sounds:
		say "[variable custom style][muffled sounds][roman type][line break]";
	otherwise:
		say "You hold the item up to the [second noun].".

Part - Monsters Reaction

To decide which number is the bartering value of (T - a thing) for (M - a monster):
	if T is plentiful accessory and M is intelligent, decide on (the price of T + 1) / 2;
	decide on 0.

convincing power is a number that varies.

To compute (M - a monster) considering (T - a thing):
	let I be 0;
	if a random number between 5 and 25 <= the intelligence of the player, increase I by 1;
	if a random number between 10 and 25 <= the intelligence of the player, increase I by 1;
	if the health of M < the maxhealth of M, decrease I by 1;
	if the health of M < the maxhealth of M / 2, decrease I by 1;
	if M is not interested:
		say "[BigNameDesc of M] isn[']t even looking at you.";
	if (M is shopkeeper or M is royal guard) and there is held stolen clothing:
		say MonsterCriminalOfferRejectFlav of M to T;
	otherwise if convincing power > 0 and (M is friendly or (convincing power + I) >= the square root of (a random number between 1 and 15)):
		say MonsterOfferAcceptFlav of M to T;
		say MonsterTakeFlav of M to T;
		now T is in Holding Pen;
		now M is retaining T;
		compute resolution of M taking T;
	otherwise:
		if M is not rejecting T, make M expectant; [The player can keep offering things they haven't offered yet without the NPC immediately moving to punishment.]
		now M is rejecting T;
		say MonsterOfferRejectFlav of M to T.

To say MonsterOfferRejectFlav of (M - a monster) to (T - a thing):
	if M is intelligent, say "[if M is unfriendly][BigNameDesc of M] smiles.[otherwise][BigNameDesc of M] looks a bit confused.[end if]  [line break][speech style of M]'[if convincing power > 0 and M is unfriendly]You're not going to get let off that easy.'[otherwise]Why the hell would I want that?'[end if][roman type][line break]";
	otherwise say "[BigNameDesc of M] completely ignores the [T].".

To say MonsterCriminalOfferRejectFlav of (M - a monster) to (T - a thing):
	if M is intelligent, say "[BigNameDesc of M] frowns.[line break][speech style of M]'It's too late for that!'[roman type][line break]".

To say MonsterOfferAcceptFlav of (M - a monster) to (T - a thing):
	if M is intelligent:
		if M is unfriendly:
			say "[BigNameDesc of M] smiles. [line break][speech style of M]'[if the bartering value of T for M + the favour of M > the aggro limit of M + 4]Wow, really? Thanks a lot! Maybe I've made a mistake judging you.  You're alright.'[otherwise if the bartering value of T for M + the favour of M > the aggro limit of M]Heh, I can't turn down an offer like that.  Thanks a bunch.  We're cool now.'[otherwise]Fair enough, have it your way.  I'll leave you alone... this time.'[end if][roman type][line break]";
		otherwise:
			say "[BigNameDesc of M] seems elated. [line break][speech style of M]'Wow, thank you so much! How generous of you.'[roman type][line break]";
	otherwise:
		say "[BigNameDesc of M] turns its full attention to [NameDesc of T], completely ignoring you for now!".

To say MonsterTakeFlav of (M - a monster) to (T - a thing):
	say "[BigNameDesc of M] takes [NameDesc of T].".

To compute resolution of (M - a monster) taking (T - a thing):
	if M is intelligent and M is unfriendly:
		satisfy M;
		FavourUp M by the bartering value of T for M;
		progress quest of christmas-quest;
	otherwise if M is intelligent:
		say OfferThanksFlav of M for T;
		compute offer reward of M for T;
	otherwise:
		if M is unfriendly, progress quest of christmas-quest;
		bore M.

To say OfferThanksFlav of (M - a monster) for (T - a thing):
	say "[speech style of M]'Thanks a lot for this! [if the favour of M > the bimbo of the player + 6]I'm thankful to have you as my ally[otherwise if the favour of M > the bimbo of the player + 3]I hope to see you again soon[otherwise]Maybe you're not as much of a [bitch] as I thought[end if].'[roman type][line break]".

To compute offer reward of (M - a monster) for (T - a thing): [The NPC doesn't give anything in return by default.]
	if M is intelligent, FavourUp M by the bartering value of T for M.




Offering Trading ends here.

