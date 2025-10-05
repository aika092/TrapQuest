Milking Bench by Furniture begins here.

milking bench is a kind of furniture. A milking bench has a number called units collected. A milking bench is not permanent fixture. The printed name of milking bench is "[TQlink of item described]milking bench[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of milking bench is "mb". Understand "milking", "bench" as milking bench.


A milking bench lever is a kind of thing. A milking bench lever can be lever-pulled. A milking bench lever is not portable. The printed name of a milking bench lever is "[TQlink of item described]lever on the wall[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of milking bench lever is "mbl". Understand "lever", "on the wall" as milking bench lever.
Definition: a milking bench lever is immune to change: decide yes.
To say ExamineDesc of (C - a milking bench lever):
	say "There's a lever sticking out of the wall, with a large green plus sign and a large red minus sign as the two settings painted on the wall next to it. It is currently pointing [if C is lever-pulled]upwards, towards the green plus sign[otherwise]downwards, towards the red minus sign[end if].";
	if newbie tips is 1, say "[newbie style]When this lever is set to the green plus sign, resting on the milking bench with your nipples exposed will cause you to gain very large amounts of lactation and breast size.[roman type][line break]".
Check pulling a milking bench lever:
	if the player is immobile or the player is in danger, say "You're a bit busy, aren't you?" instead;
	if the player is not able to manually use their hands, do nothing instead;
	if the player is prone, say "The lever is too high up. You'd need to be standing." instead;
	allocate 2 seconds;
	if the noun is lever-pulled:
		say "You pull the lever down, so it is now pointing to the large red minus sign.";
		now the noun is not lever-pulled;
		if the player is not top heavy:
			repeat with M running through reactive gladiators:
				say "[speech style of M]'[one of]Coward! A brave adventurer wouldn't be afraid of a little breast enhancement.'[or]Weakling! A bold explorer would have no fear of developing their [BreastDesc] further!'[or]Hah! Such [BreastDesc] are clearly in need of improvement!'[in random order][roman type][line break][BigNameDesc of M] says haughtily.";
				FavourDown M with consequences;
		otherwise:
			repeat with M running through reactive gladiators:
				say "[speech style of M]'[one of]Your [BreastDesc] are impressive! I doubt they could grow any further. Yet all the same... Let us see what might happen if we try anyway, o brave adventurer!'[or]I must confess your [BreastDesc] are impressive. Yet perhaps the magic of this device might yet have some interesting effect upon a bold adventurer such as yourself, eh?'[or]I have always wished to see what effect this strange apparatus might have on one blessed with [BreastDesc] sucah as yours.'[or]Hmm, I'm sure you're eager to see whether even your [BreastDesc] might be [']enhanced['] somehow if we do this...'[in random order][roman type][line break][BigNameDesc of M] says with a [one of]dangerous[or]concerning[or]ominous[or]crazed[in random order] [one of]smirk[or]gleam in their eye[or]expression[in random order]."; [Selkie: might be fun one day to add a chance for something to happen here in some circumstances?]
		if the class of the player is not cultist:
			repeat with M running through reactive acolytes:
				say "[speech style of M]'Unbeliever, that is not yours to meddle with!'[roman type][line break][BigNameDesc of M] snarls.";
				FavourDown M with consequences;
	otherwise:
		say "You pull the lever up, so it is now pointing to the large green plus sign.";
		now the noun is lever-pulled;
	do nothing instead.
To construct normal buttons for (T - a milking bench lever):
	if ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of HandsButton;
		now the ButtonCommand entry is "pull [text-shortcut of T]";
		now the ButtonColour entry is lightModeFullGreen;
		if the player is prone, now the ButtonColour entry is lightModeFullYellow; [turn yellow - player needs to stand]
		if the player is immobile or the player is in danger or the player is not able to use their hands, now the ButtonColour entry is lightModeFullRed. [turn red - player unable to reach]
To say verb-desc of (T - a milking bench lever):
	if inline hyperlinks >= 2 and the text-shortcut of T is not "", say " [unique-verb-desc of T][link][bracket]pull[close bracket][as]pull [text-shortcut of T][end link]".


Report going when there is a milking bench in the location:
	if lactation fetish is 1, compute addiction reflection on "milk".

mansion-milking-bench is a milking bench.
mansion-milking-bench-lever is a milking bench lever.
dungeon-milking-bench is a milking bench.
dungeon-milking-bench-lever is a milking bench lever.
Definition: mansion-milking-bench is immune to change: decide yes.

To decide which figure-name is the examine-image of (C - dungeon-milking-bench):
	decide on figure of milking bench dungeon.
To decide which figure-name is the examine-image of (C - mansion-milking-bench):
	decide on figure of milking bench mansion.
To decide which figure-name is the examine-image of (C - a milking bench lever):
	if C is lever-pulled, decide on figure of milking bench lever 2;
	otherwise decide on figure of milking bench lever 1.

To say ExamineDesc of (C - a milking bench):
	say "A bench you could kneel and rest on. There are cups that are clearly for milking swollen mammaries.".

