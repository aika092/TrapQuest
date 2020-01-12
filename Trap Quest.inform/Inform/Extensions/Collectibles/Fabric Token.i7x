Fabric Token by Collectibles begins here.

a fabric token is a kind of mass collectible. There are 20 fabric tokens. The printed name of fabric token is "[TQlink of item described]fabric token[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of fabric token is "[TQlink of item described]fabric tokens[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of fabric token is "fbtk".
To say ExamineDesc of (B - a fabric token):
	say "A small metal coin with the outline of a pair of panties etched into it. [if the number of held fabric token > 1]You have [number of held fabric token] of these in your possession. [end if] If you take them all to a crafting station, something good will happen.".

Figure of fabric token is the file "Items/Collectibles/token2.png".

To decide which figure-name is the examine-image of (C - a fabric token):
	decide on figure of fabric token.

To say ShortDesc of (C - fabric token):
	say "fabric token".

Definition: a fabric token is fetish appropriate: decide yes.

To compute mass collectible reward of (T - a fabric token):
	let N be the number of held fabric tokens + a random number between 0 and 4;
	say "You place [if number of held fabric tokens is 1]the metal token[otherwise if number of held fabric tokens is 2]both metal tokens[otherwise]all [number of held fabric tokens] metal tokens[end if] into the bowl and there [if number of held fabric tokens is 1]it begins to turn[otherwise]they slowly merge together and then begin to turn[end if] into a single piece of fabric.";
	say "You can feel the magic searching your mind to understand your desires. You could probably influence whether it takes the shape of a bra or a pair of panties. Do you wish for a bra (if you choose 'no', you'll get panties)? ";
	let C be nothing;
	if the player is consenting:
		now C is a random off-stage fetish appropriate transformation-eligible almost too much bra;
		if N > a random number between 4 and 7:
			now C is a random off-stage rare fetish appropriate outrageAcceptable bra;
		otherwise if N > a random number between 2 and 3:
			now C is a random off-stage fetish appropriate transformation-eligible outrageAcceptable bikini top;
		if C is nothing or the max size of C < the largeness of breasts:
			now C is nothing;
			let L be the list of off-stage fetish appropriate transformation-eligible bras;
			sort L in random order;
			repeat with B running through L:
				if the max size of B >= the largeness of breasts, now C is B;
			if C is nothing, now C is a random off-stage string bikini top; [These have no max breast size]
		if C is nothing, now C is a random off-stage transformation-eligible bra;
		if C is bra, compute found size of C;
	otherwise:
		now C is a random off-stage fetish appropriate transformation-eligible almost too much undies;
		if N > a random number between 4 and 7:
			now C is a random off-stage fetish appropriate transformation-eligible panties;
		otherwise if N > a random number between 2 and 3:
			now C is a random off-stage fetish appropriate transformation-eligible briefs;
		otherwise:
			if diaper quest is 1, now C is a random fetish appropriate transformation-eligible thong in Holding Pen;
			otherwise now C is a random off-stage fetish appropriate transformation-eligible thong;
		if C is nothing, now C is a random off-stage fetish appropriate transformation-eligible undies;
	if C is nothing:
		say "The transformation fails! This is very unusual, perhaps the universe can't seem to find anything appropriate to give you any more?";
	otherwise:
		blandify and reveal C; [resets it]
		now C is carried by the player;
		say "You pick up your brand new [C]!";
		repeat with X running through held fabric tokens:
			destroy X;
	allocate 6 seconds;
	reset alchemy charge.


Fabric Token ends here.
