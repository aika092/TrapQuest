Drink Effects by Drinks begins here.


[!<Bottle>@<ComputeCursedDrinking>+

REQUIRES COMMENTING

+@!]
To compute cursed drinking (X - a bottle):
	compute default cursed drinking X.


To compute default cursed drinking (X - a bottle):
	if the fill-type of X > highest-cursed and the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 1, say "This [if the fill-type of X is 20][semen][otherwise if the fill-type of X is 21][urine][otherwise if the fill-type of X is 22][milk][otherwise]ungodly mix of bodily fluids[end if] tastes [if the fill-type of X is 22]much[otherwise]even[end if] more bitter than usual!";
	otherwise say "[one of]Ugh, this does not taste nice at all. A cursed drink?[or]Another cursed drink. Nasty![or]Another cursed drink. Eww![or]Another cursed drink. How many are there?![or]Another cursed drink. Fuck![stopping]";
	let R be a random number from 1 to (7 + alcohol fetish);
	if the fill-type of X is lowest-cursed, now R is 9;
	if debuginfo > 0:
		if alcohol-level > 0:
			say "[input-style]Normal cursed drink roll: Overridden; player is getting drunk[roman type][line break]";
			now R is 8;
		otherwise if R is 9:
			say "[input-style]Normal cursed drink roll: Overridden; [fill-colour of X] is arousal drink[roman type][line break]";
		otherwise if diaper quest is 0:
			say "[input-style]Normal cursed drink roll: d[7 + alcohol fetish] ([R]) | 1) Sex addiction + 1; 2) Hair + 1; 3) Dex - 1; 4) Strength - 1; 5) Penis - 1 / Breasts + 2; 6) Hips + 2; 7) Str&Dex&Int - 1[if alcohol fetish is 1]; 8) Alcohol[end if][roman type][line break]";
		otherwise:
			say "[input-style]Normal cursed drink roll: d[7 + alcohol fetish] ([R]) | 1) Sex addiction + 1; 2) Hair + 1; 3) Dex - 1; 4) Strength - 1; 5-6) Penis - 1 / Arousal + 2000; 7) Str&Dex&Int - 1[if alcohol fetish is 1]; 8) Alcohol[end if][roman type][line break]";
	if R is 1:
		let S be the raw sex addiction of the player;
		SexAddictUp 1;
		if S is the raw sex addiction of the player, say "You feel a naughty thought trying to worm its way into your mind, but you force it away.";
	if R is 2, HairUp 1;
	if R is 3:
		say "You feel slightly less flexible.";
		DexDown 1;
	if R is 4:
		say "You feel slightly less strong.";
		StrengthDown 1;
	if R is 5:
		if the size of penis > min penis size:
			PenisDown 1;
			say "Your [player-penis] [shrink]s into a [ShortDesc of penis].";
		otherwise if diaper quest is 1:
			now R is 8;
		otherwise:
			let L be the largeness of breasts;
			BustUp 2;
			if L is the largeness of breasts, say "Your chest feels slightly heavier."; [No automatic flavour so we add in a bit of our own.]
	if R is 6:
		if diaper quest is 1:
			if the size of penis > min penis size:
				PenisDown 1;
				say "Your [player-penis] [shrink]s into a [ShortDesc of penis].";
			otherwise:
				now R is 8;
		otherwise:
			say "You feel your hips try to widen!";
			HipUp 1;
	if R is 7:
		say "You feel awful! You're a little weaker, slower and can't think as clearly...";
		StrengthDown 1;
		DexDown 1;
		IntDown 1;
	if R is 8:
		if alcohol fetish is 0:
			now R is 9;
		otherwise:
			say "It tastes extremely alcoholic! It's like you just drank a double-shot of vodka. All your abilities are dimmed until you sober up.";
			if alcohol <= 0, increase alcohol level;
			increase alcohol level;
	if R is 9:
		say "Your crotch feels all tingly!";
		passively stimulate vagina times 3.


