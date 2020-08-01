Bottles by Drinks begins here.

[!<Bottle>@

All drinking vessels that obey standard dosage and colour rules. I.e. not the squeezy bottle.

@inherits <Thing>

@!]
A bottle is a kind of thing.

Definition: a bottle is drink themed: [Is it something that has a drink in the pattern?]
	decide yes.

[!<Bottle>@<doses:Integer>*

How many gulps of liquid are in it right now? A gulp of liquid is about 2 units of liquid everywhere else.

*@!]
A bottle has a number called doses.

Definition: a bottle is empty rather than non-empty if the doses of it <= 0.

[!<Bottle>@<maxDoses:Integer>*

How many gulps of liquid can it hold?

*@!]
A bottle has a number called max-doses.

To DoseUp (B - a bottle):
	DoseUp B by 1.

To DoseUp (B - a bottle) by (N - a number):
	if the doses of B < the max-doses of B:
		increase the doses of B by N;
		if the doses of B > the max-doses of B, now the doses of B is the max-doses of B;
		force inventory-focus redraw. [Force inventory window redraw]

To DoseDown (B - a bottle):
	DoseDown B by 1.

To DoseDown (B - a bottle) by (N - a number):
	if the doses of B > 0:
		decrease the doses of B by N;
		if the doses of B < 0, now the doses of B is 0;
		force inventory-focus redraw. [Force inventory window redraw]

To DoseFill (B - a bottle):
	if the doses of B is not the max-doses of B:
		now the doses of B is the max-doses of B;
		force inventory-focus redraw. [Force inventory window redraw]

To SetDose (B - a bottle) to (N - a number):
	if the doses of B is not N:
		now the doses of B is N;
		if the doses of B > the max-doses of B, now the doses of B is the max-doses of B;
		if the doses of B < 0, now the doses of B is 0;
		force inventory-focus redraw. [Force inventory window redraw]

To DoseEmpty (B - a bottle):
	if the doses of B is not 0:
		now the doses of B is 0;
		force inventory-focus redraw. [Force inventory window redraw]

[!<Bottle>@<curseID:CurseIDEnum>*

It is possible for the player to know (sure) or not know (unsure) the BUC status of the bottle.

*@!]
A bottle has a curse-ID.
Understand the curse-ID property as describing a bottle.
A bottle is usually unsure.

[!<Bottle>@<magicCurse:MagicCurseEnum>*

Bottles can be cursed/uncursed/blessed.

*@!]
A bottle has a magic-curse.
Understand the magic-curse property as describing a bottle when item described is sure.
A bottle is usually bland.

To say BlessBlessFlav of (B - a bottle):
	if B is in the location of the player:
		say "A flash of blue and gold surrounds the [ShortDesc of B] for an instant. It must now be blessed!";
		now B is sure.

To say BlessBlandFlav of (B - a thing):
	if B is in the location of the player:
		say "A flash of blue surrounds the [ShortDesc of B] as a black aura seems to fizzle away. It must have been uncursed!";
		now B is sure.

[!<Bottle>@<fillColour:DrinkColourEnums>*

Bottles have a colour. This is what liquid colour is contained within it.

*@!]
A bottle has a drink-colour called the fill-colour. Understand the fill-colour property as describing a bottle when item described is non-empty.

To say PotionType of (B - a bottle):
	say "a [fill-colour of B] liquid";
	if the fill-type of B is remembered, say " ([FillName the fill-type of B][if the fill-colour of B is creamy and the number of things inseminating B is 1] from the [MediumDesc of a random thing inseminating B][end if])".

To say ShortDesc of (B - a bottle):
	if the fill-type of B is remembered, say "[FillName the fill-type of B]";
	otherwise say "[fill-colour of B] drink".

[!<Bottle>@<origin:OriginEnum>*

This variable maybe needs to be renamed, because what it really is checking is whether the liquid has at any point been up the player's ass. If it has, then it gets flagged as monster-origin. The exception is urine; if the urine came from collecting from being pissed on, then it gets flagged as monster-origin. This is mainly for tracking how valuable the liquid is to the witch. ###Selkie suggests: pee-origin-player or pee-origin-monster

*@!]
A bottle can be player-origin or monster-origin. A bottle is usually player-origin.

[!<Bottle>@<WhichNumberIsTheFillType>+

This core function allows us to get a number from the table of drinks table based on the colour of the bottle.

+@!]
To decide which number is the fill-type of (B - a bottle):
	let X be Magic corresponding to a appearance of fill-colour of B in the Table of Drinks;
	decide on X.

[!<Bottle>@<IsIngredient>+

Can it be used to craft things?

+@!]
Definition: a bottle is ingredient: decide yes.

[!<Bottle>@<WhichNumberIsTheCraftingKey>+

What number does it register as on the crafting table?

+@!]
To decide which number is the crafting key of (B - a bottle):
	decide on the fill-type of B.

