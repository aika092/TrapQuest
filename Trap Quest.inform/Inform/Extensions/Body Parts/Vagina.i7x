Vagina by Body Parts begins here.

Part 1 - Definitions

[!<Vagina>@

REQUIRES COMMENTING

@inherits <Fuckhole>

@!]
vagina is a fuckhole.  vagina is everywhere.  The description of vagina is "[if the player is female][TotalDesc of vagina][VaginaModesty][otherwise if the bimbo of the player > 6][description of asshole][otherwise]You don't have a vagina.[end if]".  Understand "pussy", "fuckhole", "cunt", "fanny", "snatch", "muffin", "cum dump" as vagina. Understand "womb", "vulva", "cherry", "kitty", "slit", "clunge", "honey pot", "baby maker" as vagina when the player is female.

[!<Vagina>@<semenVolume:Integer>*

REQUIRES COMMENTING

*@!]
Vagina has a number called semen volume.  The semen volume of vagina is usually 0.

[!<VaginaIsExposed>+

REQUIRES COMMENTING

+!]
Definition: vagina is exposed:
	if the player is male, decide no;
	if there is a worn potentially at least partially vagina covering clothing, decide no;
	decide yes.

[!<VaginaIsExposed>+

REQUIRES COMMENTING

+!]
Definition: vagina is at least partially exposed:
	if the player is male, decide no;
	if there is a worn potentially vagina covering clothing, decide no;
	decide yes.

