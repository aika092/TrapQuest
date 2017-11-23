Pregnancy by Every Turn begins here.



[!<father:Thing>*

REQUIRES COMMENTING

*!]
The father is a thing that varies.  The father is the throne.

[!<Thing>@<isFatherMaterial:Boolean>*

REQUIRES COMMENTING

*@!]
A thing can be father material.  A thing is usually not father material.  

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
Definition: a monster (called M) is human:
	decide no.

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

[NB the priority order for fatherhood.  What can I say, some stuff has stronger sperm.]
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
	say "You feel your belly swell even further as [if the father is not the throne][PregGrowth of the father][otherwise if the number of things inseminating vagina is 1][PregGrowth of P][otherwise]whatever is[end if] inside your womb [one of]starts to grow![or]continues to grow![if the semen volume of vagina is 38 and the number of things inseminating vagina > 1][variable custom style]This definitely isn't a human baby I'm carrying, is it...[roman type][line break][end if][stopping]".

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

[!<maximumPregnancyDelay:Integer>*

REQUIRES COMMENTING

*!]
maximum-pregnancy-delay is a number that varies.
maximum-pregnancy-delay is 30. [maximum number of turns before moving forward]

[!<maximumPregnancyDelayTracker:Integer>*

REQUIRES COMMENTING

*!]
maximum-pregnancy-delay-tracker is a number that varies.

