Bags of Holding Framework by Bags of Holding begins here.

A bag of holding is a kind of clothing. A bag of holding is unique. The printed name of bag of holding is usually "[TQlink of item described][clothing-title-before]bag of holding[clothing-title-after][TQxlink of item described][verb-desc of item described]". The soak-limit of bag of holding is usually 0. A bag of holding is usually leather. A bag of holding has a number called hunger. The text-shortcut of bag of holding is "boh".

Definition: a bag of holding (called C) is cursable:
	if tough-shit is 1, decide yes;
	decide no.

To set up (C - a bag of holding):
	do nothing.

To set up magic state of (C - a bag of holding):
	now the raw-magic-modifier of C is 0;
	now C is bland.

To decide which number is not-in-bag:
	unless there is a worn bag of holding, decide on the number of carried portable things;
	decide on the number of carried not-in-bag things.
	
Definition: a thing (called C) is not-in-bag:
	if C is in-bag, decide no;
	decide yes.

Definition: a thing (called C) is in-bag:
	if C is carried, decide yes;
	decide no.

Definition: an accessory (called C) is in-bag:
	if C is plentiful, decide no;
	if C is carried, decide yes;
	decide no.

Definition: a bottle (called C) is in-bag:
	decide no.
Definition: a food (called C) is in-bag:
	decide no.

Check taking something:
	if there is a worn bag of holding:
		if the noun is bottle or the noun is food or the noun is plentiful accessory:
			if not-in-bag >= 15, say "You are at your limit for carrying food, drink and jewellery. You'll have to drop some [if there is a carried actually summonable plentiful accessory]or wear one [end if]if you want to pick up more." instead;
	otherwise:
		let P be 15;
		if pink pill is carried, now P is 16;
		if the number of carried portable things >= P, say "You are at your limit for carrying objects. If only you still had that bag of holding." instead;
	unless the player is overburdened, now player-overburdened is -1. [This means that we'll recalculate overburdened after this action]

player-overburdened is a number that varies.

Definition: yourself (called C) is overburdened:
	if player-overburdened is -1: [we only want to calculate this when stuff changes]
		if not-in-bag > 10, now player-overburdened is 1;
		otherwise now player-overburdened is 0;
	if player-overburdened is 1, decide yes;
	decide no.
	
[!<TheResetOverburdenedRule>+

REQUIRES COMMENTING

+!]
This is the reset overburdened rule:
	now player-overburdened is -1.
The reset overburdened rule is listed in the advance counters rules.


Report taking something:
	if player-overburdened is -1:
		if the player is overburdened:
			say "[bold type]You are now carrying a lot of food [if there are carried plentiful accessories]drink and jewellery[otherwise]and drink[end if]. Your dexterity will be reduced until you drop some.[roman type][line break]".

Check inserting food into bag of holding:
	say "A warning on the [second noun] says that this would be a horrible idea." instead.

Check inserting bottle into bag of holding:
	say "A warning on the [second noun] says that this would be a horrible idea." instead.

Check inserting pink pill into bag of holding:
	say "A warning on the [second noun] says that this would be a horrible idea." instead.

Check inserting something into bag of holding:
	if the second noun is worn, say "It's already automatically inside." instead;
	otherwise say "You can only do this when the [second noun] is equipped." instead.

Check inking bag of holding:
	say "You decide that this is too valuable to put in the chute." instead.

Definition: a bag of holding (called C) is destructible:
	decide no.

Definition: a bag of holding (called C) is stealable:
	decide no.

Check taking off bag of holding:
	now the noun is bland;
	say "This will make managing your inventory much much harder, are you completely sure? [yesnolink]";
	if the player consents:
		if the number of worn bag of holding is 1:
			repeat with T running through things carried by the player:
				unless T is food or T is pink pill or T is bottle:
					now T is in the location of the player;
	otherwise:
		say "Action cancelled." instead.

Carry out taking bag of holding:
	let H be a random worn bag of holding;
	if H is a thing and the noun is not H:
		say "You transfer all the items from your [ShortDesc of H], which you then discard onto the ground. (You can only hold one bag of holding at a time).";
		now H is in the location of the player;
		now the noun is worn by the player.

Check inserting bag of holding into something:
	try taking off the noun instead.

To say BagHoldingWarning:
	say "Food, drink and valuable jewellery cannot be placed in this".

[To compute periodic effect of (C - a bag of holding):
	increase the hunger of C by 1;
	if the hunger of C > 20 + (1000 / (the number of in-bag clothing + 1)):
		let consumed-thing be a random in-bag stealable clothing;
		repeat with T running through in-bag stealable clothing:
			unless T is product:
				if diaper quest is 1 and the initial cringe of T > the initial cringe of consumed-thing:
					now consumed-thing is T;
				otherwise	if the initial outrage of T > the initial outrage of consumed-thing:
					now consumed-thing is T;
		if consumed-thing is carried clothing:
			say "[bold type]Your [ShortDesc of C] growls hungrily[roman type] and consumes your [consumed-thing][one of] to fuel its magic. Just like that, it's gone[or][or][or][cycling]!";
			destroy consumed-thing;
			now the hunger of C is 0.]

To compute failed transform of (C - a bag of holding):
	increase the transform-attempts of C by 1;
	say "The [C] seems to [if the transform-attempts of C > 1]once again [end if]resist being transformed!".

Include Sacks of Holding by Bags of Holding.
Include Patterned Sacks of Holding by Bags of Holding.
Include Pink Sacks of Holding by Bags of Holding.
Include Slutty Clutches of Holding by Bags of Holding.
Include Clutches of Holding by Bags of Holding.
Include Ultra Slutty Bags of Holding by Bags of Holding.
Include Handbags of Holding by Bags of Holding.

[DQ bags begin here]
Include Satchels of Holding by Bags of Holding.
Include Backpacks of Holding by Bags of Holding.
Include Childish Backpacks of Holding by Bags of Holding.
Include Diaper Bags of Holding by Bags of Holding.
Include Baby Diaper Bags of Holding by Bags of Holding.

Bags of Holding Framework ends here.

