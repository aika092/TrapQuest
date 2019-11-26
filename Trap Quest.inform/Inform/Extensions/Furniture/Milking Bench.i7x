Milking Bench by Furniture begins here.


milking bench is a kind of furniture. A milking bench has a number called units collected. A milking bench is not permanent fixture. The printed name of milking bench is "[TQlink of item described]milking bench[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of milking bench is "mb". Understand "milking", "bench" as milking bench.

mansion-milking-bench is a milking bench.
dungeon-milking-bench is a milking bench.
Definition: mansion-milking-bench is immune to change: decide yes.
A game universe initialisation rule:
	if lactation fetish is 1, now mansion-milking-bench is in Mansion06.

To decide which figure-name is the examine-image of (C - a milking bench):
	decide on figure of milking bench.

To say ExamineDesc of (C - a milking bench):
	say "A bench you could kneel and rest on. There are cups that are clearly for milking swollen mammaries.".

Figure of milking bench is the file "Env/Dungeon/milkingbench1.png".
Figure of milking bench cutscene 1 is the file "Special/Cutscene/cutscene-milking-bench1.png".
Figure of milking bench cutscene 2 is the file "Special/Cutscene/cutscene-milking-bench2.png".

To compute furniture resting on (M - a milking bench):
	let milking-allowed be 1;
	if there is worn not-top-displacable milking unflappable nipple covering clothing or the class of the player is living sex doll:
		now milking-allowed is 0;
	otherwise if the milk volume of breasts >= 0 and there is worn nipple covering clothing and the player is able to use their hands and the player is not wrist bound behind:
		let N be max-top-layer;
		decrease milking-allowed by N;
		while N > 0: [start with top layered clothing and work downwards]
			let B be nothing;
			repeat with C running through worn top layer clothing:
				if the top-layer of C is N, now B is C;
			if B is nipple covering clothing and N + milking-allowed >= 1: [Is it still possible to expose nipples? (Essentially this stops us asking about lower down items if the player refused to move higher up items)]
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
	if the player is nipples exposed, now milking-allowed is 1;
	now resting is 1;
	compute fat burning reset;
	now the stance of the player is 1;
	now the alert of the player is 0;
	if the milk volume of breasts > 0 and milking-allowed >= 1:
		say "The suckers leap up and latch onto your [milk] filled [BreastDesc]!";
		if the largeness of breasts <= 11, cutshow figure of milking bench cutscene 1 for M;
		otherwise cutshow figure of milking bench cutscene 2 for M;
		now milking is 1;
		while milking is 1 and the player is in the location of M and (the fatigue of the player > 0 or (the milk volume of breasts > 0 and the units collected of M < 20)): [The player can stop being milked by the game setting milking to 0]
			say "[if the alert of the player is 1]The suckers are latched so strongly onto your [BreastDesc] that you can't do anything about your compromising position! [end if]You [one of][or]continue to [stopping]get milked on the bench.";
			allocate 4 seconds;
			MilkDown 1;
			increase the units collected of M by 1;
			let C be a random off-stage cow print milking basque;
			if cow-ears is off-stage and cow-ears is actually summonable and a random number between 1 and 40 - (20 * unlucky) is 1:
				say "As you are getting milked, a headband with fake cow ears appears on your head. You let out a soft involuntary [variable custom style]'moo'[roman type].";
				summon cow-ears cursed;
			otherwise if the class of the player is royal slave and C is basque:
				say "As you are getting milked, ";
				let N be 0;
				let MM be 0;
				repeat with X running through worn clothing:
					if X is dress or X is knickers or X is trousers or X is bra:
						say "[if N > 0]Your[otherwise]your[end if] [X] disappears!";
						if X is dress:
							now MM is the raw-magic-modifier of X;
							only destroy X;
						otherwise:
							destroy X;
						increase N by 1;
				summon C;
				now C is milk production;
				now the raw-magic-modifier of C is MM;
				TopDisplace C;
				now basque-summoned is 1;
				now cow-summoned is 1;
				say "[if N is 0]a[otherwise]A[end if] [ShortDesc of C] shimmers into place over your body[if N > 1], taking their place[otherwise if N > 0], taking its place[end if]!";
			compute extra turn;
			if the alert of the player is 0, compute monster detection;
		while the body soreness of the player > 0 and milking is 1 and the player is in the location of M:
			say "[if the alert of the player is 1]The suckers are latched so strongly onto your [BreastDesc] that you can't do anything about your compromising position! [end if]You [one of][or]continue to [stopping]get milked on the bench.";
			allocate 6 seconds;
			compute extra turn;
			if the alert of the player is 0, compute monster detection;
			BodyHeal 1;
		now milking is 0;
		if M is in the location of the player:
			say "The machine finally stops milking you.";
			if the alert of the player is 0, say "[if the bimbo of the player < 11][line break][first custom style]I feel so much better![otherwise][line break][second custom style]I'm full of energy again. Yum![end if][roman type][line break]";
		let B be a random off-stage can;
		if B is can and the units collected of M > 0:
			now B is in the location of M;
			now the fill-colour of B is white;
			[now the text-shortcut of B is "whc";]
			now the max-doses of B is (the units collected of M + 3) / 4;
			now the units collected of M is the max-doses of B; [This is for easily tracking the quest limit]
			DoseFill B;
			say "It spits out a [printed name of B].";
			compute autotaking B;
		progress quest of milking-quest;
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
	if there is worn temporarily-displaced clothing and the player is not in danger:
		say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
		repeat with C running through worn temporarily-displaced clothing:
			TopReplace C;
	repeat with C running through temporarily-displaced clothing: [This should happen even if the player is in danger]
		now C is not temporarily-displaced;
	now the units collected of M is 0;
	now resting is 0.

To say RestingDesc of (F - a milking bench):
	say "You [one of][or]continue to [stopping]kneel on the bench.";

Milking Bench ends here.

