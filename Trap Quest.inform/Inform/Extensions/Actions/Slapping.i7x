Slapping by Actions begins here.

punch is a number that varies.

To decide which number is the slap damage of (P - a person):
	if backgroundCombatCalculation is false and damage-explained <= 1, decide on saved-slap-damage;
	if damage-explained > 1, say "[input-style]Base slap damage calculation: [bracket]1 (base damage) ";
	let A be 1;
	if thorny tattoo is worn:
		increase A by 1;
		if damage-explained > 1, say "+1 (thorny tattoo) ";
	if wasp sting tattoo is worn:
		increase A by 1;
		if damage-explained > 1, say "+1 (wasp tattoo) ";
	now punch is 1;
	if there is worn slap ready clothing, now punch is 0;
	repeat with C running through worn clothing:
		if (punch is 1 or C is slap ready or the class of the player is chosen one) and the slap damage improvement of C is not 0:
			let N be the slap damage improvement of C;
			increase A by N;
			if C is sword and the swordskill of the player is 1, increase A by 1;
			if damage-explained > 1, say "[if N >= 0]+[end if][N] ([ShortDesc of C] bonus) ";
	if there is a worn sword and the class of the player is chosen one:
		increase A by 2;
		if damage-explained > 1, say "+2 (chosen one wielding a sword) ";
	if punch is 1:
		if the player is feeling dominant:
			increase A by 1;
			if damage-explained > 1, say "+1 (dominant player clenched fist bonus) ";
		otherwise:
			now punch is 0;
	unless there is a worn slap ready projectile equippable:
		increase A by combat bonus;
		if damage-explained > 1, say combat bonus explanation;
	if avatar-headpiece is worn:
		let BF be the blackfire of avatar-headpiece;
		if BF > 0:
			if BF < 3:
				increase A by 1;
				if damage-explained > 1, say "+1 (avatar black fire)";
			otherwise:
				increase A by 3;
				if damage-explained > 1, say "+3 (avatar black fire)";
	if living tentacles is worn:
		if the charge of living tentacles > 50:
			increase A by 3;
			if damage-explained > 1, say "+3 (living tentacles charge > 50) ";
		otherwise if the charge of living tentacles > 0:
			increase A by 2;
			if damage-explained > 1, say "+2 (living tentacles charge > 0) ";
		otherwise:
			increase A by 1;
			if damage-explained > 1, say "+1 (living tentacles) ";
	unless there is a worn slap ready projectile equippable:
		if the breastskill of the player is 0:
			let N be (the largeness of breasts - 3) / 3;
			let B be a random worn bra;
			if B is bra, decrease N by the current support of B;
			if N > 0:
				decrease A by N;
				if damage-explained > 1, say "-[N] (large breasts) ";
		if the player is wrist bound:
			decrease A by 2;
			if damage-explained > 1, say "-2 (wrists bound) ";
		if flight-attendant-top is not worn:
			if the player is zeroG:
				if damage-explained > 1, say "[if A * -1 >= 0]+[end if][A * -1] (weightless) ";
				now A is 0;
			otherwise if the player is on tiptoes:
				if damage-explained > 1, say "-2 (low weight) ";
				decrease A by 2;
	decide on A.

Slapping is an action applying to one thing.

[!<CheckSlapping>+

The first portion of the "Slapping" action, which confirms that the player has the ability to slap. If the player is unable to slap, outputs a message explaining why, depending on whether or not the player is attacking manually.

+!]
Check slapping:
	if the noun is container, try MimicInvestigating the noun instead;
	if the noun is lake monster, say "You can't reach it from here." instead;
	if the noun is not monster, say "Err, why would you do that?" instead;
	if the player is in a predicament room, say "This is neither the time nor the place for violence." instead;
	if the noun is woman-player and woman-player is not angered:
		if the woman-status of woman-player >= 90, say "That's not very practical right now." instead;
		say "Are you sure? You probably won't be able to make [him of the noun] friendly ever again, if you were to do that. ";
		unless the player is consenting, say "You change your mind." instead;
	if the player is not able to slap, do nothing instead;
	if the noun is too intimidating, compute surrender to the noun instead.

[!<CarryOutSlapping>+

The second portion of the "Slapping" action, which executes calculates damage based on any slap-compatible equippables.

+!]
Carry out slapping:
	allocate 6 seconds;
	now attack-type is 1;
	reset submitted monsters;
	increase the fat-burning of arms by 20;
	now damage-explained is debuginfo;
	let A be the slap damage of the player;
	if damage-explained > 0, say "[if damage-explained > 1][close bracket] = [A]; [otherwise][input-style]Slap attack: [A][end if][roman type][line break]";
	let S be a random worn slap ready clothing;
	if S is clothing:
		compute attack of S at the noun;
	otherwise:
		let heel-H be 0;
		repeat with H running through worn hindrance-enabling shoes:
			if the hindrance of H > 2:
				now heel-H is 1;
				say "[one of]You are feeling so unstable in your [ShortDesc of H] that you don't dare raise your feet.[or][stopping]";
		say "[if punch is 1][one of]Clenching your fist tight, you[or]You[stopping] punch[otherwise]You slap[end if] [the noun][if heel-H is 1] instead[end if][if the latex-transformation of the player is 8] with your fingerless arms![end if]! ";
	unless there is a worn slap ready projectile equippable, say "[if the largeness of breasts >= 6 and the breastskill of the player is 0]Your [BreastDesc] are getting in the way and slightly reducing the power of your swing. [otherwise if the largeness of breasts > 12 and the breastskill of the player is 0]Your [BreastDesc] are getting in the way and significantly reducing the power of your swing. [end if][if the player is wrist bound]Unfortunately your wrists being bound significantly hampers the strength you can get into your slaps. [end if][if the player is zeroG and flight-attendant-top is not worn]Your body is weightless, meaning you can hardly get any force into your slap without sending yourself flying backwards. [otherwise if the player is on tiptoes and flight-attendant-top is not worn]Your body is so light that you don't have the grounding to put your full strength into the slap. [otherwise if living tentacles is worn]The tentacles wrapping around you flail about and strike the enemy as well! [end if]";
	if there is a worn hostility clothing, compute hostileDamage;
	damage A on the noun;
	if the noun is combative, compute wrangle reaction of the noun;
	if the noun is student, reset staff boredom.
