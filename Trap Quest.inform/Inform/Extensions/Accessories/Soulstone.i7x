Soulstone by Accessories begins here.

A soulstone is a kind of neckwear. There is 1 unique soulstone. Printed name of soulstone is "[TQlink of item described][clothing-title-before]soulstone[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of soulstone is "so". 

Figure of soulstone is the file "soulstone1.png".

To decide which figure-name is clothing-image of (C - a soulstone):
	decide on figure of soulstone.

To say ClothingDesc of (C - a soulstone):
	say "A swirling gem [if the player is soulless]pressed into your chest just above your cleavage[otherwise]on an amulet around your neck[end if].";
	
To say ShortDesc of (C - a soulstone):
	say "swirling gem".
	
Definition: A soulstone (called C) is removable:
	if the player is soulless:
		decide no;
	decide yes.
		
To decide which number is the initial outrage of (C - a soulstone):
	decide on 1.

Soulstone ends here.