[!<computePregnancy>+

REQUIRES COMMENTING

+!]
To compute pregnancy:
	let R be a random number from 1 to (40 - (the pregnancy rate of the player * 10));
	increase maximum-pregnancy-delay-tracker by 1;
	if maximum-pregnancy-delay-tracker >= maximum-pregnancy-delay:
		now R is 1;
	if R < 2 and (the semen volume of vagina is 30 or the semen volume of vagina >= 50):
		increase slow-pregnancy-tracker by 1;
		now maximum-pregnancy-delay-tracker is 0;
		if debugmode > 0, say "Birth check: Slow preg tracker is at  [slow-pregnancy-tracker] and needs to be higher than [2 + (2 * slow pregnancy rate)].";
	if the semen volume of vagina < 30:
		let B be the largeness of belly;
		now R is a random number between 1 and (6 - (the pregnancy rate of the player * 2));
		if maximum-pregnancy-delay-tracker >= maximum-pregnancy-delay:
			now R is 1;
			now maximum-pregnancy-delay-tracker is 0;
		if R < 2, increase slow-pregnancy-tracker by 1;
		if debugmode > 0, say "Pregnancy growth check: [R] must be less than 2.  Slow preg tracker is [slow-pregnancy-tracker].";
		let M be a random off-stage maternity bra;
		if R < 2 and the pregnancy of the player is 1 and (slow pregnancy is 0 or slow-pregnancy-tracker > 3): [If the pregnancy of the player is 2, this means pregnancy is paused]
			now slow-pregnancy-tracker is 0;
			increase the semen volume of vagina by 1;  [1 or more, +1]
			if R < 1, increase the semen volume of vagina by 1; [0 +2]
			if R < 0, increase the semen volume of vagina by 1; [-1 +3]
			if R < -1, increase the semen volume of vagina by 1; [-2 or less, +4]
			if the semen volume of vagina > 30, now the semen volume of vagina is 30; [Important so that this doesn't get confused with a super-pregnancy]
			if the largeness of belly > B, say PregGrowth;
		otherwise if M is actually summonable and a random number between 1 and 55 - (20 * unlucky) is 1 and the largeness of breasts < 17:
			summon M cursed;
			now the size of M is the largeness of breasts + 3;
			if the size of M > 15, now the size of M is 15;
			if the size of M > max breast size, now the size of M is max breast size;
			say "A maternity bra materialises over your breasts!";
		otherwise if the player is a fertility goddess and a random number between 1 and 20 is 1:
			if a random worn overdress is cursed:
				if the thickness of hips < 10:
					say "You feel your hips widen in order to prepare for your inevitable labour!";
				otherwise if extreme proportions fetish is 1 and the thickness of hips < 20:
					say "You feel your hips widen in order to prepare for your inevitable labour!";
				HipUp 1;
		if the semen volume of vagina is 30:[Here we choose the father and check for and trigger super-pregnancies]
			if the father is the throne: 
				now the father is the new father;
				if the father is the throne: [This should never happen.  But just in case...]
					say "[PregnancyBugFlav]";
					now the pregnancy of the player is 0;
					now the semen volume of vagina is 1;
					WombSquirt 1; [This removes all alleged family monsters]
					CumThighsUp 30;
			if the number of things inseminating vagina > 1 and image cutscenes is 1, display figure of full term pregnancy;
			check for extreme pregnancies;
	otherwise if the semen volume of vagina > 30 and the semen volume of vagina < 50 and the pregnancy of the player is 1:
		let B be the largeness of belly;
		now R is a random number between 1 and (5 - (the pregnancy rate of the player * 2));
		if maximum-pregnancy-delay-tracker >= maximum-pregnancy-delay:
			now R is 1;
			now maximum-pregnancy-delay-tracker is 0;
		if debugmode > 0, say "Pregnancy growth check: [R] must be less than 2.  Slow preg tracker is [slow-pregnancy-tracker].";
		if R < 2, increase slow-pregnancy-tracker by 1;
		if R < 2 and (slow pregnancy is 0 or slow-pregnancy-tracker > 3):
			now slow-pregnancy-tracker is 0;
			increase the semen volume of vagina by 1;
			if R < 1, increase the semen volume of vagina by 1;
			if R < 0, increase the semen volume of vagina by 1;
			if R < -1, increase the semen volume of vagina by 1;
			if the largeness of belly > B, say PregGrowth;
			if the semen volume of vagina is 50 and the number of things inseminating vagina > 1 and image cutscenes is 1, display figure of giant pregnancy;
	otherwise if R < 2 and the player is not immobile and the player is not flying and the pregnancy of the player is 1 and the number of worn chastity cages is 0 and slow-pregnancy-tracker > 1 + (2 * slow pregnancy rate):
		let C be the children of the player;
		now summoning is 1;
		if vagina is actually occupied or there is worn undisplacable cursed pee covering clothing: [the vagina is blocked, so we delay the pregnancy and punish the player with contractions]
			Delay Labour;
		otherwise if the father is a monster:
			let M be the father;
			compute labour to M;[Dead fathers are handled in fatherhood of M]
			if successful-pregnancy is 1:
				increase C by 1;
				now the children of the player is C;
				compute fatherhood to M;
			[if there is worn temporarily-displaced clothing:
				say "You replace your [ShortDesc of list of worn temporarily-displaced clothing].";
				repeat with P running through worn temporarily-displaced clothing:
					replace P;]
		otherwise: [The father is inanimate]
			if inhuman pregnancy < 2:
				say "[DefaultBirthScene]";
			otherwise if the father is elder altar:
				compute god birth;
			otherwise:
				compute tentacle birth;
		if successful-pregnancy is 1:
			increase the children of the player by 1;
			now slow-pregnancy-tracker is 0;
			now the father is the throne;
			if the player is upright, try kneeling;
			now the semen volume of vagina is 0;
			now the pregnancy of the player is 0;	
			cancel father material of vagina;
		otherwise:
			now successful-pregnancy is 1; [labour was delayed, so we reset it so the game can try again]
		now summoning is 0.

To compute pregnancy clothing displacement:
	repeat with P running through worn pee covering clothing:
		if P is displacable:
			say "You can't help but instinctively pull your [P] out of the way!";
			displace P;
		otherwise:
			say "You instinctively pull your [P] far enough off of you to get it out of the way of your [vagina].".

[!<DecideWhichNumberIsSlowPregnancyRate>+

REQUIRES COMMENTING

+!]
To decide which number is slow pregnancy rate:
	decide on 0. [can balance this later if needed]

[!<SayPregFlav>+

REQUIRES COMMENTING

+!]
To say PregFlav:
	say "[bold type][if the player is upright]You fall to your knees as your[otherwise]Your[end if] cervix starts dilating furiously.[roman type]  [if the bimbo of the player < 13][first custom style][one of]It's going to come out, I can't stop it![or]Not now, not again...[stopping][otherwise][second custom style][one of]I'm going to be a mother![or]I wonder how many kids I'm going to end up with?[or]I just keep popping them out, don't I?[or]I just love being bred![stopping][end if][roman type][line break]";

[!<SayDefaultBirthScene>+

REQUIRES COMMENTING

+!]
To say DefaultBirthScene:
	compute pregnancy clothing displacement;
	say "[PregFlav]You feel yourself start to give birth.  You feel a burning desire for the father of the child to appear, but nobody does, and without the father there to assist with the delivery you feel yourself begin to pass out due to the pain.  In your groggy state you think you see some cherubic angels appear and begin to take the baby up into the heavens.  [second custom style]'Don't worry [TitleBimbo], we'll take care of this one for you.  Good luck on your quest!'[roman type][line break]When you properly regain your senses, there are no babies, no cherubs, just you on the floor with a rapidly deflating belly and your vaginal juices sprayed across the ground below your crotch.[if the pregnancy rate of the player is 1][line break]Deep down, you can feel your womb crying out to begin the process all over again.[end if]";
	if the pregnancy rate of the player < 2, increase the pregnancy rate of the player by 1.

[!<ComputeTentacleBirth>+

REQUIRES COMMENTING

+!]
To compute tentacle birth:
	compute pregnancy clothing displacement;
	say "[PregFlav][one of]You are [if the bimbo of the player < 13]horrified[otherwise]enthralled[end if] as you see a slimy tentacle about as thick as an ordinary penis push its way out of your [vagina] quickly followed by several more.  [or]You [if the bimbo of the player < 13]wince with fear and then shudder with shame when[otherwise]brace yourself with gleeful anticipation when[end if] you begin to feel the familiar dark red tentacles begin to push themselves out of your [vagina].  [stopping]";
	if image cutscenes is 1, display figure of tentacle cutscene 1;
	say "They all wrap around your hips and clench tightly as the monster inside you slowly and determinedly pries itself from your struggling hole.  The slow movement of the huge dark red creature is accompanied by lewd squelches and slurps and some loud moaning, which you then realise is coming from yourself.  Your [vagina] is forced to stretch further still as the critter reaches its widest point at your entrance and then with a loud POP it flies out and lands on the ground.  [one of]You gaze with [if the bimbo of the player < 13]terror[otherwise]wonder[end if] at your 'child': a [if extreme proportions fetish is 1]beachball sized[otherwise]basketball sized[end if] heap of vulnerable looking flesh with a single eye and several phallic tentacled appendages.  Before your eyes its flesh starts to slowly solidify and it gives you a long and seemingly thoughtful stare before dragging itself out of sight with its tentacles.[or]Once again you watch it start to build its strength and drag itself away.[stopping]";
	let T be a random off-stage living tentacles;
	if there is a worn laurel wreath and T is clothing:
		repeat with O running through worn dresses:
			say "Your [O] vanishes!";
			destroy O;
		repeat with O running through worn skirts:
			say "Your [O] vanishes!";
			destroy O;
		say "[bold type]You feel a sudden wet feeling crawl up your body to your neck, where it settles as a slight pressure. With surprising speed, a nest of warm, slimy tentacles begins to wrap around your body. For some reason, you feel very... comforted by their presence.[roman type]";
		summon T cursed;
		now the raw-magic-modifier of T is the children of the player / 2;
	let M be a random off-stage tentacle monster;
	compute set up M.

[!<ComputeGodBirth>+

REQUIRES COMMENTING

+!]
To compute god birth:
	compute pregnancy clothing displacement;
	say "[PregFlav]As you feel yourself start to give birth, suddenly a group of veiled women appear from nowhere to surround you! Suddenly, a cascade of milky slime begins to issue forth from you, pooling at your knees. The women begin to chant ominously as the slime continues to pour out of you, and you already see it swirling and flowing as if alive. As the flow finally stops, one of the women approaches with a large bowl, which the slime flows up into. They then vanish back into the shadows.";
	if doom counter > 0, increase doom counter by 150;
	if the humiliation of the player >= 40000 and there is no worn cultist veil:
		let H be a random off-stage cultist veil;
		if H is actually summonable:
			summon H;
			say "Your vision slightly dims as a black silk veil appears over your face. Somehow you feel comforted, as though you no longer need to be an individual anymore.";

[!<DelayLabour>+

REQUIRES COMMENTING

+!]	
To Delay Labour:
	if the player is a fertility goddess:
		say "A sudden contraction sends a small, manageable amount of pain shooting from your womb to the rest of your body.[line break][if the bimbo of the player < 7 and the father is alive monster and the father is not regional alive monster][one of][first custom style]Okay, by staying away from [the father] I can prevent myself from having to give birth again...[or][stopping][otherwise if the bimbo of the player < 7][one of][first custom style]Okay, by keeping my [vagina] covered I think can prevent myself from having to give birth again...[or][stopping][otherwise][one of][second custom style]I just love being massive and pregnant, why would I want to give birth and have to start the process all over again?[or][stopping][end if][roman type][line break]";
	otherwise:
		say "A sudden contraction sends pain shooting from your womb to the rest of your body.  [if the player is upright]The contraction is so intense that you are forced to your knees.  [end if][if the father is alive monster and the father is not regional alive monster]You are filled with a desire to find [the father].[otherwise]You should probably make sure the exit to your vagina is clear![end if]";
		if the player is upright, try kneeling;
	now successful-pregnancy is 0.

[!<SayPregnancyBugFlav>+

REQUIRES COMMENTING

+!]
To say PregnancyBugFlav:
	say "In some weird twist of this virtual game, you can literally feel the moment where someone up high decides you don't deserve a pregnancy, presses a button, and all the body mass inside you turns into liquid!  Your poor womb is now just completely over-full of [semen]!  It all comes gushing out in a torrent, coating your thighs and the ground.".

[!<CheckForExtremePregnancies>+

REQUIRES COMMENTING

+!]
To check for extreme pregnancies:
	if extreme proportions fetish is 1 and inhuman pregnancy > 0 and the father is not the throne: [Super-pregnancies are go]
		if the father is a minotaur or the father is vines or the father is lake monster or the father is living belt of sturdiness or the father is hellhound:
			now the semen volume of vagina is 31;
		if the father is creampie pole trap and inhuman pregnancy is 2 and a random number between 1 and 5 >= 2:
			now the semen volume of vagina is 31;
		if the father is djinn:
			now the semen volume of vagina is 31.



Pregnancy ends here.
