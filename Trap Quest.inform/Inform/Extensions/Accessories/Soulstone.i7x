Soulstone by Accessories begins here.

soulstone is a neckwear. Printed name of soulstone is "[clothing-title-before]soulstone[clothing-title-after]". The text-shortcut of soulstone is "so". Understand "swirling", "gem", "amulet", "soul", "stone" as soulstone.

Figure of soulstone is the file "Items/Accessories/Neck/soulstone1.png".
Figure of embedded soulstone is the file "Items/Accessories/Neck/soulstone2.png".

To decide which figure-name is clothing-image of (C - a soulstone):
	if the player is soulless, decide on figure of embedded soulstone;
	decide on figure of soulstone.

To say ClothingDesc of (C - a soulstone):
	say "A swirling gem [if the player is soulless]pressed into your chest just above your cleavage[otherwise]on an amulet around your neck[end if].";

To say ShortDesc of (C - a soulstone):
	say "swirling gem".

Definition: a soulstone is removable:
	if the player is not soulless, decide yes;
	decide no.
Definition: a soulstone is demonic: decide yes.
Definition: a soulstone is orange themed: decide yes.
Definition: a soulstone is grey themed:
	if the player is not soulless, decide yes;
	decide no.

To decide which number is the initial outrage of (C - a soulstone):
	decide on 1.

Soulstone ends here.
