Masturbating by Actions begins here.

[!<ThingIsBarbie>+

REQUIRES COMMENTING

+!]
Definition: a thing is barbie:
	if the player is male and the size of penis is 0, decide yes;
	decide no.

[!<YourselfIsAbleToWank>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to wank:
	[This is about whether the player can masturbate through their underwear]
	if there is cursed pussy covering blocking wanking clothing, decide no;
	decide yes.

Definition: yourself is fapping-blocked:
	if there is a worn chastity cage or there is a worn restricting research airhancer or there is a worn creamfilled condom of kings, decide yes;
	if there is a worn strapon-panties:
		unless there is a worn not dildo-usage strapon-dildo, decide yes;
	if the player is barbie, decide yes;
	decide no.

Definition: yourself is anal flexible:
	if the dexterity of the player >= 15, decide yes;
	decide no.

[!<ClothingIsBlockningWanking>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called K) is blocking wanking:
	if K is chastity cage, decide no;[the chastity cage is somehow being counted as pussy covering]
	if K are cotton or K are nylon or K are mesh or K are silk or K are satin, decide no;
	decide yes.

[!<masturbationRestrictionRules:Rulebook>*

REQUIRES COMMENTING

+!]
The masturbation restriction rules is a rulebook.

[!<YourselfIsAbleToMasturbate>+

Non automatic version prints reason why not if auto is set to 0.

+!]
Definition: yourself is able to masturbate:
	follow the masturbation restriction rules;
	if the rule failed, decide no;
	decide yes.
Definition: yourself is able to automatically masturbate:
	let saved-auto be auto;
	now auto is 1;
	if yourself is able to masturbate:
		now auto is saved-auto;
		decide yes;
	now auto is saved-auto;
	decide no.

[!<TheSexDollCannotWankRule>+

REQUIRES COMMENTING

+!]
This is the sex doll can't wank rule:
	if the latex-transformation of the player > 3:
		if auto is 0, say "You are completely numb down there, so masturbating would do nothing.";
		rule fails.
The sex doll can't wank rule is listed last in the masturbation restriction rules.

[!<TheTooSluttyToWankRule>+

REQUIRES COMMENTING

+!]
This is the too slutty to wank rule:
	if auto is 0:
		if (the anal sex addiction of the player > 13 or the vaginal sex addiction of the player > 13) and the player is not very horny:
			say TooSluttyToWank;
			rule fails;
		if (the anal sex addiction of the player > 15 or the vaginal sex addiction of the player > 15) and the player is not extremely horny:
			say TooSluttyToWank;
			rule fails;
		if (the anal sex addiction of the player > 20 or the vaginal sex addiction of the player > 20):
			say TooSluttyToWank;
			rule fails.
The too slutty to wank rule is listed last in the masturbation restriction rules.

[!<TheLackOfGenetaliaRule>+

REQUIRES COMMENTING

+!]
This is the lack of genitalia rule:
	if the size of penis is 0 and the player is male and the buttskill of the player is 0:
		if auto is 0, say "You can't wank without genitalia!";
		rule fails.
The lack of genitalia rule is listed first in the masturbation restriction rules.

[!<TheChastityCageBlocksMasturbationRule>+

Prevents masturbation.

+!]
This is the chastity cage blocks masturbation rule:
	if there is a worn chastity cage and the buttskill of the player is 0:
		if auto is 0, say "You can't get at your genitalia through your chastity cage!";
		rule fails.
The chastity cage blocks masturbation rule is listed last in the masturbation restriction rules.

This is the research restriction blocks masturbation rule:
	if there is a worn restricting research airhancer and the buttskill of the player is 0 and the player is male:
		if auto is 0, say "The [printed name of a random worn research airhancer] is keeping you from getting hard enough to masturbate!";
		rule fails.
The research restriction blocks masturbation rule is listed last in the masturbation restriction rules.

This is the bound hands blocks masturbation rule:
	if the player is wrist bound behind:
		if auto is 0, say "You can't reach your [genitals] with your wrists bound behind your back!";
		rule fails.
The bound hands blocks masturbation rule is listed last in the masturbation restriction rules.

[!<TheAlreadyWankingRule>+

REQUIRES COMMENTING

+!]
This is the already wanking rule:
	if wanking is 1:
		if auto is 0, say "You are already masturbating!";
		rule fails.
The already wanking rule is listed first in the masturbation restriction rules.

[!<TheEmbarrassingMasturbationRule>+

REQUIRES COMMENTING

+!]
This is the embarrassing masturbation rule:
	let M be a random monster in the location of the player;
	if there is a dangerous monster in the location of the player and M is not a dangerous monster, now M is a random dangerous monster in the location of the player;
	if asshole is actually occupied:
		if the anal sex addiction of the player < 5 and the sex addiction of the player < 10:
			let A be the humiliation of the player;
			if the player is male, increase A by 4000;[Female players are more open to anal masturbation.]
			if A < HUMILIATION-DISGRACED:
				if auto is 0, say "You can[']t bring yourself to masturbate when there[']s [if the number of monsters penetrating asshole > 0 and diaper quest is 0]someone fucking[otherwise]something in[end if] your [asshole]!";
				rule fails;
			if the player is not extremely horny and (A / 8000) < the number of monsters in the location of the player:[shouldn't ever trigger when the player is alone]
				if M is monster:
					if auto is 0, say "You can't bring yourself to [if the player is male]jack off[otherwise]finger yourself[end if] now. What if the [printed name of M] thinks you actually like [if the number of monsters penetrating asshole > 0 and diaper quest is 0]getting fucked in the[otherwise]having things up your[end if] ass!";
					rule fails;
	if the number of monsters penetrating vagina > 0:
		if the vaginal sex addiction of the player < 5 and the sex addiction of the player < 10:
			if the player is not very horny and (the humiliation of the player / 8000) < the number of monsters in the location of the player:
				if M is monster:
					if auto is 0, say "You can't bring yourself to touch yourself now. What if the [printed name of M] thinks you actually like getting [if M is male and diaper quest is 0]fucked[otherwise]toyed with[end if]?";
					rule fails;
	if the number of monsters penetrating face > 0:
		if the oral sex addiction of the player < 5 and the sex addiction of the player < 10:
			if the player is not horny and (the humiliation of the player / 8000) < the number of monsters in the location of the player:
				if M is monster:
					if auto is 0, say "You can't bring yourself to touch yourself now. What if the [printed name of M] thinks you actually like [if M is male and diaper quest is 0]sucking dick[otherwise]having your mouth abused like this[end if]?";
					rule fails.
The embarrassing masturbation rule is listed last in the masturbation restriction rules.

[!<TheClothingBlocksMasturbationRule>+

REQUIRES COMMENTING

+!]
This is the clothing blocks masturbation rule:
	if the player is not able to wank:
		if auto is 0, say "Your [printed name of random cursed pussy covering blocking wanking clothing] won't budge! That item is simply not soft and thin enough for you to [masturbate] through!";
		rule fails.
The clothing blocks masturbation rule is listed last in the masturbation restriction rules.

[!<DecideWhichNumberIsTheMasturbationBonusOfObject>+

Determines how much slower or quicker the player will orgasm when they use a particular object to masturbate

+!]
To decide which number is the masturbation-bonus of (C - an object):
	decide on 0.

[!<ComputeClimaxEffectOfObject>+

REQUIRES COMMENTING

+!]
To compute climax effect of (C - an object):
	do nothing.

[!<SayMasturbate>+

REQUIRES COMMENTING

+!]
To say masturbate:
	say "[if the bimbo of the player < 6]stimulate yourself[otherwise if the player is male]wank[otherwise]jill yourself[end if]".

[!<SayMasturbating>+

REQUIRES COMMENTING

+!]
To say masturbating:
	say "[if the bimbo of the player < 6]stimulating yourself[otherwise if the player is male]wanking[otherwise]jilling yourself[end if]".

[!<wanking:Integer>*

REQUIRES COMMENTING

*!]
wanking is a number that varies.

[!<SayTooSluttyToWank>+

REQUIRES COMMENTING

+!]
To say TooSluttyToWank:
	say "[second custom style]Why would I do that myself when there are all these naughty boys around for me to fuck?[roman type][line break]".

[!<SayPlayerFantasy>+

Piece of text to be displayed as part of the output for masturbation. Should not have any punctuation, and preferably it shouldn't be super long. In random order is used here to cut down on repetitiveness. If you find punctuation at the end of clauses in here, it's wrong and needs to be fixed.

+!]
To say PlayerFantasy:
	let T be a random hypno trap in the location of the player;
	let Fn be fancied-friend;
	let Dn be distant-friend;
	let Nn be nemesis-friend;
	if T is not expired and T is fucktoy hypno trap:
		say "[second custom style][one of][if pregnancy fetish is 1]GETTING PREGNANT[otherwise]GETTING FUCKED[end if][or]BIG COCKS[or]HORNY GUYS[or]HARD COCKS[or]SITTING ON COCKS[or]FUCKING GUYS[or][if the player is male]PROSTATE ORGASMS[otherwise]DOUBLE PENETRATION[end if][or]ASS TO MOUTH[or][if pregnancy fetish is 1]CREAMPIES[otherwise]FORCED CUMDUMPS[end if][or]GANGBANGS[in random order][roman type]";[the player is masturbating because of the trap, more often than not, so it's affecting their ability to not think about slutty things.]
	otherwise if T is not expired and T is diaper hypno trap:
		say "[second custom style][one of]GETTING BOUNCED ON MOMMY'S LAP WHILE WEARING A DIAPER[or]DADDY CUTTING A HOLE IN MY DIAPER AND FUCKING ME[or]GETTING PUNISHED BY MY BABYSITTER FOR BEING NAUGHTY[or]WETTING MY DIAPER UNTIL IT LEAKS[or]BEING DADDY'S LITTLE DIAPERSLUT[or]GETTING FINGERED BY MOMMY DURING A DIAPER CHANGE[or][if diaper messing >= 4]DROPPING A BIG LOAD IN MY DIAPER[end if][in random order][roman type]";
	otherwise if T is not expired and T is cocksucker hypno trap:
		say "[second custom style][one of]CUM. YUMMY CUM[or]CUM. DELICIOUS CUM[or]THICK CUM[or]CUM DRINKING[or]GUZZLING CUM[or]CUM GUZZLING[or][if bukkake fetish is 1]SALTY MAKEUP[otherwise]SALTY MOUTHWASH[end if][or]SUCKING COCK[or]ACCEPTING HIS CUM[or]SWALLOWING HIS CUM[or]DEEPTHROATING COCKS[in random order][roman type]";
	otherwise if the player is diaper focused and the diaper addiction of the player > 14:
		say "[one of]sitting on your mommy's lap as she rubs the front of your leaking diaper and degrades you for being such a baby[or]laying down as your daddy sticks his [manly-penis] into the leg-hole of your diaper and cums inside[or]bouncing on your daddy's knee in a [if diaper messing >= 4]messy diaper[otherwise]wet diaper[end if][or]drinking milk from your mommy's breasts while she lovingly rubs your [if diaper messing >= 4]messy diaper[otherwise]wet diaper[end if][or]being used and punished by an especially mean babysitter[in random order]";
	otherwise if the player is diaper focused and the diaper addiction of the player > 9:
		say "[one of][if the player is male]having a girlfriend force you into diapers before making you wet yourself[otherwise]having a boyfriend force you into diapers before making you wet yourself[end if][or]a dominatrix turning you into a baby against your will and parading you around town for everyone to see your humiliation[or]being blackmailed by your best friend to become her personal diaper slave[or]losing control of your bladder and having to wear diapers as people mock you for being a big baby[in random order]";
	otherwise if the player is diaper focused and the diaper addiction of the player > 4:
		say "[one of][if the player is male]a cute diapered slut sucking your [manly-penis][otherwise]a cute boy in a diaper eating your [vagina][end if][or]forcing those bitches who put you in here into diapers[or]someone being forcibly diapered before shamefully cumming into their padding[or]a girl being diapered and pulled over a mommy-domme's knee for a spanking[in random order]";
	otherwise if the bimbo of the player < 4 and the player is male and transGender is 0 and asswank is 0:[dominating women]
		say "[one of]steamy sex with your [RelationDesc of Fn], [MediumDesc of Fn][or]letting a team of super hot cheerleaders take turns sucking your dick[or]having a threesome with a couple of [if extreme proportions fetish is 1]stacked as hell bitches[otherwise]super fine bitches[end if][or][if the analvirgin of the player is 1]anally[otherwise]revenge[end if] fucking [if the intelligence of the player > 5]the slutty sisters[otherwise]the sexy bitches[end if] who put you in here[or]sexy [men of dominatrix] with big [if lady fetish is 2]asses[otherwise]breasts[end if] and an interest in sitting on your cock[in random order]";
	otherwise if the bimbo of the player < 4 and asswank is 0:[dominating/humiliating men, equal sex with women]
		say "[one of]life as a powerful business woman, with a cute secretary that[']s always there when you feel like having an orgasm[or]having steamy sex with your [RelationDesc of Fn] on [his of Fn] boyfriend's bed[or]forcing the bitches who put you in here to pleasure you as you redesign their wardrobe from scratch[or]forcing your [RelationDesc of Nn] to hang up a picture of [him of Nn]self in a dress in [his of Nn] office[or]sex with a cute [boy of shopkeeper] that always respects your boundaries and has the sense to be gone when you're not horny anymore[or]a whirlwind romance with your [RelationDesc of Nn] wife[in random order]";
	otherwise if the bimbo of the player < 8 and the player is male and transGender is 0:[Being dominated by women, or the player isn't dominated but there's emphasis on penises]
		say "[one of]sexy [men of dominatrix] getting fucked by long, hard cocks[or]being pinned underneath a strongly muscled [if futanari fetish is 1]futa[otherwise]woman[end if] as she plows you with her big hard [if futanari fetish is 0]strapon[otherwise]cock[end if][or]having a threesome with a girl and her strong, muscular boyfriend[or]serving a gorgeous [man of dominatrix] as [he of dominatrix] locks you into chastity[in random order]";
	otherwise if the bimbo of the player < 8:[being dominated by women, men taking passive/equal role]
		say "[one of]the slutty sisters and their sexy choice of clothes[or]being stripped nude by a tall, strapon-wearing [man of dominatrix] and roughly impaled on [his of dominatrix] plastic cock[or]joining in after walking in on your [RelationDesc of Fn] and [his of Fn] boyfriend having sex[or]getting in bed with the cute [boy of shopkeeper] from the accounting division[or]being held down by a tall, shirtless [man of shopkeeper] as the slutty sisters take turns pounding you with strapon dildos[in random order]";
	otherwise if the bimbo of the player < 12 and the player is male and transGender is 0:[submitting to women and men at the same time. Submitting to men because of women.]
		say "[one of]making out with your [RelationDesc of Fn] after [his of Fn] boyfriend [if bukkake fetish is 1]unloads on your face[otherwise if watersports fetish is 1]pisses on your face[otherwise]fills your mouth with load[end if][or]eating out your [RelationDesc of Fn] right after [his of Fn] boyfriend finishes giving [him of Fn] a massive creampie[or]waking up naked in a sorority house with [if bukkake fetish is 1][semen] all over your face[otherwise if artificial enhancements fetish is 1]lipstick tattooed on your face[otherwise]a huge plug in your ass[end if] and a cowbell around your neck[or]sucking off your [RelationDesc of Dn] until [he of Dn] comes[in random order]";
	otherwise if the bimbo of the player < 12:[submitting to people the player knows, sex with strangers]
		say "[one of]tall, muscular [men of shopkeeper] with big, hard [DickDesc of shopkeeper]s[or]the last [boy of shopkeeper] that called you a frigid prude, and how [his of shopkeeper] [if bukkake fetish is 1][semen] would feel all over your face[otherwise if pregnancy fetish is 1][semen] would feel oozing out of your [vagina][otherwise][manly-penis] would feel inside your mouth[end if][or]letting your [RelationDesc of Fn]'s boyfriend [if bukkake fetish is 1]cum on your face[otherwise]fuck you in the ass[end if][or][if pregnancy fetish is 1]letting a stranger fuck your [vagina] without a condom[otherwise]getting into a stranger's car and sucking [his of shopkeeper] [DickDesc of shopkeeper] until you get to [his of shopkeeper] apartment[end if][or]letting your [RelationDesc of Nn] fuck you in front of all your friends[in random order]";
	otherwise if the bimbo of the player < 15:[degradation from strangers]
		say "[one of]getting fucked until [if the player is female and pregnancy fetish is 1]you're pregnant[otherwise]you can't walk[end if][or]being pinned down and fucked by muscular [men of shopkeeper] with big hard [DickDesc of shopkeeper]s[or]being blindfolded, bound, and stuffed full of dildos[or][if the player is originally female]arriving at an important meeting and immediately getting slammed on the table and fucked by the majority shareholder[otherwise]making money on porno sets as a cock warmer between scenes[end if][or][if bukkake fetish is 1 and a random number between 1 and 2 is 1]the feeling of thick, warm [semen] rolling down your face[otherwise if watersports fetish is 1 and a random number between 1 and 2 is 1]the feeling of warm, frothy [urine] streaming into your mouth[otherwise if the raw semen taste addiction of the player > 10]the feeling of thick, warm [semen] spurting into your mouth and rolling down your throat[otherwise]the feeling of a warm, hard [DickDesc of shopkeeper]s in your mouth[end if][in random order]";
	otherwise:[even more degradation from strangers]
		say "[one of]getting gangbanged in the alleyway behind your favourite bar[or][if the player is originally female]using all that time you wasted in business school to further your career as porn actress[otherwise]becoming a pornographic actress[end if][or]waking up bound, naked, and surrounded by a gang of complete strangers with big hard [DickDesc of shopkeeper]s[or]giving a wet, sloppy blowjob to every [man of shopkeeper] that passes you in the street[or]play-testing even more [i]fun[/i] games for Nintendolls[in random order]".

[!<cameWhileWanking:Integer>*

Keeps track of whether or not the player came from some outside influence while they were masturbating.

*!]
came-while-wanking is a number that varies.

[!<assWank:Integer>*

Keeps track of whether or not the player is using the anal masturbation skill to masturbate.

*!]
asswank is a number that varies. asswank is 0.

[!<TheAnalMasturbationLooksSluttyRule>+

Monsters are MUCH more likely to go for the ass if the player is fingering themselves.

+!]
This is the anal masturbation looks slutty rule:
	if wanking is 1:
		if asswank is 1 and asshole is not actually occupied, increase the desirability of asshole by 10.
The anal masturbation looks slutty rule is listed in the butt slut eligibility rules.

[!<TheFingeringLooksSluttyRule>+

Monsters are more likely to go for the pussy if the player is masturbating.

+!]
This is the fingering looks slutty rule:
	if wanking is 1:
		if asswank is 0 and the player is female and vagina is not actually occupied, increase the desirability of vagina by 5.
The fingering looks slutty rule is listed in the pussy slut eligibility rules.

[!<masturbating:Action>*

REQUIRES COMMENTING

*!]
Masturbating is an action applying to nothing.

[!<CheckMasturbating>+

REQUIRES COMMENTING

+!]
Check masturbating:
	if the player is not able to masturbate, do nothing instead;
	if (the wanktime of the player > 0 or lock-it tattoo is worn) and auto is 0 and the number of on-stage chastity cages is 0:
		say "You hesitate, having a sneaking suspicion that [masturbating] [if the wanktime of the player > 0]so soon after a previous orgasm [end if]has a [italic type]chance[roman type] of the girls running the game punishing you for it. Do you want to go ahead and risk it? ";
		unless the player is in agreement, say "You decide against it." instead;
	if the buttskill of the player is 1:
		if the player is fapping-blocked:
			now asswank is 1;
			if auto is 0:
				say "You can only use your ass to masturbate right now right now[if the player is not anal flexible and the player is upright], and you'll have to get on your knees first[end if]. Is that OK? ";
				unless the player is bimbo consenting:
					say "You decide against it.";
					now asswank is 0 instead;
				otherwise if the player is not anal flexible:
					if the player is upright, try kneeling;
					if the player is upright, now asswank is 0 instead;
	if asswank is 0 and the buttskill of the player is 1:
		say "Use your ass to masturbate? [if the player is not anal flexible and the player is upright]You'll have to get on your knees first.[end if]";
		if the player is bimbo consenting:
			if the player is not anal flexible and the player is upright:
				try kneeling;
				if the player is upright, do nothing instead;
			now asswank is 1;[if the player needed to kneel, but couldn't, the line above should kick them out of the function]
	if asswank is 1:
		now asswank is 0;[we know the player wants to masturbate anally, now we need to see if they actually can]
		if the player is wrist bound, say "You can't touch yourself there while your wrists are bound." instead;
		if asshole is actually occupied, say "Your ass is already occupied by the [random thing penetrating asshole]!" instead;
		if the number of bottom level ass protection clothing > 0, say "You would need to displace your [printed name of a random bottom level ass protection clothing] first." instead;
		[if there is a live thing penetrating vagina, say "You can't do that because [NameDesc of a random live thing penetrating vagina] is in the way!" instead;]
		now asswank is 1;
	otherwise if the size of penis > 0 and penis is not erect-at-will and penis is not penis-erect:
		say "Your [ShortDesc of penis] remains completely soft, so you can't do anything with it. Maybe you should try again to see if it will wake up?";
		allocate 2 seconds instead;
	if the player is pee protected and the player is male and auto is 0:
		say "You [if asswank is 1]are still wearing your[otherwise]will get yourself off through your[end if] [ShortDesc of random worn bottom level pee protection clothing] which will cause you to ejaculate into it, is that what you want? ";
		if the player is bimbo consenting, say "";
		otherwise say "Then you better [bold type]remove[roman type] or [bold type]displace[roman type] the [random worn bottom level pee protection clothing] first." instead.

[!<CarryOutMasturbating>+

REQUIRES COMMENTING

+!]
Carry out masturbating:
	let chastity-mod be 0;
	now wanking is 1;
	let object-choice be nothing;
	let C be a random bottom level pee protection clothing;
	allocate arm use;
	allocate 6 seconds;
	if asswank is 1 and auto is 0:
		repeat with O running through carried insertable things:
			if the girth of O < the openness of asshole + 3:
				say "Would you like to use the [ShortDesc of O] to masturbate with? ";
				if the player is consenting:
					now object-choice is O;
					break;
	if asswank is 0 and the player is able to wank and the player is female and vagina is not actually occupied and the number of cursed pussy covering clothing is 0 and auto is 0:[check for insertable]
		repeat with O running through carried insertable things:
			if the girth of O < the openness of vagina + 3:
				say "Would you like to use the [ShortDesc of O] to masturbate with? ";
				if the player is consenting:
					now object-choice is O;
					break;
	if asswank is 0 and the player is able to wank and auto is 0 and object-choice is nothing:[check for vibrator]
		repeat with W running through vibe-wands held by the player:
			say "Would you like to use the [ShortDesc of W] to masturbate with? ";
			if the player is consenting:
				now object-choice is W;
				break;
	let CT be a random camera trap in the location of the player;[prepare to take a picture of the player's orgasm and put a poster somewhere]
	if CT is camera trap and there is an off-stage masturbation poster:
		now target-poster is a random off-stage masturbation poster;
		now the old-stimulant of target-poster is object-choice;
	let N be a random number between 1 and ((12000 - the arousal of the player) / 2000);
	let oldN be N;
	if debugmode > 0, say "[input style]Wanking length is [N].[roman type]";
	if auto >= 1 and N < 3, increase N by 1;
	let danger-wank be 0;
	if auto is 0 and the player is in danger, now danger-wank is 1;
	if object-choice is nothing:[If the player didn't choose a toy to use, see if there's one they MUST use]
		if asswank is 1:
			let O be a random insertable thing penetrating asshole;
			unless O is nothing, now object-choice is O;
		otherwise:
			let O be a random insertable thing penetrating vagina;
			unless O is nothing, now object-choice is O;
			if object-choice is nothing, now object-choice is a random held vibe-wand;
			if object-choice is nothing, now object-choice is a random vibe-wand in the location of the player;
		unless object-choice is nothing, decrease N by the masturbation-bonus of object-choice;
	otherwise:
		decrease N by the masturbation-bonus of object-choice;
		if object-choice is insertable object:
			if asswank is 1, now object-choice is penetrating asshole;
			otherwise now object-choice is penetrating vagina;
	if asswank is 1:[it's harder to cum with your ass]
		increase N by 2;
	otherwise if C is clothing:
		decrease N by the masturbation-bonus of C;
	let M be a random live thing penetrating a body part;
	[if M is a monster and N <= 1, now N is 2;][If there is a monster fucking you, we force 'interrupted!' text;##MG: This is obsolete. Interruptions are handled by MasturbationReaction of M]
	if debugmode > 0, say "[line break][input style]After modifications, wanking length is [N] (1 or less is instant).[roman type]";
	if N <= 1:
		if asswank is 1, say InstantAnalMasturbationFlav of (object-choice) with (M) in (C);
		otherwise say InstantMasturbationFlav of (object-choice) with (M) in (C);
		say "[line break]";
		now N is 1;[so that we know the player is stopping because they came and not because they were interrupted]
	otherwise:
		now came-while-wanking is 0;
		if asswank is 1, say StartAnalMasturbationFlav of (object-choice) with (M) in (C);[Flavour here]
		otherwise say StartMasturbationFlav of (object-choice) with (M) in (C);
		say "[line break]";
		repeat with M2 running through awake undefeated monsters in the location of the player:[Determine how the monster reacts]
			compute MasturbationReaction of M2;
		now resting is 1;
		if the number of monsters grabbing the player > 0 or wanking is 0:[see if masturbation needs to be interrupted]
			now N is -1;
		while N > 1:
			arouse 3000;[handle turn-by-turn changes]
			decrease N by 1;
			let WM be a random live thing penetrating a body part;
			if asswank is 1, say OngoingAnalMasturbationFlav of (object-choice) with (WM) in (C);[handle turn-by-turn flavour]
			otherwise say OngoingMasturbationFlav of (object-choice) with (WM) in (C);
			say "[line break]";
			compute extra turn;
			if asswank is 1 and there is a live thing penetrating asshole, now N is -1;
			if the number of monsters grabbing the player > 0 or wanking is 0:[see if masturbation needs to be interrupted]
				now N is -1;
			otherwise if the player is in danger and M is nothing and N >= 0:
				if a random number between 2 and the sex addiction of the player > the intelligence of the player or danger-wank is 1, say "You are too horny, you can't stop yourself from masturbating!";
				otherwise now N is -1;
			if came-while-wanking > 0[ and the player is not a bit horny], now N is 0;[if this only triggers if the player is horny, it's pretty hard for it to reset on orgasm because orgasm also resets arousal.]
			otherwise now came-while-wanking is 0;
			let PORT be a random summoning portal in the location of the player;
			if PORT is summoning portal:[Increase the charge of any nearby portals]
				compute wankingSiphon of PORT;
			if asswank is 1:
				repeat with M3 running through awake monsters in the location of the player:
					humiliate SLIGHT-HUMILIATION;
		now resting is 0;
	if N <= 0:
		if N is -1, say "[bold type]Your masturbation session has been interrupted![roman type][line break]";
		otherwise say "You stop masturbating.";
	otherwise:
		let MW be a random live thing penetrating a body part;
		if asswank is 1, say ClimaxAnalMasturbationFlav of (object-choice) with (MW) in (C);
		otherwise say ClimaxMasturbationFlav of (object-choice) with (MW) in (C);
		say "[line break]";
		if CT is camera trap:[If there is a nearby camera trap, it takes a picture of the player's orgasm]
			say "[FlashFlav of CT]";
			say "It was in a perfect position to capture a full shot of your [if the sex addiction of the player < 7]crime[otherwise]orgasm[end if].";
			say "[one of][line break][variable custom style][if the humiliation of the player < HUMILIATION-SHAMELESS - 3000]Oh shit! This was a bad place to decide to do that...[otherwise]Looks like someone is helping me expose myself.[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][line break][second custom style]If someone sells that photo, I hope I get royalties![end if][stopping][roman type][line break]";
			set up target-poster;
		if asswank is 1:[progress quests and counters related to masturbation]
			if object-choice is nothing, heal asshole times 1;
			increase anal-orgasms by 1;
			progress quest of anal-orgasm-quest;
		otherwise:
			if the player is male, heal asshole times 1;
			if the player is female:
				if object-choice is not an insertable object, heal vagina times 1;
				increase vaginal-orgasms by 1;
		if a random number between 1 and the sex addiction of the player < 6, SexAddictUp 1;
		orgasm;[handle anything that needs to happen for an orgasm]
		if lock-it tattoo is worn and the wanktime of the player < 120, now the wanktime of the player is 120;
		if auto is 0 and the wanktime of the player > 0 and the number of on-stage chastity cages is 0:[Put the player in chastity if necessary]
			let R be a random number between 1 and 225;
			if unlucky is 1, now R is a random number between 1 and 150;
			let C be a random off-stage chastity cage;
			if R < the wanktime of the player and C is actually summonable:
				say "As you pull your hand away from your crotch, you feel a tightness around your loins. You look down and see that a chastity cage has appeared around your [if the player is male][ShortDesc of penis][otherwise][vagina][end if]! [if the bimbo of the player < 10]Even worse, the[otherwise]The[end if] cage only stops anything from touching your crotch, your [asshole] remains completely unprotected!";
				summon C locked;
				say "[variable custom style]What is the game saying? That I'm too eager to play with myself? How frustrating...![roman type][line break]";
		now the wanktime of the player is 500;
		if object-choice is a thing:[if the player used a sex toy to masturbate, handle any of its special effects]
			compute climax effect of object-choice;
	if object-choice is an insertable object and object-choice is not worn:[Dislodge the sex toy unless you were already wearing it]
		dislodge object-choice;
	now asswank is 0.

To say InstantMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):[We're only doing an introduction here, the rest is handled by the climaxmasturbationflav function; sex addiction here should be raw sex addiction]
	let A be the raw sex addiction of the player;
	if the player is male:
		let R be a random number between 1 and 3;
		if R is 1:
			say "You [if O is vibe-wand]turn on the [ShortDesc of O] and grind your [ShortDesc of penis] against it[otherwise if C is clothing]stroke your [ShortDesc of penis] through your [ShortDesc of C][otherwise]eagerly begin to stroke your [ShortDesc of penis][end if], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasizing about [PlayerFantasy][end if]. [if A < 5]It's almost embarrassing how much it turns you on[otherwise if A < 10]It's a little surprising how much it turns you on[otherwise]It makes you uncontrollably turned on[end if], and as the pleasure rapidly builds upon itself, you realise you're already about to cum.";
		otherwise if R is 2:
			say "You [if O is vibe-wand]turn on the [ShortDesc of O] and[end if] begin to rub your [ShortDesc of penis] [if C is clothing]through your [ShortDesc of C][end if], closing your eyes as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasize about [PlayerFantasy][end if]. Nothing more than a moment passes, [if A < 5]and you are immediately ashamed to[otherwise if A < 10]and you tell yourself you should be ashamed to[otherwise]and you feel your muscles tightening in anticipation as you[end if] realise that you're already going to cum.";
		otherwise if R is 3:
			say "You [if O is vibe-wand]switch on [ShortDesc of O] and rub the vibrating end against your [ShortDesc of penis][otherwise if C is clothing]eagerly begin to stroke your [ShortDesc of penis] through your [ShortDesc of C][otherwise]eagerly begin to stroke your [ShortDesc of penis][end if]. [if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realise you're already going to cum.";
	otherwise:
		if O is insertable object:
			say "[one of]You eagerly begin to fuck yourself with the [printed name of O], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasizing about [PlayerFantasy][end if]. [if A < 5]It's almost embarrassing how much it turns you on[otherwise if A < 10]It's a little surprising how much it turns you on[otherwise]It makes you uncontrollably turned on[end if], and as the heat of new arousal lights up your body, you realize you're already about to cum[or]You slide the [printed name of O] into your [vagina], and begin to vigorously fuck yourself to [if M is a live thing]the feeling of [NameDesc of M][otherwise]the thought of [PlayerFantasy][end if]. Nothing more than a moment passes, [if A < 5]and you are immediately ashamed to[otherwise if A < 10]and you tell yourself you should be ashamed to[otherwise]and you feel your muscles tightening in anticipation as you[end if] realize that you're about to cum.[or]You sink the [printed name of O] into your [vagina] and begin fucking yourself with abandon. [if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realize you're already going to cum.[at random]";
		otherwise if O is vibe-wand:
			say "[one of]You turn on the [printed name of O] and grind yourself against it, [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasizing about [PlayerFantasy][end if]. [if A < 5]It's a little embarrassing how much it turns you on[otherwise if A < 10]It gets you even more turned on[otherwise]It makes you uncontrollably turned on[end if], and as the heat of arousal lights up your body, you realize you're already going to cum.[or]You switch on the [printed name of O] and hold it against your clit, closing your eyes as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasize about [PlayerFantasy][end if]. Already, the rapidly intensifying pleasure seems to head toward a peak, and you realize [if A < 5]with shame [otherwise if A < 10] [otherwise]with anticipation [end if]that you're about to cum.[or]You turn on the [printed name of O], holding the vibrating end against your clit. [if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realize you're already going to cum.[at random]";
		otherwise if C is clothing:
			say "[one of]You eagerly begin to rub your clit through your [ShortDesc of C], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasizing about [PlayerFantasy][end if]. [if A < 5]It's a little embarrassing how much it turns you on[otherwise if A < 10]It gets you even more turned on[otherwise]It makes you uncontrollably turned on[end if], and as much as the sensation is dampened by the [clothing-material of C], you realize you're already going to cum.[or]You begin to rub yourself through your [ShortDesc of C], closing your eyes as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasize about [PlayerFantasy][end if]. Even through the fabric, the pleasure rapidly intensifies, and you realize [if A < 5]with shame [otherwise if A < 10] [otherwise]with anticipation [end if]that you're about to cum.[or]You touch yourself through the [ShortDesc of C], teasing your clit through the fabric. [if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realize you're already going to cum.[at random]";
		otherwise:
			say "[one of]You eagerly begin to rub your clit[unless vagina is actually occupied] and finger your [vagina][end if], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasizing about [PlayerFantasy][end if]. [if A < 5]It's a little embarrassing how much it turns you on[otherwise if A < 10]It gets you even more turned on[otherwise]It makes you uncontrollably turned on[end if], and as the rush of new arousal passes through your body, you realize you're already going to cum.[or][if vagina is actually occupied]You eagerly diddle your clit[otherwise]You eagerly rub your clit whilst fingering your [vagina][end if], closing your eyes as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasize about [PlayerFantasy][end if]. Already, the rapidly intensifying pleasure seems to head toward a peak, and you realize [if A < 5]with shame [otherwise if A < 10] [otherwise]with anticipation [end if]that you're about to cum.[or]You eagerly begin to touch yourself, [if vagina is actually occupied]delicately, but enthusiastically teasing your sensitive clit[otherwise]rubbing your clit and fingering your [vagina][end if].[if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realize you're already going to cum.[at random]".

To say InstantAnalMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	let A be the anal sex addiction of the player;
	let R be a random number between 1 and 3;
	if R is 1:
		say "You [if O is insertable object]ease the [printed name of O] into your [asshole][otherwise]ease your fingers into your [asshole][end if], [if A < 5]cheeks burning with shame[otherwise if A < 10]panting with excitement[otherwise]cooing with unabashed excitement[end if] as you begin to fuck yourself to the [if M is a live thing]the feeling of [NameDesc of M][otherwise]thought of [PlayerFantasy][end if]. Nothing more than a moment passes, [if A < 5]and you are immediately ashamed to[otherwise if A < 10]and you tell yourself you should be ashamed to[otherwise]and you feel your muscles tightening in anticipation as you[end if] realise that you're about to cum.";
	otherwise if R is 2:
		say "[if O is insertable object]The [printed name of O][otherwise]Your fingers[end if] send ripples of pleasure through your body as you push them into your [if the soreness of asshole > 3]sensitive [end if][asshole], eliciting a hiss of pleasure as you [if the player is male and O is nothing]begin to delicately stroke your prostate[otherwise if the player is male]begin to grind the [printed name of O] against your prostate[otherwise if O is insertable object]gingerly push the [printed name of O] in and out[otherwise]gingerly push your fingers in and out[end if]. [if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realise you're already going to cum.";
	otherwise if R is 3:
		say "You eagerly slide your [if O is insertable object][printed name of O][otherwise]fingers[end if] into your [asshole], closing your eyes and beginning to fuck yourself [if M is a live thing]to the feeling of [NameDesc of M][otherwise]as your mind fills with thoughts of [PlayerFantasy][end if]. [if A < 5]You can't help feeling ashamed at how much it turns you on[otherwise if A < 9]You can't believe how much it turns you on[otherwise]It gets you unbelievably turned on[end if], and as the rush of new arousal passes through your body, you realise that you're about to cum.".

To say StartMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	let R be a random number from 1 to 3;
	if the player is male and auto < 2:
		if O is vibe-wand:
			say "You switch on the [ShortDesc of O] and hold the larger end against your [ShortDesc of penis], slowly rolling it back and forth as you feel yourself growing stiff and hard.";
		otherwise if C is clothing:
			if the player is very horny:
				say "You grab your erect [ShortDesc of penis] through your [ShortDesc of C].";
			otherwise if R is 1:
				say "You grab your [ShortDesc of penis] through your [ShortDesc of C], rubbing your palm [one of]back and forth[or]up and down[or]in small circles[at random] as you feel yourself growing stiff and hard.";
			otherwise if R is 2:
				say "You grab the bulge in your [ShortDesc of C], gently teasing it back and forth as your [ShortDesc of penis] grows [if the size of penis > 5]big and [end if]hard.";
			otherwise:
				say "You press your fingers to your [ShortDesc of penis], delicately [one of]stimulating[or]teasing[at random] it through your [ShortDesc of C]. It doesn[']t take long to get hard, and soon you are using the [clothing-material of C] as an additional tool for pleasuring yourself.";
		otherwise:
			if the player is very horny:
				say "You grab your erect [ShortDesc of penis] and begin to stroke.";
			otherwise if R is 1:
				say "You wrap your fingers around your [ShortDesc of penis], which [if the size of penis > 7]slowly stiffens as you begin to stroke[otherwise if the size of penis > 4]quickly stiffens as you begin to stroke[otherwise if the size of penis > 1]stiffens within only a couple strokes[otherwise]which is hard instantly, although it's so small you can only start 'stroking' if you're holding it with just your forefinger and thumb[end if].";
			otherwise if R is 2:
				say "You grab your [if the size of penis < 3][ShortDesc of penis][otherwise if the size of penis is 7 or the size of penis is 6][ShortDesc of penis][otherwise]penis[end if], eagerly stroking it [if the size of penis > 7]as it slowly grows into a [ShortDesc of penis][otherwise if the size of penis > 5]as it grows stiff and hard[otherwise if the size of penis > 2]as it hardens into a [ShortDesc of penis][otherwise]with your thumb and forefinger[end if].";
			otherwise:
				say "You eagerly begin stroking your [Shortdesc of penis], which hardens in anticipation of what comes next.";
	otherwise if auto < 2:
		if O is insertable object:
			if R is 1:
				say "You [if player is not horny]sigh softly[otherwise if player is horny]moan quietly[otherwise]shudder with pleasure[end if] as you slide the [ShortDesc of O] into your [vagina] and begin to fuck yourself.";
			otherwise if R is 2:
				say "You ease the [ShortDesc of O] into your [vagina], eagerly rubbing your clit as you start to fuck yourself with the toy.";
			otherwise:
				say "You reach between your legs, gently spreading your outer lips as you sink the [ShortDesc of O] into your [vagina], and begin to work it in and out.";
		otherwise if vagina is actually occupied:
			say "You [if O is vibe-wand]switch on the [ShortDesc of O] and gingerly hold it against[otherwise]start rubbing[end if] your delicate, sensitive clit as [if there is a live thing penetrating vagina]the [random live thing penetrating vagina] continues to pump away[otherwise]your pussy muscles clench around the [random thing penetrating vagina][end if].";
		otherwise if O is vibe-wand:
			if R is 1:
				say "You [if player is not horny]sigh softly[otherwise if player is horny]moan quietly[otherwise]shudder with pleasure[end if] as you switch on the [ShortDesc of O] and hold the bigger end just under your clit.";
			otherwise if R is 2:
				say "You turn on the [ShortDesc of O] and ease it up to your clit, sighing quietly as the toy vibrates against your outer lips.";
			otherwise:
				say "You reach between your legs, gently spreading your outer lips as you switch on the [ShortDesc of O] and hold it against your sensitive bits.";
		otherwise if C is clothing:
			if R is 1:
				say "You paw at yourself through your [ShortDesc of C], shivering as the [clothing-material of C] rubs up against your sensitive outer [vagina].";
			otherwise if R is 2:
				say "You slowly rub yourself through the fabric of your [ShortDesc of C], which dampens slightly with [if the semen volume of vagina > 0]a bit of [semen] trapped in your [vagina][otherwise]feminine juices[end if].";
			otherwise:
				say "You start rubbing your clit through your [ShortDesc of C], which dampens the sensation somewhat, but adds an interesting new one to compensate.";
		otherwise:
			if R is 1:
				say "You sink your fingers into your [vagina], [if player is not horny]sighing softly[otherwise if player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as you gently push them in and out.";
			otherwise if R is 2:
				say "You reach between your legs, parting your [if the semen coating of thighs > 0]slimy, [semen] glazed labia lips[otherwise]delicate labia lips[end if] with your fingers, [if player is not horny]sighing softly[otherwise if player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as they sink into your [vagina].";
			otherwise:
				say "You allow your fingers to dip into your [vagina], trying to figure out [if the raw sex addiction of the player < 5]what possible motivation you could have for acting like this.[otherwise]why you didn[']t try this way sooner![end if]".

To say StartAnalMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	let R be a random number from 1 to 3;
	if O is insertable object:
		if R is 1:
			say "You reach between your legs as you slide the [printed name of O] into your [asshole] and slowly being to work it in and out.";
		otherwise if R is 2:
			say "You reach between your legs, [if player is not horny]sighing softly[otherwise if player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as you slowly begin to fuck yourself with the [printed name of O].";
		otherwise:
			say "You [if player is not horny]sigh softly[otherwise if player is horny]moan quietly[otherwise]shudder with pleasure[end if] as you reach between your legs and sink the [printed name of O] into your [asshole], and slowly begin to fuck yourself.";
	otherwise:
		if R is 1:
			say "You reach between your legs and slip your fingers into your [asshole]. You [if player is not horny]sigh softly[otherwise if player is horny]moan quietly[otherwise]shudder with pleasure[end if] as you begin to gently push them in and out.";
		otherwise if R is 2:
			say "You reach between your legs, [if player is not horny]sighing softly[otherwise if player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as your fingers gingerly enter your [asshole] and slowly begin to push in and out.";
		otherwise:
			say "You reach between your legs, [if the anal sex addiction of the player < 3 and the humiliation of the player < HUMILIATION-MODEST]cheeks burning with shame[otherwise]shivering with excitement[end if] as your fingers sink into your [asshole], and slowly begin to fuck yourself.";

To say SquirtDesc:
	say "[if the openness of vagina < 4]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if]";

To say ClimaxMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):[note, this appears even when the player has an instant orgasm]
	let F be a random live thing penetrating face;
	let X be a random live thing penetrating a fuckhole;
	if the player is male:
		say "You [if C is clothing or O is vibe-wand]rub[otherwise]stroke[end if] yourself faster and faster, [if the bimbo of the player < 7]groaning[otherwise]moaning[end if] [if F is a live thing]into [NameDesc of F][otherwise]with excitement and pleasure[end if] as you finally go over the edge.";[the rest is handled by the orgasm function]
	otherwise:
		if O is insertable object:
			say "You [if F is a live thing]moan into [NameDesc of F][otherwise if the raw sex addiction of the player < 5]grit your teeth, panting[otherwise if the raw sex addiction of the player < 10]purse your lips, moaning[otherwise]can't help but form your lips into a large, circular 'O', cooing[end if] with pleasure as the feeling of hard [if O is golden phallus]gold[otherwise]plastic[end if] sliding in and out of your [vagina] [if the player is very horny]finally [end if]pushes you over the edge. Your [vagina] [one of]clamps down[or]spasms desperately[or]clenches[at random] around the [printed name of O] as it [SquirtDesc], powerful waves of pleasure overwhelming your senses as your [one of]orgasm wracks your body[or]orgasm crashes through your body[or]orgasm crashes over you[at random].";
		otherwise if O is vibe-wand:
			say "You [if F is a live thing]moan into [NameDesc of F][otherwise if the raw sex addiction of the player < 5]grit your teeth, panting[otherwise if the raw sex addiction of the player < 10]purse your lips, moaning[otherwise]can't help but form your lips into a large, circular 'O', cooing[end if] with pleasure as the intense clitoral stimulation from your [printed name of O] [if the player is very horny]finally [end if]pushes you over the edge. [if X is a thing]Your [vagina] [one of]clamps down[or]spasms desperately[or]clenches[at random] around [NameDesc of X] as it[otherwise if the player is upright]Your knees go weak as your muscles tense then relax as your [vagina][otherwise]Your jaw goes slack as your muscles tense then relax as your [vagina][end if] [SquirtDesc], powerful waves of pleasure overwhelming your senses as your [one of]orgasm wracks your body[or]orgasm crashes through your body[or]orgasm crashes over you[at random].";
		otherwise if C is clothing:
			say "As the pleasure builds, it becomes harder and harder to [if the player is prone]keep yourself from face-planting on the floor[otherwise]stand up[end if], the feeling of your fingers stroking your clit through the [clothing-material of C] bringing you ever closer to the edge. You can feel the material rubbing against your labia, stimulating your slit in a way that wouldn't be possible with just your fingers. A piercing moan escapes your lips as you [if the player is very horny]finally[end if] crest your peak, followed by dozens more as [if there is an insertable object penetrating vagina]your [vagina] clamps down around the [printed name of a random insertable object penetrating vagina][otherwise]a powerful orgasm wracks your body[end if] and [if the openness of vagina < 4]soils[otherwise]soaks[end if] your [ShortDesc of C] with girlcum[if the raw sex addiction of the player < 5] and shame[end if].";
		otherwise:
			say "You find yourself moaning as the [if the raw sex addiction of the player < 6]slow building pleasure finally approaches[otherwise if the raw sex addiction of the player < 13]the buildup of pleasure approaches[otherwise]the fast building pleasure races toward[end if] a climax, inner muscles [if X is a thing][one of]clamping down[or]clenching[at random] around [NameDesc of X][otherwise]tensing and relaxing around your fingers[end if] as you go over the edge. [if M is a live thing]Your moans are muffled by [NameDesc of F][otherwise if the humiliation of the player < HUMILIATION-PROUD]You can't even begin to stifle your moans[otherwise]Uncontrolled moans stream out of your mouth[end if] as your body erupts with pleasure, [if the openness of vagina < 4]girlcum dribbling down your leg[otherwise]girlcum spraying out between your fingers[end if] as shivers of pleasure run up and down your spine.".

To say ClimaxAnalMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	let F be a random live thing penetrating face;
	let X be a random live thing penetrating a fuckhole;
	if the player is male:[ejaculation is handled by the orgasm function]
		if O is insertable object:
			say "You [if F is a live thing]moan through [NameDesc of F][otherwise if the anal sex addiction of the player < 5]grit your teeth, grunting[otherwise if the anal sex addiction of the player < 10]purse your lips, moaning[otherwise]can't help but form your lips into a large, circular 'O', cooing[end if] with pleasure as the feeling of hard [if O is golden phallus]gold[otherwise]plastic[end if] [one of]punching your prostate[or]ramming your sensitive prostate[or]grinding against your prostate[at random] [if the player is very horny]finally [end if]pushes you over the edge. You feel your anal muscles rapidly tensing and relaxing, intensifying the feeling of the [printed name of O] inside you as waves of pleasure ripple through your body.";
		otherwise:
			say "You find yourself moaning as the [if the raw sex addiction of the player < 6]slow building pleasure finally approaches[otherwise if the raw sex addiction of the player < 13]the buildup of pleasure approaches[otherwise]the fast building pleasure races toward[end if] a climax, inner muscles [if X is a thing][one of]clamping down[or]clenching[at random] around [NameDesc of X][otherwise]tensing and relaxing around your fingers[end if] as you go over the edge. [if M is a live thing]Your moans are muffled by [NameDesc of M][otherwise if the humiliation of the player < HUMILIATION-PROUD]You can't even begin to stifle your moans[otherwise]Uncontrolled moans stream out of your mouth[end if] as your prostate tightens up, anal muscles rapidly tensing and relaxing as shivers of pleasure run up and down your spine.";
	otherwise:
		if O is insertable object:
			let V be a random thing penetrating vagina;
			say "You [if F is a live thing]moan through [NameDesc of F][otherwise if the anal sex addiction of the player < 5]grit your teeth, panting[otherwise if the anal sex addiction of the player < 10]purse your lips, moaning[otherwise]can't help but form your lips into a large, circular 'O', cooing[end if] with pleasure as the feeling of hard [if O is golden phallus]gold[otherwise]plastic[end if] sliding in and out of your [asshole] [if the player is very horny]finally [end if]pushes you over the edge. Your [vagina] [if V is a thing][one of]clamps down[or]spasms desperately[or]clenches[at random] around the [printed name of V][otherwise]clenches around nothing[end if] as it [SquirtDesc], powerful waves of pleasure overwhelming your senses as your [one of]orgasm wracks your body[or]orgasm crashes through your body[or]orgasm crashes over you[at random].";
		otherwise:
			let V be a random thing penetrating vagina;
			say "You find yourself moaning as the [if the anal sex addiction of the player < 6]slow building pleasure finally approaches[otherwise if the anal sex addiction of the player < 13]the buildup of pleasure approaches[otherwise]the fast building pleasure races toward[end if] a climax, anal muscles [if V is a thing][one of]clamping down[or]clenching[at random] around [NameDesc of V][otherwise]tensing and relaxing around your fingers[end if] as you go over the edge. [if F is a live thing]Your moans are muffled by [NameDesc of F][otherwise if the humiliation of the player < HUMILIATION-PROUD]You can't even begin to stifle your moans[otherwise]Uncontrolled moans stream out of your mouth[end if] as your body erupts with pleasure, [if the openness of vagina < 4]girlcum dribbling down your leg[otherwise]girlcum spraying out between your legs[end if] as shivers of pleasure run up and down your spine.".

To say OngoingMasturbationFlav of (O - an object) with (N - a thing) in (C - an object):
	let M be N;
	if the player is male:
		if O is vibe-wand:
			say "[one of]You shudder with pleasure as your [printed name of O] vibrates against your [player-penis], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasizing about [PlayerFantasy][end if].[or]You half register the sticky wetness of your precum as you use your [printed name of O] to smear it up and down your shaft, [if M is a live thing]totally absorbed in pleasuring [NameDesc of M] even more[otherwise]too enthralled by the thought of [PlayerFantasy][end if].[or]The [printed name of O] provides a unique sensation as you [if the size of penis < 3]tenderly[otherwise if the humiliation of the player < HUMILIATION-MODEST + 4000]abashedly[otherwise]eagerly[end if] rub it against your [player-penis], [if M is a live thing]allowing [NameDesc of M] to use you[otherwise]fantasizing about [PlayerFantasy][end if].[or]You continue to stimulate your [player-penis] with your [printed name of O], [if the bimbo of the player < 8]trying to ignore[otherwise]relishing in[end if] its unmistakable sex toy hum as you [if M is a live thing]close your eyes and focus on how [NameDesc of M] feels[otherwise]fantasize about [PlayerFantasy][end if].[or]You lose yourself to pleasure, [if the bimbo of the player < 4]grunting[otherwise if the bimbo of the player < 8]groaning[otherwise if the bimbo of the player < 12]moaning[otherwise if the bimbo of the player < 15]cooing[otherwise]shamelessly moaning[end if] as you vigorously rub the [printed name of O] against your [player-penis].[or]You use your [printed name of O] to pin your [player-penis] against your body, precum rolling off your shaft as you [if M is a live thing]use your body to pleasure both yourself and [NameDesc of M][otherwise]fantasize about [PlayerFantasy][end if].[at random]";
		otherwise if C is clothing:
			say "[one of]You shudder with a mixture of [if the bimbo of the player < 8]shame[otherwise]frustration[end if] and pleasure as you massage the tip of your [player-penis] with your [ShortDesc of C], [if M is a live thing]your focus on [NameDesc of M][otherwise]fantasizing about [PlayerFantasy][end if].[or]You half register the sticky wetness of your precum soaking into your [ShortDesc of C] as you stroke your [player-penis] through the fabric, too enthralled by [if M is a live thing][NameDesc of M][otherwise]the thought of [PlayerFantasy][end if].[or]The [ShortDesc of C] provides a unique sensation as you [if the size of penis < 3]tenderly[otherwise if the humiliation of the player < HUMILIATION-MODEST + 4000]abashedly[otherwise]eagerly[end if] rub it against your [player-penis], [if M is a live thing]as you feel [NameDesc of M] use you[otherwise]fantasizing about [PlayerFantasy][end if].[or]You continue to clamp and squeeze your [player-penis] through your [ShortDesc of C], [if the bimbo of the player < 8]trying to ignore[otherwise]relishing in[end if] its tightness against your skin as you [if M is a live thing]close your eyes and focus on the feel of [NameDesc of M][otherwise]fantasize about [PlayerFantasy][end if].[or][CummingInPantiesFantasy of C][or]You lose yourself to pleasure, [if the bimbo of the player < 4]grunting[otherwise if the bimbo of the player < 8]groaning[otherwise if the bimbo of the player < 12]moaning[otherwise if the bimbo of the player < 15]cooing[otherwise]shamelessly moaning[end if] as you vigorously rub the bunched up [clothing-material of C] of your [ShortDesc of C] against your [player-penis].[or][CooingMasturbation of C][or][DirtyThoughtsMasturbation of C][or]Your [player-penis] strains against your [ShortDesc of C], leaking precum into the [clothing-material of C] as you [if M is a live thing]use your body to pleasure both yourself and [NameDesc of M][otherwise]fantasize about [PlayerFantasy][end if].[at random]";
		otherwise:
			say "[one of]You shudder with pleasure, continuing to work your [player-penis] as you [if M is a live thing]use your body to pleasure both yourself and [NameDesc of M][otherwise]fantasize about [PlayerFantasy][end if].[or]You eagerly stroke your [player-penis], [if the bimbo of the player < 4]grunting[otherwise if the bimbo of the player < 8]groaning[otherwise if the bimbo of the player < 12]moaning[otherwise if the bimbo of the player < 15]cooing[otherwise]shamelessly moaning[end if] as your mind runs wild with increasingly [if M is a live thing]submissive[otherwise]dirty[end if] thoughts.[or]You hold your [player-penis] [if the size of penis < 2]as tightly as you can with only two fingers, eagerly stroking yourself to[otherwise]tightly as you stroke yourself to[end if] the [if M is a live thing]rhythm of [NameDesc of M][']s thrusts[otherwise]thought of [PlayerFantasy][end if].[or]Your [player-penis] drools precum freely onto the floor, [if the size of penis > 4]bobbing[otherwise]jiggling[end if] as you passionately [if the size of penis < 4]tug[otherwise]stroke[end if] it[unless M is a live thing] to fantasies of [PlayerFantasy][otherwise]to the feeling of [NameDesc of M][end if].[or]Your surroundings fall away as the sensations begin to overwhelm you, clouding your thoughts and colouring your voice as you [if the size of penis < 4]tug[otherwise]stroke[end if] away.[or]You find it increasingly hard to control the sound of your voice as you [if the size of penis < 4]tug[otherwise]stroke[end if] away, heart racing and thoughts slowly trickling away as orgasm closes in.[or]Your precum leaks into your hand, lubricating your [player-penis], and adding a strangely satisfying [']shlick['] to every movement of your hands. [if the humiliation of the player > HUMILIATION-PROUD + 2000]It's not loud enough for someone outside the room to hear it, but you [second custom style]wish it was[roman type].[otherwise if M is a live thing]It isn't loud, but you know [NameDesc of M] knows what it is[end if][or]You murmur as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasize about [PlayerFantasy][end if], breathing faster and faster as the pleasure begins to build up in your [player-penis].[or]You tremble with pleasure, your hand moving at a pace all its own as it relentlessly pumps your [player-penis] closer and closer to orgasm.[at random]";
	otherwise:
		if there is a live thing penetrating vagina:
			now M is a random live thing penetrating vagina;
			say "[if O is vibe-wand][one of]You shudder as your [printed name of O] bumps your clit[or]You touch the [printed name of O] to your clit[or]You shiver in pleasure as you rub the [printed name of O] around your clit[or]You move the [printed name of O] in small circles around your clit[in random order][otherwise][one of]You shudder with pleasure, jilling your clit[or]You flick your bean happily[or]You circle your clit with your index finger[or]You rub your clit between your index finger and thumb[in random order][end if][one of] as your [vagina] clamps around [NameDesc of M][or], allowing [NameDesc of M] to fill you up[or], in rhythm with [NameDesc of M][in random order].";
		otherwise if there is a live thing penetrating asshole:
			now M is a random live thing penetrating asshole;
			say "[if O is vibe-wand][one of]You hold the [printed name of O] against clit, fingering yourself[or]You touch the [printed name of O] to your clit[or]You shiver in pleasure as you rub the [printed name of O] around your clit[or]You move the [printed name of O] in small circles around your clit[in random order][otherwise if O is an insertable object][one of]You use the [printed name of O] to fuck yourself[or]You continue to fuck yourself with the [printed name of O][at random][otherwise][one of]You shudder with pleasure, jilling your clit[or]You push two fingers inside your [vagina][or]You vigorously fingerfuck yourself[or]You rub your clit between your index finger and thumb[in random order][end if][one of] as your [asshole] clamps around [NameDesc of M][or], allowing [NameDesc of M] to fill you up[or], in rhythm with [NameDesc of M][in random order].";
		otherwise if there is a live thing penetrating face:
			now M is a random live thing penetrating face;
			say "[one of]You moan around [NameDesc of M][or]You make sure to continue moving your head[or]You swirl your tongue gently[or]You bob your head back and forth[in random order][if O is vibe-wand][one of], holding the [printed name of O] against your clit[or] as you touch the [printed name of O] against your clit[or] as you eagerly grind against the [printed name of O][or], moving the [printed name of O] in small circles around your clit[in random order][otherwise if O is an insertable thing][one of], continue to fuck yourself with the [printed name of O][or] as you fuck yourself with the [printed name of O][or] as you eagerly fuck yourself with the [printed name of O][or], fucking yourself with the [printed name of O][in random order][otherwise][one of] as you thrust two fingers in and out of your [vagina][or] as you massage your [vagina][or] as you flick your clit gently[or] as you hump yourself with your hand[in random order][end if].";
		otherwise if M is a live thing:
			say "[one of]You let [NameDesc of M] keep going[or]You allow [NameDesc of M] to continue[or]You continue to pleasure [NameDesc of M][or][BigNameDesc of M] keeps using you[in random order][if O is vibe-wand][one of], holding the [printed name of O] against your clit[or] as you touch the [printed name of O] against your clit[or] as you eagerly grind against the [printed name of O][or], moving the [printed name of O] in small circles around your clit[in random order][otherwise if O is an insertable thing][one of], continue to fuck yourself with the [printed name of O][or] as you fuck yourself with the [printed name of O][or] as you eagerly fuck yourself with the [printed name of O][or], fucking yourself with the [printed name of O][in random order][otherwise][one of] as you thrust two fingers in and out of your [vagina][or] as you massage your [vagina][or] as you flick your clit gently[or] as you hump yourself with your hand[in random order][end if].";
		otherwise if O is insertable object:
			say "[one of]You shudder with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure, continuing to fuck yourself with your [printed name of O].[or]You continue to fuck yourself with your [printed name of O], mimicking the motion and feel of a real [manly-penis] as you fantasize about [PlayerFantasy].[or]You fantasize about [PlayerFantasy]. You slump against a [if playerRegion is Woods]tree[otherwise]wall[end if] as you shove the [printed name of O] in and out of your [vagina] as fast and hard as your arms will let you.[or]You fuck your [vagina] with slow, deep thrusts, making sure it touches your sensitive spots in just the right ways. It becomes hard to keep quiet as the pleasure slowly builds.[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and invigorates you.[otherwise]Imagining it arouses you beyond belief, and you slow down just a bit, hoping something will happen.[end if][or]You rub your [BreastDesc] and vigorously fuck yourself with your [printed name of O], fantasizing about [PlayerFantasy].[or]You slowly work the [printed name of O] in and out of your [vagina], [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] as it rubs along your sensitive inner walls and oh-so-slightly jostles your clit.[or]You continue to fuck yourself with your [printed name of O], fantasizing about [PlayerFantasy].[or]You give yourself over to passion, moaning with pleasure as you fuck yourself with your [printed name of O], letting[if the raw sex addiction of the player < 8] shameful[end if] fantasies take over your mind and guide the motion of your hands.[or]You pleasure yourself with your [printed name of O], [if the raw sex addiction of the player < 6]wishing it didn't feel so good[otherwise if the raw sex addiction of the player < 13]wishing it were bigger[otherwise]moaning as loudly as you can in hopes of attracting a big, fat replacement[end if][at random]";
		otherwise if O is vibe-wand:
			let A be a random number between 1 and 2;
			if A is 1:
				say "[one of]You fantasize about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you massage your clit with your [printed name of O].[or]You moan [if the raw sex addiction of the player < 8]quietly[otherwise]loudly[end if] as you tease yourself with the [printed name of O], mind racing with thoughts of [PlayerFantasy].[or]The unique sensation of the [printed name of O] buzzing against your delicate inner lips drives you to new heights of pleasure, intensifying even the lightest touch of your clit.[or]You continue to hold the [printed name of O] against your clit, shivering with pleasure as you fantasize about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, hoping something will happen.[end if][at random]";
			otherwise:
				say "[one of]You fantasize about [PlayerFantasy]. A persistent humming noise can be heard as you hold your [printed name of O] against your [if the semen volume of vagina > 0]cum-sodden[otherwise if the raw sex addiction of the player < 10]shamefully wet[otherwise]desperately wet[end if] [vagina].[or]You continue to stimulate your [vagina] with your [printed name of O], [if the raw sex addiction of the player < 6]tittering[otherwise]hissing[end if] with pleasure as you fantasize about [PlayerFantasy].[or]You fantasize about [PlayerFantasy]. It becomes hard to stay on your feet as the [printed name of O] buzzes against your clit, your legs shaking in an effort to deal with the mounting pleasure.[or]You guide the [printed name of O] in small circles around your clit, [if the bimbo of the player < 12]quietly moaning[otherwise if the bimbo of the player < 15]passionately moaning[otherwise]shamelessly moaning[end if] as you grope your [BreastDesc] to the thought of [PlayerFantasy].[at random]";
		otherwise if C is clothing:[Only did variations for semen soak, urine soak would have made things incredibly messy. Also it was too big so I had to cut it in half.]
			let A be a random number between 1 and 2;
			if A is 1:
				say "[one of]You fantasize about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you massage your clit through your [ShortDesc of C].[or]Your fingers caress your [vagina] through your [ShortDesc of C], rubbing harder and harder as your mind races with thoughts of [PlayerFantasy].[or]The unique sensation of the [clothing-material of C] rubbing against your delicate inner lips drives you to new heights of pleasure, amplifying even the lightest brush of your fingers against your clit.[or]You continue to rub your clit through your [ShortDesc of C], shivering with pleasure as you fantasize about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already far too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, hoping something fun might happen.[end if][at random]";
			otherwise:
				say "[one of][if the semen-soak of C > 1 and pregnancy fetish is 1]You stroke yourself through the [ShortDesc of C], strangely invigorated by the thought that the [semen] absorbed into the [clothing-material of C] could have ended up inside your [vagina].[otherwise if the semen-soak of C < 1]You stroke yourself through the soft [clothing-material of C], trying not to think of possible consequences of keeping it on instead of taking it off.[otherwise]You stroke yourself through [ShortDesc of C], acutely aware of the feeling of [semen] rubbing up against your [vagina].[end if][or]You continue to touch and rub your [vagina] through your [ShortDesc of C], [if the raw sex addiction of the player < 6]tittering[otherwise]hissing[end if] with pleasure as you fantasize about [PlayerFantasy].[or]You fantasize about [PlayerFantasy]. It becomes hard to stay on your feet as you stroke yourself through your [ShortDesc of C], your legs shaking in an effort to deal with the mounting pleasure.[or]You rub your clit through your [ShortDesc of C], [if the bimbo of the player < 12]quietly moaning[otherwise if the bimbo of the player < 15]passionately moaning[otherwise]shamelessly moaning[end if] as you grope your [BreastDesc] to the thought of [PlayerFantasy].[or]Your [ShortDesc of C] feels soft[if the semen-soak of C > 0] and damp[end if] against your fingers, acting as a barrier between you and your [vagina] that prevents you from fully enjoying your own touch.[at random]";
		otherwise:
			let A be a random number between 1 and 2;
			if A is 1:
				say "[one of]You fantasize about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you work your fingers in and out of your [vagina].[or]You continue to passionately shlick yourself, allowing your mind to run wild with thoughts of [PlayerFantasy].[or]You dip your fingers in and out of your [vagina], [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] with pleasure as you fantasize about [PlayerFantasy].[or]You tenderly run your thumb over your clit, fantasizing about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, hoping something fun will happen.[end if][at random]";
			otherwise:
				let P be a random worn nipple covering clothing;
				say "[one of]You fantasize about [PlayerFantasy]. Quiet shlicking noises can be heard as you work your fingers in and out of your [if the semen volume of vagina > 0]cum-sodden[otherwise if the raw sex addiction of the player < 10]shamefully wet[otherwise]desperately wet[end if] [vagina].[or]You rapidly rub your clit, allowing your fingers to slip into your [vagina] as your mind turns to thoughts of [PlayerFantasy].[or]You eagerly diddle your clit and [if P is clothing]rub your [BreastDesc] through your [printed name of P][otherwise]tweak your nipples[end if], allowing your back to rest up against a nearby [if playerRegion is Woods]tree[otherwise]wall[end if] as you fantasize about [PlayerFantasy].[or]You fuck yourself with your own fingers, [if the bimbo of the player < 5]shuddering[otherwise if the bimbo of the player < 12]trembling[otherwise]rolling your eyes back[end if][if the semen volume of vagina < 1] at how inexorably pleasurable Nintendolls managed to make it feel[otherwise if the semen volume of vagina < 4] at the feeling of the slimy [semen] trapped in your [vagina][otherwise] as thick, creamy [semen] coats your fingers and rolls down your arm.[end if][or]You continue your passionate shlicking session, [if the bimbo of the player < 7]trying and failing to stifle your shameful moans[otherwise if the bimbo of the player < 13]half-heartedly trying to stifle your passionate moans[otherwise]allowing shameless, wanton moans to stream out of your mouth[end if] as you fantasize about [PlayerFantasy].[at random]".

To say CummingInPantiesFantasy of (C - a clothing):
	say "You tremble with pleasure as you grope yourself through your [ShortDesc of C], which somehow intensifies the sensation of your own touch. Impending orgasm looms in your thoughts, which are increasingly muddied with ideas of how [if the semen addiction of the player < 5]disgusting[otherwise if the semen addiction of the player < 10]strange[otherwise if the semen addiction of the player < 15]exciting[otherwise]fucking hot[end if] it will feel to walk around with a [if the semen addiction of the player < 8]clammy[otherwise]warm[end if] load of [semen] against your [player-penis].".

To say CooingMasturbation of (C - a clothing):
	say "You continue passionately stroking your [player-penis] through your [ShortDesc of C], knowing from the dark spot near the waist band that the slightest glance from anyone around you would tell them how much you're enjoying yourself.".

To say DirtyThoughtsMasturbation of (C - a clothing):
	say "[unless the player is monster fucked]You fantasize about [PlayerFantasy]. Your surroundings fall away as you focus in on your dirty [otherwise]Your surroundings fall away as you lose yourself in increasingly submissive [end if]thoughts, feeling an increasing frustration at the way the [ShortDesc of C] is preventing you from touching your [player-penis] in the way you want.".

To say OngoingAnalMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	if O is insertable object:
		say "[one of]You shudder with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure, continuing to fuck yourself with your [printed name of O].[or]You continue to fuck yourself with your [printed name of O], mimicking the motion and feel of a real [manly-penis] [if the player is male]sliding past your prostate[end if] as you fantasize about [PlayerFantasy].[or]You fantasize about [PlayerFantasy]. You slump your head against a [if playerRegion is Woods]tree[otherwise]wall[end if] as you shove the [printed name of O] in and out of your [asshole] as fast and hard as your arms will let you.[or]You fuck your [asshole] with slow, deep thrusts, making sure it [if the player is male]relentlessly grinds your prostate[otherwise]touches your sensitive spots in just the right ways[end if]. It becomes hard to keep quiet as the pleasure slowly builds.[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and invigorates you.[otherwise]Imagining it arouses you beyond belief, and you slow down just a bit, hoping something happens.[end if][or]You rub your [BreastDesc] and vigorously fuck yourself with your [printed name of O], fantasizing about [PlayerFantasy].[or]You slowly work the [printed name of O] in and out of your [asshole], [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] as it rubs [if the player is male]against your sensitive prostate[otherwise]your sensitive inner walls[end if].[or]You continue to fuck yourself with your [printed name of O], fantasizing about [PlayerFantasy].[or]You give yourself over to passion, moaning with pleasure as you fuck yourself with your [printed name of O], letting[if the raw sex addiction of the player < 8] shameful[end if] fantasies take over your mind and guide the motion of your hands.[or]You pleasure yourself with your [printed name of O], [if the raw sex addiction of the player < 6]wishing it didn't feel so good[otherwise if the raw sex addiction of the player < 13]wishing it were bigger[otherwise]moaning as loudly as you can in hopes of attracting a big, fat replacement[end if].[at random]";
	otherwise:
		let A be a random number between 1 and 2;
		if A is 1:
			say "[one of]You fantasize about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you work your fingers in and out of your [asshole].[or]You continue to passionately fingerfuck your [asshole], allowing your mind to run wild with thoughts of [PlayerFantasy].[or]You dip your fingers in and out of your [asshole], [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] with pleasure as you fantasize about [PlayerFantasy].[or][if the player is male]You let your fingertips gingerly tease your prostate[otherwise]You tease your outer ring with the tips of your fingers[end if], fantasizing about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, in the hope of something 'extra fun' happening.[end if][at random]";
		otherwise:
			let P be a random worn nipple covering clothing;
			say "[one of]You fantasize about [PlayerFantasy]. You feel your fingers [if the urine volume of belly > 0]moving through the lukewarm urine trapped inside[otherwise if the total egg fill of belly > 0]bumping the eggs incubating in[otherwise if the semen volume of belly > the milk volume of belly + 3]moving through the thick creampie deep inside [otherwise if the milk volume of belly + the semen volume of belly > 0]moving through the creamy filling planted in [otherwise]as they stroke the inside of [end if] your [asshole] as your mind races.[or]You [if the player is male]eagerly stroke your prostate[otherwise]eagerly fuck your [asshole][end if], moaning [if the humiliation of the player < HUMILIATION-MODEST]quietly[otherwise]loudly[end if] as your mind turns to thoughts of [PlayerFantasy].[or]You slowly move your fingers in and out of your [asshole], [if P is clothing]rubbing your [BreastDesc] through your [printed name of P][otherwise]tweaking your nipples[end if] as you fantasize about [PlayerFantasy].[or]You fuck yourself with your own fingers, [if the bimbo of the player < 5]shuddering[otherwise if the bimbo of the player < 12]trembling[otherwise]rolling your eyes back[end if][if the semen volume of vagina < 1] at how inexorably pleasurable Nintendolls managed to make it feel[otherwise if the semen volume of belly < 4] at the feeling of the slimy [semen] trapped in your [vagina][otherwise] as thick, creamy [semen] coats your fingers and rolls down your arm.[end if][or]You continue your passionate fingering session, [if the bimbo of the player < 7]trying and failing to stifle your shameful moans[otherwise if the bimbo of the player < 13]half-heartedly trying to stifle your passionate moans[otherwise]allowing shameless, wanton moans to stream out of your mouth[end if] as you fantasize about [PlayerFantasy].[at random]".

[!<ReportMasturbation>+

REQUIRES COMMENTING

+!]
Report Masturbating:
	now wanking is 0;
	now auto is 0.[###Maybe this should also be set to zero whenever the ability to masturbate rules are unsuccessfully checked]

Understand "wank", "play with me", "play with self", "play with privates", "masturbate", "play with breasts", "play with breast", "play with boobs", "play with tits", "massage breasts", "massage boobs", "massage breast", "massage tits", "massage", "massage self", "massage me", "wank self", "wank me", "fap" as masturbating.

[!<ComputeMasturbationReactionOfMonster>+

REQUIRES COMMENTING

+!]
To compute MasturbationReaction of (M - a monster):
	if M is intelligent and M is awake:
		if M is penetrating a body part:
			say "[BigNameDesc of M] chuckles as [he of M] watches you.";
		otherwise if M is interested and M is friendly:
			say "[BigNameDesc of M] looks away politely and begins to wander off.";
			bore M;
		otherwise if M is uninterested:
			say "[BigNameDesc of M] is looking the other way, probably on purpose.".

Masturbating ends here.
