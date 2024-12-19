Body Parts Definitions by Body Parts begins here.

[We keep track of major body parts separately as backdrops.]
[The player and the game may want to reference specific body parts of the body. These are defined here.]

[This is the default weight rule:
	now body-part-weight is 1.]

[!<BodyPart>@

REQUIRES COMMENTING

@inherits <Backdrop>

@!]
a body part is a kind of backdrop.
a body part can be stuck.
[!<YourselfIsBodyStuck>+

Is the player unable to move because a body part is stuck?

+!]
Definition: yourself is body stuck:
	if there is a stuck body part, decide yes;
	decide no.

To say NameDesc of (B - a body part):
	say "your [ShortDesc of B]".
To say BigNameDesc of (B - a body part):
	say "Your [ShortDesc of B]".

[!<Limb>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
a limb is a kind of body part.

[!<Flesh>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
a flesh is a kind of body part.

[!<Orifice>@

REQUIRES COMMENTING

@inherits <BodyPart>

@!]
an orifice is a kind of body part.

[!<Fuckhole>@

REQUIRES COMMENTING

@inherits <Orifice>

@!]
a fuckhole is a kind of orifice. [Crotch orifices are called fuckholes, obviously]

a fuckhole has a number called soreness.
a fuckhole has a number called raw sensitivity.

[!<Fuckhole>@<tolerated:Integer>*

This value is a running counter of how much punishment a fuckhole has recently taken. If the hole is left alone long enough to recover some soreness, this value resets to 0, but if it is allowed to exceed one half the sex addiction value for this orifice, the player will have to roll to avoid losing some mental stats. See the Orifice Soreness extension by "Player".

*@!]
a fuckhole has a number called tolerated.

a fuckhole has a number called openness.

a fuckhole has a number called real openness.

a fuckhole has a number called previous soreness.

a fuckhole has a number called previous openness.

a fuckhole has a number called buildup.

To decide which number is the insertableGirthAcceptance of (F - a body part):
	decide on 99.

To decide which number is the insertableGirthAcceptance of (F - a fuckhole):
	if diaper quest is 0 and F is actually occupied, decide on the openness of F; [When the item is already inside, we just want to check how much the orifice is being stretched. For example, in the sex toy insertedToleranceDesc function.]
	if fantastic elastic is 1 or there is worn elasticity clothing, decide on 99;
	let T be 2 + diaper quest + ungape;
	if measurement tattoo is worn, increase T by 3;
	if diaper quest is 1:
		decide on (the sex addiction of the player / 3) + T;
	otherwise:
		decide on (the sex addiction of the player / 5) + the openness of F + T.

To CumFill (F - a fuckhole) times (X - a number):
	if F is asshole, AssFill X;
	otherwise PussyFill X.

To decide which number is the semen-volume of (F - a fuckhole):
	if F is vagina, decide on the total semen volume of vagina;
	if F is asshole, decide on the semen volume of belly;
	decide on 0.

Definition: a fuckhole is lewdly exposed:
	if it is exposed, decide yes;
	decide no.

To decide which number is the lewdly exposed outrage of (F - a fuckhole):
	let O be 15;
	if F is asshole and the semen volume of belly > 0, increase O by 2;
	if F is vagina and the semen volume of vagina > 0, increase O by 2;
	increase O by the openness of F / 5;
	if F is vagina, increase O by the labia plumpness of F;
	if O > 20, decide on 20;
	decide on O.

Definition: a fuckhole (called F) is at least partially lewdly exposed:
	if F is at least partially exposed, decide yes; [Plugs are not usable as modesty items]
	[if F is exposed and F is not actually occupied, decide yes; [Plugs are actually usable as modesty items]]
	decide no.

To decide which number is the at least partially lewdly exposed outrage of (F - a fuckhole):
	if F is vagina:
		let CC be current cameltoe; [only calculate it once]
		if CC is 1, decide on 5;
		if CC is 2, decide on 7;
	let O be 9;
	if F is asshole and the semen volume of belly > 0, increase O by 2;
	if F is vagina and the semen volume of vagina > 0, increase O by 2;
	increase O by the openness of F / 9; [only the most gaped orifices show through clothing]
	decide on O.

[!<GapeFuckholeTimesNumber>+

Increases the openness of the fuckhole "F". Should be implemented uniquely for each orifice.

@param <Fuckhole>:<F> The fuckhole being gaped

+!]
To gape (F - a fuckhole) times (X - a number):
	do nothing.

[!<RuinFuckhole>+

Calls the RuinFuckhole function with an argument of 1

@param <Fuckhole>:<F> The fuckhole being ruined

+!]
To ruin (F - a fuckhole):
	ruin F times 1.

[!<RuinFuckholeTimesNumber>+

Increases the soreness of a fuckhole "F" by a given number and handles all effects that should occur when a fuckhole gets sore.

@param <Fuckhole>:<F> The fuckhole being ruined
@param <Integer>:<X> The number of times to ruin F

+!]
To ruin (F - a fuckhole) times (X - a number):
	now the previous soreness of F is the soreness of F;
	unless F is vagina and the player is not possessing a vagina, increase the buildup of F by 1;
	while X > 0:
		decrease X by 1;
		if the soreness of F > 8 and cum dump's undergarment is worn, now the soreness of F is 8; [undergarment prevents fainting from soreness]
		if F is orgasming:
			do nothing;
		otherwise if the buildup of F >= 20 and the soreness of F < 10:
			say "Regardless of how insensitive your [variable F] is, there's no way it can take an infinite fucking. Over time, you feel it getting slowly more and more sore...";
			now the soreness of F is 10;
			now the buildup of F is 0;
		otherwise if the soreness of F is 10 and X is 0 and for deposit only tattoo is not worn:
			check soreness fainting of F;
		let T be a random thing penetrating F;
		passively stimulate F from T;
		unless F is vagina and the player is not possessing a vagina, RuinRoll F;
		if the previous soreness of F < 10 and the soreness of F is 10 and delayed fainting is 0, say RuinedFlav of F;
		now the previous soreness of F is the soreness of F.

To say RuinedFlav of (F - a fuckhole):
	say "[bold type]Your [variable F] is completely and utterly ruined. You won't be able to think straight until it has healed at least a bit.[roman type][line break][one of][if sex fainting is 0][otherwise if there is a live thing penetrating F]If [FuckerDesc of random live thing penetrating F] keeps fucking you much longer, you'll be at risk of fainting.[otherwise]If anyone was to try and fuck your [variable F] now, you might faint.[end if][or][stopping][roman type][line break]".

To check soreness fainting of (F - a fuckhole):
	let M be a random monster penetrating F;
	if (sex fainting is 1 or futanari-slutty-sister is penetrating F) and there is an embodied thing penetrating F:
		let N be the raw anal sex addiction of the player;
		if F is vagina, now N is the raw vaginal sex addiction of the player;
		if the tolerated of F <= N / 2:
			increase the tolerated of F by 1;
		otherwise:
			say "[one of]Your [variable F] is so sore that your mind can't take it any more. You feel yourself start to pass[or]You are on the verge of passing[stopping] out.[if debugmode > 0 and the raw delicateness of the player < 20]Do you want to steel your mind and power through (this will not change any stats because you are in debug mode)? [otherwise if the raw delicateness of the player < 20][line break]Do you want to steel your mind and attempt to power through (this will cause a slight increase in delicateness)? [end if]";
			if the raw delicateness of the player < 20 and the player is consenting:
				say "You steel your mind and manage to power through the intense feelings without fainting[if the delicateness of the player < 4][otherwise if the delicateness of the player < 8]. You whimper gently[otherwise if the delicateness of the player < 12]. You sob quietly[otherwise if the delicateness of the player < 16]. You can't help but cry[otherwise if diaper lover >= 1]. You bawl loudly like a baby[otherwise]. You bawl loudly[end if].";
				if debugmode is 0:
					PainUp 10;
					potentially despair about F sex;
			otherwise:
				if the raw delicateness of the player < 20, say "Your mind is too weak and the feelings are too intense, and you fail to stay conscious!";
				now delayed fainting is 1;
				IntDown 1;
				now the fainting reason of the player is 18;
	otherwise if the class of the player is magical girl and M is tentacle monster:
		say "[one of][bold type]Your magical body somehow allows your [variable F] and your [ShortDesc of belly] to comically stretch to accommodate [NameDesc of M] without breaking you.[roman type][line break][or][or][or][or][cycling]";
	otherwise:
		increase sex-hurt-balance by 1;
		if sex-hurt-balance >= 5: [Requires two ticks of sex pain (or five if they are all in the same turn - otherwise egg laying could go nuts) to trigger the PainUp function]
			now sex-hurt-balance is 0;
			PainUp 10;
			potentially despair about F sex.

An all later time based rule (this is the sore sex hurts rule):
	if sex-hurt-balance > 0 and sex-hurt-balance < 5, now sex-hurt-balance is 5.

sex-hurt-balance is a number that varies.

To potentially despair about (F - a fuckhole) sex:
	if there is a live thing penetrating F:
		if F is asshole and the raw anal sex addiction of the player * 2 > the raw delicateness of the player, AnalSexAddictDown 1;
		if F is vagina and the raw vaginal sex addiction of the player * 2 > the raw delicateness of the player, VaginalSexAddictDown 1;
	otherwise if the raw sex addiction of the player > the raw delicateness of the player:
		SexAddictDown 1.

[!<HealFuckholeX>+

Reduces the soreness of a fuckhole by a given amount

@param <Fuckhole>:<F> The fuckhole being healed
@param <Integer>:<X> How much the fuckhole should be healed

!]
To heal (F - a fuckhole) times (X - a number):
	now the previous soreness of F is the soreness of F;
	let Y be X;
	while X > 0:
		decrease X by 1;
		if the soreness of F > 0:
			if X is Y - 1:
				say "Your [variable F] feels [if X > 2 and the soreness of F > 2]much [end if]less sore."; [We only say this once.]
				now the tolerated of F is 0;
			decrease the soreness of F by 1.

[A body part has a rule called weight-rule. body-part-weight is a number that varies. The weight-rule of body part is usually the default weight rule.]

a body part has a number called semen coating. a body part has a number called previous semen coating.
a body part has a number called urine coating. a body part has a number called previous urine coating.

[!<DecideWhichNumberIsTheDesireOfBodyPart>+

How much does the player want this body part to be used?

+!]
To decide which number is the desire of (B - a body part):
	decide on 0.

[!<BodyPart>@<desirability:Integer>*

How much do others want to use this body part for sex?

*@!]
a body part has a number called desirability.

[!<BodyPart>@<gropability:Integer>*

How much do others want to grope this body part after noticing the player?

*@!]
a body part has a number called gropability.

To decide which number is the weight of (T - a thing):
	decide on 0.

Definition: A body part is glazed:
	if the semen coating of it > 0, decide yes;
	decide no.
Definition: A body part is overglazed:
	if it is glazed, decide yes;
	decide no.
Definition: hair is overglazed:
	if the semen coating of it > 1, decide yes;
	decide no.

[To decide which number is the weight of (B - a body part):
	follow the weight-rule of B;
	decide on body-part-weight.]

To say ShortDesc of (B - a body part):
	say "[printed name of B]".

To say TotalDesc of (B - a body part):
	say "you have [ShortDesc of B].".

Definition: a body part (called F) is heavy:
	if the weight of F >= 10, decide yes;
	decide no.

To say HeavyThings:
	let N be the number of heavy body parts;
	if N > 0:
		repeat with B running through heavy body parts:
			if N > 2, say "[ShortDesc of B], ";
			if N is 2, say "[ShortDesc of B] and ";
			if N is 1, say "[ShortDesc of B]";
			decrease N by 1;
	otherwise:
		say "heavy body parts".

Definition: a body part is lewdly exposed: decide no.

Definition: a body part is currently visible:
	if it is exposed, decide yes;
	decide no.

Definition: a body part is at least partially lewdly exposed: decide no.

To decide which object is the at least partial concealer of (C - a body part):
	if C is listed in the armUses of arms, decide on arms;
	decide on the concealer of C. [For most items there's no difference.]
To decide which object is the concealer of (C - a body part):
	decide on nothing.

Definition: a body part is exposed:
	if the at least partial concealer of it is nothing, decide yes;
	decide no.
Definition: a body part is at least partially exposed:
	if the concealer of it is nothing, decide yes;
	decide no.

To decide which number is the lewdly exposed outrage of (B - a body part):
	decide on 0. [not humiliating by default]
To decide which number is the at least partially lewdly exposed outrage of (B - a body part):
	decide on (the lewdly exposed outrage of B * 5) / 9.
To decide which number is the outrage of (B - a body part):
	let O be 0;
	if B is glazed and (B is exposed or (B is breasts and breasts is showing cleavage) or (B is at least partially exposed and the at least partial concealer of it is arms)), increase O by (the semen coating of B * 4); [the more cum, the more noticeable it is. quickly. Arms can't hide cum]
	if B is lewdly exposed:
		now O is the lewdly exposed outrage of B + O;
	otherwise if B is at least partially lewdly exposed:
		now O is the at least partially lewdly exposed outrage of B + O;
	increase O by the unique outrage of B;
	if O > 20, decide on 20;
	if O < 0, decide on 0;
	decide on O.
To decide which number is the unique outrage of (B - a body part):
	decide on 0.
To decide which number is the cringe of (B - a body part):
	let C be the outrage of B;
	if C < 4, decide on 0;
	decide on C / 2. [if we haven't redefined it, then a bit less than the outrage should be a good estimate. Being naked is childish but it's not as childish as it is slutty.]

Report examining a body part:
	if the noun is orifice:
		let LM be the list of things inseminating the noun;
		if the number of entries in LM > 0:
			say "It is currently holding [semen] from ";
			let X be the number of entries in LM;
			repeat with M running through LM:
				say "[NameDesc of M][if X is 1].[otherwise if X is 2] and [otherwise], [end if]";
				decrease X by 1;
	if debuginfo > 0, say "[input-style]Current outrageousness ([if the noun is lewdly exposed and (the noun is breasts or the noun is fuckhole)]lewdly exposed[otherwise if the noun is lewdly exposed]visible[otherwise if the noun is at least partially lewdly exposed]partially exposed[otherwise if the noun is exposed]visible[otherwise if the noun is breasts and breasts is showing cleavage]showing cleavage[otherwise if the noun is at least partially exposed]partially visible[otherwise]covered up[end if]): [outrage of the noun]/20[if diaper quest is 1][line break]Current babyishness: [cringe of the noun]/20[end if][roman type][line break]";

[!<BodyPartIsOccupied>+

Appears to NPCs as if it's unavailable.

+!]
Definition: a body part is occupied:
	if it is actually occupied, decide yes;
	if it is fake occupied, decide yes;
	decide no.

[Can it be accessed right now with nothing blocking it?]
Definition: a body part is undefended: decide yes.

[!<BodyPartIsFakeOccupied>+

Some things can make an orifice 'appear' occupied to living things (not dildo traps etc.). E.g. salve of concealment.

+!]
Definition: a body part (called B) is fake occupied:
	repeat with C running through concealment salve covering B:
		unless C is cursed, decide yes;
	if pentagram tattoo is worn and B is vagina, decide yes;
	if the concealer of B is illusory kimono, decide yes;
	decide no.

[!<BodyPartIsActuallyOccupied>+

Actually has something in it.

+!]
Definition: a body part is actually occupied:
	if there is a thing penetrating it, decide yes;
	decide no.

[!<YourselfIsExposed>+

Used by some NPCs to decide if they thing that the player is inappropriately dressed. Is something naughty showing?

+!]
Definition: yourself is exposed:
	if the player is not crotch covered or breasts is lewdly exposed, decide yes;
	decide no.

[!<YourselfIsCompletelyExposed>+

Used by some NPCs to decide if they thing that the player is inappropriately dressed. IS everything naughty showing?

+!]
Definition: yourself is completely exposed:
	if the player is not crotch covered and breasts is lewdly exposed, decide yes;
	decide no.

[!<YourselfIsNipplesExposed>+

Used by some NPCs to decide if they thing that the player is inappropriately dressed. Are nipples showing?

+!]
Definition: yourself is nipples exposed:
	if the number of worn nipple covering clothing is 0, decide yes;
	decide no.

[!<YourselfIsCrotchCovered>+

Is your crotch visible? (different from protected as skirts can help, kneeling & transparency matters)

+!]
Definition: yourself is crotch covered:
	if asshole is at least partially lewdly exposed, decide no;
	if vagina is at least partially lewdly exposed, decide no;
	if penis is at least partially lewdly exposed, decide no;
	decide yes.

Section - Image for graphics window

This is the body parts get focused rule:
	let LB be a list of things;
	[if debugmode > 1, say "list of body parts to be focused...";
	let LB be the list of overglazed body parts;
	if debugmode > 1, say "Semen covered parts: [LB].";
	repeat with B running through body parts:
		if B is not arms:
			if realisticArms is 1 and B is listed in the armUses of arms:
				if B is vagina:
					if penis is at least partially exposed:
						if debugmode > 1, say "penis is covered by an arm.";
						add penis to LB, if absent;
					if vagina is at least partially exposed:
						if debugmode > 1, say "vagina is covered by an arm.";
						add vagina to LB, if absent;
					if asshole is at least partially exposed:
						if debugmode > 1, say "asshole is covered by an arm.";
						add asshole to LB, if absent;
				otherwise:
					if debugmode > 1, say "[printed name of B] is covered by an arm.";
					add B to LB, if absent;
			otherwise if diaper quest is 0 or the appearance of the player > the cringe appearance of the player:
				let A be calculated-appearance-outrage-level - (calculated-appearance-outrage-level / 2);
				if A > 1 and the outrage of B >= A:
					if debugmode > 1, say "[printed name of B] has high appearance.";
					add B to LB, if absent;
			otherwise:
				let C be calculated-cringe-level - (calculated-cringe-level / 2);
				if C > 1 and the cringe of B >= C:
					if debugmode > 1, say "[printed name of B] has high cringe.";
					add B to LB, if absent;]
	if the total volume of face > 0:
		if debugmode > 1, say "mouth has [MouthfulDesc].";
		add face to LB, if absent;
	[if there is carried pocketwipes:
		if the make-up of face > 0 and permanent makeup is 0:
			if debugmode > 1, say "face has make up.";
			add face to LB, if absent;
		if the semen coating of hair > 0 or the urine coating of hair > 0:
			if debugmode > 1, say "hair has liquid in it.";
			add hair to LB, if absent;
	if the largeness of belly > 5:
		if debugmode > 1, say "belly size is [largeness of belly].";
		add belly to LB, if absent;]
	if debugmode > 1, say "List of body parts to focus is [LB].";
	repeat with B running through LB:
		focus-consider B.
The body parts get focused rule is listed in the focus finding rules.

To construct normal buttons for (T - a body part):
	if ButtonTableFull is 0:
		let P be a random carried pocketwipes;
		if T is overglazed:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of cum eating;
			now the ButtonCommand entry is "wipe [text-shortcut of T] with finger";
			now the ButtonColour entry is lightModeFullGreen;
			if face is actually occupied, now the ButtonColour entry is lightModeFullYellow;
			if face is not acceptableCumRag, now the ButtonColour entry is lightModeFullRed;
			if ButtonTableFull is 0 and P is pocketwipes:
				choose a blank row in the Table of Buttons;
				now the ButtonImage entry is examine-image of P;
				now the ButtonCommand entry is "wipe [text-shortcut of T] with [text-shortcut of P]";
				now the ButtonColour entry is lightModeFullGreen;
			repeat with C running through held clothing:
				if ButtonTableFull is 0 and (C is gloves or C is not worn) and the semen-soak of C + the urine-soak of C + the milk-soak of C < the soak-limit of C and C is acceptableCumRag:
					choose a blank row in the Table of Buttons;
					now the ButtonImage entry is examine-image of C;
					now the ButtonCommand entry is "wipe [text-shortcut of T] with [text-shortcut of C]";
					now the ButtonColour entry is lightModeFullGreen;
		otherwise if P is a thing and ((T is hair and (the semen coating of hair > 0 or the urine coating of hair > 0)) or (T is face and the make-up of face > 0 and permanent makeup is 0)):
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is examine-image of P;
			now the ButtonCommand entry is "wipe [text-shortcut of T] with [text-shortcut of P]";
			now the ButtonColour entry is lightModeFullGreen.

To construct unique buttons for (T - face):
	if the total volume of face > 0 and ButtonTableFull is 0:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of SpitButton;
		now the ButtonCommand entry is "spit";
		now the ButtonColour entry is lightModeFullGreen;
		if there is a thing penetrating face:
			now the ButtonColour entry is lightModeFullRed; [turn red - player can't spit]
			now the ButtonPriority entry is 1;
		if ButtonTableFull is 0:
			choose a blank row in the Table of Buttons;
			now the ButtonImage entry is Figure of DrinkButton;
			now the ButtonCommand entry is "swallow";
			now the ButtonColour entry is lightModeFullGreen;
			now the ButtonPriority entry is 1;
			if there is an actual throater thing penetrating face, now the ButtonColour entry is lightModeFullRed. [turn red - player can't swallow]

Body Parts Definitions ends here.
