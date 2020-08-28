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
	now punch is 0;
	let S be a random worn slap ready equippable;
	if S is equippable:
		let N be the damage improvement of S;
		increase A by N;
		if damage-explained > 1, say "[if N >= 0]+[end if][N] ([ShortDesc of S] bonus) ";
	otherwise:
		if the player is feeling dominant:
			now punch is 1;
			increase A by 1;
			if damage-explained > 1, say "+1 (dominant player clenched fist bonus) ";
	unless there is a worn slap ready projectile equippable:
		increase A by combat bonus;
		if damage-explained > 1, say combat bonus explanation;
	if demon horns is worn and the total-souls of the player > 9:
		increase A by 3;
		if damage-explained > 1, say "+3 (over 9 souls collected) ";
	let L be a random worn living tentacles;
	if L is living tentacles:
		if the charge of L > 50:
			increase A by 3;
			if damage-explained > 1, say "+3 (living tentacles charge > 50) ";
		otherwise if the charge of L > 0:
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
		if the player is zeroG:
			if damage-explained > 1, say "[if A * -1 >= 0]+[end if][A * -1] (weightless) ";
			now A is 0;
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
	let S be a random worn slap ready equippable;
	if S is equippable:
		compute attack of S at the noun;
	otherwise:
		let heel-H be 0;
		repeat with H running through worn hindrance-enabling shoes:
			if the hindrance of H > 2:
				now heel-H is 1;
				say "[one of]You are feeling so unstable in your [ShortDesc of H] that you don't dare raise your feet.[or][stopping]";
		say "[if punch is 1][one of]Clenching your fist tight, you[or]You[stopping] punch[otherwise]You slap[end if] [the noun][if heel-H is 1] instead[end if][if the latex-transformation of the player is 8] with your fingerless arms![end if]! ";
	say "[if the largeness of breasts >= 6 and the breastskill of the player is 0]Your [BreastDesc] are getting in the way and slightly reducing the power of your swing. [otherwise if the largeness of breasts > 12 and the breastskill of the player is 0]Your [BreastDesc] are getting in the way and significantly reducing the power of your swing. [end if][if the player is wrist bound]Unfortunately your wrists being bound significantly hampers the strength you can get into your slaps. [end if][if the player is zeroG]Your body is weightless, meaning you can hardly get any force into your slap without sending yourself flying backwards. [otherwise if the weight of the player < 1]Your body is so light that you don't have the grounding to put your full strength into the slap. [otherwise if fake-nails is worn and fake-nails is blessed and the number of worn slap ready equippables is 1]Your sharp pink nails cause your slap to deal significant extra damage.[otherwise if there is worn living tentacles]The tentacles wrapping around you flail about and strike the enemy as well! [end if]";
	if there is a worn hostility clothing, compute hostileDamage;
	damage A on the noun.
Understand "slap [something]", "hit [something]", "punch [something]", "slash [something]", "slash at [something]", "swipe [something]", "swipe at [something]", "scratch [something]", "thrust at [something]", "swing at [something]", "sa [something]", "sl [something]", "pu [something]" as slapping.

To decide which number is the zap damage of (P - a person):
	if damage-explained > 1, say "[input-style]Base zap damage calculation: [bracket]0 (base damage) ";
	let A be 0;
	if fire palm tattoo is worn:
		increase A by 1;
		if damage-explained > 1, say "+1 (fire palm tattoo) ";
	if currentZapper is not yourself:
		let N be the damage improvement of currentZapper;
		increase A by N;
		if damage-explained > 1, say "[if N >= 0]+[end if][N] ([ShortDesc of currentZapper] bonus) ";
	if A < 0, decide on 0;
	decide on A.

Zapping it with is an action applying to two things.

[!<CheckZapping>+

The first portion of the "Zapping" action, which confirms that the player has the ability to slap. If the player is unable to slap, outputs a message explaining why, depending on whether or not the player is attacking manually.

+!]
Check zapping it with:
	if the noun is monster and the second noun is not monster, try zapping the second noun with the noun instead;
	if the second noun is not monster, say "Err, why would you do that?" instead;
	if the noun is zap ready equippable and the noun is not worn, say "Unfortunately, you can't use that if you're not wielding it!" instead;
	if the noun is not zappable, say "That can't be used to cast spells." instead;
	if the player is in a predicament room, say "This is neither the time nor the place for violence." instead;
	if the second noun is woman-player and woman-player is not angered:
		say "Are you sure? You probably won't be able to make [him of the second noun] friendly ever again, if you were to do that. ";
		unless the player is consenting, say "You change your mind." instead;
	if the second noun is ex-princess, say "Something tells you that would be a very bad idea." instead;
	if the player is not able to zap, do nothing instead;
	if the second noun is too intimidating, compute surrender to the second noun instead.

currentZapper is a thing that varies. currentZapper is yourself.

[!<CarryOutZapping>+

The second portion of the "Zapping" action, which executes calculates damage based on any zap ready equippables.

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
	if the second noun is caged:
		say "The chain holding the cage off of the ground creaks as the cage swings from side to side[one of]. That seems precarious[or][stopping]...";
		if the player is getting unlucky:
			now the second noun is unleashed;
			now the second noun is interested;
			say "[bold type]Suddenly, the chain snaps and the cage falls to the floor with a thud! The cage door's hinges snap, and the door falls away. [BigNameDesc of the second noun] steps out, stretching [himself of the second noun] to full height. [GotUnluckyFlav][line break][variable custom style]Uh-oh...[roman type][line break]".
Understand "zap [something] with [something]", "zap [something] at [something]", "cast [something] at [something]", "attack [something] with [something]" as zapping it with.

Slapping ends here.
