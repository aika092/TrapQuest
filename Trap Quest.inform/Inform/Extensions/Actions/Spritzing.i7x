Spritzing by Actions begins here.

Spritzing is an action applying to one thing.
Check spritzing:
	unless there is a worn pink spraybottle, say "With what?" instead;
	let S be a random worn pink spraybottle;
	if the noun is monster and S is cloth, say "It would probably make more sense to slap the [noun] instead.";
	if the noun is not clothing and the noun is not monster, say "How would you clean that?" instead;
	if the player is not a maid, say "You try, but nothing comes out of the nozzle. It's like it won[']t let you use it." instead;
	if the noun is clothing and the milk-soak of the noun + the semen-soak of the noun + the urine-soak of the noun < 1, say "There[']s nothing to clean." instead;
	if the player is wrist bound behind, say "With your hands bound behind you, there's no way you can clean this successfully." instead;
	if the player is wrist bound in front and the noun is worn, say "With your hands bound together like this, there[']s no way you can clean that without taking it off." instead;
	if the work ethic of S <= -300:
		now seconds is 2;
		say "You pull the trigger, but nothing comes out. It's out of juice!" instead.[The player can carry around a maximum of 5 charges, but it can be used 3 more times before it's completely out of juice.]
Carry out spritzing:
	let S be a random worn pink spraybottle;
	if S is spray, say "You aim the spray nozzle at the [noun] and pull the trigger.";
	otherwise say "You put the washcloth on the [noun] and begin rubbing it in tiny semicircles.";
	if the noun is monster:
		let A be a random number between 4 and 7;
		if S is cursed, decrease A by a random number between 3 and 6;
		otherwise increase A by 10;
		if A < 1:
			say "The [noun] recoils as you blast them with lemon-scented liquid. [if the health of the noun < the maxhealth of the noun]It literally washes the wounds off [his of the noun] body, healing [him of the noun]![otherwise]Nothing seems to happen...[end if]";
			increase the health of the noun by a random number between 3 and 5;
			if the health of the noun > the maxhealth of the noun, now the health of the noun is the maxhealth of the noun;
		otherwise:
			say "The [noun] visibly recoils as you blast [him of the noun] with lemon-scented liquid. It singes [his of the noun] skin!";
			damage A on the noun;
	otherwise:
		if the noun is spray, say "The [noun] sparkles as you blast it with lemon-scented liquid. The grime disappears just like magic!";
		otherwise say "The [printed name of S] sparkles as it absorbs every speck of dirt it comes into contact with. The grime disappears just like magic!";
		now the semen-soak of the noun is 0;
		now the milk-soak of the noun is 0;
		now the urine-soak of the noun is 0;
	if the charge of S > 0, decrease the charge of S by 1;
	otherwise decrease the work ethic of S by 100;
	now seconds is 6.
Understand "spritz [something]", "squirt [something]", "febreeze [something]", "spray [something]", "shoot [something]", "spz [something]" as spritzing.

To say OfferFlav of (T - a pink spraybottle):
	if the player is able to speak:
		if T is cloth, say "[variable custom style]'I lost my spraybottle, can you give me a replacement?'[roman type][line break]";
		otherwise say "[variable custom style]'[if the second noun is unfriendly]Please, take this instead!'[otherwise]Would you be interested in this?'[end if][roman type][line break]";
	otherwise if the player is able to make sounds:
		say "[variable custom style][muffled sounds][roman type][line break]";
	otherwise:
		say "You hold the item up to the [second noun].";

Check slapping when there is a worn pink spraybottle:
	if the noun is spray, try spritzing the noun instead.


Spritzing ends here.
