Wooden Horse Traps by Traps begins here.


A wooden horse is a kind of trap. The text-shortcut of a wooden horse is "wdh". The printed name of wooden horse is "[TQlink of item described]wooden horse[TQxlink of item described][verb-desc of item described]".

To say EnvironmentDesc of (T - a wooden horse):
	say "A large wooden horse lies dormant on the ground. ".

To say ShortDesc of (T - a wooden horse):
	say "wooden horse".

To decide which number is the girth of (T - a wooden horse):
	decide on 1.

To compute turn trap effect of (T - a wooden horse):
	if T is penetrating a fuckhole:
		compute horse effect of T.

[!<YourselfIsHorseStuck>+

Returns yes if the player is stuck on a wooden horse.

+!]
Definition: yourself is horse stuck:
	if the number of wooden horses penetrating a fuckhole > 0, decide yes;
	decide no.

Section 1 Painted Horse Trap

A painted horse is a kind of wooden horse. The description of a painted horse is "A large block of triangular wood that ends in a thin point at the top. A carved block of wood sits at the front, painted to make it resemble an actual horse. On top of the horse's head are 5 buttons. [5 - the number of entries in list of possible horse effects] buttons have already been pressed.". There are 3 potentially pressure potentially sticky painted horses. Understand "button", "buttons" as painted horse.


Check pushing painted horse:
	try HorsePressing the noun instead;

HorsePressing is an action applying to one thing.
Check HorsePressing:
	if the noun is not painted horse, say "There aren't any buttons to press on that." instead;
	if the noun is not penetrating asshole, say "But you aren't on it any more!" instead;
Carry Out HorsePressing:
	now seconds is 3;
	let R be the number of entries in list of possible horse effects;
	let B be nothing;
	if R > 0:
		now R is a random number between 1 and R;
		now B is entry R of list of possible horse effects;
		remove B from the list of possible horse effects;
	if B is horse-alarm:
		add B to the list of current horse effects;
		say "You press the button, and the sound of extremely loud neighing starts coming from the horse, like some kind of alarm!  That's going to attract the attention of anything nearby... [if the bimbo of the player > 14 and the latex-transformation of the player < 7][line break][second custom style]'Yippee, everyone come look at me riding this horsey!  If you help me down I'll suck your [manly-penis]...'[otherwise][line break][variable custom style]Uh-oh...[end if][roman type][line break]";
	otherwise if B is horse-cuffs:
		let F be a random fake nails;
		if the silicone volume of breasts > 0 and F is actually summonable:
			say "Huge pink fake nails appear on each of your fingers!  You are immediately filled with a horrible sense of dread; almost all you can think about is [if the player is horny]how horny you are and [end if]how awful, and painful, it would be if any of your nails were to break. The invasive thought is so powerful that you also feel significantly weaker and slower as your mind makes you think twice about every action you take.";
			summon F cursed;
		otherwise if the player is not wrist bound and the class of the player is not living sex doll:
			say "Leather cuffs appear around your wrists!  [if the bimbo of the player > 13][line break][second custom style]Ooh, how kinky.[otherwise][line break][variable custom style]Fuck...[end if][roman type][line break]";
			let W be a random off-stage pair of wristcuffs;
			if W is clothing:
				summon W locked;
				now W is wrist-bound-in-front;
		otherwise:
			say "Nothing seems to happen."; [TODO think of something to do here]
	otherwise if B is horse-blade:
		say "Blades shoot out of the sides of the wooden horse and up either side of you with perfect precision, right next to your hips.";
		let slice-count be 0;
		repeat with C running through worn clothing:
			if C is knickers or C is skirt or C is overdress or C is trousers or C is suspenders:
				unless C is overdress and C is not crotch covering:
					say "Your [printed name of C] is ripped and destroyed!";
					destroy C;
					increase slice-count by 1;
		if the slice-count is 0, say "If there was any clothing covering your hips, it would probably have been destroyed.";
	otherwise if B is horse-hair:
		say "You let out an involuntary horse whinny. [line break][variable custom style]Well that was weird...[roman type][line break]";
		HairUp 4;
	otherwise if B is horse-disable or R is 0:
		now the noun is not penetrating vagina;
		now the noun is not penetrating asshole;
		now the noun is triggered;
		say "The horse [if horse-vibrations is listed in the list of current horse effects]stops vibrating and [end if]gracefully descends until you can stand and walk away.".

Understand "press [something]", "push button on [something]", "press button on [something]", "pr [something]" as HorsePressing.



[!<horseVibrations:Thing>*

REQUIRES COMMENTING

*!]
[!<horseAlarm:Thing>*

REQUIRES COMMENTING

*!]
[!<horseDisable:Thing>*

REQUIRES COMMENTING

*!]
[!<horseCuffs:Thing>*

REQUIRES COMMENTING

*!]
[!<horseBlade:Thing>*

REQUIRES COMMENTING

*!]
[!<horseHair:Thing>*

REQUIRES COMMENTING

*!]
The horse-vibrations, the horse-alarm, the horse-disable, the horse-cuffs, the horse-blade and the horse-hair are things.

