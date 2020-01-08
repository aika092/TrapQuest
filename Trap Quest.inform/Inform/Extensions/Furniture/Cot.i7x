Cot by Furniture begins here.


A cot is a kind of furniture. A cot is not portable. There is 1 cot. The printed name of cot is "[TQlink of item described]cot[TQxlink of item described][verb-desc of item described]". The text-shortcut of a cot is "cot".

To say ExamineDesc of (C - a cot):
	say "A small, uncomfortable looking bed.".

To decide which figure-name is the examine-image of (C - a cot):
	decide on figure of bunk bed.

To compute furniture resting on (F - a cot):
	let M be a random alive dominatrix in the location of the player;
	if M is a monster and the number of alive monsters in the location of the player < 2:
		say "[speech style of M]'Rest up, I have some work for you to do once you[']re finished up.'[roman type] [BigNameDesc of M] presses a small button on a remote, and a modesty shutter slams across the doorway of the room.";
		now a random modesty shutter is in the location of the player;
	compute normal rest of F.

To say RestingDesc of (F - a cot):
	say "You [one of][or]continue to [stopping]rest on the cot.";

To compute rest ending of (F - a cot):
	if the number of modesty shutters in the location of the player > 0:
		let M be a random alive dominatrix in the location of the player;
		say "[BigNameDesc of M] grins. Looks like you[']ll have to handle [him of M] before you can leave this room.";
		now the sex-length of M is 5;
		if number of plentiful accessories retained by M < 1, now a random off-stage ring is retained by M;
		now M is interested.

Cot ends here.
