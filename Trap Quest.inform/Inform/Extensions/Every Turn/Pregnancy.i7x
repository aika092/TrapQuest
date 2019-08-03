Pregnancy by Every Turn begins here.



[!<father:Thing>*

REQUIRES COMMENTING

*!]
The father is a thing that varies. The father is the throne.

Definition: a thing is father material: decide no.

[!<ThingIsFamily>+

REQUIRES COMMENTING

+!]
Definition: a thing (called M) is family:
	if M is inseminating vagina and M is father material and inhuman pregnancy is 2:
		decide yes;
	decide no.

[!<ElderAltarIsFamily>+

REQUIRES COMMENTING

+!]
Definition: an elder altar (called M) is family:
	if M is inseminating vagina and M is father material:
		if inhuman pregnancy is 0:
			decide no;
		decide yes;
	decide no.

[!<CreampiePoleTrapIsFamily>+

REQUIRES COMMENTING

+!]
Definition: a creampie pole trap (called M) is family:
	if M is inseminating vagina and M is father material:
		decide yes;
	decide no.

[!<MonsterIsFamily>+

REQUIRES COMMENTING

+!]
Definition: a monster (called M) is family:
	if M is inseminating vagina and M is father material:
		if inhuman pregnancy is 0:
			if M is male and M is intelligent and M is human, decide yes;
		otherwise if inhuman pregnancy is 1:
			if M is intelligent, decide yes;
		otherwise if inhuman pregnancy is 2:
			decide yes;
	decide no.

[!<MonsterIsHuman>+

REQUIRES COMMENTING

+!]
Definition: a monster is human: decide no.

[!<MinotaurIsFamily>+

REQUIRES COMMENTING

+!]
Definition: a minotaur (called M) is family:
	if M is inseminating vagina and M is father material:
		if inhuman pregnancy is 0:
			decide no;
		decide yes;
	decide no.

[!<PrintFatherlyThing>+

REQUIRES COMMENTING

+!]
To print fatherly things:
	say "List of family things: [list of family things].";
	unless the father is the throne, say "Current selected father: [the father].".

[!<familyPrinting:Action>*

REQUIRES COMMENTING

*!]
Family Printing is an action applying to nothing.

[!<CheckFamilyPrinting>+

REQUIRES COMMENTING

+!]
[Check Family Printing:
	if debugmode < 2, say "Debug mode not enabled." instead.]

[!<CarryOutFamilyPrinting>+

REQUIRES COMMENTING

+!]
Carry out Family Printing:
	print fatherly things.
Understand "who's the daddy" as Family Printing.

