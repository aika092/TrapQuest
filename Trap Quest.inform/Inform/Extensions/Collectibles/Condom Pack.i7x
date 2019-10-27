Condom Pack by Collectibles begins here.


condom-pack is a thing. condom-pack is in Dungeon07. The printed name of condom-pack is "[TQlink of item described]condom pack[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of condom-pack is "cdp". Understand ["condom", ]"pack", "condom pack", "condom box", "box", "super", "safe" as condom-pack. condom-pack can be condom-trapped.

A diaper quest fix rule:
	remove condom-pack from play.

Figure of condom pack is the file "Items/Collectibles/condompack1.png".

To decide which figure-name is the examine-image of (C - condom-pack):
	decide on figure of condom pack.

To say ExamineDesc of (C - condom-pack):
	say "A small box of condoms labelled 'SuperSafe Condoms, for a slut on the go. This magic condom-pack of Holding contains over a thousand condoms, more than enough for even the biggest of sluts. 100% safe and user foolproof. Warning: magical safety enchantment causes used condoms to be ungraspable by women and traps. Attempt to use sharp objects or teeth.'".

Definition: a thing is condom-providing: decide no.

Definition: condom-pack is condom-providing if it is not condom-trapped.

Definition: condom-pack is immune to change: decide yes.

Definition: condom-pack is product: decide yes.
Definition: condom-pack is semen themed: decide yes.
Definition: condom-pack is whore themed: decide yes.

Definition: condom-pack is fetish appropriate if diaper quest is 0.

To decide which number is the alchemy key of (C - condom-pack):
	decide on 28.

Definition: condom-pack is always alchemy appropriate: decide yes. [condom packs can appear randomly from other recipes]


[Definition: condom-pack is recipe specific: decide yes.]

This is the condom pack specific recipe rule:
	now the Product in row 44 of the Table of Alchemy is 28;
	now the Recipe in row 44 of the Table of Alchemy is 1.
The condom pack specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (C - condom-pack):
	if the noun is piece of rubber, now C is not condom-trapped;
	otherwise now C is condom-trapped.

Report taking condom-pack when the player is in Dungeon07:
	if a random number between 1 and 4 is 1, now condom-pack is condom-trapped;
	compute poker table hypno.

Report going when condom-pack is carried:
	if condom-pack is condom-trapped:
		say "[bold type]Suddenly your new condom pack soars out of your [if there is a worn bag of holding]bag[otherwise]hand[end if] and into the air! It must have been trapped with a curse! [roman type]Condoms start flying out of it in all directions and magically filling themselves with [semen].";
		let S be a random string belt;
		if S is worn:
			say "Three used condoms appear on your [ShortDesc of S]!";
		otherwise:
			summon S cursed;
			say "Suddenly, a [printed name of S] appears around your waist, with three used condoms already pinned to it!";
		increase the used condoms of S by 3;
		update appearance level;
		if thirsty work condom hat is off-stage and thirsty work condom hat is actually summonable:
			summon thirsty work condom hat cursed;
			now the raw-magic-modifier of thirsty work condom hat is -1;
			say "With a final burst of cursed energy from the condom pack, a [ShortDesc of thirsty work condom hat] appears on your head!";
		otherwise if there is a worn scrunchie and condom pigtails is off-stage:
			let SC be a random worn scrunchie;
			transform SC into condom pigtails;
		say "The condom pack falls back down to you, the curse having run its course, leaving a normal condom pack for you to safely take with you.";
		say CondomNewbieTip;
		say CondomPinReactionFlav of yourself on a random worn drinkable condom pinned clothing;
		now condom-pack is not condom-trapped.


Definition: a clothing (called C) is condom pinnable:
	if C is totally-exclusive or C is top-exclusive:
		unless C is biological or C is metal or C is bondage, decide yes;
	decide no.

Definition: a shoes is condom pinnable: decide no.

Definition: an overdress is condom pinnable: decide yes.

Definition: a stockings is condom pinnable: decide yes.

Definition: a belt is condom pinnable: decide yes.

Definition: a string belt is condom pinnable: decide yes.

Definition: a clothing is condom pinned if the total condoms of it > 0.

Definition: a clothing is drinkable condom pinned if the used condoms of it > 0.

To decide which number is the total condoms of (C - a clothing):
	decide on the used condoms of C + the empty condoms of C.

To decide which number is the condom outrage of (C - a clothing):
	decide on the used condoms of C. [This is relatively unimportant. The main thing that condoms do is force the outrage to be at least 12]

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

