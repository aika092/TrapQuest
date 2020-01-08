Apple by Food begins here.

A apple is a kind of snack. The printed name of apple is "[TQlink of item described]apple[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of apple is "[TQlink of item described]apples[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of apple is "ap". There are 5 apples.
To say ExamineDesc of (A - an apple):
	say "A smallish apple that you could eat.".

To say ShortDesc of (C - an apple):
	say "apple".

Carry out TQeating apple:
	IntUp 1.

Report TQeating apple:
	say "You [if the fat-weight of the player > 20]greedily bite off large chunks of the apple, swallowing each whole. [otherwise]take bites out of the apple, until you have eaten nearly all of the juicy fruit. [end if]You feel smarter! You discard the core.".

To compute (M - a robochef) cooking (I - an apple):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 1 and -1;
		now the fat of D is 1;
		now D is retained by M.


Apple ends here.
