Collectible Definition by Collectibles begins here.

A collectible is a kind of thing. [Items that do nothing on their own, but can be used in recipes or given to NPCs or so on.]

A collectible has a curse-ID.
Understand the curse-ID property as describing a collectible.
A collectible is usually unsure.
A collectible has a magic-curse.
Understand the magic-curse property as describing a collectible when a collectible is sure.

The tradability of a collectible is 2.

To decide which number is the heaviness of (C - a collectible):
	decide on 1.

a mass collectible is a kind of collectible.

The tradability of a mass collectible is 1.

To decide which number is the heaviness of (C - a mass collectible):
	decide on 0.

Definition: a mass collectible is fetish appropriate: decide yes.
Definition: a mass collectible is necessary-in-bag: decide no.
Definition: a mass collectible is ingredient: decide no.

Definition: a collectible (called T) is focusUnrepresented: [collectibles of the same type currently share the same text shortcut]
	repeat with L running through the list of focused things:
		if T is L, decide no;
		if T is mass collectible and the text-shortcut of T is the text-shortcut of L, decide no; [don't want to show every token!]
	decide yes.

Collectible Definition ends here.
