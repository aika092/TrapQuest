Milking Bench by Furniture begins here.


milking bench is a kind of furniture.  There is 1 milking bench.  The description of milking bench is "[MilkingBenchDesc]".  A milking bench has a number called units collected.  The printed name of milking bench is "[TQlink of item described]milking bench[TQxlink of item described][shortcut-desc][verb-desc of item described]".  The text-shortcut of milking bench is "mb".
To say MilkingBenchDesc:
	if images visible is 1, display figure of milking bench;
	say "A bench you could kneel and rest on.  There are cups that are clearly for milking swollen mammaries.".
Figure of milking bench is the file "milkingbench1.png".

To compute furniture resting on (M - a milking bench):
	let milking-allowed be 0;
	if the number of worn nipple covering clothing is 1:[If there is more than one layer of nipple covering clothing, you have to manually open the flaps.]
		let B be a random worn nipple covering clothing;
		if the player is not nipples exposed:
			if B is milking flappable and the latex-transformation of the player > 7:
				say "Open the milking flaps of your [printed name of B]? [yesnolink] ";
				if the player consents:
					now milking-allowed is 1;
					say "You expose your nipples before resting on the bench.";
				otherwise:
					say "You decide against exposing your nipples before resting on the bench.";
			unless B is not-top-displacable or the latex-transformation of the player > 7:[optional-top-displacable as well!]
				if B is not top-displaced:
					say "Pull aside [if B is bra]the cups of [end if]your [printed name of B]? [yesnolink] ";
					if the player consents:
						now milking-allowed is 1;
						say "You move your [printed name of B] out of the way, freeing up access to your [BreastDesc].";
						now B is top-displaced;
						now B is temporarily-displaced;
					otherwise:
						say "You decide against exposing your nipples before resting on the bench.";
	if the player is nipples exposed, now milking-allowed is 1;
	now resting is 1;
	compute fat burning reset;
	now the stance of the player is 1;
	now the alert of the player is 0;
	if the milk volume of breasts > 0 and milking-allowed is 1:
		say "The suckers leap up and latch onto your [milk] filled breasts!";
		now milking is 1;
		while milking is 1 and the player is in the location of M and (the fatigue of the player > 0 or (the milk volume of breasts > 0 and the units collected of M < 20)): [The player can stop being milked by the game setting milking to 0]
			say  "[if the alert of the player is 1]The suckers are latched so strongly onto your [BreastDesc] that you can't do anything about your compromising position!  [end if]You [one of][or]continue to [stopping]get milked on the bench.";
			now seconds is 4;
			MilkDown 1;
			increase the units collected of M by 1;
			let H be a random off-stage cow ears;
			if H is actually summonable and a random number between 1 and 40 - (20 * unlucky) is 1:
				say "As you are getting milked, a headband with fake cow ears appears on your head.  You let out a soft involuntary [variable custom style]'moo'[roman type].";
				summon H cursed;
			compute extra turn;
			if the alert of the player is 0, compute monster detection;
		while the body soreness of the player > 0 and milking is 1 and the player is in the location of M:
			say  "[if the alert of the player is 1]The suckers are latched so strongly onto your [BreastDesc] that you can't do anything about your compromising position!  [end if]You [one of][or]continue to [stopping]get milked on the bench.";		
			now seconds is 6;
			compute extra turn;
			if the alert of the player is 0, compute monster detection;
			BodyHeal 1;
		now milking is 0;
		if M is in the location of the player:
			say "The machine finally stops milking you.";
			if the alert of the player is 0, say "[if the bimbo of the player < 11][first custom style]I feel so much better![otherwise][second custom style]I'm full of energy again.  Yum![end if][roman type][line break]";
		let B be a random off-stage can;
		if B is can and the units collected of M > 0:
			now B is in the location of M;
			now the fill-colour of B is white;
			now the text-shortcut of B is "whc";
			now the max-doses of B is (the units collected of M + 3) / 4;
			now the doses of B is the max-doses of B;
			say "It spits out a [printed name of B].";
		now the units collected of M is 0;
		now resting is 0;
		if the alert of the player is 0, try standing;
		otherwise try looking;
	otherwise:
		while the fatigue of the player > 0 and the alert of the player is 0 and the player is in the location of M:
			compute fatigue refresh of M;
		while the body soreness of the player > 0 and the alert of the player is 0 and the player is in the location of M:
			compute soreness refresh of M;
		if the alert of the player is 1:
			compute alerting of M;
		otherwise:
			compute rest completion of M;
	if there is worn temporarily-displaced clothing:
		say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
	repeat with C running through temporarily-displaced clothing:
		if C is worn and the player is upright:
			now C is top-placed;
		now C is not temporarily-displaced;
	now resting is 0.

To say RestingDesc of (F - a milking bench):
	say  "You [one of][or]continue to [stopping]kneel on the bench.";

Milking Bench ends here.
