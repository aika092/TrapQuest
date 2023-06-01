Truffle by Food begins here.

A truffle is a kind of chef food. There is 1 truffle. The printed name of a truffle is "[TQlink of item described][if the quality of the item described > 1]high quality [otherwise if diaper quest is 1]suspicious quality [otherwise if the quality of the item described is -1]suggestive [otherwise if the quality of the item described <= -2]creampied [end if]truffle[shortcut-desc][TQxlink of item described][verb-desc of item described]". The printed plural name of a truffle is "[TQlink of item described]truffles[shortcut-desc][TQxlink of item described][verb-desc of item described]". The text-shortcut of a truffle is usually "tr".

To say ShortDesc of (C - a truffle):
	say "truffle".

To say ExamineDesc of (C - a truffle):
	say "[if the quality of C > -1]A chocolate truffle, garnished with a thick sugary glaze.[otherwise if diaper quest is 1]A chocolate truffle, with a pacifier design stencilled into its surface. You can't be confident of what it's filled with.[otherwise if the quality of C > -2]A chocolate truffle with a design stencilled into its surface to make it look like the tip of an erect penis. complete with a really suggestive trail of sugary glaze.[otherwise]What used to be a chocolate truffle until someone put their [manly-penis] in it and filled the centre with [semen]. Looking at it reminds you of a well fucked hole.[end if]".

truffle-confidence-timer is a number that varies.

To say DevourFlav of (C - a truffle):
	say "You [if the flesh volume of arms > 7]greedily stuff the entire [noun] into your mouth, and swallow it whole.[otherwise if the flesh volume of arms > 3 and the quality of the noun > -2]speedily devour the rich, chocolatey [noun].[otherwise if the flesh volume of arms > 3]speedily devour the unexpectedly bitter, salty lump of chocolate.[otherwise if the quality of the noun > -2]consume the sweet slowly, savouring the taste. [otherwise]consume the sweet slowly, increasingly aware of a strangely bitter, salty taste.[end if] [if the quality of the noun is -2 and the flesh volume of arms > 7]A tiny after-taste in your mouth causes you to realise that the truffle was actually covered in [semen] instead of icing, but you were just so absorbed with pigging out that you didn't stop to examine what you were eating.[otherwise if the quality of the noun is -2]That *definitely* wasn't icing on the [noun] at all.[otherwise if the flesh volume of arms > 7]You feel little less weak,[otherwise if the quality of the noun is -1]Ignoring the outer appearance, it doesn't taste horrible, but eating things that look like penises is pretty much the same as announcing that you like blowjobs.[otherwise if the quality of the noun is 0]It tastes fine, nothing special about it, really.[otherwise if the quality of the noun < 3]It's actually pretty good! You feel a little more confident in yourself knowing you can find such fine food around here.[otherwise]The taste is beyond incredible, and you feel lucky and important for a chance to taste such fine food.[end if] [if the flesh volume of arms > 7] and a lot more fat[otherwise if weight gain fetish is 1]You also feel a little chubbier.[otherwise]You also feel pretty full[end if]".[you cannot fully enjoy a truffle if you eat too fast!]

Carry out TQeating truffle:
	say "[DevourFlav of the noun]";
	if the quality of the noun <= (diaper quest - 2):
		if diaper quest is 1:
			say "The rich chocolate leaves you feeling really satisfied, but you're sure that there was a secret ingredient in it, because as soon as you're finished eating,";
			if diaper lover >= a random number between 3 and 5:
				say "your bowels rumble worryingly!";
				increase suppository by 1;
			otherwise:
				say "you feel a weird numbness in your bladder!";
				SilentlyBladderIncontinenceUp 1;
		otherwise:
			say "The rich chocolate leaves you feeling really satisfied, but it's impossible to let go of the knowledge that someone definitely came in your food.";
			if the semen taste addiction of the player > 8:
				say "[second custom style]I wish all food could be like this...[roman type][line break]";
			otherwise if a random number between the intelligence of the player and 5 < 6:
				say "In fact, it's hard not to associate the taste of the truffle with the taste of [semen].";
			otherwise:
				say "[first custom style]I'm so disgusting. I can't believe I really ate that...[roman type][line break]";
				severeHumiliate;
			Arouse the semen taste addiction of the player * 20;
			StomachSemenUp 1;
	otherwise if a random number between 3 and the quality of the noun is 3:
		say "The rich chocolate leaves you feeling really satisfied, and you feel like you could put up with a lot as long as you still feel that great taste in the back of your mouth";
		increase truffle-confidence-timer by 200 + the quality of the noun * 10 + the fat of the noun * 30;
	otherwise:
		say "The rich chocolate leaves you feeling really satisfied, but you know you can't trust anything good from this game.";
	StomachFoodUp 1;
	allocate 6 seconds.

an all time based rule (this is the truffle confidence decay rule):
	if truffle-confidence-timer > 0:
		decrease truffle-confidence-timer by time-seconds;
		if truffle-confidence-timer <= 0:
			say "[bold type]That taste of the truffle fades.[roman type][line break]";
			now truffle-confidence-timer is 0.

Truffle ends here.
