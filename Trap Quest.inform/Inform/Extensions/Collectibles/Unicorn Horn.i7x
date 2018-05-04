Unicorn Horn by Collectibles begins here.

unicorn-horn is a collectible. The printed name of unicorn-horn is "[TQlink of item described]unicorn horn[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of unicorn-horn is "A detached unicorn's horn. It seems valuable, but not like money.". Understand "unicorn", "horn" as unicorn-horn. The text-shortcut of unicorn-horn is "uch".

To say ShortDesc of (C - a unicorn-horn):
	say "a unicorn's horn".

To decide which number is the bartering value of (T - a unicorn-horn) for (M - a monster):
	decide on 10.

To compute resolution of (M - a monster) taking (T - a unicorn-horn):
	if M is unfriendly, FavourUp M by the bartering value of T for M;
	otherwise FavourUp M by (the bartering value of T for M) / 2;
	increase the xavier-power of M by 1;
	say OfferThanksFlav of M for T;
	compute offer reward of M for T;
	bore M.

To compute resolution of (M - a monster) taking (T - a unicorn-horn):
	say "The [printed name of T] briefly lights up before exploding into a shower of glittering motes, which briefly cling to [NameDesc of M]'s body before disappearing. [big he of M] looks completely refreshed.";
	now the health of M is the maxhealth of M;
	now the refactory-period of M is 1;[so we trigger any code to run when a monster refreshes fully]
	if M is unfriendly and M is intelligent:
		say "[BigNameDesc of M] seems to lose interest in you for now.";
		bore M;
		FavourUp M by the bartering value of T for M;
	otherwise if M is intelligent:
		say OfferThanksFlav of M for T;
		compute offer reward of M for T;
	otherwise:
		bore M.

Unicorn Horn ends here.
