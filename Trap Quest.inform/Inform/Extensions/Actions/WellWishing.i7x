WellWishing by Actions begins here.

WellWishing is an action applying to one thing.

[!<CheckWellWishing>+

REQUIRES COMMENTING

+!]
Check WellWishing:
	unless the location of the player is Woods27, say "You'd probably need a wishing well to do that." instead;
	if the noun is bottle:
		unless the noun is open topped, say "It probably makes more sense to try that with something that has an open top." instead;
		if the doses of the noun < 1, say "But it's empty?" instead;
	otherwise if the noun is not a plentiful accessory:
		unless the noun is infernal gem, say "It probably makes more sense to use something like jewellery." instead;
	[otherwise:
		say "It probably makes more sense to use something like jewellery." instead;]
	if the player is in danger, say "You can't do that in the middle of a fight!" instead.

[!<wellWishes:Integer>*

REQUIRES COMMENTING

*!]
wellwishes is a number that varies.

[!<WellWishing>+

REQUIRES COMMENTING

+!]
Carry out WellWishing:
	let B be 0;
	let P be 0;
	[First, decide how much the "offering" is worth]
	if the noun is vessel:
		say "You pour the [ShortDesc of the noun] into the well. A satisfying splash can be heard as its contents meet with the water at the bottom. An ephemeral voice speaks inside your head.";
		if the fill-type of the noun < 20:[cursed drink]
			now P is a random number between 0 and 2;
			if the fill-type of the noun >= lowest-cursed, decrease P by 2;
		otherwise:
			if the fill-type of the noun < 23, now P is a random number between 1 and 3;
			otherwise now P is a random number between 2 and 4;
		now P is P * the doses of the noun;
		DoseEmpty the noun;
	otherwise:
		say "You toss the [ShortDesc of the noun] into the well. A satisfying plunk can be heard as it hits the water at the bottom. An ephemeral voice speaks inside your head.";
		if the noun is plentiful accessory:
			now P is the price of the noun;
		otherwise:
			let A be a random off-stage plentiful accessory;
			now A is solid gold;
			now P is the price of A;
			only destroy A;
	[Change the value of the offering based on class]
	if the class of the player is faerie, increase P by 2 + (the number of mating fairies * 2);
	if the class of the player is priestess, decrease P by 5;
	if the class of the player is cultist, decrease P by 10;
	increase wellwishes by 1;
	[now, decide how much to award for the offering]
	if P < 0:
		compute BadWishing;
	otherwise if skeleton key is off-stage and there is worn locked clothing and P + a random number between 1 and 16 > 12 - (wishskill of the player * 3):
		say "[first custom style]Wish... granted.[roman type][line break]";
		now skeleton key is carried by the player;
		say "Suddenly, you find a [skeleton key] in your hand!";
	otherwise if the noun is infernal gem and there is an off-stage pure totem and a random number between 1 and 3 is 1:
		let S be a random off-stage pure totem;
		say "[first custom style]Temperance... granted.[roman type][line break]An invisible force gently pushes your hands open, and a tiny ivory carving materialises in your palm.";
		now S is held by the player;
	otherwise if permanent makeup is 1 and the noun is plentiful accessory and the noun is not sapphire and the noun is not emerald and the class of the player is not silicone queen and the latex-transformation of the player < 7:
		say "[first custom style]Wish... granted.[roman type][line break]";
		now permanent makeup is 0;
		FaceDown 3;
		say "Your [if diaper quest is 0]permanent make up is removed and your [end if]face returns to normal!";
	otherwise if there is worn uncursed piercing and the noun is plentiful accessory and the noun is not sapphire:
		say "[first custom style]Wish... granted.[roman type][line break]";
		let PC be a random worn uncursed piercing;
		say "Your [PC] disappears!";
		destroy PC;
	otherwise if (hungover > 0 or alcohol > 0 or toffee-poison-timer > 0 or fudge-poison-timer > 0 or cookie-poison-timer > 0) and P + a random number between 1 and 16 > 10 - (wishskill of the player * 3):
		say "[first custom style]Wish... granted.[roman type][line break]";
		say "Your body is cleansed of all poisons and toxins[if alcohol > 0 or hungover > 0]. You feel completely sober[end if]!";
		now hungover is 0;
		now alcohol is 0;
		now toffee-poison-timer is 0;
		now fudge-poison-timer is 0;
		now cookie-poison-timer is 0;
	otherwise if the player is a sissy and the soreness of asshole > 0:
		say "[first custom style]I know... what you really wish for...[roman type][line break]Your [asshole] tingles as it spontaneously fills up with [semen], which washes away all feelings of soreness and tension.";
		AssFill the soreness of asshole;
		now the soreness of asshole is 0;
		now the tolerated of asshole is 0;
	otherwise if P + a random number between 1 and 16 > 8 - (wishskill of the player * 3):
		say "[first custom style]Wish... granted.[roman type][line break]";
		let S be a random pink spraybottle;
		if S is cloth:
			say "The [printed name of S] glitters as long strands of lemony-scented air float out of the well, weaving themselves into a brand new matching pink bottle of cleaner.";
			now S is spray;
			now B is 1;
		otherwise if S is worn:
			if the charge of S < 4, increase the charge of S by 2;
			otherwise increase the work ethic of S by 50;
			say "Your [printed name of S] glitters as it fills up with darkly coloured liquid.";
			now B is 1;
		otherwise if a random number between 1 and 2 is 1:
			repeat with C running through worn clothing:
				unless B is 1:
					if C is not removable and C is destructible:
						say "The [printed name of C] slowly disintegrates.";
						destroy C;
						now B is 1;
					otherwise if diaper quest is 0 and (C is crotch-ripped or the damage of C > 0):
						say "The [printed name of C] glitters as it magically repairs its[if C is crotch-ripped]elf[otherwise] damage[end if].";
						if C is crotch-ripped, repair C;
						now the damage of C is 0;
						now B is 1;
		if B is 0:
			say "A healing wave spreads through your body, erasing all wounds and filling you with new-found energy.";
			now the body soreness of the player is 0;
			now the fatigue of the player is 0;
	otherwise if the noun is not bottle:
		if djinn is mating, compute djinn wishing on the noun;
		otherwise say "[first custom style]Wish... denied.[roman type]";[possible punishment of fairy spawn or vine summon in the future?]
	unless the noun is vessel, only destroy the noun.