[!<ClothingIsPotentiallyVaginaCovering>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is potentially vagina covering:
	if C is actually dense potentially pussy covering clothing, decide yes;[if it protects your pussy, it must be covering it.]
	if C is actually dense skirt-covering-crotch clothing, decide yes;
	decide no.

[!<ClothingIsPotentiallyAtLeastPartiallyVaginaCovering>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is potentially at least partially vagina covering:
	if C is potentially pussy covering and C is not see-through, decide yes;[if it protects your pussy, it must be covering it.]
	if C is skirt-covering-crotch and C is not see-through, decide yes;
	decide no.

[!<vaginaPresentableRules:Rulebook>*

REQUIRES COMMENTING

*!]
the vagina presentable rules is a rulebook.
the presentable rules of vagina is usually the vagina presentable rules.

[!<TheVaginaProtectedRule>+

REQUIRES COMMENTING

+!]
This is the vagina protected rule:
	if the player is pussy protected:
		if auto is 0, say "You need to get your [vagina] on display first.";
		rule fails.
The vagina protected rule is listed in the vagina presentable rules.

[!<TheVaginaOccupiedRule>+

REQUIRES COMMENTING

+!]
This is the vagina occupied rule:
	if vagina is actually occupied:
		if auto is 0, say "Your vagina is a bit full already, don't you think?";
		rule fails.
The vagina occupied rule is listed in the vagina presentable rules.

[!<TheVaginaDoesNotExistRule>+

REQUIRES COMMENTING

+!]
This is the vagina doesn't exist rule:
	if the player is male:
		if auto is 0, say "You don't have a vagina.";
		rule fails.
The vagina doesn't exist rule is listed in the vagina presentable rules.

[!<TheVirginityIsImportantRule>+

REQUIRES COMMENTING

+!]
This is the virginity is important rule:
	if the virgin bonus of the player > 0 and there is a virginity taking monster in the location of the player:
		if auto is 0, say "[variable custom style]No way.  My virginity is way too important to me.[roman type][line break]";
		rule fails.
The virginity is important rule is listed in the vagina presentable rules.

[!<TheTooMuchDignityToPresentVaginaRule>+

REQUIRES COMMENTING

+!]
This is the too much dignity to present vagina rule:
	if the humiliation of the player < 10000 and the player is not horny and debugmode < 1:
		if auto is 0, say "You have too much self respect to do that!";
		rule fails.
The too much dignity to present vagina rule is listed in the vagina presentable rules.

[!<ThePlayerHatesVaginalSexRule>+

REQUIRES COMMENTING

+!]
This is the player hates vaginal sex rule:
	if the vaginal sex addiction of the player + 2 < the soreness of vagina and the player is not horny and debugmode < 1:
		if auto is 0, say "You don't like vaginal sex enough to ask for it while you are already feeling so [if the soreness of vagina < 5]raw[otherwise]sore[end if]!";
		rule fails.
The player hates vaginal sex rule is listed in the vagina presentable rules.

[!<TheMonsterDoesNotdoVaginalRule>+

REQUIRES COMMENTING

+!]
This is the monster doesn't do vaginal rule:
	if auto is 1 and the number of willing to do vaginal monsters in the location of the player is 0, rule fails.
The monster doesn't do vaginal rule is listed in the vagina presentable rules.

Part 2 - Description

[!<SayShortDescOfVagina>+

REQUIRES COMMENTING

+!]
To say ShortDesc of vagina:
	if the player is female:
		if diaper quest is 0:
			say "[PussyGape openness of vagina]";
			if the latex-transformation of the player < 4:
				if the soreness of vagina > 7:
					say ", very sore";
				otherwise if the soreness of vagina > 3:
					say ", throbbing";
			otherwise:
				say ", numb";
		say " [vagina]".

[!<SayMediumDescOfVagina>+

Less brief details (size, exposure, semen)

+!]
To say MediumDesc of (V - vagina):
	say "[if vagina is lewdly exposed]fully exposed [otherwise if vagina is at least partially lewdly exposed]slightly visible [otherwise if vagina is not exposed]concealed [end if][if the openness of vagina > 4 and diaper quest is 0][PussyGape openness of vagina] [end if][if the semen volume of vagina > 0]cum leaking [end if]pussy".

[!<SayPussyGapeNumber>+

REQUIRES COMMENTING

+!]
To say PussyGape (N - a number):
	if N < 2, say "virgin[if the virgin of the player is 0]-like[end if]";
	if N is 2, say "very tight";
	if N is 3, say "tight";
	if N is 4, say "slightly open";
	if N is 5, say "relatively open and loose";
	if N is 6, say "loose";
	if N is 7, say "very loose and stretched";
	if N is 8, say "extremely loose and gaped";
	if N is 9, say "gaping wide";
	if N is 10, say "impossibly stretched".

[!<SayTotalDescOfVagina>+

REQUIRES COMMENTING

+!]
To say TotalDesc of vagina:
	if the player is female:
		if the openness of vagina < 2, say "Your virgin[if the virgin of the player is 0]-like[end if] [vagina] ";
		if the openness of vagina is 2, say "Your very tight [vagina] ";
		if the openness of vagina is 3, say "Your tight [vagina] ";
		if the openness of vagina is 4, say "Your slightly aroused [vagina] ";
		if the openness of vagina is 5, say "Your relatively aroused and loose [vagina] ";
		if the openness of vagina is 6, say "Your aroused and open [vagina] ";
		if the openness of vagina is 7, say "Your very loose and wet [vagina] ";
		if the openness of vagina is 8, say "Your extremely loose [vagina] ";
		if the openness of vagina is 9, say "Your gaping wide [vagina] [if the semen volume of vagina > 7 and pregnancy fetish is 1]seems close to childbirth and [end if]";
		if the openness of vagina is 10, say "Your impossibly stretched [vagina] [if the semen volume of vagina > 7 and pregnancy fetish is 1]seems ready for childbirth and [end if]";
		if the latex-transformation of the player < 4:
			if the soreness of vagina is 0, say "feels fine.  ";
			if the soreness of vagina is 1, say "feels almost completely fine.  ";
			if the soreness of vagina is 2, say "[one of]feels used[or]feels mostly fine[stopping].  ";
			if the soreness of vagina is 3, say "[if the bimbo of the player > 9]is begging for more[otherwise]is gently tingling[end if].  ";
			if the soreness of vagina is 4, say "[if the bimbo of the player > 9]feels like it needs filling[otherwise]is tingling[end if].  ";
			if the soreness of vagina is 5, say "[if the bimbo of the player > 9]loves being satisfied by [manly-penis][otherwise]is gently throbbing[end if].";
			if the soreness of vagina is 6, say "[if the bimbo of the player > 9]is gently tingling[otherwise]is starting to feel sore[end if].";
			if the soreness of vagina is 7, say "is aching[if the bimbo of the player > 9], but in a good way[end if].  ";
			if the soreness of vagina is 8, say "feels very sore.  ";
			if the soreness of vagina is 9, say "feels ruined.  ";
			if the soreness of vagina is 10, say "feels completely destroyed.  It is so sensitive, it hurts just to touch it.  ";
		otherwise:
			say "feels numb.  ";
		if there is a lubricant covering vagina, say "It is dripping with slippery [lubricant].  ".

[!<SayVaginaModesty>+

REQUIRES COMMENTING

+!]
To say VaginaModesty:
	if vagina is lewdly exposed:
		if there is a pussy covering clothing:
			let W be a random pussy covering clothing;
			say "It is clearly visible through your [selfexamineuniquetitle of W].  ";
		otherwise if vagina is not actually occupied:
			say "It is completely unprotected. ";
	otherwise:
		let W be a random worn potentially at least partially vagina covering clothing;
		say "It can't be seen thanks to the [if vagina is exposed][random thing penetrating vagina][otherwise][selfexamineuniquetitle of W][end if].  ";[if vagina exposed is legacy code from when plugs could improve your modesty]
	if vagina is actually occupied:
		let P be a random thing penetrating vagina;
		if P is monster:
			say "It is currently being pounded by [printed name of P].";
		otherwise:
			say "It is currently the [if the girth of P > the openness of vagina]snug [end if]home of a [printed name of P].".

Part 3 - Modify Vagina Stats

Chapter 1 - Gape

[!<GapeVaginaTimesNumber>+

REQUIRES COMMENTING

+!]
To gape (A - vagina) times (X - a number):
	now the previous openness of vagina is the openness of vagina;
	while X > 0:
		decrease X by 1;
		if the virgin of the player is 1 and there is a live virginity taking thing penetrating vagina:
			compute virginity loss;
		otherwise if the openness of vagina < 10:
			if the openness of vagina is 0:
				say "[variable custom style][line break]Ow ow ow[if the virgin of the player is 0], it feels like I'm losing my virginity again[end if]![roman type][line break]";
			if the openness of vagina is 3:
				say "[variable custom style][line break][one of]Oh no, my [vagina] is starting to get wet...[or]My [vagina] is getting wet again...[stopping][roman type][line break]";
			if the openness of vagina is 5:
				say "[if the sex addiction of the player < 8][variable custom style][one of]My [vagina] is sopping wet... am I enjoying this?![or]Oh my [vagina] is so loose any wet again...[stopping][otherwise][second custom style][line break][one of]My [vagina] is so wet..  I feel horny...[or]I love how horny my [vagina] is making me feel...[stopping][end if][roman type][line break]";
			if the openness of vagina is 7:
				say "[variable custom style][line break][one of]My [vagina] is so wet and stretched, it's as if it's just begging to be stretched even further...[or]Uh-oh, my cunt is pretty much gaping wide again![stopping][roman type][line break]";
			if the openness of vagina is 9:
				say "[variable custom style][line break]My [vagina] is permanently gaping wide, I really am the ultimate slut![roman type][line break]";	
			increase the openness of vagina by 1;
			now ruined is 2.


[!<PussyCloseNumber>+

REQUIRES COMMENTING

+!]
To PussyClose (X - a number):
 	now the previous openness of vagina is the openness of vagina;
 	if the latex-transformation of the player > 2, now X is 0;
 	while X > 0:
 		decrease X by 1;
		if the openness of vagina > 0:
			if the number of things filling vagina > 0:[We force out any existing item when the player tightens up.]
				let I be a random insertable thing penetrating vagina;
				if I is an insertable thing and the openness of vagina + 1 < the girth of I:
					say "Your [printed name of I] shoots out of your [vagina] with some force[run paragraph on]";
					if there is a worn pussy protection clothing:
						if there is a worn possession pussy protection clothing:
							say ", phasing through your [printed name of a random worn possession pussy protection clothing]!";
							repeat with C running through worn pussy protection clothing:
								if C is fluid vulnerable and C is not possession:
									if a random number between 1 and the number of worn possession clothing is 1, now the magic-type of C is possession;[Possessed items will protect your clothing, because it gets hairy to describe only one of 2-3 items not getting ripped. To compensate, the possession has a chance to "spread"]
						otherwise:
							say ", ripping through your [printed name of random worn not possession pussy protection clothing]!";
							repeat with C running through worn pussy protection clothing:
								if C is overdress or C is trousers:
									if C is zippable, now C is crotch-unzipped;
									otherwise now C is crotch-ripped;
								otherwise:[no zippable knickers yet]
									destroy C;
					dislodge I;
					now I is in the location of the player;
				otherwise if I is an insertable thing:
					decrease the openness of vagina by 1;[in the next clause we assume anything penetrating the player is a monster, so we leave the player untightened.]
			if the number of things filling vagina is 0, decrease the openness of vagina by 1.[if this isn't 0, it wasn't an item, so we leave it in.]

Chapter 2 - Soreness



Chapter 3 - Contents and Pregnancy

[!<WombFillX>+

REQUIRES COMMENTING

+!]
To Wombfill (X - a number):
	if there is a worn lipstick collar, increase X by 1;
	let flav-said be 0;
	let M be a random wrapped monster penetrating vagina;
	if M is monster:
		now X is 0;
		compute condom filling of M;
	if invigoration-elixir-timer > 0 and the soreness of vagina > 0 and X > 0:
		say "As the [semen] rushes through your [vagina] into your womb, the lining of your [vagina] is somehow healed!";
		if the soreness of vagina > X, decrease the soreness of vagina by X;
		otherwise now the soreness of vagina is 0;
		now the tolerated of vagina is 0;
	if a random number between 0 and 6 < X, SemenAddictUp 1;
	while X > 0:
		decrease X by 1;
		if the semen volume of vagina >= 10 and flav-said < 1:
			now flav-said is 1;
			say "Because [if the pregnancy of the player is 0]your womb is already completely full of [semen][otherwise]you are pregnant[end if], the [semen] has nowhere to go and violently squirts back out of your [vagina] and onto [if the semen coating of thighs < 10 and bukkake fetish is 1]your thighs[otherwise]the floor[end if]!";
			if the semen coating of thighs is 10 or bukkake fetish is 0, now flav-said is 2;
		if the semen coating of thighs is 10 and flav-said is 1:
			say "Your thighs are completely caked in [semen], and it starts to trickle onto the floor!";
			now flav-said is 2;
		2Wombfill;
	[Pussy gets opened and ruined if there was any semen squirting this turn.]
	if flav-said > 0 and invigoration-elixir-timer is 0:
		ruin vagina;
	if there is a worn tethering lipstick collar, end tethering.

[!<2WombFill>+

REQUIRES COMMENTING

+!]
To 2Wombfill:
	if the semen volume of vagina < 10:
		increase the semen volume of vagina by 1;
	otherwise:
		leak vagina semen 1;
	compute father material of vagina;
	if slow pregnancy > 1 and the pregnancy of the player is 0 and pregnancy fetish is 1 and the virgin of the player is 0, compute sudden pregnancy.

[!<ComputeSuddenPregnancy>+

REQUIRES COMMENTING

+1]
To compute sudden pregnancy:
	let M be a random family thing penetrating vagina; [Whatever just jizzed in the player should already by inseminating vagina thanks to the fact that we just computed the father material of vagina above]
	let R be a random number between 1 and 10 - the pregnancy rate of the player;
	if slow pregnancy is 2, now R is a random number between 1 and 30 - the pregnancy rate of the player; [It's less likely you'll get pregnant if the ]
	if debugmode > 0, say "Instant pregnancy check: R ([R]) must be 1.";
	if R < 2 and M is a thing:
		now the father is M;
		now the pregnancy of the player is 1;
		check for extreme pregnancies;
		if the semen volume of vagina is 31, now the semen volume of vagina is 50;
		otherwise now the semen volume of vagina is 30;
		say "Suddenly[one of] and impossibly,[or][stopping] your belly bulges out to a [if the semen volume of vagina is 50]gigantic[otherwise]huge[end if] size!  [one of]You instinctively know that the [SuddenPregTitle of M] has just made you pregnant.  [variable custom style][if the bimbo of the player < 7]Oh COME ON!  You're seriously telling me that[otherwise]So[end if] this is how pregnancy works in this game?[or]You are once again instantly brought to full term pregnancy.  [variable custom style][if the bimbo of the player > 14]Yippee![otherwise]Oof!  So heavy...[end if][stopping][roman type][line break]";
		check goddess eligibility.

To say SuddenPregTitle of (M - a thing):
	say "[ShortDesc of M]".

[!<WombSquirtX>+

REQUIRES COMMENTING

+!]
To WombSquirt (X - a number):
	while X > 0:
		decrease X by 1;
		2WombSquirt;
	cancel father material of vagina;

[!<LeakVaginaSemen>+

REQUIRES COMMENTING

+!]
To leak vagina semen (X - a number):
	let K be a random bottom level pee protection clothing worn by the player;
	if K is clothing and bukkake fetish is 1:
		CumSoak X on K;
	otherwise if the player is prone:
		SemenPuddleUp X;
	otherwise:
		CumThighsUp X.

[!<ComputeFatherMaterialOfThing>+

REQUIRES COMMENTING

+!]
To compute father material of (T - a thing):
	do nothing.

[!<ComputeFatherMaterialOfVagina>+

REQUIRES COMMENTING

+!]
To compute father material of (F - a fuckhole):
	repeat with M running through father material things penetrating F:
		now M is inseminating F.

[!<ComputeFatherMaterialOfVagina>+

REQUIRES COMMENTING

+!]
To compute father material of (F - vagina):
	if the pregnancy of the player is 0: [Once pregnant you don't get any more potential fathers!]
		repeat with M running through father material things penetrating F:
			now M is inseminating F.

[!<ComputeFatherMaterialOfThingIntoThing>+

REQUIRES COMMENTING

+!]
To compute father material of (F - a thing) into (T - a thing):
	if the pregnancy of the player is 0 or T is not vagina: [Just in case]
		repeat with M running through things inseminating F:
			now M is inseminating T.

[!<ComputeFatherMaterialOfThingIntoVagina>+

REQUIRES COMMENTING

+!]
To compute father material of (F - a thing) into (T - vagina):
	if the pregnancy of the player is 0: [Once pregnant you don't get any more potential fathers!]
		repeat with M running through things inseminating F:
			now M is inseminating T.

[!<CancelFatherMaterial>+

REQUIRES COMMENTING

+!]
To cancel father material:
	repeat with F running through fuckholes:
		cancel father material of F;
	repeat with F running through off-stage vessels:
		cancel father material of F.

[!<CancelFatherMaterialOfThing>+

REQUIRES COMMENTING

+!]
To cancel father material of (T - a thing):
	repeat with M running through things inseminating T:
		now M is not inseminating T.

[!<CancelFatherMaterialOfFuckhole>+

REQUIRES COMMENTING

+!]
To cancel father material of (F - a fuckhole):
	if the semen-volume of F is 0:
		repeat with M running through things inseminating F:
			now M is not inseminating F;
		if the pregnancy of the player is 0 and F is vagina:
			now the father is the throne.

[!<2WombSquirt>+

REQUIRES COMMENTING

+!]
To 2WombSquirt:
	if the semen volume of vagina > 0, decrease the semen volume of vagina by 1.
	

Vagina ends here.