Figure of milking bench mansion is the file "Env/Mansion/milkingbench1.png".
Figure of milking bench dungeon is the file "Env/Dungeon/milkingbench1.jpg".
Figure of milking bench lever 1 is the file "Env/Dungeon/milkingbenchlever1.jpg".
Figure of milking bench lever 2 is the file "Env/Dungeon/milkingbenchlever2.jpg".
Figure of milking bench cutscene 1 is the file "Special/Cutscene/cutscene-milking-bench1.jpg".
Figure of milking bench cutscene 2 is the file "Special/Cutscene/cutscene-milking-bench2.png".
Figure of milking bench cutscene 3 is the file "Special/Cutscene/cutscene-milking-bench3.jpg".
Figure of milking bench cutscene 4 is the file "Special/Cutscene/cutscene-milking-bench4.jpg".
Figure of milking bench cutscene 5 is the file "Special/Cutscene/cutscene-milking-bench5.jpg".
Figure of milking bench cutscene 6 is the file "Special/Cutscene/cutscene-milking-bench6.jpg".

To compute furniture resting on (M - a milking bench):
	let enhancing-enabled be false;
	let LV be a random milking bench lever in the location of M;
	if LV is a thing and LV is lever-pulled, now enhancing-enabled is true;
	let milking-allowed be 1;
	let milking-increased-doses be false;
	if there is worn actually not-top-displacable milking unflappable actually nipple covering clothing or the class of the player is living sex doll:
		now milking-allowed is 0;
	otherwise if (the milk volume of breasts >= 0 or enhancing-enabled is true) and there is worn actually nipple covering clothing and the player is able to use their hands and the player is not wrist bound behind:
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
	if (the milk volume of breasts > 0 or enhancing-enabled is true) and milking-allowed >= 1:
		let MT be a random milk-tank in the location of M;
		say "The suckers leap up and latch onto your [if the milk volume of breasts > 0][milk] filled [BreastDesc][otherwise]nipples. They don't find any milk inside, but they seem to have a different plan for you[end if]!";
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
		if the milk volume of breasts > 0:
			now milking is 1;
			let MPT be 1; [units of milk collected. increases by 1 every turn to avoid infinite loops with high lactation]
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
				otherwise if the class of the player is "cheerleader" and denim-overalls is off-stage and denim-overalls is unclash summonable:
					unclash class summon denim-overalls;
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
		otherwise:
			now milking is -1;
		if M is in the location of the player:
			if LV is a thing and LV is lever-pulled, now enhancing-enabled is true; [someone might have pulled it while the player was getting milked]
			say "The machine finally stops milking you[if milking-increased-doses is false and milking is 0]. There wasn't enough milk to significantly increase the level of the fluid in the milk tank, but your small contribution will surely be taken into account the next time you get milked[end if].";
			if enhancing-enabled is true, compute milk enhancing of M;
			[if milking-increased-doses is true and a random number between 1 and max breast size > the largeness of breasts, BustUp 1;]
			if the alert of the player is 0, say "[if the bimbo of the player < 11][line break][first custom style]I feel so much better![otherwise][line break][second custom style]I'm full of energy again. Yum![end if][roman type][line break]";
		progress quest of milking-quest;
		now player-currently-resting is 0;
		now milking is 0;
		if the alert of the player is 0, try standing;
		otherwise try looking;
	otherwise:
		while the fatigue of the player > 0 and the alert of the player is 0 and the player is in the location of M:
			compute fatigue refresh of M;
			if LV is a thing and LV is lever-pulled and the number of worn actually nipple covering clothing is 0: [will only usually happen from the lever being pulled mid-rest]
				say "Suddenly, milking pumps fly out and latch onto your nipples!";
				compute milk enhancing of M;
		while the body soreness of the player > 0 and the alert of the player is 0 and the player is in the location of M:
			compute soreness refresh of M;
			if LV is a thing and LV is lever-pulled and the number of worn actually nipple covering clothing is 0: [will only usually happen from the lever being pulled mid-rest]
				say "Suddenly, milking pumps fly out and latch onto your nipples!";
				compute milk enhancing of M;
		if the alert of the player is 1:
			compute alerting of M;
		otherwise:
			compute rest completion of M;
	let C be a random worn temporarily-displaced actually top-replacable clothing;
	while C is temporarily-displaced clothing:
		repeat with CC running through worn temporarily-displaced actually top-replacable clothing:
			if the top-layer of CC < the top-layer of C, now C is CC;
		say "You replace your [ShortDesc of C].";
		TopReplace C;
		now C is not temporarily-displaced;
		now C is a random worn temporarily-displaced actually top-replacable clothing;
	repeat with CC running through temporarily-displaced clothing: [This should happen even if the clothing couldn't be replaced]
		now CC is not temporarily-displaced;
	now player-currently-resting is 0.

To say RestingDesc of (F - a milking bench):
	say "You [one of][or]continue to [stopping]kneel on the bench.".

To compute milk enhancing of (M - a milking bench):
	say "Suddenly, before the milking pumps let go, you watch some sort of pink liquid being pumped in the opposite direction, through the tubes and into your nipples! ";
	let B be the largeness of breasts;
	BustUp 5;
	if B < the largeness of breasts, now the alert of the player is 1;
	if the lactation rate of breasts < 10:
		say "[bold type]Your [BreastDesc] suddenly feel VERY active.[roman type][line break]";
		now the lactation rate of breasts is 10;
		now the alert of the player is 1;


Milking Bench ends here.
