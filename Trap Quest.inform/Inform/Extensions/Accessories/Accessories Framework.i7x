Accessories Framework by Accessories begins here.

An accessory is a kind of clothing.  Understand "accessories" as the plural of accessory.  An accessory is usually metal. The soak-limit of an accessory is usually 3.

An accessory can be sapphire, emerald, ruby, solid gold, pink diamond, pure diamond (this is the accessory-colour property).  Understand the accessory-colour property as describing a accessory when the item described is plentiful.  Understand "solid", "gold" as the accessory when the item described is solid gold and the item described is not stethoscope.  Understand "pure", "diamond" as the accessory when the item described is pure diamond.  Understand "pink", "diamond" as the accessory when the item described is pink diamond.  The description of accessory is usually "[accessorydesc][ownership-desc]".

Definition: an accessory (called C) is too boring:
	decide no.

Definition: an accessory (called C) is magic-enhanceable:
	decide no.

Definition: a piercing (called C) is magic-enhanceable:
	decide no.
	
To decide which number is the initial outrage of (C - an accessory):
	let X be 0;
	if C is pink diamond, increase X by 1;
	if C is bracelet, increase X by 1;
	if C is necklace, increase X by 2;
	if C is ring:
		repeat with R running through rings worn by the player:
			increase X by 1;
	if X > 20, decide on 20;
	decide on X;

To decide which number is the heaviness of (C - an accessory):
	if C is unique and C is metal, decide on 2;
	if C is unique, decide on 1;
	if C is necklace, decide on 3;
	if C is bracelet, decide on 2;
	decide on 1.

To uniquely set up (A - an accessory):
	unless A is immune to change or A is unique, now A is a random accessory-colour.

To say accessorydesc:
	if item described is necklace:
		if item described is solid gold:
			say "A solid gold choker necklace.";
		otherwise:
			say "A silver coloured choker necklace with a decent sized [accessory-colour of item described] embedded in the front.";
	if item described is bracelet:
		if item described is solid gold:
			say "A solid gold bracelet.";
		otherwise:
			say "A silver coloured bracelet with several tiny [if item described is ruby]rubies[otherwise][accessory-colour of item described]s[end if] embedded on the outside.";
	if item described is ring:
		if item described is solid gold:
			say "A solid gold ring.";
		otherwise:
			say "A silver coloured ring with a small [accessory-colour of item described] embedded in the top.";
	if the flat intelligence of the player < 6:
		say "You have no idea how much it's worth.";
	otherwise if the flat intelligence of the player < 11:
		say "[if the price of item described < 4]It's probably only worth a little bit.[otherwise if the price of item described < 8]It probably has notable worth.[otherwise if the price of item described < 12]You reckon this is quite a valuable piece of jewellery.[otherwise]This is probably an extremely expensive piece of jewellery.[end if]";
	otherwise:
		say "You don't know where this is coming from, but something in your head suggests this is probably worth... [price of item described].  Whatever that means.".

Definition: an accessory (called C) is stealable:
	if C is plentiful, decide yes;
	decide no.

To uniquely set up (C - an accessory):
	do nothing.

Definition: an accessory (called C) is untransformable:
	decide yes.

To say ShortDesc of (C - an accessory):
	say "accessory".


[!<SetShortcutOfAccessory>+

REQUIRES COMMENTING

+!]
To set shortcut of (A - an accessory):
	now the text-shortcut of A is "[metal-shortcut of A][jewellery-shortcut of A]".

[!<DecideWhichIndexedTextIsMetalShortcutOfAccessory>+

REQUIRES COMMENTING

+!]
To decide which indexed text is metal-shortcut of (A - an accessory):
	if A is emerald, decide on "e";
	if A is ruby, decide on "r";
	if A is solid gold, decide on "g";
	if A is pink diamond, decide on "p";
	if A is pure diamond, decide on "d";
	decide on "s".

[!<DecideWhichIndexedTextIsJewelleryShortcutOfAccessory>+

REQUIRES COMMENTING

+!]
To decide which indexed text is jewellery-shortcut of (A - an accessory):
	if A is necklace, decide on "n";
	if A is bracelet, decide on "b";
	decide on "r".


Accessories Framework ends here.
