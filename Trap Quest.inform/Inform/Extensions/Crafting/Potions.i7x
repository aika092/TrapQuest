Potions by Crafting begins here.



A potion is a kind of alchemy product.  Understand "potions" as a potion.

Section 1 Potion of Balance

A potion of balance is a kind of potion.  The printed name of potion of balance is "[TQlink of item described]potion of balance[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The printed plural name of potion of balance is "[TQlink of item described]potions of balance[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of potion of balance is "pb".  The description of potion of balance is "A round clear hip flask filled with a dose of smoky [appearance corresponding to an Magic of 4 in the Table of Drinks] liquid.  It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".  There are 3 potion of balance. 

To decide which number is the alchemy key of (A - a potion of balance):
	decide on 6.

Carry out quaffing potion of balance:
	say "You pull out the stopper and down the smoky liquid.";
	let flav-said be 0;
	if the noun is not cursed and the heel skill of the player < 10:
		say "You feel [unless there are worn heels]like you'll be [end if]more steady standing in heels!  ";
		increase the raw heel skill of the player by 1;
	otherwise if the noun is cursed:
		if there are worn heels and the player is upright, say "You feel [unless there are worn heels]like you'll be [end if]less steady walking in heels!  This must have been cursed!  ";
		decrease the raw heel skill of the player by 2;
	if diaper quest is 0:
		while the largeness of breasts > the flesh volume of hips + 1 and the player is not bottom heavy:
			let B be the flesh volume of breasts;
			BustDown 3;
			if the flesh volume of breasts < B:
				if flav-said is 0, say "Some of the weight in your [BreastDesc] starts to disappear, and reappear in your [ShortDesc of hips]!";
				now flav-said is 1;
				if weight gain fetish is 0, HipUp 1; [This increases both thickness and flesh volume]
				otherwise AssSwell 2;
				if the player is bottom heavy, break;
			otherwise:
				break; [If we're unable to shrink breasts further it's time to end]
		while the largeness of breasts + 1 < the flesh volume of hips and flav-said is not 1 and the player is not top heavy and the player is not a trap and (the thickness of hips > the real thickness of hips or weight gain fetish is 1):
			let H be the flesh volume of hips;
			if weight gain fetish is 0, HipDown 1;
			otherwise decrease the flesh volume of hips by 2;
			if the flesh volume of hips < 1, now the flesh volume of hips is 1; [to prevent accidental glitches, shouldn't be needed really]
			if the flesh volume of hips < H:
				if flav-said is 0, say "Some of the weight in your [ShortDesc of hips] starts to disappear, and reappear in your [BreastDesc]!";
				now flav-said is 2;
				BustUp 3.

Section 2 Potion of the Womb

A potion of the womb is a kind of potion.  The printed name of potion of the womb is "[TQlink of item described]potion of the womb[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The printed plural name of potion of the womb is "[TQlink of item described]potions of the womb[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of potion of the womb is "pw".  The description of potion of the womb is "A round clear hip flask filled with a dose of smoky pink liquid.  It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".  There are 3 potion of the womb.

To decide which number is the alchemy key of (A - a potion of the womb):
	decide on 7.

Carry out quaffing potion of the womb:
	say "You pull out the stopper and down the smoky liquid.";
	if the player is female:
		if the pregnancy of the player is 0:
			[The player becomes pregnant]
			say "[ConceptionFlav]";
			now the pregnancy of the player is 1;
			if the semen volume of vagina < 5, now the semen volume of vagina is 5;
			if the noun is cursed, now the semen volume of vagina is 15;
			if there is an alive fairy and inhuman pregnancy > 0 and the noun is not cursed:
				now the father is a random alive fairy;
			otherwise if the noun is blessed:
				now the father is a random shopkeeper;
			otherwise:
				now the father is random creampie pole trap; [Tentacles for players who have them enabled]
		otherwise if the pregnancy of the player is 1:
			[Pause the pregnancy]
			say "Your [BellyDesc] seems suddenly.. inactive.[if the largeness of belly > 6]  But you still feel kicking coming from inside your womb.[end if]";
			now the pregnancy of the player is 2;
		otherwise if the pregnancy of the player is 2:
			[Unpause the pregnancy]
			say "Your [BellyDesc] feels active again.";
			now the pregnancy of the player is 1;
	otherwise:
		PenisDown 1.

Section 3 Potion of Blessing

To decide which number is the alchemy key of (A - a potion of blessing):
	decide on 8.

A potion of blessing is a kind of potion.  The printed name of potion of blessing is "[TQlink of item described]potion of blessing[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The printed plural name of potion of blessing is "[TQlink of item described]potions of blessing[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of potion of blessing is "pb".  The description of potion of blessing is "A round clear hip flask filled with a dose of bright glowing blue liquid.  It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".  There are 3 potion of blessing. 

Carry out quaffing potion of blessing:
	say "You pull out the stopper and down the brightly glowing liquid.";
	if the player is not in the dungeon or the player is trap stuck or a random lake monster is penetrating an orifice:[how would this last condition occur?]
		say "Nothing seems to happen.";
	otherwise if the player is not in Dungeon28:
		say "You feel yourself sucked through a portal. ";
		if the player is glue stuck, compute raw glue escaping a random glue in the location of the player with 1;
		say " The scenery around you slightly changes, and you are now in an altar room!  ";
		teleport to Dungeon28;
		if map images is 1, display entire map;
	otherwise if the charge of the dungeon altar > 0 or the noun is cursed:
		say "You feel that it is safe to pray at the altar.";
		if the noun is cursed, now the charge of the dungeon altar is 99;
		otherwise now the charge of the dungeon altar is 0;
	otherwise:
		say "Nothing seems to happen.".

Section 4 Potion of Bull Strength

A potion of bull strength is a kind of potion.  The printed name of potion of bull strength is "[TQlink of item described]potion of bull strength[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The printed plural name of potion of bull strength is "[TQlink of item described]potions of bull strength[shortcut-desc][TQxlink of item described][verb-desc of item described]".  The text-shortcut of potion of bull strength is "pb".  The description of potion of bull strength is "A round clear hip flask filled with a dose of murky white liquid.  It looks like it could do something useful if you drank it, but who knows when it would be appropriate to drink, and if there are any side effects...".  There are 3 potion of bull strength. 

To decide which number is the alchemy key of (A - a potion of bull strength):
	decide on 12.

This is the potion of bull strength specific recipe rule:
	let R be a random recipe for potion of bull strength;
	if R is appropriate:
		now the Product in row 18 of the Table of Alchemy is 12;
		now the Recipe in row 18 of the Table of Alchemy is 1.
The potion of bull strength specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - a potion of bull strength):
	let K be the alchemy key of T;
	if the noun is bottle:
		if the fill-colour of the noun is white and the noun is minotaur horn and the noun is monster-origin:
			now T is bland;
			if the noun is blessed or (a random number between 1 and 7 <= the number of worn blue scrunchies and the class of the player is schoolgirl):
				now T is blessed;
		otherwise:
			now T is cursed;
	otherwise:
		now T is cursed.

Carry out quaffing potion of bull strength:
	say "You pull out the stopper and down the murky white liquid.";
	if the noun is not cursed:
		say "You feel incredibly strong!  Wow!";
		StrengthUp 10;
	unless the flesh volume of thighs > 6 and the flesh volume of arms > 6 and the flesh volume of belly > 6 and the flesh volume of hips > 6:
		say "Your body instantly spills out as you instantly put on huge amounts of weight!";
		FatUp 20;
	if lactation fetish is 1:
		if the class of the player is adventurer:
			let H2 be a random worn headgear;
			say "Your [H2] suddenly vanishes!";
			destroy H2;
		let H be a random off-stage cow ears;
		if H is actually summonable:
			say "[bold type]A pair of fake cow ears materialise on your head.[roman type][line break]";
			summon H cursed;
			now the lactation-count of the player is 0;
		let B be a random off-stage cow print bikini top;
		if B is actually summonable:
			say "[bold type]A cow print bikini top materialises on your chest.[roman type][line break]";
			summon B cursed;
			now B is milk production.
			
Section 5 Space Mead

A space mead is a kind of potion. The printed name of space mead is "[TQlink of item described]carafe of space mead[TQxlink of item described][verb-desc of item described]". The printed plural name of space mead is "[TQlink of item described]carafes of space mead[TQxlink of item described][verb-desc of item described]". The description of space mead is "A small wine carafe with a strange golden liquid in it. It smells quite sweet but has a somewhat ominous shimmer to it that suggests this is something rather unusual.". There are 3 space meads. Understand "carafe" as space mead.  The text-shortcut of space mead is "smd".

Carry out quaffing space mead:
	say "You drink the golden liquid.";
	if a random number between 1 and 4 < 3:
		say "Your muscles suddenly swell out for just an instant before returning with slightly more definition than previous!";
		StrengthUp 1;
	if a random number between 1 and 4 < 3:
		say "For just a moment your limbs twist to an impossible orientation before returning to normal. You feel a bit more limber afterwards.";
		Dexup 1;
	if a random number between 1 and 4 < 3:
		say "For an instant your mind opens up to an infinite vista of possibilities, and even after it fades you still feel somewhat smarter.";
		Intup 1;
	StomachUp 4;
	humiliate 500;
	say "You feel more full, but somehow it also feels as though a vast emptiness has eaten away at your sense of self.";
	



Potions ends here.
