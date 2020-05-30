Magic Token by Collectibles begins here.

a magic token is a kind of mass collectible. There are 20 magic tokens. The printed name of magic token is "[TQlink of item described]magic token[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of magic token is "[TQlink of item described]magic tokens[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of magic token is "mgtk".
To say ExamineDesc of (B - a magic token):
	say "A small metal coin with magical symbol etched into it. [if the number of held magic token > 1]You have [number of held magic token] of these in your possession. [end if]If you take them all to a crafting station, something good will happen.".

Figure of magic token is the file "Items/Collectibles/token4.png".

To decide which figure-name is the examine-image of (C - a magic token):
	decide on figure of magic token.

To say ShortDesc of (C - a magic token):
	say "magic token".

To compute mass collectible reward of (T - a magic token):
	allocate 6 seconds;
	let N be (the number of held magic tokens + 1) / 2;
	let S be a random uncastable fetish appropriate magic-spell;
	say "You place [if number of held magic tokens is 1]the metal token[otherwise if number of held magic tokens is 2]both metal tokens[otherwise]all [number of held magic tokens] metal tokens[end if] into the bowl and there [if number of held magic tokens is 1]it instantly turns[otherwise]they instantly turn[end if] into a sparkly glitter, which explodes into the air, coating you. As the glitter hits you, you feel magic energy rushing through your body! ";
	if N > 2 and S is magic-spell:
		decrease N by 1;
		say "[bold type]New arcane knowledge appears in your mind! You've learned a new spell![NewbieSpellFlav]";
		compute learning of S;
	MagicPowerUp N;
	repeat with X running through held magic tokens:
		destroy X;
	reset alchemy charge.

Magic Token ends here.
