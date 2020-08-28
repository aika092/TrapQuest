Crafting by Actions begins here.

times-crafted is a number that varies.

Crafting is an action applying to one thing.
Check crafting:
	if the noun is not carried, say "You need to be holding something to craft with it." instead;
	unless there is a crafting-table in the location of the player, say "There isn't any alchemy equipment nearby." instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the player is immobile, say "You're kind of tied up at the moment." instead;
	if the player is in danger, say "You can't do delicate alchemy right now, you have to defend yourself against the [random unfriendly interested monster in the location of the player]!" instead;
	if the player is prone, say "You would need to be standing up." instead;
	if the noun is bottle:
		if the doses of the noun is 0:
			allocate 2 seconds;
			say "You place the empty [noun] into the bowl. Nothing happens. Maybe if it actually had liquid in it..." instead;
	unless there is a ready for alchemy crafting-table in the location of the player:
		allocate 2 seconds;
		say "Nothing happens. Maybe try again a bit later." instead;
	if the noun is mass collectible:
		increase times-crafted by 1;
		compute mass collectible reward of the noun instead;
	if the noun is not ingredient thing:
		allocate 2 seconds;
		say "Nothing happens." instead.

Carry out crafting:
	allocate 6 seconds;
	if the noun is bottle:
		say "You pour a dose of [fill-colour of the noun] liquid into the bowl.";
		DoseDown the noun;
		if the noun is can and the doses of the noun is 0:
			say "You discard the empty can.";
			destroy the noun;
	otherwise:
		say "You place the [noun] into the bowl.";
	let T be nothing;
	if the crafting key of the noun > 0 and there is a ready for alchemy crafting-table in the location of the player:
		now current-crafting-key is the crafting key of the noun;
		now current-alchemy-key is Product corresponding to an Ingredient of current-crafting-key in the Table of Alchemy;
		now T is a random product-highlighted thing;
		if T is a thing:
			repeat with R running through on-stage product-highlighted things:
				if R is visible, say "The [ShortDesc of R] [if R is held]in your hands [end if]suddenly vanishes[one of]! Maybe you can only have one at a time?[or]![stopping]";
				destroy R;
			if the recipe of current-alchemy-key is memorised, progress quest of recipe-quest;
			compute recipe specific cursing of T;
			if T is clothing or T is alchemy product, now T is unsure;
			now T is unowned;
			now T is carried by the player;
			if the noun is bottle:
				say "The liquid swirls around, and then in a puff of smoke, it turns into a [T]! Magic! ";
			otherwise:
				say "In a puff of smoke, the [noun] turns into a [T]! Magic! ";
				destroy the noun;
			say "You pick it up.";
			if the recipe of current-alchemy-key is memorised:
				if Recipe corresponding to an Ingredient of current-crafting-key in the Table of Alchemy is 0, say "Hmm. Since you have memorised the correct recipe for crafting a [ShortDesc of T] you are confident that [bold type]the one you have just crafted is cursed.[line break][variable custom style]I probably shouldn't use this.[roman type][line break]";
				if T is clothing or T is alchemy product, now T is sure;
				if T is clothing, now T is identified;
			otherwise if (T is clothing or T is alchemy product) and T is blessed:
				say "[BigNameDesc of T] glitters with divine blue energy! It seems that thanks to your genius crafting, you've managed to create a [bold type]blessed[roman type] version!";
				now T is sure;
				if T is clothing, now T is identified;
			increase times-crafted by 1;
			reset alchemy charge;
			let H be a random worn blue scrunchie;
			if H is clothing:
				compute class outfit of H;
				if playerRegion is not school, MagicPowerUp 1;
		otherwise:
			if there is a product-highlighted thing:
				say "Nothing happens.";
			otherwise:
				say "Nothing happens. You get a feeling that this might be a gameplay bug worth reporting, with the following information...";
				display complete alchemy data;
	otherwise:
		say "Nothing happens[if the charge of alchemist's table > 0]. Maybe try again a bit later.[otherwise].[end if]".

To compute recipe specific cursing of (T - a thing):
	let K be the alchemy key of T;
	if Recipe corresponding to an Ingredient of current-crafting-key in the Table of Alchemy is 0:
		if the class of the player is schoolgirl and the player is getting lucky:
			now T is bland;[Schoolgirls can get very lucky and complete a potion recipe with the wrong ingredients.]
			say GotLuckyFlav;
		otherwise:
			now T is cursed;
	otherwise:
		let I be the intelligence of the player;
		increase I by (the number of worn blue scrunchies + alchemyskill of the player) * 8;
		if the recipe of K is memorised, increase I by 5;
		let R be a random number between 1 and I;
		if R > 15:
			now T is blessed;
		otherwise:
			now T is bland.
Understand "craft [something]", "brew [something]", "craft with [something]", "brew with [something]", "do alchemy with [something]", "perform alchemy with [something]" as crafting.

Crafting ends here.
