Defiance Token by Collectibles begins here.

a defiance token is a kind of mass collectible. There are 20 defiance tokens. The printed name of defiance token is "[TQlink of item described]defiance token[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of defiance token is "[TQlink of item described]defiance tokens[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of defiance token is "dftk". The description of defiance token is "A small metal coin with the outline of a fist etched into it. [if the number of held defiance token > 1]You have [number of held defiance token] of these in your possession. [end if] If you take them all to a crafting station, something good will happen.".

To say ShortDesc of (C - defiance token):
	say "defiance token".

To compute mass collectible reward of (T - a defiance token):
	let N be (the number of held defiance tokens + 1) / 2;
	say "You place [if number of held defiance tokens is 1]the metal token[otherwise]all [number of held defiance tokens] metal tokens[end if] into the bowl and there [if number of held defiance tokens is 1]it instantly turns[otherwise]they instantly turn[end if] into a silvery gas. As this gas fills the room and you breathe it in, ";
	say "you feel that your [if the player is feeling submissive]love for being dominated[otherwise if the player is not feeling dominant]tolerance for being dominated[otherwise]fear of pain[end if] has become [if N > 7]massively [otherwise if N > 3]significantly [end if]lessened.";
	DelicateDown N;
	repeat with X running through held defiance tokens:
		destroy X;
	now seconds is 6;
	reset alchemy charge.

Defiance Token ends here.
