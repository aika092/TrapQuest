Pack of Nuts by Food begins here.


A pack of nuts is a kind of snack. The printed name of pack of nuts is "[TQlink of item described]pack of nuts[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of pack of nuts is "[TQlink of item described]packs of nuts[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pack of nuts is "nu". There are 2 pack of nuts.

To say ExamineDesc of (C - a pack of nuts):
	say "A smallish pack of salted nuts that you could open and eat.".

To say ShortDesc of (C - a pack of nuts):
	say "pack of nuts".

Report TQeating pack of nuts:
	say "Opening the packet, you [if the fat-weight of the player > 20]greedily shove mouthfuls of nuts into your mouth and they are quickly gone. [otherwise]eat the nuts one or two at a time until they are all gone. [end if]You feel more dominant!  You discard the empty wrapper.";
	DelicateDown 1.

To compute (M - a robochef) cooking (I - a pack of nuts):
	let D be a random off-stage cookie;
	if D is food:
		now the quality of D is a random number between 2 and -1;
		now the fat of D is 1;
		now D is retained by M.

Pack of Nuts ends here.

