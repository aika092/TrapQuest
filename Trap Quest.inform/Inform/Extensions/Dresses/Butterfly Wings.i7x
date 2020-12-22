Butterfly Wings by Dresses begins here.

butterfly wings is an overdress. butterfly wings is unique. butterfly wings is biological. butterfly wings is fully exposing. butterfly wings is no-crotch. butterfly wings is unskirted. The printed name of butterfly wings is "[clothing-title-before]butterfly wings[clothing-title-after]". The text-shortcut of butterfly wings is "bw". Understand "butter", "fly" as butterfly wings.

Definition: butterfly wings is class-relevant:
	if the class of the player is faerie, decide yes;
	decide no.

Figure of butterfly wings is the file "Items/Clothes/Upper/Special/butterfly1.png".

To decide which figure-name is clothing-image of (C - butterfly wings):
	decide on figure of butterfly wings.

To say ClothingDesc of (C - butterfly wings):
	say "A pair of giant pink butterfly wings, which catch the light in a way that makes them appear to glitter[if C is worn]. Wearing these makes you feel lighter[end if].".

To compute SelfExamineDesc of (C - butterfly wings):
	say "A pair of giant pink wings sits on your back. ".

To say ShortDesc of (C - butterfly wings):
	say "giant pink wings".

To say ClassSummonFlav of (C - butterfly wings):
	say "A giant pair of wings appear on your back. You feel lighter!".

To decide which number is the initial cringe of (C - butterfly wings):
	decide on 6.

To decide which number is the luck-influence of (C - butterfly wings):
	decide on 10.

This is the carefree fairy rule:
	if there is a worn butterfly wings:
		if summoning is 0 and autowear is false, say "Your wings flutter strongly as you try to pull it on past your knees, holding you back with a strong invisible force. Maybe you're not allowed to wear trousers?";
		rule fails.
The carefree fairy rule is listed in the trousers wearability rules.

This is the brafree fairy rule:
	if there is a worn butterfly wings and wearing-target is not pasties:
		if summoning is 0 and autowear is false, say "Your wings flutter strongly as you try to put your arms through the armholes, holding you back with a strong invisible force. Maybe you're not allowed to wear a bra?";
		rule fails.
The brafree fairy rule is listed in the bra wearability rules.

This is the topfree fairy rule:
	if there is a worn butterfly wings and wearing-target is breast covering:
		if summoning is 0 and autowear is false, say "Your wings flutter strongly as you try to put it on, holding you back with a strong invisible force. Maybe you're not allowed to wear other clothing that covers your chest?";
		rule fails.
The topfree fairy rule is listed in the underdress wearability rules.

This is the corsetfree fairy rule:
	if there is a worn butterfly wings and wearing-target is breast covering:
		if summoning is 0 and autowear is false, say "Your wings flutter strongly as you try to put it on, holding you back with a strong invisible force. Maybe you're not allowed to wear other clothing that covers your chest?";
		rule fails.
The corsetfree fairy rule is listed in the corset wearability rules.

To UniquePinkWardrobeUnclash (C - butterfly wings):
	repeat with O running through worn removable breast covering clothing:
		unless O is pasties, WardrobeVanish O;
	repeat with O running through worn trousers:
		WardrobeVanish O.


Definition: butterfly wings is flower themed: decide yes.
Definition: butterfly wings is butterfly themed: decide yes.
Definition: butterfly wings is pink themed: decide yes.
Definition: butterfly wings is layer-blocking: decide no. [It can be removed whenever, and it doesn't block other things being worn or removed underneath it.]

Butterfly Wings ends here.
