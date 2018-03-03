Ballet Corset by Corsets begins here.

A ballet corset is a kind of corset. A ballet corset is usually top-exclusive. A ballet corset is usually pvc. A ballet corset is usually short. There is 1 unique ballet corset.  A ballet corset is usually nipple covering. A ballet corset is usually average cut.

The printed name of ballet corset is usually "[TQlink of item described][clothing-title-before]ballet corset[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of ballet corset is "blco".

Figure of ballet corset is the file "Items\Clothes\Upper\Corsets\balletcorset1.png".

To decide which figure-name is clothing-image of (C - a ballet corset):
	decide on figure of ballet corset.

To say ClothingDesc of (C - a ballet corset):
	say "A [unless the outrage of C is too humiliating][second custom style]supercute[roman type][end if] pink overbust corset with an attached short frilly tutu.".

To say ShortDesc of (C - a ballet corset):
	say "ballet corset".

Definition: a ballet corset (called C) is ballet related:
	decide yes.

Definition: a ballet corset (called C) is strut enabling:
	if there is a worn thigh high ballet boots, decide yes;
	decide no.

Definition: a ballet corset (called C) is untansformable:
	if there is a worn thigh high ballet boots, decide yes;
	decide no.

To compute periodic effect of (C - a ballet corset):
	if there is a worn thigh high ballet boots and the strut of the player is 0 and the player is upright:
		say "You are [one of][or]once again [stopping]magically forced to walk with your hands above your head! [bold type]You are now strutting[one of], [roman type]which gives you increased dexterity but slowly increases humiliation.[or].[roman type][line break][stopping]";
		if image cutscenes is 1, display figure of ballet cutscene;
		now the strut of the player is 1.

Check strutting when there is a worn ballet corset:
	if the strut of the player is 1 and there is a worn thigh high ballet boots, say "You can't stop strutting, you're being magically forced to by your ballet clothing!" instead.
	

[!<ThePlayerCantSlapWhileBalletStruttingRule>+

This rule causes a slap to fail if the player is wearing unblessed fake nails. If the player is attacking manually, outputs a message explaining why the slap failed.

+!]
This is the player can't slap while ballet strutting rule:
	if there is a worn ballet corset and there is a worn thigh high ballet boots:
		if autoattack is 0, say "Your ballet clothing won't allow you to, it keeps your hands high above your head in a ballerina pose!";
		rule fails.
The player can't slap while ballet strutting rule is listed in the ability to slap rules.

Ballet Corset ends here.
