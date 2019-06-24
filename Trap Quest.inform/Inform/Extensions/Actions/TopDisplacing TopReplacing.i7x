TopDisplacing TopReplacing by Actions begins here.

Part 1 - TopDisplacing

TopDisplacing is an action applying to one thing.

Check TopDisplacing:
	if the noun is not clothing, say "This verb is used for moving clothing that can be moved aside." instead;
	if the noun is not-top-displacable and the noun is displacable, try displacing the noun instead;
	if the noun is not worn, say "But you're not even wearing [the noun]..." instead;
	if breasts is exposed:
		if the noun is top-displaced:
			try topreplacing the noun instead;
		otherwise:
			say "But your breasts are already on display..." instead;
	if the noun is breast exposing, say "But [the noun] isn't covering your breasts..." instead;[Should cover fully exposing and chestless]
	if the latex-transformation of the player is 8, say "You don't have the manual dexterity to do that!" instead;
	if the noun is not-top-displacable and the noun is overdress, say "That's not the sort of item of clothing that can be displaced." instead;
	if the noun is not-top-displacable, say "That's [if the noun is top-ripped]already shredded to bits so there's no point displacing it[otherwise]too stiff to displace[end if].";
	[if the noun is cursed, say "The curse on this item prevents it from budging at all!" instead;]
	repeat with C running through worn top level covering clothing:
		if the top-layer of C > the top-layer of the noun, say "You would need to displace or remove your [C] first." instead;
	if the player is wrist bound behind, say "You can't do that with your hands bound behind you." instead.

Carry out TopDisplacing:
	say "[TopDisplaceFlav of the noun]";
	TopDisplace the noun.

To say TopDisplaceFlav of (C - a clothing):
	if the noun is low cut or higher:
		say "You move your [ShortDesc of C] out of the way, freeing up access to your [BreastDesc].";
	otherwise:
		say "You move your [ShortDesc of C] just enough to free up access to your [BreastDesc].".

Report TopDisplacing:
	compute player submission;
	force clothing-focus redraw; [This forces the clothing window to redraw]
	allocate 4 seconds.

Definition: a clothing (called C) is top level covering: [we only care about breast exposure, nipples are irrelevant.]
	if C is breast exposing or C is fully exposing or C is top-displaced, decide no;
	repeat with O running through breast covering clothing:
		if O is not top-displaced and O is not fully exposing and the top-layer of O > the top-layer of C, decide no;
	decide yes.

Understand "pull down [something]", "pull open [something]", "unbutton [something]" as TopDisplacing.

Part 2 - TopReplacing

TopReplacing is an action applying to one thing.

Check topReplacing:
	if the noun is not clothing, say "This verb is used for fixing clothing that has been moved aside." instead;
	if the noun is not worn, say "But you're not even wearing [the noun]..." instead;
	if the noun is top-placed, say "That's already in the right place." instead;
	if the latex-transformation of the player is 8, say "You don't have the manual dexterity to do that." instead;
	repeat with C running through worn top level covering clothing:
		if the top-layer of C > the top-layer of the noun, say "You would need to displace or remove your [C] first." instead;
	if the player is wrist bound behind, say "You can't do this with your wrists bound behind you." instead;
	repeat with M running through combative monsters:
		say "[BigNameDesc of M] gets in the way and stops you from fixing the position of your [noun]." instead.

Carry out topReplacing:
	say "You pull the [ShortDesc of noun] back into its proper position over your [BreastDesc].";
	TopReplace the noun;
	allocate 2 seconds.

Report topReplacing:
	force clothing-focus redraw. [This forces the clothing window to redraw]

Understand "pull up [something]", "button [something]", "pull [something] closed" as topReplacing.

TopDisplacing TopReplacing ends here.

