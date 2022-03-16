Face by Body Parts begins here.

Part 1 - Definitions

face is an orifice. Face is everywhere. The printed name of face is "[if item described is occupied]mouth[otherwise]face[end if]". Understand "mouth", "blowjob", "oral", "oral sex", "fellatio", "cunnilingus", "blow job" as face. [This way 'offer/suggest blowjob/etc. is understood by the game] The text-shortcut of face is "face".
To say FullExamineDesc of (B - face):
	say "[ImageDesc of face][TotalDesc of face]".

Face has a number called previous make-up.
Face has a number called previous hair length.
Face has a number called previous hair redness.
Face has a number called previous hair brightness.
Face has a number called previous hair blondeness.
Face has a number called make-up. [Min 0 Max 3 - A high number means slutty makeup.]
Face has a number called lips.

Face has a number called semen volume.
Face has a number called urine volume.
Face has a number called milk volume.
Face can be player-origin or monster-origin. Face is player-origin.
To decide which number is the total volume of face:
	decide on the semen volume of face + the urine volume of face + the milk volume of face.
To decide which number is face-limit:
	decide on 4.

[Can it be accessed right now with nothing blocking it?]
Definition: face is undefended:
	if face is not actually occupied, decide yes;
	decide no.

the face presentable rules is a rulebook.
the presentable rules of face is usually the face presentable rules.

This is the face occupied rule:
	if face is actually occupied:
		if auto is 0, say "Your mouth is a bit full already, don't you think?";
		rule fails.
The face occupied rule is listed in the face presentable rules.

This is the too horny to present face rule:
	if the orifice soreness of the player < 7 and the analvirgin of the player is 0 and the player is horny and (the vaginalvirgin of the player is 0 or the player is not possessing a vagina): [This way females can always present mouth to avoid virginity loss, and all players can present mouth to avoid anal virginity loss]
		if auto is 0 or there is an actually presentable fuckhole: [The automatic action rule does not care if you are horny, unless a fuckhole is actually presentable as well.]
			if the player is very horny:
				if auto is 0, say "You are too aroused and your [if the player is not possessing a vagina][asshole] is[otherwise][vagina] and [asshole] are[end if] begging to be fucked; you can't bring yourself to do that!";
				rule fails.
The too horny to present face rule is listed in the face presentable rules.

This is the monster doesn't do oral rule:
	if auto > 0 and ((presenting-receiver is monster and presenting-receiver is not willing to do oral) or the number of willing to do oral monsters in the location of the player is 0), rule fails.
The monster doesn't do oral rule is listed in the face presentable rules.

Definition: face is usable without penetration:
	if current-monster is requiring facial penetration, decide no;
	decide yes.

Definition: a monster is requiring facial penetration: decide yes.

[necessary for determining outrage when cumsoaked]
Definition: face is lewdly exposed:
	if it is exposed, decide yes;
	decide no.

To decide which object is the concealer of (T - face):
	decide on a random worn actually dense hood.

To decide which object is the at least partial concealer of (F - face):
	if face is listed in the armUses of arms, decide on arms;
	if there is a worn not-see-through hood, decide on a random worn not-see-through hood;
	if cultist veil is worn, decide on cultist veil;
	if floral bridal veil is worn and the ceremony of betrothal-quest is false, decide on floral bridal veil;
	decide on nothing.

To decide which number is the lewdly exposed outrage of (F - face):
	if diaper quest is 1 and the make-up of face >= 3, decide on 2;
	let O be the make-up of face;
	increase O by the lips of face;
	increase O by alcohol-level;
	decide on O.

To decide which number is the cringe of (F - face):
	let O be alcohol-level * 2;
	if F is exposed:
		if the make-up of face >= 3, increase O by 4;
	decide on O.

[!<DecideWhichNumberIsTheDesireOfFace>+

How much does the player want this body part to be used?

+!]
To decide which number is the desire of (B - face):
	decide on the oral sex addiction of the player.

This is the plushlip blowjob slut rule:
	increase the desirability of face by 2 * the lips of face.
The plushlip blowjob slut rule is listed in the blowjob slut eligibility rules.

Part 2 - Description

To say ShortDesc of (F - face):
	if the make-up of face is 0, say "plain";
	if the make-up of face is 1, say "lightly made up";
	if the make-up of face is 2, say "heavily made up";
	if the make-up of face is 3, say "[if diaper quest is 1 and permanent makeup is 1]frozen kawaii[otherwise if diaper quest is 1]messily made up[otherwise]whore painted[end if]";
	if the semen coating of face > 7:
		say ", cum plastered";
	otherwise if the semen coating of face > 4:
		say ", partially cum-covered";
	otherwise if the semen coating of face > 0:
		say ", creamed";
	if the lips of face is 1:
		say " big-lipped";
	otherwise if the lips of face > 1:
		say " whore-lipped";
	say " face".

To say MediumDesc of (F - face):
	let A be alcohol-level;
	if A > 2:
		say "wasted ";
	otherwise if A > 1:
		say "drunken ";
	otherwise if A > 0:
		say "tipsy ";
	say ShortDesc of face.

To say TotalDesc of face:
	say "You have [LipDesc], and ";
	if the semen coating of face > 7:
		say "your face [MakeUpDesc][if the make-up of face is 0] but is completely covered in [semen].[otherwise]. It is also completely plastered in [semen]![end if]";
	otherwise if the semen coating of face > 4:
		say "your face [MakeUpDesc] and is dripping with [semen].";
	otherwise if the semen coating of face > 0:
		say "your face [MakeUpDesc] and has a few lines of [semen] slowly dripping off it.";
	otherwise:
		say "your face [MakeUpDesc].";
	let A be alcohol-level;
	if A > 0, say "[if A > 2]Your expression is one of someone who is pretty much off [his of the player] tits with intoxication, and at risk of going completely off the rails if [he of the player] has any more[otherwise if A > 1]Your vacant expression is one of someone who is rather drunk[otherwise]It's easy to tell you're a bit tipsy just by looking at your glazed-over eyes[end if].";
	if the total volume of face > 0, say "You currently have a [MouthfulDesc].";
	if the number of things penetrating face > 0 or the latex-transformation of the player > 6:
		let B be a random thing penetrating face;
		if B is a monster:
			say "Your mouth is currently being occupied by [FuckerDesc of B].";
		if the latex-transformation of the player > 6:
			say "Your rubber mouth[if B is gag], currently occupied by a [ShortDesc of B],[end if] has no tongue or inner moisture, permanently open and fixed in a submissive O-shape.";
		otherwise:
			say "Your mouth is currently occupied by a [ShortDesc of B].";
	if the player is a blowjob slut:
		let P be a random thing penetrating face;
		if P is a monster and P is male:
			say "You have a feeling that no matter what you do, you're going to get a mouthful.";
		otherwise:
			if P is monster, say "Monsters are definitely paying extra attention to your lip.";
			otherwise say "You have a feeling that monsters are paying extra attention to your lips.".

To say MouthfulDesc:
	let TV be the total volume of face;
	if TV <= 0:
		say "no liquid";
	otherwise:
		let LL be a list of liquid-objects;
		if the semen volume of face > 0, add semen to LL;
		if the urine volume of face > 0, add urine to LL;
		if the milk volume of face > 0, add milk to LL;
		let E be the number of entries in LL;
		say "[if TV > 3]huge [otherwise if TV is 3]large [otherwise if TV is 1]small [end if]mouthful of [variable entry 1 of LL][if E is 2] and [variable entry 2 of LL][otherwise if E is 3], [variable entry 2 of LL] and [variable entry 3 of LL][end if]".

[!<SayMakeUpDesc>+

REQUIRES COMMENTING
Just a note: I double checked my spelling dictionary, which includes American spelling. It's make-up, not makeup or make up. (Selkie)

+!]
To say MakeUpDesc:
	if the make-up of face is 0, say "is essentially make-up free";
	if the make-up of face is 1, say "is decorated with some make-up, as if you were going out for the night";
	if the make-up of face is 2, say "is covered in a large amount of make-up,[one of] giving you a face that demands attention[or] drawing attention to your face[purely at random][if the make-up of face is 2 and the makeupskill of the player is 1], and temporarily giving you a [bold type]huge boost to your charisma[roman type][end if]";
	if the make-up of face is 3:
		if diaper quest is 1:
			if permanent makeup is 1, say "is covered in heavy kawaii make-up with white hearts on the cheeks and is fixed in a vacant expression";
			otherwise say "is smothered in overdone make-up, which looks like it was done by a three-year-old";
		otherwise:
			say "is smothered in overdone make-up, which [one of]gives you an almost doll-like face[or]encourages men to treat you like a slut[or]most men would take as a signal that you're an easy lay[or]is begging for all the [if the bimbo of the player < 12]wrong[otherwise][line break][second custom style]right[roman type][line break][end if] sorts of attention[or]makes you look like a total [whore][purely at random]".

To say LipDesc:
	if diaper quest is 1:
		say "lips";
	otherwise:
		if the lips of face is 0:[default]
			say "[if the player is gendered male][one of]narrow[or]unremarkable[at random][otherwise][one of]slender[or]delicate[at random][end if]";
		if the lips of face is 1:
			say "[one of]flared[or]full[or][if artificial enhancements fetish is 1]pouting[otherwise]big[end if][or]well-developed[at random]";
		if the lips of face is 2:[maximum for vanilla players]
			say "[if artificial enhancements fetish is 1][one of]beestung[or]plush[or]plump[or]fleshy[at random][otherwise][one of]plush[or]dick sucking[or]pouting[or]pouty[or]puffy[at random][end if]";
		if the latex-transformation of the player > 6:
			say "[one of]plastic[or]upholstered[or]pillowy[or]padded[or]squeaky[or]inflated[or]puffy[at random]";[lips are fixed at 3.]
		otherwise if the lips of face > 2:
			say "[one of]swollen[or]oversized[or]huge[or]corpulent[or]augmented[at random] dick sucking";
		say " lips".

Part 3 - Modify Face Stats

To FaceUp (X - a number):
	now the previous make-up of face is the make-up of face;
	while X > 0:
		decrease X by 1;
		if the make-up of face < 3, increase the make-up of face by 1;
	if the make-up of face > the previous make-up of face, progress quest of make-up-quest;
	update appearance level.

To FaceDown (X - a number):
	now the previous make-up of face is the make-up of face;
	while X > 0:
		decrease X by 1;
		if face is temporarily made up:
			decrease the make-up of face by 1;
	update appearance level.

Definition: face is permanently made up:
	if the class of the player is silicone queen or Permanent MakeUp is 1 or the latex-transformation of the player >= 7, decide yes;
	decide no.
Definition: face is temporarily made up:
	if the make-up of face > 0 and face is not permanently made up, decide yes;
	decide no.

Permanent MakeUp is a number that varies. Permanent MakeUp is 0.

To decide which number is max lip size:
	if diaper quest is 1, decide on 0;
	decide on 2 + artificial enhancements fetish.

To LipsUp (X - a number):
	while X > 0:
		decrease X by 1;
		if the lips of face < max lip size:
			increase the lips of face by 1;
			if X is 0:
				display lips cutscene;
	update appearance level.

To display lips cutscene:
	if the lips of face is 1, cutshow figure of lips cutscene 1 for face;
	if the lips of face is 2:
		if the bimbo of the player < 9, cutshow figure of lips cutscene 2a for face;
		otherwise cutshow figure of lips cutscene 2b for face;
	if the lips of face is 3, cutshow figure of lips cutscene 3 for face.

This is the mouthful prevents speech rule:
	if the total volume of face > 0, rule fails.
The mouthful prevents speech rule is listed in the player speech rules.

To FaceFill (L - a liquid-object) by (N - a number):
	if debugmode > 1, say "Filling face by [N] units of [L].";
	let T be the total volume of face;
	let outputSuppressed be false;
	if N > 0:
		while N > 0 and the total volume of face < face-limit:
			decrease N by 1;
			if L is semen:
				increase the semen volume of face by 1;
				compute father material of face;
				if there is a live thing penetrating face, now face is monster-origin;
			if L is urine, increase the urine volume of face by 1;
			if L is milk, increase the milk volume of face by 1;
			if L is murkwater:
				if watersports fetish is 1 and a random number between 1 and 3 is 1:
					increase the urine volume of face by 1;
				otherwise if diaper quest is 0 and (lactation fetish is 0 or a random number between 1 and 2 is 1):
					increase the semen volume of face by 1;
				otherwise:
					increase the milk volume of face by 1;
		check tasting of L;
	if N > 0:
		say "Your mouth is completely full, and the [L] is still coming!";
		if the player is refusing to swallow:
			say "You can't bring yourself to swallow the disgusting stuff!";
			NoseBurst L by N;
			now N is 0;
		otherwise:
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "try to swallow[if newbie tips is 1] (guaranteed addiction increase and you might puke, making you very thirsty)[end if]";
			set numerical response 2 to "let it burst out of your nose[if newbie tips is 1] (fatigue increase and more likely to get on your clothes and body)[end if]";
			compute multiple choice question;
			if player-numerical-response is 1:
				compute swallowing; [Must succeed to avoid infinite loops]
				say "The fast flow makes you feel queasy.";
				let M be a random thing penetrating face;
				let G be the stomach-liquid of the player / 2;
				if M is a thing, increase G by the girth of M / 2;
				check puking G;
				now outputSuppressed is true;
				FaceFill L by N; [FUKKEN RECURSION BOYS, LOOK IT UP. YEE-HAH]
			otherwise:
				NoseBurst L by N;
				now N is 0;
	if outputSuppressed is false and T is not the total volume of face, say "You now have a [MouthfulDesc].".

To MouthEmpty:
	cancel father material of face;
	now face is player-origin;
	now the semen volume of face is 0;
	now the urine volume of face is 0;
	now the milk volume of face is 0.

To compute accidental swallowing:
	let A be auto;
	now auto is 1; [slightly changes swallow function flavour]
	compute swallowing;
	now auto is A.

To compute silent swallowing:
	let A be auto;
	now auto is 2; [suppresses swallow function flavour]
	compute swallowing;
	now auto is A.

To compute swallowing:
	let TV be the total volume of face;
	if TV <= 0:
		if auto is 0, say "You try to swallow, but your mouth is empty.";
	otherwise:
		if auto < 2, say "You [if the player is always automatically swallowing]automatically [otherwise if auto is 1]accidentally [end if]gulp the [MouthfulDesc] down[if auto is 1] your throat[end if].";
		StomachSemenUp the semen volume of face;
		if the semen volume of face > 0 and face is monster-origin, progress quest of creampie-drinking-quest;
		StomachUrineUp the urine volume of face;
		StomachMilkUp the milk volume of face;
		MouthEmpty.
This is the swallowing rule:
	compute swallowing.

Definition: yourself is refusing to swallow:
	if the player is very thirsty, decide no;
	if (the semen volume of face > 0 and the semen taste addiction of the player is 1) or (the urine volume of face > 0 and the urine taste addiction of the player is 1) or (the milk volume of face > 0 and the milk taste addiction of the player is 1), decide yes;
	decide no.

Definition: yourself is always automatically swallowing:
	if (the semen volume of face > 0 and the semen taste addiction of the player is 20) or (the urine volume of face > 0 and the urine taste addiction of the player is 20) or (the milk volume of face > 0 and the milk taste addiction of the player is 20), decide yes;
	decide no.

Definition: yourself is automatically swallowing:
	if the semen volume of face > 0 and (the semen taste addiction of the player is 20 or a random number between 10 and 30 < the semen taste addiction of the player):
		if the semen taste addiction of the player < 20, say "You can't help it - something inside you is too in love with the taste of that [semen] - you can't stop yourself!";
		decide yes;
	if the urine volume of face > 0 and (the urine taste addiction of the player is 20 or a random number between 10 and 30 < the urine taste addiction of the player):
		if the urine taste addiction of the player < 20, say "You can't help it - something inside you is too eager to act like a human urinal - you can't stop yourself!";
		decide yes;
	if the milk volume of face > 0 and (the milk taste addiction of the player is 20 or a random number between 10 and 30 < the milk taste addiction of the player):
		if the milk taste addiction of the player < 20, say "You can't help it - something inside you is too in love with the taste of that [milk] - you can't stop yourself!";
		decide yes;
	decide no.

To suggest swallowing: [Sometimes the player shouldn't have to spend a turn swallowing]
	if the total volume of face > 0:
		if autodrink is 1 or (the semen volume of face > 0 and the semen taste addiction of the player is 20) or (the urine volume of face > 0 and the urine taste addiction of the player is 20) or (the milk volume of face > 0 and the milk taste addiction of the player is 20):
			compute swallowing;
		otherwise if the player is refusing to swallow:
			if face is not actually occupied:
				say "You're too disgusted [if the milk volume of face > 0 and the milk taste addiction of the player is 1]by the thought that it's human breast milk in your mouth [end if]- you immediately spit it out onto the floor!";
				let L be a list of liquid-objects; [We should then immediately increase taste addiction so that this doesn't happen again]
				if the semen volume of face > 0, add semen to L;
				if the urine volume of face > 0, add urine to L;
				if the milk volume of face > 0, add milk to L;
				compute silent spitting;
				repeat with LQ running through L:
					compute addictive tasting of LQ;
		otherwise:
			if the player is automatically swallowing:
				compute swallowing;
			otherwise:
				say "Would you like to swallow your [MouthfulDesc]?";
				if the player is consenting, compute swallowing.

To suggest swallowing with (L - a liquid-object) consequences: [If the player doesn't immediately swallow they still probably get taste addiction]
	let refusal be 0;
	if the player is refusing to swallow, now refusal is 1; [If the player is refusing to swallow here then they will be getting addiction increases already]
	suggest swallowing;
	if refusal is 0:
		if L is milk and the milk volume of face > 0 and the player is not getting lucky:
			compute slightly addictive tasting of L;
		otherwise if L is urine and the urine volume of face > 0 and the player is not getting lucky:
			compute slightly addictive tasting of L;
		otherwise if L is semen and the semen volume of face > 0 and the player is not getting lucky:
			compute slightly addictive tasting of L.

To check accidental spitting:
	check accidental spitting with reason "".

To check accidental spitting with reason (T - a text):
	let TVF be the total volume of face;
	if TVF > 0 and face is not actually occupied:
		if the player is getting lucky:
			say "You manage to hold in your [MouthfulDesc]. [GotLuckyFlav]";
		otherwise:
			if T is "", say "[bold type]You are about to lose control and automatically spit out [if TVF > 1]some of [end if]your [MouthfulDesc]![roman type][line break]";
			otherwise say "[bold type][T] your lips begin to loosen - you're about to lose [if TVF > 1]some of [end if]your [MouthfulDesc]![roman type][line break]";
			reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
			set numerical response 1 to "just [if TVF is 1]let it out[otherwise]try to hold as much in as possible[end if]";
			set numerical response 2 to "swallow it instead";
			compute multiple choice question;
			if player-numerical-response is 2:
				compute swallowing;
			otherwise:
				compute accidental spitting.

To compute accidental spitting:
	let A be auto;
	now auto is 1; [slightly changes spit function flavour]
	compute spitting;
	now auto is A.

To compute silent spitting:
	let A be auto;
	now auto is 2; [suppresses spit function flavour]
	compute spitting;
	now auto is A.

To compute spitting: [This is specifically spitting on the ground.]
	let TV be the total volume of face;
	let S be the semen volume of face;
	let U be the urine volume of face;
	let M be the milk volume of face;
	if TV <= 0:
		if auto is 0, say "You spit a glob of saliva onto the floor.";
	otherwise if auto is 1:
		if S is TV and S > 1:
			now S is 1;
		otherwise if U is TV and U > 1:
			now U is 1;
		otherwise if M is TV and M > 1:
			now M is 1;
		otherwise if S is 2 and M is 2:
			now S is 1;
			now M is 1;
		otherwise if S is 2 and U is 2:
			now S is 1;
			now U is 1;
		otherwise if U is 2 and M is 2:
			now U is 1;
			now M is 1;
		if TV is S + U + M:
			say "You accidentally spit the [MouthfulDesc] onto the floor.";
		otherwise:
			say "You accidentally spit [if (the semen volume of face is TV or the urine volume of face is TV or the milk volume of face is TV) and TV > 2]a bit[otherwise]half[end if] of your [MouthfulDesc] onto the floor.";
		cutshow Figure of Oral Creampie Cutscene 6 for face;
	otherwise if auto is 0:
		say "You spit the [MouthfulDesc] onto the floor.";
	repeat with P running through reactive people:
		unless P is penetrating face: [This is handled in `To compute voluntary spitting of`]
			if the semen volume of face <= 0 and the urine volume of face <= 0:
				compute boring spit reaction of P;
			otherwise:
				compute disgusting spit reaction of P;
	SemenPuddleUp S;
	UrinePuddleUp U;
	MilkPuddleUp M;
	if TV is S + U + M: [Entire mouthful is going out]
		MouthEmpty; [Do it properly to make sure we reset semen trackers]
	otherwise:
		decrease the semen volume of face by S;
		decrease the urine volume of face by U;
		decrease the milk volume of face by M;
	if auto is not 1: [punish maids]
		let L be milk;
		if S > 0 and U is 0 and M is 0:
			now L is semen;
		if S is 0 and U > 0 and M is 0:
			now L is urine;
		if S is 0 and U is 0 and M > 0:
			now L is milk;
		otherwise:
			now L is murkwater;
		check L maidification.

To compute boring spit reaction of (M - a person):
	say "[BigNameDesc of M] [one of]wrinkles [his of M] nose[or]frowns[or]curls [his of M] lips[in random order].[line break][speech style of M]'[one of]How impolite[or]Really now[or]Eww[or]Do you mind[in random order].'[roman type][line break][slightHumiliateReflect]".

To compute disgusting spit reaction of (M - a person):
	say "[BigNameDesc of M] [one of]grimaces[or]almost chokes in shock[or]makes an outraged sound[in random order].[line break][speech style of M]'Was that [if the urine volume of face > 0 and the semen volume of face > 0][one of]urine[or]piss[or]cum[purely at random][otherwise if the urine volume of face > 0][one of]urine[or]piss[in random order][otherwise]cum[end if]?! [one of]Disgusting[or]What the fuck[in random order]!'[roman type][line break][if the urine volume of face > 0][strongHumiliateReflect][otherwise][moderateHumiliateReflect][end if]";
	if M is monster, FavourDown M with consequences.

To NoseBurst (L - a liquid-object) by (N - a number):
	say "A [if N > 2]river[otherwise if N is 2]few dribbles[otherwise]dribble[end if] of [L] bursts from your nose!";
	unless L is murkwater, UnannouncedSquirt L On Breasts By N; [MURKWATER SHOULD BE HANDLED BY THE FUNCTION THAT CALLED THIS]
	if the fatigue of the player < the buckle threshold of the player:
		say "Your lungs burn as you are temporarily starved of oxygen, making you rapidly lose energy.";
		if N > 5, now N is 5;
		FatigueUp (the buckle threshold of the player * N) / 5.

An all later time based rule (this is the do we puke rule):
	repeat with T running through things penetrating face:
		if T is throater:
			let G be the girth of T;
			check puking G;
			if T is monster, decrease the throating of T by 1;
		check oral virginity loss with T.

To check oral virginity loss with (T - a thing):
	if the oralvirgin of the player is 1 and T is a live virginity taking thing:
		now the oralvirgin of the player is 0;
		now oralvirginity-taker is T;
		say "[bold type]You just lost your oral virginity![roman type][line break]".

To check puking (N - a number):
	if player-gagging is false and the latex-transformation of the player < 5 and super gag reflex is 0: [if player-gagging is true then we're already guaranteed to try and puke]
		let X be the raw intelligence of the player / 2; [If we used other calculated intelligence ratings, arousal and soreness would have too much of an impact]
		if debuginfo > 0, say "[input-style]Puke resist check: base (5) + raw intelligence rating ([X]) ";
		increase X by 10;
		if cum dumpster lip tattoo is worn:
			increase X by 8;
			if debuginfo > 0, say "+ cum dumpster lip tattoo bonus (8) ";
		if the throatskill of the player is 1:
			increase X by 8;
			if debuginfo > 0, say "+ learned deepthroating skill bonus (8) ";
		if there is a worn tongue piercing:
			increase X by 5;
			if debuginfo > 0, say "+ tongue piercing bonus (5) ";
		if there is a lubricant covering face:
			increase X by 8;
			if debuginfo > 0, say "+ lubed throat bonus (8) ";
		if lipstick collar is worn:
			increase X by make-up of face * 2;
			increase X by the lips of face * 2;
			if debuginfo > 0, say "+ lipstick collar lips bonus ([lips of face * 2]) + lipstick collar make up bonus ([make-up of face * 2]) ";
		let R be a random number between 1 and X;
		if debuginfo > 0, say "--> d[X] ([R]) | ([N].5) difficulty[roman type][line break]";
		if N >= R, compute puking.

player-gagging is initially false.

To compute puking:
	if the latex-transformation of the player < 5 and super gag reflex is 0:
		now another-turn is 1;
		now player-gagging is true;
		add the player pukes rule to another-turn-rules, if absent.

[A throater tends to be down the player's throat when penetrating face, allowing the player to gag but preventing puking.]
Definition: a thing is throater: decide no.

This is the player pukes rule:
	if the latex-transformation of the player >= 5:
		say "Your body tries to puke but your new rubber innards don't have the ability to do that any more!";
	otherwise if the stomach-liquid of the player <= 0:
		say "Your body tries to puke but nothing comes up!";
	otherwise:
		let T be a random thing penetrating face;
		if T is throater:
			say "Your throat spasms around [FuckerDesc of T] as you gag uncontrollably!";
			compute puking; [We keep going]
			if T is royal guard and the class of the player is princess:
				let C be a random worn overdress;
				if C is royal dress, transform C into deepthroat princess crop top;
		otherwise:
			let L be water;
			let U be 0;
			let S be 0;
			let M be 0;
			let W be 0;
			if the urine volume of face > 0:
				if L is water, now L is urine;
				otherwise now L is murkwater;
				increase U by the urine volume of face;
			if the semen volume of face > 0:
				if L is water, now L is semen;
				otherwise now L is murkwater;
				increase S by the semen volume of face;
			if the milk volume of face > 0:
				if L is water, now L is milk;
				otherwise now L is murkwater;
				increase M by the milk volume of face;
			if the stomach-urine of the player > 0:
				if L is water, now L is urine;
				otherwise now L is murkwater;
				increase U by the stomach-urine of the player;
			otherwise if the stomach-semen of the player > 0:
				if L is water, now L is semen;
				otherwise now L is murkwater;
				increase S by the stomach-semen of the player;
			otherwise if the stomach-milk of the player > 0:
				if L is water, now L is milk;
				otherwise now L is murkwater;
				increase U by the stomach-milk of the player;
			increase W by the stomach-water of the player;
			let N be U + S + M + W;
			if T is a thing:
				NoseBurst L by N;
				if L is murkwater:
					if U > 0, UnannouncedExpel urine On Breasts By U;
					if M > 0, UnannouncedExpel milk On Breasts By M;
					if S > 0, UnannouncedExpel semen On Breasts By S; [semen last so it's not cleaned away]
			otherwise:
				say "Your stomach retches. A [if N < 3]small amount of[otherwise if N < 6]decently voluminous quantity of[otherwise]veritable [cascade] of[end if] [if L is murkwater]a mixture of bodily fluids[otherwise][L][end if] flows out of your mouth and onto the floor.";
				cutshow Figure of Oral Creampie Cutscene 6 for face;
				PuddleUp semen by S;
				PuddleUp urine by U;
				PuddleUp milk by M;
				MouthEmpty;
			now the stomach-semen of the player is 0;
			now the stomach-urine of the player is 0;
			now the stomach-milk of the player is 0;
			now the stomach-water of the player is 0.

To decide which number is tasteAddictionInterval:
	decide on 12.
To decide which number is tasteAddictionFlatInterval:
	if the player is in an unbossed predicament room, decide on 0;
	decide on 20.

An all time based rule (this is the player gets used to the taste rule):
	if the urine volume of face > 0:
		let A be tasteAddictionFlatInterval + (the urine taste addiction of the player * tasteAddictionInterval);
		if the remainder after dividing time-earnings by A < time-seconds:
			compute slightly addictive tasting of urine;
	if the semen volume of face > 0:
		let A be tasteAddictionFlatInterval + (the semen taste addiction of the player * tasteAddictionInterval);
		if the remainder after dividing time-earnings by A < time-seconds:
			compute slightly addictive tasting of semen;
	if the milk volume of face > 0:
		let A be tasteAddictionFlatInterval + (the milk taste addiction of the player * tasteAddictionInterval);
		if the remainder after dividing time-earnings by A < time-seconds:
			compute slightly addictive tasting of milk.

Section - Image for graphics window

Understand "my face", "visage", "mouth", "lips" as face. Figure of cum eating is the file "Special/Buttons/mouth.jpg".

[examine-image is documented in Necessary Figures]

Face ends here.
