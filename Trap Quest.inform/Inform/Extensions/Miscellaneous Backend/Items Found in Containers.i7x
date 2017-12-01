Items Found in Containers by Miscellaneous Backend begins here.

[!<DecideWhichNumberIsTheOverloadOfItem>+

REQUIRES COMMENTING

+!]
To decide which number is the overload of (C - a thing):
	decide on 0.
To decide which number is the overload of (C - a shoes):
	decide on the number of in-play shoes + 1.
To decide which number is the overload of (C - an overdress):
	decide on the number of in-play overdresses - 1.
To decide which number is the overload of (C - an underdress):
	decide on the number of in-play underdresses + 1.
To decide which number is the overload of (C - a corset):
	decide on the number of in-play corsets.
To decide which number is the overload of (C - a knickers):
	decide on the number of in-play knickers - 1.
To decide which number is the overload of (C - a diaper):
	if diaper quest is 1, decide on 0;
	decide on the number of in-play knickers - 1.
To decide which number is the overload of (C - a trousers):
	decide on the number of in-play trousers + 1.
To decide which number is the overload of (C - a stockings):
	decide on the number of in-play stockings + 1.
To decide which number is the overload of (C - a skirt):
	decide on the number of in-play skirts.
To decide which number is the overload of (C - a suspenders):
	decide on the number of in-play suspenders + 1.
To decide which number is the overload of (C - a bra):
	if diaper quest is 1 and the player is male, decide on 999;
	decide on the number of in-play bras + 1.
To decide which number is the overload of (C - a lubricant):
	decide on the number of in-play lubricants + 2.
To decide which number is the overload of (C - a vessel):
	decide on the number of in-play vessels.
To decide which number is the overload of (C - a can):
	decide on the number of in-play cans.
To decide which number is the overload of (C - an accessory):
	if the number of in-play plentiful accessories > 4, decide on 999;
	decide on 1 + (the number of in-play plentiful accessories / 2).

[!<treasureNecessity:Integer>*

REQUIRES COMMENTING

*!]
treasure-necessity is a number that varies.

[!<maxOverload:Integer>*

REQUIRES COMMENTING

*!]
max-overload is a number that varies.  max-overload is 2.

[!<AThingIsNecessary>+

REQUIRES COMMENTING

+!]
Definition: a thing (called C) is necessary:
	if the overload of C < treasure-necessity, decide yes;
	decide no.

[!<AThingIsInPlay>+

REQUIRES COMMENTING

+!]
Definition: a thing (called C) is in-play:
	if C is off-stage, decide no;
	if C is in Standard Item Pen, decide no;
	if C is in Holding Pen, decide no;
	decide yes.
	

[!<AddTreasureToThing>+

REQUIRES COMMENTING

+!]
To add treasure to (X - a thing):
	if tutorial is 1, compute tutorial treasure to X;
	otherwise compute generic treasure to X.

[!<RestockThing>+

REQUIRES COMMENTING

+!]
To restock (C - a thing):
	do nothing. [Default function, should never be used.]

The setup starting items rules is a rulebook. [This rulebook sets up all items that the Item Pen starts with.]

[!<AContainerIsRich>+

REQUIRES COMMENTING

+!]
Definition: a container (called X) is rich:
	decide no.

[!<ATreasureChestIsRich>+

REQUIRES COMMENTING

+!]
Definition: a treasure chest (called X) is rich:
	decide yes.

[!<ASafeIsRich>+

REQUIRES COMMENTING

+!]
Definition: a safe (called X) is rich:
	decide yes.

[!<AnOrnateTrunkIsRich>+

REQUIRES COMMENTING

+!]
Definition: an ornate trunk (called X) is rich:
	decide yes.

[!<snacksFound:Integer>*

REQUIRES COMMENTING

*!]
snacks-found is a number that varies.

