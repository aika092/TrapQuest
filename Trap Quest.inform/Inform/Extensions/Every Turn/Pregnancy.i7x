Pregnancy by Every Turn begins here.

The father is a thing that varies. The father is the throne.

Definition: a thing is father material: decide no.

Definition: a thing (called M) is family:
	if M is inseminating vagina and M is father material and inhuman pregnancy >= 2:
		decide yes;
	decide no.

Definition: an elder altar (called M) is family:
	if M is inseminating vagina and M is father material:
		if inhuman pregnancy is 0:
			decide no;
		decide yes;
	decide no.

Definition: a creampie pole trap (called M) is family:
	if M is inseminating vagina and M is father material:
		decide yes;
	decide no.

Definition: a monster (called M) is family:
	if M is inseminating vagina and M is father material:
		if inhuman pregnancy is 0:
			if M is male and M is intelligent and M is human, decide yes;
		otherwise if inhuman pregnancy is 1:
			if M is intelligent, decide yes;
		otherwise if inhuman pregnancy >= 2:
			decide yes;
	decide no.

Definition: a monster is human: decide no.
Definition: a monster is infernal: decide no.

Definition: a minotaur (called M) is family:
	if M is inseminating vagina and M is father material:
		if inhuman pregnancy is 0:
			decide no;
		decide yes;
	decide no.

To print fatherly things:
	say "List of family things: [list of family things].";
	unless the father is the throne, say "Current selected father: [the father].".

Family Printing is an action applying to nothing.

[Check Family Printing:
	if debugmode < 2, say "Debug mode not enabled." instead.]

Carry out Family Printing:
	print fatherly things.
Understand "who's the daddy" as Family Printing.

