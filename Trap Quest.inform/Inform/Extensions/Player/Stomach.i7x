Stomach by Player begins here.

To decide which number is the stomach-liquid of the player:
	decide on the stomach-water of the player + the stomach-semen of the player + the stomach-milk of the player + the stomach-urine of the player.

To decide which number is the stomach of the player:
	decide on the stomach-liquid of the player + the stomach-food of the player.

To decide which number is stomach-max:
	decide on 14.

Definition: yourself is overly full:
	if the stomach of the player > stomach-max, decide yes;
	decide no.

Definition: yourself is almost too full:
	if the stomach of the player is stomach-max or the stomach of the player is stomach-max - 1, decide yes;
	decide no.

old-fullness-bonus is a number that varies.

To decide which number is fullness-bonus:
	if diaper quest is 0 or diaper messing < 3 or the number of worn soilable knickers is 0 or the stomach of the player + 1 < stomach-max, decide on 0;
	decide on potential-fullness-bonus.

To decide which number is potential-fullness-bonus:
	if the stomach-food of the player > 4, decide on 3; [we don't want this to be too crazy]
	decide on (the stomach-food of the player + 1) / 2.

An all later time based rule (this is the satiated causes bonus strength rule):
	unless the player is in a predicament room:
		let F be fullness-bonus;
		if F > old-fullness-bonus:
			if old-fullness-bonus is 0, say "[bold type]Now that you're full of food and drink, and [if there is a worn diaper]properly padded[otherwise]wearing underwear[end if], you feel the game [one of]making you feel incredible and[or]once again[stopping] rewarding you with [if F > 2]huge amounts of [otherwise if F > 1]large amounts of [end if]strength![roman type][line break]";
			otherwise say "[bold type]As the amount of food digesting in your well-satisfied stomach increases, you feel your strength continue to improve[one of] as well[or][stopping]![roman type][line break]";
			now old-fullness-bonus is F;
		otherwise if F < old-fullness-bonus:
			if F > 0:
				say "As your stomach digests some of its food contents, your bonus strength decreases.";
			otherwise if potential-fullness-bonus is 0:
				say "Now that your stomach has digested most of its food contents, your bonus strength has disappeared.";
			otherwise if the player is not almost too full:
				say "Now that you feel less full, your bonus strength has disappeared.";
			otherwise:
				say "Now that you are not wearing [if diaper messing >= 5]underwear[otherwise]a diaper[end if], your bonus strength from feeling full has disappeared.";
			now old-fullness-bonus is F.

To StomachUp (X - a number):
	if the latex-transformation of the player > 4, now X is 0;
	while X > 0:
		increase the stomach-water of the player by 1;
		decrease X by 1.

To StomachDown (X - a number):
	let S be 0;
	let U be 0;
	let M be 0;
	while X > 0:
		if the stomach-water of the player >= the stomach-milk of the player:
			if the stomach-water of the player >= the stomach-urine of the player:
				if the stomach-water of the player >= the stomach-semen of the player:
					decrease the stomach-water of the player by 1;
					if watersports mechanics is 1, increase the delayed bladder of the player by 1;
				otherwise:
					increase S by 1;
			otherwise:
				increase U by 1;
		otherwise:
			increase M by 1;
		decrease X by 1;
	if S > 0, StomachSemenDown S;
	if U > 0, StomachUrineDown U;
	if M > 0, StomachMilkDown M.

To StomachFoodUp (X - a number):
	if the latex-transformation of the player > 4, now X is 0;
	while X > 0:
		now DQMessingHunger is false; [Hunger mechanics go back to inactive for players who were magically made hungry]
		increase the stomach-food of the player by 1 + xavier-belt-link;
		if xavier-throat-link is 1 and rectum > 0 and diaper messing >= 3, increase rectum by 1 + xavier-belt-link;
		decrease X by 1.

To StomachFoodDown (X - a number):
	while X > 0:
		if the stomach-food of the player > 0:
			decrease the stomach-food of the player by 1;
			if there is a worn bib and the stomach-food of the player is 0, say "[bold type]As you become hungry, you feel your bib lose its power and your muscles weaken.[roman type][line break]";
		decrease X by 1.

Definition: a thing is facefucker: decide no. [Can it make the player gag]
Definition: gloryhole is facefucker: decide yes.
Definition: a monster is facefucker:
	if it is male or it is neuter, decide yes;
	decide no.

To StomachSemenUp (X - a number):
	if X > 0:
		let M be a random wrapped monster penetrating face;
		if M is monster:
			compute condom filling of M;
		otherwise:
			compute slightly addictive swallowing of semen by X;
		if there is a facefucker thing penetrating face:
			OralSexAddictUp 1;
			progress quest of cum-swallowing-quest.

To ActualStomachSemenUp (X - a number):
	let SU be a random number between 0 and 1;
	if lipstick collar is worn, increase X by 1;
	if the latex-transformation of the player > 4:
		AssFill X;
		now X is 0;
	if X > 0:
		say SemenEncounterFlav;
		now cold turkey of semen is 0;
		if the stomach-food of the player < 2, now the stomach-food of the player is 2; [Improves hunger]
		if the semen volume of belly > 0, compute cumdumpsterification;
	while X > 0:
		increase the stomach-semen of the player by 1;
		decrease X by 1;
		if X is SU and the trophy-mode of ejaculate-trophy is 0, SlowSemenTasteAddictUp 1; [so half the time, 2 units of semen are required for semen taste addiction to increase]

To StomachSemenDown (X - a number):
	if the stomach-semen of the player > 0:
		while X > 0:
			if the stomach-semen of the player > 0:
				decrease the stomach-semen of the player by 1;
				if watersports mechanics is 1, increase the delayed bladder of the player by 1;
			decrease X by 1.

To StomachUrineUp (X - a number):
	if X > 0, compute slightly addictive swallowing of urine by X.

To ActualStomachUrineUp (X - a number):
	while X > 0:
		decrease X by 1;
		increase the stomach-urine of the player by 1;
		if X is 0:
			SlowUrineTasteAddictUp 1;
			trigger drink-urine-wisp-quest;
			progress quest of piss-drinking-quest;
			now cold turkey of urine is 0.

To StomachUrineDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the stomach-urine of the player > 0:
			if watersports mechanics is 1, increase the delayed bladder of the player by 1;
			decrease the stomach-urine of the player by 1.

To StomachMilkUp (X - a number):
	if X > 0, compute slightly addictive swallowing of milk by X.

To ActualStomachMilkUp (X - a number):
	while X > 0:
		decrease X by 1;
		increase the stomach-milk of the player by 1;
		if X is 0:
			StomachFoodUp 1;
			SlowMilkTasteAddictUp 1;
			trigger drink-milk-wisp-quest;
			now cold turkey of milk is 0;
			progress quest of milk-drinking-quest.

To StomachMilkDown (X - a number):
	while X > 0:
		decrease X by 1;
		if the stomach-milk of the player > 0:
			if watersports mechanics is 1, increase the delayed bladder of the player by 1;
			decrease the stomach-milk of the player by 1;
			if the fat-weight of the player < milk-drunk * 2, FatUp 1;
			increase milk-exercise-bonus by 1.

Stomach ends here.