[!<listOfPossibleHorseEffects:ListOfThings>*

REQUIRES COMMENTING

*!]
The list of possible horse effects is a list of things that varies.

[!<listOfCurrentHorseEffects:ListOfThings>*

REQUIRES COMMENTING

*!]
The list of current horse effects is a list of things that varies.

This is the spawn initial woods painted horse traps rule:
	if diaper focus is 0 and tough-shit is 1:
		let R be a random pressure untrapped trappable placed jungle room;
		let T be a random off-stage painted horse;
		deploy T in R.
The spawn initial woods painted horse traps rule is listed in the set up woods traps rules.

To trigger (Y - a painted horse):
	now the motion of the player is 0;
	now the reset-timer of Y is 90000; [Doesn't reset]
	now Y is not untriggered;
	now Y is revealed;
	say "A giant triangular block of wood with a horse head at the front shoots out from the ground beneath you, [if the player is prone]forcing you upright and [end if]pulling you up until your feet aren't touching the floor. All of your weight is forced onto the top corner of this wooden 'horse' and more specifically onto your [if the player is female][vagina] and [end if][asshole]. [if the latex-transformation of the player > 3]Your rubbery crotch is unaffected by the weight on it. [otherwise if the player is diapered]The padding of your diaper is helping at bit but the pain is still unmanageable. [otherwise if the weight of the player < 5]Your light weight is helping at bit but the pain is still unmanageable. [otherwise if the weight of the player > 15]Your weight is making it even worse!  [end if]You're going to quickly get more sore and if you stay on here for too long, you'll definitely faint!  [one of]Looking forward, you notice that[or]Once again you can see that[stopping] there are five buttons embedded into the top of the head of the horse. [one of]Maybe one of them will let you down?[or]One of them should let you down.[stopping]";
	now the stance of the player is 0;
	now Y is penetrating asshole;
	if the player is female, now Y is penetrating vagina;
	truncate the list of possible horse effects to 0 entries;
	truncate the list of current horse effects to 0 entries;
	add the horse-disable to the list of possible horse effects;
	add the horse-cuffs to the list of possible horse effects;
	add the horse-blade to the list of possible horse effects;
	add the horse-alarm to the list of possible horse effects;
	add the horse-hair to the list of possible horse effects.

To compute horse effect of (T - a painted horse):
	let W be the weight of the player;
	if the player is diapered, decrease W by 5;
	if W < 3, now W is 3;
	let R be a random number between -1 and W;
	if horse-alarm is listed in the list of current horse effects:
		repeat with M running through nearby uninterested unfriendly monsters:
			if the boredom of M is 0, now M is interested;
			if M is gladiator and the player is top heavy, now M is uninterested; [Should never happen anyway, horse isn't in the dungeon]
			if M is interested, say "The nearby [M] seems to notice the wooden horse's 'alarm' and heads your way...";
	if horse-vibrations is listed in the list of current horse effects and W > 2:
		say "The vibrations of the wooden horse continue to overstimulate your [asshole][if the player is female] and [vagina][end if].";
		if the player is female:
			if the soreness of vagina < 10 or the delicateness of the player > 15, ruin vagina;
		if the soreness of asshole < 10 or the delicateness of the player > 15, ruin asshole;
		otherwise DelicateUp 1;
		arouse 400; [Extra arousal hardcoded in here]
	otherwise if W > 2 and delayed fainting is 0:
		compute horse fainting.

To compute horse fainting:
	if the soreness of asshole is 10 and the player is male and a random number between 1 and 4 is 1 and the delicateness of the player > 15:
		say "You can't take the pressure on your crotch any more!  You pass out.";
		now the delayed fainting is 1;
		now the fainting reason of the player is 20;
	otherwise if the soreness of asshole < 10:
		increase the soreness of asshole by 1;
		say "The pressure on your [asshole] is making it steadily more sore!";
	otherwise:
		say "You can't help but cry as the pressure on your [asshole][if the soreness of vagina is 10] and [vagina][end if] continues to cause you huge amounts of pain!";
		DelicateUp 1;
	if the player is female:
		if the soreness of vagina is 10 and the soreness of asshole is 10 and a random number between 1 and 2 is 1 and the delicateness of the player > 15:
			say "You can't take the pressure on your crotch any more!  You pass out.";
			now the delayed fainting is 1;
			now the fainting reason of the player is 20;
		otherwise if the soreness of vagina < 10:
			increase the soreness of vagina by 1;
			say "The pressure on your [vagina] is making it steadily more sore!".
	

Section 2 Wild Horse Trap

[The wild horse is a vibrating version of the normal horse that the player needs to try and "tame". If the player can't use the bit to control it within 3-4 turns, they will be punished in some way.]

A wild horse is a kind of wooden horse. The description of a wild horse is "A large block of triangular wood that ends in a thin point at the top. A wooden horse's head sits at the front with a large, plastic bit[if item described is penetrating a fuckhole] which you could [bold type]pull[roman type][end if] resting on the nape of its neck.". There are 3 potentially pressure potentially sticky wild horses. Understand "plastic bit", "bit", "broncho", "bronco", "cord", "rein", "reins", "rope" as wild horse.

This is the spawn initial woods wild horse traps rule:
	if diaper quest is 0:
		let R be a random pressure untrapped trappable placed jungle room;
		let T be a random off-stage wild horse;
		deploy T in R.
The spawn initial woods wild horse traps rule is listed in the set up woods traps rules.

To trigger (Y - a wild horse):
	now the motion of the player is 0;
	now the TrapNo of Y is a random number between 1 and 3;
	now the reset-timer of Y is 500;
	now Y is not untriggered;
	now Y is revealed;
	say "A giant triangular block of wood with a horse head at the front shoots out from the ground beneath you, [if the player is prone]forcing you upright and [end if]pulling you up until your feet aren[']t touching the floor. All of your weight is forced onto the top corner of this wooden 'horse' and more specifically onto your [if the player is female][vagina] and [end if][asshole]. You hear a pre-recorded whinny as the horse begins to 'gallop' through the clearing, each movement rubbing small grooves in the wood up against your crotch. [if the latex-transformation of the player > 3]Your rubbery crotch is unaffected by the weight on it. [otherwise if the player is diapered]The padding of your diaper is helping at bit but the pain is still unmanageable. [otherwise if the weight of the player < 5]Your light weight is helping at bit but the pain is still unmanageable. [otherwise if the weight of the player > 15]Your weight is making it even worse!  [end if]You look at the plastic cord around its neck. Looks like you're going to have to tame this wild horse!";
	now the stance of the player is 0;
	now Y is penetrating asshole;
	if the player is female, now Y is penetrating vagina.

To compute horse effect of (T - a wild horse):
	let W be the weight of the player;
	if the player is diapered, decrease W by 5;
	if W < 3, now W is 3;
	let R be a random number between -1 and W;
	say "The ridges of the horse continue to overstimulate your [asshole][if the player is female] and [vagina][end if].";
	if the player is female, ruin vagina;
	otherwise ruin asshole; [Otherwise horse is a bit imbalanced towards punishing females]
	arouse 400; [Extra arousal hardcoded in here]
	if the TrapNo of T < 1:
		now T is not penetrating vagina;
		now T is not penetrating asshole;
		now T is triggered;
		let R be a random number between 1 and 4;
		if R < 3 and mythical creature fetish is 1:
			say "The horse tips forward suddenly, flinging you right into its path. A compartment opens in the bottom as it bears down on you, an incredibly lifelike rubber horsecock slides out. You barely have time to get out of the way before it plunges deep inside you, dragging your helpless body along the ground as the teetering motions drive the dildo in and out of your [asshole]. Semen flows inside of you as the horse slowly grinds to a halt, leaving a creamy line of white on your back as the dildo pops out.";
			ruin asshole times 3;
			CumThighsUp 1;
			SemenPuddleUp 3;
			AssFill a random number between 3 and 5;
		otherwise:
			say "The horse comes to a sudden halt, tipping forward with incredible speed and power. You are flung off the horse like a cowgirl on a bucking bronco and are sent rolling into a tree. [line break][variable custom style]Aaaah!  Ouch.[roman type][line break]";
			FatigueUp W;
			bodyruin W / 2;[TODO: light players go flying]
		try kneeling;
	otherwise if W > 2 and delayed fainting is 0:
		compute horse fainting;
	decrease the TrapNo of T by 1.

[!<CheckPullingWildHorse>+

REQUIRES COMMENTING

+!]
Check pulling wild horse:
	try horsePulling the noun instead.

HorsePulling is an action applying to one thing.

[!<CheckHorsePulling>+

REQUIRES COMMENTING

+!]
Check horsePulling:
	unless the noun is wild horse, say "There[']s nothing to pull." instead;
	unless the player is horse stuck, say "But you aren[']t on it?" instead;

[!<CarryOutHorsePulling>+

REQUIRES COMMENTING

+!]
Carry Out horsePulling:
	now seconds is 3;
	let A be a random number between 5 and the strength of the player;
	if A > (the TrapNo of the noun) + 5 or the TrapNo of the noun < 1:
		say "You pull hard on the bit, forcing the horse to divert from its path and skid to the edge of the clearing. It emits a pre-recorded whinny and slowly lowers until you are able to stand on two feet.";
		now the noun is not penetrating vagina;
		now the noun is not penetrating asshole;
		now the noun is triggered;
	otherwise:
		say "You pull hard on the bit, but the horse doesn[']t leave its path, the pre-recorded galloping sound continuing to play as it rounds the clearing.".



Wooden Horse Traps ends here.

