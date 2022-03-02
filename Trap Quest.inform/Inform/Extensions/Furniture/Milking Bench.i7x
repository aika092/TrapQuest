Milking Bench by Furniture begins here.

milking bench is a kind of furniture. A milking bench has a number called units collected. A milking bench is not permanent fixture. The printed name of milking bench is "[TQlink of item described]milking bench[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of milking bench is "mb". Understand "milking", "bench" as milking bench.

mansion-milking-bench is a milking bench.
dungeon-milking-bench is a milking bench.
Definition: mansion-milking-bench is immune to change: decide yes.

To decide which figure-name is the examine-image of (C - dungeon-milking-bench):
	decide on figure of milking bench dungeon.
To decide which figure-name is the examine-image of (C - mansion-milking-bench):
	decide on figure of milking bench mansion.

To say ExamineDesc of (C - a milking bench):
	say "A bench you could kneel and rest on. There are cups that are clearly for milking swollen mammaries.".

Figure of milking bench mansion is the file "Env/Mansion/milkingbench1.png".
Figure of milking bench dungeon is the file "Env/Dungeon/milkingbench1.jpg".
Figure of milking bench cutscene 1 is the file "Special/Cutscene/cutscene-milking-bench1.jpg".
Figure of milking bench cutscene 2 is the file "Special/Cutscene/cutscene-milking-bench2.png".
Figure of milking bench cutscene 3 is the file "Special/Cutscene/cutscene-milking-bench3.jpg".
Figure of milking bench cutscene 4 is the file "Special/Cutscene/cutscene-milking-bench4.jpg".
Figure of milking bench cutscene 5 is the file "Special/Cutscene/cutscene-milking-bench5.jpg".

