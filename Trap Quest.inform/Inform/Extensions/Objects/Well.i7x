Well by Objects begins here.

wishing well is a thing. The printed name of wishing well is "[TQlink of item described]wishing well[TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of wishing well is "wiw". wishing well is not portable. wishing well is in Woods27. Figure of well is the file "Env/Forest/well1.png".

wishing well has a number called stored-offerings.

To decide which figure-name is the examine-image of (C - wishing well):
	decide on figure of well.
To say ExamineDesc of (C - wishing well):
	say "A deep well. Traditionally, people would throw something valuable down here when making a wish.".

Definition: A wishing well is immune to change: decide yes.

Check inserting something into wishing well:
	try WellWishing the noun instead.

WellWishing is an action applying to one thing.

Check WellWishing:
	unless the location of the player is Woods27, say "You'd probably need a wishing well to do that." instead;
	if the noun is bottle and the doses of the noun < 1, say "But it's empty?" instead;
	otherwise if the noun is not a plentiful accessory:
		unless the noun is infernal gem, say "It probably makes more sense to use something like jewellery." instead;
	[otherwise:
		say "It probably makes more sense to use something like jewellery." instead;]
	if the player is in danger, say "You can't do that in the middle of a fight!" instead.

wellwishes is a number that varies.

Carry out WellWishing:
	[First, we determine what the player is actually wishing for.]
	let wish-type be 0;
	let offer-value be 0;
	say "What will you wish for?[line break]";
	reset multiple choice questions;
	set next numerical response to "wish for purification";
	set next numerical response to "wish for healing";
	set next numerical response to "wish for items";
	set next numerical response to "just donate";
	set next numerical response to "don't make a wish";
	compute multiple choice question;
	let MCQ be the chosen numerical response;
	if MCQ matches the text "make":[cancel]
		say "You decide against it." instead;
	otherwise if MCQ matches the text "purification":
		now wish-type is 1;
	otherwise if MCQ matches the text "healing":
		now wish-type is 2;
	otherwise if MCQ matches the text "items":
		now wish-type is 3;
	[Next, we find out what the "offering" is and how much it's worth.]
	if the noun is vessel:
		say "You pour the [ShortDesc of the noun] into the well. A satisfying splash can be heard as its contents meet with the water at the bottom. An ephemeral voice speaks inside your head.";
		if the noun is blessed, increase offer-value by 4;
		if the noun is cursed, decrease offer-value by 2;
		let potion-value be 0;
		if the fill-type of the noun < 20:[cursed drink]
			now potion-value is a random number between -1 and 2;
			if potion-value is 0, now potion-value is -1;
		otherwise:
			if the fill-type of the noun < 23, now potion-value is a random number between 1 and 3;
			otherwise now potion-value is a random number between 2 and 4;
		increase offer-value by potion-value * the doses of the noun;
		DoseEmpty the noun;
		if the noun is can, destroy the noun;
	otherwise:
		say "You toss the [ShortDesc of the noun] into the well. A satisfying plunk can be heard as it hits the water at the bottom. An ephemeral voice speaks inside your head.";
		if the noun is plentiful accessory:
			increase offer-value by the price of the noun;
		otherwise:[Infernal gem]
			let A be a random off-stage plentiful accessory;
			unless A is accessory:
				now A is a random plentiful accessory;
				increase offer-value by the price of A;
			otherwise:
				now A is solid gold;
				increase offer-value by the price of A;
				only destroy A;
	[Ok, now we know how much the offering is worth. Does the altar need to treat the player any differently than normal?]
	if the wishskill of the player > 0, increase offer-value by (offer-value / 3);
	say "[line break][first custom style]";
	if the class of the player is virgin warrior:
		say "A champion's [if wish-type is 0]kindness[otherwise]plea[end if]...";
		increase offer-value by 3;
	otherwise if the class of the player is barbarian:
		say "A warrior's [if wish-type is 0]mercy[otherwise]demand[end if]...";
		increase offer-value by 3;
	otherwise if the class of the player is faerie:
		say "The daughter's [if wish-type is 0]gift[otherwise]request[end if]...";
		increase offer-value by 2 * (the number of mating fairies);
	otherwise if the class of the player is avatar:
		if wish-type is 1:
			say "A foolish plea...";
			now offer-value is 99;
		otherwise:
			say "The evil one's [if wish-type is 0]burden[otherwise]command[end if]... ";[Rebuke... Impossible.]
			if offer-value < 1, now offer-value is 1;
	otherwise if the class of the player is cultist or the class of the player is worshipper or the class of the player is priestess:
		say "A greedy steward's [if wish-type is 0]charity[otherwise]solicitation[end if]...";
		decrease offer-value by 5;
	otherwise if the player is sissy or the class of the player is royal slave:
		say "The pitiful one's [if wish-type is 0]contribution[otherwise]desperate prayer[end if]...";
		if offer-value < 0, increase offer-value by 5;
	otherwise if wish-type is not 0:
		say "A call for aid...";
	otherwise:
		say "A potential offering...";
	[Alright, we know how much the offering is worth. Let's try granting a wish]
	if wish-type is 0:
		if offer-value < 1:
			say "Rejected...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			now offer-value is offer-value * -1;
			decrease the stored-offerings of wishing well by (offer-value / 3) + 1;
		otherwise:
			if class of the player is avatar, say "Refusal... impossible. Vile presence....[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise say "Accepted...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			increase the stored-offerings of wishing well by offer-value;
	otherwise:
		if offer-value < 1:
			say "Refused... Greedy...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			now offer-value is offer-value * -1;
			decrease the stored-offerings of wishing well by offer-value + 1;
		otherwise:
			if wish-type is 1:
				compute WellPurifying for offer (offer-value + the stored-offerings of wishing well) with roll 0;
			otherwise if wish-type is 2:
				compute WellHealing for offer (offer-value + the stored-offerings of wishing well) with roll 0;
			otherwise:
				compute WellItems for offer (offer-value + the stored-offerings of wishing well) with roll 0;
	unless the noun is vessel, only destroy the noun.

To compute WellPurifying for offer (N - a number) with roll (R - a number):
	let wish-done be 0;
	if R is 0, now R is a random number between 1 and 5;
	if the class of the player is avatar:
		let T be a random worn headgear;
		say "Payment... Unnecessary... Be DESTROYED![roman type][line break]The voice echoes as a powerful wave of force strikes you right between the eyes! A terrible scream pierces your thoughts, followed by a throbbing pain radiating through your entire body as the huge presence is violently torn out of you! Your [ShortDesc of T] flies off your head and explodes into black cinders.";
		BodyRuin 10;
		only destroy T;
		now the stored-offerings of wishing well is -50;
		now wish-done is 1;
		now R is 0;
	if R is 1:
		let U be a random worn unremovable clothing;
		if (U is cursed piercing and N < 50) or (U is piercing and N < 40) or (U is clothing and N < 30) or U is not clothing:
			if N < 100, say "Rejected... Power... Limited...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise increase R by 1;[if N is at or above 100, we skip flavour and try a different wish.]
		otherwise:
			say "Accepted... You are... Free...[roman type][line break]The voice echoes as your [ShortDesc of U] lights up and slowly disappears from your body.";
			destroy U;
			now the stored-offerings of wishing well is 0;
			now wish-done is 1;
	if R is 2:
		let C be a random worn demonic clothing;
		unless C is clothing, now C is a random worn cursed clothing;
		if (C is demonic clothing and N < 25) or (C is clothing and N < 10) or C is not clothing:
			if N < 100, say "Rejected... Taint... Powerful...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise increase R by 1;
		otherwise:
			say "Accepted... Taint... Purified...[roman type][line break]The voice echoes as your [ShortDesc of C] lights up and slowly disappears from your body.";
			destroy C;
			now the stored-offerings of wishing well is 0;
			now wish-done is 1;
	if R is 3:
		let T be nothing;
		repeat with A running through worn tattoos:
			if A is not tally tattoo and A is not ink-me tattoo, now T is A;[ink-me and tally tattoos are special, and can't be removed ever.]
		if (T is tattoo and N < 50) or T is not tattoo:
			if N < 100, say "Rejected... Contaminant... Resilient...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise increase R by 1;
		otherwise:
			say "Accepted... Contaminant... Purged...[roman type][line break]The voice echoes as your [ShortDesc of T] lights up and slowly disappears from your body.";
			destroy T;
			now the stored-offerings of wishing well is 0;
			now wish-done is 1;
	if R is 4:
		if (hungover > 0 or alcohol > 0 or toffee-poison-timer > 0 or fudge-poison-timer > 0 or cookie-poison-timer > 0) and N > 10:
			say "Accepted... Toxins... Destroyed...[roman type][line break]The voice echoes in your head as you feel your body being purged of all poisons and toxins[if alcohol > 0 or hungover > 0]. You feel completely sober[end if]!";
			now hungover is 0;
			now alcohol is 0;
			now toffee-poison-timer is 0;
			now fudge-poison-timer is 0;
			now cookie-poison-timer is 0;
			now the stored-offerings of wishing well is 0;
			now wish-done is 1;
		otherwise:
			if N < 100, say "Rejected... Toxins... Embedded...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise increase R by 1;
	if R is 5:
		if (the virgin bonus of the player < 0 or (virgincursed > 0 and the player is gendered male)) and N > 75:
			say "Accepted... Shame... Counselled...[roman type][line break]The voice echoes in your head as your mind instantly adapts to the shame of [if virgincursed > 0 and the player is possessing a penis]losing your anal virginity first[otherwise]losing your precious virginity[end if]. [if the player is not shameless]Your sense of dignity feels like it's dropped to its lowest point ever, but at least your shame won't bring you down anymore![end if]";
			ultraHumiliate;[enough to push you down a humiliation level]
			now the virgin bonus of the player is 0;
			if the player is gendered male, now virgincursed is 0;
			now wish-done is 1;
		otherwise:
			if N < 100, say "Rejected... Shame... Inherent...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise increase R by 1;
	if R is 6:
		say "Accepted... Corruption... Purified...[roman type][line break]The voice echoes in your head as a wave of clarity passes through you.";
		SexAddictDown 1;
		now the stored-offerings of wishing well is 0;
		now wish-done is 1;
	if wish-done is 0:
		if N >= 100, compute WellPurifying for offer 100 with roll 1;[If N is very high, we'll try every possible wish, starting from 1]
		otherwise increase the stored-offerings of wishing well by (N - the stored-offerings of wishing well);[If you don't get a wish granted, the well adds the offering to your tab]


To compute WellHealing for offer (N - a number) with roll (R - a number):
	let wish-done be 0;
	if R is 0, now R is a random number between 1 and 4;
	if the class of the player is avatar:
		now R is 0;
		if N > 30:
			let L be a random placed jungle room;
			while L is the location of wishing well:
				now L is a random placed jungle room;
			say "Rebuke... Possible... BEGONE![roman type][line break]The voice echoes in your head as a strong wave of force connects with your body, teleporting you to the [L]!";
		otherwise:
			say "Rebuke... Impossible... Vile Presence...[roman type][line break]The voice echoes in your head as you feel yourself being slightly healed.";
			BodyHeal 1;
		now the stored-offerings of wishing well is 0;
		now wish-done is 1;
	if R is 1:
		if pink-spraybottle is held and pink-spraybottle is cloth and N > 30:
			say "Accepted... Shards... Reconstructed...[roman type][line break]The voice echoes as lemon-scented air blows out of the well, swirling around your [ShortDesc of pink-spraybottle] before weaving into a brand new matching pink bottle of cleaner.";
			now pink-spraybottle is spray;
			now the stored-offerings of wishing well is 0;
			now wish-done is 1;
		if wish-done is 0:
			let P be the throne;
			repeat with C running through worn clothing:
				if C is crotch-ripped or the damage of C > 0, now P is C;
			if P is not clothing or (P is clothing and N <= 20):
				if N < 100, say "Rejected... Tatters... Unworkable...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
				otherwise increase R by 1;
			otherwise:
				say "Accepted... Tatters... Reconstructed...[roman type][line break]The voice echoes as the damage to your [ShortDesc of P] spontaneously repairs itself.";
				if P is crotch-ripped, repair P;
				now the damage of P is 0;
				now wish-done is 1;
	if R is 2:
		if (the body soreness of the player is 0 and the fatigue of the player < 10) or N < 20:
			if N < 100, say "Rejected... Vitality... Unneeded...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise increase R by 1;
		otherwise:
			say "Accepted... Vitality... Restored...[roman type][line break]The voice echoes in your head as a healing wave spreads through your body, erasing all wounds and filling you with new-found energy.";
			now the body soreness of the player is 0;
			now the fatigue of the player is 0;
			now the stored-offerings of wishing well is 0;
			now wish-done is 1;
	if R is 3:
		if N < 30 or the soreness of asshole + the soreness of vagina is 0:
			if N < 100, say "Rejected... Tolerance... Undeserved...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise increase R by 1;
		otherwise:
			say "Rejected... Tolerance... Replenished...[roman type][line break]The voice echoes as all feelings of soreness and tension in your [fuckholes] are washed away.";
			now the soreness of asshole is 0;
			now the tolerated of asshole is 0;
			if the player is possessing a vagina:
				now the soreness of vagina is 0;
				now the tolerated of vagina is 0;
			now the stored-offerings of wishing well is 0;
			now wish-done is 1;
	if R is 4:
		say "Accepted... Fortune... Aligned...[roman type][line break]A wave of positivity flows through your body, and you now feel more... lucky?";
		increase the raw luck of the player by 20;
		now the stored-offerings of wishing well is 0;
		now wish-done is 1;
	if wish-done is 0:
		if N >= 100, compute WellHealing for offer 100 with roll 1;
		otherwise increase the stored-offerings of wishing well by (N - the stored-offerings of wishing well);

To compute WellItems for offer (N - a number) with roll (R - a number):
	let wish-done be 0;
	if R is 0, now R is a random number between 1 and 3;
	if the class of the player is avatar:
		now R is 0;
		if N > 30:
			let L be a random placed jungle room;
			while L is the location of wishing well:
				now L is a random placed jungle room;
			say "Rebuke... Possible... BEGONE![roman type][line break]The voice echoes in your head as a strong wave of force connects with your body, teleporting you to the [L]!";
		otherwise:
			say "Rebuke... Impossible... Vile Presence...[roman type][line break]The voice echoes in your head as you feel yourself being slightly healed.";
			BodyHeal 1;
		now the stored-offerings of wishing well is 0;
		now wish-done is 1;
	if R is 1:
		let L be a random worn locked clothing;
		let K be skeleton key;
		if N < 40 or L is not clothing or K is not off-stage:
			if N < 100, say "Rejected... Metals... Elusive...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise increase R by 1;
		otherwise:
			say "Accepted... Metals... Collected...[roman type][line break]The voice echoes in your head as a [skeleton key] materialises in your head.";[TODO: possibly make this more similar to spraybottle healing.]
			now K is carried by the player;
			now the stored-offerings of wishing well is 0;
			now wish-done is 1;
	if R is 2:
		let P be pure totem;
		let E be a random worn hand ready equippable;
		if N < 50 or P is off-stage or E is clothing:
			if N < 100, say "Rejected... Temperance... Hidden...[roman type][line break]The voice echoes in your head as light gathers around the well and slowly dissipates.";
			otherwise increase R by 1;
		otherwise:
			say "Accepted... Temperance... Awarded...[roman type][line break]The voice echoes in your head as an invisible force gently pushes your hands open and a tiny ivory carving materialises in your palm.";
			now P is carried by the player;
			now the stored-offerings of wishing well is 0;
			now wish-done is 1;
	if R is 3:
		let T be a random off-stage magic token;
		if T is magic token:
			say "Accepted... Power... Accumulated...[roman type][line break]The voice echoes in your head as a magic token materialises in your hand.";
			now T is carried by the player;
		otherwise:
			say "Accepted... Power... Overflowing...[roman type][line break]The voice echoes in your head as a magic token materialises in your hand... and immediately dissolves into glowing motes. You feel stronger!";
			MagicPowerUp 1;
		now the stored-offerings of wishing well is 0;
		now wish-done is 1;
	if wish-done is 0:
		if N >= 100, compute WellItems for offer 100 with roll 1;[If N is very high, lets try to grant the wish again.]
		otherwise increase the stored-offerings of wishing well by (N - the stored-offerings of wishing well);

Report WellWishing:
	allocate 6 seconds.

Understand "drop [something] into well", "wish with [something]", "wish [something]" as WellWishing.

[To compute BadWishing:
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
			say "The [clothing-material of C] of the [ShortDesc of C] tightens painfully to your skin. It must be cursed!";
			fully curse C;
		otherwise:
			say "Nothing happens. How lame.";
	otherwise if the player is possessing a vagina:
		say "You feel yourself being spread wide as [semen] suddenly starts dribbling out of your [vagina]";
		increase the semen volume of vagina by 2;
		leak vagina semen a random number between 4 and 6;
	otherwise:
		say "Nothing happens. How lame.".]

Well ends here.