[!<overfullQuotient:Integer>*

REQUIRES COMMENTING

*!]
overfull-quotient is a number that varies. overfull-quotient is 8.

[!<Bottle>@<ComputeDrinking>+

REQUIRES COMMENTING

+@!]
To compute drinking (X - a bottle):
	if the X is cursed or (the fill-type of X >= lowest-cursed and the fill-type of X <= highest-cursed):
		if X is blessed:
			say "This tastes a bit bitter, but could be worse. Somehow the blessing of your vessel is counteracting the curse of the liquid!";
			now the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 1;
			if a random number between 1 and 5 > 3:
				curse X;
				say "You sense that the blessing of your [X] has been nullified.";
			now the curse-ID of X is sure;
		otherwise if X is gold chalice and X is not cursed:
			if the fill-type of X > highest-cursed and the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 1, say "This [if the fill-type of X is 20][semen][otherwise if the fill-type of X is 21][urine][otherwise if the fill-type of X is 22][milk][otherwise]ungodly mix of bodily fluids[end if] tastes [if the fill-type of X is 22]much[otherwise]even[end if] more bitter than usual!";
			otherwise say "[one of]Ugh, this does not taste nice at all. A cursed drink?[or]Another cursed drink. Nasty![or]Another cursed drink. Eww![or]Another cursed drink. How many are there?![or]Another cursed drink. Fuck![stopping] ";
			say "Luckily, the gold chalice seems to somehow absorb the curse!";
			now the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 1;
			curse X;
			now the curse-ID of X is sure;
		otherwise:
			 if (the fill-type of X >= lowest-cursed and the fill-type of X <= highest-cursed) and X is sure and X is not cursed:
				now the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 1; [the vessel wasn't cursed so the potion must have been!]
			if (the fill-type of X < lowest-cursed or the fill-type of X > highest-cursed) and the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 1:
				now the curse-ID of X is sure; [We know this potion is good so the vessel must be cursed!]
			compute cursed drinking X;
		progress quest of curse-drinking-quest from the fill-type of X;
	otherwise:
		if the fill-type of X < lowest-cursed and the stomach of the player > stomach-max and the stomach-water of the player > 2 and a random number between 1 and the stomach of the player > overfull-quotient:
			say "With your stomach so full, you to fail to properly appreciate the taste, and the effects are wasted.";
			now the curse-ID of X is sure; [We know this potion is good so the vessel must be fine too!]
		otherwise:
			compute drinking effect the fill-type of X;
			if the fill-type of X < lowest-cursed or the fill-type of X > highest-cursed or (X is can or (X is sure and X is not cursed)):
				now the curse-ID of X is sure;
				now the Known corresponding to an Magic of the fill-type of X in the Table of Drinks is 1;
	if X is blessed:
		let A be a random number between 1 and 3;
		if the fill-type of X >= lowest-cursed and the fill-type of X <= highest-cursed, now A is 1;
		if X is gold chalice, now A is 2;
		if A is 1:
			curse X;
			if the curse-ID of X is sure, say "You feel the blessing of your [X] expire.".

[!<ComputeDrinkingEffectN>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - a number):
	do nothing.

[!<ComputeDrinkingEffect1>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 1):
	say "[if the the Known corresponding to an Magic of N in the Table of Drinks is 0]Mmm, a sweet sugary taste. You feel your self-respect returning as you drink it![otherwise]More self-respect restoring potion. Delicious![end if]";
	dignify 800;
	if the noun is blessed, dignify 700.

thickDrinkTick is a number that varies.

[!<ComputeDrinkingEffect2>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 2):
	say "[if the Known corresponding to an Magic of N in the Table of Drinks is 0]Mmm, a thick drink with a dry taste. [otherwise]More thick sanity potion. Excellent! [end if]";
	if a random number between 1 and 8 < the sex addiction of the player, SexAddictDown 1;
	if thickDrinkTick is 0:
		now thickDrinkTick is 1;
		TitfuckAddictDown 1;
		AnalSexAddictDown 1;
		BBCAddictDown 1;
	otherwise:
		now thickDrinkTick is 0;
		DiaperAddictDown 1;
		OralSexAddictDown 1;
		VaginalSexAddictDown 1.


[!<ComputeDrinkingEffect3>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 3):
	say "[if the Known corresponding to an Magic of N in the Table of Drinks is 0]Mmm, you can definitely taste a hint of caffeine. You feel clear-headed![otherwise if the raw intelligence of the player >= the starting intelligence of the player and the noun is not blessed]It doesn't seem to have any effect.[otherwise]More energy drink. Your eyes widen![end if]";
	if the raw intelligence of the player < the starting intelligence of the player and the sex addiction of the player < 20, IntUp 1; [Intelligence is difficult to increase once sex addiction hits max]
	if the noun is blessed, Intup 1.

[!<ComputeDrinkingEffect4>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 4):
	if diaper quest is 1, say "[if the Known corresponding to an Magic of N in the Table of Drinks is 0]Mmm, a nice smooth drink. [otherwise]Another stabilising drink. Lovely! [end if]";
	otherwise say "[if the Known corresponding to an Magic of N in the Table of Drinks is 0]Mmm, a nice smooth drink. [otherwise]Another weight loss drink. Lovely! [end if]";
	if diaper quest is 1:
		if incontinence < 10 and incontinence > a random number between 0 and 4:
			say "You feel slightly more in control of your bodily functions.";
		otherwise:
			say "You feel some pressure lifted from your [if diaper lover > 2]bowels and [end if]bladder.";
			decrease the bladder of the player by 2;
			if the bladder of the player < 0, now the bladder of the player is 0;
			if rectum > 1:
				decrease rectum by 1;
				if rectum < 1, now rectum is 1;
	otherwise if the fat-weight of the player > 0 and weight gain fetish is 1:
		FatDown 1;
		say "You feel lighter!";
	otherwise if the raw largeness of hair > 1 and a random number between 1 and 2 is 1:
		HairDown 2;
		say "You feel your hair shrink in size.";
	otherwise:
		if the thickness of hips > the real thickness of hips and (the thickness of hips > the largeness of breasts or the flesh volume of breasts <= the real flesh volume of breasts):
			HipDown 1;
			say "You feel thinner!";
		otherwise if the flesh volume of breasts > the real flesh volume of breasts:
			Bustdown 3;
			say "You feel lighter!";
		otherwise:
			say "Your breasts and hips refuse to shrink...";
	if the noun is blessed:
		if the thickness of hips > the largeness of breasts, HipDown 1;
		otherwise Bustdown 1.

[!<ComputeDrinkingEffect5>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 5):
	say "[if the Known corresponding to an Magic of N in the Table of Drinks is 0]Mmm, a very heavy drink. You hold your head a bit higher as this drink gives you a boost of confidence![otherwise]Another heavy drink. You feel less submissive![end if]";
	DelicateDown 1;
	if the noun is blessed or a random number between 1 and 3 is 1:
		PenisUp 1.

[!<ComputeDrinkingEffect6>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 6):
	if the Known corresponding to an Magic of N in the Table of Drinks is 0, say "Mmm, tastes like medicine! ";
	otherwise say "More soothing medicine! ";
	say "You feel [if the soreness of asshole > 0 or the soreness of vagina > 0]less sore[end if][if (the soreness of asshole > 0 or the soreness of vagina > 0) and the arousal of the player >= 3000] and [end if][if the arousal of the player >= 3000]a bit less aroused[end if][if the soreness of asshole <= 0 and the soreness of vagina <= 0 and the arousal of the player < 3000]vaguely more clear-headed[end if].";
	heal asshole times 3;
	heal vagina times 3;
	if the arousal of the player > 2000, decrease the arousal of the player by 2000.

[!<ComputeDrinkingEffect7>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 7):
	say "[if the Known corresponding to an Magic of N in the Table of Drinks is 0]This drink fizzes and bubbles in your mouth! [otherwise]Another magic bubbly drink![end if]";
	let C be a random positive-magic-enhanceable in-play clothing;
	if C is in the location of the player or C is held:
		say "You see the [C] glow blue for a moment as it turns into a ";
		increase the raw-magic-modifier of C by 1;
		now C is identified;
		say "[C]!";
	otherwise:
		increase the raw-magic-modifier of C by 2;
		if the raw-magic-modifier of C > 5, now the raw-magic-modifier of C is 5;
		now C is identified;
		say "You sense that something good has happened, but you don't know where[if debugmode >= 1] (DEBUG: It was the [C] in the [location of C])[end if].".


Definition: a clothing (called C) is positive-magic-enhanceable:
	if C is not magic-enhanceable, decide no;
	if the raw-magic-modifier of C < 0, decide no;
	decide yes.

Definition: a clothing is magic-enhanceable if it is cursable.


[!<ComputeDrinkingEffect20>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 20):
	if the Known corresponding to an Magic of N in the Table of Drinks is 0:
		say "A slimy feel, and a bitter salty taste. [if the semen taste addiction of the player < 6]Yuck! Your worst fears are confirmed, you just drank someone's [semen]![otherwise if the semen taste addiction of the player < 10]Holy shit, this drink is someone's [semen]![otherwise if the semen taste addiction of the player < 13]Oh, looks like you're drinking someone's [semen]! It's actually quite tasty though.[otherwise]Oh yay, it's your favourite drink, some unknown stud's [semen]![end if]";
	otherwise:
		say "A slimy feel, and a bitter salty taste. Yep, that's some more [semen], [if the semen taste addiction of the player < 6]yuck![otherwise if the semen taste addiction of the player < 10]how naughty.[otherwise if the semen taste addiction of the player < 13]not bad.[otherwise]your favourite drink![end if]";
	StomachSemenUp 1;
	progress quest of creampie-drinking-quest.

[!<ComputeDrinkingEffect21>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 21):
	if the Known corresponding to an Magic of N in the Table of Drinks is 0:
		if the urine taste addiction of the player < 10, say "A very bitter taste. Yuck, yuck, yuck, it's [urine]![one of] You feel completely humiliated[if the humiliation of the player > 22500], which of course just turns you on even more[end if].[or].[or].[in random order]";
		otherwise say "A very bitter taste. Ooh yum, it's [urine]!";
	otherwise:
		say "You close your eyes and drink the [if the urine taste addiction of the player > 11]tasty [end if][urine]. [if the urine taste addiction of the player < 7]You shudder with shame and disgust.[otherwise if the urine taste addiction of the player < 13]You catch yourself licking your lips afterwards![otherwise]You lick your lips with glee.[end if]";
	humiliate 175;
	UrineTasteAddictUp 1;
	progress quest of piss-drinking-quest.

[!<ComputeDrinkingEffect22>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 22):
	if the Known corresponding to an Magic of N in the Table of Drinks is 0:
		say "A very familiar taste. Oh nice, it's [milk]! That must be healthy.";
	otherwise:
		say "[one of]A[or]Another[stopping] healthy gulp of [milk]. Yum!";
	MilkDrunkUp 1;
	if the noun is blessed, increase the fat-burning of the player by 100;
	if diaper quest is 1, progress quest of puddle-licking-quest;
	progress quest of milk-drinking-quest.

[!<ComputeDrinkingEffect23>+

REQUIRES COMMENTING

+!]
To compute drinking effect (N - 23):
	say "You close your eyes and drink the mix of liquids.[one of] You cringe and shudder in shame[if the humiliation of the player > 29500], which of course just turns you on even more[end if].[or].[or].[in random order]";
	humiliate 250;
	StomachSemenUp 1;
	if lactation fetish is 1, increase the fat-burning of the player by 250.


Drink Effects ends here.
