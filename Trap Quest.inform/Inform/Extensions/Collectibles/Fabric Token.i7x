Fabric Token by Collectibles begins here.

a fabric token is a kind of mass collectible. There are 20 fabric tokens. The printed name of fabric token is "[TQlink of item described]fabric token[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of fabric token is "[TQlink of item described]fabric tokens[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of fabric token is "fbtk". The description of fabric token is "A small metal coin with the outline of a pair of panties etched into it. [if the number of held fabric token > 1]You have [number of held fabric token] of these in your possession. [end if] If you take them all to a crafting station, something good will happen.".

To say ShortDesc of (C - fabric token):
	say "fabric token".

Definition: a fabric token (called C) is fetish appropriate:
	[if diaper quest is 0, decide no;]
	decide yes.
	
To compute mass collectible reward of (T - a fabric token):
	let N be the number of held fabric tokens + a random number between 0 and 4;
	say "You place [if number of held fabric tokens is 1]the metal token[otherwise if number of held fabric tokens is 2]both metal tokens[otherwise]all [number of held fabric tokens] metal tokens[end if] into the bowl and there [if number of held fabric tokens is 1]it turns[otherwise]they slowly merge together and then turn[end if] into a single piece of fabric. ";
	let C be a random off-stage undies;
	if N > 9:
		now C is a random off-stage panties;
	otherwise if N > 5:
		now C is a random off-stage briefs;
	otherwise:
		now C is a random off-stage thong;
	if C is nothing, now C is a random off-stage undies;
	only destroy C; [resets it]
	now C is carried by the player;
	now C is sure;
	now C is bland;
	now C is identified;
	now C is blandness;
	now the raw-magic-modifier of C is 0;
	say "You pick up your brand new [C]!";
	repeat with X running through held fabric tokens:
		destroy X;
	now seconds is 6;
	reset alchemy charge.
		

Fabric Token ends here.
