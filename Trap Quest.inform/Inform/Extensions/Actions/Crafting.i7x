Crafting by Actions begins here.


times-crafted is a number that varies.

Crafting is an action applying to one thing.
Check crafting:
	if the noun is not carried, say "You need to be holding something to craft with it." instead;
	if the player is not in Dungeon37, say "There isn't any alchemy equipment nearby." instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the player is immobile, say "You're kind of tied up at the moment." instead;
	if the player is in danger, say "You can't do delicate alchemy right now, you have to defend yourself against the [random unfriendly interested monster in the location of the player]!" instead;
	if the player is prone, say "You would need to be standing up." instead;
	if the noun is bottle:
		if the doses of the noun is 0:
			now seconds is 2;
			say "You place the empty [noun] into the bowl. Nothing happens. Maybe if it actually had liquid in it..." instead;
	if the charge of alchemist's table > 0:
		now seconds is 2;
		say "Nothing happens. Maybe try again a bit later." instead;
	if the noun is mass collectible, compute mass collectible reward of the noun instead;
	if the noun is not ingredient thing:
		now seconds is 2;
		say "Nothing happens." instead.

Carry out crafting:
	now seconds is 6;
	if the noun is bottle:
		say "You pour a dose of [fill-colour of the noun] liquid into the bowl.";
		decrease the doses of the noun by 1;
		if the noun is can and the doses of the noun is 0:
			say "You discard the empty can.";
			destroy the noun;
	otherwise:
		say "You place the [noun] into the bowl.";
	let T be nothing;
	if the crafting key of the noun > 0 and the charge of alchemist's table <= 0:
		now current-crafting-key is the crafting key of the noun;
		now current-alchemy-key is Product corresponding to an Ingredient of current-crafting-key in the Table of Alchemy;
		now T is a random off-stage product-highlighted thing;
		if T is a thing:
			repeat with R running through on-stage product-highlighted things:
				if R is visible, say "The [ShortDesc of R] [if R is held]in your hands [end if]suddenly vanishes[one of]! Maybe you can only have one at a time?[or]![stopping]";
				destroy R;
			compute recipe specific cursing of T;
			if T is clothing or T is alchemy product, now T is unsure;
			now T is carried by the player;
			if the noun is bottle:
				say "The liquid swirls around, and then in a puff of smoke, it turns into a [T]! Magic! ";
			otherwise:
				say "In a puff of smoke, the [noun] turns into a [T]!  Magic!  ";
				destroy the noun;
			say "You pick it up.";
			increase times-crafted by 1;
			reset alchemy charge;
			let H be a random worn blue scrunchie;
			if H is clothing, compute class outfit of H;
			if H is clothing, MagicPowerUp 1;
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
		if a random number between 2 and 16 <= the number of worn blue scrunchies and the class of the player is schoolgirl:
			now T is bland;[Schoolgirls can get very lucky and complete a potion recipe with the wrong ingredients.]
		otherwise:
			now T is cursed;
	otherwise:
		if (a random number between 2 and 12 <= the number of worn blue scrunchies and the class of the player is schoolgirl) or (a random number between 1 and 30 < the flat intelligence of the player and the recipe of K is memorised):
			now T is blessed;
		otherwise:
			now T is bland.
Understand "craft [something]", "brew [something]", "craft with [something]", "brew with [something]", "do alchemy with [something]", "perform alchemy with [something]" as crafting.


[avoids errors if the item is not something that can be cursed]
Definition: a thing (called T) is maybe-cursed:
	if T is bottle or T is collectible or T is clothing:
		if T is cursed, decide yes;
	decide no.

To reset alchemy charge:
	now the charge of alchemist's table is 325 - (the intelligence of the player * 10);
	if the craftskill of the player is 1, now the charge of alchemist's table is the charge of alchemist's table / 4;
	say "The bowl stops glowing[one of] - maybe you will have to wait a while until the magic returns[or][stopping].".



Crafting ends here.

