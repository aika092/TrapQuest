Displacing Replacing by Actions begins here.

Part 1 - Displacing

Displacing is an action applying to one thing.

The displacing rules is a rulebook.

This is the can't displace glued clothing rule:
	if the noun is glued:
		if auto is 0, say "It's glued in place!";
		rule fails.
The can't displace glued clothing rule is listed in the displacing rules.

This is the can't displace without hands rule:
	if the player is not able to use their hands or the player is wrist bound behind:
		if auto is 0, say "You don't have the manual dexterity to do that!";
		rule fails.
The can't displace without hands rule is listed in the displacing rules.

This is the can't displace while stuck in a wall rule:
	if the player is in HoleInWall or the player is in DiaperPail:
		if auto is 0, say "You can't reach that at the moment!";
		rule fails.
The can't displace while stuck in a wall rule is listed in the displacing rules.

This is the can't displace what isn't displacable rule:
	if the noun is not displacable:
		if auto is 0:
			if the noun is overdress:
				say "That's not the sort of item of clothing that can be displaced.";
			otherwise if the noun is crotch-exposing and the noun is unskirted:
				say "What would be the point?";
			otherwise if the noun is knickers:
				say "The leg holes are much too tight for you to be able to pull this to the side.";
			otherwise if the noun is skirted:
				say "That's too [if the noun is short or shorter]short[otherwise]tight[end if] to pull up.";
			otherwise:
				say "I'm not sure how you would displace that item of clothing.";
		rule fails.
The can't displace what isn't displacable rule is listed first in the displacing rules.

This is the can't displace what's covered up rule:
	unless the noun is skirted:
		repeat with C running through worn top level protection unskirted clothing:
			if the bottom-layer of C > the bottom-layer of the noun:
				if auto is 0, say "You would need to displace or remove your [C] first.";
				rule fails.
The can't displace what's covered up rule is listed last in the displacing rules.


Check displacing:
	if the noun is not clothing, say "This verb is used for moving clothing that can be moved aside." instead;
	if the noun is not worn, say "But you're not even wearing [the noun]..." instead;
	if the noun is not displacable and the noun is not not-top-displacable, try topDisplacing the noun instead;[if it can't cover the crotch, or it's pulled aside, this allows the top displacing verb to be used instead. Note that there is a bug where sheer knee-length and hobble-skirted skirts cannot be displaced]
	if the noun is crotch-displaced, try replacing the noun instead;
	follow the displacing rules;
	if the rule failed, do nothing instead.

Carry out displacing:
	say "[DisplaceFlav of the noun]";
	displace the noun;
	if the noun is skirted and there is an intelligent interested monster in the location of the player, progress quest of upskirt-quest.

To say DisplaceFlav of (C - a clothing):
	if C is hobble-skirted, say "You hike [unless C is skirt]the skirt of [end if]your [C] up so that it bunches at the top of your thighs, exposing your crotch. The tight bunching of the material means that your movement is still restricted.";
	otherwise say DefaultDisplaceFlav of C.

To say DisplaceFlav of (C - a trousers):
	say "You pull the [C] down to your knees, exposing your crotch.".

To say DefaultDisplaceFlav of (C - a clothing):
	say "You reach [if the player is prone]behind you[otherwise]down[end if] and pull your [C] to the side, freeing [if the bimbo of the player > 6]up access to [end if]your [if C is total protection]crotch[otherwise if C is pussy protection][genitals][otherwise]body[end if].".

Report displacing:
	force clothing-focus redraw; [This forces the clothing window to redraw]
	if the player is not occupied and ((the noun is not hobble-skirted and the noun is not knee-length) or the player is prone), compute player submission;
	allocate 4 seconds.

Understand "displace [something]", "pull aside [something]", "pull [something] aside", "pull up [something]", "pull [something] up", "move [something]", "move aside [something]", "move [something] aside", "shift [something]", "shift aside [something]", "shift [something] aside", "hike [something]", "hike up [something]", "hike [something] up" as displacing.

Check pulling worn clothing:
	unless the noun is pullstring collar:
		if the noun is crotch-displaced, try replacing the noun instead;
		otherwise try displacing the noun instead.

Part 2 - Replacing


Replacing is an action applying to one thing.

Check replacing:
	if the noun is not clothing, say "This verb is used for fixing clothing that has been moved aside." instead;
	if the noun is not worn, say "But you're not even wearing [the noun]..." instead;
	if the noun is crotch-in-place and the noun is top-displaced, try topReplacing the noun instead;
	if the noun is crotch-in-place, say "That's already in the right place." instead;
	if the player is in HoleInWall or the player is in DiaperPail, say "You can't reach that at the moment!" instead;
	if the latex-transformation of the player is 8, say "You don't have the manual dexterity to do that." instead;
	if the noun is ass plugging:
		let P be a random thing penetrating asshole;
		if P is a thing and P is not the noun, say "You can't because the [P] is already in your [asshole]." instead;
	if the noun is vagina plugging:
		let P be a random thing penetrating vagina;
		if P is a thing and P is not the noun, say "You can't because the [P] is already in your [vagina]." instead;
	if the noun is crotch covering:
		repeat with C running through worn clothing:
			if C is top level protection and the bottom-layer of C > the bottom-layer of the noun, say "You would need to displace or remove your [printed name of C] first." instead;
			if the noun is not C and C is crotch covering and (C is top-exclusive or C is totally-exclusive) and the bottom-layer of C < the bottom-layer of the noun, say "You can't put that back in place while you are wearing the [C]!" instead; [For example, trying to replace jeans over a waddle diaper]
	repeat with M running through combative monsters:
		say "[BigNameDesc of M] gets in the way and stops you from fixing the position of your [noun]." instead.

Carry out replacing:
	allocate 2 seconds;
	say ReplaceFlav of the noun;
	replace the noun.

To say ReplaceFlav of (C - a clothing):
	say "You reach [if the player is prone]behind you[otherwise]down[end if] and pull your [C] back into its proper position over your [if C is total protection]crotch.[otherwise if C is pussy protection][vagina].[otherwise]body.[end if]".

Report replacing:
	force clothing-focus redraw. [This forces the clothing window to redraw]

Understand "fix [something]", "repair [something]", "replace [something]", "adjust [something]", "unmove [something]" as replacing.


Displacing Replacing ends here.
