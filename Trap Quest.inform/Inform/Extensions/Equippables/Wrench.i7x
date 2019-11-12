Wrench by Equippables begins here.

A wrench is a kind of equippable. A wrench is unique. There are 2 wrenches. A wrench is usually slap ready. A wrench is usually metal.[ Figure of sword is the file "Items/Accessories/Equippables/sword1.png".]

The printed name of wrench is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]wrench[clothing-title-after]". The text-shortcut of wrench is "wrn".

[To decide which figure-name is clothing-image of (C - wrench):
	decide on figure of sword.]

To say ClothingDesc of (S - a wrench):
	say "An oversized steel wrench that you took from the mechanic.".

Definition: a wrench is cursable: decide no.

To say ShortDesc of (S - wrench):
	say "wrench".

To decide which number is the magic-modifier of (C - a wrench):
	if the class of the player is priestess:
		decide on 1;
	if the class of the player is succubus or the class of the player is princess:
		decide on -5;
	decide on the number of worn demonic clothing.

To decide which number is the damage improvement of (W - a wrench):
	let X be 4;
	increase X by the magic-modifier of W;
	decide on X.

To decide which number is the bartering value of (T - a wrench) for (M - a demoness):
	decide on 3.

To decide which number is the bartering value of (T - a wrench) for (M - mechanic):
	decide on 10.

To say MonsterOfferAcceptFlav of (M - mechanic) to (T - a wrench):
	say "[speech style of M]'[one of]So you brought it back.'[or]It's convenient to have this back I guess.'[stopping][roman type]".

To compute resolution of (M - mechanic) taking (T - a wrench):
	if the wrench-timer of M > 0:
		now the wrench-timer of M is -1;
	say OfferThanksFlav of M for T.

To say MonsterOfferAcceptFlav of (M - a demoness) to (T - a wrench):
	say "[speech style of M]'[one of]I'll return to [him of mechanic], but how did YOU get it?'[or]How did you... Never mind. I'll return it to [him of mechanic].'[stopping][roman type]".

To say OfferThanksFlav of (M - a demoness) for (T - a wrench):
	say "[if the class of the player is succubus]Our[otherwise]My[end if] master grows stronger.".

To compute resolution of (M - a demoness) taking (T - an infernal gem):
	if M is unfriendly, FavourUp M by the bartering value of T for M;
	otherwise FavourUp M by (the bartering value of T for M) / 2;
	if the wrench-timer of mechanic > 0:
		now the wrench-timer of mechanic is -1;
	say OfferThanksFlav of M for T;
	compute offer reward of M for T;
	bore M.

To say OfferThanksFlav of (M - mechanic) for (T - an infernal gem):
	if M is unfriendly, say "[line break][speech style of M]'This doesn't change anything though.'[roman type][line break]";

Wrench ends here.
