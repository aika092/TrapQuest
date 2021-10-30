Kneeing by Actions begins here.

To decide which number is the knee damage of (P - a person):
	if backgroundCombatCalculation is false and damage-explained <= 1, decide on saved-knee-damage;
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
	if avatar-headpiece is worn:
		let BF be the blackfire of avatar-headpiece;
		if BF > 1:
			if BF < 4:
				increase A by 1;
				if damage-explained > 1, say "+1 (avatar black fire)";
			otherwise:
				increase A by 3;
				if damage-explained > 1, say "+3 (avatar black fire)";
	if the player is diaper kicking:
		decrease A by 1;
		if damage-explained > 1, say "-1 (diaper penalty) ";
	if flight-attendant-skirt is not worn:
		if the player is zeroG:
			if damage-explained > 1, say "[if A * -1 >= 0]+[end if][A * -1] (weightless) ";
			now A is 0;
		otherwise if the player is on tiptoes:
			if damage-explained > 1, say "-2 (low weight) ";
			decrease A by 2;
	decide on A.

knee-fatigue is a number that varies.
knee-fatigue-delay is a number that varies.

An all time based rule (this is the knee fatigue recovery rule):
	if knee-fatigue-delay > 0:
		decrease knee-fatigue-delay by 1;
	otherwise if knee-fatigue > 0:
		decrease knee-fatigue by 1.

permanent-knee-bonus is a number that varies.

Kneeing is an action applying to one thing.

Check kneeing:
	if the noun is container, try MimicInvestigating the noun instead;
	if the noun is lake monster, say "You can't reach it from here." instead;
	if the noun is not a monster, say "Err, why would you do that?" instead;
	if the player is in a predicament room, say "This is neither the time nor the place for violence." instead;
	if the noun is woman-player and woman-player is not angered:
		say "Are you sure? You probably won't be able to make [him of the noun] friendly ever again, if you were to do that. ";
		unless the player is consenting, say "You change your mind." instead;
	if the player is not able to knee, do nothing instead;
	if the noun is too intimidating, compute surrender to the noun instead.

Carry out kneeing:
	allocate 6 seconds;
	now attack-type is 2;
	reset submitted monsters;
	increase the fat-burning of the player by 30;
	if the noun is human intelligent male monster and the noun is not dark skinned and queen-of-spades-stockings is worn and the player is getting very lucky:
		say "Your [queen-of-spades-stockings] guide your knee to the perfect hit, right into [NameDesc of the noun][']s crotch. Not only does [he of the noun] buckle over with pain, but [he of the noun] also groans as [he of the noun] suffers an embarrassing spontaneous ejaculation, right there in front of you. [GotLuckyFlav]";
		compute defeat of the noun;
		compute upright fatigue gain;
	otherwise:
		now damage-explained is debuginfo;
		let A be the knee damage of the player;
		if damage-explained > 0, say "[if damage-explained > 1][close bracket] = [A]; [otherwise][input-style]Knee attack: [A] [end if]";
		decrease A by knee-fatigue;
		if knee-fatigue > 0 and damage-explained > 0, say "-[knee-fatigue] (knee fatigue)";
		if damage-explained > 0, say "[roman type][line break]";
		now knee-fatigue-delay is 2;
		increase knee-fatigue by 1;
		if the player is zeroG and flight-attendant-skirt is not worn:
			say "Your body is weightless, meaning you can hardly get any force into your knee without sending yourself backwards.";
		otherwise if the player is on tiptoes and flight-attendant-skirt is not worn:
			say "Your body is so light that you don't have the grounding to put your full strength into the attack.";
		otherwise if the player is diaper kicking:
			say "Your displeasure at wearing a soggy diaper slightly hampers the power of your knee.";
		otherwise:
			say "You knee [NameDesc of the noun] with all your might.";
		damage A on the noun;
		compute upright fatigue gain;
		if there is a worn hostility clothing, compute hostileDamage;
	reset submitted monsters. [Otherwise kneeling makes them delayed]
Understand "knee [something]", "kn [something]" as kneeing.

Kneeing ends here.
