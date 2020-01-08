Totem of Purity by Equippables begins here.

A pure totem is a kind of equippable. A pure totem is usually rare. The printed name of pure totem is "[TQlink of item described]totem of purity[shortcut-desc][TQxlink of item described][verb-desc of item described]". A pure totem is usually biological. There is 1 pure totem. Understand "purity", "of purity", "ivory" as pure totem. The text-shortcut of pure totem is "tpu".

Figure of totem is the file "Items/Accessories/Equippables/totem1.png".

To decide which figure-name is the clothing-image of (C - a pure totem):
	decide on figure of totem.

To say ClothingDesc of (C - a pure totem):
	say "A figurine of tiny woman holding a sword, her flowing robes painstakingly carved into the ivory surrounding her. Whenever you look at it, you feel a sense of calm level-headedness.".

To say ShortDesc of (C - a pure totem):
	say "totem of purity".

To decide which number is the price of (C - a pure totem):
	decide on 7.

To decide which number is the perceived-bimbo-influence of (C - a pure totem):
	decide on -1.

To decide which number is the humiliation-influence of (O - a pure totem):
	decide on 1.

Definition: a pure totem is blessable: decide no.
Definition: a pure totem is cursable: decide no.

To say MonsterOfferAcceptFlav of (M - a gladiator) to (T - a pure totem):
	say "[speech style of M]Ha! What could you possibly have that would spare you from my-...[roman type]".

To say MonsterTakeFlav of (M - a gladiator) to (T - a pure totem):
	say "[BigNameDesc of M]'s eyes grow wide, and [he of M] takes the [printed name of T] from you with a shaky hand.".

To compute resolution of (M - a gladiator) taking (T - a pure totem):
	say OfferThanksFlav of M for T;
	compute offer reward of M for T.

To say OfferThanksFlav of (M - a gladiator) for (T - a pure totem):
	say "It immediately begins to glow, [if M is male]causing [his of M] cock to immediately harden and then slowly shrink into nothingness, leaving [his of M] vulva as unblemished as it was before[otherwise]and as if erasing them directly from [his of M] skin, causes [his of M] bulging muscles and strange tattoos to completely disappear, leaving [him of M] in the far more natural shape [he of M] had before[end if].[line break][speech style of M]I... I must thank you. I can still feel the curse inside of me, but I must respect any warrior who rights [his of M] own wrongs. At the very least, you deserve a second chance.[roman type]".

To compute offer reward of (M - a gladiator) for (T - a pure totem):
	FavourUp M by the bartering value of T for M;[must happen first]
	uncurse M.

To decide which number is the bartering value of (T - a pure totem) for (M - a gladiator):
	if M is insane gladiator or M is wild gladiator, decide on -1;
	if M is raunchy, decide on 10;[if she's cursed, she'll forgive you for everything. otherwise, it's worthless.]
	decide on -1.

Totem of Purity ends here.
