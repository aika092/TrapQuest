Zipping by Actions begins here.

Check opening a crotch-zipped clothing:
	try unzipping the noun instead.

Check closing a crotch-unzipped clothing:
	try rezipping the noun instead.

Part 1 - Unzipping

Unzipping is an action applying to one thing.

Check unzipping:
	if the noun is not clothing, say "This verb is used for pulling down zips." instead;
	if the noun is not worn, say "But you're not even wearing [the noun]..." instead;
	if the noun is not zippable, say "That doesn't have a zip on it..." instead;
	if the noun is not total protection, say "The zip is already down!" instead;
	if the latex-transformation of the player is 8, say "[if auto is 0]You don't have the manual dexterity to do that![end if]" instead;
	repeat with C running through clothing worn by the player:
		if C is top level protection and C is not the noun, say "[if auto is 0]You would need to displace or remove your [C] first.[end if]" instead.

Carry out unzipping:
	say "You reach [if the player is prone]behind you[otherwise]down[end if] and pull the crotch zip on [NameDesc of the noun] all the way down, freeing [if the bimbo of the player > 6]up access to [end if]your [if noun is total protection]crotch[otherwise if the noun is pussy protection][genitals][otherwise]body[end if].";
	ZipDown the noun.

Report unzipping:
	allocate arm use;
	allocate 2 seconds;
	if the player is not occupied and ((the noun is not hobble-skirted and the noun is not knee-length) or the player is prone), compute player submission.

Understand "unzip [something]", "pull zip on [something]", "pull zip on [something] down" as unzipping.

Part 2 - Rezipping

Rezipping is an action applying to one thing.

Check rezipping:
	if the noun is not clothing, say "This verb is used for pulling up zips on clothing." instead;
	if the noun is not worn, say "But you're not even wearing [the noun]..." instead;
	if the noun is not zippable, say "That doesn't have any zips..." instead;
	if the noun is not no protection, say "The [noun] is already zipped up!" instead;
	if the latex-transformation of the player is 8, say "You don't have the manual dexterity to do that." instead;
	repeat with C running through clothing worn by the player:
		if C is top level protection and the bottom-layer of C > the bottom-layer of the noun, say "You would need to displace or remove your [printed name of C] first." instead;
	if zip tattoo is worn, say "Somehow your zip tattoo is preventing you from rezipping it!" instead;
	repeat with M running through combative monsters:
		say "[BigNameDesc of M] gets in the way and stops you from touching the zip on your [noun]." instead.

Carry out rezipping:
	allocate arm use;
	allocate 2 seconds;
	say "You reach [if the player is prone]behind you[otherwise]down[end if] and pull your [noun]'s zip back into its proper position over your [if noun is total protection]crotch.[otherwise if the noun is pussy protection][vagina].[otherwise]body.[end if]";
	ZipUp the noun.

Understand "zip [something]", "rezip [something]", "pull up zip on [something]", "pull zip on [something] up" as rezipping.

Zipping ends here.