Definition: a monster is condom-preferring if the class of the player is cumdumpster.

To compute condom request choice of (M - a monster):
	if M is unwrapped:
		if M is intelligent:
			if M is condom-preferring and M is convinced to wear a condom:
				say AutomaticCondomFlav of M;
				now M is wrapped;
			otherwise:
				say "Looks like [NameDesc of M] is probably going for your [chosen-orifice of M]. Would you like to request that [he of M] wear a condom? ";
				if the player is consenting:
					say CondomRequestFlav of M;
					if M is convinced to wear a condom:
						say CondomAcceptFlav of M;
						now M is wrapped;
					otherwise:
						say CondomRejectFlav of M;
		otherwise if the player is able to use manual dexterity:
			say "Looks like [NameDesc of M] is probably going for your [chosen-orifice of M]. Do you want to try making [him of M] wear a condom?";
			if the player is consenting:
				if M is forced to wear a condom:
					say CondomForceSuccessFlav of M;
					now M is wrapped;
				otherwise:
					say CondomForceFailFlav of M.

Definition: a monster (called M) is convinced to wear a condom:
	let C be the charisma of the player;
	if the class of the player is fertility goddess, decrease C by 3;
	let R be a random number between 0 and C;
	if R < the condom resistance of M, decide no;
	decide yes.

Definition: a monster (called M) is forced to wear a condom:
	let D be (the dexterity of the player) / 3;
	if the class of the player is fertility goddess, decrease D by 3;
	let R be a random number between -1 and D;
	if R < the condom resistance of M, decide no;
	decide yes.

To decide which number is the condom resistance of (M - a monster):
	decide on 0.[Default 100% success]

To compute condom filling of (M - a monster):
	compute default condom filling of M.

To compute default condom filling of (M - a monster):
	let C be a random worn drinkable condom pinned clothing;
	if C is nothing or a random number between 1 and 4 > 1, now C is a random worn condom pinnable clothing; [75% chance of condoms going on the same item as there are already condoms]
	let S be nothing;
	if C is nothing:
		now S is a random string belt;
		summon S cursed;
		now C is S;
	say "[if S is clothing]Suddenly, a [printed name of S] appears around your waist! [end if][CondomPinFlav of M on C][CondomPinReactionFlav of M on C]";
	say CondomNewbieTip;
	increase the used condoms of C by 1;
	say "[one of]They seem to magically fuse, and you now have a used condom hanging from your [C]! [or]The condom fuses to your [C] just like before. [or]The condom fuses to your [C]. [stopping]";
	force clothing-focus redraw;
	update appearance level;
	progress quest of condom-eating-quest;
	progress quest of condom-creampie-quest;
	if a random number between 1 and 12 < the semen addiction of the player:
		say "You feel [one of]a little[or]a bit[or]slightly[at random] [if the semen addiction of the player >= 14]less addicted to[otherwise if the semen addiction of the player > 7]less interested in[otherwise]more resilient against the idea of[end if] creampies[if bukkake fetish is 1] and facials[end if].";
		SemenAddictDown 1;
	if C is cheerleader outfit and there is a worn pigtail-scrunchie and artificial enhancements fetish is 1:
		let P be a random pink rubber dress;
		transform C into P;
	otherwise if C is string belt or total used condoms > 2:
		if thirsty work condom hat is off-stage and thirsty work condom hat is actually summonable:
			summon thirsty work condom hat cursed;
			say "As if to celebrate your [']achievement['], a [ShortDesc of thirsty work condom hat] appears on your head!";
	otherwise if C is overdress and there is a worn scrunchie and condom pigtails is off-stage:
		let SC be a random worn scrunchie;
		transform SC into condom pigtails;
	otherwise if thirsty work condom hat is worn and total used condoms > 4:
		transform thirsty work condom hat into cumdumpster condom hat.

To say CondomNewbieTip:
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: You've got a condom on your clothes! That's right, NPCs will invariably pin the condoms they use to your clothing and this increases how humiliating the clothing is, and therefore your appearance rating. You can't remove the condoms from the clothing yourself - blame the makers of the game and their ability to manipulate the rules of this universe. You can however bite and drink them - this obviously makes you drink a humiliating dose of [semen], but it also negates the increased outrage of the item. Of course, the best solution is probably to eventually remove the piece of clothing when it gets too ridiculous.[roman type][line break][or][stopping]".

