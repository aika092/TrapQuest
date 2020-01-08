Toffee by Food begins here.


A toffee is a kind of candy. The printed name of toffee is "[TQlink of item described]toffee[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of toffee is "[TQlink of item described]toffees[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of toffee is "to". There is 1 toffee.

To say ExamineDesc of (C - a toffee):
	say "A toffee sweet, still in its wrapper. It will definitely increase your energy, and hopefully isn't poisoned...".

Figure of toffee is the file "Items/Collectibles/toffee1.jpg".

To decide which figure-name is the examine-image of (F - toffee):
	decide on figure of toffee.

To say ShortDesc of (C - a toffee):
	say "toffee".

toffee-poison-timer is a number that varies.

To decide which number is the crafting key of (C - a toffee):
	decide on 28.

Carry out TQeating toffee:
	say "[DevourFlav of the noun]You feel more energetic[if the body soreness of the player > 1] and healed[end if]! ";
	FatigueDown 80;
	bodyheal 2;
	if (a random number between 1 and 4 is 1 and (diaper quest is 0 or diaper messing < 3)) or tutorial is 1:
		say "[if toffee-poison-timer > 0]You feel more of the intelligence draining poison enter your veins.[otherwise]But your brain suddenly clouds over and it's much more difficult to think. The toffee was poisoned![end if]";
		increase toffee-poison-timer by default-candy-duration / 2.

a time based rule (this is the toffee poison decay rule):
	if toffee-poison-timer > 0:
		decrease toffee-poison-timer by time-seconds;
		if toffee-poison-timer <= 0:
			say "[bold type]The poison from the toffee seems to have run its course and you are able to think more clearly again.[roman type][line break]";
			now toffee-poison-timer is 0.

To compute (M - a robochef) cooking (I - a toffee):
	let D be a random off-stage cookie;
	if D is food:
		now the quality of D is a random number between 2 and 0;
		now the fat of D is 3;
		now D is retained by M.


Toffee ends here.
