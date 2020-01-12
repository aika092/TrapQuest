Wipes by Consumables begins here.


A pocketwipes is a kind of collectible. There are 7 pocketwipes. The printed name of pocketwipes is "[TQlink of item described]pack of pocketwipes[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of pocketwipes is "[TQlink of item described]packs of pocketwipes[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pocketwipes is "pkw". Understand "pack", "pack of", "wipes" as pocketwipes.
Figure of pocketwipes is the file "Items/Collectibles/pocketwipes1.png".

To decide which figure-name is the examine-image of (C - a pocketwipes):
	decide on figure of pocketwipes.

To say ExamineDesc of (B - a pocketwipes):
	say "A small blue packet containing a few wet wipes. It looks like there's enough for one change.".

To decide which number is the outrage of (C - a pocketwipes):
	decide on 1.
To decide which number is the cringe of (C - a pocketwipes):
	decide on 3.

Definition: a pocketwipes is fetish appropriate if diaper messing > 3.

To decide which number is the crafting key of (C - a pocketwipes):
	decide on 56.
To decide which number is the bartering value of (T - a pocketwipes) for (M - a gladiator):
	decide on 1.
To decide which number is the bartering value of (T - a pocketwipes) for (M - a matron):
	decide on 6.
To decide which number is the bartering value of (T - a pocketwipes) for (M - a wrestler):
	decide on 3.
To decide which number is the bartering value of (T - a pocketwipes) for (M - shopkeeper):
	decide on 1.

To say MediumDesc of (C - a pocketwipes):
	say "pack of pocketwipes".

To restock (C - a pocketwipes):
	let B be a random off-stage pocketwipes;
	if B is pocketwipes, now B is in Standard Item Pen.

A game universe initialisation rule:
	if diaper messing > 3:
		let K be 1;
		repeat with W running through pocketwipes:
			if K is 1, now W is in Standard Item Pen;
			now the text-shortcut of W is the substituted form of "pkw[K]";
			increase K by 1.

wipeChecking is initially false. [We need a way to flag to the remove checking function that we are checking whether we'd be allowed to remove the underwear if it wasn't messy.]

Check drinking pocketwipes: ["use" pocketwipes directs to drinking]
	let K be a random worn knickers;
	if K is not messed knickers, say "You're not wearing any underwear that needs cleaning.";
	now wipeChecking is true;
	if K is actually removable: [if this check fails it'll explain why]
		now wipeChecking is false;
		if the player is immobile or the player is in danger, say "Aren't you a bit busy?" instead;
		allocate 6 seconds;
		say "You remove [NameDesc of K] and wipe yourself down until you're completely clean.";
		if diaper messing >= 6 and K is diaper:
			let SD be a random off-stage soiled-diaper;
			if SD is soiled-diaper:
				DiaperPrint SD from K;
				now SD is in the location of the player;
				say "[BigNameDesc of SD] is now on the ground in front of you. You discard the empty packet of wipes.";
		otherwise:
			say "The pack of wipes and the [ShortDesc of K] both vanish!";
		only destroy K;
		destroy the noun;
	now wipeChecking is false;
	do nothing instead.

To say unique-verb-desc of (T - a pocketwipes):
	if inline hyperlinks >= 2 and there is worn messed knickers, say " [link][bracket]clean me[close bracket][as]use [text-shortcut of T][end link]".


Wipes ends here.

