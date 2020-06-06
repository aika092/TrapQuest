Weight Gain by Player begins here.

Part 1 - Calculate Weight Stats

[!<DecideWhichNumberIsTheFatWeightOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the fat-weight of the player:
	let F be the flesh volume of thighs + the flesh volume of arms + the flesh volume of hips + the flesh volume of belly;
	if F > 0, decide on F;
	decide on 0.

[!<DecideWhichNumberIsTheWeightOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the weight of the player:
	let B be 0;
	repeat with P running through body parts:
		increase B by the weight of P;
	now B is B / 3; [Some attempted balancing]
	increase B by 10; [This is how much the head and the rest of the player's body weighs. In reality of course it would be much larger but for the purposes of potentially having players floating, this is what it will be.]
	if butterfly wings is worn, decrease B by 3;
	if the latex-transformation of the player > 6 and B > 0, now B is 0; [THIS SHOULD NOT BE NECESSARY, but at the moment it is here as a failsafe.]
	decide on B.

[!<DecideWhichNumberIsTheRelievedHeavinessOfThing>+

REQUIRES COMMENTING

+!]
To decide which number is the relieved heaviness of (H - a thing):
	if H is currently-in-bag, decide on 0;
	decide on the heaviness of H.

Report examining a carried thing:
	if the relieved heaviness of the noun > 0:
		say "It ";
		if there is a worn bag of holding, say "can't go in your bag of holding[if the noun is messed knickers] (because of the biological waste on it)[otherwise if the noun is wet clothing] (because of the liquid soaked into it)[end if] so it ";
		say "is currently [if the relieved heaviness of the noun > 4]massively[otherwise if the relieved heaviness of the noun > 2]significantly[otherwise if the relieved heaviness of the noun > 1]noticeably[otherwise]slightly[end if] weighing you down.";

To decide which number is the heaviness of (H - a thing):
	decide on 0.

weightSaved is a number that varies.

savedInventoryWeight is a number that varies.
savedWornWeight is a number that varies.

[!<DecideWhcihNumberIsInventoryWeight>+

REQUIRES COMMENTING

+!]
To decide which number is inventory weight:
	if weightSaved is 0, update weight;
	decide on savedInventoryWeight.

[!<DecideWhichNumberIsWornWeight>+

REQUIRES COMMENTING

+!]
To decide which number is worn weight:
	if weightSaved is 0, update weight;
	decide on savedWornWeight.

To update weight:
	let W be 0;
	repeat with H running through carried things:
		increase W by the relieved heaviness of H;
	now savedInventoryWeight is W / 3;
	now W is 0;
	repeat with H running through worn things:
		increase W by the heaviness of H;
	now savedWornWeight is W / 5;
	now weightSaved is 1.

Report examining held thing:
	let H be 0.0;
	if the noun is carried:
		now H is the relieved heaviness of the noun / 3;
	otherwise:
		now H is the heaviness of the noun / 5;
	if H > 0.35:
		say "It is weighing you down a [if H >= 1.2]huge amount[otherwise if H >= 0.9]large amount[otherwise if H > 0.5]decent amount[otherwise]bit[end if].";
	otherwise if H > 0.0:
		say "It doesn't weigh you down much to [if the noun is carried]have this in your inventory[otherwise]wear this[end if].".

[!<DecideWhichNumberIsFatigueWeight>+

Base calculation on how much fatigue goes up by each turn while standing.

+!]
To decide which number is fatigue weight:
	decide on (((inventory weight + worn weight + the weight of the player) scaled) * 5) / (10 + (background-sporty * 2)).

[!<DecideWhichNumberIsItemWeight>+

Base calculation on how much items are weighing the player down.

+!]
To decide which number is item weight:
	decide on ((inventory weight + worn weight) * 10) / (10 + (background-sporty * 2)).

Definition: yourself is overburdened if item weight > 6.

An all later time based rule (this is the reset overburdened rule):
	now weightSaved is 0.

overburdenWarned is initially false.
An all later time based rule (this is the overburdened warning rule):
	if overburdenWarned is false:
		now overburdenWarned is true;
		if the player is overburdened, say "[bold type]You are wearing and carrying a lot of heavy stuff[if there is worn bag of holding] that can't go in your bag[end if]. Your dexterity will be reduced until you drop some.[roman type][line break]".

Report taking something:
	follow the reset overburdened rule. [This means that we'll recalculate weight after this action]
Report wearing something:
	follow the reset overburdened rule. [This means that we'll recalculate weight after this action]
Report dropping something:
	follow the reset overburdened rule. [This means that we'll recalculate weight after this action]
Report taking off something:
	follow the reset overburdened rule. [This means that we'll recalculate weight after this action]

Part 2 - Manage Fat Stats

[!<CarryOutGoing>+

REQUIRES COMMENTING

+!]
Carry out going:
	if the player is upright:
		compute upright fatigue gain;
		if inventory weight > 10:
			if newbie tips is 1, say "[one of][newbie style]Newbie tip: Woah there! You're carrying an awful lot of stuff in your inventory. Every item in your inventory, except a small few (e.g. the pink pill), weighs you down, meaning your fatigue increases faster. Clothing you're wearing weighs you down a lot lot less than the clothing you're carrying. Metal items and drinks tend to weigh even more than everything else. You should consider making a trip back to the starting room, and put all your spare stuff you can't wear in the pink wardrobe, where it'll be safe even if you faint.[roman type][line break][or][stopping]";
		if inventory weight > 15:
			if newbie tips is 1, say "[one of][newbie style]Newbie tip: Warning! You are extremely overloaded. You need to carry around less stuff than that if you want to be able to remain standing for a long period of time.[roman type][line break][or][stopping]";
	if there is a worn ball-and-chain:
		say "Your [ShortDesc of a random worn ball-and-chain] drags heavily behind you.";
		if the player is prone:
			FatigueUp 1.[even when kneeling]

An all time based rule (this is the training rule):
	let MD be milk-exercise-bonus;
	if MD > 10, now MD is 10;
	let FBT be (40 - (exercise theme bonus * 40)) + ((the raw dexterity of the player + the raw strength of the player) * (25 - MD));
	if the flesh volume of thighs > 0 or the flesh volume of belly > 0:
		if debuginfo > 1, say "[input-style]Exercise check: exercise count ([fat-burning of the player]) | (400) exercise target[if exercise theme bonus > 0] (minus exercise theme bonus of [exercise theme bonus * 40])[end if][roman type][line break]";
		if the fat-burning of the player > (400 - (exercise theme bonus * 40)):
			while the fat-burning of the player > 0:
				let R be a random number between 1 and 2;
				if R is 1 and the flesh volume of thighs > 0:
					if debuginfo > 0, say "[input-style]Exercise choice: thighs fatness [flesh volume of thighs] -> ";
					FatThighsDown 1;
					if debuginfo > 0, say "[flesh volume of thighs][roman type][line break]";
					now the fat-burning of the player is 0;
				if R is 2 and the flesh volume of belly > 0:
					if debuginfo > 0, say "[input-style]Exercise choice: belly fatness [flesh volume of belly] -> ";
					FatBellyDown 1;
					if debuginfo > 0, say "[flesh volume of belly][roman type][line break]";
					now the fat-burning of the player is 0;
			say "[bold type]Your recent exercise has helped you stay fit![roman type] You can tell that you've burned some calories.";
	otherwise if the fat-burning of the player > FBT:
		if debuginfo > 0, say "[input-style]Exercise threshold reached: exercise count ([fat-burning of the player]) | [FBT] = ([25 - MD] = 25 - ([MD]) historic milk consumption) * ([raw strength of the player + raw dexterity of the player] = ([raw strength of the player ]) strength + ([raw dexterity of the player]) dexterity) + (40) exercise base[if exercise theme bonus > 0] (minus exercise theme bonus of [exercise theme bonus * 40])[end if][roman type][line break]";
		if a random number between 1 and 2 is 1 and the raw strength of the player < 20 + MD:
			say "[bold type]Your recent exercise has helped you stay fit![roman type] You can tell that you're a bit stronger now.";
			StrengthUp 1;
		otherwise if the raw dexterity of the player < 20 + MD:
			say "[bold type]Your recent exercise has helped you stay fit![roman type] You can tell that you're a bit faster now.";
			DexUp 1;
		otherwise if the raw strength of the player < 20 + MD:
			say "[bold type]Your recent exercise has helped you stay fit![roman type] You can tell that you're a bit stronger now.";
			StrengthUp 1;
		otherwise:
			say "[bold type]You feel extremely proud of your tip top athletic shape![roman type]";
			dignify 2000;
		now the fat-burning of the player is 0;
		decrease milk-exercise-bonus by 1.

Part 3 - Modify Fat Stats

[!<Player>@<fatBurning:Integer>*

REQUIRES COMMENTING

*@!]
The player has a number called fat-burning. The fat-burning of the player is usually 0.

[!<FatUpX>+

REQUIRES COMMENTING

+!]
To FatUp (X - a number):
	if weight gain fetish is 1:
		if the latex-transformation of the player > 3, now X is 0;
		while X > 0:
			let R be a random number between 1 and 4;
			if R is 1, FatThighsUp 1;
			if R is 2, FatArmsUp 1;
			if R is 3, FatBellyUp 1;
			if R is 4, FatAssUp 1;
			decrease X by 1;
		if the fat-weight of the player > 35:
			say "[one of][line break][variable custom style]If I keep gaining weight I won't even be able to stand...[roman type][line break][FatCutscene 3][or][stopping]";
		otherwise if the fat-weight of the player > 23:
			say "[one of][line break][variable custom style]When did I get so fat?![roman type][line break][FatCutscene 2][or][stopping]";
		otherwise if the fat-weight of the player > 11:
			say "[one of][line break][variable custom style]I've started to put on the pounds, haven't I...[roman type][line break][FatCutscene 1][or][stopping]".

[!<FatDownX>+

REQUIRES COMMENTING

+!]
To FatDown (X - a number):
	if heavyweight tattoo is worn and a random number between 0 and X > 0, decrease X by 1;
	while X > 0:
		FatThighsDown 1;
		FatArmsDown 1;
		FatBellyDown 1;
		FatAssDown 1;
		decrease X by 1.

[!<FatCutsceneNumber>+

REQUIRES COMMENTING

+!]
To say FatCutscene (N - a number):
	if N is 1, appropriate-cutscene-display figure of fat growth 1;
	if N is 2, appropriate-cutscene-display figure of fat growth 2;
	if N is 3, appropriate-cutscene-display figure of fat growth 3.

[!<ComputeFatBurningReset>+

REQUIRES COMMENTING

+!]
To compute fat burning reset:
	say "You feel that by resting here, all the recent exercise you have done has gone to waste.";
	now the fat-burning of the player is 0;
	now the fat-burning of arms is 0;
	now the fat-burning of hips is 0.

Part 4 - Describe Fat Stats

[!<SayInventoryWeightDesc>+

REQUIRES COMMENTING

+!]
To say InventoryWeightDesc:
	say "[if inventory weight > 20]You are carrying much too many items and this is forcing you to rest on your knees extremely frequently.[otherwise if inventory weight > 16]You are carrying a large number of items that weigh you down a huge amount.[otherwise if inventory weight > 12]You are weighed down a large amount by the items you are carrying.[otherwise if inventory weight > 8]You are weighed down a significant amount by the items you are carrying.[otherwise if inventory weight > 4]The items you are carrying are weighing you down a bit.[otherwise if inventory weight > 0]The items you are carrying hardly weigh anything at all.[otherwise][line break][end if]".

Weight Gain ends here.