To compute furniture resting on (M - a milking bench):
	let milking-allowed be 1;
	let milking-increased-doses be false;
	if there is worn not-top-displacable milking unflappable actually nipple covering clothing or the class of the player is living sex doll:
		now milking-allowed is 0;
	otherwise if the milk volume of breasts >= 0 and there is worn actually nipple covering clothing and the player is able to use their hands and the player is not wrist bound behind:
		let N be max-top-layer;
		decrease milking-allowed by N;
		while N > 0: [start with top layered clothing and work downwards]
			let B be nothing;
			repeat with C running through worn top layer clothing:
				if the top-layer of C is N, now B is C;
			if B is actually nipple covering clothing and N + milking-allowed >= 1: [Is it still possible to expose nipples? (Essentially this stops us asking about lower down items if the player refused to move higher up items)]
				if B is milking flappable:
					say "Open the milking flaps of your [ShortDesc of B]? ";
					if the player is bimbo consenting:
						increase milking-allowed by 1;
						say "You open the flaps[if milking-allowed >= 1], exposing your nipples before resting on the bench[end if].";
					otherwise:
						say "You decide against exposing your nipples before resting on the bench.";
				otherwise if B is not top-displaced: [This check should actually be unnecessary since the new code should not allow a top-displaced clothing to be flagged as nipple covering. But it is kept in for clarity and redundancy]
					say "Pull aside [if B is bra]the cups of [end if]your [ShortDesc of B]? ";
					if the player is bimbo consenting:
						increase milking-allowed by 1;
						say "You move your [ShortDesc of B] out of the way[if milking-allowed >= 1], freeing up access to your [BreastDesc][end if].";
						TopDisplace B;
						now B is temporarily-displaced;
					otherwise:
						say "You decide against exposing your nipples before resting on the bench.";
			decrease N by 1;
	if the number of worn actually nipple covering clothing is 0, now milking-allowed is 1;
	now player-currently-resting is 1;
	compute fat burning reset;
	now the stance of the player is 1;
	now the alert of the player is 0;
	if the milk volume of breasts > 0 and milking-allowed >= 1:
		let MT be a random milk-tank in the location of M;
		say "The suckers leap up and latch onto your [milk] filled [BreastDesc]!";
		if M is mansion-milking-bench:
			if the largeness of breasts <= 11, cutshow figure of milking bench cutscene 1 for M;
			otherwise cutshow figure of milking bench cutscene 2 for M;
		otherwise:
			if the largeness of breasts <= 11:
				cutshow figure of milking bench cutscene 3 for M;
			otherwise if the largeness of breasts <= 15:
				cutshow figure of milking bench cutscene 4 for M;
			otherwise:
				cutshow figure of milking bench cutscene 5 for M;
		now milking is 1;
		let MPT be 1; [units of milk collected. increases by 1 every turn]
		while milking is 1 and delayed fainting is 0 and the player is in the location of M and (the fatigue of the player > 0 or the milk volume of breasts > 0): [The player can stop being milked by the game setting milking to 0]
			say "[if the alert of the player is 1]The suckers are latched so strongly onto your [BreastDesc] that you can't do anything about your compromising position! [end if]You [one of][or]continue to [stopping]get milked on the bench.";
			allocate 4 seconds;
			if MPT < the milk volume of breasts, increase the units collected of M by MPT;
			otherwise increase the units collected of M by the milk volume of breasts;
			MilkDown MPT;
			increase MPT by 1;
			while the units collected of M >= 4:
				decrease the units collected of M by 4;
				now milking-increased-doses is true;
				if the doses of MT < 8:
					increase the doses of MT by 1;
					say "[BigNameDesc of MT] is now [FullnessDesc of MT].";
			if cow-ears is off-stage and cow-ears is actually summonable and a random number between 1 and 40 - (20 * unlucky) is 1:
				say "As you are getting milked, a headband with fake cow ears appears on your head. You let out a soft involuntary [variable custom style]'moo'[roman type].";
				summon cow-ears cursed;
			otherwise if the class of the player is royal slave and cow print basque is not worn:
				class summon cow print basque;
				if cow print basque is not worn:
					let D be a random worn dress;
					if D is nothing, now D is a random worn breast covering clothing;
					if D is clothing, silently transform D into cow print basque;
				TopDisplace cow print basque;
				say "A [ShortDesc of cow print basque] shimmers into place over your body!";
			compute extra turn;
			if the alert of the player is 0, compute monster detection;
		while the body soreness of the player > 0 and delayed fainting is 0 and milking is 1 and the player is in the location of M:
			say "[if the alert of the player is 1]The suckers are latched so strongly onto your [BreastDesc] that you can't do anything about your compromising position! [end if]You [one of][or]continue to [stopping]get milked on the bench.";
			allocate 6 seconds;
			compute extra turn;
			if the alert of the player is 0, compute monster detection;
			BodyHeal 1;
		now milking is 0;
		if M is in the location of the player:
			say "The machine finally stops milking you[if milking-increased-doses is false]. There wasn't enough milk to significantly increase the level of the fluid in the milk tank, but your small contribution will surely be taken into account the next time you get milked[end if].";
			if milking-increased-doses is true and a random number between 1 and max breast size > the largeness of breasts, BustUp 1;
			if the alert of the player is 0, say "[if the bimbo of the player < 11][line break][first custom style]I feel so much better![otherwise][line break][second custom style]I'm full of energy again. Yum![end if][roman type][line break]";
		progress quest of milking-quest;
		now player-currently-resting is 0;
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
		if the lactation rate of breasts < 4:
			say "[bold type]Your [BreastDesc] suddenly feel significantly more... active.[roman type][line break]";
			increase the lactation rate of breasts by 2;
	if there is worn temporarily-displaced clothing and the player is not in danger:
		say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
		repeat with C running through worn temporarily-displaced clothing:
			TopReplace C;
	repeat with C running through temporarily-displaced clothing: [This should happen even if the player is in danger]
		now C is not temporarily-displaced;
	[now the units collected of M is 0;] [it can save units for next time]
	now player-currently-resting is 0.

To say RestingDesc of (F - a milking bench):
	say "You [one of][or]continue to [stopping]kneel on the bench.";

Milking Bench ends here.
