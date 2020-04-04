Digestive Biscuit by Food begins here.

A digestive biscuit is a kind of candy. The printed name of digestive biscuit is "[TQlink of item described]digestive biscuit[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of digestive biscuit is "[TQlink of item described]digestive biscuits[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of digestive biscuit is "dbc". There are 3 digestive biscuits.

To say ExamineDesc of (C - a digestive biscuit):
	say "A small boring digestive biscuit. You don't understand why these are so popular!".

Figure of digestive biscuit is the file "Items/Collectibles/biscuit1.jpg".

To decide which figure-name is the examine-image of (F - digestive biscuit):
	decide on figure of digestive biscuit.

Definition: a digestive biscuit (called C) is low tier:
	decide yes.

To say ShortDesc of (C - a digestive biscuit):
	say "digestive biscuit".

To say DevourFlav of (C - a digestive biscuit):
	say "You [if the player is hungry or the fat-weight of the player > 25]devour the entire [C] whole[otherwise]bite off half of the [C] before swallowing it, and then you munch on the other half until it has all gone[end if]. ".

To decide which number is the crafting key of (C - a digestive biscuit):
	decide on 43.

Carry out TQeating digestive biscuit:
	say "[DevourFlav of the noun]";
	if a random number between 1 and 4 > 1:
		say "You don't feel any different.";
	otherwise:
		say "[variable custom style]Oh no...[roman type][line break]You feel all your energy drain from your muscles, and your body suddenly feels very heavy. You need a rest!";
		now the fatigue of the player is the buckle threshold of the player.

To compute (M - a robochef) cooking (I - a digestive biscuit):
	let D be a random off-stage cookie;
	if D is food:
		now the quality of D is a random number between 1 and -2;
		now the fat of D is 2;
		now D is retained by M.

To decide which number is the bartering value of (T - a digestive biscuit) for (M - prison guard):
	if the times-met of ex-princess > 0, decide on 10;
	decide on 0.

To say OfferThanksFlav of (M - prison guard) for (T - a digestive biscuit):
	say "[speech style of M]'How did you know? These are my favourite! I wish I could give you something in return[if skeleton key is off-stage]. Hmm...'[otherwise].'[end if][roman type][line break]".

To compute offer reward of (M - prison guard) for (T - a digestive biscuit):
	if skeleton key is off-stage:
		now skeleton key is in the location of the player;
		say "[BigNameDesc of M] seems to purposefully let [his of M] [skeleton key] drop to the floor.[line break][speech style of M]'Whoops, clumsy me.'[roman type][line break]";
		compute autotaking skeleton key;
	FavourUp M by 2.

Digestive Biscuit ends here.