To say CondomRequestFlav of (M - a monster):
	if the player is able to speak and M is intelligent:
		if the chosen-orifice of M is vagina and the pregnancy of the player is 0 and pregnancy fetish is 1:
			say "[variable custom style]'[if the vaginal sex addiction of the player < 4 and the children of the player is 0][one of]Please please please wear a condom, I can't risk getting pregnant in this crazy world!'[or]Will you at least make sure I don't get pregnant?!'[or]Please wear this if you have to do that.'[in random order][otherwise if the vaginal sex addiction of the player < 7 and the children of the player is 0][one of]Please do me the one courtesy of wrapping your tool. I think I might be fertile.'[or]Please wear this. Unless you'd rather have a kid.'[or]If you don't wear this, there's a chance I'll get pregnant.'[in random order][otherwise if the children of the player is 0][one of]Hey big boy, you should wear one of these unless you like playing the pregnancy lottery.'[or]I'm still not sure if I can get pregnant here, but I guess it's better safe than sorry?'[or]Bareback might be more fun, but this is probably more responsible.'[or]I guess it's up to you big guy, but I might become your baby momma if you don't wear one of these.'[in random order][otherwise if the vaginal sex addiction of the player < 5][one of]Please wear this, I don't want to have to have any more children...'[or]Please, I'm begging you, I can't get pregnant again, I just can't!'[in random order][otherwise][one of]Hey big guy, would you mind wearing one of these? Bareback is fun, but childbirth is painful...'[or]I'd wear one of these if I were you, I've already been knocked up down here and I'd rather not have it happen again.'[or]There's a good chance I'll get pregnant if you don't wear one of these. It's happened before.'[in random order][end if][roman type][line break]";
		otherwise if the humiliation of the player > 29000 and total used condoms > 0:
			say "[second custom style]'[if total used condoms > 10][one of]Hey honey, why don't you add another [']trophy['] to my collection? If you can find any spare space, tee-hee!'[or]Want to add to this ridiculous display? Be my guest, just wear one of these.'[or]You want to add your cum to the collection, don't you? I can tell. Here, take one of these.'[or]If you want to make me look like even more of a fucked-up cum addict, I don't mind.'[or]So... have you considered adding to my impressive collection?'[in random order][otherwise][one of]Hey honey, why don't you add another [']trophy['] to my collection?'[or]I'm starting to build a collection of mementos, want to contribute?'[or]Want to help me show the world how big a whore I am?'[or]Hey baby, want to help me save your cum for later? Wear this.'[or]If you cum in this and pin it to me, I promise I'll wear it with pride.'[in random order][end if][roman type][line break]";
		otherwise:
			say "[variable custom style]'[if total used condoms is 0][one of]I've got some condoms, if you want one.'[or]You should wear this, I don't know where that [manly-penis] has been.'[or]I'll feel like less of a disgrace if you wear this.'[in random order][otherwise][one of]I want you to wear this, but I'd rather you didn't pin it on me afterwards, if you'd be so kind.'[or]If I give you a condom, will you promise not to pin it on me afterwards?'[or]I'd rather you wore this, but not if you're going to add it to the [']collection['].'[or]If I give you a condom, are you going to pin it to me afterwards?'[in random order][end if][roman type][line break]";
	otherwise:
		say "[if M is intelligent][line break][variable custom style][gag sounds][roman type][line break][end if]You try to convince [NameDesc of M] to wear a condom with [if the bimbo of the player < 8]desperate[otherwise if the bimbo of the player < 14]playful[otherwise]provocative[end if] hand gestures.".

[!<SayCondomAcceptFlav>+

The text output of this function is displayed whenever the player offers a monster a condom, and they accept it.

+!]
To say CondomAcceptFlav of (M - a monster):
	if the condom resistance of M > 0, say "[BigNameDesc of M] frowns, but then takes the condom and sheathes [his of M] [manly-penis].";
	otherwise say "[BigNameDesc of M] [one of]smiles[or]grins wordlessly[or]smirks[at random] and takes a condom. Discarding the wrapper, [he of M] rolls it down the length of [his of M] [manly-penis]. You stare, [one of][if the semen taste addiction of the player > 13]hypnotised, eagerly licking your lips[otherwise if the semen taste addiction of the player > 6]hypnotised, unconsciously licking your lips[otherwise]disgustedly curling your upper lip[end if][or]unable to [if the player is a pervert and the player is not a nympho]bring yourself to [end if]look away[or]your mouth opening unconsciously[or][if the player is not a pervert]without a shred of enthusiasm[otherwise]with envy[end if], as the rubber makes intimate contact with every inch of the massive tool[or]as the gleaming latex makes every bump and vein glisten [if the player is not a pervert]unappealingly[otherwise]temptingly[end if][at random].".

