Kneeing by Actions begins here.

[!<DecideWhichNumberIsTheKneeDamageOfPerson>+

REQUIRES COMMENTING

+!]
To decide which number is the knee damage of (P - a person):
	let A be 3;
	increase A by combat bonus;
	if there are worn stockings:
		let S be a random worn stockings;
		increase A by the knee-modifier of S;
	increase A by permanent-knee-bonus;
	if the weight of the player < 1, decrease A by 2;
	if there is a worn demon horns and the total-souls of the player > 9, increase A by 3;
	if the player is diaper kicking, decrease A by 1;
	if the player is zeroG, now A is 0;
	decide on A.

permanent-knee-bonus is a number that varies.

Kneeing is an action applying to one thing.

[!<CheckKneeing>+

REQUIRES COMMENTING

+!]
Check kneeing:
	if the noun is container, try MimicInvestigating the noun instead;
	if the noun is lake monster, say "You can't reach it from here." instead;
	if the noun is not a monster, say "Err, why would you do that?" instead;
	if the noun is woman, say "Something tells you this would be a stupid idea." instead;
	if the noun is captive and the noun is dungeon boss, say "You can't reach it through the cage!" instead;
	if the player is not able to knee, do nothing instead;
	if the noun is intimidating, compute surrender to the noun instead.

[!<CarryOutKneeing>+

REQUIRES COMMENTING

+!]
Carry out kneeing:
	now attack-type is 2;
	reset submitted monsters;
	increase the fat-burning of the player by 30;
	let A be the knee damage of the player;
	now seconds is 6;
	if there are worn heels and the player is grounded and 1 is 0: [removed for new combat mechanics test]
		let H be a random worn heels;
		increase the heel time of the player by the hindrance of H / 2;
		let X be the hindrance of H;
		let D be a random number between 0 and 32;
		if (the living belt of sturdiness is worn and the living belt of sturdiness is not cursed) or there is a worn yoga pants, now D is 9999;
		if debugmode is 1, say "Kneeing attempt: Player ([D].5 | [X] Heels[line break]";
		if D + 2 < X:
			say "As you attempt to knee the [noun] you lose your balance and go flying!  Whoops.";
			try kneeling;
		otherwise if D < X:
			say "You knee [the noun] with all your might.";
			damage A on the noun;
			say "Before you can get both heels securely on the floor again, you wobble and fall!  Oopsie!";
			try kneeling;
		otherwise:
			say "You knee [the noun] with all your might.";
			damage A on the noun;
	otherwise:
		if the player is zeroG:
			say "Your body is weightless, meaning you can hardly get any force into your knee without sending yourself backwards.";
			damage A on the noun;
		otherwise if the weight of the player < 1:
			say "Your body is so light that you don't have the grounding to put your full strength into the attack.";
			damage A on the noun;
		otherwise if the player is diaper kicking:
			say "Your displeasure at wearing a soggy diaper slightly hampers the power of your knee.";
			damage A on the noun;
		otherwise:
			say "You knee [the noun] with all your might.";
			damage A on the noun;
	reset submitted monsters. [Otherwise kneeling makes them delayed]
Understand "knee [something]", "kn [something]" as kneeing.


Kneeing ends here.

