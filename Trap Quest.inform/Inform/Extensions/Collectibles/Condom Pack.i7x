Condom Pack by Collectibles begins here.


A condom-pack is a kind of thing. There is 1 condom-pack.  The description of condom-pack is "A small box of condoms labelled 'SuperSafe Condoms, for a slut on the go.  This magic condom-pack of Holding contains over a thousand condoms, more than enough for even the biggest of sluts.  100% safe and user foolproof.  Warning: magical safety enchantment causes used condoms to be ungraspable by women and traps.  Attempt to use sharp objects or teeth.'".  The printed name of condom-pack is "[TQlink of item described]condom pack[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of condom-pack is "cdp".  Understand "pack", "condom pack", "condom box", "box", "super", "safe" as condom-pack.

Definition: a thing (called C) is condom-providing:
	decide no.

Definition: a condom-pack (called C) is condom-providing:
	decide yes.

Definition: a condom-pack (called B) is immune to change:
	decide yes.

Definition: a clothing (called C) is condom pinnable:
	decide no.

Definition: an overdress (called C) is condom pinnable:
	decide yes.

Definition: a belt (called C) is condom pinnable:
	decide yes.

Definition: a string belt (called C) is condom pinnable:
	decide yes.

Definition: a clothing (called C) is condom pinned:
	if the total condoms of C > 0, decide yes;
	decide no.

Definition: a clothing (called C) is drinkable condom pinned:
	if the used condoms of C > 0, decide yes;
	decide no.

To decide which number is the total condoms of (C - a clothing):
	decide on the used condoms of C + the empty condoms of C.

To decide which number is the condom outrage of (C - a clothing):
	let O be 0;
	increase O by 2 * the used condoms of C;
	increase O by the empty condoms of C;
	decide on O.

To decide which number is total used condoms:
	let N be 0;
	repeat with C running through worn clothing:
		increase N by the used condoms of C;
	decide on N.

To decide which number is total drinkable condoms:
	let N be 0;
	repeat with C running through held clothing:
		increase N by the used condoms of C;
	decide on N.

To decide which number is total pinned condoms:
	let N be 0;
	repeat with C running through worn clothing:
		increase N by the total condoms of C;
	decide on N.

Report examining a condom pinned clothing:
	say "The item has [if the used condoms of the noun > 1][used condoms of the noun] large cum-filled condoms pinned to it[otherwise if the used condoms of the noun is 1]a large cum-filled condom pinned to it[end if][if the used condoms of the noun > 0 and the empty condoms of the noun > 0], and [end if][if the empty condoms of the noun > 1][empty condoms of the noun] used condoms pinned to it that have been torn and sucked dry[otherwise if the empty condoms of the noun is 1]one used condom that has been torn and sucked dry pinned to it[end if].".

To compute condom request choice of (M - a monster):
	if the player is a march 2017 top donator and M is unwrapped and M is intelligent:
		say "Looks like the [M] is probably going for your [chosen-orifice of M].  Would you like to request that [he of M] wear a condom? [yesnolink]";
		if the player consents:
			say "[CondomRequestFlav of M]";
			if M is convinced to wear a condom:
				say "[CondomAcceptFlav of M]";
				now M is wrapped;
			otherwise:
				say "[CondomRejectFlav of M]".

Definition: a monster (called M) is convinced to wear a condom:
	let C be the charisma of the player;
	let R be a random number between 0 and C;
	if R < the condom resistance of M, decide no;
	decide yes.

To decide which number is the condom resistance of (M - a monster):
	decide on 0. [Default 100% success]

To compute condom filling of (M - a monster):
	let C be a random worn condom pinnable clothing;
	let S be nothing;
	if C is nothing:
		now S is a random string belt;
		summon S cursed;
		now C is S;
	say "[if S is clothing]Suddenly, a [printed name of S] appears around your waist!  [end if][CondomPinFlav of M on C][CondomPinReactionFlav of M on C]";
	if newbie tips is 1, say "[one of][item style]Newbie tip: You've got a condom on your clothes!  That's right, NPCs will invariably pin the condoms they use to your clothing and this increases how humiliating the clothing is, and therefore your appearance rating.  You can't remove the condoms from the clothing yourself - blame the makers of the game and their ability to manipulate the rules of this universe.  You can however bite and drink them - this obviously makes you drink a humiliating dose of [semen], but it also halves the amount that the condom increases the outrage of the item.  Of course, the best solution is probably to eventually remove the piece of clothing when it gets too ridiculous.[roman type][line break][or][stopping]";
	increase the used condoms of C by 1;
	say "[one of]They seem to magically fuse, and you now have a used condom hanging from your [C]!  [or]The condom fuses to your [C] just like before.  [or]The condom fuses to your [C].  [stopping]";
	if C is string belt:
		let H be a random off-stage cumdumpster hat;
		if H is actually summonable:
			summon H cursed;
			say "As if to celebrate your [']achievement['], a [H] appears on your head!".

