Lemon by Food begins here.



A lemon is a kind of snack.  The printed name of lemon is "[TQlink of item described]lemon[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The printed plural name of lemon is "[TQlink of item described]lemons[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of lemon is "le".  The description of lemon is "A smallish lemon that you could eat.  It would probably be quite sour".  There are 4 lemons.

Report TQeating lemon:
	say "You [if the fat-weight of the player > 20]greedily bite off large chunks of the lemon, swallowing each whole.  [otherwise]take bites out of the lemon, until you have eaten nearly all of the juicy fruit.  [end if]It's very sour, [if the semen taste addiction of the player < 14]yuck[otherwise]but weirdly, you really like it[end if]!  You feel more capable of handling sour and bitter tastes.";
	DelicateDown 2;
	SemenTasteAddictUp 1.

To compute (M - a robochef) cooking (I - a lemon):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 1 and -2;
		now the fat of D is 1;
		now D is retained by M.

Lemon ends here.
