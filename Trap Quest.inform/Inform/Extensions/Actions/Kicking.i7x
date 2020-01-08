Kicking by Actions begins here.

[!<DecideWhichNumberIsTheKickDamageOfThePlayer>+

REQUIRES COMMENTING

+!]
To decide which number is the kick damage of the player:
	if backgroundCombatCalculation is false and damage-explained <= 1, decide on saved-kick-damage;
	if damage-explained > 1, say "[input-style]Base kick damage calculation: [bracket]3 (base damage) ";
	let A be 3;
	let H be a random worn shoes;
	if H is shoes:
		let K be the magic-modifier of H;
		if H is heels, now K is 0;
		increase K by the kick-bonus of H;
		increase A by K / 2;
		if damage-explained > 1, say "[if K / 2 >= 0]+[end if][K / 2] ([ShortDesc of H]) ";
	increase A by combat bonus;
	if damage-explained > 1, say combat bonus explanation;
	increase A by permanent-kick-bonus;
	if damage-explained > 1 and permanent-kick-bonus is not 0, say "[if permanent-kick-bonus >= 0]+[end if][permanent-kick-bonus] (imprinted kick bonus) ";
	if the weight of the player < 1:
		decrease A by 2;
		if damage-explained > 1, say "-2 (very low weight) ";
	if demon horns is worn and the total-souls of the player > 9:
		increase A by 3;
		if damage-explained > 1, say "+3 (over 9 souls collected) ";
	if the player is diaper kicking:
		decrease A by 1;
		if damage-explained > 1, say "-1 (diaper penalty) ";
	if the player is zeroG:
		if damage-explained > 1, say "[if A * -1 >= 0]+[end if][A * -1] (weightless) ";
		now A is 0;
	decide on A.

permanent-kick-bonus is a number that varies.

kick-fatigue is a number that varies.
kick-fatigue-delay is a number that varies.

A time based rule (this is the kick fatigue recovery rule):
	if kick-fatigue-delay > 0:
		decrease kick-fatigue-delay by 1;
	otherwise if kick-fatigue > 0:
		decrease kick-fatigue by 1.


Kicking is an action applying to one thing.

[!<CheckKicking>+

REQUIRES COMMENTING

+!]
Check kicking:
	if the noun is container, try MimicInvestigating the noun instead;
	if the noun is lake monster, say "You can't reach it from here." instead;
	if the noun is not a monster, say "Err, why would you do that?" instead;
	if the player is flying, say "You're not even on the ground!" instead;
	if the noun is woman-barbara and woman-barbara is not angered:
		say "Are you sure? You probably won't be able to make her friendly ever again, if you were to do that. ";
		unless the player is consenting, say "You change your mind." instead;
	if the player is not able to kick, do nothing instead;
	if the noun is too intimidating, compute surrender to the noun instead.

[!<CarryOutKicking>+

REQUIRES COMMENTING

+!]
Carry out kicking:
	now attack-type is 3;
	reset submitted monsters;
	increase the fat-burning of the player by 45;
	now damage-explained is debuginfo;
	let A be the kick damage of the player;
	if damage-explained > 0, say "[if damage-explained > 1][close bracket] = [A]; [otherwise][input-style]Kick attack: [A] [end if]";
	decrease A by kick-fatigue;
	if kick-fatigue > 0 and damage-explained > 0, say "-[kick-fatigue] (kick fatigue)";
	if damage-explained > 0, say "[roman type][line break]";
	now kick-fatigue-delay is 2;
	increase kick-fatigue by 1;
	allocate 6 seconds;
	let H be a random heels worn by the player;
	if H is heels:
		increase the heel time of the player by the hindrance of H;
		if the intelligence of the player < 7, say "You kick [the noun] with your [printed name of H][if H is dildo heels], and you can feel the glass dildo heels magically strengthen your kick![otherwise], connecting with the toe as if you were kicking a ball![end if]";
		otherwise say "You kick [the noun] with your [printed name of H][if H is dildo heels], and you can feel the glass dildo heels magically strengthen your kick![otherwise if H is stiletto heels], trying to get the spike of your heel to do some real damage![otherwise], hoping the heel will do some damage.[end if]";
		damage A on the noun;
	otherwise:
		if the player is zeroG:
			say "Your body is weightless, meaning you can hardly get any force into your knee without sending yourself backwards.";
			damage A on the noun;
		otherwise if the weight of the player < 1:
			say "Your body is so light that you don't have the grounding to put your full strength into the attack.";
			damage A on the noun;
		otherwise if the player is diaper kicking:
			say "Your displeasure at wearing a soggy diaper slightly hampers the power of your kick.";
			damage A on the noun;
		otherwise:
			say "You kick [NameDesc of the noun] with all your might.";
			damage A on the noun;
	compute upright fatigue gain;
	if there is a worn hostility clothing, compute hostileDamage;
	reset submitted monsters. [Otherwise kneeling makes them delayed]
Understand "kick [something]", "ki [something]" as kicking.


Kicking ends here.

