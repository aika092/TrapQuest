Unicorn Horn by Sex Toys begins here.

A unicorn-horn is a kind of dong. The printed name of unicorn-horn is "[TQlink of item described]unicorn horn[shortcut-desc][TQxlink of item described][verb-desc of item described]". A unicorn-horn is unique. A unicorn-horn is biological. There is 1 unicorn-horn. The size of a unicorn-horn is usually 4.

Figure of unicorn horn is the file "Items/Accessories/Toys/horn1.png".

To decide which figure-name is the clothing-image of (C - unicorn-horn):
	decide on figure of unicorn horn.

To say ExamineDesc of (B - a unicorn-horn):
	say "A detached unicorn's horn. It seems valuable, but not like money[if the bimbo of the player > 6]. You could probably use it like a dildo[end if].".

Understand "unicorn", "horn" as unicorn-horn. The text-shortcut of a unicorn-horn is "uch".

To say ShortDesc of (C - a unicorn-horn):
	say "unicorn's horn".

Definition: a unicorn-horn is magic themed: decide yes.
Definition: a unicorn-horn is horse themed: decide yes.

To decide which number is the bartering value of (T - a unicorn-horn) for (M - a monster):
	if M is student or M is staff member, decide on 0;
	decide on 10.

To compute resolution of (M - mechanic) taking (T - a unicorn-horn):
	if M is unfriendly:
		say MonsterTakeFlav of M to T;
		satisfy M;
		let BV be the bartering value of T for M;
		FavourUp M by ((1 + BV) / 2);
		progress quest of christmas-quest;
	otherwise:
		say MonsterTakeFlav of M to T;
		compute offer reward of M for T;
		say OfferFriendshipFlav of M;
	XavierUp M by 1;
	bore M.

To compute climax effect of (C - a unicorn-horn):
	say "The [printed name of C] briefly lights up before exploding into a shower of glittering motes.";
	only destroy C;
	let X be 5;
	repeat with L running through worn clothing:
		decrease X by 1;
		say "The motes cling to your [printed name of L].";
		increase the raw-magic-modifier of L by 1;
		if X <= 0, break.

To compute resolution of (M - a monster) taking (T - a unicorn-horn):
	say "The [printed name of T] briefly lights up before exploding into a shower of glittering motes, which briefly cling to [NameDesc of M][']s body before disappearing. [big he of M] looks completely refreshed.";
	now the health of M is the maxhealth of M;
	now the refractory-period of M is 1;[so we trigger any code to run when a monster refreshes fully]
	if M is unfriendly and M is intelligent:
		say "[BigNameDesc of M] seems to lose interest in you for now.";
		bore M;
		FavourUp M by the bartering value of T for M;
	otherwise if M is intelligent:
		say OfferThanksFlav of M for T;
		compute offer reward of M for T;
	otherwise:
		bore M.

To uniquely set up (C - a unicorn-horn):
	now the size of C is 6;
	now C is suppression;
	now C is blessed.

Definition: a unicorn-horn is cursable: decide no.

To decide which number is the sex-addiction-influence of (C - a unicorn-horn):
	let X be the magic-modifier of C;
	increase X by 1;
	decide on X;

Unicorn Horn ends here.