[!<SayCondomManualFlav>+

The text output of this function should be displayed whenever the player puts a condom onto a monster's penis, such as during dominant sex.

+!]
To say CondomManualFlav of (M - a monster):
	say "You take out a condom and [if the bimbo of the player > 10 and face is not actually occupied]use your mouth to slowly roll it down [his of M] length[otherwise]quickly roll it down [his of M] length[end if], making [one of]sure the rubber is in intimate contact with every inch of the[or]every bump and vein glisten as you stretch and smooth the rubber over [his of M][at random] tool.".

To say CondomRejectFlav of (M - a monster):
	say "[BigNameDesc of M] [one of]scoffs[or]frowns[or]rolls [his of M] eyes[at random], and ignores your suggestion. Looks like [he of M][']s going in bare...".

To say CondomForceSuccessFlav of (M - a monster):
	if chosen-orifice of M is face:
		say CondomManualFlav of M;
	otherwise:
		say "[one of]You reach between your legs, holding [NameDesc of M]'s [DickDesc of M] steady as you take out a condom and quickly roll it down [his of M] length.[or]You take out a condom and reach between your legs, awkwardly applying it to [NameDesc of M]'s twitching [DickDesc of M].[at random]".

To say CondomForceFailFlav of (M - a monster):
	if chosen-orifice of M is face:
		say "You hold [NameDesc of M]'s [DickDesc of M] steady as you take out a condom and try to unroll it down [his of M] length. [big he of M] moves suddenly, and you accidentally drop it! Looks like [he of M][']s going in bare...";
	otherwise:
		say "[one of]You reach between your legs, grasping for [NameDesc of M]'s [DickDesc of M] as you quickly take out a condom. It's too difficult without being able to see what you're doing, and you accidentally drop it[or]You take out a condom and reach between your legs, awkwardly applying it to [NameDesc of M]'s [DickDesc of M]. [big he of M] moves before you can unroll it completely, and you accidentally drop the condom[or]You take out a condom and reach between your legs. It's really difficult to get a good grip on [his of M] [DickDesc of M], and you accidentally drop the condom[at random]! Looks like [he of M][']s going in bare...";

To say AutomaticCondomFlav of (M - a monster):
	say "After taking one look at your [if there is a worn cumdumpster hat]cumdumpster hat[otherwise][ShortDesc of random held condom-providing thing][end if], [NameDesc of M] takes a condom and deftly protects [his of M] [manly-penis].";

To say CondomPinFlav of (M - a monster) on (C - a clothing):
	if M is awake and M is intelligent and M is interested, say "Before you can stop [him of M], [NameDesc of M] presses the [one of]newly created and now used [or]strongly-smelling [or]wobbling, semen-swollen [or][or][cycling]condom to your [ShortDesc of C]. ";
	otherwise say "Completely of its own accord, the used condom suddenly zips from [NameDesc of M] and flies through the air until it hits your [ShortDesc of C]. ".

To say CondomPinReactionFlav of (M - a person) on (C - a clothing):
	say "[variable custom style][one of][if the player is shameless and M is monster]What a great idea! Now everyone knows exactly what a whore I've been.[otherwise if the player is shameless]What a great idea! Now everyone will think that I'm a disgusting [semen]-addicted whore.[otherwise]What on earth?! Am I supposed to walk around with this thing just dangling there[end if][if the player is not shameless and M is monster]?! Everyone will know what I've been doing... how shameful...[otherwise if the player is not shameless]?! Everyone will think I put it there on purpose, as some kind of trophy...[end if][or][if the semen taste addiction of the player > 16 and (the player is not shameless or a random number between 1 and 2 is 1)]Sweet, I've got myself another tasty snack for later![otherwise if the player is shameless]Great! It looks much more sexy now![otherwise if the total condoms of C is 0]Oh great, now this has condoms on it too![otherwise][end if][stopping][roman type][line break]".

condom is a backdrop. condom is everywhere. Understand "condoms", "used condoms", "full condoms", "used condom", "full condom", "empty condom", "empty condoms" as condom. The text-shortcut of condom is "condom". Figure of used condom is the file "Env/MultiFloor/condom1.png".

To decide which figure-name is the examine-image of (C - condom):
	decide on figure of used condom.

