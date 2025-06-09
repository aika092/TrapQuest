Masturbating by Actions begins here.

Definition: a thing is barbie:
	if the player is not possessing a penis and the player is not possessing a vagina, decide yes;
	decide no.

Definition: a thing is herm:
	if the player is possessing a penis and the player is possessing a vagina, decide yes;
	decide no.

Definition: yourself is able to wank:
	[This is about whether the player can masturbate through their underwear]
	if there is cursed pussy covering blocking wanking clothing, decide no;
	decide yes.

Definition: yourself is fapping-blocked:
	if there is a worn chastity cage or there is a worn restricting research airhancer or there is a worn creamfilled condom of kings, decide yes;
	if there is a worn strapon-panties:
		unless strapon-dildo is worn and strapon-dildo is not dildo-usage, decide yes;
	if the player is barbie and the player is not holding the players-detached-dick, decide yes; [#LXorDD]
	decide no.

Definition: yourself is anal flexible:
	if the dexterity of the player >= 15, decide yes;
	decide no.

Definition: a clothing (called K) is blocking wanking:
	if K is chastity cage, decide no; [the chastity cage is somehow being counted as pussy covering]
	if K are cotton or K are nylon or K are mesh or K are silk or K are satin, decide no;
	decide yes.

The global masturbation restriction rules is a rulebook.
The penis masturbation restriction rules is a rulebook.
The vaginal masturbation restriction rules is a rulebook.
The anal masturbation restriction rules is a rulebook.

[!<YourselfIsAbleToMasturbate>+

Non automatic version prints reason why not if auto is set to 0. Checks all rules that apply to all forms of masturbation, but not the ones that apply to specific things like anal masturbation.

+!]
Definition: yourself is potentially able to masturbate:
	follow the global masturbation restriction rules;
	if the rule failed, decide no;
	decide yes.

[!<YourselfIsAbleToMasturbate>+

Non automatic version prints reason why not if auto is set to 0. First ensures that the global masturbation rules are all in effect, and then checks to see if at least one type of masturbation is available.

+!]
Definition: yourself is able to masturbate:
	if yourself is not potentially able to masturbate, decide no;
	if yourself is able to penis masturbate, decide yes;
	if yourself is able to vaginally masturbate, decide yes;
	if yourself is able to anally masturbate, decide yes;
	decide no.
Definition: yourself is able to automatically masturbate:
	let saved-auto be auto;
	now auto is 1;
	if yourself is able to masturbate:
		now auto is saved-auto;
		decide yes;
	now auto is saved-auto;
	decide no.

Definition: yourself is able to penis masturbate:
	follow the penis masturbation restriction rules;
	if the rule failed, decide no;
	decide yes.
Definition: yourself is able to vaginally masturbate:
	follow the vaginal masturbation restriction rules;
	if the rule failed, decide no;
	decide yes.

Definition: yourself is able to genitals masturbate:
	if yourself is able to vaginally masturbate, decide yes;
	if yourself is able to penis masturbate, decide yes;
	decide no.
Definition: yourself is able to anally masturbate:
	follow the anal masturbation restriction rules;
	if the rule failed, decide no;
	decide yes.

This is the sex doll can't wank rule:
	if the latex-transformation of the player > 3:
		if auto is 0, say "[one of]You are far from numb down there, but as your hands touch your sensitive [LatexFlav][genitals], a shock jolts through you, preventing you from masturbating![or][variable custom style]This doesn't make sense: I can touch myself down there, so I must be able to wank...[roman type][line break]But the moment you have that thought, another painful shock jolts your hands away from your groin.[or]You casually move your hands to your groin, just to check your [LatexFlav][genitals] are fine, and this time...[line break]ZAP![line break][variable custom style]Ow, dammit! I was only going to... adjust myself![roman type][or]Your hands dart down to your [genitals] for a quick-[line break]ZA-A-AP![line break][variable custom style]Owww![roman type][or]You try to move your hands down for a tiny, not-really-wank, but this time you find you've pulled your hands away from your [genitals] before you got even halfway there.[or][variable custom style]This doesn't make sense: I can touch myself down there, so I must be able to wank...[roman type][line break]But the moment you have that thought, another painful shock jolts your hands away from your crotch.[or]You casually move your hands between your legs, just to check your [genitals] are fine, and this time...[line break]ZAP![line break][variable custom style]Ow, dammit! I was only going to... adjust myself![roman type][or]Your hands dart down to your [genitals] for a quick-[line break]ZA-A-AP![line break][variable custom style]Owww![roman type][or]This time you pull your hands away from your [genitals] before getting halfway there.[line break][variable custom style]Have they conditioned me, like one of Pavlov's dogs?![roman type][or]You try again to reach down to your groin, and this time there's a fresh [']ZAP['] that makes your hand spring away.[line break][variable custom style]Dammit![roman type][or]You try again, and again you're zapped, and fail.[or]ZAP![line break]Once more your attempt at a quick wank is stymied by a shock. You feel a reflexive cringe at just the thought of masturbating.[or]Your hands only get halfway there before reflexively jumping away.[line break]That's followed by a weak 'zap' as if to reinforce that reaction.[or]Your hands jerk downwards, then instantly back away from your groin.[or]You can't bring yourself to do that![or]You just can't do that.[or]Your hands refuse to obey you.[or]You can no longer even try to do that.[line break]Zap![or]You can't do that any more.[or]You've been conditioned not to do that.[stopping][line break]";
		rule fails.
The sex doll can't wank rule is listed last in the global masturbation restriction rules.

This is the too slutty to wank rule:
	if auto is 0 and the number of monsters penetrating a body part is 0:
		if (the anal sex addiction of the player > 5 or the vaginal sex addiction of the player > 5) and the player is not very horny:
			say TooSluttyToWank;
			rule fails;
		if (the anal sex addiction of the player > 7 or the vaginal sex addiction of the player > 7) and the player is not extremely horny:
			say TooSluttyToWank;
			rule fails;
		if (the anal sex addiction of the player >= 10 or the vaginal sex addiction of the player >= 10):
			say TooSluttyToWank;
			rule fails.
The too slutty to wank rule is listed last in the global masturbation restriction rules.

This is the lack of penis blocks masturbation rule:
	if the player is not possessing a penis:
		if the player is not possessing a vagina:
			if players-dick-is-detached is 0: [#LXorDD]
				now failed-masturbation-reason is the substituted form of "You can't masturbate if you don't have genitalia!"; [Sometimes flavour will get messed up if we don't gate this.]
			otherwise if player is not holding players-detached-dick:
				now failed-masturbation-reason is the substituted form of "[one of]With your stupid sexless Barbie-like mound and your dick magically detached and stolen, you can't even masturbate![or]With the genitals of a Barbie doll and you dick stolen, you can't even masturbate![or]Your genitals aren't here right now, to masturbate![stopping]";
		otherwise:
			now failed-masturbation-reason is the substituted form of "You can't masturbate with your penis if you don't have one!";
		rule fails.
The lack of penis blocks masturbation rule is listed first in the penis masturbation restriction rules.

This is the lack of vagina blocks masturbation rule:
	if the player is not possessing a vagina:
		if the player is not possessing a penis:
			if players-dick-is-detached is 0: [#LXorDD]
				now failed-masturbation-reason is the substituted form of "You can't masturbate if you don't have genitalia!"; [Sometimes flavour will get messed up if we don't gate this.]
			otherwise if player is not holding players-detached-dick:
				now failed-masturbation-reason is the substituted form of "[one of]With your stupid sexless Barbie-like mound and your dick magically detached and stolen, you can't even masturbate![or]With the genitals of a Barbie doll and you dick stolen, you can't even masturbate![or]Your genitals aren't here right now, to masturbate![stopping]";
		otherwise:
			now failed-masturbation-reason is the substituted form of "You can't masturbate with your vagina if you don't have one!";
		rule fails.
The lack of vagina blocks masturbation rule is listed first in the vaginal masturbation restriction rules.

[!<TheChastityCageBlocksMasturbationRule>+

Prevents masturbation.

+!]
This is the chastity cage blocks masturbation rule:
	if there is a worn chastity cage:
		now failed-masturbation-reason is the substituted form of "You can't get at your [player-penis] through your cage!";
		rule fails.
The chastity cage blocks masturbation rule is listed last in the penis masturbation restriction rules.


This is the chastity belt blocks masturbation rule:
	if chastity-belt is worn:
		now failed-masturbation-reason is the substituted form of "You can't get at your genitals through your chastity belt!";
		rule fails.
The chastity belt blocks masturbation rule is listed last in the penis masturbation restriction rules.
The chastity belt blocks masturbation rule is listed last in the vaginal masturbation restriction rules.

[!<TheResearchRestrictionBlocksMasturbationRule>+

Prevents masturbation.

+!]
This is the research restriction blocks masturbation rule:
	if there is a worn restricting research airhancer:
		now failed-masturbation-reason is the substituted form of "The [printed name of a random worn research airhancer] is keeping you from getting hard enough to masturbate!";
		rule fails.
The research restriction blocks masturbation rule is listed last in the penis masturbation restriction rules.

[!<TheBrokenClittyBlocksMasturbationRule>+

Prevents masturbation.

+!]
This is the broken clitty blocks masturbation rule:
	if broken-clitty tattoo is worn:
		now failed-masturbation-reason is the substituted form of "The [broken-clitty tattoo] is keeping you from getting hard enough to masturbate!";
		rule fails.
The broken clitty blocks masturbation rule is listed last in the penis masturbation restriction rules.

[!<TheBoundBehindBlocksMasturbationRule>+

Prevents masturbation.

+!]
This is the bound behind blocks masturbation rule:
	if the player is wrist bound behind:
		if auto is 0, say "You can't reach your [genitals] with your wrists bound behind your back!";
		rule fails.
The bound behind blocks masturbation rule is listed last in the global masturbation restriction rules.

[!<TheLackOfSkillForAnalMasturbationRule>+

Prevents masturbation.

+!]
This is the lack of skill for anal masturbation rule:
	if the buttskill of the player is 0:
		now failed-masturbation-reason is "";
		rule fails.
The lack of skill for anal masturbation rule is listed in the anal masturbation restriction rules.

[!<TheWristBondsBlockMasturbationRule>+

Prevents masturbation.

+!]
This is the wrist bonds block masturbation rule:
	if the player is wrist bound or there is a thing wrangling arms:
		now failed-masturbation-reason is the substituted form of "You can't reach your [asshole] right now!";
		rule fails.
The wrist bonds block masturbation rule is listed last in the anal masturbation restriction rules.

[!<TheAlreadyWankingRule>+

The player may not masturbate if they are already masturbating, which is indicated by the number variable "wanking"

+!]
This is the already wanking rule:
	if wanking is 1:
		if auto is 0, say "You are already masturbating!";
		rule fails.
The already wanking rule is listed first in the global masturbation restriction rules.

This is the embarrassing masturbation rule:
	let M be a random monster in the location of the player;
	if there is a dangerous monster in the location of the player and M is not a dangerous monster, now M is a random dangerous monster in the location of the player;
	if asshole is actually occupied:
		if the anal sex addiction of the player < 5 and the sex addiction of the player < 10:
			let A be the humiliation of the player;
			if the player is gendered male, increase A by 4000; [Female players are more open to anal masturbation.]
			if A < HUMILIATION-DISGRACED:
				if auto is 0, say "You can't bring yourself to masturbate when there's [if the number of monsters penetrating asshole > 0 and diaper quest is 0]someone fucking[otherwise]something in[end if] your [asshole]!";
				rule fails;
			if the player is not extremely horny and (A / 8000) < the number of monsters in the location of the player:[shouldn't ever trigger when the player is alone]
				if M is monster:
					if auto is 0, say "You can't bring yourself to [if the player is possessing a penis]jack off[otherwise]finger yourself[end if] now. What if the [printed name of M] thinks you actually like [if the number of monsters penetrating asshole > 0 and diaper quest is 0]getting fucked in the[otherwise]having things up your[end if] ass!";
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
The embarrassing masturbation rule is listed last in the global masturbation restriction rules.

This is the clothing blocks masturbation rule:
	if the player is not able to wank:
		now failed-masturbation-reason is the substituted form of "Your [printed name of random cursed pussy covering blocking wanking clothing] won't budge! That item is simply not soft and thin enough for you to [masturbate] through!";
		rule fails.
The clothing blocks masturbation rule is listed last in the penis masturbation restriction rules.
The clothing blocks masturbation rule is listed last in the vaginal masturbation restriction rules.

[the player can't asswank through clothing.]
This is the clothing blocks anal masturbation rule:
	if auto is 1:
		repeat with C running through ass covering clothing:
			if C is not displacable and C is not crotch-zipped, rule fails;
	otherwise	if the number of bottom level ass protection clothing > 0:
		now failed-masturbation-reason is the substituted form of "You would need to displace your [printed name of a random bottom level ass protection clothing] first.";
		rule fails.
The clothing blocks anal masturbation rule is listed last in the anal masturbation restriction rules.

This is the boner use blocks masturbation rule:
	let T be a random live thing penetrating penis;
	if T is a thing:
		now failed-masturbation-reason is the substituted form of "Your [player-penis] is already being used by [FuckerDesc of T]!";
		rule fails.
The boner use blocks masturbation rule is listed in the penis masturbation restriction rules.

This is the anal penetration blocks anal masturbation rule:
	if asshole is actually occupied:
		let T be a random thing penetrating asshole;
		now failed-masturbation-reason is the substituted form of "Your [asshole] is already occupied by [FuckerDesc of T]!";
		rule fails.
The anal penetration blocks anal masturbation rule is listed in the anal masturbation restriction rules.

This is the stiffness blocks anal masturbation rule:
	if the player is upright and the player is not anal flexible:
		now failed-masturbation-reason is the substituted form of "You aren't flexible enough to finger your [asshole] without getting on your knees.";
		rule fails.
The stiffness blocks anal masturbation rule is listed in the anal masturbation restriction rules.

[!<DecideWhichNumberIsTheMasturbationBonusOfObject>+

Determines how much slower or quicker the player will orgasm when they use a particular object to masturbate

+!]
To decide which number is the masturbation-bonus of (C - an object):
	decide on 0.

To compute climax effect of (C - an object):
	do nothing.

To say masturbate:
	say "[if the bimbo of the player < 6]stimulate yourself[otherwise if the player is gendered male]wank[otherwise]jill yourself[end if]".
To say masturbating:
	say "[if the bimbo of the player < 6]stimulating yourself[otherwise if the player is gendered male]wanking[otherwise]jilling yourself[end if]".

To decide which number is wanking:
	if the continue masturbation rule is listed in the another-turn-rules, decide on 1;
	decide on 0.

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
	let Pn be platonic-friend;
	if T is not expired and T is fucktoy hypno trap:
		say "[second custom style][one of][if pregnancy fetish is 1]GETTING PREGNANT[otherwise]GETTING FUCKED[end if][or]BIG COCKS[or]HORNY GUYS[or]HARD COCKS[or]SITTING ON COCKS[or]FUCKING GUYS[or][if the player is sexed male]PROSTATE ORGASMS[otherwise]DOUBLE PENETRATION[end if][or][if a2m fetish is 1]ASS TO MOUTH[otherwise]GETTING DOMINATED[end if][or][if pregnancy fetish is 1]CREAMPIES[otherwise]FORCED CUMDUMPS[end if][or]GANGBANGS[in random order][roman type]";[the player is masturbating because of the trap, more often than not, so it's affecting their ability to not think about slutty things.]
	otherwise if T is not expired and T is diaper-hypno-trap:
		say "[second custom style][one of]GETTING BOUNCED ON MOMMY'S LAP WHILE WEARING A DIAPER[or]DADDY CUTTING A HOLE IN MY DIAPER AND FUCKING ME[or]GETTING PUNISHED BY MY BABYSITTER FOR BEING NAUGHTY[or]WETTING MY DIAPER UNTIL IT LEAKS[or]BEING DADDY'S LITTLE DIAPERSLUT[or]GETTING FINGERED BY MOMMY DURING A DIAPER CHANGE[or][if diaper messing >= 4]DROPPING A BIG LOAD IN MY DIAPER[end if][in random order][roman type]";
	otherwise if T is not expired and T is cocksucker hypno trap:
		say "[second custom style][one of]CUM. YUMMY CUM[or]CUM. DELICIOUS CUM[or]THICK CUM[or]CUM DRINKING[or]GUZZLING CUM[or]CUM GUZZLING[or][if bukkake fetish is 1]SALTY MAKEUP[otherwise]SALTY MOUTHWASH[end if][or]SUCKING COCK[or]ACCEPTING HIS CUM[or]SWALLOWING HIS CUM[or]DEEPTHROATING COCKS[in random order][roman type]";
	otherwise if diaper focus is 1 and the diaper addiction of the player > 14:
		say "[one of]sitting on your mommy's lap as she rubs the front of your leaking diaper and degrades you for being such a baby[or]laying down as your daddy sticks his [manly-penis] into the leg-hole of your diaper and cums inside[or]bouncing on your daddy's knee in a [if diaper messing >= 4]messy diaper[otherwise]wet diaper[end if][or]drinking milk from your mommy's breasts while she lovingly rubs your [if diaper messing >= 4]messy diaper[otherwise]wet diaper[end if][or]being used and punished by an especially mean babysitter[in random order]";
	otherwise if diaper focus is 1 and the diaper addiction of the player > 9:
		say "[one of][if the player is gendered male]having a girlfriend force you into diapers before making you wet yourself[otherwise]having a boyfriend force you into diapers before making you wet yourself[end if][or]a dominatrix turning you into a baby against your will and parading you around town for everyone to see your humiliation[or]being blackmailed by your [RelationDesc of Pn] to become [his of Pn] personal diaper slave[or]losing control of your bladder and having to wear diapers as people mock you for being a big baby[in random order]";
	otherwise if diaper focus is 1 and the diaper addiction of the player > 4:
		say "[one of][if the player is possessing a penis]a cute diapered slut sucking your [manly-penis][otherwise if the player is possessing a vagina]a cute [boy of male-m] in a diaper eating your [vagina][otherwise]diapered sex[end if][or]forcing those bitches who put you in here into diapers[or]someone being forcibly diapered before shamefully cumming into their padding[or]a girl being diapered and pulled over a mommy-domme's knee for a spanking[in random order]";
	otherwise if the bimbo of the player < 4 and the player is gendered male and wanktype is not ASS-WANK:[dominating women]
		say "[one of]steamy sex with your [RelationDesc of Fn], [MediumDesc of Fn][or]letting a team of super hot cheerleaders take turns sucking your dick[or]having a threesome with a couple of [if extreme proportions fetish is 1]stacked as hell[otherwise]super fine[end if] bitches[or][if the analvirgin of the player is 1]anally[otherwise]revenge[end if] fucking the [if the intelligence of the player > 5]evil[otherwise]sexy[end if] bitches who put you in here[or]sexy [men of female-f] with big [if lady fetish is 2]asses[otherwise]breasts[end if] and an interest in sitting on your cock[in random order]";
	otherwise if the bimbo of the player < 4 and wanktype is not ASS-WANK:[dominating/humiliating men, equal sex with women]
		say "[one of]life as a powerful business woman with a cute secretary that's always there when you feel like having an orgasm[or]having steamy sex with your [RelationDesc of Fn] on [his of Fn] [boy of male-m]friend's bed[or]forcing the bitches who put you in here to pleasure you as you redesign their wardrobe from scratch[or]forcing your [RelationDesc of Nn] to hang up a picture of [himself of Nn] in a dress in [his of Nn] office[or]sex with a cute [boy of male-m] that always respects your boundaries and has the sense to be gone when you're not horny anymore[or]a whirlwind romance with your [RelationDesc of Nn]'s [boy of female-f]friend.[in random order]";
	otherwise if the bimbo of the player < 8 and the player is gendered male:[Being dominated by women, or the player isn't dominated but there's emphasis on penises]
		say "[one of]sexy [men of female-f] getting fucked by long, hard cocks[or]being pinned underneath a strongly muscled [if futanari fetish > 0]futa[otherwise][man of female-f][end if] as she plows you with her big hard [if futanari fetish is 0]strapon[otherwise]cock[end if][or]having a threesome with a girl and her strong, muscular [boy of male-m]friend[or]serving a gorgeous [man of female-f] as [he of female-f] locks you into chastity[in random order]";
	otherwise if the bimbo of the player < 8:[being dominated by women, men taking passive/equal role]
		say "[one of]the Nintendolls and their sexy choice of clothes[or]being stripped nude by a tall, strapon-wearing [man of female-f] and roughly impaled on [his of female-f] plastic cock[or]joining in after walking in on your [RelationDesc of Fn] and [his of Fn] [boy of male-m]friend having sex[or]getting in bed with the cute [boy of male-m] from the accounting division[or]being held down by a tall, shirtless [man of male-m] as the Nintendolls take turns pounding you with strapon dildos[in random order]";
	otherwise if the bimbo of the player < 12 and the player is gendered male:[submitting to women and men at the same time. Submitting to men because of women.]
		say "[one of]making out with your [RelationDesc of Fn] after [his of Fn] [boy of male-m]friend [if bukkake fetish is 1]unloads on your face[otherwise if watersports fetish is 1]pisses on your face[otherwise]fills your mouth with load[end if][or]eating out your [RelationDesc of Fn] right after [his of Fn] [boy of male-m]friend finishes giving [him of Fn] a massive creampie[or]waking up naked in a sorority house with [if bukkake fetish is 1][semen] all over your face[otherwise if artificial enhancements fetish is 1]lipstick tattooed on your face[otherwise]a huge plug in your ass[end if] and a cowbell around your neck[or]servicing your [RelationDesc of Dn] until [he of Dn] comes[in random order]";
	otherwise if the bimbo of the player < 12:[submitting to people the player knows, sex with strangers]
		say "[one of]tall, muscular [men of male-m] with big, hard [DickDesc of male-m]s[or]the last [boy of male-m] that called you a frigid prude, and how [his of male-m] [if bukkake fetish is 1][semen] would feel all over your face[otherwise if pregnancy fetish is 1][semen] would feel oozing out of your [vagina][otherwise][manly-penis] would feel inside your mouth[end if][or]letting your [RelationDesc of Fn]'s [boy of male-m]friend [if bukkake fetish is 1]cum on your face[otherwise]fuck you in the ass[end if][or][if pregnancy fetish is 1]letting a stranger fuck your [vagina] without a condom[otherwise]getting into a stranger's car and sucking [his of male-m] [DickDesc of male-m] until you get to [his of male-m] apartment[end if][or]letting your [RelationDesc of Nn] fuck you in front of all your friends[in random order]";
	otherwise if the bimbo of the player < 15:[degradation from strangers]
		say "[one of]getting fucked until [if the player is possessing a vagina and pregnancy fetish is 1]you're pregnant[otherwise]you can't walk[end if][or]being pinned down and fucked by muscular [men of male-m] with big hard [DickDesc of male-m]s[or]being blindfolded, bound, and stuffed full of dildos[or][if the player is gendered female]arriving at an important meeting and immediately getting slammed on the table and fucked by the majority shareholder[otherwise]making money on porno sets as a cock warmer between scenes[end if][or][if bukkake fetish is 1 and a random number between 1 and 2 is 1]the feeling of thick, warm [semen] rolling down your face[otherwise if watersports fetish is 1 and a random number between 1 and 2 is 1]the feeling of warm, frothy [urine] streaming into your mouth[otherwise if the raw semen taste addiction of the player > 10]the feeling of thick, warm [semen] spurting into your mouth and rolling down your throat[otherwise]the feeling of a warm, hard [DickDesc of male-m]s in your mouth[end if][in random order]";
	otherwise:[even more degradation from strangers]
		say "[one of]getting gangbanged in the alleyway behind your favourite bar[or][if the player is gendered female]using all that time you wasted in business school to further your career as porn actress[otherwise]becoming a pornographic actress[end if][or]waking up bound, naked, and surrounded by a gang of complete strangers with big hard [DickDesc of male-m]s[or]giving a wet, sloppy blowjob to every [man of male-m] that passes you in the street[or]play-testing even more [i]fun[/i] games for the Nintendolls[in random order]".

[!<cameWhileWanking:Integer>*

Keeps track of whether or not the player came from some outside influence while they were masturbating.

*!]
came-while-wanking is a number that varies.

[!<wankType:Integer>*

Keeps track of how how the player is masturbating.

*!]
wanktype is a number that varies.

NO-WANK is always 0.
COCK-WANK is always 1.
VAG-WANK is always 2.
ASS-WANK is always 3.
HERM-WANK is always 4.

failed-masturbation-reason is a text that varies.

[!<dangerWank:Integer>*

Keeps track of whether or not the player is purposefully wanking in front of an aggressive NPC.

*!]
dangerwank is a number that varies.

[!<masturbationObject:Object>*

Keeps track of which object, if any, the player is using to get themselves off.

*!]
masturbation-object is an object that varies.

[!<wanktime:Number>*

After a masturbation climax this number is increased. It slowly ticks back down to 0. Wanking before it reaches 0 comes with a risk of chastity.

*!]
The player has a number called wanktime.

[!<TheAnalMasturbationLooksSluttyRule>+

Monsters are MUCH more likely to go for the ass if the player is fingering themselves.

+!]
This is the anal masturbation looks slutty rule:
	if wanking is 1:
		if wanktype is ASS-WANK and asshole is not actually occupied, increase the desirability of asshole by 10.
The anal masturbation looks slutty rule is listed in the butt slut eligibility rules.

[!<TheFingeringLooksSluttyRule>+

Monsters are more likely to go for the pussy if the player is masturbating.

+!]
This is the fingering looks slutty rule:
	if wanking is 1:
		if (wanktype is HERM-WANK or wanktype is VAG-WANK) and the player is possessing a vagina and vagina is not actually occupied, increase the desirability of vagina by 5.
The fingering looks slutty rule is listed in the pussy slut eligibility rules.

Definition: yourself is masturbation-climaxing:
	let A be the arousal of the player / 2000;
	increase A by the masturbation-bonus of masturbation-object;
	let C be a random bottom level protection clothing;
	if C is a thing and C is not masturbation-object, increase A by the masturbation-bonus of C;
	let R be a random number between 4 and 7;
	if debuginfo > 0, say "[input-style]Masturbation climax check: arousal + stimulation ([A].5) | ([R]) d4+3 orgasm threshold[roman type][line break]";
	if A >= R, decide yes;
	decide no.

automaticAsswank is initially false. [turns an automatic wank into an anal wank]

Masturbating is an action applying to nothing.

Check masturbating:
	if the player is not potentially able to masturbate, do nothing instead;
	if portal-hotpants is worn:
		if the player is in Hotel44:
			allocate 6 seconds;
			if pimp is threatening and pimp is awake and pimp is in Hotel44:
				if pimp is not interested, check perception of pimp;
				if pimp is interested, say "You move towards your [player-crotch], mounted on the pedestal, but [NameDesc of pimp] moves to block you.[line break][speech style of pimp]'That's my property now, and so I control who gets to touch it, [bitch]!" instead;
			say "It feels extremely weird doing it from this angle, but you are able to touch yourself freely. In fact, this angle allows you to pleasure yourself faster, and in more efficient ways than normal!";
			if player is able to orgasm:
				say "In fact, it's not long before you're enjoying a powerful orgasm!";
				[progress quests and counters related to masturbation]
				if wanktype is ASS-WANK:
					if masturbation-object is nothing, heal asshole times 1;
					increase anal-orgasms by 1;
					progress quest of anal-orgasm-quest;
				otherwise:
					if the player is not possessing a vagina, heal asshole times 1;
					if the player is possessing a vagina:
						if masturbation-object is not an insertable object, heal vagina times 1;
						increase vaginal-orgasms by 1;
				if a random number between 1 and the sex addiction of the player < 6, SexAddictUp 1;
				orgasm; [handle anything that needs to happen for an orgasm]
			otherwise:
				say "Unfortunately, something seems to be preventing you from being able to orgasm right now, so you are left feeling very unsatisfied...";
			say "You let go of your [player-crotch]." instead;
		otherwise:
			say "You can't touch your [player-crotch] while the pair of portal hotpants is linked to the statue in the [Hotel44]!" instead;
	now failed-masturbation-reason is "";
	now wanktype is NO-WANK;
	if the player is able to penis masturbate:
		now wanktype is COCK-WANK;
	if the player is able to vaginally masturbate:
		if wanktype is COCK-WANK, now wanktype is HERM-WANK;
		otherwise now wanktype is VAG-WANK;
	if auto is 1 and automaticAsswank is true and the player is able to anally masturbate:
		now wanktype is ASS-WANK;
	if wanktype is NO-WANK:[that is to say, neither set of genitals worked.]
		if the player is not able to anally masturbate:
			if auto is 0, say "[failed-masturbation-reason]" instead;
			otherwise do nothing instead;
		otherwise:
			now wanktype is ASS-WANK;
	if auto is 0:
		let AF be 1;
		if the player is upright:
			if the player is not anal flexible or the living belt of sturdiness is penetrating asshole, now AF is 0;
		if (the wanktime of the player > 100 or lock-it tattoo is worn) and the number of worn diapers is 0 and the number of on-stage chastity bonds is 0:
			say "You hesitate, having a sneaking suspicion that [masturbating][if diaper quest is 1] while not wearing a diaper[end if] [if the wanktime of the player > 100]so soon after a previous orgasm [end if]has a [italic type]chance[roman type] of the [boy of futanari-slutty-sister]s running the game punishing you for it. Do you want to go ahead and risk it? ";
			unless the player is in agreement, say "You decide against it." instead;
		if the player is pee protected and the player is possessing a penis:
			say "You [if wanktype is ASS-WANK]are still wearing your[otherwise]will get yourself off through your[end if] [ShortDesc of random bottom level pee protection clothing] which will cause you to ejaculate into it, is that what you want? ";
			if the player is not bimbo consenting, say "Then you better [bold type]remove[roman type] or [bold type]displace[roman type] the [random bottom level pee protection clothing] first." instead;
		if wanktype is ASS-WANK: [If it's automatic masturbation, we won't notify the player.]
			say "You can only use your ass to masturbate right now[if AF is 0 and the player is not anal flexible], and since you aren't flexible enough to do it standing up, you'll have to get on your knees first[otherwise if AF is 0], and since your belt is in the way, you'll have to get on your knees first[end if]. Is that OK? ";
			unless the player is bimbo consenting:
				say "You decide against it.";
				now wanktype is NO-WANK instead;
		otherwise if the buttskill of the player is 1: [if wanktype is already ASS-WANK, then it's the only way the player can masturbate]
			say "Use your ass to masturbate? [if AF is 0 and the player is not anal flexible]You aren't flexible enough to do it standing up, so you'll have to get on your knees first.[otherwise if AF is 0]You'll have to get on your knees first, since the belt is in the way.[end if]";
			if the player is bimbo consenting:
				if AF is 0:
					now auto is 1;
					try kneeling;
					now auto is 0;
					if the player is upright, say "As you weren't able to get on your knees, you give up." instead;
				now wanktype is ASS-WANK;[if the player needed to kneel, but couldn't, the line above should kick them out of the function]
	if wanktype is NO-WANK:[shouldn't happen, but just in case.]
		say "You don't have any way to masturbate right now!" instead;
	if (wanktype is COCK-WANK or wanktype is HERM-WANK) and penis is not erect-at-will and penis is not penis-erect:
		if wanktype is COCK-WANK:
			say "Your [mystical ShortDesc of penis] remains completely soft, so you give up on doing anything with it.";
			if auto is 1, increase the wanktime of the player by 100;[so the player doesn't immediately try again.]
			allocate 2 seconds instead;
		otherwise:[must be a herm situation]
			if auto is 0:
				say "Your [mystical ShortDesc of penis] remains completely soft. Do you want to continue without using your penis?";
				if the player is bimbo consenting:
					now wanktype is VAG-WANK;
				otherwise:
					allocate 2 seconds instead;
			otherwise:
				say "Your [mystical ShortDesc of penis] remains completely soft, but it's not like that's going to stop you.".

Carry out masturbating:
	allocate arm use;
	allocate 6 seconds;
	let chastity-mod be 0;
	now came-while-wanking is 0;
	now masturbation-object is arms;
	if auto is 0:
		if wanktype is ASS-WANK:
			let IT be a random worn insertable thing;
			if IT is clothing and IT is penetrating asshole:
				now masturbation-object is IT;
			otherwise:
				let LV be a list of things;
				repeat with O running through carried insertable things:
					if the girth of O <= the insertableGirthAcceptance of asshole, add O to LV;
				if the number of entries in LV > 0:
					reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
					truncate LV to 9 entries;
					say "How do you want to anally masturbate?[line break]";
					repeat with V running through LV:
						set next numerical response to "with [NameDesc of V]";
					set numerical response 0 to "just use your fingers";
					compute multiple choice question;
					if player-numerical-response > 0, now masturbation-object is entry player-numerical-response in LV;
					if masturbation-object is clothing and masturbation-object is not worn and masturbation-object is not disembodied:[insertable clothes, like plug panties, must be worn before using them to masturbate.]
						now masturbation-object is arms;
						say "Then you'll have to put it on first." instead;
		otherwise if the player is able to wank:
			let LV be a list of things;
			if (wanktype is VAG-WANK or wanktype is HERM-WANK) and vagina is not actually occupied and the number of cursed pussy covering clothing is 0:
				repeat with O running through carried insertable things:
					if the girth of O <= the insertableGirthAcceptance of vagina, add O to LV;
			repeat with O running through held vibe-wands:
				add O to LV;
			if the number of entries in LV > 0:
				reset multiple choice questions; [ALWAYS REMEMBER THIS WHEN MAKING A MULTIPLE CHOICE QUESTION]
				truncate LV to 9 entries;
				say "How do you want to masturbate?[line break]";
				repeat with V running through LV:
					set next numerical response to "with [NameDesc of V]";
				set numerical response 0 to "just use your fingers";
				compute multiple choice question;
				if player-numerical-response > 0, now masturbation-object is entry player-numerical-response in LV;
	if auto is 0 and the player is in danger, now dangerwank is 1;
	if masturbation-object is arms:[If the player didn't choose a toy to use, see if there's one they MUST use]
		if wanktype is ASS-WANK:
			let O be a random insertable thing penetrating asshole;
			if O is a thing, now masturbation-object is O;
		otherwise:
			let O be a random insertable thing penetrating vagina;
			if O is a thing:
				now masturbation-object is O;
			otherwise if auto >= 1:
				if masturbation-object is arms, now masturbation-object is a random worn vibe-wand;
	otherwise:
		if masturbation-object is insertable object:
			if wanktype is ASS-WANK, now masturbation-object is penetrating asshole;
			otherwise now masturbation-object is penetrating vagina;
	let M be a random live thing penetrating a body part;
	let N be 0;
	let C be a random bottom level protection clothing;
	if the player is masturbation-climaxing:
		if wanktype is ASS-WANK, say InstantAnalMasturbationFlav of (masturbation-object) with (M) in (C);
		otherwise say InstantMasturbationFlav of (masturbation-object) with (M) in (C);
		follow the masturbation climax rule;
	otherwise:
		if wanktype is ASS-WANK:
			say StartAnalMasturbationFlav of (masturbation-object) with (M) in (C);
			passively stimulate asshole from masturbation-object;
		otherwise:
			say StartMasturbationFlav of (masturbation-object) with (M) in (C);
			if wanktype is COCK-WANK, passively stimulate penis from masturbation-object;
			otherwise passively stimulate vagina from masturbation-object;
		now another-turn is 1;
		now N is 1;
		add the continue masturbation rule to another-turn-rules, if absent;
	say line break;
	repeat with M2 running through reactive monsters: [Determine how the monster reacts]
		compute MasturbationReaction of M2;
	repeat with PORT running through summoning portals in the location of the player:
		compute wankingSiphon of PORT; [Increase the charge of any nearby portals]
	if N is 0, follow the masturbation ended rule.

This is the continue masturbation rule:
	let N be 1;
	if there is a thing grabbing the player or came-while-wanking is 1 or (wanktype is ASS-WANK and there is a live thing penetrating asshole), now N is -1; [masturbation interrupted]
	if there is a live thing penetrating penis:
		if wanktype is HERM-WANK, now wanktype is VAG-WANK;
		if wanktype is COCK-WANK, now N is -1;[Herms will continue, but if it's penis-only, you're interrupted.]
	if N is 1:
		if the player is masturbation-climaxing, now N is 0; [orgasm achieved]
	if N is 1 and dangerwank is 0 and the player is in danger:
		if the arousal of the player / 1000 > a random number between 3 and (20 - the sex addiction of the player):
			say "You are too horny, you can't stop yourself from masturbating[if the player is not immobile], even in the face of danger[end if]!";
		otherwise:
			now N is -2; [masturbation consciously stopped]
	if N is 1:
		let C be a random bottom level protection clothing;
		let WM be a random live thing penetrating a body part;
		if wanktype is ASS-WANK:
			say OngoingAnalMasturbationFlav of (masturbation-object) with (WM) in (C);
			passively stimulate asshole from masturbation-object;
		otherwise:
			say OngoingMasturbationFlav of (masturbation-object) with (WM) in (C);
			if wanktype is COCK-WANK, passively stimulate penis from masturbation-object;
			otherwise passively stimulate vagina from masturbation-object;
		say line break;
		now another-turn is 1;
		add the continue masturbation rule to another-turn-rules, if absent;
	if N is 0, follow the masturbation climax rule;
	if N >= 0:
		repeat with M2 running through reactive monsters: [Determine how the monster reacts]
			compute MasturbationReaction of M2;
		repeat with PORT running through summoning portals in the location of the player:
			compute wankingSiphon of PORT; [Increase the charge of any nearby portals]
	if N < 0:
		if N is -1, say "[bold type]Your masturbation session has been interrupted![roman type][line break]";
		otherwise say "You stop masturbating.";
	if N <= 0, follow the masturbation ended rule.

[!<TheMasturbationClimaxRule>+

Handles the player orgasming from masturbation. This is distinct from orgasms that happen during masturbation, but with something else as a cause. Resets the wanktime variable so the player will be punished

+!]
This is the masturbation climax rule:
	let MW be a random live thing penetrating a body part;
	let C be a random bottom level protection clothing;
	if wanktype is ASS-WANK, say ClimaxAnalMasturbationFlav of (masturbation-object) with (MW) in (C);
	otherwise say ClimaxMasturbationFlav of (masturbation-object) with (MW) in (C);
	say line break;
	[prepare to take a picture of the player's orgasm and put a poster somewhere]
	let CT be a random camera trap in the location of the player;
	if CT is camera trap and there is an off-stage masturbation poster:
		let TP be a random off-stage masturbation poster;
		now the old-stimulant of TP is masturbation-object;
		say FlashFlav of CT;
		say "It was in a perfect position to capture a full shot of your [if the sex addiction of the player < 7]crime[otherwise]orgasm[end if].";
		say "[one of][line break][variable custom style][if the humiliation of the player < HUMILIATION-SHAMELESS - 3000]Oh shit! This was a bad place to decide to do that...[otherwise]Looks like someone is helping me expose myself.[end if][or][if the bimbo of the player < 14][variable custom style]Again?![otherwise][line break][second custom style]If someone sells that photo, I hope I get royalties![end if][stopping][roman type][line break]";
		set up TP;
	[progress quests and counters related to masturbation]
	if wanktype is ASS-WANK:
		if masturbation-object is nothing, heal asshole times 1;
		increase anal-orgasms by 1;
		progress quest of anal-orgasm-quest;
	otherwise:
		if the player is not possessing a vagina, heal asshole times 1;
		if the player is possessing a vagina:
			if masturbation-object is not an insertable object, heal vagina times 1;
			increase vaginal-orgasms by 1;
	if a random number between 1 and the sex addiction of the player < 6, SexAddictUp 1;
	orgasm; [handle anything that needs to happen for an orgasm]
	if (the wanktime of the player > 100 or lock-it tattoo is worn) and the number of on-stage chastity bonds is 0 and the number of worn diapers is 0:[Put the player in chastity if necessary]
		let C be a random off-stage fetish appropriate chastity bond;
		if C is actually summonable:[This should handle "penis cage" + no penis situations on its own.]
			if the player is getting unlucky:
				if players-dick-is-detached is 0: [#LXorDD]
					say "As you pull your hand away from your crotch, you feel a tightness around your loins. You look down and see that a [ShortDesc of C] has appeared around your [if C is chastity cage][ShortDesc of penis][otherwise]crotch[end if]! [if the bimbo of the player < 10]Even worse, it[otherwise]It[end if] only stops anything from touching your [if C is chastity-belt]genitals[otherwise]dick[end if], so your [asshole] remains completely unprotected![line break][GotUnluckyFlav]";
					summon C cursed with quest;
				otherwise:
					if players-detached-dick is somewhere-here:
						say "As your fingers slacken on your [mystical ShortDesc of penis], you feel a tightness and a... shrinkage. Your detached dick dwindles even further![GotUnluckyFlav]";
					otherwise:
						say "As you feel your [mystical ShortDesc of penis] soften, you also feel a tightness and a... dwindling. You cringe, sensing it shrink even further![GotUnluckyFlav]";
					DetachedPenisDown 1;
				say "[variable custom style]What is the game saying? That I'm too eager to play with myself? How frustrating...![roman type][line break]";
	now the wanktime of the player is 500;
	if masturbation-object is a magic themed thing, MagicPowerRefresh 4;
	compute climax effect of masturbation-object; [if the player used a sex toy to masturbate, handle any of its special effects]
	if player is wearing portal-cock-ring:
		say cock ring effect of portal-cock-ring; [Touch --> may detach, heh!]

[!<TheMasturbationEndedRule>+

Handles and code to be run when the player stops masturbating.

+!]
This is the masturbation ended rule:
	if masturbation-object is disembodied and masturbation-object is not worn, dislodge masturbation-object; [Dislodge the sex toy unless you were already wearing it]
	now wanktype is NO-WANK;
	now dangerwank is 0;
	if the wanktime of the player <= 0, now the wanktime of the player is 100; [A good way to flag to the rest of the game that a masturbation was attempted recently, to avoid infinite loops!]
	if the continue masturbation rule is listed in another-turn-rules:
		remove the continue masturbation rule from another-turn-rules;
		if the number of entries in another-turn-rules is 0, now another-turn is 0.

[Selkie: If these simple insertions of mystical into ShortDesc of penis doesn't work if it's possible for your detached penis to be elsewhere, then maybe code up a function like this, so we can say stuff like:
	let DickAct1 a text be say "play with your" or "imagine playing with your" action on penis;
so we can use DickAct1 inside the complex say expressions.
Alternatively, just define a variable:
 let ImagineYou be "";
 if players-dick-is-detached > 0 and players-detached-dick is somewhere-here, now ImagineYou is "imagine you ";
so we can just insert a ImagineYou in front of phrases like:
 "...and [ImagineYou]play with your [mystical ShortDesc of penis]...".

To say (present - a text) or (absent - a text) action on penis:
	if players-dick-is-detached is 0:
		say "[present] [ShortDesc of penis]";
	otherwise if players-detached-dick is somewhere-here:
		say "[present] [mystical ShortDesc of penis]";
	otherwise:
		say "[absent] [mystical ShortDesc of penis]".]

[!<SayInstantMasturbationFlavOfObjectWithThingInObject>+

Displays the flavour for the player masturbating and immediately reaching a climax. The flavour for the climax itself is left to another function.

@param <Object>:<O> The sex toy the player is using to masturbate, if any.
@param <Thing>:<M> The living thing penetrating a body part, if any.
@param <Object>:<C> The piece of clothing the player is masturbating through, if any.

+!]
To say InstantMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):[We're only doing an introduction here, the rest is handled by the climaxmasturbationflav function; sex addiction here should be raw sex addiction]
	let A be the raw sex addiction of the player;
	let R be a random number between 1 and 3;
	if C is chastity cage, now C is nothing;
	if O is insertable object:[In this case, we don't need to account for M being in the way]
		say "[one of]You [if wanktype is HERM-WANK]neglect your [mystical ShortDesc of penis] and [end if]eagerly begin to fuck yourself with the [printed name of O], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasising about [PlayerFantasy][end if]. [if A < 5]It's almost embarrassing how much it turns you on[otherwise if A < 10]It's a little surprising how much it turns you on[otherwise]It makes you uncontrollably turned on[end if], and as the heat of new arousal lights up your body, you realise you're already about to cum.[or]You slide the [printed name of O] into your [vagina],[if wanktype is HERM-WANK] and play with your [mystical ShortDesc of penis] as you[otherwise] and[end if] begin to vigorously fuck yourself to [if M is a live thing]the feeling of [NameDesc of M][otherwise]the thought of [PlayerFantasy][end if]. Nothing more than a moment passes, [if A < 5]and you are immediately ashamed to[otherwise if A < 10]and you tell yourself you should be ashamed to[otherwise]and you feel your muscles tightening in anticipation as you[end if] realise that you're about to cum.[or]You sink the [printed name of O] into your [vagina][if wanktype is HERM-WANK], wrapping your hand around your [mystical ShortDesc of penis] as you[otherwise] and[end if] begin fucking yourself with abandon. [if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realise you're already going to cum.[in random order]";
		if O is players-detached-dick:
			let oro be a random orifice penetrated by the players-detached-dick;
			literally self pleasure by the player in oro;
	otherwise if O is vibe-wand:
		if O is royal sceptre and O is blacked, say "You press [NameDesc of O] against [if wanktype is HERM-WANK]both sets of genitals[otherwise if wanktype is COCK-WANK]your [mystical ShortDesc of penis][otherwise]your clit[end if], and immediately find your mind filled with visions of delicious, glorious, giant black cocks. [if A < 5]It's almost embarrassing how much it turns you on[otherwise if A < 10]It's a little surprising how much it turns you on[otherwise]It makes you uncontrollably turned on[end if], and as the pleasure rapidly builds upon itself, you realise you're already about to cum.";
		otherwise say "[one of]You turn on the [ShortDesc of O] and grind [if wanktype is HERM-WANK]both sets of genitals against it[otherwise if wanktype is COCK-WANK]your [mystical ShortDesc of penis] against it[otherwise]grind it against your clit[end if], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasising about [PlayerFantasy][end if]. [if A < 5]It's almost embarrassing how much it turns you on[otherwise if A < 10]It's a little surprising how much it turns you on[otherwise]It makes you uncontrollably turned on[end if], and as the pleasure rapidly builds upon itself, you realise you're already about to cum.[or]You turn on the [ShortDesc of O] and begin to stimulate your [if wanktype is HERM-WANK][mystical ShortDesc of penis] and clit[otherwise if wanktype is COCK-WANK][mystical ShortDesc of penis][otherwise]clit[end if][if C is clothing] through your [ShortDesc of C][end if], closing your eyes as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasise about [PlayerFantasy][end if]. Nothing more than a moment passes, [if A < 5]and you are immediately ashamed to[otherwise if A < 10]and you tell yourself you should be ashamed to[otherwise]and you feel your muscles tightening in anticipation as you[end if] realise that you're already going to cum.[or]You switch on [ShortDesc of O] and roll the vibrating end [if wanktype is HERM-WANK]down your [mystical ShortDesc of penis] and over your clit[otherwise if wanktype is COCK-WANK]around the head of your [mystical ShortDesc of penis][otherwise]around and around your clit[end if]. The [if C is clothing]sensation of being stimulated through your [ShortDesc of C][otherwise]strong stimulation[end if] combines with [if M is a live thing]the reality of what you're allowing [NameDesc of M] to do with you[otherwise]your fantasy of [PlayerFantasy][end if] and just like that, you realise you're already going to cum.[in random order]";
	otherwise if C is clothing:[If C is clothing, we know M isn't in the way. Also, O isn't a thing beyond this point]
		say "[one of]You eagerly begin to grab and rub [if wanktype is HERM-WANK]both sets of genitals[otherwise if wanktype is COCK-WANK]your [mystical ShortDesc of penis][otherwise]your clit[end if] through your [ShortDesc of C], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasising about [PlayerFantasy][end if]. [if A < 5]It's a little embarrassing how much it turns you on[otherwise if A < 10]It gets you even more turned on[otherwise]It makes you uncontrollably turned on[end if], and as much as the sensation is dampened by the [clothing-material of C], you realise you're already going to cum.[or]You begin to rub yourself through your [ShortDesc of C], closing your eyes as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasise about [PlayerFantasy][end if]. Even through the fabric, the pleasure rapidly intensifies, and you realise [if A < 5]with shame [otherwise if A < 10] [otherwise]with anticipation [end if]that you're about to cum.[or]You touch yourself through the [ShortDesc of C], [if wanktype is HERM-WANK]teasing your clit and groping your shaft[otherwise if wanktype is COCK-WANK]groping your [mystical ShortDesc of penis][otherwise]teasing your clit[end if] through the fabric. [if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realise you're already going to cum.[in random order]";
	otherwise:
		if wanktype is not VAG-WANK:[must be penis wank or herm wank]
			say "[one of]You eagerly begin to stroke your [mystical ShortDesc of penis][if wanktype is HERM-WANK] and play with your [vagina][end if], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasising about [PlayerFantasy][end if]. [if A < 5]It's almost embarrassing how much it turns you on[otherwise if A < 10]It's a little surprising how much it turns you on[otherwise]It makes you uncontrollably turned on[end if], and as the pleasure rapidly builds upon itself, you realise you're already about to cum.[or]You begin to pump your [mystical ShortDesc of penis][if wanktype is HERM-WANK]and tickle your clit[end if], closing your eyes as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasise about [PlayerFantasy][end if]. Nothing more than a moment passes, [if A < 5]and you are immediately ashamed to[otherwise if A < 10]and you tell yourself you should be ashamed to[otherwise]and you feel your muscles tightening in anticipation as you[end if] realise that you're already going to cum.[or]You [if wanktype is HERM-WANK]tease your clit and [end if]eagerly begin to stroke your [if penis is penis-erect]hard[otherwise]hardening[end if] [mystical ShortDesc of penis]. [if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realise you're already going to cum.[in random order]";
		otherwise:
			say "[one of]You eagerly begin to rub your clit[unless vagina is actually occupied] and finger your [vagina][end if], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasising about [PlayerFantasy][end if]. [if A < 5]It's a little embarrassing how much it turns you on[otherwise if A < 10]It gets you even more turned on[otherwise]It makes you uncontrollably turned on[end if], and as the rush of new arousal passes through your body, you realise you're already going to cum.[or][if vagina is actually occupied]You eagerly diddle your clit[otherwise]You eagerly rub your clit whilst fingering your [vagina][end if], closing your eyes as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasise about [PlayerFantasy][end if]. Already, the rapidly intensifying pleasure seems to head toward a peak, and you realise [if A < 5]with shame [otherwise if A < 10] [otherwise]with anticipation [end if]that you're about to cum.[or]You eagerly begin to touch yourself, [if vagina is actually occupied]delicately, but enthusiastically teasing your sensitive clit[otherwise]rubbing your clit and fingering your [vagina][end if].[if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realise you're already going to cum.[at random]".

[!<SayInstantAnalMasturbationFlavOfObjectWithThingInObject>+

Displays the flavour for the player masturbating and immediately reaching a climax while masturbating anally. The flavour for the climax itself is left to another function.

@param <Object>:<O> The sex toy the player is using to masturbate, if any.
@param <Thing>:<M> The living thing penetrating a body part, if any.
@param <Object>:<C> The piece of clothing the player is masturbating through, if any.

+!]
To say InstantAnalMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	let A be the anal sex addiction of the player;
	let R be a random number between 1 and 3;
	if C is chastity cage, now C is nothing;
	if R is 1:
		say "You [if O is insertable object]ease the [printed name of O] into your [asshole][otherwise]ease your fingers into your [asshole][end if], [if A < 5]cheeks burning with shame[otherwise if A < 10]panting with excitement[otherwise]cooing with unabashed excitement[end if] as you begin to fuck yourself to the [if M is a live thing]the feeling of [NameDesc of M][otherwise]thought of [PlayerFantasy][end if]. Nothing more than a moment passes, [if A < 5]and you are immediately ashamed to[otherwise if A < 10]and you tell yourself you should be ashamed to[otherwise]and you feel your muscles tightening in anticipation as you[end if] realise that you're about to cum.";
	otherwise if R is 2:
		say "[if O is insertable object]The [printed name of O][otherwise]Your fingers[end if] send ripples of pleasure through your body as you push them into your [if the soreness of asshole > 3]sensitive [end if][asshole], eliciting a hiss of pleasure as you [if the player is sexed male and O is nothing]begin to delicately stroke your prostate[otherwise if the player is sexed male]begin to grind the [printed name of O] against your prostate[otherwise if O is insertable object]gingerly push the [printed name of O] in and out[otherwise]gingerly push your fingers in and out[end if]. [if A < 5 and M is a live thing]It feels wrong, but you focus on [NameDesc of M][otherwise if M is a live thing]You focus as much as you can on [NameDesc of M][otherwise]A fantasy of [PlayerFantasy] enters your thoughts[end if], and just like that, you realise you're already going to cum.";
	otherwise if R is 3:
		say "You eagerly slide your [if O is insertable object][printed name of O][otherwise]fingers[end if] into your [asshole], closing your eyes and beginning to fuck yourself [if M is a live thing]to the feeling of [NameDesc of M][otherwise]as your mind fills with thoughts of [PlayerFantasy][end if]. [if A < 5]You can't help feeling ashamed at how much it turns you on[otherwise if A < 9]You can't believe how much it turns you on[otherwise]It gets you unbelievably turned on[end if], and as the rush of new arousal passes through your body, you realise that you're about to cum.";
	if O is players-detached-dick:
		literally self pleasure by the player in asshole.

[!<SayStartMasturbationFlavOfObjectWithThingInObject>+

Displays the flavour for the player beginning a masturbation session.

@param <Object>:<O> The sex toy the player is using to masturbate, if any.
@param <Thing>:<M> The living thing penetrating a body part, if any.
@param <Object>:<C> The piece of clothing the player is masturbating through, if any.

+!]
To say StartMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	let R be a random number from 1 to 3;
	if C is chastity cage, now C is nothing;
	if auto < 2:
		if O is royal sceptre and O is blacked:
			say "You press [NameDesc of O] against [if wanktype is HERM-WANK]both sets of genitals[otherwise if wanktype is COCK-WANK]your [mystical ShortDesc of penis][otherwise]your clit[end if], and immediately find your mind filled with visions of delicious, glorious, giant black cocks.";
		otherwise if wanktype is HERM-WANK:
			if vagina is actually occupied:
				say "You [if O is vibe-wand]switch on the [ShortDesc of O] and gingerly hold it against[otherwise]start rubbing[end if] your [if penis is penis-erect][mystical ShortDesc of penis], using your other hand to play with your clit[otherwise]clit, allowing your [mystical ShortDesc of penis] to grow good and hard[end if] as [if there is a live thing penetrating vagina]the [random live thing penetrating vagina] continues to pump away[otherwise]your pussy muscles clench around the [random thing penetrating vagina][end if].";
			otherwise if O is vibe-wand:
				say "You switch on the [ShortDesc of O][if penis is penis-erect] and begin to alternate between holding it against your hard [mystical ShortDesc of penis] and needy clit.[otherwise], [one of]holding[or]tapping[or]bumping[or]sliding[or]pressing[at random] the vibrating end against your clit as your [mystical ShortDesc of penis] slowly grows stiff and hard.[end if]";
			otherwise if C is clothing:
				say "You press your fingers to your [mystical ShortDesc of penis], using your other hand to delicately stimulate your [vagina] through your [ShortDesc of C]. It [if penis is penis-erect]helps that you're already[otherwise]doesn't take long before you're[end if] hard, and soon you are using the [clothing-material of C] as an additional tool for pleasuring yourself.";
			otherwise if O is insertable object:
				say "You ease the [ShortDesc of O] into your [vagina], [if penis is penis-erect]eagerly stroking your hard[otherwise]playing with your hardening[end if] [mystical ShortDesc of penis] as you begin to fuck yourself";
			otherwise:
				if penis is penis-erect:
					say "You slip a finger into your pussy, [one of]grab your erect[or]wrap your hand around your hard[or]grasp your stiff[in random order] [mystical ShortDesc of penis] and begin to stroke.";
				otherwise:
					say "[one of]You sink your fingers into your [vagina], [if the player is not horny]sighing softly[otherwise if the player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as your [mystical ShortDesc of penis] slowly stirs to life.[or]You reach between your legs, parting your [if the semen coating of thighs > 0]slimy, [semen] glazed labia lips[otherwise]delicate labia lips[end if] with your fingers, allowing your [mystical ShortDesc of penis] to grow stiff and hard as your fingers sink into your [vagina].[or]You allow your fingers to dip into your [vagina], your [mystical ShortDesc of penis] growing harder and harder by the second.[in random order]";
		otherwise if wanktype is COCK-WANK:
			if O is vibe-wand:
				say "You switch on the [ShortDesc of O] and hold the vibrating end [if penis is penis-erect]under the head of your rock-hard [mystical ShortDesc of penis][otherwise]against your [mystical ShortDesc of penis], slowly rolling it back and forth as you feel yourself growing stiff and hard.[end if]";
			otherwise if C is clothing:
				say "[one of]You grab your [mystical ShortDesc of penis] through your [ShortDesc of C], rubbing your palm up and down as [if penis is penis-erect]play with your erection through the [clothing-material of C].[otherwise]you feel yourself growing stiff and hard.[end if][or]You grab the bulge in your [ShortDesc of C], gently teasing it back and forth as your [mystical ShortDesc of penis] grows [if penis is penis-erect]even harder.[otherwise if the size of penis > 5]big and hard.[otherwise]hard.[end if][or]You press your fingers to your [mystical ShortDesc of penis], delicately stimulating it through your [ShortDesc of C]. It [if penis is penis-erect]helps that you're already[otherwise]doesn't take long to get[end if] hard, and soon you are using the [clothing-material of C] as an additional tool for pleasuring yourself.[in random order]";
			otherwise:
				if penis is penis-erect:
					say "You [one of]grab your erect[or]wrap your hands around your hard[or]grasp your stiff[in random order] [mystical ShortDesc of penis] and begin to stroke.";
				otherwise:
					say "[one of]You wrap your fingers around your [mystical ShortDesc of penis], which [if the size of penis > 7]slowly stiffens as you begin to stroke[otherwise if the size of penis > 4]quickly stiffens as you begin to stroke[otherwise if the size of penis > 1]stiffens within only a couple strokes[otherwise]which is hard instantly, although it's so small you can only start 'stroking' if you're holding it with just your forefinger and thumb[end if].[or]You grab your [if the size of penis < 3][mystical ShortDesc of penis][otherwise if the size of penis is 7 or the size of penis is 6][mystical ShortDesc of penis][otherwise]penis[end if], eagerly stroking it [if the size of penis > 7]as it slowly grows into a [mystical ShortDesc of penis][otherwise if the size of penis > 5]as it grows stiff and hard[otherwise if the size of penis > 2]as it hardens into a [mystical ShortDesc of penis][otherwise]with your thumb and forefinger[end if].[or]You eagerly begin stroking your [mystical ShortDesc of penis], which hardens in anticipation of what comes next.[in random order]";
		otherwise:
			if O is insertable object:
				say "[one of]You [if the player is not horny]sigh softly[otherwise if the player is horny]moan quietly[otherwise]shudder with pleasure[end if] as you slide the [ShortDesc of O] into your [vagina] and begin to fuck yourself.[or]You ease the [ShortDesc of O] into your [vagina], eagerly rubbing your clit as you start to fuck yourself with the toy.[or]You reach between your legs, gently spreading your outer lips as you sink the [ShortDesc of O] into your [vagina], and begin to work it in and out.[in random order]";
				if O is players-detached-dick:
					literally self pleasure by the player in vagina;
			otherwise if vagina is actually occupied:
				say "You [if O is vibe-wand]switch on the [ShortDesc of O] and gingerly hold it against[otherwise]start rubbing[end if] your delicate, sensitive clit as [if there is a live thing penetrating vagina]the [random live thing penetrating vagina] continues to pump away[otherwise]your pussy muscles clench around the [random thing penetrating vagina][end if].";
			otherwise if O is vibe-wand:
				say "[one of]You [if the player is not horny]sigh softly[otherwise if the player is horny]moan quietly[otherwise]shudder with pleasure[end if] as you switch on the [ShortDesc of O] and hold the bigger end just under your clit.[or]You turn on the [ShortDesc of O] and ease it up to your clit, sighing quietly as the toy vibrates against your outer lips.[or]You reach between your legs, gently spreading your outer lips as you switch on the [ShortDesc of O] and hold it against your sensitive bits.[in random order]";
			otherwise if C is clothing:
				say "[one of]You paw at yourself through your [ShortDesc of C], shivering as the [clothing-material of C] rubs up against your sensitive outer [vagina].[or]You slowly rub yourself through the fabric of your [ShortDesc of C], which dampens slightly with [if the semen volume of vagina > 0]a bit of [semen] trapped in your [vagina][otherwise]feminine juices[end if].[or]You start rubbing your clit through your [ShortDesc of C], which dampens the sensation somewhat, but adds an interesting new one to compensate.[in random order]";
			otherwise:
				say "[one of]You sink your fingers into your [vagina], [if the player is not horny]sighing softly[otherwise if the player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as you gently push them in and out.[or]You reach between your legs, parting your [if the semen coating of thighs > 0]slimy, [semen] glazed labia lips[otherwise]delicate labia lips[end if] with your fingers, [if the player is not horny]sighing softly[otherwise if the player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as they sink into your [vagina].[or]You allow your fingers to dip into your [vagina], trying to figure out [if the raw sex addiction of the player < 5]what possible motivation you could have for acting like this.[otherwise]why you didn't try this way sooner![end if][in random order]";
	if wanktype is not VAG-WANK and penis is not penis-erect, now penis is penis-erect.

[!<SayStartAnalMasturbationFlavOfObjectWithThingInObject>+

Displays the flavour for the player beginning an anal masturbation session.

@param <Object>:<O> The sex toy the player is using to masturbate, if any.
@param <Thing>:<M> The living thing penetrating a body part, if any.
@param <Object>:<C> The piece of clothing the player is masturbating through, if any.

+!]
To say StartAnalMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	if O is insertable object:
		say "[one of]You reach between your legs as you slide the [printed name of O] into your [asshole] and slowly being to work it in and out.[or]You reach between your legs, [if the player is not horny]sighing softly[otherwise if the player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as you slowly begin to fuck yourself with the [printed name of O].[or]You [if the player is not horny]sigh softly[otherwise if the player is horny]moan quietly[otherwise]shudder with pleasure[end if] as you reach between your legs and sink the [printed name of O] into your [asshole], and slowly begin to fuck yourself.[in random order]";
		if O is players-detached-dick:
			literally self pleasure by the player in asshole;
	otherwise:
		say "[one of]You reach between your legs and slip your fingers into your [asshole]. You [if the player is not horny]sigh softly[otherwise if the player is horny]moan quietly[otherwise]shudder with pleasure[end if] as you begin to gently push them in and out.[or]You reach between your legs, [if the player is not horny]sighing softly[otherwise if the player is horny]moaning quietly[otherwise]shuddering with pleasure[end if] as your fingers gingerly enter your [asshole] and slowly begin to push in and out.[or]You reach between your legs, [if the anal sex addiction of the player < 3 and the humiliation of the player < HUMILIATION-MODEST]cheeks burning with shame[otherwise]shivering with excitement[end if] as your fingers sink into your [asshole], and slowly begin to fuck yourself.[in random order]";

[!<SaySquirtDesc>+

Displays some flavour describing the player squirting.

+!]
To say SquirtDesc:
	say "[if the openness of vagina < 4]dribbles a small amount of girlcum[otherwise]squirts out girlcum[end if]";

[!<SayClimaxMasturbationFlavOfObjectWithThingInObject>+

Displays the flavour for the player climaxing from masturbation.

@param <Object>:<O> The sex toy the player is using to masturbate, if any.
@param <Thing>:<M> The living thing penetrating a body part, if any.
@param <Object>:<C> The piece of clothing the player is masturbating through, if any.

+!]
To say ClimaxMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):[note, this appears even when the player has an instant orgasm]
	let F be a random live thing penetrating face;
	let X be a random live thing penetrating a fuckhole;
	if wanktype is not VAG-WANK:[TODO: eventually expand]
		say "You [if C is clothing or O is vibe-wand]rub[otherwise]stroke[end if] yourself faster and faster, [if the bimbo of the player < 7]groaning[otherwise]moaning[end if] [if F is a live thing]into [NameDesc of F][otherwise]with excitement and pleasure[end if] as you finally go over the edge.";[the rest is handled by the orgasm function]
	otherwise:
		if O is insertable object:
			say "You [if F is a live thing]moan into [NameDesc of F][otherwise if the raw sex addiction of the player < 5]grit your teeth, panting[otherwise if the raw sex addiction of the player < 10]purse your lips, moaning[otherwise]can't help but form your lips into a large, circular 'O', cooing[end if] with pleasure as the feeling of hard [if O is golden-phallus]gold[otherwise]plastic[end if] sliding in and out of your [vagina] [if the player is very horny]finally [end if]pushes you over the edge. Your [vagina] [one of]clamps down[or]spasms desperately[or]clenches[at random] around the [printed name of O] as it [SquirtDesc], powerful waves of pleasure overwhelming your senses as your [one of]orgasm wracks your body[or]orgasm crashes through your body[or]orgasm crashes over you[at random].";
		otherwise if O is vibe-wand:
			say "You [if F is a live thing]moan into [NameDesc of F][otherwise if the raw sex addiction of the player < 5]grit your teeth, panting[otherwise if the raw sex addiction of the player < 10]purse your lips, moaning[otherwise]can't help but form your lips into a large, circular 'O', cooing[end if] with pleasure as the intense clitoral stimulation from your [printed name of O] [if the player is very horny]finally [end if]pushes you over the edge. [if X is a thing]Your [vagina] [one of]clamps down[or]spasms desperately[or]clenches[at random] around [NameDesc of X] as it[otherwise if the player is upright]Your knees go weak as your muscles tense then relax as your [vagina][otherwise]Your jaw goes slack as your muscles tense then relax as your [vagina][end if] [SquirtDesc], powerful waves of pleasure overwhelming your senses as your [one of]orgasm wracks your body[or]orgasm crashes through your body[or]orgasm crashes over you[at random].";
		otherwise if C is clothing:
			say "As the pleasure builds, it becomes harder and harder to [if the player is prone]keep yourself from face-planting on the floor[otherwise]stand up[end if], the feeling of your fingers stroking your clit through the [clothing-material of C] bringing you ever closer to the edge. You can feel the material rubbing against your labia, stimulating your slit in a way that wouldn't be possible with just your fingers. A piercing moan escapes your lips as you [if the player is very horny]finally[end if] crest your peak, followed by dozens more as [if there is an insertable object penetrating vagina]your [vagina] clamps down around the [printed name of a random insertable object penetrating vagina][otherwise]a powerful orgasm wracks your body[end if] and [if the openness of vagina < 4]soils[otherwise]soaks[end if] your [ShortDesc of C] with girlcum[if the raw sex addiction of the player < 5] and shame[end if].";
		otherwise:
			say "You find yourself moaning as the [if the raw sex addiction of the player < 6]slow building pleasure finally approaches[otherwise if the raw sex addiction of the player < 13]the build-up of pleasure approaches[otherwise]the fast building pleasure races toward[end if] a climax, inner muscles [if X is a thing][one of]clamping down[or]clenching[at random] around [NameDesc of X][otherwise]tensing and relaxing around your fingers[end if] as you go over the edge. [if F is a live thing]Your moans are muffled by [NameDesc of F][otherwise if the humiliation of the player < HUMILIATION-PROUD]You can't even begin to stifle your moans[otherwise]Uncontrolled moans stream out of your mouth[end if] as your body erupts with pleasure, [if the openness of vagina < 4]girlcum dribbling down your leg[otherwise]girlcum spraying out between your fingers[end if] as shivers of pleasure run up and down your spine."[;
	if O is players-detached-dick:
		compute ejaculation].

[!<SayClimaxAnalMasturbationFlavOfObjectWithThingInObject>+

Displays the flavour for the player climaxing from anal masturbation.

@param <Object>:<O> The sex toy the player is using to masturbate, if any.
@param <Thing>:<M> The living thing penetrating a body part, if any.
@param <Object>:<C> The piece of clothing the player is masturbating through, if any.

+!]
To say ClimaxAnalMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	let F be a random live thing penetrating face;
	let X be a random live thing penetrating a fuckhole;
	if C is chastity cage, now C is nothing;
	if the player is somehow possessing a penis:[ejaculation is handled by the orgasm function]
		if O is insertable object:
			say "You [if F is a live thing]moan through [NameDesc of F][otherwise if the anal sex addiction of the player < 5]grit your teeth, grunting[otherwise if the anal sex addiction of the player < 10]purse your lips, moaning[otherwise]can't help but form your lips into a large, circular 'O', cooing[end if] with pleasure as the feeling of hard [if O is golden-phallus]gold[otherwise]plastic[end if] [one of]punching your prostate[or]ramming your sensitive prostate[or]grinding against your prostate[at random] [if the player is very horny]finally [end if]pushes you over the edge. You feel your anal muscles rapidly tensing and relaxing, intensifying the feeling of the [printed name of O] inside you as waves of pleasure ripple through your body.";
		otherwise:
			say "You find yourself moaning as the [if the raw sex addiction of the player < 6]slow building pleasure finally approaches[otherwise if the raw sex addiction of the player < 13]the build-up of pleasure approaches[otherwise]the fast building pleasure races toward[end if] a climax, inner muscles [if X is a thing][one of]clamping down[or]clenching[at random] around [NameDesc of X][otherwise]tensing and relaxing around your fingers[end if] as you go over the edge. [if F is a live thing]Your moans are muffled by [NameDesc of M][otherwise if the humiliation of the player < HUMILIATION-PROUD]You can't even begin to stifle your moans[otherwise]Uncontrolled moans stream out of your mouth[end if] as your prostate tightens up, anal muscles rapidly tensing and relaxing as shivers of pleasure run up and down your spine.";
	otherwise:
		if O is insertable object:
			let V be a random thing penetrating vagina;
			say "You [if F is a live thing]moan through [NameDesc of F][otherwise if the anal sex addiction of the player < 5]grit your teeth, panting[otherwise if the anal sex addiction of the player < 10]purse your lips, moaning[otherwise]can't help but form your lips into a large, circular 'O', cooing[end if] with pleasure as the feeling of hard [if O is golden-phallus]gold[otherwise]plastic[end if] sliding in and out of your [asshole] [if the player is very horny]finally [end if]pushes you over the edge. Your [vagina] [if V is a thing][one of]clamps down[or]spasms desperately[or]clenches[at random] around the [printed name of V][otherwise]clenches around nothing[end if] as it [SquirtDesc], powerful waves of pleasure overwhelming your senses as your [one of]orgasm wracks your body[or]orgasm crashes through your body[or]orgasm crashes over you[at random].";
		otherwise:
			let V be a random thing penetrating vagina;
			say "You find yourself moaning as the [if the anal sex addiction of the player < 6]slow building pleasure finally approaches[otherwise if the anal sex addiction of the player < 13]the build-up of pleasure approaches[otherwise]the fast building pleasure races toward[end if] a climax, anal muscles [if V is a thing][one of]clamping down[or]clenching[at random] around [NameDesc of V][otherwise]tensing and relaxing around your fingers[end if] as you go over the edge. [if F is a live thing]Your moans are muffled by [NameDesc of F][otherwise if the humiliation of the player < HUMILIATION-PROUD]You can't even begin to stifle your moans[otherwise]Uncontrolled moans stream out of your mouth[end if] as your body erupts with pleasure, [if the openness of vagina < 4]girlcum dribbling down your leg[otherwise]girlcum spraying out between your legs[end if] as shivers of pleasure run up and down your spine."[;
	if O is players-detached-dick:
		compute ejaculation].

[!<SayOngoingMasturbationFlavOfObjectWithThingInObject>+

Displays the flavour for an ongoing masturbation session.

@param <Object>:<O> The sex toy the player is using to masturbate, if any.
@param <Thing>:<M> The living thing penetrating a body part, if any.
@param <Object>:<C> The piece of clothing the player is masturbating through, if any.

+!]
To say OngoingMasturbationFlav of (O - an object) with (N - a thing) in (C - an object):
	let M be N;
	if C is chastity cage, now C is nothing;
	if O is royal sceptre and O is blacked:
		say "You hold [NameDesc of O] against your [genitals], your thoughts overwhelmed by nothing except the concept of big, beautiful, bulging black cock.";
	otherwise if wanktype is not VAG-WANK:[TODO: update for herm]
		if O is vibe-wand:
			say "[one of]You shudder with pleasure as your [printed name of O] vibrates against your [player-penis], [if M is a live thing]focusing all your thoughts on [NameDesc of M][otherwise]fantasising about [PlayerFantasy][end if].[or]You half register the sticky wetness of your precum as you use your [printed name of O] to smear it up and down your shaft, [if M is a live thing]totally absorbed in pleasuring [NameDesc of M] even more[otherwise]too enthralled by the thought of [PlayerFantasy][end if].[or]The [printed name of O] provides a unique sensation as you [if the size of penis < 3]tenderly[otherwise if the humiliation of the player < HUMILIATION-MODEST + 4000]abashedly[otherwise]eagerly[end if] rub it against your [player-penis], [if M is a live thing]allowing [NameDesc of M] to use you[otherwise]fantasising about [PlayerFantasy][end if].[or]You continue to stimulate your [player-penis] with your [printed name of O], [if the bimbo of the player < 8]trying to ignore[otherwise]relishing in[end if] its unmistakable sex toy hum as you [if M is a live thing]close your eyes and focus on how [NameDesc of M] feels[otherwise]fantasise about [PlayerFantasy][end if].[or]You lose yourself to pleasure, [if the bimbo of the player < 4]grunting[otherwise if the bimbo of the player < 8]groaning[otherwise if the bimbo of the player < 12]moaning[otherwise if the bimbo of the player < 15]cooing[otherwise]shamelessly moaning[end if] as you vigorously rub the [printed name of O] against your [player-penis].[or]You use your [printed name of O] to pin your [player-penis] against your body, precum rolling off your shaft as you [if M is a live thing]use your body to pleasure both yourself and [NameDesc of M][otherwise]fantasise about [PlayerFantasy][end if].[at random]";
		otherwise if C is clothing:
			say "[one of]You shudder with a mixture of [if the bimbo of the player < 8]shame[otherwise]frustration[end if] and pleasure as you massage the tip of your [player-penis] with your [ShortDesc of C], [if M is a live thing]your focus on [NameDesc of M][otherwise]fantasising about [PlayerFantasy][end if].[or]You half register the sticky wetness of your precum soaking into your [ShortDesc of C] as you stroke your [player-penis] through the fabric, too enthralled by [if M is a live thing][NameDesc of M][otherwise]the thought of [PlayerFantasy][end if].[or]The [ShortDesc of C] provides a unique sensation as you [if the size of penis < 3]tenderly[otherwise if the humiliation of the player < HUMILIATION-MODEST + 4000]abashedly[otherwise]eagerly[end if] rub it against your [player-penis], [if M is a live thing]as you feel [NameDesc of M] use you[otherwise]fantasising about [PlayerFantasy][end if].[or]You continue to clamp and squeeze your [player-penis] through your [ShortDesc of C], [if the bimbo of the player < 8]trying to ignore[otherwise]relishing in[end if] its tightness against your skin as you [if M is a live thing]close your eyes and focus on the feel of [NameDesc of M][otherwise]fantasise about [PlayerFantasy][end if].[or][CummingInPantiesFantasy of C][or]You lose yourself to pleasure, [if the bimbo of the player < 4]grunting[otherwise if the bimbo of the player < 8]groaning[otherwise if the bimbo of the player < 12]moaning[otherwise if the bimbo of the player < 15]cooing[otherwise]shamelessly moaning[end if] as you vigorously rub the bunched up [clothing-material of C] of your [ShortDesc of C] against your [player-penis].[or][CooingMasturbation of C][or][DirtyThoughtsMasturbation of C][or]Your [player-penis] strains against your [ShortDesc of C], leaking precum into the [clothing-material of C] as you [if M is a live thing]use your body to pleasure both yourself and [NameDesc of M][otherwise]fantasise about [PlayerFantasy][end if].[at random]";
		otherwise:
			say "[one of]You shudder with pleasure, continuing to work your [player-penis] as you [if M is a live thing]use your body to pleasure both yourself and [NameDesc of M][otherwise]fantasise about [PlayerFantasy][end if].[or]You eagerly stroke your [player-penis], [if the bimbo of the player < 4]grunting[otherwise if the bimbo of the player < 8]groaning[otherwise if the bimbo of the player < 12]moaning[otherwise if the bimbo of the player < 15]cooing[otherwise]shamelessly moaning[end if] as your mind runs wild with increasingly [if M is a live thing]submissive[otherwise]dirty[end if] thoughts.[or]You hold your [player-penis] [if the size of penis < 2]as tightly as you can with only two fingers, eagerly stroking yourself to[otherwise]tightly as you stroke yourself to[end if] the [if M is a live thing]rhythm of [NameDesc of M][']s thrusts[otherwise]thought of [PlayerFantasy][end if].[or]Your [player-penis] drools precum freely onto the floor, [if the size of penis > 4]bobbing[otherwise]jiggling[end if] as you passionately [if the size of penis < 4]tug[otherwise]stroke[end if] it[unless M is a live thing] to fantasies of [PlayerFantasy][otherwise]to the feeling of [NameDesc of M][end if].[or]Your surroundings fall away as the sensations begin to overwhelm you, clouding your thoughts and colouring your voice as you [if the size of penis < 4]tug[otherwise]stroke[end if] away.[or]You find it increasingly hard to control the sound of your voice as you [if the size of penis < 4]tug[otherwise]stroke[end if] away, heart racing and thoughts slowly trickling away as orgasm closes in.[or]Your precum leaks into your hand, lubricating your [player-penis], and adding a strangely satisfying [']shlick['] to every movement of your hands. [if the humiliation of the player > HUMILIATION-PROUD + 2000]It's not loud enough for someone outside the room to hear it, but you [second custom style]wish it was[roman type].[otherwise if M is a live thing]It isn't loud, but you know [NameDesc of M] knows what it is[end if][or]You murmur as you [if M is a live thing]focus on [NameDesc of M][otherwise]fantasise about [PlayerFantasy][end if], breathing faster and faster as the pleasure begins to build up in your [player-penis].[or]You tremble with pleasure, your hand moving at a pace all its own as it relentlessly pumps your [player-penis] closer and closer to orgasm.[at random]";
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
			say "[one of]You shudder with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure, continuing to fuck yourself with your [printed name of O].[or]You continue to fuck yourself with your [printed name of O], mimicking the motion and feel of a real [manly-penis] as you fantasise about [PlayerFantasy].[or]You fantasise about [PlayerFantasy]. You slump against a [if playerRegion is Woods]tree[otherwise]wall[end if] as you shove the [printed name of O] in and out of your [vagina] as fast and hard as your arms will let you.[or]You fuck your [vagina] with slow, deep thrusts, making sure it touches your sensitive spots in just the right ways. It becomes hard to keep quiet as the pleasure slowly builds.[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and invigorates you.[otherwise]Imagining it arouses you beyond belief, and you slow down just a bit, hoping something will happen.[end if][or]You rub your [BreastDesc] and vigorously fuck yourself with your [printed name of O], fantasising about [PlayerFantasy].[or]You slowly work the [printed name of O] in and out of your [vagina], [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] as it rubs along your sensitive inner walls and oh-so-slightly jostles your clit.[or]You continue to fuck yourself with your [printed name of O], fantasising about [PlayerFantasy].[or]You give yourself over to passion, moaning with pleasure as you fuck yourself with your [printed name of O], letting[if the raw sex addiction of the player < 8] shameful[end if] fantasies take over your mind and guide the motion of your hands.[or]You pleasure yourself with your [printed name of O], [if the raw sex addiction of the player < 6]wishing it didn't feel so good[otherwise if the raw sex addiction of the player < 13]wishing it were bigger[otherwise]moaning as loudly as you can in hopes of attracting a big, fat replacement[end if][at random]";
			if O is players-detached-dick:
				let oro be a random orifice penetrated by the players-detached-dick;
				literally self pleasure by the player in oro;
		otherwise if O is vibe-wand:
			let A be a random number between 1 and 2;
			if A is 1:
				say "[one of]You fantasise about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you massage your clit with your [printed name of O].[or]You moan [if the raw sex addiction of the player < 8]quietly[otherwise]loudly[end if] as you tease yourself with the [printed name of O], mind racing with thoughts of [PlayerFantasy].[or]The unique sensation of the [printed name of O] buzzing against your delicate inner lips drives you to new heights of pleasure, intensifying even the lightest touch of your clit.[or]You continue to hold the [printed name of O] against your clit, shivering with pleasure as you fantasise about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, hoping something will happen.[end if][at random]";
			otherwise:
				say "[one of]You fantasise about [PlayerFantasy]. A persistent humming noise can be heard as you hold your [printed name of O] against your [if the semen volume of vagina > 0]cum-sodden[otherwise if the raw sex addiction of the player < 10]shamefully wet[otherwise]desperately wet[end if] [vagina].[or]You continue to stimulate your [vagina] with your [printed name of O], [if the raw sex addiction of the player < 6]tittering[otherwise]hissing[end if] with pleasure as you fantasise about [PlayerFantasy].[or]You fantasise about [PlayerFantasy]. It becomes hard to stay on your feet as the [printed name of O] buzzes against your clit, your legs shaking in an effort to deal with the mounting pleasure.[or]You guide the [printed name of O] in small circles around your clit, [if the bimbo of the player < 12]quietly moaning[otherwise if the bimbo of the player < 15]passionately moaning[otherwise]shamelessly moaning[end if] as you grope your [BreastDesc] to the thought of [PlayerFantasy].[at random]";
		otherwise if C is clothing:[Only did variations for semen-soak, urine soak would have made things incredibly messy. Also it was too big so I had to cut it in half.]
			let A be a random number between 1 and 2;
			if A is 1:
				say "[one of]You fantasise about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you massage your clit through your [ShortDesc of C].[or]Your fingers caress your [vagina] through your [ShortDesc of C], rubbing harder and harder as your mind races with thoughts of [PlayerFantasy].[or]The unique sensation of the [clothing-material of C] rubbing against your delicate inner lips drives you to new heights of pleasure, amplifying even the lightest brush of your fingers against your clit.[or]You continue to rub your clit through your [ShortDesc of C], shivering with pleasure as you fantasise about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already far too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, hoping something fun might happen.[end if][at random]";
			otherwise:
				say "[one of][if the semen-soak of C > 1 and pregnancy fetish is 1]You stroke yourself through the [ShortDesc of C], strangely invigorated by the thought that the [semen] absorbed into the [clothing-material of C] could have ended up inside your [vagina].[otherwise if the semen-soak of C < 1]You stroke yourself through the soft [clothing-material of C], trying not to think of possible consequences of keeping it on instead of taking it off.[otherwise]You stroke yourself through [ShortDesc of C], acutely aware of the feeling of [semen] rubbing up against your [vagina].[end if][or]You continue to touch and rub your [vagina] through your [ShortDesc of C], [if the raw sex addiction of the player < 6]tittering[otherwise]hissing[end if] with pleasure as you fantasise about [PlayerFantasy].[or]You fantasise about [PlayerFantasy]. It becomes hard to stay on your feet as you stroke yourself through your [ShortDesc of C], your legs shaking in an effort to deal with the mounting pleasure.[or]You rub your clit through your [ShortDesc of C], [if the bimbo of the player < 12]quietly moaning[otherwise if the bimbo of the player < 15]passionately moaning[otherwise]shamelessly moaning[end if] as you grope your [BreastDesc] to the thought of [PlayerFantasy].[or]Your [ShortDesc of C] feels soft[if the semen-soak of C > 0] and damp[end if] against your fingers, acting as a barrier between you and your [vagina] that prevents you from fully enjoying your own touch.[at random]";
		otherwise:
			let A be a random number between 1 and 2;
			if A is 1:
				say "[one of]You fantasise about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you work your fingers in and out of your [vagina].[or]You continue to passionately shlick yourself, allowing your mind to run wild with thoughts of [PlayerFantasy].[or]You dip your fingers in and out of your [vagina], [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] with pleasure as you fantasise about [PlayerFantasy].[or]You tenderly run your thumb over your clit, fantasising about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, hoping something fun will happen.[end if][at random]";
			otherwise:
				let P be a random worn actually nipple covering clothing;
				say "[one of]You fantasise about [PlayerFantasy]. Quiet shlicking noises can be heard as you work your fingers in and out of your [if the semen volume of vagina > 0]cum-sodden[otherwise if the raw sex addiction of the player < 10]shamefully wet[otherwise]desperately wet[end if] [vagina].[or]You rapidly rub your clit, allowing your fingers to slip into your [vagina] as your mind turns to thoughts of [PlayerFantasy].[or]You eagerly diddle your clit and [if P is clothing]rub your [BreastDesc] through your [printed name of P][otherwise]tweak your nipples[end if], allowing your back to rest up against a nearby [if playerRegion is Woods]tree[otherwise]wall[end if] as you fantasise about [PlayerFantasy].[or]You fuck yourself with your own fingers, [if the bimbo of the player < 5]shuddering[otherwise if the bimbo of the player < 12]trembling[otherwise]rolling your eyes back[end if][if the semen volume of vagina < 1] at how inexorably pleasurable Nintendolls managed to make it feel[otherwise if the semen volume of vagina < 4] at the feeling of the slimy [semen] trapped in your [vagina][otherwise] as thick, creamy [semen] coats your fingers and rolls down your arm.[end if][or]You continue your passionate shlicking session, [if the bimbo of the player < 7]trying and failing to stifle your shameful moans[otherwise if the bimbo of the player < 13]half-heartedly trying to stifle your passionate moans[otherwise]allowing shameless, wanton moans to stream out of your mouth[end if] as you fantasise about [PlayerFantasy].[at random]".

To say CummingInPantiesFantasy of (C - a clothing):
	if C is chastity cage, now C is nothing;
	say "You tremble with pleasure as you grope yourself through your [ShortDesc of C], which somehow intensifies the sensation of your own touch. Impending orgasm looms in your thoughts, which are increasingly muddied with ideas of how [if the semen addiction of the player < 5]disgusting[otherwise if the semen addiction of the player < 10]strange[otherwise if the semen addiction of the player < 15]exciting[otherwise]fucking hot[end if] it will feel to walk around with a [if the semen addiction of the player < 8]clammy[otherwise]warm[end if] load of [semen] against your [player-penis].".

To say CooingMasturbation of (C - a clothing):
	if C is chastity cage, now C is nothing;
	say "You continue passionately stroking your [player-penis] through your [ShortDesc of C], knowing from the dark spot near the waist band that the slightest glance from anyone around you would tell them how much you're enjoying yourself.".

To say DirtyThoughtsMasturbation of (C - a clothing):
	if C is chastity cage, now C is nothing;
	say "[unless the player is monster fucked]You fantasise about [PlayerFantasy]. Your surroundings fall away as you focus in on your dirty [otherwise]Your surroundings fall away as you lose yourself in increasingly submissive [end if]thoughts, feeling an increasing frustration at the way the [ShortDesc of C] is preventing you from touching your [player-penis] in the way you want.".

[!<SayOngoingAnalMasturbationFlavOfObjectWithThingInObject>+

Displays the flavour for an ongoing anal masturbation session.

@param <Object>:<O> The sex toy the player is using to masturbate, if any.
@param <Thing>:<M> The living thing penetrating a body part, if any.
@param <Object>:<C> The piece of clothing the player is masturbating through, if any.

+!]
To say OngoingAnalMasturbationFlav of (O - an object) with (M - a thing) in (C - an object):
	if O is insertable object:
		say "[one of]You shudder with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure, continuing to fuck yourself with your [printed name of O].[or]You continue to fuck yourself with your [printed name of O], mimicking the motion and feel of a real [manly-penis] [if the player is sexed male]sliding past your prostate[end if] as you fantasise about [PlayerFantasy].[or]You fantasise about [PlayerFantasy]. You slump your head against a [if playerRegion is Woods]tree[otherwise]wall[end if] as you shove the [printed name of O] in and out of your [asshole] as fast and hard as your arms will let you.[or]You fuck your [asshole] with slow, deep thrusts, making sure it [if the player is sexed male]relentlessly grinds your prostate[otherwise]touches your sensitive spots in just the right ways[end if]. It becomes hard to keep quiet as the pleasure slowly builds.[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and invigorates you.[otherwise]Imagining it arouses you beyond belief, and you slow down just a bit, hoping something happens.[end if][or]You rub your [BreastDesc] and vigorously fuck yourself with your [printed name of O], fantasising about [PlayerFantasy].[or]You slowly work the [printed name of O] in and out of your [asshole], [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] as it rubs [if the player is sexed male]against your sensitive prostate[otherwise]your sensitive inner walls[end if].[or]You continue to fuck yourself with your [printed name of O], fantasising about [PlayerFantasy].[or]You give yourself over to passion, moaning with pleasure as you fuck yourself with your [printed name of O], letting[if the raw sex addiction of the player < 8] shameful[end if] fantasies take over your mind and guide the motion of your hands.[or]You pleasure yourself with your [printed name of O], [if the raw sex addiction of the player < 6]wishing it didn't feel so good[otherwise if the raw sex addiction of the player < 13]wishing it were bigger[otherwise]moaning as loudly as you can in hopes of attracting a big, fat replacement[end if].[at random]";
		if O is players-detached-dick:
			literally self pleasure by the player in asshole;
	otherwise:
		let A be a random number between 1 and 2;
		if A is 1:
			say "[one of]You fantasise about [PlayerFantasy], shuddering with [if the raw sex addiction of the player < 8]a mixture of shame and [end if]pleasure as you work your fingers in and out of your [asshole].[or]You continue to passionately fingerfuck your [asshole], allowing your mind to run wild with thoughts of [PlayerFantasy].[or]You dip your fingers in and out of your [asshole], [if the raw sex addiction of the player < 5]quietly sighing[otherwise if the raw sex addiction of the player < 10]sighing[otherwise if the raw sex addiction of the player < 15]moaning[otherwise]passionately moaning[end if] with pleasure as you fantasise about [PlayerFantasy].[or][if the player is sexed male]You let your fingertips gingerly tease your prostate[otherwise]You tease your outer ring with the tips of your fingers[end if], fantasising about [PlayerFantasy].[or][if the number of awake monsters in the location of the player < 1]You glance from side to side, knowing what might happen if somebody catches you in this compromising position, but already much too turned on to consider stopping.[otherwise]You glance at the [printed name of a random awake monster in the location of the player], already too turned on to consider stopping, but well aware of what might happen if they wanted to take advantage of your incredibly compromising position.[end if][if the raw sex addiction of the player < 5]Imagining it scares and intimidates you.[otherwise if the raw sex addiction of the player < 10]Imagining it confuses and intimidates you.[otherwise if the raw sex addiction of the player < 15]Imagining it arouses and encourages you.[otherwise]Imagining it arouses you beyond belief, and you slow down a bit, in the hope of something 'extra fun' happening.[end if][at random]";
		otherwise:
			let P be a random worn actually nipple covering clothing;
			say "[one of]You fantasise about [PlayerFantasy]. You feel your fingers [if the urine volume of belly > 0]moving through the lukewarm urine trapped inside[otherwise if the total egg fill of belly > 0]bumping the eggs incubating in[otherwise if the semen volume of belly > the milk volume of belly + 3]moving through the thick creampie deep inside [otherwise if the milk volume of belly + the semen volume of belly > 0]moving through the creamy filling planted in [otherwise]as they stroke the inside of [end if] your [asshole] as your mind races.[or]You [if the player is sexed male]eagerly stroke your prostate[otherwise]eagerly fuck your [asshole][end if], moaning [if the humiliation of the player < HUMILIATION-MODEST]quietly[otherwise]loudly[end if] as your mind turns to thoughts of [PlayerFantasy].[or]You slowly move your fingers in and out of your [asshole], [if P is clothing]rubbing your [BreastDesc] through your [printed name of P][otherwise]tweaking your nipples[end if] as you fantasise about [PlayerFantasy].[or]You fuck yourself with your own fingers, [if the bimbo of the player < 5]shuddering[otherwise if the bimbo of the player < 12]trembling[otherwise]rolling your eyes back[end if][if the semen volume of vagina < 1] at how inexorably pleasurable Nintendolls managed to make it feel[otherwise if the semen volume of belly < 4] at the feeling of the slimy [semen] trapped in your [vagina][otherwise] as thick, creamy [semen] coats your fingers and rolls down your arm.[end if][or]You continue your passionate fingering session, [if the bimbo of the player < 7]trying and failing to stifle your shameful moans[otherwise if the bimbo of the player < 13]half-heartedly trying to stifle your passionate moans[otherwise]allowing shameless, wanton moans to stream out of your mouth[end if] as you fantasise about [PlayerFantasy].[at random]".

Understand "wank", "play with me", "play with self", "play with privates", "masturbate", "play with breasts", "play with breast", "play with boobs", "play with tits", "massage breasts", "massage boobs", "massage breast", "massage tits", "massage", "massage self", "massage me", "wank self", "wank me", "fap" as masturbating.

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
