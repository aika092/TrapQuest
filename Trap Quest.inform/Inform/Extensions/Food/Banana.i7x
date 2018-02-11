Banana by Food begins here.


A banana is a kind of snack. The printed name of banana is "[TQlink of item described]banana[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of banana is "[TQlink of item described]bananas[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of banana is "ban". The description of banana is "A smallish banana that you could peel and eat.". There are 5 bananas.

To say ShortDesc of (C - a banana):
	say "banana".
	
Carry out TQeating banana:
	DexUp 1.

Report TQeating banana:
	say "You peel the skin off the [noun] and [if the fat-weight of the player > 20]greedily stuff the entire thing into your mouth, immediately swallowing it whole. [otherwise if the oral sex addiction of the player > 7]practice deepthroating the phallic food a few times before finally swallowing it whole. [otherwise]take bites out of the banana, until it has completely gone. [end if]You feel faster!".

To say DevourFlav of (C - a banana):
	say "You unwrap the [C] and [if the player is in danger]devour it as quickly as you can[otherwise if the fat-weight of the player > 28]greedily stuff the entire thing into your mouth, immediately swallowing it whole[otherwise if the fat-weight of the player > 12]speedily devour the fruit[otherwise]consume the sweet slowly, savouring the taste[end if]. ".

To compute (M - a robochef) cooking (I - a banana):
	let D be a random off-stage gelatin;
	if D is food:
		now the quality of D is a random number between 2 and -2;
		now the fat of D is 2;
		now D is retained by M.


Banana ends here.

