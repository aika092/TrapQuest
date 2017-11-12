Decanting by Actions begins here.


Decanting it with is an action applying to two things.
Understand "fill [something] with [something]", "fill [something] in [something]", "fill [something] from [something]", "use [something] in [something]", "dip [something] in [something]", "use [something] with [something]", "use [something] on [something]" as decanting it with.
Check inserting something into a dispenser:
	try decanting the noun with the second noun instead.
Check decanting something with:
	if the second noun is DungeonScenery03 or the second noun is WoodsScenery01 or the second noun is sacred pool, say "This might be allowed in a future release, but you can't right now!" instead;
	if the second noun is the dungeon altar, try praying instead;
	if the second noun is the woods altar, try praying instead;
	if the second noun is alchemist's table, try crafting instead;
	if the second noun is container or the noun is orifice, try inserting the noun into the second noun instead;
	if the noun is lubricant and the second noun is not dispenser, try orilubing the noun with the second noun instead;
	if the noun is knife, try knifing the second noun with the noun instead;
	if the noun is salve, try salverubbing the noun on the second noun instead;
	if the noun is not a vessel, say "[if the noun is can]Cans have one-time use ring-pulls, which make them a bad choice for storing other liquids.[otherwise]You can't keep any liquid in that...[end if]" instead;
	if the latex-transformation of the player is 8, say "You don't have the manual dexterity to do that!" instead;
	if the noun is penetrating an orifice, say "That's inside you at the moment..." instead;
	if the noun is bottle and the second noun is a vessel, try extracting the noun with the second noun instead;
	if the player is not able to use their hands, say "You can't use your hands right now!" instead;
	if the player is prone, say "You can't reach while on your knees." instead;
	if the second noun is not a dispenser[ and the second noun is not sacred pool], say "The [second noun] doesn't have any liquid in it..." instead;
	if [the second noun is not sacred pool and ]the doses of the second noun is 0, say "[if the second noun is tank]The[otherwise if the second noun is bucket]You try, but the[end if] [second noun] is empty." instead;
	if the noun is not held:
		try taking the noun;
		if the noun is held:
			compute extra turn;
			if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type][line break]" instead;
	if the doses of the noun > 0:
		say "Are you sure you wish to empty your [noun] of its current contents? [yesnolink] ";
		if the player consents:
			say "You empty the contents of the [noun] onto the ground.";
			dump the noun;
		otherwise:
			say "You change your mind." instead.

Carry out decanting something with:
	[if the second noun is sacred pool:
		let B be a random number between 0 and 5;
		if the corruption of the sacred pool > 150 or the charge of the noun > 0, now B is a random number between 6 and 10;
		let D be the Appearance corresponding to an Magic of B in the Table of Drinks;
		say "You dip the [noun] into the [second noun] and take it back out with a serving of [D] liquid. ";
		now the fill-colour of the noun is fill-colour of the second noun;
		now the doses of the noun is the max-doses of the noun;
		if B < 6, increase the corruption of the sacred pool by the max-doses of the noun * 3;
		otherwise decrease the corruption of the sacred pool by the max-doses of the noun;
		if the noun is cursed:
			say "Darkness seems to leak out of the [noun] and into the magical water, leaving it cleaner and brighter than it was before.";
			bless the noun;
			pollute 25;
		otherwise if the noun is blessed:
			say "The water seems to fizz upon contact with the [noun], and it glows briefly before you remove it from the water, somehow seeming more mundane.";
			curse the noun;
			pollute 50;
		increase the charge of the second noun by 300;]
	say DecantingFlav of the noun;
	now the fill-colour of the noun is fill-colour of the second noun;
	if the doses of the second noun > the max-doses of the noun:
		now the doses of the noun is the max-doses of the noun;
		decrease the doses of the second noun by the max-doses of the noun;
	otherwise:
		now the doses of the noun is the doses of the second noun;
		now the doses of the second noun is 0;
		say "The [if the second noun is tank]tank[otherwise][second noun][end if] is now empty.";
	now seconds is 6.

To say DecantingFlav of (V - a vessel):
	say "You dip the [V] into the [second noun] and take it back out, now with a serving of [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if].".

To say DecantingFlav of (V - a squirt dildo):
	say "You squeeze the dildo and release inside the [second noun].  A [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if] flows into the dildo.".

To say DecantingFlav of (V - a cocktail glass):
	say "You dip the cocktail glass inside the [second noun] and take it back out, now with a serving of [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if].".

To say DecantingFlav of (V - a golden chalice):
	say "You dip the chalice inside the [second noun] and take it back out, now with a serving of [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if].".

To say DecantingFlav of (V - a baby's bottle):
	say "You take the sucker lid off the top of the bottle, dip it inside the [second noun], and [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if] rushes into the bottle.  You replace the sucker.".

To say DecantingFlav of (V - a novelty mug):
	say "You dip the mug inside the [second noun] and take it back out, now with a serving of [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if].".

Report decanting something with:
	if the fill-colour of the second noun is creamy:
		compute father material of the second noun into the noun;
	repeat with T running through all untriggered swing traps in the location of the player:
		trigger T.


Decanting ends here.