[NB the priority order for fatherhood. What can I say, some stuff has stronger sperm.]
[!<DecideWhichThingIsTheNewFather>+

REQUIRES COMMENTING

+!]
To decide which thing is the new father:
	if there is a family tentacle monster, decide on a random family tentacle monster;
	if there is a family elder altar, decide on a random family elder altar;
	if there is an alive regional family monster, decide on a random alive regional family monster;
	if there is an alive family monsters, decide on a random alive family monster; [the plural is on purpose because i7 couldn't understand it without for some reason]
	if there is an on-stage family thing, decide on a random on-stage family thing;
	if there is an off-stage family sex doll, decide on a random off-stage family sex doll;
	if there is an off-stage family monsters, decide on a random off-stage family monster;
	if there is a family thing, decide on a random family thing;
	decide on the throne.

[This phrase is used elsewhere so we encapsulate it in a function to make sure the text substitution behaves correctly.]
[!<SayPregGrowth>+

REQUIRES COMMENTING

+!]
To say PregGrowth:
	let P be a random thing inseminating vagina;
	say "You feel your belly swell even further as [if the father is not the throne][PregGrowth of the father][otherwise if the number of things inseminating vagina is 1][PregGrowth of P][otherwise]whatever is[end if] inside your womb [one of]starts to grow![or]continues to grow![if the womb volume of vagina is 38 and the number of things inseminating vagina > 1][line break][variable custom style]This definitely isn't a human baby I'm carrying, is it...[roman type][line break][end if][stopping]".

[!<SayPregGrowthOfThing>+

REQUIRES COMMENTING

+!]
To say PregGrowth of (T - a thing):
	say "whatever is".

[!<SayChild>+

REQUIRES COMMENTING

+!]
To say child:
	say "[one of]child[or]baby[or]child[or]baby[or]offspring[or]heir[or]brood[or]get[or]spawn[as decreasingly likely outcomes]".

[!<successfulPregnancy:Integer>*

REQUIRES COMMENTING

*!]
Successful-Pregnancy is a number that varies.
Successful-Pregnancy is 1. [Used to track whether labour was delayed]

[!<slowPregnancyTracker:Integer>*

REQUIRES COMMENTING

*!]
slow-pregnancy-tracker is a number that varies.

To decide which number is maximum-pregnancy-delay: [maximum number of turns before moving forward]
	let M be 15 - (the pregnancy rate of the player * 4);
	if M < 2, decide on 2;
	decide on M / 2.

To decide which number is maximum-birth-delay: [number of turns between trying to give birth again]
	decide on 8.

[!<DecideWhichNumberIsSlowBirthRate>+

The number of times we cycle through maximum-birth-delay turns, i.e. the longer pregnancies take to 'pop' after becoming full term.

+!]
To decide which number is slow birth rate:
	let S be slow birth + 1;
	decide on S * S * 4. [can balance this later if needed]

[!<maximumPregnancyDelayTracker:Integer>*

This number ticks upwards each turn. When it hits a certain limit (usually maximum-pregnancy-delay), we progress the pregnancy.

*!]
maximum-pregnancy-delay-tracker is a number that varies.

[!<computePregnancy>+

Every turn we call this function to calculate what happens to the player's pregnancy.

+!]
To compute pregnancy:
	increase maximum-pregnancy-delay-tracker by 1;
	if the womb volume of vagina < 30: [In here we compute the normal growth of a pregnancy.]
		if maximum-pregnancy-delay-tracker >= maximum-pregnancy-delay or (slow pregnancy is 2 and maximum-pregnancy-delay-tracker > 1): [if slow pregnancy is 2 that means we grow babies super super fast]
			now maximum-pregnancy-delay-tracker is 0;
			increase slow-pregnancy-tracker by 1;
			if debugmode > 0, say "Pregnancy growth check: Slow preg tracker is [slow-pregnancy-tracker].";
			let M be a random off-stage maternity bra;
			let B be the largeness of belly;
			if the pregnancy of the player is 1 and (slow pregnancy > 0 or slow-pregnancy-tracker > 1): [If the pregnancy of the player is 2, this means pregnancy is paused. if slow pregnancy is 0, it takes twice as long]
				now slow-pregnancy-tracker is 0;
				increase the womb volume of vagina by 1; [1 or more, +1]
				if the womb volume of vagina > 30, now the womb volume of vagina is 30; [Important so that this doesn't get confused with a super-pregnancy]
			if the largeness of belly > B or the womb volume of vagina is 30:
				say PregGrowth;
				if M is actually summonable and a random number between 1 and 55 - (20 * unlucky) is 1 and the largeness of breasts < 17:
					summon M cursed;
					now the size of M is the largeness of breasts + 3;
					if the size of M > 15, now the size of M is 15;
					if the size of M > max breast size, now the size of M is max breast size;
					say "A maternity bra materialises over your breasts!";
					compute summoned quest of M;
				otherwise if the class of the player is fertility goddess and a random number between 1 and 20 is 1:
					if there is a worn cursed pregnancy related clothing and the player is not bottom heavy:
						say "You feel your hips widen in order to prepare for your inevitable labour!";
						HipUp 1;
		otherwise:
			compute pregnancy annoyance;
		if the womb volume of vagina is 30: [Pregnancy has reached full term just now! Here we choose the father and check for and trigger super-pregnancies]
			if the father is the throne:
				now the father is the new father;
				if the father is the throne: [This should never happen. But just in case...]
					say "[PregnancyBugFlav]";
					now the pregnancy of the player is 0;
					WombEmpty the womb volume of vagina;
			check for extreme pregnancies;
			say "[if the womb volume of vagina is 30]You feel like your pregnancy has [one of]now reached full term. You'll be ready to pop soon[or]once again reached full term[stopping]. [end if][bold type][one of]Being so heavily pregnant is making you feel very submissive. You [or]You're once again so heavily pregnant that you [stopping]will feel much more submissive until you give birth.[roman type][line break]";
	otherwise if the womb volume of vagina > 30 and the womb volume of vagina < 50 and the pregnancy of the player is 1: [Here we compute the growth of a mega-pregnancy]
		if maximum-pregnancy-delay-tracker >= maximum-pregnancy-delay or (slow pregnancy is 2 and maximum-pregnancy-delay-tracker > 1): [if slow pregnancy is 2 that means we grow babies super super fast]
			let B be the largeness of belly;
			now maximum-pregnancy-delay-tracker is 0;
			if debugmode > 0, say "Mega-pregnancy growth check: Slow preg tracker is [slow-pregnancy-tracker].";
			increase slow-pregnancy-tracker by 1;
			if slow pregnancy > 0 or slow-pregnancy-tracker > 1: [if slow pregnancy is 0, it takes twice as long]
				now slow-pregnancy-tracker is 0;
				increase the womb volume of vagina by 1;
				if the largeness of belly > B or the womb volume of vagina is 50:
					say PregGrowth;
					if the womb volume of vagina is 50:
						say "You feel like your mega-pregnancy has [one of]finally reached full term. You'll be ready to pop soon[or]once again finally reached full term[stopping].";
						cutshow figure of giant pregnancy for belly;
		otherwise:
			compute pregnancy annoyance;
	otherwise if maximum-pregnancy-delay-tracker >= maximum-birth-delay and the player is not immobile and the player is not flying and the pregnancy of the player is 1 and the number of worn chastity cages is 0:
		now maximum-pregnancy-delay-tracker is 0;
		increase slow-pregnancy-tracker by 1;
		if slow-pregnancy-tracker > slow birth rate:
			now auto is 1; [for displacing automatically]
			if vagina is actually occupied or there is worn undisplacable cursed pee covering clothing: [the vagina is blocked, so we delay the pregnancy and punish the player with contractions]
				Delay Labour;
			otherwise if the father is a monster:
				let M be the father;
				compute labour to M;[Dead fathers are handled in fatherhood of M]
				if successful-pregnancy is 1:
					compute fatherhood to M;
				[if there is worn temporarily-displaced clothing:
					say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
					repeat with P running through worn temporarily-displaced clothing:
						replace P;]
			otherwise: [The father is inanimate]
				if inhuman pregnancy < 2:
					say DefaultBirthScene;
				otherwise if the father is elder altar:
					compute god birth;
				otherwise:
					compute tentacle birth;
			if successful-pregnancy is 1:
				increase the children of the player by 1;
				now slow-pregnancy-tracker is 0;
				now the father is the throne;
				if the player is upright, try kneeling;
				now the pregnancy of the player is 0;
				WombEmpty the womb volume of vagina;
			otherwise:
				now successful-pregnancy is 1; [labour was delayed, we still reset this flag so it's in the correct state for when we try again next time]
			now auto is 0;
		otherwise:
			compute pregnancy annoyance.

To compute pregnancy clothing displacement:
	repeat with P running through worn pee covering clothing:
		if P is displacable:
			say "You can't help but instinctively pull your [ShortDesc of P] out of the way!";
			displace P;
		otherwise:
			say "You instinctively pull your [ShortDesc of P] far enough off of you to get it out of the way of your [vagina].".


[!<SayPregFlav>+

REQUIRES COMMENTING

+!]
To say PregFlav:
	say "[bold type][if the player is upright]You fall to your knees as your[otherwise]Your[end if] cervix starts dilating furiously.[roman type] [if the bimbo of the player < 13][line break][first custom style][one of]It's going to come out, I can't stop it![or]Not now, not again...[stopping][otherwise][line break][second custom style][one of]I'm going to be a mother![or]I wonder how many kids I'm going to end up with?[or]I just keep popping them out, don't I?[or]I just love being bred![stopping][end if][roman type][line break]";

[!<SayDefaultBirthScene>+

REQUIRES COMMENTING

+!]
To say DefaultBirthScene:
	compute pregnancy clothing displacement;
	say "[PregFlav]You feel yourself start to give birth. You feel a burning desire for the father of the child to appear, but nobody does, and without the father there to assist with the delivery you feel yourself begin to pass out due to the pain. In your groggy state you think you see some cherubic angels appear and begin to take the baby up into the heavens. [line break][second custom style]'Don't worry [TitleBimbo], we'll take care of this one for you. Good luck on your quest!'[roman type][line break]When you properly regain your senses, there are no babies, no cherubs, just you on the floor with a rapidly deflating belly and your vaginal juices sprayed across the ground below your crotch.[if the pregnancy rate of the player is 1][line break]Deep down, you can feel your womb crying out to begin the process all over again.[end if]";
	if the pregnancy rate of the player < 2, increase the pregnancy rate of the player by 1.


[!<ComputeGodBirth>+

REQUIRES COMMENTING

+!]
To compute god birth:
	compute pregnancy clothing displacement;
	say "[PregFlav]As you feel yourself start to give birth, suddenly a group of veiled women appear from nowhere to surround you! Suddenly, a cascade of milky slime begins to issue forth from you, pooling at your knees. The women begin to chant ominously as the slime continues to pour out of you, and you already see it swirling and flowing as if alive. As the flow finally stops, one of the women approaches with a large bowl, which the slime flows up into. They then vanish back into the shadows.";
	if doom counter > 0, increase doom counter by 150;
	if the humiliation of the player >= 40000 and cultist veil is off-stage and cultist veil is actually summonable:
		summon cultist veil;
		say "Your vision slightly dims as a black silk veil appears over your face. Somehow you feel comforted, as though you no longer need to be an individual any more.";


contractionTracker is a number that varies.
[!<DelayLabour>+

REQUIRES COMMENTING

+!]
To Delay Labour:
	if the class of the player is fertility goddess:
		say "A sudden contraction sends a small, manageable amount of pain shooting from your womb to the rest of your body.[line break][if the semen addiction of the player < 7 and the father is alive monster and the father is not regional alive monster][one of][line break][first custom style]Okay, by staying away from [the father] I can prevent myself from having to give birth again...[or][stopping][otherwise if the semen addiction of the player < 7][one of][first custom style]Okay, by keeping my [vagina] covered I think can prevent myself from having to give birth again...[or][stopping][otherwise][one of][line break][second custom style]I just love being massive and pregnant, why would I want to give birth and have to start the process all over again?[or][stopping][end if][roman type][line break]";
	otherwise:
		say "A sudden contraction sends pain shooting from your womb to the rest of your body. [if the player is upright and contractionTracker > (slow pregnancy * 2)]The contraction is so intense that you are forced to your knees. [end if][if the father is alive monster and the father is not regional alive monster]You are filled with a desire to find [the father].[otherwise][NonAliveFatherBirthFlav of the father][end if]";
		cutshow figure of full term contraction for belly;
		if contractionTracker > slow pregnancy * 2:
			if the player is upright, try kneeling;
			now contractionTracker is 0;
		otherwise:
			increase contractionTracker by 1;
	now successful-pregnancy is 0.

To say NonAliveFatherBirthFlav of (M - a monster):
	say "You should probably make sure the exit to your vagina is clear!".

[!<SayPregnancyBugFlav>+

REQUIRES COMMENTING

+!]
To say PregnancyBugFlav:
	say "In some weird twist of this virtual game, you can literally feel the moment where someone up high decides you don't deserve a pregnancy, presses a button, and all the body mass inside you turns into liquid! Your poor womb is now just completely over-full of [semen]! It all comes gushing out in a torrent, coating your thighs and the ground.".

[!<CheckForExtremePregnancies>+

REQUIRES COMMENTING

+!]
To check for extreme pregnancies:
	if extreme proportions fetish is 1 and inhuman pregnancy > 0 and the father is not the throne: [Super-pregnancies are go]
		if the father is a minotaur or the father is vines or the father is lake monster or the father is living belt of sturdiness or the father is hellhound or the father is demon lord:
			now the womb volume of vagina is 31;
		if the father is creampie pole trap and inhuman pregnancy is 2 and a random number between 1 and 5 >= 2:
			now the womb volume of vagina is 31;
		if the father is djinn:
			now the womb volume of vagina is 31;
	if the womb volume of vagina is 31 and slow pregnancy > 2:
		now the womb volume of vagina is 50;
		cutshow figure of giant pregnancy for belly;
	if the womb volume of vagina is 30:
		cutshow figure of full term pregnancy for belly.


[Being pregnant is no walk in the park]
To compute pregnancy annoyance:
	if the class of the player is not fertility goddess:
		if (the player is in Hotel18 or the player is in School17) and the player is not overly full and the player is able to eat and the player is not immobile and the player is not in danger:
			let T be feeding bowls;
			if the player is in School17, now T is food machine;
			say "Your pregnancy-hormone-addled brain suddenly gives you a deep craving for the [MediumDesc of T] in this room. Do you obey your cravings and eat up? ";
			if the player is bimbo consenting:
				let saved-secs be seconds;
				now seconds is -9999;
				try TQEating T;
				unless seconds is -9999, now another-turn is 1; [We're only adding another turn of time moving forward if the eating was successful]
				now seconds is saved-secs;
			otherwise:
				say "Unable to get the nutrients it needs from your stomach, your womb draws what it needs directly from your muscles. You feel a bit weaker...";
				StrengthDown 1;
		otherwise if the womb volume of vagina >= 20 and watersports mechanics is 1 and the player is not incontinent and the player is not bursting and a random number between 1 and 2 is 1:
			if the bladder of the player < 6, now the bladder of the player is 6;
			if the player is bursting, say "[bold type]Your unborn baby kicks hard down on your bladder.[line break][variable custom style]Oof![roman type][line break]You're suddenly desperate for the loo!";
		otherwise if a random number between 1 and 4 is 1 and the player is not very horny:
			say "[bold type]Your pregnancy-hormone-addled brain randomly and spontaneously flares up with arousal.[one of][or][line break][variable custom style]This is crazy, it feels like I want sex all the time at the moment...[or][stopping][roman type][line break]";
			arouse 3000;
		otherwise if the womb volume of vagina > a random number between 15 and 75
 and the player is upright and the player is not very tired and the fatigue of the player > the buckle threshold of the player / 10:
			say "The weight of your unborn baby is making your feet and back ache. [bold type]You need to sit down and rest soon.[roman type][line break]";
			now the fatigue of the player is the very tired threshold of the player;
		otherwise if the womb volume of vagina > 15:
			say "Your unborn baby [one of]kicks vigorously[or]punches, kicks and wriggles[or]knees and elbows you from[at random] inside your womb.";
			increase the fatigue of the player by the womb volume of vagina;
		otherwise:
			say "[one of]You feel a flutter in your belly. Was that your baby moving?[or][or][or][in random order]";
	otherwise if the womb volume of vagina > 15:
		say "Your unborn baby [one of]kicks vigorously[or]punches, kicks and wriggles[or]knees and elbows you from[at random] inside your womb, but your magically protected womb prevents you from suffering any negative effects.";
	otherwise:
		say "[one of]You feel a flutter in your belly. Was that your baby moving?[or][or][or][in random order]".

Pregnancy ends here.