[!<ComputeGenericTreasureToThing>+

REQUIRES COMMENTING

+!]
To compute generic treasure to (X - a thing):
	if X is rich and a random number between the square root of the remainder after dividing earnings by 10001 and 150 < 50 - (10 * (the number of on-stage elixirs + the number of on-stage potions + the number of on-stage salves)):
		let Z be nothing;
		let R be a random number from 1 to 3;
		if R is 1:
			now Z is a random off-stage elixir;
			if Z is elixir of life and pregnancy fetish is 0, now Z is nothing;
		if R is 2:
			now Z is a random off-stage potion;
			if Z is potion of the womb and pregnancy fetish is 0, now Z is nothing;
			if Z is potion of bull strength and lactation fetish is 0, now Z is nothing;
		if R is 3:
			now Z is a random off-stage salve;
		if Z is nothing:
			now Z is a random off-stage basic loot accessory;
		unless Z is nothing:
			say "Inside you find a [Z]!  Ooh, very interesting!";
			now Z is in X;
			compute autotaking Z;
		otherwise:
			say "Oh no, it's empty.  Boo!";
	otherwise if X is rich and a random number between the square root of the remainder after dividing earnings by 10001 and 150 < 100 - (10 * the number of on-stage rare clothing):
		let C be a random off-stage rare fetish appropriate clothing;
		now C is in X;
		say "You find a [printed name of C]!  This must be a rare item!";
		if C is diaper cover, say "[one of][item style]Newbie tip: You've found a diaper cover!  This can only be worn over a diaper, and reduces how much a soggy diaper weighs you down.  They will often take a long time for enemies to get past.[roman type][line break][or][stopping]";
		compute autotaking C;
	otherwise if X is rich and a random number between the square root of the remainder after dividing earnings by 10001 and 150 < 100 - (5 * snacks-found):
		let C be a random off-stage snack;
		now C is in X;
		increase snacks-found by 1;
		say "You find a [printed name of C]!  This [one of]looks like it [or][stopping]should help!";
		if newbie tips is 1, say "[one of][item style]Newbie tip: You've found a snack!  These food items will do something good to your stats.  But also if you're patient, there's a certain chef you might meet who can upgrade them into even more incredible treats in exchange for jewellery.[roman type][line break][or][stopping]";
		compute autotaking C;
	otherwise if a random number between 1 and 3 is [1]0:
		say "[if the bimbo of the player < 5][one of]Hmm, this one's empty.[or]Unfortunately it's empty.[or]Ugh, another empty one.[then at random][otherwise][one of]Oh no, it's empty.  Boo![or]Lame, there's nothing inside![or]Aww, it's completely empty.[or]How boring, there's nothing here![in random order][end if]";
	otherwise:
		now treasure-necessity is [a random number between 1 and] max-overload;
		if debugmode is 1, say "Obtaining item with maximum overload of [treasure-necessity]; ";
		let I be a random necessary thing in Standard Item Pen;
		if I is nothing:
			now I is a random thing in Standard Item Pen;
			increase max-overload by 1;
			if debugmode is 1, say "no such item exists, increasing overload limit to [max-overload].";
		otherwise:
			if debugmode is 1, say "decided on item [printed name of I] (overload [overload of I]).";
			if I is can and debugmode is 1:
				say "LIST: ";
				repeat with C running through in-play cans:
					say "[C] in [location of C].";
		if the player is in The Dungeon:
			if I is accessory and X is not rich:
				if a random number from 1 to 2 is 1, now I is emerald;
				otherwise now I is sapphire;
			if I is plentiful accessory, set shortcut of I;
		otherwise if the player is in The Woods:
			[if I is clothing:
				let Z be a random number from 3 to 6;
				while the price of I < Z:
					if a random number from 1 to 4 > 1:
						let I be a random clothing in Standard Item Pen;
						decrease Z by 1;
					otherwise:
						now Z is -1;]
			if I is accessory and X is not rich:
				if a random number from 1 to 3 is 1, now I is ruby;
				otherwise now I is sapphire;
			if I is plentiful accessory, set shortcut of I;
		otherwise if the player is in The Hotel or the player is in The Mansion:
			[if I is clothing:
				let Z be a random number from 5 to 8;
				while the price of I < Z:
					if a random number from 1 to 4 > 1:
						let I be a random clothing in Standard Item Pen;
						decrease Z by 1;
					otherwise:
						now Z is -1;]
			if I is accessory and X is not rich:
				if a random number from 1 to 3 is 1:
					now I is ruby;
				otherwise if a random number from 1 to 3 is 1:
					now I is emerald;
				otherwise:
					now I is sapphire;
			if I is plentiful accessory, set shortcut of I;
		if I is a bra:
			while the size of I < the largeness of breasts + 2 and I is not training bra:
				if extreme proportions fetish is 1 and the size of I < 15, increase the size of I by 1;
				if extreme proportions fetish is 0 and the size of I < 10, increase the size of I by 1;
				if a random number between 1 and 5 > 2, break;
			if the size of I > max breast size and max breast size >= min size of I, now the size of I is max breast size;
		now I is in X;
		if X is ornate trunk and I is clothing:
			if I is not accessory and (I is not chestless or I is belly covering or I is not no-crotch or I is not unskirted) and a random number between 1 and 3 is 1, now the magic-type of I is possession;
		restock I;
		if I is food and (a random number between 1 and the fat-weight of the player > 15 or the player is hungry) and the player is not overly full and the player is able to eat:
			compute automatic eating of I;
		otherwise:
			say "[Discovery of I]";
		compute autotaking I.

