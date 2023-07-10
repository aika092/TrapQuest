Lipstick Collar by Accessories begins here.

lipstick collar is a submissive collar. lipstick collar is unique. lipstick collar can be lipstick-setup. The printed name of lipstick collar is "[clothing-title-before]lipstick collar[clothing-title-after]". The text-shortcut of lipstick collar is "lsc". lipstick collar is leather. Understand "thief", "lip", "stick", "thieves" as lipstick collar.

Figure of lipstick collar is the file "Items/Accessories/Neck/lipstickcollar1.png".

To decide which figure-name is clothing-image of (C - lipstick collar):
	decide on figure of lipstick collar.

To decide which number is the initial outrage of (C - lipstick collar):
	decide on 5.

To say ClothingDesc of (C - lipstick collar):
	say "A leather collar with a red, lip shaped clasp in the front. Small hooks, like the kind you might attach a dog leash to, line the collar in a circle[if C is worn and diaper quest is 0]. The collar is somehow forcing you to push your lips out and half-close your eyelids in a sultry 'come-hither' look[otherwise if C is in Mansion16]. The phrase 'before the bite' is cut into the leather on the inside. Strange[end if].".

To say ShortDesc of (C - lipstick collar):
	say "lipstick collar".

Definition: lipstick collar is immune to change:
	if lipstick collar is in Mansion16, decide yes;
	decide no.

Definition: lipstick collar is oral sex themed: decide yes.
Definition: lipstick collar is red themed: decide yes.
Definition: lipstick collar is black themed: decide yes.

To set up (C - lipstick collar):
	if C is not lipstick-setup: [we have to do it this way, since if it started in Mansion16, it would be immune to change, and this set up function would never run.]
		now C is in Mansion16;
		now C is lipstick-setup;
	if diaper quest is 1, now C is respiration;
	otherwise now C is temptation.

Report wearing lipstick collar:
	now lipstick collar is cursed;
	say "The collar tightens around your neck, and as you struggle to regain your breathing, you [one of][or]once again [stopping]realise it's somehow forcing you to make a very lewd, provocative face. [if the bimbo of the player < 8][line break][first custom style]Another reason not to look anyone here in the eye. Great.[otherwise if the bimbo of the player < 12][line break][variable custom style]I guess it's not that bad. I mean, it's not like I'm making this face on purpose.[otherwise][line break][second custom style]Great, now everybody will know what I really want![end if][roman type][line break]";
	compute summoned quest of lipstick collar;
	if the location of the player is mansion28:
		say "A wave of relief seems to pass through the air, and the glass on the pedestals shifts to a translucent shade of pink.";
	repeat with P running through closed pedestals:
		now P is open.

Report taking off lipstick collar:
	end tethering.

To uniquely destroy lipstick collar:
	end tethering.

To decide which number is the soreness-influence of (C - lipstick collar):
	decide on the make-up of face * 2 + the lips of face.
To decide which number is the oral-sex-addiction-influence of (C - lipstick collar):
	decide on 1.

Lipstick Collar ends here.
