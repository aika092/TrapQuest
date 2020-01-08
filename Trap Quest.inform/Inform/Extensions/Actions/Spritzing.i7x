Spritzing by Actions begins here.

Spritzing is an action applying to one thing.
Check spritzing:
	let P be a random worn pink spraybottle;
	unless P is a thing, say "With what?" instead;
	try spritzing the noun with P instead.
Understand "spritz [something]", "squirt [something]", "febreeze [something]", "spray [something]", "shoot [something]", "spz [something]" as spritzing.


Spritzing it with is an action applying to two things.
Check spritzing it with:
	if the second noun is not pink spraybottle, say "The [ShortDesc of the second noun] isn't really built for this task. Perhaps a spraybottle or cloth..." instead;
	if the noun is monster, say "It would probably make more sense to zap [NameDesc of the noun] with [NameDesc of the second noun] instead." instead;
	if the noun is not clothing and the noun is not monster, say "How would you clean that?" instead;
	if the noun is wet diaper or the noun is messed knickers, say "Unfortunately, you doubt that would work." instead;
	if the noun is clothing and the milk-soak of the noun + the semen-soak of the noun + the urine-soak of the noun < 1, say "There's nothing to clean." instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the player is wrist bound in front and the noun is worn, say "With your hands bound together like this, there's no way you can clean that without taking it off." instead;
	if the work ethic of the second noun <= -300:
		allocate 2 seconds;
		say "You pull the trigger, but nothing comes out. It's out of juice!" instead.[The player can carry around a maximum of 5 charges, but it can be used 3 more times before it's completely out of juice.]
Carry out spritzing it with:
	if the second noun is spray, say "You aim the spray nozzle at [NameDesc of the noun] and pull the trigger.";
	otherwise say "You put the washcloth on the [NameDesc of the noun] and begin rubbing it in tiny semicircles.";
	if the noun is monster:
		let A be a random number between 4 and 7;
		if the second noun is cursed, decrease A by a random number between 3 and 6;
		otherwise increase A by 10;
		if A < 1:
			say "[BigNameDesc of the noun] recoils as you blast [him of the noun] with lemon-scented liquid. [if the health of the noun < the maxhealth of the noun]It literally washes the wounds off [his of the noun] body, healing [him of the noun]![otherwise]Nothing seems to happen...[end if]";
			increase the health of the noun by a random number between 3 and 5;
			if the health of the noun > the maxhealth of the noun, now the health of the noun is the maxhealth of the noun;
		otherwise:
			say "[BigNameDesc of the noun] visibly recoils as you blast [him of the noun] with lemon-scented liquid. It singes [his of the noun] skin!";
			damage A on the noun;
	otherwise:
		if the noun is spray, say "[BigNameDesc of the noun] sparkles as you blast it with lemon-scented liquid. The grime disappears just like magic!";
		otherwise say "The [printed name of the second noun] sparkles as it absorbs every speck of dirt it comes into contact with. The grime disappears just like magic!";
		clean the noun;
	if the charge of the second noun > 0, decrease the charge of the second noun by 1;
	otherwise decrease the work ethic of the second noun by 100;
	allocate 6 seconds.
Understand "spritz [something] with [something]", "squirt [something] with [something]", "febreeze [something] with [something]", "spray [something] with [something]", "shoot [something] with [something]", "spz [something] with [something]" as spritzing it with.

To say OfferFlav of (T - a pink spraybottle):
	if the player is able to speak:
		if T is cloth, say "[variable custom style]'I lost my spraybottle, can you give me a replacement?'[roman type][line break]";
		otherwise say "[variable custom style]'[if the second noun is unfriendly]Please, take this instead!'[otherwise]Would you be interested in this?'[end if][roman type][line break]";
	otherwise if the player is able to make sounds:
		say "[variable custom style][muffled sounds][roman type][line break]";
	otherwise:
		say "You hold the item up to the [second noun].";


Spritzing ends here.