To say CondomRequestFlav of (M - a monster):
	if the player is able to speak and M is intelligent:
		if the chosen-orifice of M is vagina and the pregnancy of the player is 0 and pregnancy fetish is 1:
			say "[variable custom style]'[if the vaginal sex addiction of the player < 4 and the children of the player is 0][one of]Please please please wear a condom, I can't risk getting pregnant in this crazy world!'[or]Will you at least make sure I don't get pregnant?!'[or]Please wear this if you have to do that.'[in random order][otherwise if the vaginal sex addiction of the player < 7 and the children of the player is 0][one of]Please do me the one courtesy of wrapping your tool.  I think I might be fertile.'[or]Please wear this.  Unless you'd rather have a kid.'[or]If you don't wear this, there's a chance I'll get pregnant.'[in random order][otherwise if the children of the player is 0][one of]Hey big boy, you should wear one of these unless you like playing the pregnancy lottery.'[or]I'm still not sure if I can get pregnant here, but I guess it's better safe than sorry?'[or]Bareback might be more fun, but this is probably more responsible.'[or]I guess it's up to you big guy, but I might become your baby momma if you don't wear one of these.'[in random order][otherwise if the vaginal sex addiction of the player < 5][one of]Please wear this, I don't want to have to have any more children...'[or]Please, I'm begging you, I can't get pregnant again, I just can't!'[in random order][otherwise][one of]Hey big guy, would you mind wearing one of these?  Bareback is fun, but childbirth is painful...'[or]I'd wear one of these if I were you, I've already been knocked up down here and I'd rather not have it happen again.'[or]There's a good chance I'll get pregnant if you don't wear one of these.  It's happened before.'[in random order][end if][roman type][line break]";
		otherwise if the humiliation of the player > 29000 and total used condoms > 0:
			say "[second custom style]'[if total used condoms > 10][one of]Hey honey, why don't you add another [']trophy['] to my collection?  If you can find any spare space, tee-hee!'[or]Want to add to this ridiculous display?  Be my guest, just wear one of these.'[or]You want to add your cum to the collection, don't you?  I can tell.  Here, take one of these.'[or]If you want to make me look like even more of a fucked-up cum addict, I don't mind.'[or]So... have you considered adding to my impressive collection?'[in random order][otherwise][one of]Hey honey, why don't you add another [']trophy['] to my collection?'[or]I'm starting to build a collection of mementos, want to contribute?'[or]Want to help me show the world how big a whore I am?'[or]Hey baby, want to help me save your cum for later?  Wear this.'[or]If you cum in this and pin it to me, I promise I'll wear it with pride.'[in random order][end if][roman type][line break]";
		otherwise:
			say "[variable custom style]'[if total used condoms is 0][one of]I've got some condoms, if you want one.'[or]You should wear this, I don't know where that [manly-penis] has been.'[or]I'll feel like less of a disgrace if you wear this.'[in random order][otherwise][one of]I want you to wear this, but I'd rather you didn't pin it on me afterwards, if you'd be so kind.'[or]If I give you a condom, will you promise not to pin it on me afterwards?'[or]I'd rather you wore this, but not if you're going to add it to the [']collection['].'[or]If I give you a condom, are you going to pin it to me afterwards?'[in random order][end if][roman type][line break]";
	otherwise:
		say "[if M is intelligent][variable custom style][gag sounds][roman type][line break][end if]You try to convince the [M] to wear a condom with [if the bimbo of the player < 8]desperate[otherwise if the bimbo of the player < 14]playful[otherwise]provocative[end if] hand gestures.".