[!<ComputeAutotakingAThing>+

REQUIRES COMMENTING

+!]
To compute autotaking (I - a thing):
	if autotake >= 1 and I is in-play and I is not held and ((I is not food and I is not bottle and I is not plentiful accessory) or autotake is 2) and there is a worn bag of holding and the class of the player is not living sex doll and the player is not in danger:
		if the player is wrist bound and there is a worn heels and the player is upright:
			say "[one of][bold type]You won't automatically pick stuff up when you have a risk of tripping over because of your heels and wrist bondage.[roman type][line break][or][stopping]";
		otherwise:
			try silently taking I;
			now focused-thing is I;
			if I is held:
				if I is plentiful actually summonable accessory:
					try wearing I;
				if I is worn:
					do nothing;
				otherwise:
					if I is not food and I is not bottle and I is not plentiful accessory, say "You add the [ShortDesc of I] to your bag.";
					otherwise say "You are now carrying the [ShortDesc of I].";
				now another-turn is 1.
				.


[!<ReportOpeningAContainer>+

REQUIRES COMMENTING

+!]
Report opening a container:
	repeat with I running through clothing in the noun:
		if I is clothing and the bimbo of the player > 10, compute automatic wearing of I.

[!<SayDiscoveryOfThing>+

REQUIRES COMMENTING

+!]
To say Discovery of (I - a thing):
	say "You find a [ShortDesc of I] inside![line break][variable custom style][DiscoveryFlav of I][roman type][line break]";
	if newbie tips is 1:
		if I is can, say "[one of][item style]Newbie tip: You've found a can!  These can contain a single dose of a type of liquid.[roman type][line break][or][stopping]";
		if I is vessel, say "[one of][item style]Newbie tip: You've found a drinking vessel!  You can fill this full of liquid at dispensers such as tanks and buckets.  There's one tank in the starting room, so you can [unless the location of the player is Dungeon12]go there to [end if]try it out.[roman type][line break][or][stopping]";
		if I is bottle, say "[one of][item style]There are lots of different colours of liquids, which you'll slowly identify as you play the game.  Some are good, and some are cursed, which means they will always have a bad effect.  Drinking from a cursed vessel will make any drink, even a beneficial one, cursed instead![roman type][line break][or][stopping]";
		if I is can, say "[one of][item style]Cans can never be cursed, so once you drink a cursed drink from a can, your player will always remember that this colour is definitely cursed.[roman type][line break][or][stopping]";
		if I is bra, say "[one of][item style]Newbie tip: You've found a bra!  These can help you reduce the effective weight of your breasts, which therefore reduces how quickly you gain fatigue.  The closer they are to your actual cup size, the more effective they'll be.  [if the largeness of breasts < 3]Right now, you don't need to worry about breast weight, so it's probably best to ignore this item.[end if][roman type][line break][or][stopping]";
		if I is undies, say "[one of][item style]Newbie tip: You've found some underwear!  These can protect your modesty, and also make it slightly more challenging for the bad things in the game to get at your [fuckholes].  It's best to examine them first, since they can have extra details which usually indicate what negative effect they may have, if any.[roman type][line break][or][stopping]";
		if I is diaper, say "[one of][item style]Newbie tip: You've found a diaper!  Diapers are a really good idea, since your character really won't be happy if they wet themselves in any other underwear.  Examine the diaper to learn more.[roman type][line break][or][stopping]";
		if I is corset, say "[one of][item style]Newbie tip: You've found a corset!  Corsets help keep your belly under control, which makes it less difficult to crawl and encourages stuff that's gone up into your belly to come back out faster.[roman type][line break][or][stopping]";
		if I is heels, say "[one of][item style]Newbie tip: You've found a pair of heels!  These make standing much more difficult, and fatigue goes up much faster while standing.  The higher the heels, the worse the penalty.  You risk falling over while your heel skill is low.  But, your kick attacks, which are usually the weakest attacks, get massive bonus damage depending on how high the heels are.  As you wear heels, you'll slowly get better at wearing them, and fall over less and less.  Essentially, if you choose to wear heels, you'll struggle more early on but be able to do huge damage later on.  For your first ever game, it's probably best to ignore heels completely, and rely on other attacks.[roman type][line break][or][stopping]";
		if I is stockings, say "[one of][item style]Newbie tip: You've found a pair of stockings!  These can slightly improve your knee attacks, and also can help you stay balanced when wearing heels.[roman type][line break][or][stopping]";
		if I is skirt, say "[one of][item style]Newbie tip: You've found a skirt!  Skirts can help with modesty, examine the item closer to find out exactly how good or bad this one would be![roman type][line break][or][stopping]";
		if I is overdress, say "[one of][item style]Newbie tip: You've found a piece of overwear clothing!  There are loads of these, and they all have different positives and negatives.  Examine them to get an idea of what they might do.  Then, if you wear the item, examine it again afterwards.  Sometimes you'll be given extra information that you weren't allowed to know before you put it on.[roman type][line break][or][stopping]";
		if I is lubricant, say "[one of][item style]Newbie tip: You've found a lubricant!  Your lower orifices can get sore from getting used, which can lead to you fainting.  If you use the lube on an orifice, it will make it get sore much slower, for a while.  You can also drink lube - it helps you avoid gag reflexes when about to choke down some cock, and it can save you from fainting from thirst in a real pinch.[roman type][line break][or][stopping]";
		if I is snack, say "[one of][item style]Newbie tip: You've found a snack!  Snacks tend to not tend to do too much except keep you from being hungry, although some have minor additional effects.  [if weight gain fetish is 1]However, eating snacks will make you fatter, which means until you work off the fat with exercise, you'll gain fatigue faster than before.[end if][roman type][line break][or][stopping]";
		if I is plentiful accessory, say "[one of][item style]Newbie tip: You've found a piece of jewellery!  Jewellery acts as both the in-game currency which you can sometimes spend on useful things, and also what you want to end up [bold type]wearing[item style] at the end to get a decent score.  Every time you faint, you'll lose your most valuable piece of jewellery.[roman type][line break][or][stopping]";
	if I is maybe-cursed and I is clothing and the identifyskill of the player is 1 and a random number between 1 and 40 < the intelligence of the player:
		say "Looking at this item, you remember the shopkeeper's hints!  Studying it closely, you realise you're definitely right in your suspicions.  You have identified that the [ShortDesc of I] is cursed!";
		now I is sure.