[NB the priority order for fatherhood. What can I say, some stuff has stronger sperm.]
To decide which thing is the new father:
	[if there is a family tentacle monster, decide on a random family tentacle monster;
	if there is a family elder altar, decide on a random family elder altar;
	if there is an alive regional family monster, decide on a random alive regional family monster;
	if there is an alive family monsters, decide on a random alive family monster;]
	if there is an on-stage family thing, decide on a random on-stage family thing;
	if there is an off-stage family sex doll, decide on a random off-stage family sex doll;
	[if there is an off-stage family monsters, decide on a random off-stage family monster;] [the plural is on purpose because i7 couldn't understand it without for some reason]
	if there is a family thing, decide on a random family thing;
	decide on the throne.

[This phrase is used elsewhere so we encapsulate it in a function to make sure the text substitution behaves correctly.]
To say PregGrowth:
	let P be a random thing inseminating vagina;
	say "You feel your belly swell even further as [if the father is not the throne][PregGrowth of the father][otherwise if the number of things inseminating vagina is 1][PregGrowth of P][otherwise]whatever is[end if] inside your womb [one of]starts to grow![or]continues to grow![if the womb volume of vagina is 38 and the number of things inseminating vagina > 1][line break][variable custom style]This definitely isn't a human baby I'm carrying, is it...[roman type][line break][end if][stopping]".

To say PregGrowth of (T - a thing):
	say "whatever is".

To say child:
	say "[one of]child[or]baby[or]child[or]baby[or]offspring[or]heir[or]brood[or]get[or]spawn[as decreasingly likely outcomes]".

Successful-Pregnancy is a number that varies.
Successful-Pregnancy is 1. [Used to track whether labour was delayed]

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
	decide on S * 2. [can balance this later if needed]

[!<maximumPregnancyDelayTracker:Integer>*

This number ticks upwards each turn. When it hits a certain limit (usually maximum-pregnancy-delay), we progress the pregnancy.

*!]
maximum-pregnancy-delay-tracker is a number that varies.

[!<computePregnancy>+

Every turn we call this function to calculate what happens to the player's pregnancy.

+!]
To compute pregnancy:
	increase maximum-pregnancy-delay-tracker by 1;
	if the pregnancy of the player is 3:
		if maximum-pregnancy-delay-tracker <= 20:
			if debuginfo > 1, say "[line break][input-style]Egg pregnancy ticker: [maximum-pregnancy-delay-tracker] | (20.5) minimum time before eggs laid[roman type][line break]";
		otherwise:
			let R be a random number between 20 and 500;
			if the largeness of belly >= max belly size, now R is -1;
			if debuginfo > 1, say "[line break][input-style]Egg pregnancy check: [if R is -1]BELLY AT MAXIMUM SIZE - AUTOMATIC EGG BIRTH[otherwise]RNG(20~500) [R] | [maximum-pregnancy-delay-tracker].5 eggs hold on threshold[end if][roman type][line break]";
			if R < maximum-pregnancy-delay-tracker:
				let P be a random thing penetrating vagina;
				if P is a thing:
					if R > 0, say "You feel the egg[if the total egg count of vagina > 1]s[end if] in your belly try to come out, but fail because of [NameDesc of P].";
				otherwise:
					compute forced womb egg laying;
	otherwise if the womb volume of vagina < 30: [In here we compute the normal growth of a pregnancy.]
		if debuginfo > 1 and the pregnancy of the player is 1 and (slow pregnancy is not 2 or maximum-pregnancy-delay-tracker <= 1), say "[line break][input-style]Pregnancy ticker: [maximum-pregnancy-delay-tracker] | [maximum-pregnancy-delay].5[roman type][line break]";
		if maximum-pregnancy-delay-tracker >= maximum-pregnancy-delay or (slow pregnancy is 2 and maximum-pregnancy-delay-tracker > 1): [if slow pregnancy is 2 that means we grow babies super super fast]
			now maximum-pregnancy-delay-tracker is 0;
			increase slow-pregnancy-tracker by 1;
			let M be a random off-stage maternity bra;
			let B be the largeness of belly;
			if debuginfo > 1 and the pregnancy of the player is 1 and slow pregnancy is 0, say "[line break][input-style]Pregnancy progress: Checks since last growth ([slow-pregnancy-tracker]) | (1.5) Next pregnancy growth threshold[roman type][line break]";
			if the pregnancy of the player is 1 and (slow pregnancy > 0 or slow-pregnancy-tracker > 1): [If the pregnancy of the player is 2, this means pregnancy is paused. if slow pregnancy is 0, it takes twice as long]
				now slow-pregnancy-tracker is 0;
				increase the womb volume of vagina by 1; [1 or more, +1]
				if the womb volume of vagina > 30, now the womb volume of vagina is 30; [Important so that this doesn't get confused with a super-pregnancy]
			otherwise:
				if the womb volume of vagina < 25, now breastsEngorged is false;
				compute pregnancy annoyance;
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
					if there is a worn cursed pregnancy themed clothing and the player is not bottom heavy:
						say "You feel your hips widen in order to prepare for your inevitable labour!";
						HipUp 1;
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
			increase slow-pregnancy-tracker by 1;
			if debugmode > 0, say "Mega-pregnancy growth check: Slow preg tracker is [slow-pregnancy-tracker] | ([if slow pregnancy > 0]0[otherwise]1[end if].5) Next pregnancy growth threshold[roman type][line break]";
			if slow pregnancy > 0 or slow-pregnancy-tracker > 1: [if slow pregnancy is 0, it takes twice as long]
				now slow-pregnancy-tracker is 0;
				increase the womb volume of vagina by 1;
				if the largeness of belly > B or the womb volume of vagina is 50:
					say PregGrowth;
					if the womb volume of vagina is 50:
						say "[bold type]You feel like your mega-pregnancy has [one of]finally reached full term. You'll be ready to pop soon[or]once again finally reached full term[stopping].[roman type][line break]";
						cutshow figure of giant pregnancy for belly;
			otherwise:
				if the remainder after dividing the womb volume of vagina by 5 is 0, compute pregnancy annoyance;
	otherwise if maximum-pregnancy-delay-tracker >= maximum-birth-delay and the player is not immobile and the player is not flying and the pregnancy of the player is 1 and chastity-belt is not worn:
		now maximum-pregnancy-delay-tracker is 0;
		increase slow-pregnancy-tracker by 1;
		if debuginfo > 1, say "[line break][input-style]Birth progress: Full Term Time ([slow-pregnancy-tracker]) | ([slow birth rate].5) Birth Ready Threshold[roman type][line break]";
		if slow-pregnancy-tracker > slow birth rate:
			now auto is 1; [for displacing automatically]
			if portal-hotpants is worn and vagina is not actually occupied and the player is not in Hotel44:
				say "[PregFlav]Your baby is painfully born through the portal encasing your [vagina], no doubt emerging in the room with [NameDesc of pimp].[line break][variable custom style]I wish I could see [his of pimp] face. This must be quite the surprise.[roman type][line break]You end up on your knees, panting, but relieved[if the father is a human monster], confident in the knowledge that [NameDesc of pimp] will be ensuring that the baby is taken away and cared for[otherwise] that it's all over[end if].";
			otherwise if vagina is actually occupied or there is worn actually unavoidable cursed pee covering clothing: [the vagina is blocked, so we delay the pregnancy and punish the player with contractions]
				Delay Labour;
			otherwise if the father is a monster:
				let M be the father;
				compute labour to M;[Dead fathers are handled in fatherhood of M]
				if successful-pregnancy is 1:
					compute fatherhood to the father;
					if the father is human and extreme images visible is 1:
						if the father is dark skinned, cutshow figure of black birth;
						otherwise cutshow figure of white birth;
				if the class of the player is bride, compute housewife domestication;
			otherwise: [The father is inanimate]
				if inhuman pregnancy < 2 or (inhuman pregnancy >= 3 and the womb volume of vagina is 30): [If the stuff in brackets is true, we checked for an extreme pregnancy and purposefully chose not to give the player one this time.]
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
				progress quest of birth-quest;
			otherwise:
				now successful-pregnancy is 1; [labour was delayed, we still reset this flag so it's in the correct state for when we try again next time]
			now auto is 0;
		otherwise:
			compute pregnancy annoyance.

To compute pregnancy clothing displacement:
	repeat with P running through pee covering clothing:
		if P is displacable:
			say "You can't help but instinctively pull your [ShortDesc of P] out of the way!";
			displace P;
		otherwise:
			say "You instinctively pull your [ShortDesc of P] far enough off of you to get it out of the way of your [vagina].".

To say PregFlav:
	say "[bold type][if the player is upright]You fall to your knees as your[otherwise]Your[end if] cervix starts dilating furiously.[roman type] [if the bimbo of the player < 13][line break][first custom style][one of]It's going to come out, I can't stop it![or]Not now, not again...[stopping][otherwise][line break][second custom style][one of]I'm going to be a mother![or]I wonder how many kids I'm going to end up with?[or]I just keep popping them out, don't I?[or]I just love being bred![stopping][end if][roman type][line break]";

To say DefaultBirthScene:
	compute pregnancy clothing displacement;
	say "[PregFlav]You feel yourself start to give birth. You feel a burning desire for the father of the child to appear, but nobody does, and without the father there to assist with the delivery you feel yourself begin to pass out due to the pain. In your groggy state you think you see some cherubic angels appear and begin to take the baby up into the heavens.[line break][second custom style]'Don't worry [TitleBimbo], we'll take care of this one for you. Good luck on your quest!'[roman type][line break]When you properly regain your senses, there are no babies, no cherubs, just you on the floor with a rapidly deflating belly and your vaginal juices sprayed across the ground below your crotch.[if the pregnancy rate of the player is 1][line break]Deep down, you can feel your womb crying out to begin the process all over again.[end if]";
	if the pregnancy rate of the player < 2, increase the pregnancy rate of the player by 1.

To compute tentacle birth:
	compute pregnancy clothing displacement;
	say "[PregFlav][one of]You are [if the bimbo of the player < 13]horrified[otherwise]enthralled[end if] as you see a slimy tentacle about as thick as an ordinary penis push its way out of your [vagina] quickly followed by several more. [or]You [if the bimbo of the player < 13]wince with fear and then shudder with shame when[otherwise]brace yourself with gleeful anticipation when[end if] you begin to feel the familiar dark red tentacles begin to push themselves out of your [vagina]. [stopping]";
	cutshow figure of tentacle cutscene 1;
	say "They all wrap around your hips and clench tightly as the monster inside you slowly and determinedly pries itself from your struggling hole. The slow movement of the huge dark red creature is accompanied by lewd squelches and slurps and some loud moaning, which you then realise is coming from yourself. Your [vagina] is forced to stretch further still as the critter reaches its widest point at your entrance and then with a loud POP it flies out and lands on the ground. [one of]You gaze with [if the bimbo of the player < 13]terror[otherwise]wonder[end if] at your 'child': a [if extreme proportions fetish is 1]beachball sized[otherwise]basketball sized[end if] heap of vulnerable looking flesh with a single eye and several phallic tentacled appendages. Before your eyes its flesh starts to slowly solidify and it gives you a long and seemingly thoughtful stare before dragging itself out of sight with its tentacles.[or]Once again you watch it start to build its strength and drag itself away.[stopping]";
	if laurel wreath is worn and living tentacles is off-stage:
		PinkWardrobeUnclash living tentacles;
		say "[bold type]You feel a sudden wet feeling crawl up your body to your neck, where it settles as a slight pressure. With surprising speed, a nest of warm, slimy tentacles begins to wrap around your body. For some reason, you feel very... comforted by their presence.[roman type][line break]";
		class summon living tentacles;
	if there is a worn tattoo and the number of worn asscheek tattoos is 0 and a random number between 1 and 2 is 1:
		say "Suddenly a new tattoo appears on you!";
		summon tentacles tattoo;
		try examining tentacles tattoo;
	let M be a random off-stage tentacle monster;
	if M is a monster, compute birth set up of M;
	say "Deep in your core, you sense a yearning to [one of]become pregnant again.[or]use your womb to spawn more and more tentacle monsters into this world![stopping]";
	increase the pregnancy rate of the player by 1.

To compute infernal birth:
	let M be a random imp;
	let I be the number of off-stage imps;
	if I is 0:
		say "[PregFlav]You are overcome by a terrible feeling of dread as you begin to give birth to the evil creatures growing inside of you. The process is incredibly long and painful, and you almost pass out a few times from the pain. A portal opens up between your legs as the first of your red-skinned devil offspring is born, swallowing [him of M] up before you even have the chance to see what [he of M] looks like. The second, and finally the third birth pass in exactly the same way, and although you know it's probably for the best, you can't help feeling a pang of regret as the portal closes, severing your connection with your children forever.";
		DelicateUp 1;
	otherwise:
		let X be a random number between 1 and I;
		if X > 3, now X is 3;
		compute pregnancy clothing displacement;
		say "[PregFlav]You are overcome by a terrible feeling of dread as you begin to give birth to the evil creature[if X > 1]s[end if] growing inside of you. The process of delivering the [if X > 1]first [end if ]baby is incredibly long and painful, and you almost pass out a few times from the pain. [if X is 1]Finally, your red-skinned devil offspring is born, apparently fully aware and fully adult as [he of M] hops to [his of M] feet. Seeing your offspring all grown up like this fills you with a deep sense of fulfilment, although it's difficult to look past [his of M] nasty, lecherous expression[otherwise]The first red-skinned devil is born fully adult and fully aware, immediately jumping into action to assist in delivering [his of M] siblings. With [his of M] help, giving birth to [his of M] sibling passes much more smoothly, and a few minutes later, [X] infernal children are standing before you. Seeing your offspring all grown up like this fills you with a deep sense of fulfilment, although its difficult to look past the nasty, lecherous expressions on their faces[end if].";
		cutshow Figure of imp cutscene 2 for belly;
		StrengthUp 1;
		DexUp 1;
		DelicateUp 2;
		while X > 0:
			decrease X by 1;
			let N be a random off-stage imp;
			if N is a monster, compute birth set up of N.

To compute god birth:
	compute pregnancy clothing displacement;
	say "[PregFlav]As you feel yourself start to give birth, suddenly a group of veiled women appear from nowhere to surround you! Suddenly, a [cascade] of milky slime begins to issue forth from you, pooling at your knees. The women begin to chant ominously as the slime continues to pour out of you, and you already see it swirling and flowing as if alive. As the flow finally stops, one of the women approaches with a large bowl, which the slime flows up into. They then vanish back into the shadows.";
	if doom counter > 0, increase doom counter by 150;
	if the humiliation of the player >= 40000 and cultist veil is off-stage and cultist veil is actually summonable:
		summon cultist veil;
		say "Your vision slightly dims as a black silk veil appears over your face. Somehow you feel comforted, as though you no longer need to be an individual any more.".

To compute housewife domestication:
	if the father is bride-consort and the consummation of betrothal-quest is true:
		let D be a random worn overdress;
		if D is housewife dress:
			now D is charisma-influencing;
			if the raw-magic-modifier of D < 5:
				say "Your [D] turns into a ";
				increase the raw-magic-modifier of D by 1;
				say "[D]!";
		otherwise if D is clothing and D is removable:
			transform D into housewife dress;
		otherwise:
			class summon housewife dress;
		if D is worn:
			say "[variable custom style]I've been domesticated and bred... Just like a good little housewife...[roman type][line break]".

contractionTracker is a number that varies.
To Delay Labour:
	if the class of the player is fertility goddess:
		say "A sudden contraction sends a small, manageable amount of pain shooting from your womb to the rest of your body.[line break][if the semen addiction of the player < 7 and the father is alive monster and the father is not regional alive monster][one of][line break][first custom style]Okay, by staying away from [the father] I can prevent myself from having to give birth again...[or][stopping][otherwise if the semen addiction of the player < 7][one of][first custom style]Okay, by keeping my [vagina] covered I think can prevent myself from having to give birth again...[or][stopping][otherwise][one of][line break][second custom style]I just love being massive and pregnant, why would I want to give birth and have to start the process all over again?[or][stopping][end if][roman type][line break]";
	otherwise:
		say "A sudden contraction sends pain shooting from your womb to the rest of your body. [if the player is upright and contractionTracker > (slow pregnancy * 2)]The contraction is so intense that you are forced to your knees. [end if][if the father is alive monster and the father is not regional alive monster]You are filled with a desire to find [NameDesc of the father].[otherwise][NonAliveFatherBirthFlav of the father][end if]";
		if contractionTracker > slow pregnancy * 2:
			if the player is upright:
				try kneeling;
				cutshow figure of full term contraction for belly;
			otherwise:
				onlycutshow figure of full term contraction for belly;
			now contractionTracker is 0;
		otherwise:
			increase contractionTracker by 1;
			onlycutshow figure of full term contraction for belly;
	now successful-pregnancy is 0.

To say NonAliveFatherBirthFlav of (M - a thing):
	say "You should probably make sure the exit to your vagina is clear!".

To say PregnancyBugFlav:
	say "In some weird twist of this virtual game, you can literally feel the moment where someone up high decides you don't deserve a pregnancy, presses a button, and all the body mass inside you turns into liquid! Your poor womb is now just completely over-full of [semen]! It all comes gushing out in a torrent, coating your thighs and the ground.".

To check for extreme pregnancies:
	if inhuman pregnancy >= 3 and the father is not the throne: [Super-pregnancies are go]
		if the father is a minotaur or the father is vines or the father is lake monster or the father is clothing or the father is hellhound or the father is demon lord or the father is facehugger or the father is elder altar or the father is djinn or the father is tentacle monster or the father is centaur:
			now the womb volume of vagina is 31;
		if the father is creampie pole trap and (tentacle fetish is 1 or the player is getting unlucky):
			now the womb volume of vagina is 31;
			if tentacle fetish is 0, say "[if slow pregnancy > 2][bold type]You have just noticed that your belly is getting even bigger than a normal pregnancy. [end if][one of][line break][variable custom style]What the hell have I got growing inside me?! [or][stopping][roman type][GotUnluckyFlav]";
	if the womb volume of vagina is 31 and slow pregnancy > 2:
		now the womb volume of vagina is 50;
		cutshow figure of giant pregnancy for belly;
	if the womb volume of vagina is 30:
		cutshow figure of full term pregnancy for belly.

breastsEngorged is initially false.

[Being pregnant is no walk in the park]
To compute pregnancy annoyance:
	if the class of the player is not fertility goddess:
		if (the player is in Hotel18 or the player is in School17) and the stomach-food of the player < 2 and the player is able to eat and the player is not immobile and the player is not in danger:
			let T be feeding bowls;
			if the player is in School17, now T is food machine;
			say "Your pregnancy-hormone-addled brain suddenly gives you a deep craving for the [MediumDesc of T] in this room. Do you obey your cravings and eat up? ";
			if the player is bimbo consenting:
				let saved-secs be seconds;
				now seconds is -9999;
				try TQEating T;
				unless seconds is -9999:
					now another-turn is 1; [We're only adding another turn of time moving forward if the eating was successful]
				now seconds is saved-secs;
			otherwise:
				say "Unable to get the nutrients it needs from your stomach, your womb draws what it needs directly from your muscles. You feel a bit weaker...";
				StrengthDown 1;
		otherwise if the womb volume of vagina >= 20 and watersports mechanics is 1 and the player is not incontinent and the player is not bursting and a random number between 1 and 10 is 1:
			if the bladder of the player < 6, now the bladder of the player is 6;
			if the player is bursting, say "[bold type]Your unborn baby kicks hard down on your bladder.[line break][variable custom style]Oof![roman type][line break]You're suddenly desperate for the loo!";
		otherwise if breastsEngorged is false and the womb volume of vagina >= 25 and a random number between 1 and 8 is 1:
			say "You feel your pregnancy making your [BreastDesc] become more engorged and [if lactation fetish is 1]their lactation rate increasing[otherwise]sensitive[end if]!";
			BustUp 2;
			if lactation fetish is 1, increase the lactation rate of breasts by 3;
			otherwise BreastsSensitivityUp 2;
			now breastsEngorged is true;
		otherwise if a random number between 1 and 5 is 1 and the player is not very horny:
			say "[bold type]Your pregnancy-hormone-addled brain randomly and spontaneously flares up with arousal.[one of][or][line break][variable custom style]This is crazy, it feels like I want sex all the time at the moment...[or][stopping][roman type][line break]";
			arouse 3000;
		otherwise if the womb volume of vagina > a random number between 15 and 180 and the player is upright and the player is not very tired and the fatigue of the player > the buckle threshold of the player / 10:
			say "The weight of your unborn baby is making your feet and back ache. [bold type]You need to sit down and rest soon.[roman type][line break]";
			now the fatigue of the player is the very tired threshold of the player;
		otherwise if the womb volume of vagina > 15:
			say "Your unborn baby [one of]kicks vigorously[or]punches, kicks and wriggles[or]knees and elbows you from[at random] inside your womb.[if fatimod > 1][line break][variable custom style]It's... ugh... so difficult to build my energy back up when I can't even rest properly...[roman type][line break][end if]";
			FatigueUp the womb volume of vagina;
		otherwise:
			say "[one of]You feel a flutter in your belly. Was that your baby moving?[or][or][or][in random order]";
	otherwise if the womb volume of vagina > 15:
		say "Your unborn baby [one of]kicks vigorously[or]punches, kicks and wriggles[or]knees and elbows you from[at random] inside your womb, but your magically protected womb prevents you from suffering any negative effects.";
	otherwise:
		say "[one of]You feel a flutter in your belly. Was that your baby moving?[or][or][or][in random order]".

Pregnancy ends here.
