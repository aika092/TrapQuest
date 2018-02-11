Crafting Framework by Crafting begins here.

[
CRAFTING FRAMEWORK DOCUMENTATION:

* If a type of item is an ingredient, please define it as an ingredient.
* If a type of item is a product, please define it as a product.
* A thing should never be defined as both!! This will cause bugs due to the "is highlighted" definition.
* If an item has a varied title, e.g. rings can be sapphire, emerald, etc., then it should not be a basic ingredient. It should be part of a specific recipe. Which requires...
	* A specific product
	* A bespoke description for the relevant recipe
	* Define the extra recipe functions and rules. For an example see the spike bra.
* If the product or ingredient is limited to certain fetish options, you'll need to do even more.

GETTING KEYS RIGHT:

First, compile and run the game and one in-game, type "omega list me". This will give you a big table, but at the top you'll get to see what the current highest crafting key (for ingredients) and the current highest alchemy key (for products) is. Make your item have keys that are the next number up. So if the current highest alchemy key is 22, your new product item should have an alchemy key of 23.

Whenever you add shit to the crafting framework, please compile and test with "omega list me". Make sure that the new entry or entries at the bottom of the table look as you expect.
]

[!<Thing>@<IsIngredient>+

REQUIRES COMMENTING

+!]
Definition: a thing (called T) is ingredient:
	decide no.

