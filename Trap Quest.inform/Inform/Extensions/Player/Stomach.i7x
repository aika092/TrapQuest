Stomach by Player begins here.


[!<DecideWhichNumberIsTheStomachLiquidOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the stomach-liquid of the player:
	decide on the stomach-water of the player + the stomach-semen of the player.

[!<DecideWhichNumberIsTheStomachOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the stomach of the player:
	decide on the stomach-liquid of the player + the stomach-food of the player.

[!<DecideWhichNumberIsStomachMax>+

REQUIRES COMMENTING

+!]
To decide which number is stomach-max:
	decide on 14.

[!<YourselfIsOverlyFull>+

REQUIRES COMMENTING

+!]
Definition: yourself is overly full:
	if the stomach of the player > stomach-max, decide yes;
	decide no.

[!<YourselfIsAlmostTooFull>+

REQUIRES COMMENTING

+!]
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

This is the satiated causes bonus strength rule:
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
The satiated causes bonus strength rule is listed in the advance counters rules.

[!<StomachUpX>+

REQUIRES COMMENTING

+!]
To StomachUp (X - a number):
	if the latex-transformation of the player > 4, now X is 0;
	while X > 0:
		increase the stomach-water of the player by 1;
		decrease X by 1.

[!<StomachDownX>+

REQUIRES COMMENTING

+!]
To StomachDown (X - a number):
	let S be 0;
	while X > 0:
		if the stomach-water of the player > the stomach-semen of the player:
			decrease the stomach-water of the player by 1;
			if watersports mechanics is 1, increase the delayed bladder of the player by 1;
		otherwise:
			increase S by 1;
		decrease X by 1;
	if S > 0, StomachSemenDown S. [We do this all at once to avoid repeated messages about semen addiction increases.]

[!<StomachFoodUpX>+

REQUIRES COMMENTING

+!]
To StomachFoodUp (X - a number):
	if the latex-transformation of the player > 4, now X is 0;
	while X > 0:
		increase the stomach-food of the player by 1 + xavier-belt-link;
		if xavier-throat-link is 1 and rectum > 0 and diaper messing >= 3, increase rectum by 1 + xavier-belt-link;
		decrease X by 1.

[!<StomachFoodDownX>+

REQUIRES COMMENTING

+!]
To StomachFoodDown (X - a number):
	while X > 0:
		if the stomach-food of the player > 0:
			decrease the stomach-food of the player by 1;
			if there is a worn bib and the stomach-food of the player is 0, say "[bold type]As you become hungry, you feel your bib lose its power and your muscles weaken.[roman type][line break]";
		decrease X by 1.

Definition: a thing is facefucker: decide no. [Can it make the player gag]
Definition: gloryhole is facefucker: decide yes.
Definition: a monster is facefucker if it is male or it is neuter.

[!<StomachSemenUpX>+

REQUIRES COMMENTING

+!]
To StomachSemenUp (X - a number):
	let M be a random wrapped monster penetrating face;
	if M is monster:
		compute condom filling of M;
	otherwise:
		if there is a worn lipstick collar, increase X by 1;
		if the latex-transformation of the player > 4:
			AssFill X;
			now X is 0;
		if the semen taste addiction of the player > 14, passively stimulate face from semen;
		if X > 0:
			say SemenEncounterFlav;
			now cold turkey is 0;
			if the stomach-food of the player < 2, now the stomach-food of the player is 2; [Improves hunger]
		while X > 0:
			increase the stomach-semen of the player by 1;
			decrease X by 1;
		if there is a facefucker thing penetrating face:
			OralSexAddictUp 1;
			if the latex-transformation of the player < 5, PukeUp;
	if there is a worn tethering lipstick collar, end tethering.



[!<PersonIsBecomingMoreAddictedToCum>+

It's as your stomach empties of semen that you're more likely to begin to crave it more. This is to ensure that a huge load of cum doesn't increase semen taste addiction by stupidly large amounts.

+!]
Definition: yourself is becoming more addicted to cum if a random number between 1 and the stomach-semen of the player <= 2 and the trophy-mode of ejaculate-trophy is 0.

[!<StomachSemenDownX>+

REQUIRES COMMENTING

+!]
To StomachSemenDown (X - a number):
	if the stomach-semen of the player > 0:
		while X > 0:
			if the stomach-semen of the player is 0 or (X is 1 and the player is becoming more addicted to cum):
				say SemenConsumptionFlav;
				SemenTasteAddictUp 1;
				now X is 1;
			if the stomach-semen of the player > 0:
				decrease the stomach-semen of the player by 1;
				if watersports mechanics is 1, increase the delayed bladder of the player by 1;
			decrease X by 1;
		if the player is craving semen:
			if the player is desperately craving semen, say "[bold type]Your stomach is completely empty of [semen]! You can't stand it, you are desperate for your next fix! Your reflexes are significantly dulled until the next time you satisfy your addiction.[roman type][line break]";
			otherwise say "[bold type]You find yourself eager to try tasting some more [semen]. Your reflexes are slightly dulled until the next time you get a fix.[roman type][line break]".

To say SemenConsumptionFlav:
	say "You feel your stomach absorb some [semen] inside it and [one of][or]once again [stopping]it somehow goes straight to your head, making you feel [if the semen taste addiction of the player < 6]uneasy[otherwise if the semen taste addiction of the player < 11]giddy[otherwise if the semen taste addiction of the player < 13]good[otherwise if the semen taste addiction of the player < 15]great[otherwise]amazing[end if].".

[!<YourselfIsGagProne>+

Is there a change the player will puke up stomach contents?

+!]
Definition: yourself is gag-prone:
	if the stomach-liquid of the player > 0 or the semen volume of belly > 5, decide yes;
	decide no.

[!<gagReflexRules:Rulebook>*

If any rules succeed, then the player is good at fighting against their gag reflex.

*!]
The gag reflex rules is a rulebook.

[!<YourselfIsADeepthroater>+

Let's check if the player is good at fighting against their gag reflex.

+!]
Definition: yourself is a deepthroater:
	follow the gag reflex rules;
	if the rule succeeded, decide yes;
	decide no.

[!<PukeUp>+

Let's see whether the player pukes up anything from their gag reflex being triggered.

+!]
To PukeUp:
	let M be a random thing penetrating face;
	if the player is a deepthroater or the player is not gag-prone:
		if debugmode > 1, say "[if the player is gag-prone]The player is a deepthroater[otherwise]The player is not gag prone[end if].";
		say "[BigFuckerDesc of M] almost makes you gag but you are able to [if the throatskill of the player is 1]use your [one of]new [or][or]experienced [or]expert [or]perfected [or]world renowned [stopping]deepthroating skills[otherwise]put mind over matter and control your gag reflex[end if] to accommodate [his of M] length without throwing up.";
		let T be a random tongue piercing;
		let P be a random pink pacifier;
		let C be a random worn cursed clothing;
		let R be a random worn royalty themed overdress;
		let D be a random off-stage deepthroat princess crop top;
		if R is overdress and D is overdress:
			transform R into D;
		otherwise if T is actually summonable and a random number between 5 and the oral sex addiction of the player > 7:
			say "[bold type]A cold metal piercing suddenly appears in your mouth, embedded into your tongue! You've never had something like that in your mouth before, so it's difficult to stop thinking about the [if the bimbo of the player < 10]unwelcome [end if]intrusion. Even worse, you can feel its cursed magic somehow preventing you from speaking properly![roman type][line break]";
			summon T cursed;
		otherwise if there is a worn baby bonnet and P is actually summonable:
			say "[bold type]Your baby's bonnet flutters wildly and a large pink pacifier appears in your mouth! You can't remove it! [roman type]But it does make you feel stronger...";
			summon P cursed with quest;
		if nun blowjob tattoo is worn and C is clothing:
			say "You feel your [nun blowjob tattoo] sending holy magic to your [ShortDesc of C], uncursing it!";
			bless C;
	otherwise:
		say "[BigFuckerDesc of M] being down your throat makes you gag, and as it pulls out you puke up the [if the stomach-semen of the player > 0][semen][otherwise]liquid[end if] from your belly.";
		PukeUp a random number between 1 and (the stomach-semen of the player + the semen volume of belly);
	progress quest of cum-swallowing-quest.

[!<PukeUpX>+

REQUIRES COMMENTING

+!]
To PukeUp (X - a number):
	if there is an awake intelligent monster in the location of the player, humiliate (X * 75);
	let S be 0; [track how much semen is expelled]
	while X > 0:
		if the stomach-semen of the player > 0:
			decrease the stomach-semen of the player by 1;
			increase S by 1;
		otherwise if the semen volume of belly > 0:
			decrease the semen volume of belly by 1;
			increase S by 1;
		otherwise if the stomach-water of the player > 0:
			decrease the stomach-water of the player by 1;
		decrease X by 1;
	if S > 0:
		say "A [if S < 3]small amount of[otherwise if S < 6]decently voluminous quantity of[otherwise]veritable cascade of[end if] [semen] flows out of your mouth and onto ";
		if the player is upright or the player is in Predicament01:
			say "[if there is a worn overdress]your [printed name of random worn overdress][otherwise if there is a worn bra]your [printed name of random worn bra][otherwise]your [BreastDesc][end if].";
			if the bimbo of the player < 8 and the largeness of breasts > 6, say "[first custom style]These tits get in the way of everything![roman type][line break]";
			CumTitsUp S;
		otherwise:
			say "the ground.";
			SemenPuddleUp S;
	otherwise:
		say "The liquid from your stomach flows out of your mouth and onto the ground.".

Stomach ends here.