To say FullExamineDesc of (B - condom):
	if total pinned condoms is 0:
		say "You can't see any such thing.";
	otherwise:
		repeat with C running through held clothing:
			if the total condoms of C > 0:
				say "Your [MediumDesc of C] has ";
				if the used condoms of C > 0, say "[used condoms of C] used [if the used condoms of C > 1]condoms[otherwise]condom[end if] full of [semen] ";
				if the empty condoms of C > 0, say "[if the used condoms of C > 0]and [end if][empty condoms of C] empty [if the empty condoms of C > 1]condoms[otherwise]condom[end if] that you have already gulped down the [semen] from ";
				say "[one of]pinned to[or]lewdly dangling from[purely at random] it.".

check examining condom:
	if total pinned condoms is 0 and (condom-pack is held or condom-pack is in the location of the player), try examining condom-pack instead.

check drinking a cumdumpster hat:
	try drinking condom instead.

check drinking condom:
	if total drinkable condoms > 0, compute condom biting instead.

check eating a cumdumpster hat:
	try eating condom instead.

check eating condom:
	if total drinkable condoms > 0, compute condom biting instead.

check TQeating condom:
	if total drinkable condoms > 0, compute condom biting instead.

To compute condom biting:
	let B be a random thing penetrating face;
	if B is a thing:
		say "[variable custom style]That would probably actually be possible if [NameDesc of B] wasn't in my mouth...[roman type][line break]";
	otherwise if the player is not able to eat:
		say "You are currently unable to eat things.";
	otherwise:
		repeat with C running through held drinkable condom pinned clothing:
			say "Drink the [semen] from [if the used condoms of C is 1]the condom[otherwise]one of the condoms[end if] on your [ShortDesc of C]? ";
			if the player is consenting:
				compute condom biting of C;
				rule succeeds.

SpecificCondomBiting is an action applying to one thing.
Check SpecificCondomBiting:
	if the noun is not clothing, say "This verb is for eating used condoms pinned to clothing." instead;
	if the total condoms of the noun <= 0, say "That has no condoms pinned on it." instead;
	if the used condoms of the noun <= 0, say "That has no used condoms left - you've already sucked the cum out of all the ones it had. You greedy slut." instead;
	let B be a random thing penetrating face;
	if B is a thing, say "[variable custom style]That would probably actually be possible if [NameDesc of B] wasn't in my mouth...[roman type][line break]" instead;
	if the player is not able to eat, say "You are currently unable to eat things." instead.
Carry out SpecificCondomBiting:
	compute condom biting of the noun.
Understand "eat condom from [something]", "drink condom from [something]", "bite condom from [something]", "eat condom off [something]", "drink condom off [something]", "bite condom off [something]", "eat condom on [something]", "drink condom on [something]", "bite condom on [something]" as SpecificCondomBiting.

To compute condom biting of (C - a clothing):
	allocate 5 seconds;
	say "Stretching the cumfilled end of [if the used condoms of C is 1]the condom[otherwise]one of the condoms[end if] to your mouth, you gnaw on the middle with your teeth until it suddenly bursts, coating the inside of your mouth with salty goo[one of] like a water balloon exploding[or][stopping]. [if the semen addiction of the player < 8]The shock of the sudden blast makes you swallow the load on reflex[otherwise if the semen addiction of the player < 15]You gulp down the [semen] without thinking[otherwise]You savour the taste in your mouth for a few moments before beginning to swallow it down bit by bit, enjoying the feeling of the slimy stuff as it travels down your throat[end if].";
	decrease the used condoms of C by 1;
	increase the empty condoms of C by 1;
	StomachSemenUp 2;
	get oral creampie image for the player;
	increase the condom-count of condom-eating-quest by 1; [Counts as double as good as collecting more.]
	progress quest of condom-eating-quest;
	update appearance level;
	if C is worn, force clothing-focus redraw; [Forces redraw of clothing window]
	otherwise force inventory-focus redraw. [Forces redraw of inventory window]

To compute spontaneous condom of (C - a clothing):
	let P be a random worn condom pinnable clothing;
	let S be nothing;
	if P is nothing:
		now S is a random string belt;
		summon S cursed;
		now P is S;
	say "[if S is clothing]Suddenly, a [printed name of S] appears around your waist! [end if]You watch in [horror the semen taste addiction of the player] as the condom flies onto your [MediumDesc of P] and fuses itself to the [clothing-material of P]. [if the used condoms of P is 0]Your [ShortDesc of P] now has a used condom pinned to it![end if][line break][CondomPinReactionFlav of yourself on P]";
	increase the used condoms of P by 1;
	update appearance level;
	progress quest of condom-eating-quest;
	say CondomNewbieTip;
	force clothing-focus redraw. [Forces redraw of clothing window]

Condom Pack ends here.

