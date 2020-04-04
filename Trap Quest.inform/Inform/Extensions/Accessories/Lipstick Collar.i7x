Lipstick Collar by Accessories begins here.

A lipstick collar is a kind of submissive collar. There is 1 lipstick collar in Mansion16. Printed name of lipstick collar is "[clothing-title-before][if item described is tethering]thieves collar[otherwise]lipstick collar[end if][clothing-title-after]". The text-shortcut of lipstick collar is "lsc". A lipstick collar can be tethering or not tethering. A lipstick collar is usually not tethering. A lipstick collar is usually leather. Understand "thief", "lip", "stick", "thieves" as lipstick collar.

Figure of lipstick collar is the file "Items/Accessories/Neck/lipstickcollar1.png".

To decide which figure-name is clothing-image of (C - a lipstick collar):
	decide on figure of lipstick collar.

To say ClothingDesc of (C - a lipstick collar):
	say "A leather collar with a red, lip shaped clasp in the front. Small hooks, like the kind you might attach a dog leash to, line the collar in a circle.[if C is worn]The collar is somehow forcing you to push your lips out and half-close your eyelids in a sultry 'come-hither' look.[otherwise]The phrase 'before the bite.' is cut into the leather on the inside. Strange.[end if]".

To say ShortDesc of (C - a lipstick collar):
	say "lipstick collar".

Definition: a lipstick collar is immune to change if it is in Mansion16.

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

To decide which number is the soreness-influence of (C - a lipstick collar):
	decide on the make-up of face * 2 + the lips of face.

Report taking off lipstick collar:
	now the noun is blandness;
	if the noun is tethering, end tethering.

To say TetherMove:
	let M be vampiress;
	if diaper quest is 0:
		if M is in the location of the player, say "The chain pulls hard as soon as you start to move, very nearly throwing you off balance.[line break][speech style of M]'[one of]Why are you running away darling? Afraid I[']m going to pull out when I cum? Hahaha!'[or]You[']re cute for a thief, which is all the more reason to make sure I collect your payment personally...'[or]No getting away from me now, [if the player is presenting as male]Mr[otherwise]Mrs[end if]. sticky fingers!'[or]Scared of me, darling? Don't worry, I don't kill thieves, I inseminate them.'[in random order][roman type][line break]";
		otherwise say "The chain pulls hard as soon as you start to move, [one of]forcefully dragging you back several feet[or]accompanied by a sing-songy voice down the hall.[line break][speech style of M]'I[']ve been deep-throated by faster thieves than you, darling~!'[roman type][line break][or]dragging you back several feet. You hear a mocking roll of laughter down the hall. [or]accompanied by a sing-songy voice down the hall.[line break][speech style of M]'Better run faster unless you want a sticky face to match those sticky fingers~!'[roman type][line break][or][line break][speech style of M]'Run run run, as fast as you can, can't escape me, I'm going to violate your asshole!'[roman type][line break][at random][one of]You have to keep trying to escape![or]You have to keep trying![stopping]";
	otherwise:
		if M is in the location of the player, say "The chain pulls hard as soon as you start to move, very nearly throwing you off balance.[line break][speech style of M]'[one of]Why are you running away darling? Afraid I'm going to make you wet yourself? Hahaha!'[or]You're cute for a thief, which is all the more reason to make sure I collect your payment personally...'[or]No getting away from me now, [if the player is presenting as male]Mr[otherwise]Mrs[end if]. sticky fingers!'[or]Scared of me, darling? Don't worry, I don't kill thieves, I just [']adopt['] them...'[in random order][roman type][line break]";
		otherwise say "The chain pulls hard as soon as you start to move, [one of]forcefully dragging you back several feet[or]accompanied by a sing-songy voice down the hall.[line break][speech style of M]'I[']ve diapered faster thieves than you, darling~!'[roman type][line break][or]dragging you back several feet. You hear a mocking roll of laughter down the hall. [or]accompanied by a sing-songy voice down the hall.[line break][speech style of M]'Better run faster unless you want some sticky padding to match those sticky fingers~!'[roman type][line break][or][line break][speech style of M]'Run run run, as fast as you can, can't escape me, I'm going to put you in [if the player is diapered]an even thicker[otherwise]a[end if] nappy!'[roman type][line break][in random order][one of]You have to keep trying to escape![or]You have to keep trying![stopping]".

To end tethering:
	let L be a random worn tethering lipstick collar;
	now L is not tethering;
	repeat with P running through pedestals:
		unless the paid of P > 0, now P is closed;
	say "The chain releases you, glittering as it fades from existence.".

This is the lipstick collar inhibits gag reflex rule:
	if there is a worn lipstick collar:
		let R be the make-up of face * 2;
		increase R by the lips of face + 3;
		let N be a random number between 1 and R;
		if debuginfo > 0, say "[input-style]Avoid gagging check: make up factor ([the make-up of face * 2]) + lips factor ([lips of face]) + 3 = [R] ---> d[R] = [N] | (1.5) difficulty check[roman type][line break]";
		if N > 1, rule succeeds.
The lipstick collar inhibits gag reflex rule is listed in the gag reflex rules.

Report going down when there is a worn tethering lipstick collar:
	end tethering.

Lipstick Collar ends here.