[!<SayDiscoveryFlavOfThing>+

REQUIRES COMMENTING

+!]
To say DiscoveryFlav of (I - a thing):
	say "[if the number of worn clothing is 0 and I is clothing and the bimbo of the player < 5 and earnings > starting-earnings - 2500][one of]Not what I was expecting.[or]And there I was hoping for a sword.[or]I'm confused, why would I want to take this?[in random order][otherwise if I is plentiful accessory]Great!  This looks valuable.[otherwise if the outrage of I < 6 and I is clothing and the bimbo of the player < 5 and the player is male and I is not manly]Too girly.[otherwise if diaper quest is 1 and I is clothing and the bimbo of the player < 5 and the cringe appearance of the player > the outrage of I and the cringe of I < 3]Well it's better than the childish stuff...[otherwise if the outrage of I < 6 and I is clothing and the bimbo of the player < 5]Not really my style.[otherwise if the outrage of I * 2000 > the humiliation of the player + 4000]How distasteful.[otherwise if the outrage of I * 2000 > the humiliation of the player + 2000]How outrageous![otherwise if the outrage of I * 2000 > the humiliation of the player]How peculiar.[otherwise if the outrage of I * 2000 > the humiliation of the player - 2000 or the bimbo of the player < 5]Interesting...[otherwise if the outrage of I * 2000 > the humiliation of the player - 5000 or the bimbo of the player < 8]This might be useful![otherwise if the bimbo of the player < 12]Ooh, how intriguing![otherwise]Yay, how exciting![end if]".

