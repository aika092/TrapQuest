Fudge by Food begins here.


A fudge is a kind of candy. The printed name of fudge is "[TQlink of item described]fudge[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of fudge is "[TQlink of item described]pieces of fudge[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of fudge is "fu". The description of fudge is "A piece of fudge, still in its wrapper. It will definitely significantly increase your energy, and hopefully it isn't poisoned.". There is 1 fudge.

fudge-poison-timer is a number that varies.

To decide which number is the crafting key of (C - a fudge):
	decide on 29.

To say ShortDesc of (C - a fudge):
	say "fudge".

Carry out TQeating fudge:
	say "[DevourFlav of the noun]You feel more energetic[if the body soreness of the player > 1] and healed[end if]!  ";
	FatigueDown 160;
	bodyheal 4;
	if a random number between 1 and 4 is 1 and (diaper quest is 0 or diaper lover < 3):
		say "[if fudge-poison-timer > 0]You feel more of the dexterity draining poison enter your veins.[otherwise]But your limbs suddenly feel much heavier. The fudge was poisoned![end if]";
		increase fudge-poison-timer by default-candy-duration / 2.

a time based rule (this is the fudge poison decay rule):
	if fudge-poison-timer > 0:
		decrease fudge-poison-timer by time-seconds;
		if fudge-poison-timer <= 0:
			say "[bold type]The poison from the fudge seems to have run its course and your speed returns to you.[roman type][line break]";
			now fudge-poison-timer is 0.

To compute (M - a robochef) cooking (I - a fudge):
	let D be a random off-stage truffle;
	if D is food:
		now the quality of D is a random number between 2 and -2;
		now the fat of D is 2;
		now D is retained by M.


Fudge ends here.

