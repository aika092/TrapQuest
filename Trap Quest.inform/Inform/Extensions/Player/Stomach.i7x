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
	if the stomach of the player is stomach-max, decide yes;
	decide no.

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
	while X > 0:
		if the stomach-water of the player > the stomach-semen of the player:
			decrease the stomach-water of the player by 1;
			if watersports mechanics is 1, increase the delayed bladder of the player by 1;
		otherwise:
			StomachSemenDown 1;
		decrease X by 1.

[!<StomachFoodUpX>+

REQUIRES COMMENTING

+!]
To StomachFoodUp (X - a number):
	if the latex-transformation of the player > 4, now X is 0;
	while X > 0:
		increase the stomach-food of the player by 1 + (xavier-belt-link * 2);
		if xavier-throat-link is 1 and rectum > 0 and diaper lover >= 3, increase rectum by 1 + (xavier-belt-link * 2);
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

[!<StomachSemenUpX>+

REQUIRES COMMENTING

+!]
To StomachSemenUp (X - a number):
	if there is a worn lipstick collar, increase X by 1;
	if the latex-transformation of the player > 4:
		AssFill X;
		now X is 0;
	if the semen taste addiction of the player > 14, arouse 500;
	if X > 0:
		say "[SemenEncounterFlav]";
	while X > 0:
		increase the stomach-semen of the player by 1;
		decrease X by 1;
	if there is a male monster penetrating face or there is a neuter monster penetrating face and the latex-transformation of the player < 5, PukeUp;
	if there is a worn tethering lipstick collar, end tethering.

[!<StomachSemenDownX>+

REQUIRES COMMENTING

+!]
To StomachSemenDown (X - a number):
	let S be the stomach-semen of the player;
	if the player is becoming more addicted to cum and S > 0:
		say "[SemenConsumptionFlav]";
		SemenTasteAddictUp 1;
	while X > 0:
		if the stomach-semen of the player > 0:
			decrease the stomach-semen of the player by 1;
			if watersports mechanics is 1, increase the delayed bladder of the player by 1;
		decrease X by 1;
	if the player is craving and S > 0:
		if the player is desperately craving, say "[bold type]Your stomach is completely empty of [semen]!  You can't stand it, you are desperate for your next fix!  Your reflexes are significantly dulled until the next time you satisfy your addiction.[roman type][line break]";
		otherwise say "[bold type]You find yourself eager to try tasting some more [semen]. Your reflexes are slightly dulled until the next time you get a fix.[roman type][line break]".


[!<YourselfIsGagProne>+

Is there a change the player will puke up stomach contents?

+!]
Definition: yourself is gag-prone:
	if the stomach-semen of the player > 0 or the semen volume of belly > 5 and the stomach-water of the player > 1, decide yes;
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
		say "The [M] almost makes you gag but you are able to [if the throatskill of the player is 1]use your [one of]new [or][or]experienced [or]expert [or]perfected [or]world renowned [stopping]deepthroating skills[otherwise]put mind over matter and control your gag reflex[end if] to accommodate [his of M] length without throwing up.";
		let T be a random tongue piercing;
		let P be a random pink pacifier;
		if T is actually summonable and a random number between 15 and the semen taste addiction of the player >= 15:
			say "[bold type]A cold metal piercing suddenly appears in your mouth, embedded into your tongue!  You've never had something like that in your mouth before, so it's difficult to stop thinking about the [if the bimbo of the player < 10]unwelcome [end if]intrusion. Even worse, you can feel its cursed magic somehow preventing you from speaking properly![roman type][line break]";
			summon T cursed;
		otherwise if there is a worn baby bonnet and P is actually summonable:
			say "[bold type]Your baby's bonnet flutters wildly and a large pink pacifier appears in your mouth!  You can't remove it![roman type]  But it does make you feel stronger...";
			summon P cursed;
	otherwise:
		say "The [M] being down your throat makes you gag, and as it pulls out you puke up the [semen] from your belly.";
		PukeUp a random number between 1 and (the stomach-semen of the player + the semen volume of belly).

[!<PukeUpX>+

REQUIRES COMMENTING

+!]
To PukeUp (X - a number):
	humiliate (X * 75);
	let S be 0; [track how much semen is expelled]
	while X > 0:
		if the stomach-semen of the player > 0: [Validation - but really it should always be]
			decrease the stomach-semen of the player by 1;
			increase S by 1;
		otherwise if the semen volume of belly > 0:
			decrease the semen volume of belly by 1;
			increase S by 1;
		decrease X by 1;
	if S > 0:
		say "The [if S < 3]small amount of[otherwise if S < 6]decently voluminous quantity of[otherwise]never ending torrent of[end if] [semen] flows out of your mouth and onto ";
		if the largeness of breasts > 6: [If the player's breasts are too large then they will "catch" the puked up semen]
			say "[if there is a worn overdress]your [printed name of random worn overdress][otherwise if there is a worn bra]your [printed name of random worn bra][otherwise]your [BreastDesc][end if].";
			if the bimbo of the player < 8, say "[first custom style]These tits get in the way of everything![roman type][line break]";
			CumTitsUp S;
		otherwise:
			say "the ground.";
			SemenPuddleUp S.

Stomach ends here.

