Dark Scroll by Consumables begins here.

A dark scroll is a kind of thing. There is 1 dark scroll. The printed name of dark scroll is "[TQlink of item described]dark scroll[TQxlink of item described][verb-desc of item described]". The text-shortcut of dark scroll is "dks". The description of dark scroll is "A scroll given to you by the Herald. It isn't in any language you know, but for some reason you know what it says.".

casting is an action applying to one thing. Understand "cast [something]" as casting.

Check examining dark scroll:
	if there is a woman in the location of the player, try casting the noun instead.

Check casting:
	if a random woman is not in the location of the player, say "Your target is not here." instead;
	if the noun is not dark scroll, say "You can't do that with that." instead.

Carry out casting:
	let M be a random woman in the location of the player;
	let H be a random herald;
	now seconds is 6;
	say "You read out the scroll the Herald gave you. Pink light suddenly begins to glow around [the printed name of M], and she suddenly vanishes in a flash!";
	vanish M;
	now WomanBimbo is 6;
	now the quest-status of H is 2;
	destroy the noun.

Dark Scroll ends here.

