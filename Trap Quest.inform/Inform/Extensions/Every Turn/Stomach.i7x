Stomach by Every Turn begins here.



[!<coldTurkey:Integer>*

How long has the player starved themselves of semen?

*!]
cold turkey is a number that varies.
[!<coldMilky:Integer>*

How long has the player starved themselves of milk?

*!]
cold milky is a number that varies.
To decide which number is cold milky limit:
	decide on 180. [how long until addiction kicks in]
To decide which number is cold milky addiction limit:
	decide on 35. [multiple of milk taste addiction until addiction fades away]

[!<lastBegged:Thing>*

REQUIRES COMMENTING

*!]
last-begged is a thing that varies. last-begged is the throne.

[!<lastBeggedTime:Integer>*

REQUIRES COMMENTING

*!]
last-begged-time is a number that varies.

[!<DecideWhichNumberIsTheThirstOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the thirst of the player:
	if chess table is grabbing the player, decide on 0;
	decide on 5 - the stomach-liquid of the player.

[!<YourselfIsThirsty>+

REQUIRES COMMENTING

+!]
Definition: yourself is thirsty:
	if the thirst of the player > 2 and the latex-transformation of the player < 5, decide yes;
	decide no.

Definition: yourself is very thirsty:
	if the thirst of the player > 3 and the latex-transformation of the player < 5, decide yes;
	decide no.

Definition: yourself is extremely thirsty:
	if the thirst of the player > 4 and the latex-transformation of the player < 5, decide yes;
	decide no.


[!<digestionTimer:Integer>*

Some things can speed up digestion by increasing this variable. It counts down over time.

*!]
digestion-timer is a number that varies.

[!<DecideWhichNumberIsStomachPeriod>+

REQUIRES COMMENTING

+!]
To decide which number is stomach-period:
	if the player is in School34 and ex-princess is in the location of the player, decide on 20;
	let T be 15;
	if diaper focus is 0, now T is 20;
	if the player is not overly full, now T is T * 2;
	let R be the number of worn respiration-enhancing wearthings;
	if R is 0, now T is T * 2;
	if R < 2, now T is T * 2;
	if digestion-timer <= 0, now T is T * 2;
	decide on T.

Definition: a wearthing (called C) is respiration-enhancing: [Done so that we can include tattoos]
	if C is respiration clothing, decide yes;
	decide no.

[!<DecideWhichNumberIsFoodPeriod>+

REQUIRES COMMENTING

+!]
To decide which number is food-period:
	decide on stomach-period.
	[decide on stomach-period * (2 - diaper quest).] [Food is digested faster in diaper quest]

[!<ComputeStomachWithEarningsAndSeconds>+

REQUIRES COMMENTING

+!]
A time based rule (this is the compute stomach rule):
	compute corset strain;
	if the player is craving semen and the stomach-semen of the player is 0:
		if cold turkey <= the semen taste addiction of the player * 20:
			increase cold turkey by time-seconds;
			if cold turkey > the semen taste addiction of the player * 20:
				say "[bold type]Your stomach has been empty of [semen] for so long that you can feel your body's demand for the addictive substance slowly disappearing. [if the player is craving semen]But even though your body doesn't crave it as much any more, your mind still does...[end if][roman type][line break]";
	increase cold milky by time-seconds;
	if cold milky > cold milky limit and the milk taste addiction of the player > 13:
		if cold milky - time-seconds <= cold milky limit:
			say "[bold type]Your stomach and taste buds are beginning to [if the player is desperately craving milk]desperately [end if]crave more [milk]. [roman type]Until you either drink some more [milk] or avoid milk for a long time, you will feel [second custom style]cranky[roman type], lowering your submissiveness but also significantly lowering your intelligence.";
		otherwise if cold milky > the milk taste addiction of the player * cold milky addiction limit and cold milky - time-seconds <= the milk taste addiction of the player * cold milky addiction limit:
			say "[bold type]Your mind and body is now slowly getting used to not receiving regular helpings of [milk]. [roman type]Keep it up and your body's addiction will continue to lower.";
	[say "Stomach time check: remainder after dividing [time-earnings] by [period] is [remainder after dividing time-earnings by Period]. Comparing it to round time of [time-seconds].";]
	if the remainder after dividing time-earnings by stomach-period < time-seconds and the latex-transformation of the player < 5:
		compute hunger and thirst;
	unless current-predicament is team-quiz-predicament and the questionFails of team-quiz-predicament < 2, compute bladder growth;
	if the thirst of the player is 5 and the player is thirsty and delayed fainting is 0 and busy is 0 and the player is able to speak and the player is not flying and the player is not stuck:
		if the player is in Dungeon10 and diaper quest is 0:
			say "You see the statue with a hollow penis and [if the semen taste addiction of the player < 6]realise you are just too thirsty to resist[otherwise if the semen taste addiction of the player < 10]understand what you need to do to quench your thirst[otherwise]your eyes light up as you realise how you can quench your thirst[end if]. [if the player is upright]You get on your knees. [end if]";
			now the stance of the player is 1;
			try drinking DungeonScenery01;
		otherwise if last-begged-time < earnings - 30:
			repeat with M running through intelligent friendly interested monsters in the location of the player:
				if M is awake and the player is not immobile and the thirst of the player > 3 and the player is not stuck and M is not last-begged:
					now the alert of the player is 1;
					compute desperate drinking to M;
					now last-begged is M;
					now last-begged-time is earnings;
					break.


To compute hunger and thirst:
	let T be the thirst of the player;
	let N be (the stomach-food of the player / 4) + 1;
	if the stomach-food of the player > 0:
		if the stomach-food of the player < N, now N is the stomach-food of the player;
	otherwise:
		now N is 1;
	now hunger-flav-said is 0;
	repeat with N2 running from 1 to N:
		compute food;
	if diaper messing >= 3:
		if N is 0 and the remainder after dividing time-earnings by stomach-period * 2 < time-seconds, increase rectum by 1; [builds up slowly even if nothing eaten]
		compute soiling;
	let SL be ((the stomach-liquid of the player + 3) / 3);
	StomachDown SL;
	if T < the thirst of the player:
		if the thirst of the player is 3:
			say "[bold type]You're beginning to feel a bit thirsty.[roman type][line break]";
			if newbie tips is 1, say "[one of][newbie style]Newbie tip: You're getting thirsty! Your strength will be lowered until you drink something[if diaper quest is 0] (remember, in a pickle, semen counts)[end if]! If you go too long without drinking something, your thirst will get worse and worse, giving you lowered stats and eventually your character will take matters into their own hands and drink anything they can, any way they can...[roman type][line break][or][stopping]";
			let P be a random worn cursed pacifier;
			if P is pacifier:
				say "Your [P] suddenly feels less stuck in your mouth. Maybe you're allowed to take it out to drink?";
		otherwise if the thirst of the player is 4:
			say "[bold type]Your throat is feeling pretty dry, you should really drink [if the player is craving semen]someone's [semen][otherwise]something[end if]![roman type][line break]";
		otherwise if the thirst of the player is 5:
			say "[bold type]You are dying to drink something, anything![roman type][line break]";
		if there is a worn cock pacifier and the thirst of the player > 2:
			let C be a random worn cock pacifier;
			say "[one of]As if it can tell you're getting thirsty[or]Right on cue[stopping], you feel your [printed name of C] twitching, like it's about to ejaculate!";
			let X be 6;
			if C is blessed, now X is 8;
			if C is cursed, now X is 3;
			let R be a random number between 1 and 10;
			if debuginfo > 0, say "[input-style]Cock pacifier roll d10 ([R]): 1-[X])Normal water; [X + 1]-10)Semen[roman type][line break]";
			if R > X:
				say "It shoots warm [semen] into your mouth, which you have no choice but to swallow. [if the semen taste addiction of the player > 11][line break][variable custom style]Mmm, delicious cum![otherwise if the semen taste addiction of the player > 7][variable custom style]It's making me drink [semen] again![otherwise][line break][first custom style]Oh my god, that was [semen] it just made me swallow!  Gross![end if][roman type][line break]";
				StomachSemenUp 1;
			otherwise:
				say "Cool water squirts into your mouth, which you have no choice but to swallow. [if the semen taste addiction of the player > 13][line break][variable custom style]Aww, it was just water. I was hoping for [semen]![otherwise if the semen taste addiction of the player > 7][variable custom style]It's hard not to imagine that it just came in my mouth.[otherwise][line break][first custom style]Phew, just water. That feels much better![end if][roman type][line break]";
				StomachUp 1.

To compute bladder growth:
	let I be bladder-risky-level;
	let B be bladder-bursting-level; [difference between bladder and risky level]
	let resting-wetter be 0;
	if resting is 1 and (there is a worn bed wetting clothing or bed-wetter tattoo is worn) and the bladder of the player > 2, now resting-wetter is 1;
	if B >= 0 or resting-wetter is 1:
		if resting-wetter is 1 and B < 3, now B is 3; [bed wetters always have a high chance of wetting while resting]
		[let R be (a random number between -9 and B) + (a random number between -9 and B); [If B is 0 then 1% chance of wetting each turn; If B is 1 then 5% chance; If B is 2 then 10.4% chance; if B is 3 then 16.6% chance; if B is 4 then 23% chance; if B is 5 then 29.3% chance; if B is 6 then 35.5% chance]]
		let R be (a random number between -14 and B) + (a random number between -14 and B); [If B is 0 then 0.4% chance of wetting each turn; If B is 1 then 2% chance; If B is 2.3 then 5.2% chance; if B is 3 then 8.6% chance; if B is 4 then 12.5% chance; if B is 5 then 16.5% chance; if B is 6 then 20.6% chance]
		if debuginfo > 1, say "[input-style]Automatic wetting check: [if resting-wetter is 1 and B is 3]magic bed wetting effect ([B])[otherwise]bladder ([bladder of the player]) - continence rating ([I]) = [B][end if] ---> RNG(-14 ~ [B]) + RNG(-14 ~ [B]) = [R] | positive number[roman type][line break]";
		if R >= 0:
			now delayed urination is 1;
		otherwise if the player is bursting and (R is -1 or the remainder after dividing time-earnings by 120 < time-seconds): [Once every now and then we reward the player for holding it while it's risky]
			progress quest of bursting-quest;
	if xavier-throat-link is 1 and the delayed bladder of the player > 0:
		bladderup (1 + xavier-belt-link) * the delayed bladder of the player;
		now the delayed bladder of the player is 0;
	otherwise if (the remainder after dividing time-earnings by 25 < time-seconds or (chess table is grabbing the player and the chess-victor of chess-lesson is 0)) and the delayed bladder of the player > 0:
		bladderup 1 + xavier-belt-link;
		decrease the delayed bladder of the player by 1.


[!<playerHunger:Integer>*

REQUIRES COMMENTING

*!]
player-hunger is a number that varies.

[!<hungerFlavSaid:Integer>*

REQUIRES COMMENTING

*!]
hunger-flav-said is a number that varies.

[!<ComputeFood>+

REQUIRES COMMENTING

+!]
To compute food:
	if the player is hungry:
		if (player-hunger > a random number between 0 and 3 and the raw strength of the player > the starting strength of the player) or player-hunger > 3:
			if hunger-flav-said is 0, say "[bold type]You feel your muscles weaken as your body struggles to deal with your hunger.[roman type][line break]";
			StrengthDown 1;
			if (player-hunger > a random number between 1 and 3 and the raw dexterity of the player > the starting dexterity of the player) or player-hunger > 4, DexDown 1;
		increase player-hunger by 1;
		if hunger-flav-said is 0, say "You feel yourself getting thinner as you starve yourself of food.";
		if weight gain fetish is 1, FatDown 1;
		otherwise BustDown 2;
	otherwise if the stomach-food of the player > 0:
		now player-hunger is 0;
		StomachFoodDown 1;
		if the stomach-food of the player > 2, FatUp 1;
		if the stomach-food of the player > 5, FatUp 1;
		if (xavier-throat-link is 0 or chess table is grabbing the player) and (rectum > 0 or diaper messing >= 4 or (diaper messing >= 3 and diaper focus is 1)), increase rectum by 1; [With scenes & no diaper focus, it only starts going after the matron triggers it.]
		if diaper messing < 3, now rectum is 0; [Just to make double triple sure]
		if the player is hungry and hunger-flav-said is 0, say "[bold type]You are beginning to feel quite hungry[if there is a worn cursed ballgag].[roman type]  Your [random worn ballgag] loosens slightly, as if it's temporarily allowing you to eat around it.[otherwise].[roman type][line break][end if]";
	now hunger-flav-said is 1.


[!<ThingIsDiapered>+

REQUIRES COMMENTING

+!]
Definition: yourself is diapered if there is a worn diaper.

[!<ThingIsUrineAverse>+

REQUIRES COMMENTING

+!]
Definition: yourself is urine averse:
	if the player is an adult baby, decide no;
	if diaper lover >= 1 and the diaper addiction of the player < 10 and the humiliation of the player < 40000, decide yes;
	decide no.

[!<ClothingIsUrineSoaked>+

REQUIRES COMMENTING

+!]
Definition: a clothing (called C) is urine soaked:
	if the urine-soak of C > 0 and the total-soak of C >= the soak-limit of C, decide yes;
	decide no.

[!<ThingIsUpsetAboutUrine>+

REQUIRES COMMENTING

+!]
Definition: yourself is upset about urine:
	if the player is urine averse:
		repeat with C running through worn urine soaked clothing:
			if the known-urine-soak of C > 0, decide yes;
	decide no.

[!<ThingIsDiaperKicking>+

REQUIRES COMMENTING

+!]
Definition: yourself is diaper kicking:
	let D be a random worn diaper;
	if D is diaper:
		if the diaper addiction of the player < 6 and the total-soak of D >= the diaper addiction of the player, decide yes;
	decide no.

[!<previousUrineUpset:Integer>*

REQUIRES COMMENTING

*!]
previous-urine-upset is a number that varies.

[!<previousHorny:Integer>*

REQUIRES COMMENTING

*!]
previous-horny is a number that varies.

[!<DecideWhichNumberIsHungerMechanics>+

REQUIRES COMMENTING

+!]
To decide which number is hunger mechanics:
	decide on 1;
	if diaper messing >= 3 or active hunger mechanics is 1, decide on 1;
	decide on 0.

[!<decideWhichNumberIsActiveHungerMechanics>+

REQUIRES COMMENTING

+!]
To decide which number is active hunger mechanics:
	if the latex-transformation of the player > 4, decide on 0;
	if diaper quest is 1 and diaper messing >= 3, decide on 0;
	decide on 1.

[!<YourselfIsHungry>+

REQUIRES COMMENTING

+!]
Definition: yourself is hungry:
	if chess table is grabbing the player, decide no;
	if the stomach-food of the player is 0 and active hunger mechanics is 1, decide yes;
	decide no.

[!<YourselfIsNearlyHungry>+

REQUIRES COMMENTING

+!]
Definition: yourself is nearly hungry:
	if chess table is grabbing the player, decide no;
	if the stomach-food of the player is 1 and active hunger mechanics is 1, decide yes;
	decide no.


Stomach ends here.

