Defiance Token by Collectibles begins here.

a defiance token is a kind of mass collectible. There are 20 defiance tokens. The printed name of defiance token is "[TQlink of item described]defiance token[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of defiance token is "[TQlink of item described]defiance tokens[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of defiance token is "dftk".

Figure of defiance token is the file "Items/Collectibles/token1.png".

To decide which figure-name is the examine-image of (C - a defiance token):
	decide on figure of defiance token.

To say ExamineDesc of (C - defiance token):
	say "A small metal coin with the outline of a fist etched into it. [if the number of held defiance token > 1]You have [number of held defiance token] of these in your possession. [end if]If you take them all to a crafting station, something good will happen.".

To say ShortDesc of (C - defiance token):
	say "defiance token".

To compute mass collectible reward of (T - a defiance token):
	allocate 6 seconds;
	let N be (the number of held defiance tokens + 1) / 2;
	let NM be N - (the raw delicateness of the player - 5);
	say "You place [if number of held defiance tokens is 1]the metal token[otherwise if number of held defiance tokens is 2]both metal tokens[otherwise]all [number of held defiance tokens] metal tokens[end if] into the bowl and there [if number of held defiance tokens is 1]it instantly turns[otherwise]they instantly turn[end if] into a silvery gas. ";
	if NM > 0: [Any tokens that would reduce delicateness below 5 are redirected to a different effect]
		decrease N by NM;
		let NMSR be (the square root of (NM - 1)) - 2;
		if whip-of-domination is unsure, now the raw-magic-modifier of whip-of-domination is NMSR; [the first time we spawn it]
		now whip-of-domination is sure;
		now whip-of-domination is identified;
		if whip-of-domination is not held and whip-of-domination is not in the location of the player:
			say "A magical looking leather whip appears at your feet!";
			now whip-of-domination is in the location of the player;
		otherwise if the raw-magic-modifier of whip-of-domination < NMSR:
			say "The [MediumDesc of whip-of-domination] glows with a stronger magical aura than before!";
		otherwise:
			say "The [whip-of-domination] seems to vibrate happily.";
			bless whip-of-domination;
		if the raw-magic-modifier of whip-of-domination < NMSR, now the raw-magic-modifier of whip-of-domination is NMSR;
	if N > 0:
		say "As this gas fills the room and you breathe it in, you feel that your [if the player is feeling submissive]love for being dominated[otherwise if the player is not feeling dominant]tolerance for being dominated[otherwise]fear of pain[end if] has become [if N > 7]massively [otherwise if N > 3]significantly [end if]lessened.";
		DelicateDown N;
	repeat with X running through held defiance tokens:
		destroy X;
	if whip-of-domination is in the location of the player, compute autotaking whip-of-domination;
	reset alchemy charge.

Defiance Token ends here.
