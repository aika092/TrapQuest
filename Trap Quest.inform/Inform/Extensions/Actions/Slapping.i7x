Slapping by Actions begins here.

[!<punch:Integer>*

REQUIRES COMMENTING

*!]
punch is a number that varies.

[!<DecideWhichNumberIsTheSlapDamageOfPerson>+

REQUIRES COMMENTING

+!]
To decide which number is the slap damage of (P - a person):
	let A be 1;
	[if diaper quest is 1, now A is 1;]
	increase A by the number of worn thorny tattoos;
	now punch is 0;
	let S be a random worn slap ready equippable;
	if S is equippable:
		increase A by the damage improvement of S;
	otherwise:
		if the delicateness of the player < 8 and a random number between -2 and the delicateness of the player <= 2:
			now punch is 1;
			increase A by 1;
	unless there is a worn slap ready projectile equippable, increase A by combat bonus;
	if there is a worn demon horns and the total-souls of the player > 9, increase A by 3;
	if there is a worn living tentacles:
		let L be a random worn living tentacles;
		if the charge of L > 50: 
			increase A by 3;
		otherwise if the charge of L > 0:
			increase A by 2;
		otherwise:
			increase A by 1;  
	unless there is a worn slap ready projectile equippable:
		if the breastskill of the player is 0, decrease A by the largeness of breasts / 6;
		if the player is wrist bound, decrease A by 2;
		if the weight of the player < 1, decrease A by 2;
		if the player is zeroG, now A is 0;
	decide on A.	

Slapping is an action applying to one thing.

[!<CheckSlapping>+

The first portion of the "Slapping" action, which confirms that the player has the ability to slap. If the player is unable to slap, outputs a message explaining why, depending on whether or not the player is attacking manually.

+!]
Check slapping:
	if the noun is container, try MimicInvestigating the noun instead;
	if the noun is lake monster, say "You can't reach it from here." instead;
	if the noun is not monster, say "Err, why would you do that?" instead;
	if the noun is woman-barbara and woman-barbara is not angered:
		say "Are you sure? You probably won't be able to make her friendly ever again, if you were to do that. [yesnolink]";
		unless the player consents, say "You change your mind." instead;
	if the noun is captive and the noun is dungeon boss, say "You can't reach it through the cage!" instead;
	if the player is not able to slap, do nothing instead;
	if the noun is too intimidating, compute surrender to the noun instead.

[!<CarryOutSlapping>+

The second portion of the "Slapping" action, which executes calculates damage based on any slap-compatible equippables.

+!]
Carry out slapping:
	now attack-type is 1;
	reset submitted monsters;
	increase the fat-burning of arms by 20;
	let A be the slap damage of the player;
	let S be a random worn slap ready equippable;
	if S is equippable:
		compute attack of S at the noun;
	otherwise:
		let heel-H be 0;
		repeat with H running through heels worn by the player:
			if the hindrance of H > 2:
				now heel-H is 1;
				say "[one of]You are feeling so unstable in your [printed name of H] that you don't dare raise your feet.[or][stopping]";
		say "[if punch is 1][one of]Clenching your fist tight, you[or]You[stopping] punch[otherwise]You slap[end if] [the noun][if heel-H is 1] instead[end if][if the latex-transformation of the player is 8] with your fingerless arms![end if]!  ";
	say "[if the largeness of breasts >= 6 and the breastskill of the player is 0]Your [BreastDesc] are getting in the way and slightly reducing the power of your swing. [otherwise if the largeness of breasts > 12 and the breastskill of the player is 0]Your [BreastDesc] are getting in the way and significantly reducing the power of your swing. [end if][if the player is wrist bound]Unfortunately your wrists being bound significantly hampers the strength you can get into your slaps. [end if][if the player is zeroG]Your body is weightless, meaning you can hardly get any force into your slap without sending yourself flying backwards. [otherwise if the weight of the player < 1]Your body is so light that you don't have the grounding to put your full strength into the slap. [otherwise if there is worn blessed fake nails and the number of worn slap ready equippables is 0]Your sharp pink nails cause your slap to deal significant extra damage.[otherwise if there is worn living tentacles]The tentacles wrapping around you flail about and strike the enemy as well!  [end if]";
	damage A on the noun.
Understand "slap [something]", "hit [something]", "punch [something]", "slash [something]", "slash at [something]", "swipe [something]", "swipe at [something]", "scratch [something]", "thrust at [something]", "swing at [something]", "sa [something]", "sl [something]", "pu [something]" as slapping.


Slapping ends here.