[!<SayCondomAcceptFlav>+

The text output of this function is displayed whenever the player offers a monster a condom, and they accept it.

+!]
To say CondomAcceptFlav of (M - a monster):
	if the condom resistance of M > 0, say "The [M] frowns, but then takes the condom and sheathes [his of M] [manly-penis].";
	otherwise say "The [M] [one of]smiles[or]grins wordlessly[or]smirks[at random] and takes a condom.  Discarding the wrapper, [he of M] rolls it down the length of [his of M] [manly-penis].  You stare, [one of][if the sex addiction of the player > 13]hypnotised, eagerly licking your lips[otherwise if the sex addiction of the player > 6]hypnotised, unconsciously licking your lips[otherwise]disgustedly curling your upper lip[end if][or]unable to [if the sex addiction of the player < 13 and the sex addiction of the player > 6]bring yourself to [end if]look away[or]your mouth opening unconsciously[or][if the sex addiction of the player < 7]without a shred of enthusiasm[otherwise]with envy[end if], as the rubber makes intimate contact with every inch of the massive tool[or]as the gleaming latex makes every bump and vein glisten [if the sex addiction of the player < 7]unappealingly[otherwise]temptingly[end if][at random].".

[!<SayCondomManualFlav>+

The text output of this function should be displayed whenever the player puts a condom onto a monster's penis, such as during dominant sex.

+!]
To say CondomManualFlav of (M - a monster):
	say "You take out a condom and quickly roll it down [his of M] length, making [one of]sure the rubber is in intimate contact with every inch of the massive tool[or]every bump and vein glisten as you stretch and smooth the rubber over [his of M][at random] massive tool.".

To say CondomRejectFlav of (M - a monster):
	say "The [M] [one of]scoffs[or]frowns[or]rolls [his of M] eyes[at random], and ignores your suggestion.  Looks like [he of M][']s going in bare...".

To say CondomPinFlav of (M - a monster) on (C - a clothing):
	if M is awake and M is interested, say "Before you can stop [him of M], the [M] presses the [one of]newly created and now used [or]strongly-smelling [or]wobbling, semen-swollen [or][or][cycling]condom to your [C].  ";
	otherwise say "Completely of its own accord, the used condom suddenly zips from the [M] and flies through the air until it hits your [C].  ".

To say CondomPinReactionFlav of (M - a monster) on (C - a clothing):
	say "[variable custom style][one of]What on earth?!  Am I supposed to walk around with this thing just dangling there?![or][if the total condoms of C is 0]Oh great, now this has condoms on it too![otherwise][end if][stopping][roman type][line break]".

condom is a backdrop.  condom is everywhere.  the description of condom is "[if total used condoms > 0]A full, used condom pinned to your clothing[otherwise if total pinned condoms > 0]An empty condom pinned to your clothing[otherwise]There are no condoms to be seen[end if].".  Understand "condoms", "used condoms", "full condoms", "used condom", "full condom", "empty condom", "empty condoms" as condom.

check examining condom:
	if total pinned condoms is 0 and (there is a held condom-pack or there is a condom-pack in the location of the player), try examining a random condom-pack instead.

check drinking condom:
	if total drinkable condoms > 0, compute condom biting instead.

check eating condom:
	if total drinkable condoms > 0, compute condom biting instead.

check TQeating condom:
	if total drinkable condoms > 0, compute condom biting instead.

To compute condom biting:
	if the number of held drinkable condom pinned clothing is 1:
		compute condom biting of a random held drinkable condom pinned clothing;
	otherwise:
		repeat with C running through held drinkable condom pinned clothing:
			say "Drink the [semen] from [if the used condoms of C is 1]the condom[otherwise]one of the condoms[end if] on your [C]? [yesnolink]";
			if the player consents:
				compute condom biting of C;
				rule succeeds.

To compute condom biting of (C - a clothing):
	say "Stretching the cumfilled end of [if the used condoms of C is 1]the condom[otherwise]one of the condoms[end if] to your mouth, you gnaw on the middle with your teeth until it suddenly bursts, coating the inside of your mouth with salty goo[one of] like a water balloon exploding[or][stopping].  [if the semen addiction of the player < 8]The shock of the sudden blast makes you swallow the load on reflex[otherwise if the semen addiction of the player < 15]You gulp down the [semen] without thinking[otherwise]You savour the taste in your mouth for a few moments before beginning to swallow it down bit by bit, enjoying the feeling of the slimy stuff as it travels down your throat[end if].";
	decrease the used condoms of C by 1;
	increase the empty condoms of C by 1;
	StomachSemenUp 2;
	if the player is a cumdumpster:
		say "As you finish swallowing it down, you feel yourself recover all of your energy!";
		BodyHeal 2;
		now the fatigue of the player is 0.



Condom Pack ends here.
