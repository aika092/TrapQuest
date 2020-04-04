Soul Gem by Collectibles begins here.

A soul gem is a kind of collectible. There is 1 soul gem. The printed name of soul gem is "[TQlink of item described]soul gem[shortcut-desc][TQxlink of item described][verb-desc of item described]". Figure of soul gem is the file "Items/Collectibles/gem1.png".

Definition: a soul gem is demonic: decide yes.

To decide which figure-name is the examine-image of (C - a soul gem):
	decide on figure of soul gem.

To say ExamineDesc of (B - a soul gem):
	say "A glittering blue gem containing a soul. Perhaps you could take it to someone well versed in magic?".
The text-shortcut of soul gem is "sg".

To say ShortDesc of (C - a soul gem):
	say "blue gem".
To say MediumDesc of (C - a soul gem):
	say "glittering blue gem".

To decide which number is the bartering value of (T - a soul gem) for (M - a demoness):
	decide on 7.

To decide which number is the bartering value of (T - a soul gem) for (M - mechanic):
	decide on 10.

To say MonsterOfferAcceptFlav of (M - a mechanic) to (T - a soul gem):
	say "[speech style of M]'[one of]Holy shit! Is that pure?'[or]Where the FUCK did you find another one of those?'[stopping][roman type]".

To say MonsterTakeFlav of (M - a mechanic) for (T - a soul gem):
	say "[BigNameDesc of M] takes the [T], crushing it into a sparkling powder and snorts it up [his of M] nose".

To say OfferThanksFlav of (M - a mechanic) for (T - a soul gem):
	if the xavier-power of M < 3:
		say "[speech style of M]'[one of]Phew! I feel great![or]WOOO! Fuck yeah![at random] I won[']t forget this!'[roman type][line break]";
	otherwise if the xavier-power of M < 4:
		say "[speech style of M]'Yeah! I feel POWERFUL now! Hahaha! In fact, I[']m actually feeling generous!'[roman type]";
	otherwise:
		say "[BigNameDesc of M] crushes the [T] into a sparkling powder and knocks it back. [line break][speech style of M]Yeah... YEAH! I can feel it now! The POWER running through my veins! Yes! Behold my true form, unleashed again upon this MORTAL PLANE!'[roman type][line break]".

To compute resolution of (M - a mechanic) taking (T - a soul gem):
	FavourUp M by (the bartering value of T for M) / 2;
	say OfferThanksFlav of M for T;
	XavierUp M by 3;
	compute offer reward of M for T;
	bore M.

To compute offer reward of (M - witch) for (T - a soul gem):
	say "You feel your soul re-enter your body!";
	now the player is souled;
	if the player-class is succubus:
		now the humiliation of the player is the souled-humiliation of the player.

To say MonsterOfferAcceptFlav of (M - witch) to (T - a soul gem):
	say "[speech style of M]'So you want me to put this back in, huh? Fine. It's not like I have anything better to do.'[roman type]".

To say MonsterTakeFlav of (M - witch) for (T - a soul gem):
	say "[BigNameDesc of M] takes the [printed name of T], performing a short chant as [he of M] holds it against your chest. The gem dissolves into tiny motes of light, which disappear into your skin.".

To say OfferThanksFlav of (M - witch) for (T - a soul gem):
	say "[speech style of M]'There. Now try not to lose it again.'[roman type]".

To decide which number is the bartering value of (T - a soul gem) for (M - witch):
	if M is unfriendly, decide on -10;
	decide on 3.

To compute resolution of (M - witch) taking (T - a soul gem):
	if M is unfriendly, FavourUp M by the bartering value of T for M;
	otherwise FavourUp M by (the bartering value of T for M) / 2;
	say OfferThanksFlav of M for T;
	XavierUp M by 3;
	compute offer reward of M for T;
	bore M.

To say MonsterOfferRejectFlav of (M - witch) to (T - a soul gem):
	if M is unfriendly, say "[BigNameDesc of M] scoffs.[line break][speech style of M]'Did you really believe I would help you?[roman type][line break]";
	otherwise say "[BigNameDesc of M] completely ignores the [T].".

Soul Gem ends here.
