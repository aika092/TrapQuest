Infernal Gem by Collectibles begins here.


An infernal gem is a kind of collectible. There are 4 infernal gems. The printed name of infernal gem is "[TQlink of item described]infernal gem[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of infernal gem is "[TQlink of item described]infernal gems[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of infernal gem is "A powerful red gem obtained from the necklace of a demoness. It's not valuable or wearable but it clearly contains great power.". The text-shortcut of infernal gem is "ig".

To say ShortDesc of (C - an infernal gem):
	say "magic red gem".

Definition: an infernal gem (called D) is demonic:
	decide yes.

To decide which number is the crafting key of (C - an infernal gem):
	decide on 45.

To decide which number is the bartering value of (T - an infernal gem) for (M - a demoness):
	decide on 4.

To decide which number is the bartering value of (T - an infernal gem) for (M - a mechanic):
	decide on 5.

To say MonsterOfferAcceptFlav of (M - a mechanic) to (T - an infernal gem):
	say "[speech style of M]'[one of]Holy shit! I[']ll take the fucking shit out of that, mate!'[or]Haha, yes! You always come through for me!'[stopping][roman type]".

To say MonsterTakeFlav of (M - a mechanic) for (T - an infernal gem):
	say "[BigNameDesc of M] takes the [T], crushing it into a sparkling powder and snorting it up his nose".[Just like coke!]

To say OfferThanksFlav of (M - a mechanic) for (T - an infernal gem):
	if the xavier-power of M < 4:
		say "[speech style of M]'[one of]Phew! I feel great![or]WOOO! Fuck yeah![at random] I won[']t forget this!'[roman type][line break]";
	otherwise if the xavier-power of M < 5:
		say "[speech style of M]'Yeah! I feel POWERFUL now! Hahaha! In fact, I[']m actually feeling generous!'[roman type]";
	otherwise:
		say "[BigNameDesc of M] crushes the [T] into a sparkling powder and knocks it back. [line break][speech style of M]Yeah...YEAH! I can feel it now! The POWER running through my veins! Yes! Behold my true form, unleashed again upon this MORTAL PLANE!'[roman type][line break]".

To compute resolution of (M - a mechanic) taking (T - an infernal gem):
	if M is unfriendly, FavourUp M by the bartering value of T for M;
	otherwise FavourUp M by (the bartering value of T for M) / 2;
	increase the xavier-power of M by 1;
	say OfferThanksFlav of M for T;
	compute offer reward of M for T;
	bore M.

To compute offer reward of (M - a mechanic) for (T - an infernal gem):
	if the xavier-power of M > 4:
		unseal xavier from M;
	otherwise if the xavier-power of M is 4:
		compute xavier reward of M;
	otherwise:
		say "[BigNameDesc of M] looks...more powerful somehow? He seems to have lost interest in you.";
		DifficultyUp M by a random number between 1 and 2;

To decide which number is the bartering value of (T - an infernal gem) for (M - a shopkeeper):
	decide on 2.


Infernal Gem ends here.