Understand "slap [something]", "hit [something]", "punch [something]", "slash [something]", "slash at [something]", "swipe [something]", "swipe at [something]", "scratch [something]", "thrust at [something]", "swing at [something]", "sa [something]", "sl [something]", "pu [something]" as slapping.

noLineBreaksZapDamage is initially false.

To decide which number is the zap damage of (P - a person):
	if damage-explained > 1, say "[input-style]Base zap damage calculation: [bracket]0 (base damage) ";
	let A be 0;
	unless currentZapper is yourself or currentZapper is eye-mask or currentZapper is jewelled-tiara:
		if the magic power of the player <= 0 and the magic-cost of currentZapper > 0:
			if damage-explained > 1, say "Override to 0 (insufficient magic power) ";
			decide on 0;
		if the zapskill of the player is 1:
			increase A by 1;
			if damage-explained > 1, say "+1 (expert wand flicking technique) ";
	if fire palm tattoo is worn:
		increase A by 1;
		if damage-explained > 1, say "+1 (fire palm tattoo) ";
	let N be 0;
	if noLineBreaksZapDamage is true, now N is the nolinebreaks zap damage improvement of currentZapper;
	otherwise now N is the zap damage improvement of currentZapper;
	increase A by N;
	if damage-explained > 1, say "[if N >= 0]+[end if][N] ([ShortDesc of currentZapper] bonus) ";
	if A < 0, decide on 0;
	decide on A.

To decide which number is the nolinebreaks zap damage of (P - a person):
	now noLineBreaksZapDamage is true;
	let N be the zap damage of P;
	now noLineBreaksZapDamage is false;
	decide on N.

To decide which number is the nolinebreaks zap damage improvement of (Z - a thing):
	decide on the zap damage improvement of Z.

Zapping it with is an action applying to two things.

[!<CheckZapping>+

The first portion of the "Zapping" action, which confirms that the player has the ability to slap. If the player is unable to slap, outputs a message explaining why, depending on whether or not the player is attacking manually.

+!]
Check zapping it with:
	if the noun is monster and the second noun is not monster, try zapping the second noun with the noun instead;
	if the second noun is not monster, say "Err, why would you do that?" instead;
	if the noun is zap ready clothing and the noun is not worn, say "Unfortunately, you can't use that if you're not wielding it!" instead;
	if the noun is not zappable, say "That can't be used to cast spells." instead;
	if the player is in a predicament room, say "This is neither the time nor the place for violence." instead;
	if the second noun is woman-player and woman-player is not angered:
		if the woman-status of woman-player >= 90, say "That's not very practical right now." instead;
		say "Are you sure? You probably won't be able to make [him of the second noun] friendly ever again, if you were to do that. ";
		unless the player is consenting, say "You change your mind." instead;
	if the second noun is ex-princess, say "Something tells you that would be a very bad idea." instead;
	if the player is not able to zap, do nothing instead;
	if the second noun is too intimidating, compute surrender to the second noun instead.

currentZapper is a thing that varies. currentZapper is yourself.

[!<CarryOutZapping>+

The second portion of the "Zapping" action, which executes calculates damage based on any zap ready wearables.

+!]
Carry out zapping it with:
	allocate 6 seconds;
	now attack-type is 5;
	reset submitted monsters;
	increase the fat-burning of arms by 20;
	now damage-explained is debuginfo;
	now currentZapper is the noun;
	let A be the zap damage of the player;
	if damage-explained > 0, say "[if damage-explained > 1][close bracket] = [A]; [otherwise][input-style]Zap attack: [A][end if][roman type][line break]";
	compute attack of currentZapper at the second noun;
	if A > 0:
		damage A on the second noun;
		compute spell consequences of currentZapper;
	otherwise:
		say "But rather than work correctly, the spell just fizzles in mid-air[if the magic power of the player <= 0 and the magic-cost of currentZapper > 0]! Perhaps because you have no magic power left[end if]!";
	if the second noun is caged:
		say "The chain holding the cage off of the ground creaks as the cage swings from side to side[one of]. That seems precarious[or][stopping]...";
		if the player is getting unlucky:
			now the second noun is unleashed;
			now the second noun is interested;
			say "[bold type]Suddenly, the chain snaps and the cage falls to the floor with a thud! The cage door's hinges snap, and the door falls away. [BigNameDesc of the second noun] steps out, stretching [himself of the second noun] to full height. [GotUnluckyFlav][line break][variable custom style]Uh-oh...[roman type][line break]".
Understand "zap [something] with [something]", "zap [something] at [something]", "cast [something] at [something]", "attack [something] with [something]" as zapping it with.

Slapping ends here.
