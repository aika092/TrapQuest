Wrench by Equippables begins here.

wrench is an equippable. wrench is unique. wrench is slap ready. wrench is metal. Figure of wrench is the file "Items/Accessories/Equippables/wrench1.png".

The printed name of wrench is "[clothing-title-before]wrench[clothing-title-after]". The text-shortcut of wrench is "wrn".

To decide which figure-name is clothing-image of (C - wrench):
	decide on figure of wrench.

To say ClothingDesc of (S - wrench):
	say "An oversized steel wrench that you took from the mechanic.".

Definition: wrench is cursable: decide no.

To say ShortDesc of (S - wrench):
	say "wrench".

To decide which number is the magic-modifier of (C - wrench):
	if the class of the player is priestess:
		decide on 1;
	if the class of the player is princess:
		decide on -5;
	decide on the number of worn demonic clothing.

To decide which number is the slap damage improvement of (W - wrench):
	let X be 4;
	increase X by the magic-modifier of W;
	decide on X.

To decide which number is the bartering value of (T - wrench) for (M - a demoness):
	decide on 3.

To decide which number is the bartering value of (T - wrench) for (M - mechanic):
	decide on 10.

To say MonsterOfferAcceptFlav of (M - mechanic) to (T - wrench):
	say "[speech style of M]'[one of]So you brought it back.'[or]It's convenient to have this back I guess.'[stopping][roman type][line break]".

To compute final resolution of (M - mechanic) taking (T - wrench):
	only destroy T;
	if the wrench-timer of M > 0, now the wrench-timer of M is -1.

To say MonsterOfferAcceptFlav of (M - a demoness) to (T - wrench):
	say "[speech style of M]'[one of]I'll return to [him of demon lord], but how did YOU get it?'[or]How did you... Never mind. I'll return it to [him of demon lord].'[stopping][roman type][line break]".

To say MonsterOfferAcceptFlav of (M - a demoness) for (T - wrench):
	say "[if the class of the player is succubus]Our[otherwise]My[end if] master grows stronger.".

To compute final resolution of (M - a demoness) taking (T - infernal gem):
	if the wrench-timer of mechanic > 0, now the wrench-timer of mechanic is -1;
	if M is taxable, add T to the taxableItems of M;
	only destroy T.

Wrench ends here.
