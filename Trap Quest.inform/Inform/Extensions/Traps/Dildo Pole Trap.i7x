Dildo Pole Trap by Traps begins here.


[!<DildoTrap>@

REQUIRES COMMENTING

@inherits <Trap>

@!]
A dildo trap is a kind of trap. A dildo trap is usually potentially wire. The text-shortcut of a dildo trap is "dt".


[!<DildoTrap>@<target:TargetEnum>*

REQUIRES COMMENTING

*@!]
A dildo trap can be anal or vaginal. A dildo trap is usually anal.

[!<YourselfIsDildoStuck>+

REQUIRES COMMENTING

+!]
Definition: yourself is dildo stuck:
	if there is a dildo trap penetrating a fuckhole, decide yes;
	decide no.

[!<DildoTrap>@<SayEnvironmentDesc>+

This is what is put in the room description when the trap is visible (revealed).

+@!]
To say EnvironmentDesc of (T - a dildo trap):
	say "A pole protrudes from a hole in the floor with a dildo on the end. ".

To say ShortDesc of (T - a dildo trap):
	say "pole-mounted dildo".


[!<DildoTrap>@<WhichNumberIsTheGirth>+

REQUIRES COMMENTING

+@!]
To decide which number is the girth of (D - a dildo trap):
	decide on 3.

[!<DildoTrap>@<CheckTakingOff>+

REQUIRES COMMENTING

+@!]
Check taking off dildo trap:
	if the noun is penetrating a fuckhole, say "You can't just remove it with all your weight on it. You're going to have to jump!" instead.


[!<DildoPoleTrap>@<Trigger>+

REQUIRES COMMENTING

+@!]
To trigger (Y - a dildo pole trap):
	trigger pole trap Y;
	if Y is penetrating a fuckhole and image cutscenes is 1, compute pole cutscene image of Y.

[!<DildoTrap>@<ComputeOrgasmResolution>+

This occurs when the player orgasms while on a dildo trap. Just previous to this, the dildo got dislodged.

+@!]
To compute orgasm resolution of (R - a dildo trap):
	compute orgasm retraction of R.

To compute orgasm retraction of (R - a dildo trap):
	say "The dildo retracts as your knees buckle, pulling free as you fall to the floor.".


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
			now Y is not untriggered;
			now Y is revealed;
		otherwise if a random number between 1 and 12 > the dexterity of the player:
			say "A dildo on a pole shoots out of a trap door underneath you and hits you sharply on the forehead, knocking you out cold.";
			[Note this can only happen with massive breasts when crawling]
			now delayed fainting is 1;
			now the fainting reason of the player is 5;
		otherwise:
			say "A dildo on a pole shoots out of a trap door underneath you and narrowly misses your face. Phew, that could have been quite ugly...";
			now Y is not untriggered;
			now Y is revealed;
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
			say "The dildo [one of]forcefully bashes[or]hammers[or]slams[at random] into your [if Y is anal][ShortDesc of random thing filling asshole][otherwise][ShortDesc of random thing filling vagina][end if], [if P is jelldo]which [one of]absorbs most of[or]cushions[or]softens[or]muffles[at random] the blow, protecting your sensitive hole[otherwise]sending powerful vibrations flying through your sensitive hole![end if]";
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
				if debuginfo > 0, say "[input-style]Pole penetration check: accuracy roll d8+4 ([A]) | ([D].5) orifice defence[roman type][line break]";
				if A > D and O is not diaper and O is not chastity cage:
					compute Y penetration of O;
				otherwise:
					if O is diaper:
						say "The dildo hits the thick padding of your [ShortDesc of O] with a dull thud, which converts the violent force into a gentle, [if the sex addiction of the player < 5]almost [end if]pleasurable nudging against your [genitals].";
						arouse 550;
					otherwise:
						say "Your [ShortDesc of O] blocks the dildo which bounces off harmlessly. The [if O is rigid]material is damaged[otherwise][clothing-material of O] material of the clothing is stretched[end if] a little by the attack.";
						damage O;
						damage O;
			otherwise:
				[If there is more than one layer of clothing, then automatic failure]
				say "It bounces off your [ShortDesc of O] harmlessly!";
		otherwise:
			[If there is nothing blocking, then there's a chance of it hitting the player's huge butt cheeks]
			let A be a random number between 5 and 12;
			if debuginfo > 0, say "[input-style]Pole penetration check: accuracy roll d8+4 ([A]) | ([defence of the player].5) butt cheek defence[roman type][line break]";
			if A > the defence of the player:
				compute Y penetration of nothing;
			otherwise:
				say "The dildo bounces harmlessly off your [HipDesc].".

