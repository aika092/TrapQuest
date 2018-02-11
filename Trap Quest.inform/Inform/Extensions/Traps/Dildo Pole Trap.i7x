Dildo Pole Trap by Traps begins here.


[!<DildoTrap>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
A dildo trap is a kind of trap.   A dildo trap is usually potentially wire.  The text-shortcut of a dildo trap is "dt".

[!<DildoTrap>@<target:TargetEnum>*

REQUIRES COMMENTING

*@!]
A dildo trap can be anal or vaginal.  A dildo trap is usually anal.

[!<YourselfIsDildoStuck>+

REQUIRES COMMENTING

+!]
Definition: yourself is dildo stuck:
	if there is a dildo trap penetrating a fuckhole, decide yes;
	decide no.


[!<DildoTrap>@<SayShortDesc>+

REQUIRES COMMENTING

+@!]
To say ShortDesc of (T - a dildo trap):
	say "A pole protrudes from a hole in the floor with a dildo on the end.  ".


[!<DildoTrap>@<WhichNumberIsTheGirth>+

REQUIRES COMMENTING

+@!]
To decide which number is the girth of (D - a dildo trap):
	decide on 3.

[!<DildoTrap>@<CheckTakingOff>+

REQUIRES COMMENTING

+@!]
Check taking off dildo trap:
	if the noun is penetrating a fuckhole, say "You can't just remove it with all your weight on it.  You're going to have to jump!" instead.


[!<DildoPoleTrap>@<Trigger>+

REQUIRES COMMENTING

+@!]
To trigger (Y - a dildo pole trap):
	trigger pole trap Y;
	if Y is penetrating a fuckhole and image cutscenes is 1, compute pole cutscene image of Y.

[!<DildoTrap>@<ComputeOrgasmResolution>+

REQUIRES COMMENTING

+@!]
To compute orgasm resolution of (R - a dildo trap):
	now the stance of the player is 1;
	say "The dildo retracts as your knees buckle, sliding out as you fall to the floor.".


[!<DildoTrap>@<ComputePoleCutsceneImage>+

REQUIRES COMMENTING

+@!]
To compute pole cutscene image of (Y - a dildo trap):
	if Y is penetrating asshole:
		display figure of pole cutscene 3;
	otherwise if a random number between 1 and 2 is 1:
		display figure of pole cutscene 1;
	otherwise:
		display figure of pole cutscene 2.


[This does the majority of the mechanics for a standard dildo trap entering you.]
[!<DildoTrap>@<TriggerPoleTrap>+

REQUIRES COMMENTING

+@!]
To trigger pole trap (Y - a dildo trap):
	now the motion of the player is 0;
	now the reset-timer of Y is 250;
	if the player is prone:
		if the class of the player is living sex doll:
			say "A dildo on a pole shoots out of a trap door underneath you and hits you sharply on the forehead, knocking you onto your feet.";
			unless the player is immobile, now the stance of the player is 0;
		otherwise if a random number between 1 and 12 > the dexterity of the player:
			say "A dildo on a pole shoots out of a trap door underneath you and hits you sharply on the forehead, knocking you out cold.";
			[Note this can only happen with massive breasts when crawling]
			now delayed fainting is 1;
			now the fainting reason of the player is 5;
		otherwise:
			say "A dildo on a pole shoots out of a trap door underneath you and narrowly misses your face.  Phew, that could have been quite ugly...";
	if the player is mounted:
		if the player is on a skippy ball:
			say "A dildo on a pole [one of]shoots[or]ejects[at random] out of a trap door underneath you and ejects you.";
			Bounce Bigtime;
	otherwise:
		now Y is not untriggered;
		now Y is revealed;
		say "[bold type]A dildo on a pole shoots out of a trap door underneath you and towards your crotch![roman type][line break]";
		if the player is a butt slut or the player is male, now Y is anal;
		let target-check be 0;
		if Y is anal and the player is ass protected, now target-check is 1;
		if Y is vaginal and the player is pussy protected, now target-check is 1;
		[Having an the orifice already occupied overrides all other checks]
		if Y is anal and asshole is actually occupied, now target-check is 2;
		if Y is vaginal and vagina is actually occupied, now target-check is 2;
		if target-check is 2:
			if Y is anal, let P be a random thing filling asshole;
			otherwise let P be a random thing filling vagina;
			say "The dildo [one of]forcefully bashes[or]hammers[or]slams[at random] into your [if Y is anal][printed name of random thing filling asshole][otherwise][printed name of random thing filling vagina][end if], [if P is jelldo]which [one of]absorbs most of[or]cushions[or]softens[or]muffles[at random] the blow, protecting your sensitive hole[otherwise]sending powerful vibrations flying through your sensitive hole![end if]";
			if P is jelldo:
				do nothing;
			otherwise if Y is anal:
				let P be a random thing filling asshole;
				ruin asshole times 2;
				if P is anal beads and the notch-taken of P < the notches of P:
					increase the notch-taken of P by 1;
					say "Another bead is forced inside!";
			otherwise:
				let P be a random thing filling vagina;
				ruin vagina times 2;
				if P is anal beads and the notch-taken of P < the notches of P:
					increase the notch-taken of P by 1;
					say "Another bead is forced inside!";
		otherwise if target-check is 1:
			let O be a random top level protection clothing worn by the player;
			if O is a random bottom level protection clothing worn by the player:
				let A be a random number between 5 and 12;
				let D be the anal defence of the player;
				if Y is vaginal, now D is the vaginal defence of the player;
				if debugmode is 1, say "[line break]Player [D].5 | [A] Dildo Pole[line break]";
				if A > D and O is not diaper and O is not chastity cage:
					if Y is anal:
						now Y is penetrating asshole;
						say "You gasp as the dildo goes straight through your [printed name of O] and into your [asshole]!  ";
						ruin asshole;
					otherwise:
						now Y is penetrating vagina;
						say "You gasp as the dildo goes straight through your [printed name of O] and into your [vagina]!  ";
						ruin vagina;
					if O is rippable:
						say "Your [printed name of O] is now torn at the crotch.";
						rip O;
					otherwise:
						say "Your [printed name of O] is destroyed.";
						destroy O;
				otherwise:
					if O is diaper:
						say "The dildo hits the thick padding of your [O] with a dull thud, which converts the violent force into a gentle, [if the sex addiction of the player < 5]almost [end if]pleasurable nudging against your [genitals].";
						arouse 550;
					otherwise:
						say "Your [printed name of O] blocks the dildo which bounces off harmlessly.  The [if O is rigid]material is damaged[otherwise][clothing-material of O] material of the clothing is stretched[end if] a little by the attack.";
						damage O;
						damage O;
			otherwise:
				[If there is more than one layer of clothing, then automatic failure]
				say "It bounces off your [printed name of O] harmlessly!";
		otherwise:
			[If there is nothing blocking, then there's a chance of it hitting the player's huge butt cheeks]
			let A be a random number between 5 and 12;
			if debugmode is 1, say "[line break]Player [the defence of the player].5 | [A] Dildo Pole[line break]";
			if A > the defence of the player:
				if Y is anal:
					now Y is penetrating asshole;
					say "You gasp as the dildo goes straight into your [asshole]!";
					ruin asshole;
				otherwise:
					now Y is penetrating vagina;
					say "You gasp as the dildo goes straight into your [vagina]!";
					ruin vagina;
			otherwise:
				say "The dildo bounces harmlessly off your [HipDesc].".

[!<YourselfIsPoleStuck>+

Doesn't include drill traps

+!]
Definition: a yourself is pole stuck:
	if there is a dildo pole trap penetrating a fuckhole, decide yes;
	if there is a creampie pole trap penetrating a fuckhole, decide yes;
	if there is a ghostly dildo pole trap penetrating a fuckhole, decide yes;
	decide no.

	
[!<JumpFromTheDildo>+

REQUIRES COMMENTING

+!]
To Jump From The Dildo:
	now seconds is 6;
	let Y be a random trap penetrating a fuckhole;
	if the player is clothing stuck:
		let C be a random stuck clothing worn by the player;
		if C is cursed:
			say "Your [printed name of C] [if C is shoes]are[otherwise]is[end if] stuck, stopping you from jumping off the dildo!";
		otherwise:
			say "You can't jump because your [printed name of C] is stuck in place.";
	otherwise if there are worn heels:
		let H be a random worn heels;
		let D be the dexterity of the player;
		let W be the weight of the player;
		let Hi be the hindrance of H + (W / 5);
		if the hindrance of H > 5:
			if sex fainting is 0:
				compute automatic jump success of Y;
			otherwise:
				say "You aren't steady enough to jump in these heels, there's just no way you can use your ankles to jump with these on!";
		otherwise if Hi / 2 > D:
			if sex fainting is 0:
				compute automatic jump success of Y;
			otherwise:
				say "Your body is just too heavy[if the hindrance of H > 1] and your heels are too high[end if], you don't have the dexterity you need to jump off the dildo!";
		otherwise:
			let R be a random number between Hi / 2 and Hi;
			if debugmode is 1, say "[line break]Player [D * 5].5 | [R] Dildo Pole[line break]";
			if D < R:
				if Y is penetrating vagina:
					say "You manage to jump whilst in your heels and the dildo very almost exits you, but then you fall back on it hard!  [if a random trap penetrating a fuckhole is dildo pole trap]You basically just fucked yourself with the dildo![otherwise]As you fuck yourself with the dildo, it squirts even more warm [semen] into your [vagina]![end if][line break][if the bimbo of the player < 14]Damn, maybe try again?[otherwise][second custom style]Again again![roman type][end if]";
					ruin vagina;
					if a random trap penetrating a fuckhole is creampie pole trap, WombFill 2;
				otherwise:
					say "You manage to jump whilst in your heels and the dildo very almost exits you, but then you fall back on it hard!  [if a random trap penetrating a fuckhole is dildo pole trap]You basically just fucked yourself with the dildo![otherwise]As you fuck yourself with the dildo, it squirts even more warm [semen] into your [asshole]![end if][line break][if the bimbo of the player < 14]Damn, maybe try again?[otherwise][second custom style]Again again![roman type][end if]";
					ruin asshole;
					if a random trap penetrating a fuckhole is creampie pole trap, assFill 2;
			otherwise:
				say "You manage to jump whilst in your heels and the dildo exits you, and luckily you jump high enough that it misses your crotch on the way back down, and bends at an awkward angle.";
				now busy is 0;
				if a random number between 1 and 6 is 1, HairRedDown 1;
				repeat with X running through all dildo traps:
					if X is penetrating a fuckhole:
						now X is not penetrating asshole;
						now X is not penetrating vagina;
						now X is expired;
	otherwise:
		say "You jump and the dildo exits you, and luckily you jump high enough that it misses your crotch on the way back down, and bends at an awkward angle.";
		now busy is 0;
		dislodge Y;
		now Y is expired.

[!<ComputeAutomaticJumpSuccessOfTrap>+

REQUIRES COMMENTING

+!]
To compute automatic jump success of (Y - a trap):
	say "Your high heels cause you to have to make the tiniest of movements as you try and inch yourself off the dildo, slowly fucking yourself raw.";
	now the soreness of a random fuckhole penetrated by Y is 10;
	now busy is 0;
	dislodge Y;
	now Y is expired.

Part 1 - Dildo Pole Trap

[!<DildoPoleTrap>@

REQUIRES COMMENTING

@inherits <DildoTrap>

@!]
A dildo pole trap is a kind of dildo trap.  There are 10 dildo pole traps.  The printed name of dildo pole trap is "[TQlink of item described]dildo pole trap[TQxlink of item described][verb-desc of item described]".  The description of a dildo pole trap is "A metal pole with a flesh coloured dildo on the end.  It rises so high up off the ground that even on tip toes you [if item described is penetrating a body part]can't[otherwise]wouldn't be able to[end if] get it out of your [if item described is penetrating vagina][vagina]!  [otherwise][asshole]!  [end if]Maybe if you [bold type]jump[roman type] high enough you can get off it?".

[!<TheSpawnInitialDildoPoleTrapsRule>+

REQUIRES COMMENTING

+!]
This is the spawn initial dildo pole traps rule:
	if diaper quest is 0:
		repeat with N running from 1 to 4:
			let R be a random untrapped trappable placed labyrinth room;
			let T be a random off-stage dildo pole trap;
			unless there is a dildo trap in R, deploy T in R.
The spawn initial dildo pole traps rule is listed in the set up dungeon traps rules.




Part 2 - Drill Pole Trap

[!<DrillPoleTrap>@

REQUIRES COMMENTING

@inherits <DildoTrap>

@!]
A drill pole trap is a kind of dildo trap.  There are 10 drill pole traps.  The printed name of drill pole trap is "[TQlink of item described]drill pole trap[TQxlink of item described][verb-desc of item described]".  The description of a drill pole trap is "A metal pole with a flesh coloured dildo on the end.  When it is inside you, it spins rapidly!".

[!<TheSpawnInitialDrillPoleTrapsRule>+

REQUIRES COMMENTING

+@!]
This is the spawn initial drill pole traps rule:
	if diaper quest is 0:
		repeat with N running from 1 to 4:
			let R be a random untrapped trappable placed jungle room;
			let T be a random off-stage drill pole trap;
			unless there is a dildo trap in R, deploy T in R.
The spawn initial drill pole traps rule is listed in the set up woods traps rules.

[!<YourselfIsDrillStuck>+

Drill traps only

+!]
Definition: a thing is drill stuck:
	if there is a drill pole trap penetrating a fuckhole, decide yes;
	decide no.

[!<DrillPoleTrap>@<Trigger>+

REQUIRES COMMENTING

+@!]
To trigger (Y - a drill pole trap):
	trigger pole trap Y;
	if Y is penetrating a fuckhole:
		if image cutscenes is 1, compute pole cutscene image of Y;
		say "After it shoots in, it starts to spin round, pushing its way deeper.  When it is fully inside you, it doesn't stop spinning!".

[!<DrillPoleTrap>@<ComputeOrgasmResolution>+

REQUIRES COMMENTING

+@!]
To compute orgasm resolution of (R - a drill pole trap):
	if a random number between 1 and 4 - unlucky < 2:
		let D be a random off-stage plentiful dong;
		if D is nothing, now D is a random off-stage plentiful plug;
		say "The pole clicks as your knees buckle, [bold type]detaching from the dildo, which remains inside of you[roman type] as you fall to the floor.";
		if R is penetrating vagina, summon D vaginally;
		otherwise summon D;
		now D is cursed;
	otherwise:
		say "The dildo retracts as your knees buckle, sliding out as you fall to the floor.".

[!<JumpFromTheDrill>+

REQUIRES COMMENTING

+!]
To Jump From The Drill:
	let X be a random drill pole trap penetrating a fuckhole;
	if the raw sex addiction of the player < 20: [Unmodified sex addiction]
		let R be the soreness of a random fuckhole penetrated by X + (a random number from 2 to 5) - (the relevant sex addiction of X / 4);
		if the latex-transformation of the player > 3 or the player is not able to get horny or the player is not a bit horny, now R is 99999;
		if R >= the arousal of the player / 750:
			say "You jump and the drilling dildo exits you, and thankfully this makes it stop spinning and pushing upwards.  You are able to successfully escape from the [if the sex addiction of the player < 15]torture[otherwise][second custom style]fun ride[roman type][end if]!";
			now busy is 0;
			now X is not penetrating asshole;
			now X is not penetrating vagina;
			now X is expired;
		otherwise:
			if the player is very horny:
				say "You're so desperate for an orgasm that you're finding it difficult to bring yourself to try to jump free.  Try again?";
			otherwise if the player is not a bit horny:
				say "The extreme spinning of the dildo has left you temporarily stunned and unable to move!  Try again?";
			otherwise:
				say "You're currently enjoying the feeling of the spinning dildo too much to bring yourself to jump off it.  Try again?";
	otherwise:
		say "You can no longer even attempt to gather your thoughts enough to jump from the spinning dildo.  Even if you could, your body is now in a mixture of pain and ecstasy that you are now completely addicted to.  The drilling rubber phallus forces you to have orgasm after shameful orgasm, but quickly your mind goes blank and you white out.";
		now the fainting reason of the player is 17;
		execute fainting.

Part 3 - Creampie Pole Trap

[!<CreampiePoleTrap>@

REQUIRES COMMENTING

@inherits <DildoTrap>

@!]
A creampie pole trap is a kind of dildo trap.  There are 10 creampie pole traps.  The printed name of creampie pole trap is "[TQlink of item described][if pregnancy fetish is 1]insemination[otherwise]creampie[end if] pole trap[TQxlink of item described][verb-desc of item described]".  The description of a creampie pole trap is "A metal pole with a flesh coloured dildo on the end.  It has a hole in the tip which shoots [semen] upon successful penetration.[one of]  It rises so high up off the ground that even on tip toes you can't get it out of your [if item described is vaginal][vagina]![otherwise][asshole]![end if][or]  Maybe if you [bold type]jump[roman type] high enough you can get off it?[or][stopping]".  A creampie pole trap is usually father material.  Understand "insemination" as a creampie pole trap.

[!<TheSpawnInitialCreampiePoleTrapsRule>+

REQUIRES COMMENTING

+!]
This is the spawn initial creampie pole traps rule:
	if diaper quest is 0:
		repeat with N running from 1 to 4:
			let R be a random untrapped trappable placed modern room;
			let T be a random off-stage creampie pole trap;
			unless there is a dildo trap in R, deploy T in R.
The spawn initial creampie pole traps rule is listed in the set up hotel traps rules.



[!<CreampiePoleTrap>@<Trigger>+

REQUIRES COMMENTING

+@!]
To trigger (Y - a creampie pole trap):
	trigger pole trap Y;
	if Y is penetrating a fuckhole:
		let B be the largeness of belly;
		say "Your insides feel weird as the rubber toy shoots a gratuitous load of warm [semen] inside you!  This is [one of]some kind of[or]another[stopping] [if pregnancy fetish is 1]insemination[otherwise]creampie[end if] trap!";
		if Y is penetrating vagina:
			if image cutscenes is 1:
				let R be a random number between 1 and 3;
				if R is 1:
					display figure of creampie pole cutscene 1;
				otherwise if R is 2:
					display figure of creampie pole cutscene 2;
				otherwise:
					display figure of creampie pole cutscene 3;
			WombFill 6;
		if Y is penetrating asshole:
			if image cutscenes is 1:
				let R be a random number between 1 and 2;
				if R is 1:
					display figure of creampie pole cutscene 4;
				otherwise:
					display figure of creampie pole cutscene 5;
			AssFill 6;
		if the largeness of belly > B, say "You feel your belly physically expand.";
	otherwise:
		let X be a random worn top level protection clothing;
		if X is nothing:
			say "The dildo suddenly starts squirting inhuman amounts of warm [semen] from its tip!  Your thighs get coated.";
			CumThighsUp 6;
		otherwise:
			say "The dildo suddenly starts squirting inhuman amounts of warm [semen] from its tip!  Your [printed name of X] gets coated.";
			Cumsoak 6 on X.

[!<CreampiePoleTrap>@<ComputeOrgasmResolution>+

REQUIRES COMMENTING

+@!]
To compute orgasm resolution of (R - a creampie pole trap):
	if a random number between 1 and 2 - unlucky < 2:
		let D be a random off-stage dong;
		if D is nothing or D is throbbing-tentacle, let D be a random off-stage plug;
		say "The pole clicks as your knees buckle, [bold type]detaching from the dildo, which remains inside of you[roman type] as you fall to the floor.";
		if R is penetrating vagina, summon D vaginally;
		otherwise summon D;
		now D is cursed;
	otherwise:
		say "The dildo retracts as your knees buckle, sliding out as you fall to the floor.".

Part 4 - Ghostly Dildo Pole Trap

[!<GhostlyDildoPoleTrap>@

REQUIRES COMMENTING

@inherits <DildoTrap>

@!]
A ghostly dildo pole trap is a kind of dildo trap.  There are 10 ghostly dildo pole traps.  The printed name of ghostly dildo pole trap is "[TQlink of item described]ghostly dildo pole trap[TQxlink of item described][verb-desc of item described]".  The description of a ghostly dildo pole trap is "A seemingly incorporeal pole with a translucent dildo on the end.".

[!<TheSpawnInitialGhostlyDildoPoleTrapsRule>+

REQUIRES COMMENTING

+@!]
This is the spawn initial ghostly dildo pole traps rule:
	if diaper quest is 0:
		repeat with N running from 1 to 4:
			let R be a random untrapped trappable placed haunted room;
			let T be a random off-stage ghostly dildo pole trap;
			unless there is a dildo trap in R, deploy T in R.
The spawn initial ghostly dildo pole traps rule is listed in the set up mansion traps rules.

[!<GhostlyDildoPoleTrap>@<Trigger>+

REQUIRES COMMENTING

+@!]
To trigger (Y - a ghostly dildo pole trap):
	now the motion of the player is 0;
	now the reset-timer of Y is 250;
	if the player is prone:
		say "A ghostly dildo on a pole shoots out of a trap door underneath you and passes straight through your body.  That was weird...";
	otherwise:
		now Y is not untriggered;
		now Y is revealed;
		let target-check be 0;
		say "[bold type]A ghostly dildo on a pole shoots out of a trap door underneath you and towards your crotch![roman type][line break]";
		if the player is a butt slut or the player is male, now Y is anal;
		if Y is anal and asshole is actually occupied, now target-check is 2;
		if Y is vaginal and vagina is actually occupied, now target-check is 2;
		if target-check is 2:
			say "The dildo forcefully bashes into your [if Y is anal][printed name of random thing filling asshole][otherwise][printed name of random thing filling vagina][end if], sending powerful vibrations flying through your sensitive hole!";
			if Y is anal:
				let P be a random thing filling asshole;
				ruin asshole times 2;
				if P is anal beads and the notch-taken of P < the notches of P:
					increase the notch-taken of P by 1;
					say "Another bead is forced inside!";
			otherwise:
				let P be a random thing filling vagina;
				ruin vagina times 2;
				if P is anal beads and the notch-taken of P < the notches of P:
					increase the notch-taken of P by 1;
					say "Another bead is forced inside!";
		otherwise:
			let O be a random top level protection clothing worn by the player;
			[###Selkie: Should O also be damaged by this?]
			if Y is anal:
				now Y is penetrating asshole;
				say "You gasp as the dildo goes straight [if O is clothing]through your [printed name of O], as if it wasn't there, and [end if]into your [asshole]!";
				ruin asshole;
			otherwise:
				now Y is penetrating vagina;
				say "You gasp as the dildo goes straight [if O is clothing]through your [printed name of O], as if it wasn't there, and [end if]into your [vagina]!";
				ruin vagina.

[!<GhostlyDildoPoleTrap>@<ComputeOrgasmResolution>+

REQUIRES COMMENTING

+!]
To compute orgasm resolution of (R - a ghostly dildo pole trap):
	if a random number between 1 and 30 - creepiness - (unlucky * 5)< 2:
		let D be a random off-stage dong;
		if D is nothing or D is throbbing-tentacle, let D be a random off-stage plug;
		say "The dildo detaches from the pole as your knees buckle, solidifying completely into a [printed name of D] as you fall to the floor.";
		sizeUp D by 1;
		if R is penetrating vagina, summon D vaginally;
		otherwise summon D;
		now D is cursed;
	otherwise:
		say "The dildo retracts as your knees buckle, sliding out as you fall to the floor.".




Dildo Pole Trap ends here.
