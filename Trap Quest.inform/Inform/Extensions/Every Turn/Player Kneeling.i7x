Player Kneeling by Every Turn begins here.


[!<ComputePlayerKneeling>+

REQUIRES COMMENTING

+!]
To compute player kneeling:
	if diaper quest is 0 and the location of the player is Dungeon19:
		if the soreness of asshole > 7:
			say "While on your knees, you get a very strong whiff of the stench in this room. It takes you over the edge and you start to faint.";
			now delayed fainting is 1;
			now the soreness of asshole is 7;
			now the fainting reason of the player is 3;
	if the player is able to breathe:
		compute fatigue loss;
	if the player is not vine fucked, compute vines kneeling;
	otherwise compute vines fucking;
	compute pink smoke.

To decide which number is fatigue bonus:
	decide on 5.

[!<ComputeFatigueLoss>+

REQUIRES COMMENTING

+!]
To compute fatigue loss:
	if the fatigue of the player > fatimod + fatigue bonus:
		let F be 0;
		if the player is tired, now F is 1;
		if debuginfo > 1, say "[input-style]Fatigue recovery turn ([fatimod]): [the fatigue of the player] - ([fatimod]+[fatigue bonus]) -> ";
		FatigueDown fatimod + fatigue bonus;
		if debuginfo > 1, say "[the fatigue of the player] | [the buckle threshold of the player][roman type][line break]";
		if F is 1 and the player is not tired, say "Your legs are starting to feel a bit better.";
		increase fatimod by 1;
	otherwise if the fatigue of the player > 0:
		now the fatigue of the player is 0;
		if the body soreness of the player < 10, say "Your legs feel [if the body soreness of the player is 0]completely rested[otherwise]ready to go[end if].".

[!<ComputePinkSmoke>+

REQUIRES COMMENTING

+!]
To compute pink smoke:
	if the location of the player is smoky and the player is not flying and the player is able to breathe:
		let R be a random number between 1 and 12;
		if the player is not able to breathe, now R is 0;
		if diaper quest is 1:
			if the player is male and a random number between 1 and 3 is 1, now R is 7; [penis shrink]
			otherwise now R is 1; [arousal]
		if the player is in School34 and a random number between 1 and 8 > 1, now R is 1; [arousal]
		if (the player is a flatchested trap or (diaper quest is 1 and the player is male)) and R > 6:
			say "You lightly cough as your position on your knees forces you to breathe in the [if the player is in the Mansion]blackish-green[otherwise]pink[end if] smoke in this room.";
			unless the size of penis <= min penis size:
				PenisDown 1;
				say "Your penis [Shrink]s into a [ShortDesc of penis].";
		otherwise if R > 6 and diaper quest is 0:
			say "You lightly cough as your position on your knees forces you to breathe in the [if the player is in the Mansion]blackish-green[otherwise]pink[end if] smoke in this room. [unless the player is top heavy][one of][or]It feels a little more difficult to breathe.[or]Your boobs visibly grow.[or]Your chest expands outwards![as decreasingly likely outcomes][end if]";
			Bustup 1;
		otherwise if R is 6:
			say "You lightly cough as your position on your knees forces you to breathe in the [if the player is in the Mansion]blackish-green[otherwise]pink[end if] smoke in this room. [unless the blondeness of hair is 3]Your hair feels tingly.[end if]";
			HairBlondeUp 1;
		otherwise if R is 5:
			say "You lightly cough as your position on your knees forces you to breathe in the [if the player is in the Mansion]blackish-green[otherwise]pink[end if] smoke in this room. [unless the redness of hair is 3]Your hair feels strange.[end if]";
			HairRedUp 1;
		otherwise if R is 0:
			say "[one of]You would be breathing in the [if the player is in the Mansion]blackish-green[otherwise]pink[end if] in this room, but you can't breathe at the moment![or][stopping]";
		otherwise if the arousal of the player + 1000 >= maximum arousal:
			say "You lightly cough as your position on your knees forces you to breathe in the [if the player is in the Mansion]blackish-green[otherwise]pink[end if] smoke in this room.";
			now auto is 1;
			if the player is able to masturbate:
				say "You're just way too horny - there is nothing you can do except immediately begin to masturbate!";
				try masturbating;
			otherwise:
				say "You are so incredibly horny but can't masturbate [if the player is wrist bound behind]with your hands bound behind your back[otherwise]right now[end if]! [if the player is not a pervert]Inappropriate[otherwise]Graphic[end if] sexual fantasies fill your head.";
				SexAddictUp 1;
				decrease the arousal of the player by 4000;
				update arousal;
			now auto is 0;
		otherwise:
			say "You lightly cough as your position on your knees forces you to breathe in the [if the player is in the Mansion]blackish-green[otherwise]pink[end if] smoke in this room. [if the player is a bit horny][line break][otherwise]You feel all tingly inside.[end if]";
			arouse 1000.

[!<breathingBlockingRules:Rulebook>*

REQUIRES COMMENTING

*!]
The breathing blocking rules is a rulebook.

[!<PersonIsableToBreathe>+

REQUIRES COMMENTING

+!]
Definition: a person (called P) is able to breathe:
	follow the breathing blocking rules;
	if the rule succeeded, decide no;
	decide yes.


Player Kneeling ends here.

