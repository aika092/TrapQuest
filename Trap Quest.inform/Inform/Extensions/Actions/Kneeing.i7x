Kneeing by Actions begins here.

[!<DecideWhichNumberIsTheKneeDamageOfPerson>+

REQUIRES COMMENTING

+!]
To decide which number is the knee damage of (P - a person):
	if damage-explained > 1, say "[input-style]Base knee damage calculation: [bracket]3 (base damage) ";
	let A be 3;
	increase A by combat bonus;
	if damage-explained > 1, say combat bonus explanation;
	repeat with S running through worn wearthings:
		let N be the knee-modifier of S;
		if N is not 0:
			increase A by N;
			if damage-explained > 1, say "[if N >= 0]+[end if][N] ([ShortDesc of S] bonus) ";
	increase A by permanent-knee-bonus;
	if damage-explained > 1 and permanent-knee-bonus is not 0, say "[if permanent-knee-bonus >= 0]+[end if][permanent-knee-bonus] (imprinted knee bonus) ";
	if the weight of the player < 1:
		decrease A by 2;
		if damage-explained > 1, say "-2 (very low weight) ";
	if there is a worn demon horns and the total-souls of the player > 9:
		increase A by 3;
		if damage-explained > 1, say "+3 (over 9 souls collected) ";
	if the player is diaper kicking:
		decrease A by 1;
		if damage-explained > 1, say "-1 (diaper penalty) ";
	if the player is zeroG:
		if damage-explained > 1, say "[if A * -1 >= 0]+[end if][A * -1] (weightless) ";
		now A is 0;
	decide on A.

knee-fatigue is a number that varies.
knee-fatigue-delay is a number that varies.

A time based rule (this is the knee fatigue recovery rule):
	if knee-fatigue-delay > 0:
		decrease knee-fatigue-delay by 1;
	otherwise if knee-fatigue > 0:
		decrease knee-fatigue by 1.

permanent-knee-bonus is a number that varies.

Kneeing is an action applying to one thing.

[!<CheckKneeing>+

REQUIRES COMMENTING

+!]
Check kneeing:
	if the noun is container, try MimicInvestigating the noun instead;
	if the noun is lake monster, say "You can't reach it from here." instead;
	if the noun is not a monster, say "Err, why would you do that?" instead;
	if the noun is woman-barbara and woman-barbara is not angered:
		say "Are you sure? You probably won't be able to make her friendly ever again, if you were to do that. [yesnolink]";
		unless the player consents, say "You change your mind." instead;
	if the noun is captive and the noun is dungeon boss, say "You can't reach it through the cage!" instead;
	if the player is not able to knee, do nothing instead;
	if the noun is too intimidating, compute surrender to the noun instead.

[!<CarryOutKneeing>+

REQUIRES COMMENTING

+!]
Carry out kneeing:
	now attack-type is 2;
	reset submitted monsters;
	increase the fat-burning of the player by 30;
	now damage-explained is debuginfo;
	let A be the knee damage of the player;
	if damage-explained > 0, say "[if damage-explained > 1][close bracket] = [A]; [otherwise][input-style]Knee attack: [A] [end if]";
	decrease A by knee-fatigue;
	if knee-fatigue > 0 and damage-explained > 0, say "-[knee-fatigue] (knee fatigue)";
	if damage-explained > 0, say "[roman type][line break]";
	now knee-fatigue-delay is 2;
	increase knee-fatigue by 1;
	now seconds is 6;
	if the player is zeroG:
		say "Your body is weightless, meaning you can hardly get any force into your knee without sending yourself backwards.";
	otherwise if the weight of the player < 1:
		say "Your body is so light that you don't have the grounding to put your full strength into the attack.";
	otherwise if the player is diaper kicking:
		say "Your displeasure at wearing a soggy diaper slightly hampers the power of your knee.";
	otherwise:
		say "You knee [NameDesc of the noun] with all your might.";
	damage A on the noun;
	reset submitted monsters. [Otherwise kneeling makes them delayed]
Understand "knee [something]", "kn [something]" as kneeing.


Kneeing ends here.

