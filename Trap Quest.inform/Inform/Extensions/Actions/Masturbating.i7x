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
	if there is worn cursed pussy protection blocking wanking clothing, decide no;
	decide yes.

[!<ClothingIsBlockningWanking>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called K) is blocking wanking:
	if K are cotton or K are nylon or K are mesh or K are silk or K are satin, decide no;
	decide yes.

[!<masturbationRestrictionRules:Rulebook>*

REQUIRES COMMENTING

+!]
The masturbation restriction rules is a rulebook.

[!<YourselfIsAbleToMasturbate>+

REQUIRES COMMENTING

+!]
Definition: yourself is able to masturbate:
	follow the masturbation restriction rules;
	if the rule failed, decide no;
	decide yes.

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
			say "[TooSluttyToWank]";
			rule fails;
		if (the anal sex addiction of the player > 15 or the vaginal sex addiction of the player > 15) and the player is not extremely horny:
			say "[TooSluttyToWank]";
			rule fails;
		if (the anal sex addiction of the player > 20 or the vaginal sex addiction of the player > 20):
			say "[TooSluttyToWank]";
			rule fails.
The too slutty to wank rule is listed last in the masturbation restriction rules.

[!<TheLackOfGenetaliaRule>+

REQUIRES COMMENTING

+!]
This is the lack of genitalia rule:
	if the size of penis is 0 and the player is male:
		if auto is 0, say "You can't wank without genitalia!";
		rule fails.