To compute (Y - a dildo trap) penetration of (C - an object):
	let G be nothing; [Groin: will be pussy or anus]
	if Y is anal:
		now G is asshole;
	otherwise:
		now G is vagina;
	now Y is penetrating G;
	say "You gasp as the dildo goes straight [if C is not nothing]through your [printed name of C] and[end if] into your [variable G]!";
	ruin G;
	if C is not nothing:
		if C is not clothing:
			say "Programming error: someone passed non-clothing to compute dildo penetration";
		otherwise if C is rippable:
			say "Your [ShortDesc of C] is now torn at the crotch.";
			rip C;
		otherwise:
			say "Your [ShortDesc of C] is destroyed.";
			destroy C;
	if Y is penetrating G and the number of worn ballet related wearthing >= 2:
		say "[one of]But that's not all! There's a padded flange at the base of the dildo, and you feel it press up against your [variable G]. It lifts your feet right off the floor! OMG! You won't be able to jump off this trap![or]Once again, you feel the padded rim squish your [variable G] and lift you bodily off the floor![stopping]";
		now doll-stuck is "[one of]turn[or]rotate[or]twirl around[at random] like a [one of]pretty[or]dainty[or]delicate[at random] [one of]ballerina dolly[or]toy ballerina[at random] in a music box";
		now doll-stuck-num is 1;
		now doll-stuck-kind is 1; [ballerina]
		say "You slowly [doll-stuck]. [one of]Your ankles flex, trying futilely to stretch down to touch the floor, but it's useless! You're impaled, suspended helplessly above the ground. And then the pole starts slowly turning, and of course, you move with it, unable to do anything to prevent it.  A wave of humiliation washes through you, and the dildo briefly vibrates, as if sensing your shame and rubbing it in. But how will you ever get off here?[line break]As if in response to your thought, a picture of a pretty ballerina in a frilly, wispy tutu, turning in a music box, flashes into your mind[or]You try to stretch your toes to the floor, but fail[or]The tinkly music starts up again, as the pole starts turning you[stopping]. You feel a mental pressure to submit, and adopt the required pose.".

[Aika said:
Currently submitting only works on live things penetrating a body part.
Since dildo traps aren’t alive we need some additional code to make sure
the game doesn’t tell the player they’re not allowed to do it.
Suggested:
"Check submitting when there is a dildo trap penetrating a fuckhole and there is worn ballet related clothing:"
and
"Check resisting when there is a dildo trap penetrating a fuckhole and there is worn ballet related clothing:"
But doll-stuck is set when a dildo trap penetrates you and you're wearing
enough clothing to trigger the doll scene.
]
Check submitting when doll-stuck-num > 0 and there is a dildo trap penetrating a fuckhole:
	DollyPose instead.
Check waiting when doll-stuck-num > 0 and there is a dildo trap penetrating a fuckhole:
	try resisting instead.

To compute unique dislodging of (T - a dildo trap):
	if doll-stuck-num > 0:
		say "The music stops.";
		now doll-stuck is "";
		now doll-stuck-num is 0;
		now doll-stuck-kind is 0.

