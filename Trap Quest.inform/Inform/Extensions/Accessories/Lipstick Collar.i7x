Lipstick Collar by Accessories begins here.

A lipstick collar is a kind of submissive collar. There is 1 lipstick collar in Mansion16. Printed name of lipstick collar is "[clothing-title-before]lipstick collar[clothing-title-after]". The text-shortcut of lipstick collar is "lsc". A lipstick collar is usually leather. Understand "thief", "lip", "stick", "thieves" as lipstick collar.

Figure of lipstick collar is the file "Items/Accessories/Neck/lipstickcollar1.png".

To decide which figure-name is clothing-image of (C - a lipstick collar):
	decide on figure of lipstick collar.

To say ClothingDesc of (C - a lipstick collar):
	say "A leather collar with a red, lip shaped clasp in the front. Small hooks, like the kind you might attach a dog leash to, line the collar in a circle.[if C is worn]The collar is somehow forcing you to push your lips out and half-close your eyelids in a sultry 'come-hither' look.[otherwise]The phrase 'before the bite.' is cut into the leather on the inside. Strange.[end if]".

To say ShortDesc of (C - a lipstick collar):
	say "lipstick collar".

Definition: a lipstick collar is immune to change:
	if it is in Mansion16, decide yes;
	decide no.

Definition: a lipstick collar is oral sex themed: decide yes.
Definition: a lipstick collar is red themed: decide yes.
Definition: a lipstick collar is black themed: decide yes.

Report wearing lipstick collar:
	now a random lipstick collar is cursed;
	now a random lipstick collar is temptation;
	say "The collar tightens around your neck, and as you struggle to regain your breathing, you [one of][or]once again [stopping]realise it's somehow forcing you to make a very lewd, provocative face. [if the bimbo of the player < 8][line break][first custom style]Another reason not to look anyone here in the eye. Great.[otherwise if the bimbo of the player < 12][line break][variable custom style]I guess it's not that bad. I mean, it's not like I'm making this face on purpose.[otherwise][line break][second custom style]Great, now everybody will know what I really want![end if][roman type][line break]";
	if the location of the player is mansion28:
		say "A wave of relief seems to pass through the air, and the glass on the pedestals shifts to a translucent shade of pink.";
	repeat with P running through closed pedestals:
		now P is open.


Report taking off lipstick collar:
	end tethering.

To uniquely destroy lipstick collar:
	end tethering.

To decide which number is the soreness-influence of (C - a lipstick collar):
	decide on the make-up of face * 2 + the lips of face.

Lipstick Collar ends here.
