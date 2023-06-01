Items Found in Containers by Miscellaneous Backend begins here.

Standard Item Pen is a list of things that varies.

Definition: a thing is in-play:
	if it is off-stage or it is in Holding Pen or it is in Predicament-Pen, decide no;
	decide yes.
Definition: a thing is containerRelevant: [should it be considered when counting how many of this item are available to the player right now?]
	if it is not in-play or it is not unowned or it is in a container or it is in School15, decide no;
	decide yes.
Definition: a thing is containerAvailable: [can it appear in a container?]
	if it is off-stage, decide yes;
	decide no.
Definition: a thing is containerOptimal: decide yes. [is it something that we're especially happy for the player to find? If not we might reroll]
Definition: a shoes is containerOptimal:
	if the number of containerRelevant shoes > 2, decide no;
	decide yes.
Definition: a heels is containerOptimal:
	if the number of containerRelevant heels > 1, decide no;
	decide yes.
Definition: an overdress is containerOptimal:
	if the number of containerRelevant overdress > 2, decide no;
	decide yes.
Definition: an underdress is containerOptimal:
	if the number of containerRelevant underdress > 1, decide no;
	decide yes.
Definition: a corset is containerOptimal:
	if the number of containerRelevant corsets > 1, decide no;
	decide yes.
Definition: a knickers is containerOptimal:
	if diaper lover is 0 and the number of containerRelevant knickers > 2, decide no;
	if diaper lover > 0 and the number of containerRelevant knickers - the number of containerRelevant diapers > 2, decide no;
	decide yes.
Definition: a diaper is containerAvailable:
	if diaper quest is 0 and it is off-stage, decide yes;
	decide no.
Definition: a trousers is containerOptimal:
	if the number of containerRelevant trousers > 1, decide no;
	decide yes.
Definition: a stockings is containerOptimal:
	if the number of containerRelevant stockings > 1, decide no;
	decide yes.
Definition: a skirt is containerOptimal:
	if the number of containerRelevant skirts > 1, decide no;
	decide yes.
Definition: a suspenders is containerOptimal:
	if the number of containerRelevant suspenders > 1, decide no;
	decide yes.
Definition: a bra is containerOptimal:
	if the number of containerRelevant bras > 1, decide no;
	decide yes.
Definition: a bra is containerAvailable:
	if diaper quest is 1 and the player is gendered male, decide no;
	if the max size of it + the leniency of it < the largeness of breasts, decide no;
	if it is off-stage, decide yes;
	decide no.

To add treasure to (X - a thing):
	if tutorial is 1, compute tutorial treasure to X;
	otherwise compute generic treasure to X.

To restock (C - a thing):
	say "BUG - tried to restock [C] but there was no restocking function available. Please submit a quick bug report!";
	do nothing. [Default function, should never be used.]

The setup starting items rules is a rulebook. [This rulebook sets up all items that the Item Pen starts with.]

Definition: a container is rich: decide no.

Definition: a treasure chest is rich: decide yes.

Definition: a safe is rich: decide yes.

Definition: an ornate trunk is rich: decide yes.

snacks-found is a number that varies.
last-turn-nothing is a number that varies.

To compute generic treasure to (X - a thing):
	let chest-luck be 0;
	if lucky you tattoo is worn, now chest-luck is 50;
	if X is rich and earnings < starting-earnings - 100 and a random number between 1 and 500 <= chest-luck + 50 - (10 * (the number of in-play alchemy products)): [starts at 1 in 10 and gets worse as alchemy products appear]
		let Z be nothing;
		let R be a random number from 1 to 6;
		if R is 1:
			now Z is a random off-stage fetish appropriate elixir;
		otherwise if R is 2:
			now Z is a random off-stage fetish appropriate potion;
		otherwise if R is 3:
			now Z is a random off-stage fetish appropriate salve;
		otherwise if R is 4:
			now Z is a random off-stage fetish appropriate powder;
		otherwise if R is 5:
			now Z is a random off-stage fetish appropriate bomb;
		if Z is alchemy product:
			if a random number from 1 to 5 is 1, now Z is cursed;
			otherwise now Z is bland;
			if a random number from 1 to 6 is 1, now Z is blessed;
		otherwise:
			now Z is a random off-stage plentiful ring;
			if Z is ring:
				if playerRegion is Dungeon:
					now Z is sapphire;
				otherwise if playerRegion is Woods:
					now Z is emerald;
				otherwise if playerRegion is Hotel or playerRegion is Mansion:
					now Z is ruby;
				set shortcut of Z;
		unless Z is nothing:
			say "Inside you find a [ShortDesc of Z]! Ooh, very interesting!";
			now Z is in X;
			compute autotaking Z;
		otherwise:
			say "Oh no, it's empty. Boo!";
	otherwise if X is rich and a random number between the square root of the remainder after dividing earnings by 10001 and 150 < chest-luck + 100 - (10 * (the number of in-play rare clothing - the number of rare clothing in School15)):
		let C be a random off-stage rare fetish appropriate clothing;
		now C is in X;
		if C is bra, compute found size of C;
		say "You find a [printed name of C]! This must be a rare item!";
		compute autotaking C;
	otherwise if christmas content is 1 and a random number between 1 and 5 is 1:
		let C be a random off-stage christmas gift;
		if C is a thing:
			now C is in X;
			say "You find a [printed name of C]! Hooray!";
			compute autotaking C;
	otherwise if X is rich and a random number between the square root of the remainder after dividing earnings by 10001 and 150 < chest-luck + 100 - (5 * snacks-found):
		let C be a random off-stage snack;
		now C is in X;
		increase snacks-found by 1;
		say "You find a [printed name of C]! This [one of]looks like it [or][stopping]should help!";
		if newbie tips is 1, say "[one of][newbie style]Newbie tip: You've found a snack! These food items will do something good to your stats. But also if you're patient, there's a certain chef you might meet who can upgrade them into even more incredible treats in exchange for jewellery.[roman type][line break][or][stopping]";
		compute autotaking C;
	otherwise if a random number between 1 and 7 > (4 - inventory handicap):
		let T be nothing;
		if a random number between 0 and (3 - inventory handicap) <= last-turn-nothing:
			now T is a random off-stage fetish appropriate container-eligible thing;
			if T is cursable:
				let CR be a random number between 1 and 8;
				if CR is 1, now T is cursed;
				if CR is 8, now T is blessed;
				now T is unsure;
		otherwise:
			now T is a random off-stage fetish appropriate mass collectible;
		if T is a thing:
			now T is in X;
			if T is not mass collectible, say bold type;
			say "You find a [MediumDesc of T]! [roman type]Nice.";
			if T is mass collectible and newbie tips is 1, say "[one of][newbie style]Newbie tip: You've found a token! These can be cashed in by using them at a crafting station, and will do something good. The beneficial effect will scale with the number you manage to collect so it's no problem to wait a while before cashing them in.[roman type][line break][or][stopping]";
			compute autotaking T;
			now last-turn-nothing is 0;
		otherwise:
			increase last-turn-nothing by 1;
			say "[if the bimbo of the player < 5][one of]Hmm, this one's empty.[or]Unfortunately it's empty.[or]Ugh, another empty one.[then at random][otherwise][one of]Oh no, it's empty. Boo![or]Lame, there's nothing inside![or]Aww, it's completely empty.[or]How boring, there's nothing here![in random order][end if]";
	otherwise:
		if debugmode > 1, say "Item list: [Standard Item Pen].";
		let I be entry 1 in Standard Item Pen;
		let itemAcceptable be 0;
		let itemsConsidered be 0;
		while itemAcceptable is 0 and itemsConsidered < 25:
			if debugmode > 0, say "Chose [printed name of I].";
			if I is not containerAvailable or (itemsConsidered is 0 and I is not containerOptimal):
				if debugmode > 0, say "It was not [if I is containerAvailable]considered a great choice[otherwise]available for spawning[end if], so we will remove it from the list and try again.";
				restock I;
				sort Standard Item Pen in random order;
				now I is entry 1 in Standard Item Pen;
				increase itemsConsidered by 1;
			otherwise:
				now itemAcceptable is 1;
		if itemsConsidered >= 25:
			say "Bug: we've been unable to find an item to spawn. Please report the bug with this information:[line break]";
			repeat with SIP running through Standard Item Pen:
				say "[SIP] ([location of SIP]); ";
		if I is a bra, compute found size of I;
		now I is in X;
		if X is ornate trunk and I is clothing:
			if I is not accessory and (I is not chestless or I is belly covering or I is not no-crotch or I is not unskirted) and a random number between 1 and 3 is 1, now the magic-type of I is possession;
		restock I;
		if I is food and (a random number between 1 and the fat-weight of the player > 15 or the player is hungry) and the player is not overly full and the player is able to eat:
			compute automatic eating of I;
		otherwise:
			say Discovery of I;
		compute autotaking I.

autotake-target is a thing that varies.

To compute autotaking (I - a thing):
	if another-turn is 0 and another-turn-action is the no-stored-action rule and autotake >= 1 and I is in-play and I is not held and ((I is not food and I is not bottle and I is not plentiful accessory) or autotake is 2) and I is not known-cursed-potion and there is a worn bag of holding and the player is able to use their hands and the player is not in danger:
		if the player is wrist bound and there is a worn heels and the player is upright:
			say "[one of][bold type]You won't automatically pick stuff up when you have a risk of tripping over because of your heels and wrist bondage.[roman type][line break][or][stopping]";
		otherwise:
			let autotakeYes be 1;
			if (I is never-in-bag or the number of worn bag of holding is 0) and (((diaper quest is 0 or the appearance of the player >= the cringe appearance of the player)and the outrage of I >= the appearance of the player) or (diaper quest is 1 and the cringe of I >= the cringe appearance of the player and the cringe appearance of the player >= the appearance of the player)):
				say "[if there is a worn bag of holding][BigNameDesc of I] can't go in your bag, so it[otherwise]Picking up [NameDesc of I][end if] will negatively affect your appearance. Do you want to pick it up?";
				if the player is not consenting, now autotakeYes is 0;
			if autotakeYes is 1:
				now autotake-target is I;
				now another-turn is 1;
				now another-turn-action is autotaking continues rule.

This is the autotaking continues rule:
	let I be autotake-target;
	if I is a thing and autotake >= 1 and I is in-play and I is not held and ((I is not food and I is not bottle and I is not plentiful accessory) or autotake is 2) and I is not known-cursed-potion and there is a worn bag of holding and the player is able to use their hands and the player is not in danger:
		if the player is wrist bound and there is a worn heels and the player is upright:
			say "[bold type]You won't automatically pick stuff up when you have a risk of tripping over because of your heels and wrist bondage.[roman type][line break]";
		otherwise:
			if I is can and there is an open minibar in the location of the player:
				repeat with C running through cans in the location of the player:
					if I is not C, try silently taking C;
			try silently taking I;
			now focused-thing is I;
			if I is carried:
				if I is plentiful actually summonable accessory: [Should no longer happen]
					try wearing I;
				if I is worn:
					do nothing;
				otherwise if I is autobinding clothing and the player is not in a predicament room and I is unclash summonable:
					say "[bold type]Suddenly, [NameDesc of I] disappears from your hands![roman type][line break]";
					autobind I;
				otherwise:
					if I is not food and I is not bottle and I is not plentiful accessory, say "You add the [FullTitle of I] to your bag.";
					otherwise say "You are now carrying the [FullTitle of I].";
					if I is clothing and the bimbo of the player > a random number between 11 and 18, compute automatic wearing of I.
				[now another-turn is 1.]

Report opening a container:
	repeat with I running through clothing in the noun:
		if I is clothing and the bimbo of the player > a random number between 11 and 18, compute automatic wearing of I.

To say Discovery of (I - a thing):
	say "You find a [ShortDesc of I] inside![line break][variable custom style][DiscoveryFlav of I][roman type][line break]";
	if newbie tips is 1:
		if I is can, say "[one of][newbie style]Newbie tip: You've found a can! These can contain a single dose of a type of liquid.[roman type][line break][or][stopping]";
		if I is vessel, say "[one of][newbie style]Newbie tip: You've found a drinking vessel! You can fill this full of liquid at dispensers such as tanks and buckets. There's one tank in the starting room, so you can [unless the location of the player is Dungeon12]go there to [end if]try it out.[roman type][line break][or][stopping]";
		if I is bottle, say "[one of][newbie style]Newbie tip: There are lots of different colours of liquids, which you'll slowly identify as you play the game. Some are good, and some are cursed, which means they will always have a bad effect. Drinking from a cursed vessel will make any drink, even a beneficial one, cursed instead![roman type][line break][or][stopping]";
		if I is can, say "[one of][newbie style]Newbie tip: Cans can never be cursed, so once you drink a cursed drink from a can, your player will always remember that this colour is definitely cursed.[roman type][line break][or][stopping]";
		if I is bra, say "[one of][newbie style]Newbie tip: You've found a bra! These can help you reduce the effective weight of your breasts, which therefore reduces how quickly you gain fatigue. The closer they are to your actual cup size, the more effective they'll be. [if the largeness of breasts < 3]Right now, you don't need to worry about breast weight, so it's probably best to ignore this item.[end if][roman type][line break][or][stopping]";
		if I is undies, say "[one of][newbie style]Newbie tip: You've found some underwear! These can protect your modesty, and also make it slightly more challenging for the bad things in the game to get at your [fuckholes]. It's best to examine them first, since they can have extra details which usually indicate what negative effect they may have, if any.[roman type][line break][or][stopping]";
		if I is diaper, say "[one of][newbie style]Newbie tip: You've found a diaper! Diapers are a really good idea, since your character really won't be happy if they wet themselves in any other underwear. Examine the diaper to learn more.[roman type][line break][or][stopping]";
		if I is corset, say "[one of][newbie style]Newbie tip: You've found a corset! Corsets help keep your belly under control, which makes it less difficult to crawl and encourages stuff that's gone up into your belly to come back out faster.[roman type][line break][or][stopping]";
		if I is heels, say "[one of][newbie style]Newbie tip: You've found a pair of heels! These make standing much more difficult, and fatigue goes up much faster while standing. The higher the heels, the worse the penalty. You risk falling over while your heel skill is low. But, your kick attacks, which are usually the weakest attacks, get massive bonus damage depending on how high the heels are. As you wear heels, you'll slowly get better at wearing them, and fall over less and less. Essentially, if you choose to wear heels, you'll struggle more early on but be able to do huge damage later on. For your first ever game, it's probably best to ignore heels completely, and rely on other attacks.[roman type][line break][or][stopping]";
		if I is stockings, say "[one of][newbie style]Newbie tip: You've found a pair of stockings! These can slightly improve your knee attacks, and also can help you stay balanced when wearing heels.[roman type][line break][or][stopping]";
		if I is skirt, say "[one of][newbie style]Newbie tip: You've found a skirt! Skirts can help with modesty, examine the item closer to find out exactly how good or bad this one would be![roman type][line break][or][stopping]";
		if I is overdress, say "[one of][newbie style]Newbie tip: You've found a piece of overwear clothing! There are loads of these, and they all have different positives and negatives. Examine them to get an idea of what they might do. Then, if you wear the item, examine it again afterwards. Sometimes you'll be given extra information that you weren't allowed to know before you put it on.[roman type][line break][or][stopping]";
		if I is lubricant, say "[one of][newbie style]Newbie tip: You've found a lubricant! Your lower orifices can get sore from getting used, which can lead to you fainting. If you use the lube on an orifice, it will make it get sore much slower, for a while. You can also drink lube - it helps you avoid gag reflexes when about to choke down some cock, and it can save you from fainting from thirst in a real pinch.[roman type][line break][or][stopping]";
		if I is snack, say "[one of][newbie style]Newbie tip: You've found a snack! Snacks tend to not tend to do too much except keep you from being hungry, although some have minor additional effects. [if weight gain fetish is 1]However, eating snacks will make you fatter, which means until you work off the fat with exercise, you'll gain fatigue faster than before.[end if][roman type][line break][or][stopping]";
		if I is plentiful accessory, say "[one of][newbie style]Newbie tip: You've found a piece of jewellery! Jewellery acts as both the in-game currency which you can sometimes spend on useful things, and also what you want to end up [bold type]wearing[item style] at the end to get a decent score. Every time you faint, you'll lose your most valuable piece of jewellery.[roman type][line break][or][stopping]";
	if I is maybe-cursed and I is clothing and the identifyskill of the player is 1 and a random number between 1 and 40 < the intelligence of the player:
		say "Looking at this item, you remember the shopkeeper's hints! Studying it closely, you realise you're definitely right in your suspicions. You have identified that the [ShortDesc of I] is cursed!";
		now I is sure.

To say DiscoveryFlav of (I - a thing):
	say "[if the number of worn clothing is 0 and I is clothing and the bimbo of the player < 5 and earnings > starting-earnings - 2500][one of]Not what I was expecting.[or]And there I was hoping for a sword.[or]I'm confused, why would I want to take this?[in random order][otherwise if I is plentiful accessory]Great! This looks valuable.[otherwise if the outrage of I < 6 and I is clothing and the bimbo of the player < 5 and the player is gendered male and I is not manly]Too girly.[otherwise if diaper quest is 1 and I is clothing and the bimbo of the player < 5 and calculated-cringe-level > the outrage of I and the cringe of I < 3]Well it's better than the childish stuff...[otherwise if the outrage of I < 6 and I is clothing and the bimbo of the player < 5]Not really my style.[otherwise if the outrage of I * 2000 > the humiliation of the player + 4000]How distasteful.[otherwise if the outrage of I * 2000 > the humiliation of the player + 2000]How outrageous![otherwise if the outrage of I * 2000 > the humiliation of the player]How peculiar.[otherwise if the outrage of I * 2000 > the humiliation of the player - 2000 or the bimbo of the player < 5]Interesting...[otherwise if the outrage of I * 2000 > the humiliation of the player - 5000 or the bimbo of the player < 8]This might be useful![otherwise if the bimbo of the player < 12]Ooh, how intriguing![otherwise]Yay, how exciting![end if]".

To say DiscoveryFlav of (I - a can):
	say "[if I is known-cursed-potion]Well, I'm glad I know not to drink this.[otherwise if I is known-good-potion]Sweet![otherwise]Maybe it's worth drinking?[end if]".

To say DiscoveryFlav of (I - food):
	say "[if I is candy and the body soreness of the player < 4 and the player is not hungry]Maybe it's worth saving for later?[otherwise if I is food]Maybe it's worth eating?[end if]".

To say DiscoveryFlav of (I - diaper):
	say "[if earnings > starting-earnings - 100 and diaper quest is 0]I don't get it, why would I need this?![otherwise if the bimbo of the player < 6 and there is a held diaper]Ugh, yuck. Am I really going to need this many?![otherwise if the bimbo of the player < 6]Ugh, yuck. Am I really going to need this?[otherwise if the bimbo of the player < 11 and I is actually summonable]I guess I'd better wear this.[otherwise if the bimbo of the player < 11]I guess I'd better take this with me.[otherwise if the number of held diapers is 0]Phew! I was hoping to find one soon.[otherwise if the number of carried diapers is 0]Thank goodness, I was running low![otherwise if the bimbo of the player < 15]It's good to have a decent supply![otherwise]Ooh, this one will look perfect on me![end if]".

To compute automatic wearing of (C - a clothing):
	let R be a random number between 12 and 18;
	if C is not almost too much and C is not too boring and the outrage of C is not too humiliating and R < the bimbo of the player:
		now summoning is 0;
		now autowear is true;
		if C is actually wearable and C is not cursed or C is not sure:
			say "[variable custom style]Ooh, this is perfect! I want to wear this right now![roman type] You try to put it on.";
			now C is carried by the player;
			try wearing C;
		now autowear is false.

To compute automatic eating of (I - a thing):
	say "You find a [printed name of I] inside! You can't control yourself, you [if the player is hungry]are too hungry[otherwise]suddenly feel extremely hungry and you just know it's going to taste so yummy[end if]!";
	now I is carried by the player;
	let C be I;
	try TQeating C; [I HAVE NO IDEA WHY THIS SOLVES THE BUG IT JUST DOES DON'T ASK QUESTIONS]
	if I is off-stage, say "[if the bimbo of the player < 12 and I is candy][line break][variable custom style]I should really work on my self-control...[otherwise if the bimbo of the player < 12][variable custom style]I feel much better![otherwise][line break][second custom style]MMM so yummy! Oh, it's all gone already?[end if][roman type][line break]".

Items Found in Containers ends here.