[!<SayDiscoveryFlavOfCan>+

REQUIRES COMMENTING

+!]
To say DiscoveryFlav of (I - a can):
	say "[if I is known-cursed-potion]Well, I'm glad I know not to drink this.[otherwise if I is known-good-potion]Sweet![otherwise]Maybe it's worth drinking?[end if]".

[!<SayDiscoveryFlavOfFood>+

REQUIRES COMMENTING

+!]
To say DiscoveryFlav of (I - food):
	say "[if I is candy and the body soreness of the player < 4 and the player is not hungry]Maybe it's worth saving for later?[otherwise if I is food]Maybe it's worth eating?[end if]".

[!<SayDiscoveryFlavOfDiaper>+

REQUIRES COMMENTING

+!]
To say DiscoveryFlav of (I - diaper):
	say "[if earnings > starting-earnings - 100 and diaper quest is 0]I don't get it, why would I need this?![otherwise if the bimbo of the player < 6 and there is a held diaper]Ugh, yuck.  Am I really going to need this many?![otherwise if the bimbo of the player < 6]Ugh, yuck.  Am I really going to need this?[otherwise if the bimbo of the player < 11 and I is actually summonable]I guess I'd better wear this.[otherwise if the bimbo of the player < 11]I guess I'd better take this with me.[otherwise if the number of held diapers is 0]Phew!  I was hoping to find one soon.[otherwise if the number of carried diapers is 0]Thank goodness, I was running low![otherwise if the bimbo of the player < 15]It's good to have a decent supply![otherwise]Ooh, this one will look perfect on me![end if]".

[!<ComputeAutomaticWearingOfClothing>+

REQUIRES COMMENTING

+!]
To compute automatic wearing of (C - a clothing):
	let R be a random number between 12 and 18;
	if C is not almost too much and C is not too boring and the outrage of C is not too humiliating and R < the bimbo of the player:
		if C is actually wearable and C is not cursed or C is not sure:
			say "[variable custom style]Ooh, this is perfect!  I want to wear this right now![roman type]  You try to put it on.";
			now C is held by the player;
			try wearing C.

[!<ComputeAutomaticEatingOfThing>+

REQUIRES COMMENTING

+!]
To compute automatic eating of (I - a thing):
	say "You find a [printed name of I] inside!  You can't control yourself, you [if the player is hungry]are too hungry[otherwise]suddenly feel extremely hungry and you just know it's going to taste so yummy[end if]!";
	now I is carried by the player;
	let C be I;
	try TQeating C; [I HAVE NO IDEA WHY THIS SOLVES THE BUG IT JUST DOES DON'T ASK QUESTIONS]
	if I is off-stage, say "[if the bimbo of the player < 12 and I is candy][variable custom style]I should really work on my self-control...[otherwise if the bimbo of the player < 12][variable custom style]I feel much better![otherwise][second custom style]MMM so yummy!  Oh, it's all gone already?[end if][roman type][line break]".


Items Found in Containers ends here.