[!<DollObservationHumiliation>+

Check for monsters standing by as the player is posed on the pole, and have the
dangerous and expectant ones react, increasing the humiliation.

+@!]
To compute DollObservation humiliation:
	if doll-stuck-num is 0: [Just being defensive]
		stop;
	[For each (hostile-ish?) monster watching, adding its contribution.]
	repeat with M running through intelligent monsters in the location of the player:
		[Could test for friendly or unfriendly in the taunting function]
		compute the dildo stuck taunting of M;
		if M is friendly:
			if the humiliation of the player <= HUMILIATION-MODEST, say "[one of]You hope [he of M] won't think less of you.[or][variable custom style]How embarrassing![variable custom style][or]You sense [he of M] losing respect for you.[or]How bad would it be if they let your friends watch through the eyes of these NPCs?[or]Mild disgust curdles [his of M] expression.[or][Big he of M] looks highly unimpressed by your shameful display.[in random order]";
			otherwise say "[one of][variable custom style]I wonder if [he of M] is enjoying the show?[roman type][line break][or][variable custom style]What does [he of M] want?[roman type][line break][or][Big his of M] disgust actually makes the experience more exciting.[or][Big he of M] shakes [his of M] head at your lewd display.[in random order]";
			FavourDown M;
		humiliate MODERATE-HUMILIATION;
	[Sex dolls are not intelligent. But I think it'd be especially humiliating to be posing like a doll in front of a doll.]
	repeat with M running through sex dolls in the location of the player:
		compute the dildo stuck taunting of M;
		humiliate MODERATE-HUMILIATION.

[!<DollyPose>+

Describe what the player does and how they feel, when they Submit to the pole's urge to pose.
That will then make watching monsters react.
They no longer react if you're resisting, only if submitting.

+@!]
To DollyPose:
	now seconds is 6;
	let T be a random dildo trap penetrating a fuckhole;
	if Doll-stuck-kind is 1:
		say "You arch both arms over your head like you've seen ballerinas do. The dildo vibrates angrily and [one of]you sense it wants more. You[or]you know what that means. You[or]it's trained you to know what that means. You[stopping] curve your fingers elegantly, touching the tips together. [one of]Smiling prettily, you hold the pose and keep the smile fixed as you slowly turn[or]With a rictus grin, you rotate on your pole as the music tinkles out[or]You smile sickly, arms arched prettily, toes pointed, turning on your mounting pole[at random]. ";
	otherwise:
		say "You wonder if someone forgot to make some special programming for this case? You guess a new type of doll been added since the ballerina. You feel a bit uncertain as to what the invading pole wants you to do, but you guess it basically just wants to humiliate you, and so you grimace and adopt an embarrassing pose, and hope for the best. Or is that 'worst'? ";
	say "You [BlushPrettily].";
	compute DollObservation humiliation;
	if doll-stuck-num > a random number between 0 and 1:
		say "You [doll-stuck] one last time and then the dildo trap slows and lowers, letting your toes touch the ground, then your heels, and finally the shaft slips out of you... with a wet, sucking slurp, making it sound as if you were [i]trying[/i] to hold it still inside you! Your cheeks burn.";
		humiliate MODERATE-HUMILIATION;
		dislodge T;
	otherwise:
		increase doll-stuck-num by 1.

Check resisting when doll-stuck-num > 0:
	say "You [BlushPrettily], refusing to make yourself look any more ridiculous than you already are.";
	let T be a random dildo trap penetrating a fuckhole;
	[compute DollObservation humiliation;] [Aika has commented this out as I think resisting should be punished with soreness but rewarded by not having NPCs jeer at you]
	if doll-stuck-num > 2: [Aika decided 3 turns of resisting is enough for it to get tired. Tracking humiliation gain to allow release is dangerous, what if the player is at max humiliation or for some other reason can't gain more right now? Selkie says: Oops. Yeah.]
		say "The dildo trap seems to decide it's punished you enough and lowers you to the ground. Your toes touch, then your heels, and it finally slurps free of you with a wet 'pop'.";
		dislodge T;
	otherwise:
		say "The pole gives a brief angry vibration, as if determined to punish you for your resistance!";
		increase doll-stuck-num by 1;
	if T is penetrating a fuckhole, ruin a random fuckhole penetrated by T; [Seems clear to Aika that this should go after the narration. Added a check in case the player is let go. Selkie: It does mean if they orgasm, they suffer no damage that round, probably fair enough!]
	now seconds is 6;
	do nothing instead.

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
	if doll-stuck-num > 0:
		say "How? Your feet aren't even touching the ground. You [doll-stuck].";
		increase doll-stuck-num by 1;
		now seconds is 6;
		stop;
	now seconds is 6;
	let Y be a random trap penetrating a fuckhole;
	let H be a random worn hindrance-enabling shoes;
	if the player is clothing stuck:
		let C be a random stuck clothing worn by the player;
		if C is cursed:
			say "Your [ShortDesc of C] [if C is shoes]are[otherwise]is[end if] stuck, stopping you from jumping off the dildo!";
		otherwise:
			say "You can't jump because your [printed name of C] is stuck in place.";
	otherwise if H is shoes:
		let D be the dexterity of the player;
		let W be the weight of the player;
		let Hi be the hindrance of H + (W / 5);
		if the hindrance of H > 5:
			if sex fainting is 0:
				compute automatic jump success of Y;
			otherwise:
				say "You aren't steady enough to jump in these [ShoeType of H], there's just no way you can use your ankles to jump with these on!";
		otherwise if Hi / 2 > D:
			if sex fainting is 0:
				compute automatic jump success of Y;
			otherwise:
				say "Your body is just too heavy[if the hindrance of H > 1] and your [ShoeType of H] are too high[end if], you don't have the dexterity you need to jump off the dildo!";
		otherwise:
			let R be a random number between Hi / 2 and Hi;
			if debuginfo > 0, say "[input-style]Jump from pole check: dexterity ([D * 5].5) | [R] = RNG([Hi / 2]~[Hi]) <= [Hi] = ([hindrance of H]) [ShoeType of H] hindrance + ([W / 5]) weight[roman type][line break]";
			if D < R:
				if Y is penetrating vagina:
					say "You manage to jump whilst in your [ShoeType of H] and the dildo very almost exits you, but then you fall back on it hard!  [if a random trap penetrating a fuckhole is dildo pole trap]You basically just fucked yourself with the dildo![otherwise]As you fuck yourself with the dildo, it squirts even more warm [semen] into your [vagina]![end if][line break][if the bimbo of the player < 14]Damn, maybe try again?[otherwise][line break][second custom style]Again again![roman type][line break][end if]";
					ruin vagina;
					if Y is creampie pole trap, PussyFill 2;
				otherwise:
					say "You manage to jump whilst in your [ShoeType of H] and the dildo very almost exits you, but then you fall back on it hard!  [if a random trap penetrating a fuckhole is dildo pole trap]You basically just fucked yourself with the dildo![otherwise]As you fuck yourself with the dildo, it squirts even more warm [semen] into your [asshole]![end if][line break][if the bimbo of the player < 14]Damn, maybe try again?[otherwise][line break][second custom style]Again again![roman type][line break][end if]";
					ruin asshole;
					if Y is creampie pole trap, assFill 2;
			otherwise:
				say "You manage to jump whilst in your [ShoeType of H] and the dildo exits you, and luckily you jump high enough that it misses your crotch on the way back down, and bends at an awkward angle.";
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
A dildo pole trap is a kind of dildo trap. There are 10 dildo pole traps. The printed name of dildo pole trap is "[TQlink of item described]dildo pole trap[TQxlink of item described][verb-desc of item described]". The description of a dildo pole trap is "A metal pole with a flesh coloured dildo on the end. [if doll-stuck-num is 0]It rises so high up off the ground that even on tip toes you[otherwise]It, and the bulging flange has lifted you right off the ground so you[end if] [if item described is penetrating a body part]can't[otherwise]wouldn't be able to[end if] get it out of your [if item described is penetrating vagina][vagina]!  [otherwise][asshole]!  [end if][if doll-stuck-num is not 0]Tinkling, chiming music plays as you sedately turn, seeming to whisper to you to [bold type]submit[roman type] like an obedient little toy if you want to be released.[otherwise]Maybe if you [bold type]jump[roman type] high enough you can get off it?[end if]".

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
A drill pole trap is a kind of dildo trap. There are 10 drill pole traps. The printed name of drill pole trap is "[TQlink of item described]drill pole trap[TQxlink of item described][verb-desc of item described]". The description of a drill pole trap is "A metal pole with a flesh coloured dildo on the end. When it is inside you, it spins rapidly! Usually...".

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
		say "After it shoots in, it starts to spin round, pushing its way deeper. When it is fully inside you, it doesn't stop spinning!".

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
		compute orgasm retraction of R.

[!<JumpFromTheDrill>+

REQUIRES COMMENTING

+!]
To Jump From The Drill:
	if doll-stuck-num > 0:
		say "How? Your feet aren't even touching the ground. You [doll-stuck].";
		stop;
	let X be a random drill pole trap penetrating a fuckhole;
	if the raw sex addiction of the player < 20: [Unmodified sex addiction]
		let R be the soreness of a random fuckhole penetrated by X + (a random number from 2 to 5) - (the relevant sex addiction of X / 4);
		if the latex-transformation of the player > 3 or the player is not able to get horny or the player is not a bit horny, now R is 99999;
		if R >= the arousal of the player / 750:
			say "You jump and the drilling dildo exits you, and thankfully this makes it stop spinning and pushing upwards. You are able to successfully escape from the [if the player is not a nympho]torture[otherwise][second custom style]fun ride[roman type][end if]!";
			now busy is 0;
			now X is not penetrating asshole;
			now X is not penetrating vagina;
			now X is expired;
		otherwise:
			if the player is very horny:
				say "You're so desperate for an orgasm that you're finding it difficult to bring yourself to try to jump free. Try again?";
			otherwise if the player is not a bit horny:
				say "The extreme spinning of the dildo has left you temporarily stunned and unable to move!  Try again?";
			otherwise:
				say "You're currently enjoying the feeling of the spinning dildo too much to bring yourself to jump off it. Try again?";
	otherwise:
		say "You can no longer even attempt to gather your thoughts enough to jump from the spinning dildo. Even if you could, your body is now in a mixture of pain and ecstasy that you are now completely addicted to. The drilling rubber phallus forces you to have orgasm after shameful orgasm, but quickly your mind goes blank and you white out.";
		now the fainting reason of the player is 17;
		execute fainting.

Part 3 - Creampie Pole Trap

[!<CreampiePoleTrap>@

REQUIRES COMMENTING

@inherits <DildoTrap>

@!]
A creampie pole trap is a kind of dildo trap. There are 10 creampie pole traps. The printed name of creampie pole trap is "[TQlink of item described][if pregnancy fetish is 1]insemination[otherwise]creampie[end if] pole trap[TQxlink of item described][verb-desc of item described]". The description of a creampie pole trap is "A metal pole with a flesh coloured dildo on the end. It has a hole in the tip which shoots [semen] upon successful penetration.[one of]  It rises so high up off the ground that even on tip toes you can't get it out of your [if item described is vaginal][vagina]![otherwise][asshole]![end if][or]  Maybe if you [bold type]jump[roman type] high enough you can get off it?[or][stopping]". Understand "insemination" as a creampie pole trap.

Definition: a creampie pole trap (called M) is father material:
	decide yes.

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
			PussyFill 6;
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
		compute orgasm retraction of R.

Part 4 - Ghostly Dildo Pole Trap

[!<GhostlyDildoPoleTrap>@

REQUIRES COMMENTING

@inherits <DildoTrap>

@!]
A ghostly dildo pole trap is a kind of dildo trap. There are 10 ghostly dildo pole traps. The printed name of ghostly dildo pole trap is "[TQlink of item described]ghostly dildo pole trap[TQxlink of item described][verb-desc of item described]". The description of a ghostly dildo pole trap is "A seemingly incorporeal pole with a translucent dildo on the end.".

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
		say "A ghostly dildo on a pole shoots out of a trap door underneath you and passes straight through your body. That was weird...";
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
		compute orgasm retraction of R.


[New doll posing (ballerina initially) music box variables.]

[doll-stuck is meant to be used in remarks that refer to you being stuck on a dildo trap that's trying to
 force you to pose like a little dolly.  In this case, the only such trap will be one that makes you pose
 like a ballerina - because you're wearing ballerina wearables.
 If it's set to "", it's a flag that you're not currently stuck like that.
 To be used in case we use some randomness to decide whether the 'pose' attack initiates.
 In this first implementation, it will always do it if you have two ballerina wearthings.
 I had to add doll-stuck-num, even though redundant, because you can't test 'if doll-stuck is ""' inside say "...".
 Aika has hijacked doll-stuck-num to count the turns the player has been impaled.
    doll-stuck-num: Number of turns the player has been turning around, posed like a doll in a music box.
 doll-stuck-kind is used to record the kind of doll the dildo wants you to pose as:
 doll-stuck-kind:
	0: Not doll stuck at all.
	1: Ballerina.
	2: TBD
]
doll-stuck is a text that varies.  doll-stuck is "". 
doll-stuck-num is a number that varies.  doll-stuck-num is 0.
doll-stuck-kind is a number that varies.  doll-stuck-kind is 0.

Dildo Pole Trap ends here.

