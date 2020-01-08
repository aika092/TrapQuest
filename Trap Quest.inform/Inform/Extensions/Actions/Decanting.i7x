Decanting by Actions begins here.


Decanting it with is an action applying to two things.
Understand "fill [something] with [something]", "fill [something] in [something]", "fill [something] from [something]", "use [something] in [something]", "dip [something] in [something]", "use [something] with [something]", "use [something] on [something]" as decanting it with.
Check inserting something into a dispenser:
	try decanting the noun with the second noun instead.
Check decanting something with:
	if the second noun is water-body or the second noun is water-body-scenery, say "This might be allowed in a future release, but you can't right now!" instead;
	if the second noun is the dungeon altar, try praying the noun with the second noun instead;
	if the second noun is the woods altar, try praying the noun with the second noun instead;
	if the second noun is crafting-table, try crafting the noun instead;
	if the second noun is container or the second noun is orifice, try inserting the noun into the second noun instead;
	if the noun is lubricant and the second noun is not dispenser, try orilubing the noun with the second noun instead;
	if the noun is knife, try knifing the second noun with the noun instead;
	if the noun is salve, try salverubbing the noun on the second noun instead;
	if the noun is powder, try powderrubbing the noun on the second noun instead;
	if the noun is not a vessel, say "[if the noun is can]Cans have one-time use ring-pulls, which make them a bad choice for storing other liquids.[otherwise]You can't keep any liquid in that...[end if]" instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the noun is penetrating an orifice, say "That's inside you at the moment..." instead;
	if the noun is bottle and the second noun is a bottle:
		if the second noun is a vessel, try extracting the noun with the second noun instead;
		otherwise say "That would be impractical." instead;
	if the second noun is not a dispenser[ and the second noun is not sacred pool], say "The [second noun] doesn't have any liquid in it..." instead;
	if the player is immobile, say "You're a bit tied up right now." instead;
	if the second noun is not drink-machine and (the player is not able to use their hands or the player is wrist bound behind), say "You can't use your hands right now!" instead;
	if the player is prone, say "You can't reach while on your knees." instead;
	if [the second noun is not sacred pool and ]the doses of the second noun is 0, say "[if the second noun is tank]The[otherwise if the second noun is bucket]You try, but the[end if] [second noun] is empty." instead;
	if the noun is not held:
		try taking the noun;
		if the noun is held:
			compute extra turn;
			if the player is in danger, say "[bold type]You are in danger, so you stop.[roman type][line break]" instead;
	if the doses of the noun > 0:
		say "Are you sure you wish to empty your [noun] of its current contents? ";
		if the player is consenting:
			say "You empty the contents of the [noun] onto the ground.";
			dump the noun;
		otherwise:
			say "You change your mind." instead.

Carry out decanting something with:
	[if the second noun is sacred pool:
		let B be a random number between 0 and 5;
		if the corruption of the sacred pool > 150 or the charge of the noun > 0, now B is a random number between 6 and 10;
		let D be the Appearance corresponding to an Magic of B in the Table of Drinks;
		say "You dip the [ShortDesc of the noun] into the [MediumDesc of the second noun] and take it back out with a serving of [D] liquid. ";
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
	compute standard decanting of the second noun.

To compute standard decanting of (D - a dispenser):
	allocate 6 seconds;
	say DecantingFlav of the noun;
	now the fill-colour of the noun is fill-colour of the second noun;
	if the doses of the second noun > the max-doses of the noun:
		DoseFill the noun;
		DoseDown the second noun by the max-doses of the noun;
	otherwise:
		SetDose the noun to the doses of the second noun;
		DoseEmpty the second noun;
		say "The [if the second noun is tank]tank[otherwise if the second noun is bucket]bucket[otherwise][second noun][end if] is now empty.".


To say DecantingFlav of (V - a vessel):
	say "You dip the [V] into the [second noun] and take it back out, now with a serving of [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if].".

To say DecantingFlav of (V - a squirt dildo):
	say "You squeeze the dildo and release inside the [second noun]. A [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if] flows into the dildo.".

To say DecantingFlav of (V - a cocktail-glass):
	say "You dip the cocktail glass inside the [second noun] and take it back out, now with a serving of [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if].".

To say DecantingFlav of (V - a gold chalice):
	say "You dip the chalice inside the [second noun] and take it back out, now with a serving of [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if].".

To say DecantingFlav of (V - a baby's bottle):
	say "You take the sucker lid off the top of the bottle, dip it inside the [second noun], and [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if] rushes into the bottle. You replace the sucker.".

To say DecantingFlav of (V - a novelty mug):
	say "You dip the mug inside the [second noun] and take it back out, now with a serving of [fill-colour of the second noun] liquid[if the fill-type of the second noun is remembered] ([FillName the fill-type of second noun])[end if].".

waitress-dips is a number that varies.

Report decanting something with:
	if the fill-colour of the second noun is creamy:
		compute father material of the second noun into the noun;
	if diaper quest is 0:
		if the noun is waitress vessel and (the number of worn headgear is 0 or black maid headdress is worn):
			increase waitress-dips by 1;
			unless the noun is cocktail-glass:
				if waitress-dips is 1, say "You reflect on how you must look, holding a weird [ShortDesc of the noun] like a girly socialite[if the bimbo of the player < 5]. You're not sure that the look is really how you'd like to be seen[end if].";
				if waitress-dips is 2, say "You have a fleeting thought that if you carry this drink around with you for too long, people might think you're some kind of waitress.";
				if waitress-dips is 3, say "Your ears perk up when you hear a voice behind you say[line break][first custom style]'That's a mighty fine tail.'[roman type][line break]You quickly turn around, but there's no one there. Curious...";
		if the noun is cocktail-glass or (the noun is waitress vessel and waitress-dips > 3):
			if black maid headdress is worn:
				transform black maid headdress into cafe maid headdress;
				unless there is a worn maid waitress outfit or there is a worn cafe maid outfit, now maid-summoned is 0;
			otherwise if bunny waitress ears is off-stage and bunny waitress ears is actually summonable:
				say "[bold type]Suddenly [ShortDesc of bunny waitress ears] appear on your head![line break][variable custom style][if the bimbo of the player < 10]What, are they trying to make me look like a bunny waitress?[otherwise]Haha, it's like I'm a bunny waitress![end if][roman type][line break]";
				summon bunny waitress ears cursed;
	repeat with T running through all untriggered swing traps in the location of the player:
		now focused-thing is T;
		trigger T.


Decanting ends here.

