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

Definition: a thing is ingredient: decide no.

[It's important to flag any item that can be used as an ingredient with this flag, or the game may not properly include it. We also need to make sure that it has a unique crafting key. This will probably be 1 higher than whatever the current highest crafting key is.]
Definition: a collectible is ingredient: decide yes.

[Giving each alchemy ingredient a different number (key) is the only way I can work out how to be able to randomise different types into a table.]
To decide which number is the crafting key of (C - a thing):
	decide on 0.

To decide which number is max crafting key:
	let K be 0;
	repeat with A running through ingredient things:
		if the crafting key of A > K, now K is the crafting key of A;
	decide on K.

current-crafting-key is a number that varies.

Definition: a thing (called C) is ingredient-highlighted:
	if C is ingredient and the crafting key of C is current-crafting-key, decide yes;
	decide no.

Definition: a thing (called C) is product-highlighted:
	if C is product and the alchemy key of C is current-alchemy-key, decide yes;
	decide no.

Definition: a number (called K) is alchemy appropriate: [Can we use this alchemy product as a random outcome?]
	now current-alchemy-key is K;
	let H be a random product-highlighted thing;
	if H is a thing:
		if H is fetish appropriate:
			if H is recipe specific, decide no;
			decide yes;
	decide no.

[Lots of spare rows for future ingredients]
Table of Alchemy
Ingredient	Product	Recipe
0	0	0
with 100 blank rows

To Set Up Collectibles:
	repeat with N running from 1 to 4:
		let F be a random off-stage fae mushroom;
		if F is fae mushroom, now F is in a random jungle room.

The specific recipe rules is a rulebook.

To set up alchemy table:
	let MC be max crafting key;
	let MA be max alchemy key;
	let RN be 1;
	repeat with R running through recipes:
		if RN <= MA:
			now the recipe-key of R is RN;
			now the text-shortcut of R is the substituted form of "re[RN]";
			now current-alchemy-key is the recipe-key of R;
			let H be a random product-highlighted thing;
			if H is a fetish appropriate thing, now the target-product of R is the substituted form of "[MediumDesc of H]";
			increase RN by 1;
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
		if N is alchemy appropriate:
			let K be a random number between 1 and MC;
			while K is not ingredient appropriate:
				now K is a random number between 1 and MC;
			now the Product in row K of the Table of Alchemy is N;
			now the Recipe in row K of the Table of Alchemy is 1.

Definition: a number (called K) is ingredient appropriate: [Will this ingredient be available in-game?]
	[Here we can identify that some ingredients will never appear and are therefore inappropriate to put on a recipe.]
	if the Recipe in row K of the Table of Alchemy is 1, decide no; [We have already assigned this ingredient to a recipe]
	if (K is 20 and diaper quest is 1) or (K is 22 and lactation fetish is 0) or (K is 21 and watersports mechanics is 0) or (K is 23 and ((lactation fetish is 0 and watersports fetish is 0) or diaper quest is 1)), decide no;
	if (K is 24 or K is 25 or K is 49) and egg laying fetish is 0, decide no; [all three types of eggs ]
	if K is 16 and egg laying fetish is 0 or mythical creature fetish is 0, decide no; [wasp wing]
	if K is 36 and inflation fetish is 0, decide no;
	if K is 55 and diaper quest is 0, decide no; [Chocolate eggs]
	if K is 56 and diaper messing < 4, decide no; [Pocketwipes]
	if K is 18 and diaper quest is 1, decide no; [Minotaur horn]
	decide yes.

Definition: a thing is product: decide no.
Definition: a thing is container-eligible: [is it common enough to just appear in containers?]
	if it is product:
		if it is recipe specific:
			decide no;
		otherwise if the original price of it <= container-price-cap:
			decide yes;
	decide no.
To decide which number is container-price-cap:
	if playerRegion is Mansion, decide on 5;
	if playerRegion is Dungeon, decide on 2;
	decide on 3.
Definition: a wearthing is container-eligible: decide no.

[Giving each alchemy product a different number (key) is the only way I can work out how to be able to randomise different types into a table.]
To decide which number is the alchemy key of (A - a thing):
	decide on 0.

To decide which number is max alchemy key:
	let K be 0;
	repeat with A running through product things:
		if the alchemy key of A > K, now K is the alchemy key of A;
	decide on K.

current-alchemy-key is a number that varies.

Definition: a thing is recipe specific: decide no. [We flag that the recipe is always the same and never random, to make sure we never try to use this alchemy product as a random cursed outcome (a seasoned player would immediately know it was cursed)]

To display complete alchemy data:
	[repeat through the Table of Alchemy:
		say "Product: [Product entry], Recipe: [Recipe entry], Ingredient: [ingredient entry].";]
	say "Max Crafting was [max crafting key] and Max Alchemy was [max alchemy key].";
	repeat through the Table of Alchemy:
		now current-alchemy-key is Product entry;
		now current-crafting-key is Ingredient entry;
		let R2 be a random product-highlighted thing;
		let R1 be a random ingredient-highlighted thing;
		say "[if Ingredient entry <= highest-cursed or (Ingredient entry >= 20 and Ingredient entry <= 23)][Appearance corresponding to an Magic of current-crafting-key in the Table of Drinks] liquid[otherwise][ShortDesc of R1][end if] ([Ingredient entry]) - [ShortDesc of R2] ([Product entry]) - [if Recipe entry is 1]REAL[otherwise]FAKE[end if].".

Crafting Framework ends here.
