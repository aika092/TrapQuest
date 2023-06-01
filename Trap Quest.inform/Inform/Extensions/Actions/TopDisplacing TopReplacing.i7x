TopDisplacing TopReplacing by Actions begins here.

Part 1 - TopDisplacing

TopDisplacing is an action applying to one thing.

Check TopDisplacing:
	if the noun is not clothing, say "This verb is used for moving clothing to expose your chest." instead;
	if the noun is usually not-top-displacable:
		if the noun is displacable, try displacing the noun instead;
		otherwise say "That's not the sort of item of clothing that can be displaced at the chest." instead;
	if the noun is not worn, say "But you're not even wearing [NameDesc of the noun]..." instead;
	if the noun is top-displaced, try topreplacing the noun instead;
	if the noun is breast exposing, say "But [NameDesc of the noun] isn't covering your breasts..." instead;[Should cover fully exposing and chestless]
	if the noun is glued, say "It's glued in place!" instead;
	if the noun is actually not-top-displacable, say "That's [if the noun is top-ripped]already shredded to bits so there's no point displacing it[otherwise]too stiff to displace[end if]." instead;
	if the noun is not anal-beads-blue-swimsuit and the player is not able to manually use their hands, do nothing instead;
	[if the noun is cursed, say "The curse on this item prevents it from budging at all!" instead;]
	repeat with C running through top level breasts protection clothing:
		if the top-layer of C > the top-layer of the noun, say "You would need to displace or remove your [C] first." instead.

Carry out TopDisplacing:
	say TopDisplaceFlav of the noun;
	TopDisplace the noun.

To say TopDisplaceFlav of (C - a clothing):
	if C is low cut or higher:
		say "You move your [ShortDesc of C] out of the way, freeing up access to your [BreastDesc].";
	otherwise:
		say "You move your [ShortDesc of C] just enough to free up access to your [BreastDesc].".

Report TopDisplacing:
	allocate arm use;
	allocate 4 seconds;
	compute player submission.

Definition: a clothing (called C) is top level covering: [we only care about breast exposure, nipples are irrelevant.]
	if C is not actually breast covering, decide no;
	repeat with O running through actually breast covering clothing:
		if the top-layer of O > the top-layer of C, decide no;
	decide yes.

Understand "pull down [something]", "pull open [something]", "unbutton [something]" as TopDisplacing.

Part 2 - TopReplacing

Definition: a clothing is usually top-replacable: decide yes.
Definition: a clothing is top-replacable:
	if it is usually top-displacable and it is top-displaced and it is worn, decide yes;
	decide no.
Definition: a clothing (called C) is actually top-replacable:
	if C is top-replacable:
		if the player is not able to use their hands, decide no;
	repeat with D running through top level breasts protection clothing:
		if the top-layer of D > the top-layer of C, decide no;
	if there is a combative monster, decide no;
	decide yes.


TopReplacing is an action applying to one thing.

Check topReplacing:
	if the noun is not clothing, say "This verb is used for fixing clothing that has been moved aside." instead;
	if the noun is not worn, say "But you're not even wearing [the noun]..." instead;
	if the noun is top-placed, say "That's already in the right place." instead;
	if the player is not able to manually use their hands, do nothing instead;
	repeat with C running through top level breasts protection clothing:
		if the top-layer of C > the top-layer of the noun, say "You would need to displace or remove your [C] first." instead;
	repeat with M running through combative monsters:
		say "[BigNameDesc of M] gets in the way and stops you from fixing the position of your [noun]." instead.

Carry out topReplacing:
	allocate arm use;
	allocate 2 seconds;
	say TopReplaceFlav of the noun;
	TopReplace the noun.

To say TopReplaceFlav of (C - a clothing):
	say "You pull the [ShortDesc of C] back into its proper position over your [BreastDesc].".

Understand "pull up [something]", "button [something]", "pull [something] closed" as topReplacing.

TopDisplacing TopReplacing ends here.