[!<ReportWellWishing>+

REQUIRES COMMENTING

+!]
Report WellWishing:
	allocate 6 seconds.

Understand "drop [something] into well", "wish with [something]", "wish [something]" as WellWishing.

[!<ComputeBadWishing>+

REQUIRES COMMENTING

+!]
To compute BadWishing:
	say "[first custom style]Your wish... offends me.[roman type][line break]";
	let C be most-transformable-clothing;
	if C is clothing:
		if watersports fetish is 1 and C is able to take more liquid:
			say "You feel a [if the total-soak of C > 0]spontaneous wetness[otherwise]spontaneous warmth[end if] on your skin, and look down just as the unmistakable smell of [urine] hits your nostrils. The well has soaked your [ShortDesc of C] in [urine]!";
			UrineSoakUp C by the soak-limit of C - the total-soak of C;
		otherwise if C is transformation chain and C is transformable:
			say "A wave of energy passes through your [printed name of C], and it begins to shimmer...";
			potentially transform C;
		otherwise if C is not cursed:
			say "The [clothing-material of C] of the [ShortDesc of C] suddenly tightens painfully to your skin. It must be cursed!";
		otherwise:
			say "Nothing happens. How lame.";
	otherwise if the player is female:
		say "You feel yourself being spread wide as [semen] suddenly starts dribbling out of your [vagina]";
		increase the semen volume of vagina by 2;
		leak vagina semen a random number between 4 and 6;
	otherwise:
		say "Nothing happens. How lame.".

WellWishing ends here.