[It's important to flag any item that can be used as an ingredient with this flag, or the game may not properly include it. We also need to make sure that it has a unique crafting key. This will probably be 1 higher than whatever the current highest crafting key is.]
[!<Collectible>@<IsIngredient>+

REQUIRES COMMENTING

+!]
Definition: a collectible (called C) is ingredient: 
	decide yes.
	
[Giving each alchemy ingredient a different number (key) is the only way I can work out how to be able to randomise different types into a table.]
[!<Thing>@<WhichNumberIsTheCraftingKey>+

REQUIRES COMMENTING

+!]
To decide which number is the crafting key of (C - a thing):
	decide on 0.

[!<DecideWhichNumberIsMaxCraftingKey>+

REQUIRES COMMENTING

+!]
To decide which number is max crafting key:
	let K be 0;
	repeat with A running through ingredient things:
		if the crafting key of A > K, now K is the crafting key of A;
	decide on K.

[!<currentCraftingKey:Integer>*

REQUIRES COMMENTING

*!]
current-crafting-key is a number that varies.

[!<Thing>@<IsHighlighted>+

REQUIRES COMMENTING

+!]
Definition: a thing (called C) is ingredient-highlighted:
	if C is ingredient and the crafting key of C is current-crafting-key, decide yes;
	decide no.

Definition: a thing (called C) is product-highlighted:
	if C is product and the alchemy key of C is current-alchemy-key, decide yes;
	decide no.

[Lots of spare rows for future ingredients]
[!<tableOfAlchemy:Table>*

REQUIRES COMMENTING

*!]
Table of Alchemy
Ingredient	Product	Recipe
0	0	0
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--
--	--	--

[!<SetUpCollectibles>+

REQUIRES COMMENTING

+!]
To Set Up Collectibles:
	repeat with N running from 1 to 4:
		let F be a random off-stage fae mushroom;
		if F is fae mushroom, now F is in a random jungle room.

[!<specificRecipeRules:Rulebook>*

REQUIRES COMMENTING

*!]
The specific recipe rules is a rulebook.

[!<SetUpAlchemyTable>+

REQUIRES COMMENTING

+!]
To set up alchemy table:
	let MC be max crafting key;
	let MA be max alchemy key;
	[First we set up the table so that all ingredients point to a cursed product.]
	repeat with N running from 1 to MC:
		now the Ingredient in row N of the Table of Alchemy is N;
		let R be a random number between 1 and MA;
		while R is not alchemy appropriate: [No items should be able to craft something inappropriate, e.g. elixir of life when pregnancy fetish is disabled.]
			now R is a random number between 1 and MA;
		now the Product in row N of the Table of Alchemy is R;
		now the Recipe in row N of the Table of Alchemy is 0;
	follow the specific recipe rules; [First we set up all specific recipes, then allocate the random ones.]
	[Now we assign each product to its true ingredient. This will overwrite a few rows above.]	
	repeat with N running from 1 to MA:
		if N is alchemy appropriate and N is recipe appropriate:
			let K be 0;
			while K is not ingredient appropriate:
				now K is a random number between 1 and MC;
			now the Product in row K of the Table of Alchemy is N;
			now the Recipe in row K of the Table of Alchemy is 1.

[!<NumberIsIngredientAppropriate>+

REQUIRES COMMENTING

+!]
Definition: a number (called K) is ingredient appropriate: [Will this ingredient be available in-game?]
	[Here we can identify that some ingredients will never appear and are therefore inappropriate to put on a recipe.]
	if (K is 20 and diaper quest is 1) or (K is 22 and lactation fetish is 0) or (K is 21 and watersports fetish is 0 and diaper lover <= 0) or (K is 23 and ((lactation fetish is 0 and watersports fetish is 0) or diaper quest is 1)), decide no;
	if K is 37 and the player is not the donator, decide no; [Pocketbooks for crafting study guide]
	if ((K >= 23 and K <= 25) or K is 16) and egg laying fetish is 0, decide no; [all three types of eggs and wasp wing]
	if K is 36 and inflation fetish is 0, decide no;
	if the Recipe in row K of the Table of Alchemy is 1, decide no; [We have already assigned this ingredient to a recipe]
	decide yes.

[!<NumberIsAlchemyAppropriate>+

REQUIRES COMMENTING

+!]
Definition: a number (called K) is alchemy appropriate: [Should we use this alchemy product as a random outcome?]
	now current-alchemy-key is K;
	let H be a random product-highlighted thing;
	if H is a thing:
		if H is recipe specific, decide no;
		if H is fetish appropriate, decide yes;
	decide no.

[!<NumberIsRecipeAppropriate>+

REQUIRES COMMENTING

+!]
Definition: a number (called K) is recipe appropriate: [Does this recipe get fully randomised (some will need a specific ingredient)?]
	now current-alchemy-key is K;
	let H be a random product-highlighted thing;
	if H is a thing:
		if H is recipe specific, decide no;
		decide yes;
	decide no.

[!<Thing>@<IsProduct>+

REQUIRES COMMENTING

+@!]
Definition: thing (called A) is product:
	decide no.

[!<AlchemyProduct>@<IsProduct>+

REQUIRES COMMENTING

+@!]
Definition: an alchemy product (called A) is product:
	decide yes.

[Giving each alchemy product a different number (key) is the only way I can work out how to be able to randomise different types into a table.]
[!<Thing>@<WhichNumberIsTheAlchemyKey>+

REQUIRES COMMENTING

+@!]
To decide which number is the alchemy key of (A - a thing):
	decide on 0.

[!<DecideWhichNumberIsMaxAlchemyKey>+

REQUIRES COMMENTING

+!]
To decide which number is max alchemy key:
	let K be 0;
	repeat with A running through product things:
		if the alchemy key of A > K, now K is the alchemy key of A;
	decide on K.

[!<currentAlchemyKey:Integer>*

REQUIRES COMMENTING

*!]
current-alchemy-key is a number that varies.

[!<AlchemyProduct>@<IsHighlighted>+

REQUIRES COMMENTING

+@!]
Definition: an alchemy product (called C) is product-highlighted:
	if the alchemy key of C is current-alchemy-key, decide yes;
	decide no.

[!<AlchemyProduct>@<IsFetishAppropriate>+

REQUIRES COMMENTING

+@!]
Definition: an alchemy product (called A) is fetish appropriate:
	repeat with R running through recipes:
		if the recipe key of R is the alchemy key of A:
			if R is appropriate, decide yes;
			decide no;
	decide no.

[!<Thing>@<IsRecipeSpecific>+

REQUIRES COMMENTING

+@!]
Definition: a thing (called A) is recipe specific:
	decide no.


[We are not going to classify these as 'bottles' a) since they don't obey the colour & effect rules and b) so that they never get mixed up with normal drinks that are found in containers etc.]

[!<AlchemyProduct>@

REQUIRES COMMENTING

@inherits <Thing>

@!]
An alchemy product is a kind of thing.

[!<AlchemyProduct>@<curseID:CurseIDEnums>*

REQUIRES COMMENTING

*@!]
An alchemy product has a curse-ID. Understand the curse-ID property as describing an alchemy product. An alchemy product is usually unsure.

[!<AlchemyProduct>@<magicCurse:MagicCurseEnums>*

REQUIRES COMMENTING

*@!]
An alchemy product has a magic-curse. Understand the magic-curse property as describing an alchemy product when item described is sure.

Include Powder by Crafting.

To display complete alchemy data:
	repeat through the Table of Alchemy:
		say "Product: [Product entry], Recipe: [Recipe entry], Ingredient: [ingredient entry].";
	say "Max Crafting was [max crafting key] and Max Alchemy was [max alchemy key].";
	repeat through the Table of Alchemy:
		now current-alchemy-key is Product entry;
		now current-crafting-key is Ingredient entry;
		let R2 be a random product-highlighted thing;
		let R1 be a random ingredient-highlighted thing;
		say "[if Ingredient entry <= highest-cursed or (Ingredient entry >= 20 and Ingredient entry <= 23)][Appearance corresponding to an Magic of current-crafting-key in the Table of Drinks] liquid[otherwise][ShortDesc of R1][end if] ([Ingredient entry]) - [ShortDesc of R2] ([Product entry]) - [if Recipe entry is 1]REAL[otherwise]FAKE[end if].".


Crafting Framework ends here.

