Extracting by Actions begins here.


Extracting it with is an action applying to two things. [The second noun is the source of the transfer, and the noun is the destination. "Filling" would be a more appropriate verb but IDGAF]
Check extracting something with:
	if the noun is not bottle or the second noun is not bottle, say "This verb is for transferring liquid between two containers." instead;
	if the noun is squirt dildo and the second noun is can, say "The dildo can't fit inside the hole." instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the doses of the second noun is 0, say "But the [ShortDesc of second noun] is empty." instead;
	if the noun is penetrating a fuckhole, say "The [noun] is currently inside you..." instead;
	if the player is not able to manually use manual dexterity, do nothing instead;
	if the doses of the noun > 0:
		say "Are you sure you wish to empty your [noun] of its current contents? ";
		if the player is bimbo consenting:
			say "You empty the contents of the [ShortDesc of the noun] onto the ground.";
			dump the noun;
		otherwise:
			say "You change your mind." instead.

Carry out extracting something with:
	now the fill-colour of the noun is the fill-colour of the second noun;
	if the second noun is player-origin, now the noun is player-origin;
	otherwise now the noun is monster-origin;
	if the doses of the second noun > the max-doses of the noun:
		DoseFill the noun;
		DoseDown the second noun by the max-doses of the noun;
	otherwise:
		SetDose the noun to the doses of the second noun;
		DoseEmpty the second noun;
	if the fill-colour of the second noun is creamy, compute father material of the second noun into the noun;
	if the second noun is can:
		say "You discard the empty [ShortDesc of the second noun].";
		destroy the second noun;
	allocate 6 seconds.

Report extracting something with:
	say ExtractFlav of the noun;
	if the doses of the second noun is 0, say "The [ShortDesc of the second noun] is now empty.".

To say ExtractFlav of (V - a vessel):
	say "You pour [PotionType of the second noun] from the [ShortDesc of the second noun] into the [ShortDesc of the noun].".

To say ExtractFlav of (V - a squirt dildo):
	say "You squeeze the dildo and release inside the [ShortDesc of the second noun], and [PotionType of the second noun] flows into the dildo.".

To say ExtractFlav of (V - a baby's bottle):
	say "Removing the lid of the bottle, you pour [PotionType of the second noun] from the [ShortDesc of the second noun] into the [ShortDesc of the noun], then replace the lid.".

Pouring it into is an action applying to two things.
Check pouring something into:
	if the second noun is face, try drinking the noun instead;
	if the second noun is crafting-table, try crafting the noun instead;
	if the second noun is wishing well, try wellwishing the noun instead;
	unless the second noun is pedestal, try extracting the second noun with the noun instead.
Understand "pour [something] into [something]", "pour [something] in [something]", "empty [something] into [something]", "empty [something] in [something]", "decant [something] into [something]", "decant [something] in [something]", "siphon [something] into [something]", "siphon [something] in [something]", "siphon [something] to [something]" as pouring it into.


Extracting ends here.