[!<Bottle>@<WhichNumberIsTheHeaviness>+

How much does it weigh down the player?

+@!]
To decide which number is the heaviness of (B - a bottle):
	decide on the doses of B.

[!<Thing>@<KnownPotion>+

Does the player know what type of drink it is? (This is just to prevent runtime errors during crafting)

+@!]
Definition: a thing is known-potion: decide no.

[!<Bottle>@<KnownPotion>+

Does the player know what type of drink it is?

+@!]
Definition: a bottle (called B) is known-potion:
	if the Known corresponding to an Magic of the fill-type of B in the Table of Drinks is 1, decide yes;
	decide no.

[!<Bottle>@<KnownCursedPotion>+

Does the player know that it's a cursed potion?

+@!]
Definition: a bottle (called B) is known-cursed-potion:
	if B is known-potion and the fill-type of B >= lowest-cursed and the fill-type of B <= highest-cursed, decide yes;
	decide no.

[!<Bottle>@<KnownGoodPotion>+

Does the player know that it's a non-cursed potion?

+@!]
Definition: a bottle (called B) is known-good-potion:
	if the fill-type of B is 22, decide yes; [22 is milk]
	if B is known-potion and the fill-type of B < lowest-cursed, decide yes;
	decide no.

[!<Bottle>@<IsBasicLoot>+

Can it appear in containers?

+@!]
Definition: a bottle (called B) is basic loot:
	if B is off-stage, decide yes.

[!<Bottle>@<Restock>+

This is how we funnel bottles into the list of items that can be found next

+@!]
To restock (C - a bottle):
	let B be a random basic loot bottle;
	if B is bottle, now B is in Standard Item Pen.

To Set Up Drinks:
	repeat with B running through all vessels:
		unless B is can:
			let R be a random number between 1 and 8;
			if R is 1, curse B;
			if R is 8, bless B;
	let N be 1;
	let T be 1;
	repeat with C running through all cans:
		if N is 1:
			now the fill-colour of C is silver;
			now the text-shortcut of C is "svc";
		if N is 2:
			now the fill-colour of C is scarlet;
			now the text-shortcut of C is "scc";
		if N is 3:
			now the fill-colour of C is blue;
			now the text-shortcut of C is "blc";
		if N is 4:
			now the fill-colour of C is bronze;
			now the text-shortcut of C is "brc";
		if N is 5:
			now the fill-colour of C is green;
			now the text-shortcut of C is "grc";
		if N is 6:
			now the fill-colour of C is grey;
			now the text-shortcut of C is "gyc";
		if N is 7:
			now the fill-colour of C is clear;
			now the text-shortcut of C is "crc";
		if N is 8:
			now the fill-colour of C is magenta;
			now the text-shortcut of C is "mgc";
		if N is 9:
			now the fill-colour of C is indigo;
			now the text-shortcut of C is "ind";
		if N is 10:
			now the fill-colour of C is orange;
			now the text-shortcut of C is "ong";
		if N is 11:
			now the fill-colour of C is lime;
			now the text-shortcut of C is "lim";
		if N is 12:
			now the fill-colour of C is brownish;
			now the text-shortcut of C is "bwn";
		if N is 13:
			now the fill-colour of C is violet;
			now the text-shortcut of C is "vlt";
		if N is 14:
			now the fill-colour of C is glittery;
			now the text-shortcut of C is "glt";
		if N is 15:
			now the fill-colour of C is turquoise;
			now the text-shortcut of C is "trq";
		now the text-shortcut of C is "can[T]"; [trying out a new text shortcut system for cans]
		increase N by 1;
		increase T by 1;
		if N is 16, now N is 1.

[!<DumpBottle>+

When a bottle of bodily fluids is emptied on to the floor, we make sure to increase the appropriate puddle in the location of the player.

+!]
To Dump (X - a bottle):
	if the fill-type of X is 20:
		SemenPuddleUp 2 * the doses of X;
	if the fill-type of X is 21:
		UrinePuddleUp 2 * the doses of X;
	if the fill-type of X is 22:
		MilkPuddleUp 2 * the doses of X;
	if the fill-type of X is 23:
		SemenPuddleUp the doses of X;
		if watersports mechanics is 1:
			UrinePuddleUp the doses of X;
		if lactation fetish is 1:
			MilkPuddleUp the doses of X;
	DoseEmpty X.

[!<DestroyBottle>+

This is all the things we need to do when a bottle is destroyed to reset it for the next time it appears and to make sure it has no lingering unintended effects.

+!]
To destroy (T - a bottle):
	remove T from play;
	now the magic-curse of T is bland;
	now the curse-ID of T is unsure;
	DoseEmpty T;
	now T is unowned;
	dislodge T.

Bottles ends here.