The lack of genitalia rule is listed first in the masturbation restriction rules.

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
		if the anal sex addiction of the player + the sex addiction of the player < 5:
			if (the player is male and the player is not horny) or the player is not a bit horny:
				say "You can[']t bring yourself to masturbate when there[']s [if the number of monsters penetrating asshole > 0 and diaper quest is 0]someone fucking[otherwise]something in[end if] your [asshole]!";
				rule fails;[Female players are more open to masturbating with toys.]
			if the player is not very horny and (the humiliation of the player / HUMILIATION-PROUD + 2000) < the number of monsters in the location of the player:[shouldn't ever trigger when the player is alone]
				if M is monster:
					say "You can't bring yourself to [if the player is male]jack off[otherwise]finger yourself[end if] now. What if the [printed name of M] thinks you actually like [if the number of monsters penetrating asshole > 0 and diaper quest is 0]getting fucked in the[otherwise]having things up your[end if] ass!";
					rule fails;
	if the number of monsters penetrating vagina > 0:
		if the vaginal sex addiction of the player + the sex addiction of the player < 5:
			if the player is not horny and (the humiliation of the player / HUMILIATION-PROUD + 2000) < the number of monsters in the location of the player:
				if M is monster:
					say "You can't bring yourself to touch yourself now. What if the [printed name of M] thinks you actually like getting [if M is male and diaper quest is 0]fucked[otherwise]toyed with[end if]?";
					rule fails;
	if the number of monsters penetrating face > 0:
		if the semen addiction of the player + the sex addiction of the player < 5:
			if the player is not horny and (the humiliation of the player / HUMILIATION-PROUD + 2000) < the number of monsters in the location of the player:
				if M is monster:
					say "You can't bring yourself to touch yourself now. What if the [printed name of M] thinks you actually like [if M is male and diaper quest is 0]sucking dick[otherwise]having your mouth abused like this[end if]?";
					rule fails.
The embarrassing masturbation rule is listed last in the masturbation restriction rules.

[!<TheClothingBlocksMasturbationRule>+

REQUIRES COMMENTING

+!]
This is the clothing blocks masturbation rule:
	if the player is not able to wank:
		if auto is 0, say "Your [printed name of random worn cursed pussy protection blocking wanking clothing] won't budge; that item is simply not soft and thin enough for you to [masturbate] through!";
		rule fails.
The clothing blocks masturbation rule is listed last in the masturbation restriction rules.		


[!<DecideWhichNumberIsTheMasturbationBonusOfObject>+

REQUIRES COMMENTING

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

REQUIRES COMMENTING

+!]
To say PlayerFantasy: [paired with "fantasizing about [X]." syntax, so no punctuation, and preferably, not super long. Relies on bimbo rather than sex addiction. In random order is used here to cut down on repetitiveness. If you find punctuation at the end of clauses in here, it's wrong and needs to be fixed.]
	let T be a random hypno trap in the location of the player;
	if T is not expired and T is fucktoy hypno trap:
		say "[second custom style][one of][if pregnancy fetish is 1]GETTING PREGNANT[otherwise]GETTING FUCKED[end if][or]BIG COCKS[or]HORNY GUYS[or]HARD COCKS[or]SITTING ON COCKS[or]FUCKING GUYS[or][if the player is male]PROSTATE ORGASMS[otherwise]DOUBLE PENETRATION[end if][or]ASS TO MOUTH[or][if pregnancy fetish is 1]CREAMPIES[otherwise]FORCED CUMDUMPS[end if][or]GANGBANGS[in random order][roman type]";[the player is masturbating because of the trap, more often than not, so it's affecting their ability to not think about slutty things.]
	otherwise if T is not expired and T is diaper hypno trap:
		say "[second custom style][one of]GETTING BOUNCED ON MOMMY'S LAP WHILE WEARING A DIAPER[or]DADDY CUTTING A HOLE IN MY DIAPER AND FUCKING ME[or]GETTING PUNISHED BY MY BABYSITTER FOR BEING NAUGHTY[or]WETTING MY DIAPER UNTIL IT LEAKS[or]BEING DADDY'S LITTLE DIAPERSLUT[or]GETTING FINGERED BY MOMMY DURING A DIAPER CHANGE[or][if diaper lover >= 4]DROPPING A BIG LOAD IN MY DIAPER[end if][in random order][roman type]";
	otherwise if T is not expired and T is cocksucker hypno trap:
		say "[second custom style][one of]CUM. YUMMY CUM[or]CUM. DELICIOUS CUM[or]THICK CUM[or]CUM DRINKING[or]GUZZLING CUM[or]CUM GUZZLING[or][if bukkake fetish is 1]SALTY MAKEUP[otherwise]SALTY MOUTHWASH[end if][or]SUCKING COCK[or]ACCEPTING HIS CUM[or]SWALLOWING HIS CUM[or]DEEPTHROATING COCKS[in random order][roman type]";
	otherwise if the player is diaper focused and the diaper addiction of the player > 14:
		say "[one of]sitting on your mommy's lap as she rubs the front of your leaking diaper and degrades you for being such a baby[or]laying down as your daddy sticks his [manly-penis] into the leg-hole of your diaper and cums inside[or]bouncing on your daddy's knee in a [if diaper lover >= 4]messy diaper[otherwise]wet diaper[end if][or]drinking milk from your mommy's breasts while she lovingly rubs your [if diaper lover >= 4]messy diaper[otherwise]wet diaper[end if][or]being used and punished by an especially mean babysitter[in random order]";
	otherwise if the player is diaper focused and the diaper addiction of the player > 9:
		say "[one of][if the player is male]having a girlfriend force you into diapers before making you wet yourself[otherwise]having a boyfriend force you into diapers before making you wet yourself[end if][or]a dominatrix turning you into a baby against your will and parading you around town for everyone to see your humiliation[or]being blackmailed by your best friend to become her personal diaper slave[or]losing control of your bladder and having to wear diapers as people mock you for being a big baby[in random order]";
	otherwise if the player is diaper focused and the diaper addiction of the player > 4:
		say "[one of][if the player is male]a cute diapered slut sucking your [manly-penis][otherwise]a cute boy in a diaper eating your [vagina][end if][or]forcing those bitches who put you in here into diapers[or]someone being forcibly diapered before shamefully cumming into their padding[or]a girl being diapered and pulled over a mommy-domme's knee for a spanking[in random order]";
	otherwise if the sex addiction of the player < 4 and the player is male: [dominating women]
		say "[one of]steamy sex with your favourite pornstar, [if pregnancy fetish is 1]Candi Creampie[otherwise]Jenna Juggz[end if][or][if bukkake fetish is 1]jizzing all over a[otherwise]getting blowjobs from a[end if] team of super hot cheerleaders[or]life as the master of your own harem, full of [if extreme proportions fetish is 1]stacked as hell bitches[otherwise]super fine bitches[end if][or][if the virgin of the player is 1]teaching those foxy bitches that put you in here what it's like to get fucked by a stud like you[otherwise]teaching one of those bitches who put you in here what it's like to have a dick in their ass[end if][or]sexy women with big breasts and an interest in sitting on your cock[in random order]";
	otherwise if the bimbo of the player < 4:
		say "[one of]life as a powerful business woman, with a cute secretary that[']s always there when you feel like having an orgasm[or]steamy sex with your college room-mate, on her boyfriend's bed[or]ripping the clothes off the bitches who put you in here, and forcing them to pleasure you as you design a new wardrobe for them[or]life as a powerful business woman, using a combination of sex and cut-throat financial tactics to systematically bankrupt every male competitor in your field[in random order]";[I wanted two more here but had trouble thinking of any.]
	otherwise if the bimbo of the player < 8 and the player is male: [Being dominated by women, or penises are heavily involved]
		say "[one of]sexy women getting fucked by long, hard cocks[or]being pinned underneath a strongly muscled [if trap fetish is 0]futa[otherwise]woman[end if], being plowed by her massive [if trap fetish is 1]strapon[otherwise]cock[end if][or]having a threesome with a girl and her strong, muscular boyfriend[or]being locked into chastity as you service a gorgeous woman in a strapon dildo, eagerly obeying when she tells you to put it into your mouth[in random order]";
	otherwise if the bimbo of the player < 8:
		say "[one of]the nintendolls and their [line break][second custom style]sexy[roman type][line break] choice of clothes[or]being stripped nude by a tall, strapon-wearing woman and forcibly impaled on her plastic cock[or]joining in after walking in on your room-mate and her boyfriend having sex[or]life as a small-time business woman, using your financial connections to get the cutest executives into your bed[or]being held down by a tall, shirtless man as the nintendolls take turns pounding you with strapon dildos[in random order]";
	otherwise if the bimbo of the player < 12 and the player is male:[submitting to women and men at the same time. Submitting to men because of women.]
		say "[one of]only being allowed to fuck women if you just [if bukkake fetish is 1]took a load on your face[otherwise if watersports fetish is 1]had another guy piss all over your face[otherwise]had another guy finish in your mouth[end if][or]eating out a girl right after her boyfriend finishes giving her a massive creampie[or]waking up naked in a sorority house with [if bukkake fetish is 1][semen] all over your face[otherwise if artificial enhancements fetish is 1]lipstick tattooed on your face[otherwise]a fat plug in your ass[end if] and a cowbell around your neck[or]sucking off your college room-mate until he comes[in random order]";
	otherwise if the bimbo of the player < 12:
		say "[one of]tall, muscular men with big, hard [manly-penis]s[or]the last guy that called you a frigid prude, and how his [if bukkake fetish is 1][semen] would feel all over your face[otherwise if pregnancy fetish is 1][semen] would feel oozing out of your [vagina][otherwise][manly-penis] would feel inside your mouth[end if][or]letting your room-mate[']s boyfriend [if bukkake fetish is 1]cum on your face[otherwise]fuck you in the ass[end if][or][if pregnancy fetish is 1]letting a stranger fuck your [vagina] without a condom[otherwise]getting into a stranger's car and sucking his cock until you get to his apartment[end if].[in random order]";
	otherwise if the bimbo of the player < 15:
		say "[one of]getting dragged behind a dumpster and fucked until [if the player is female and pregnancy fetish is 1]you're pregnant[otherwise]you can't walk[end if][or]being pinned down and fucked by muscular men with big hard [manly-penis]s[or]being blindfolded, gagged, and trapped in bondage with [if the player is female][semen] leaking out of your [vagina] and a dildo stuffed up your ass[otherwise if bukkake fetish is 1][semen] all over your face and a dildo stuffed up your ass[otherwise]a dildo stuffed up your ass and the taste of [semen] in your mouth[end if][or][if the player is originally female]arriving at an important meeting and immediately getting slammed on the table and fucked by the majority shareholder[otherwise]making money on porno sets as a cock warmer between scenes[end if][or][if bukkake fetish is 1 and a random number between 1 and 2 is 1]the feeling of thick, warm [semen] rolling down your face[otherwise if watersports fetish is 1 and a random number between 1 and 2 is 1]the feeling of warm, frothy [urine] streaming into your mouth[otherwise if the raw semen taste addiction of the player > 10]the feeling of thick, warm [semen] spurting into your mouth and rolling down your throat[otherwise]the feeling of a warm, hard [manly-penis] in your mouth[end if][in random order]";
	otherwise:
		say "[one of]getting gangbanged in the alleyway behind your favourite bar[or][if the player is male and bukkake fetish is 1]life as a pornographic actress specializing in mass bukkake[otherwise if the player is male]life as a pornographic actress specializing in gangbangs.[otherwise]using all that time you wasted in business school to further your career as the only pornographic actress that always works for free[end if][or]waking up bound, naked, and surrounded by a gang of complete strangers with big hard [manly-penis]s[or]giving a wet, sloppy blowjob to every man that passes you in the street.[or]play-testing even more [line break][second custom style]fun[roman type][line break] games for the nintendolls[in random order]".

[!<cameWhileWanking:Integer>*

REQUIRES COMMENTING

*!]
came-while-wanking is a number that varies.

[!<masturbating:Action>*

REQUIRES COMMENTING

*!]
Masturbating is an action applying to nothing.

[!<CheckMasturbating>+

REQUIRES COMMENTING

+!]
Check masturbating:
	if the player is not able to masturbate, do nothing instead;
	if the wanktime of the player > 0 and auto is 0 and the number of on-stage chastity cages is 0:
		say "You hesitate, having a sneaking suspicion that [masturbating] so soon after the previous time has a [italic type]chance[roman type] of the girls running the game punishing you for it. Do you want to go ahead and risk it? [yesnolink] ";
		unless the player consents, say "You decide against it." instead;
	if the player is pee protected and the player is male and auto is 0:
		say "You will get yourself off through your [printed name of random bottom level pee protection clothing worn by the player] which will cause you to ejaculate into it, is that what you want? [yesnolink] ";
		if the player consents, say "";
		otherwise say "Then you better [bold type]remove[roman type] or [bold type]displace[roman type] the [printed name of random bottom level pee protection clothing worn by the player] first." instead.

[!<CarryOutMasturbating>+

REQUIRES COMMENTING

+!]
Carry out masturbating:
	let chastity-mod be 0;
	now wanking is 1;
	let object-choice be nothing;
	let C be a random bottom level pee protection clothing;
	now seconds is 6;
	if the player is able to wank and the player is female and vagina is not actually occupied and the number of worn cursed pussy covering clothing is 0 and auto is 0:
		repeat with O running through insertable objects carried by the player:
			if the girth of O < the openness of vagina + 3:
				say "Would you like to use the [printed name of O] to masturbate with? [yesnolink] ";
				if the player consents:
					now object-choice is O;
					break;
	let CT be a random camera trap in the location of the player;
	if CT is camera trap and there is an off-stage masturbation poster:
		now target-poster is a random off-stage masturbation poster;
		now the old-stimulant of target-poster is object-choice;
	let N be a random number between 1 and ((10000 - the arousal of the player) / 2000);
	if auto >= 1 and N < 3, increase N by 1;
	let danger-wank be 0;
	if auto is 0 and the player is in danger, now danger-wank is 1;
	unless object-choice is nothing or vagina is actually occupied:
		decrease N by the masturbation-bonus of object-choice;
		now object-choice is penetrating vagina;
	let M be a random live thing penetrating a body part;
	if M is a monster and N <= 1, now N is 2;[If there is a monster fucking you, we force 'interrupted!' text]
	if N <= 1:
		if the player is male, say "You stroke your [ShortDesc of penis][if the player is pee protected] through your [printed name of C][end if], and probably due to the mental changes this game has made to you, you have a mind-blowing orgasm and ejaculate within seconds.";
		otherwise say "You [if object-choice is insertable object]vigorously fuck your own [vagina] with your [printed name of object-choice], and probably due to the mental changes this game has made to you, you have a mind-blowing orgasm within seconds.[otherwise if the player is pussy protected]vigorously rub at your [vagina] through your [printed name of C], and probably due to the mental changes this game has made to you, you have a mind-blowing orgasm within seconds.[otherwise if vagina is actually occupied]rub your clitoris, and probably due to the mental changes this game has made to you, you have a mind-blowing orgasm within seconds.[otherwise]rub your clit whilst fingering your [vagina], and probably due to the mental changes this game has made to you, you have a mind-blowing orgasm within seconds.[end if]";
		say "[line break]";
		now N is 1;
	otherwise:
		now came-while-wanking is 0;
		let R be a random number from 1 to 3;
		if the player is male and auto < 2:
			if the player is pee protected:
				if the player is very horny:
					say "You grab your erect [ShortDesc of penis] through your [printed name of C].";
				otherwise if R is 1:
					say "You grab your [ShortDesc of penis] through your [printed name of C], rubbing your palm [one of]back and forth[or]up and down[or]in small circles[at random] as you feel yourself growing stiff and hard.";
				otherwise if R is 2:
					say "You grab the bulge in your [printed name of C], gently teasing it back and forth as your [ShortDesc of penis] grows [if the size of penis > 5]big and [end if]hard.";
				otherwise:
					say "You press your fingers to your [ShortDesc of penis], delicately [one of]stimulating[or]teasing[at random] it through your [printed name of C]. It doesn[']t take long to get hard, and soon you are using the [clothing-material of C] as an additional tool for pleasuring yourself.";
			otherwise:
				if the player is very horny:
					say "You grab your erect [ShortDesc of penis] and begin to stroke.";
				otherwise if R is 1:
					say "You wrap your fingers around your [ShortDesc of penis], which [if the size of penis > 7]slowly stiffens as you begin to stroke[otherwise if the size of penis > 4]quickly stiffens as you begin to stroke[otherwise if the size of penis > 1]stiffens within only a couple strokes[otherwise]which is hard instantly, although it's so small you can only start 'stroking' if you[']re holding it with just your forefinger and thumb[end if].";
				otherwise if R is 2:
					say "You grab your [if the size of penis < 3][ShortDesc of penis][otherwise if the size of penis is 7 or the size of penis is 6][ShortDesc of penis][otherwise]penis[end if], eagerly stroking it [if the size of penis > 7]as it slowly grows into a [ShortDesc of penis][otherwise if the size of penis > 5]as it grows stiff and hard[otherwise if the size of penis > 2]as it hardens into a [ShortDesc of penis].[otherwise]with your thumb and forefinger[end if].";
				otherwise:
					say "You eagerly begin stroking your [Shortdesc of penis], which is hard nearly instantly thanks to its rich and storied history with the palm of your hand.";
		otherwise if auto < 2:
			if vagina is actually occupied:
				say "You start rubbing your delicate, sensitive clit as [if there is a live thing penetrating vagina]the [random live thing penetrating vagina] continues to pump away[otherwise]your pussy muscles clench around the [random thing penetrating vagina][end if].";
			otherwise if object-choice is a thing:
				if R is 1:
					say "You [if player is not horny]sigh softly[otherwise if player is horny]moan quietly[otherwise]shudder with pleasure[end if] as you slide the [printed name of object-choice] into your [vagina], and begin to fuck yourself.";
				otherwise if R is 2:
					say "You ease the [printed name of object-choice] into your [vagina], eagerly rubbing your clit as you start to fuck yourself with the toy.";
				otherwise:
					say "You reach between your legs, gently spreading your outer lips as you sink the [printed name of object-choice] into your [vagina], and begin to work it in and out.";
			otherwise if the player is pee protected:
				if R is 1:
					say "You paw at yourself through your [printed name of C], shivering as the [clothing-material of C] rubs up against your sensitive outer [vagina].";
				otherwise if R is 2:
					say "You slowly rub yourself through the fabric of your [printed name of C], which dampens slightly with [if the semen-volume of vagina > 0]a bit of [semen] trapped in your [vagina][otherwise]feminine juices[end if].";
				otherwise:
					say "You start rubbing your clit through your [printed name of C], which dampens the sensation somewhat, but adds an interesting new one to compensate.";
			otherwise:
				if R is 1:
					say "You sink your fingers into your [vagina], [if player is not horny]sighing softly[otherwise if player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as you gently push them in and out.";
				otherwise if R is 2:
					say "You reach between your legs, parting your [if the semen coating of thighs > 0]slimy, [semen] glazed labia lips[otherwise]delicate labia lips[end if] with your fingers, [if player is not horny]sighing softly[otherwise if player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as they sink into your [vagina].";
				otherwise:
					say "You allow your fingers to dip into your [vagina], trying to figure out [if the raw sex addiction of the player < 5]what possible motivation you could have for acting like this.[otherwise]why you didn[']t try this way sooner![end if]";
		say "[line break]";
		repeat with M2 running through awake monsters in the location of the player:
			compute MasturbationReaction of M2;
		now resting is 1;
		if the number of monsters grabbing the player > 0 or wanking is 0:
			now N is -1;
		while N > 1:
			arouse 3000;
			decrease N by 1;
			if the player is male:
				if the player is pee protected:
					say "[one of]You shudder with a mixture of [if the bimbo of the player < 8]shame[otherwise]frustration[end if] and pleasure as you massage the tip of your [player-penis] with your [printed name of C], [if M is a thing]your focus on the [M][otherwise]fantasizing about [PlayerFantasy][end if].[or]You half register the sticky wetness of your precum soaking into your [printed name of C] as you stroke your [player-penis] through the fabric, too enthralled by the [if M is a thing][M][otherwise]thought of [PlayerFantasy][end if].[or]The [printed name of C] provides a unique sensation as you [if the size of penis < 3]tenderly[otherwise if the humiliation of the player < HUMILIATION-MODEST + 4000]abashedly[otherwise]eagerly[end if] rub it against your [player-penis], [if M is a thing]as you feel the [M] use you[otherwise]fantasizing about [PlayerFantasy][end if].[or]You continue to clamp and squeeze your [player-penis] through your [printed name of C], [if the bimbo of the player < 8]trying to ignore[otherwise]relishing in[end if] its tightness against your skin as you [if M is a thing]close your eyes and focus on the feel of the [M][otherwise]fantasize about [PlayerFantasy][end if].[or]You tremble with pleasure as you grope yourself through your [printed name of C], which somehow intensifies the sensation of your own touch. Impending orgasm looms in your thoughts, which are increasingly muddied with thoughts of how [if the raw semen taste addiction of the player < 5]disgusting[otherwise if the raw semen taste addiction of the player < 10]strange[otherwise if the raw semen taste addiction of the player < 15]exciting[otherwise]fucking hot[end if] it will feel to walk around with a [if the raw semen taste addiction of the player < 8]clammy[otherwise]warm[end if] load of [semen] against your [player-penis].[or]You lose yourself to pleasure, [if the bimbo of the player < 4]grunting[otherwise if the bimbo of the player < 8]groaning[otherwise if the bimbo of the player < 12]moaning[otherwise if the bimbo of the player < 15]cooing[otherwise]shamelessly moaning[end if] as you vigorously rub the bunched up [clothing-material of C] of your [printed name of C] against your [player-penis].[or]You continue passionately stroking your [player-penis] through your [printed name of C], knowing from the dark spot near the waist band that the slightest glance from anyone around you would tell them how much you[']re enjoying yourself. [or][unless M is a thing]You fantasize about [PlayerFantasy]. [end if]Your surroundings fall away as you focus in on your dirty thoughts, feeling an increasing frustration at the way the [printed name of C] is preventing you from touching your [player-penis] in the way you want.[or]Your [player-penis] strains against your [printed name of C], leaking precum into the [clothing-material of C] as you [if M is a thing]use your body to pleasure both yourself and the [M][otherwise]fantasize about [PlayerFantasy][end if].[at random]";
				otherwise:
					say "[one of]You shudder with pleasure, continuing to work your [player-penis] as you [if M is a thing]use your body to pleasure both yourself and the [M][otherwise]fantasize about [PlayerFantasy][end if].[or]You eagerly stroke your [player-penis], [if the bimbo of the player < 4]grunting[otherwise if the bimbo of the player < 8]groaning[otherwise if the bimbo of the player < 12]moaning[otherwise if the bimbo of the player < 15]cooing[otherwise]shamelessly moaning[end if] as your mind runs wild with increasingly dirty thoughts.[or]You hold your [player-penis] [if the size of penis < 2]as tightly as you can with only two fingers, eagerly stroking yourself to[otherwise]tightly as you stroke yourself to[end if] the [if M is a thing]rhythm of [M]'s thrusts[otherwise]thought of [PlayerFantasy][end if].[or]Your [player-penis] drools precum freely onto the floor, [if the size of penis > 4]bobbing[otherwise]jiggling[end if] as you passionately [if the size of penis < 4]tug[otherwise]stroke[end if] it[unless M is a thing] to fantasies of [PlayerFantasy][end if].[or]Your surroundings fall away as the sensations begin to overwhelm you, clouding your thoughts and coloring your voice as you [if the size of penis < 4]tug[otherwise]stroke[end if] away.[or]You find it increasingly hard to control the sound of your voice as you [if the size of penis < 4]tug[otherwise]stroke[end if] away,  heart racing and thoughts slowly trickling away as orgasm closes in.[or]Your precum leaks into your hand, lubricating your [player-penis], and adding a strangely satisfying [']shlick['] to every movement of your hands. [if the humiliation of the player > HUMILIATION-PROUD + 2000]It's not loud enough that someone outside the room could hear it, but [line break][second custom style]you wish it was[roman type][line break].[end if][or]You murmur as you [if M is a thing]focus on the [M][otherwise]fantasize about [PlayerFantasy][end if], breathing faster and faster as the pleasure begins to build up in your [player-penis].[or]You tremble with pleasure, your hand moving at a pace all its own as it relentlessly pumps your [player-penis] closer and closer to orgasm.[at random]";
			otherwise:
				if there is a live thing penetrating vagina:
					now M is a random live thing penetrating vagina;
					say "[one of]You shudder with pleasure, jilling your clit[or]You flick your bean happily[or]You circle your clit with your index finger[or]You rub your clit between your index finger and thumb[in random order][one of] as your [vagina] clamps around the [M][or], allowing the [M] to fill you up[or], in rhythm with the [M][in random order].";
				otherwise if there is a live thing penetrating asshole:
					now M is a random live thing penetrating asshole;
					say "[one of]You shudder with pleasure, jilling your clit[or]You push two fingers inside your [vagina][or]You vigorously fingerfuck yourself[or]You rub your clit between your index finger and thumb[in random order][one of] as your [asshole] clamps around the [M][or], allowing the [M] to fill you up[or], in rhythm with the [M][in random order].";
				otherwise if there is a live thing penetrating face:
					now M is a random live thing penetrating face;
					say "[one of]You moan around the [M][or]You make sure to continue moving your head[or]You swirl your tongue gently[or]You bob your head back and forth[in random order][one of] as you thrust two fingers in and out of your [vagina][or], rubbing your clit frantically as you do[or] and fingerfuck yourself to the rhythm[or] as you hump yourself with your hand[in random order].";
				otherwise if M is a thing:
					say "[one of]You let the [M] keep going[or]You allow the [M] to continue[or]You continue to pleasure the [M][or]The [M] keeps using you[in random order][one of] as you thrust two fingers in and out of your [vagina][or] as you massage your [vagina][or] as you flick your clit gently[or] as you hump yourself with your hand[in random order].";
				otherwise if object-choice is a thing:
					say "[one of]You shudder with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure, continuing to fuck yourself with your [printed name of object-choice].[or]You continue to fuck yourself with your [printed name of object-choice], mimicking the motion and feel of a real [manly-penis] as you fantasize about [PlayerFantasy].[or]You fantasize about [PlayerFantasy]. You slump against a [if the player is in the Woods]tree[otherwise]wall[end if] as you shove the [printed name of object-choice] in and out of your [vagina] as fast and hard as your arms will let you.[or]You fuck your [vagina] with slow, deep thrusts, making sure it touches your sensitive spots in just the right ways. It becomes hard to keep quiet as the pleasure slowly builds.[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and invigorates you.[otherwise]Imagining it arouses you beyond belief, and you slow down just a bit, hoping something happens.[end if][or]You rub your [BreastDesc] and vigorously fuck yourself with your [printed name of object-choice], fantasizing about [PlayerFantasy].[or]You slowly work the [printed name of object-choice] in and out of your [vagina], [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] as it rubs along your sensitive inner walls and oh-so-slightly jostles your clit.[or]You continue to fuck yourself with your [printed name of object-choice], fantasizing about [PlayerFantasy].[or]You give yourself over to passion, moaning with pleasure as you fuck yourself with your [printed name of object-choice], letting[if the raw sex addiction of the player < 8] shameful[end if] fantasies take over your mind and guide the motion of your hands.[or]You pleasure yourself with your [printed name of object-choice], [if the raw sex addiction of the player < 6]wishing it didn't feel so good[otherwise if the raw sex addiction of the player < 13]wishing it were bigger[otherwise]moaning as loudly as you can in hopes of attracting a big, fat replacement[end if][at random]";
				otherwise if the player is pee protected:[Only did variations for semen soak, urine soak would have made things incredibly messy. Also it was too big so I had to cut it in half.]
					let A be a random number between 1 and 2;
					if A is 1:
						say "[one of]You fantasize about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you massage your clit through your [printed name of C].[or]Your fingers caress your [vagina] through your [printed name of C], rubbing harder and harder as your mind races with thoughts of [PlayerFantasy].[or]The unique sensation of the [clothing-material of C] rubbing against your delicate inner lips drives you to new heights of pleasure, amplifying even the lightest brush of your fingers against your clit.[or]You continue to rub your clit through your [printed name of C], shivering with pleasure as you fantasize about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, hoping something happens.[end if][at random]";
					otherwise:
						say "[one of][if the semen-soak of C > 1 and pregnancy fetish is 1]You stroke yourself through the [printed name of C], strangely invigorated by the thought that the [semen] absorbed into the [clothing-material of C] could have ended up inside your [vagina].[otherwise if the semen-soak of C < 1]You stroke yourself through the soft [clothing-material of C], trying not to think of possible consequences of keeping it on instead of taking it off.[otherwise]You stroke yourself through [printed name of C], acutely aware of the feeling of [semen] rubbing up against your [vagina].[end if][or]You continue to touch and rub your [vagina] through your [printed name of C], [if the raw sex addiction of the player < 6]tittering[otherwise]hissing[end if] with pleasure as you fantasize about [PlayerFantasy].[or]You fantasize about [PlayerFantasy]. It becomes hard to stay on your feet as you stroke yourself through your [printed name of C], your legs shaking in an effort to deal with the mounting pleasure.[or]You rub your clit through your [printed name of C], [if the bimbo of the player < 12]quietly moaning[otherwise if the bimbo of the player < 15]passionately moaning[otherwise]shamelessly moaning[end if] as grope your [BreastDesc] to the thought of [PlayerFantasy].[or]Your [printed name of C] feels soft[if the semen-soak of C > 0] and damp[end if] against your fingers, acting as a barrier between you and your [vagina] that prevents you from fully enjoying your own touch.[at random]";
				otherwise:
					let A be a random number between 1 and 2;
					if A is 1:
						say "[one of]You fantasize about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you work your fingers in and out of your [vagina].[or]You continue to passionately shlick yourself, allowing your mind to run wild with thoughts of [PlayerFantasy].[or]You dip your fingers in and out of your [vagina],  [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] with pleasure as you fantasize about [PlayerFantasy].[or]You tenderly run your thumb over your clit, fantasizing about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, hoping something happens.[end if][at random]";
					otherwise:
						let P be a random worn nipple covering clothing;
						say "[one of]You fantasize about [PlayerFantasy]. Quiet slicking noises can be heard as you work your fingers in and out of your [if the semen-volume of vagina > 0]cum-sodden[otherwise if the raw sex addiction of the player < 10]shamefully wet[otherwise]desperately wet[end if] [vagina].[or]You rapidly rub your clit, allowing your fingers to slip into your [vagina] as your mind turns to thoughts of [PlayerFantasy].[or]You eagerly diddle your clit and [if P is clothing]rub your [BreastDesc] through your [printed name of P][otherwise]tweak your nipples[end if], allowing your back to rest up against a nearby [if the player is in the Woods]tree[otherwise]wall[end if] as you fantasize about [PlayerFantasy].[or]You fuck yourself with your own fingers, [if the bimbo of the player < 5]shuddering[otherwise if the bimbo of the player < 12]trembling[otherwise]rolling your eyes back[end if][if the semen-volume of vagina < 1] at how inexorably pleasurable the nintendolls managed to make it feel[otherwise if the semen-volume of vagina < 4] at the feeling of the slimy [semen] trapped in your [vagina][otherwise] as thick, creamy [semen] coats your fingers and rolls down your arm.[end if][or]You continue your passionate shlicking session, [if the bimbo of the player < 7]trying and failing to stifle your shameful moans[otherwise if the bimbo of the player < 13]half-heartedly trying to stifle your passionate moans[otherwise]allowing shameless, wanton moans to stream out of your mouth[end if] as you fantasize about [PlayerFantasy].[at random]";
			say "[line break]";
			compute extra turn;
			if the number of monsters grabbing the player > 0 or wanking is 0:
				now N is -1;
			otherwise if the player is in danger and M is nothing:
				if a random number between 2 and the sex addiction of the player > the intelligence of the player or danger-wank is 1, say "You are too horny, you can't stop yourself from masturbating!";
				otherwise now N is -1;
			if came-while-wanking > 0[ and the player is not a bit horny], now N is 0;[if this only triggers if the player is horny, it's pretty hard for it to reset on orgasm because orgasm also resets arousal.]
			otherwise now came-while-wanking is 0;
			if summoning-circle is in the location of the player:
				if summoning-circle is active:
					ChargeUp summoning-circle by 20;
					say "The gathering energy in the circle seems to reach out to you, twisting around your naughty fingers before fading away.[line break]";
		now resting is 0;
	if N <= 0:
		if N is -1, say "[bold type]Your masturbation session has been interrupted![roman type][line break]";
		otherwise say "You stop masturbating.";
	otherwise:
		if the player is male:
			if the player is pee protected:
				say "You rub yourself faster and faster, [if the bimbo of the player < 7]groaning[otherwise]moaning[end if] with excitement and pleasure as you finally go over the edge.";
			otherwise:
				say "Pleasure builds and builds, until finally, your poor [player-penis] can[']t take the stimulation any longer!";
		otherwise:
			if object-choice is a thing:
				say "You [if the raw sex addiction of the player < 5]grit your teeth, panting[otherwise if the raw sex addiction of the player < 10]purse your lips, moaning[otherwise]can't help but form your lips into a large, circular 'O', cooing[end if] with pleasure as the feeling of hard [if object-choice is golden phallus]gold[otherwise]plastic[end if] sliding in and out of your [vagina] [if the player is very horny]finally [end if]pushes you over the edge. Your knees go weak, and your jaw goes slack, [if the openness of vagina < 6]girlcum slowly dribbling down your leg as you ride your [printed name of object-choice] through your orgasm[otherwise]girlcum squirting out around your [printed name of object-choice] and onto your hands as you ride it through your orgasm[end if], tittering breathlessly as you allow pleasure to overwhelm your senses.";
			otherwise if the player is pee protected:
				say "As the pleasure builds, it becomes harder and harder to [if the player is prone]keep yourself from face-planting on the floor[otherwise]stand up[end if], the feeling of your fingers stroking your clit through the [clothing-material of C] bringing you ever closer to the edge. You can feel the material rubbing against your labia, stimulating your slit in a way that wouldn't be possible with just your fingers. A piercing moan escapes your lips as you [if the player is very horny]finally[end if] crest your peak, followed by dozens more as a powerful orgasm wracks your body and [if the openness of vagina < 6]soils[otherwise]soaks[end if] your [printed name of C] with girlcum[if the raw sex addiction of the player < 5] and shame[end if].";
			otherwise:
				say "You find yourself breathing hard as the [if the raw sex addiction of the player < 6]slow building pleasure finally approaches[otherwise if the raw sex addiction of the player < 13]the buildup of pleasure approaches[otherwise]the fast building pleasure races toward[end if] a climax, which gives your tired fingers that last burst of energy they need to bring you there. You [if the humiliation of the player < HUMILIATION-PROUD]can't even begin to stifle your moans[otherwise]uncontrolled moans stream out of your mouth[end if] as your body erupts with pleasure, [vagina] [if the openness of vagina < 6]dribbling girlcum down your leg[otherwise]squirting girlcum in a wide arc[end if] and shivers running up and down your spine.";[note, this appears even when the player has an instant orgasm]
		say "[line break]";
		if CT is camera trap:
			say "[FlashFlav of CT]";
			say "It was in a perfect position to capture a full shot of your [if the sex addiction of the player < 7]crime[otherwise]orgasm[end if].";
			say "[one of][line break][variable custom style][if the humiliation of the player < HUMILIATION-SHAMELESS - 3000]Oh shit!  This was a bad place to decide to do that...[otherwise]Looks like someone is helping me expose myself.[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][line break][second custom style]If someone sells that photo, I hope I get royalties![end if][stopping][roman type][line break]";
			set up target-poster;
		if the player is male, heal asshole times 1;
		if the player is female and object-choice is nothing, heal vagina times 1;
		if a random number between 1 and the sex addiction of the player < 5, SexAddictUp 1;
		orgasm;
		if the wanktime of the player > 0 and the number of on-stage chastity cages is 0:
			let R be a random number between 1 and 225;
			if unlucky is 1, now R is a random number between 1 and 150;
			let C be a random off-stage chastity cage;
			if R < the wanktime of the player and C is actually summonable:
				say "As you pull your hand away from your crotch, you feel a tightness around your loins. You look down and see that a chastity cage has appeared around your [if the player is male][ShortDesc of penis][otherwise][vagina][end if]!  [if the bimbo of the player < 10]Even worse, the[otherwise]The[end if] cage only stops anything from touching your crotch, your [asshole] remains completely unprotected!";
				summon C locked;
				say "[variable custom style]What is the game saying?  That I'm too eager to play with myself?  How frustrating...![roman type][line break]";
		now the wanktime of the player is 500;
		if object-choice is insertable object:
			compute climax effect of object-choice;
			now object-choice is not penetrating vagina.
		

[!<ReportMasturbation>+

REQUIRES COMMENTING

+!]
Report Masturbating:
	now wanking is 0;
	now auto is 0.[###Maybe this should also be set to zero whenever the ability to masturbate rules are unsuccessfully checked]
		
Understand "wank", "play with me", "play with self", "play with privates", "masturbate", "play with breasts", "play with breast", "play with boobs", "play with tits", "massage breasts", "massage boobs", "massage breast", "massage tits", "massage", "massage self", "massage me", "wank self", "wank me" , "fap" as masturbating.

[!<ComputeMasturbationReactionOfMonster>+

REQUIRES COMMENTING

+!]
To compute MasturbationReaction of (M - a monster):
	if M is intelligent and the sleep of M is 0:
		if M is penetrating a body part:
			say "The [M] chuckles as [he of M] watches you.";
		otherwise if M is interested and M is friendly:
			say "The [M] looks away politely and begins to wander off.";
			bore M;
		otherwise if M is uninterested:
			say "The [M] is looking the other way, probably on purpose.".




Masturbating ends here.

