Background Options by Fetish Settings begins here.

To decide which number is background-nurse:
	if choice in row 52 of the Table of Player Options is 1, decide on 1;
	decide on 0.

To decide which number is background-sporty:
	if choice in row 52 of the Table of Player Options is 2, decide on 1;
	decide on 0.

To decide which number is background-waitress:
	if choice in row 52 of the Table of Player Options is 3, decide on 1;
	decide on 0.

To decide which number is background-pure:
	if choice in row 52 of the Table of Player Options is 4 and (diaper quest is 1 or the player is originally female), decide on 1;
	decide on 0.

To decide which number is background-magic:
	if choice in row 52 of the Table of Player Options is 5, decide on 1;
	decide on 0.

To decide which number is background-rich:
	if choice in row 52 of the Table of Player Options is 6, decide on 1;
	decide on 0.

To decide which number is background-exhibitionist:
	if choice in row 52 of the Table of Player Options is 7, decide on 1;
	decide on 0.

To decide which number is background-selected:
	if choice in row 52 of the Table of Player Options > 0 and (choice in row 52 of the Table of Player options is not 4 or diaper quest is 1 or the player is originally female), decide on 1;
	decide on 0.

Table of Background Options
title	subtable	description	toggle
"[roman type]Previous Menu (shortcut: press Q)"	--	--	quit rule
"No Background - 0 points ([if background-selected is not 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	empty background rule
"Background (only one): Nursing Student (you can sometimes scrounge up some bandages that slightly heal you, base intelligence slightly higher) - 5 points ([if background-nurse is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	first aid skill toggle rule
"Background (only one): Sporty (slightly higher strength, slightly reduced intelligence, build fatigue 20% slower) - 5 points ([if background-sporty is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	sporty background toggle rule
"Background (only one): [if the player is presenting as female]Waitress[otherwise]Waiter[end if] (slightly higher dexterity, your work uniform's shoes are slightly impractical, so you start with 3/10 skill points walking in heels and your chances of spilling drinks when falling over is halved) - 5 points ([if background-waitress is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	waitress background toggle rule
"Background (only one): D&D Nerd (you start out with slightly higher base intelligence, slightly lower base strength, some starting magic power and a random spell) - 5 points ([if background-magic is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	magic background toggle rule
"Background (only one): Rich[if the player is presenting as female] Bitch[end if] (you start out with lots of extra sapphire jewellery inside the pink wardrobe) - 5 points ([if background-rich is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	rich background toggle rule
"Background (only one): Exhibitionist (you won't find underwear in containers, but you don't lose self-respect from embarrassing outfits / appearance) - 5 points ([if background-exhibitionist is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	exhibitionist background toggle rule
"Background (only one): [if diaper quest is 0]Pure (you start out really caring about your virginity: virgin warrior quest is mandatory unless you lose your virginity early, but gives you positive stats over time once started[otherwise]Teen Bedwetter (you have horrible memories of wetting the bed in your teens, and now really care about your continence: you start with +1 strength & dexterity and this number grows over time but if you ever accidentally wet yourself you suffer serious penalties[end if]) - 5 points ([if background-pure is 0]not [otherwise][bold type][end if]chosen[roman type])"	--	--	pure background toggle rule
[MAKE SURE PURE BACKGROUND REMAINS THE BOTTOM ROW WHEN ADDING OTHERS]

This is the empty background rule:
	now choice in row 52 of the Table of Player Options is 0.
The empty background rule is listed in the reset rules.

This is the first aid skill toggle rule:
	if choice in row 52 of the Table of Player Options is 1:
		now choice in row 52 of the Table of Player Options is 0;
	otherwise if points count >= 5 or choice in row 52 of the Table of Player Options > 0:
		now choice in row 52 of the Table of Player Options is 1.

This is the sporty background toggle rule:
	if choice in row 52 of the Table of Player Options is 2:
		now choice in row 52 of the Table of Player Options is 0;
	otherwise if points count >= 5 or choice in row 52 of the Table of Player Options > 0:
		now choice in row 52 of the Table of Player Options is 2.

This is the waitress background toggle rule:
	if choice in row 52 of the Table of Player Options is 3:
		now choice in row 52 of the Table of Player Options is 0;
	otherwise if points count >= 5 or choice in row 52 of the Table of Player Options > 0:
		now choice in row 52 of the Table of Player Options is 3.

This is the pure background toggle rule:
	if choice in row 52 of the Table of Player Options is 4:
		now choice in row 52 of the Table of Player Options is 0;
	otherwise if points count >= 5 or choice in row 52 of the Table of Player Options > 0:
		now choice in row 52 of the Table of Player Options is 4.

This is the magic background toggle rule:
	if choice in row 52 of the Table of Player Options is 5:
		now choice in row 52 of the Table of Player Options is 0;
	otherwise if points count >= 5 or choice in row 52 of the Table of Player Options > 0:
		now choice in row 52 of the Table of Player Options is 5.

This is the rich background toggle rule:
	if choice in row 52 of the Table of Player Options is 6:
		now choice in row 52 of the Table of Player Options is 0;
	otherwise if points count >= 5 or choice in row 52 of the Table of Player Options > 0:
		now choice in row 52 of the Table of Player Options is 6.

This is the exhibitionist background toggle rule:
	if choice in row 52 of the Table of Player Options is 7:
		now choice in row 52 of the Table of Player Options is 0;
	otherwise if points count >= 5 or choice in row 52 of the Table of Player Options > 0:
		now choice in row 52 of the Table of Player Options is 7.

This is the background initialisation rule:
	if background-waitress is 1:
		now the raw heel skill of the player is 3;
		now the heel time of the player is 600;
	otherwise if background-magic is 1:
		MagicPowerUp 3;
		let LS be a list of magic-spells;
		repeat with S running through uncastable fetish appropriate magic-spells:
			if S is not wand-summoning and S is not magic-purify and the raw-magic-cost of S <= the total magic power of the player:
				add S to LS;
		if the number of entries in LS > 0:
			sort LS in random order;
			let S be entry 1 in LS;
			say "[bold type]You find that you know how to cast a magic spell![NewbieSpellFlav]";
			compute learning of S;
	otherwise if background-pure is 1 and diaper quest is 1:
		now wetting-valued is 4;
		now diaper bonus is 1.
The background initialisation rule is listed last in the game universe initialisation rules. [Otherwise the table of possible incantations hasn't been set up yet]


Background Options ends here.
