Recipes by Crafting begins here.

A recipe is a kind of thing. A recipe can be memorised. A recipe is usually not portable. The text-shortcut of recipe is "re". A recipe has a number called recipe-key. A recipe has a text called target-product. Understand the target-product property as describing a recipe.
There are 50 recipes. [If the number of alchemy items goes above 50 this will need increasing]

['Appropriate' means the player has enabled the right fetishes in order to be allowed to find this recipe.]
Definition: a recipe (called R) is appropriate:
	if the recipe-key of R is 0 or the target-product of R is "", decide no;
	if the recipe-key of R is 28, decide no; [recipe for condom pack only appears from priestess quest]
	decide yes.

To say ShortDesc of (R - a recipe):
	say "recipe".

To say MediumDesc of (R - a recipe):
	say "recipe for [target-product of R]".

The printed name of a recipe is "[TQlink of item described][MediumDesc of item described][shortcut-desc][TQxlink of item described][verb-desc of item described]".

Figure of recipe is the file "Env/MultiFloor/recipe1.png".

To decide which figure-name is the examine-image of (C - a recipe):
	decide on figure of recipe.

To ForegroundRender (T - a recipe) at (X1 - a number) by (Y1 - a number) with dimensions (DX - a number) by (DY - a number):
	now current-alchemy-key is the recipe-key of T;
	let P be a random product-highlighted thing;
	if P is a thing:
		let F be the examine-image of P;
		display the image F in the current focus window at (X1 + (DX / 4)) by (Y1 + (DY / 4)) with dimensions (DX / 2) by (DY / 2).

To decide which text is the RecipeDesc of (C - an object):
	decide on "".

To say ExamineDesc of (C - a recipe):
	now current-alchemy-key is the recipe-key of C;
	let P be a random product-highlighted thing;
	if the RecipeDesc of P is not "":
		say "[RecipeDesc of P]";
	otherwise:
		now current-crafting-key is 0;
		repeat through the Table of Alchemy:
			if Product entry is current-alchemy-key and Recipe entry is 1, now current-crafting-key is Ingredient entry;
		if current-crafting-key >= 1 and current-crafting-key <= highest-cursed:
			say "The recipe just says 'Pour in a [Appearance corresponding to a Magic of current-crafting-key in the Table of Drinks] liquid and wait.'";
		otherwise if current-crafting-key >= 20 and current-crafting-key <= 23:
			say "The recipe just says 'Only a full flask of [FillName current-crafting-key] can create this item properly.'";
		otherwise if there is an ingredient-highlighted thing and current-crafting-key is not 0:
			let H be a random ingredient-highlighted thing;
			if current-crafting-key >= 51 and current-crafting-key <= 54:
				say "The recipe says 'Place any [ShortestDesc of H] in the bowl and the Goddess will do the rest.'";
			otherwise:
				say "The recipe just says '[if H is vessel]Pour any liquid from a [ShortVesselDesc of H][otherwise]Place a [ShortDesc of H][end if] into the bowl and the Goddess will do the rest.'";
		otherwise:
			say "This recipe is impossible to craft. I guess someone should probably submit a bug report, with the following information:[line break]CURRENT-CRAFTING-KEY: [current-crafting-key]. CURRENT-ALCHEMY-KEY: [current-alchemy-key]. RECIPE-KEY: [recipe-key of C][line break]";
			display complete alchemy data;
	if newbie tips is 1, say "[one of][newbie style]Newbie tip: Memorising a recipe increases your chances of creating a blessed version of the item. The main thing required, however, is high intelligence (and pray to RNGsus).[roman type][line break][or][stopping]".

To decide which object is the recipe of (N - a number):
	repeat with R running through recipes:
		if the recipe-key of R is N, decide on R;
	decide on nothing.

[Not actually a recipe but this seems like a sensible place to put this code]

Recipe for latex curse reversal is a kind of thing. A recipe for latex curse reversal is usually portable. The printed name of recipe for latex curse reversal is "[TQlink of item described]recipe for latex curse reversal[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for latex curse reversal. The text-shortcut of recipe for latex curse reversal is "rlc".
To decide which figure-name is the examine-image of (C - Recipe for latex curse reversal):
	decide on figure of recipe.
To say ExamineDesc of (B - a recipe for latex curse reversal):
	say "This recipe isn't written in any alphabet you've ever seen before. There's absolutely no way you'll have any chance of understanding it on your own.".
Definition: a recipe for latex curse reversal is immune to change: decide yes.
Check inking recipe for latex curse reversal:
	say "You get the feeling that would be a bad idea. What if you ever get the 'latex curse'?!" instead.

Recipes ends here.
