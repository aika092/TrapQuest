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
	let N be (the number of held defiance tokens + 2) / 3;
	let RD be the raw delicateness of the player - 5;
	if RD < 0, now RD is 0;
	let NM be N - RD; [Any tokens that would reduce delicateness below 5 are redirected to a different effect]
	say "You place [if number of held defiance tokens is 1]the metal token[otherwise if number of held defiance tokens is 2]both metal tokens[otherwise]all [number of held defiance tokens] metal tokens[end if] into the bowl and there [if number of held defiance tokens is 1]it instantly turns[otherwise]they instantly turn[end if] into a silvery gas. ";
	if NM > 0, decrease N by NM;
	if N > 0:
		say "As this gas fills the room and you breathe it in, you feel that your [if the player is feeling submissive]love for being dominated[otherwise if the player is not feeling dominant]tolerance for being dominated[otherwise]fear of pain[end if] has become [if N > 7]massively [otherwise if N > 3]significantly [end if]lessened.";
		DelicateDown N;
	if NM > 0:
		if the player is possessing a penis:
			SpecialPenisUp NM;
		otherwise if the player is a top donator and choice in row 68 of the Table of Player Options < 0 and NM > 1:
			SpecialPenisUp NM * 3; [#LXorDD]
		otherwise if strapon-dildo is held:
			if the strap-length of strapon-dildo < 12:
				say "[BigNameDesc of strapon-dildo] grows in size, from [strap-length of strapon-dildo] inch[if the strap-length of strapon-dildo > 1]es[end if] to ";
				increase the strap-length of strapon-dildo by NM * 2;
				if the strap-length of strapon-dildo >= 12, now the strap-length of strapon-dildo is 12;
				say "[strap-length of strapon-dildo] inches!";
			otherwise:
				say "[BigNameDesc of strapon-dildo] tries to grows in size, but can't grow any longer!";
				if strapon-dildo is not blessed:
					say "You sense a blessing being laid upon it!";
					bless strapon-dildo;
		otherwise:
			blandify and reveal strapon-dildo;
			now strapon-dildo is in the location of the player;
			now the strap-length of strapon-dildo is NM * 3;
			if the strap-length of strapon-dildo >= 12, now the strap-length of strapon-dildo is 12;
			say "A [strapon-dildo] appears before you! You sense that if you wear it, you might feel even more dominant.";
			compute autotaking strapon-dildo;
	repeat with X running through held defiance tokens:
		destroy X;
	reset alchemy charge.

Defiance Token ends here.
