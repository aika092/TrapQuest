Accessories Framework by Accessories begins here.

An accessory is a kind of clothing. Understand "accessories" as the plural of accessory. An accessory is usually metal. An accessory is usually manly.
To decide which number is the default-soak-limit of (C - an accessory): decide on 3.

An accessory can be sapphire, emerald, ruby, pink diamond, pure diamond, solid gold (this is the accessory-colour property). Understand the accessory-colour property as describing an accessory when the item described is plentiful. Understand "solid", "gold" as the accessory when the item described is solid gold. Understand "pure", "diamond" as the accessory when the item described is pure diamond. Understand "pink", "diamond" as the accessory when the item described is pink diamond.

Definition: an accessory is too boring: decide no.
Definition: an accessory is magic-enhanceable: decide no.
Definition: an accessory is cursable:
	if it is not plentiful, decide yes;
	decide no.

To decide which number is the initial outrage of (C - an accessory):
	let X be 1;
	if C is pink diamond, increase X by 2;
	if X > 20, decide on 20;
	decide on X;

To decide which number is the heaviness of (C - an accessory):
	if C is unique and C is metal, decide on 2;
	if C is unique, decide on 1;
	if C is necklace, decide on 3;
	if C is bracelet, decide on 2;
	decide on 1.

Definition: an accessory is discovered varied: decide no.

To say ClothingDesc of (A - an accessory):
	if A is necklace:
		if A is solid gold:
			say "A solid gold choker necklace.";
		otherwise:
			say "A [if A is emerald]gold[otherwise]silver[end if] coloured choker necklace with a decent sized [accessory-colour of A] embedded in the front.";
	if A is bracelet:
		if A is solid gold:
			say "A solid gold bracelet.";
		otherwise:
			if A is sapphire:
				say "A gold coloured bracelet with a single sapphire embedded in the middle.";
			otherwise if A is pink diamond:
				say "A gold coloured bracelet with two pink diamonds embedded in it, one at each end.";
			otherwise:
				say "A silver coloured bracelet with several tiny [if A is ruby]rubies[otherwise][accessory-colour of A]s[end if] embedded on the outside.";
	if A is ring:
		if A is solid gold:
			say "A solid gold [if A is humility-stone and A is worn]ring that you obtained by proving yourself [StoneDesc of A].[otherwise]ring.[end if]";
		otherwise:
			say "A [if A is emerald or A is ruby]gold[otherwise]silver[end if] coloured ring with [if A is pure diamond]three impressive diamonds[otherwise]a small [accessory-colour of A][end if] embedded in the [if A is humility-stone and A is worn]top. You obtained it by proving yourself [StoneDesc of A].[otherwise]top.[end if]";
	if saved-flat-intelligence < 6:
		say "You have no idea how much it's [if A is humility-stone]worth, but you can tell it's much more than an ordinary ring.[otherwise]worth.[end if]";
	otherwise if saved-flat-intelligence < 11:
		if A is humility-stone:
			say "[if the price of A < 25]It doesn't look that special but something tells you its worth more than it seems.[otherwise if the price of A < 50]You can tell its extremely valuable.[otherwise]You can tell it's priceless.[end if]";
		otherwise:
			say "[if the price of A < 4]It's probably only worth a little bit.[otherwise if the price of A < 8]It probably has notable worth.[otherwise if the price of A < 12]You reckon this is quite a valuable piece of jewellery.[otherwise]This is probably an extremely expensive piece of jewellery.[end if]";
	otherwise:
		say "You don't know where this is coming from, but something in your head suggests this is probably worth... [price of A]. Whatever that means.".

Definition: an accessory is stealable:
	if it is plentiful, decide yes;
	decide no.

Definition: an accessory is transformation-protected: decide yes.

To say ShortDesc of (C - an accessory):
	say "accessory".

Figure of humility stone BG is the file "Items/Accessories/Arm/humility1.jpg".

To BackgroundRender (T - an accessory) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	update background colour of T;
	if the backgroundColour of T >= 0:
		draw a rectangle backgroundColour of T in the graphics-window at X1 by Y1 with size DX by DY;
	otherwise:
		if T is a humility-stone, display the image Figure of humility stone BG in the graphics-window at X1 by Y1 with dimensions DX by DY;
		otherwise draw a rectangle 16357356 in the graphics-window at X1 by Y1 with size DX by DY.

To set shortcut of (A - an accessory):
	now the tradability of A is the price of A;
	if A is not humility-stone, now the text-shortcut of A is "[metal-shortcut of A][jewellery-shortcut of A]".

[To check shortcut of (A - an accessory):
	let T be the substituted form of "[text-shortcut of A]";
	set shortcut of A;
	let CT be the substituted form of "[text-shortcut of A]";
	if T is not CT:
		say "BUG: The [A] you just received did not have its text shortcut set up correctly. Aika has temporarily added this procedure to work out where this is happening. Please report where the jewel came from as a bug.";

An all later time based rule:
	repeat with A running through worn plentiful accessory:
		check shortcut of A.]

To decide which text is metal-shortcut of (A - an accessory):
	if A is emerald, decide on "e";
	if A is ruby, decide on "r";
	if A is solid gold, decide on "g";
	if A is pink diamond, decide on "p";
	if A is pure diamond, decide on "d";
	decide on "s".

To decide which text is jewellery-shortcut of (A - an accessory):
	if A is necklace, decide on "n";
	if A is bracelet, decide on "b";
	decide on "r".

To accessoryUpgrade (A - an accessory):
	if A is plentiful:
		if A is pure diamond:
			now A is solid gold;
		otherwise if A is pink diamond:
			now A is pure diamond;
		otherwise if A is ruby:
			now A is pink diamond;
		otherwise if A is emerald:
			now A is ruby;
		otherwise if A is sapphire:
			now A is emerald;
		set shortcut of A.

Accessories Framework ends here.
