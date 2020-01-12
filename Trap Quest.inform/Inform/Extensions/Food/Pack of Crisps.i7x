Pack of Crisps by Food begins here.


A pack of crisps is a kind of snack. The printed name of pack of crisps is "[TQlink of item described]pack of crisps[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of pack of crisps is "[TQlink of item described]packs of crisps[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of pack of crisps is "cri". There are 2 pack of crisps.

To say ExamineDesc of (C - a pack of crisps):
	say "A smallish pack of ready salted crisps that you could open and eat.".

To say ShortDesc of (C - a pack of crisps):
	say "pack of crisps".

Carry out TQeating pack of crisps:
	StrengthUp 1.

Report TQeating pack of crisps:
	say "Opening the packet, you [if the fat-weight of the player > 20]greedily shove mouthfuls of crisps into your mouth and they are quickly gone. [otherwise]eat the crisps one at a time until they are all gone. [end if]You feel stronger! You discard the empty wrapper.".

To compute (M - a robochef) cooking (I - a pack of crisps):
	let D be a random off-stage stuffed mushroom;
	if D is food:
		now the quality of D is a random number between 0 and -2;
		now the fat of D is 3;
		now D is retained by M.


Pack of Crisps ends here.

