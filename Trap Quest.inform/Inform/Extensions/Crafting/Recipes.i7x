Recipes by Crafting begins here.


A recipe is a kind of thing. A recipe can be memorised. A recipe is usually not memorised. A recipe is usually not portable. The text-shortcut of recipe is "re".

To decide which number is the recipe key of (C - a recipe):
	decide on 0.

The description of a recipe is usually "[RecipeDesc]".

To say RecipeDesc:
	now current-alchemy-key is the recipe key of item described;
	now current-crafting-key is 0;
	repeat through the Table of Alchemy:
		if Product entry is current-alchemy-key and Recipe entry is 1, now current-crafting-key is Ingredient entry;
	if current-crafting-key >= 1 and current-crafting-key <= highest-cursed:
		say "The recipe just says 'Pour in a [Appearance corresponding to a Magic of current-crafting-key in the Table of Drinks] liquid and wait.'";
	otherwise if current-crafting-key >= 20 and current-crafting-key <= 23:
		say "The recipe just says 'Only a full flask of [FillName current-crafting-key] can create this item properly.'";
	otherwise if there is a ingredient-highlighted thing and current-crafting-key is not 0:
		let H be a random ingredient-highlighted thing;
		if current-crafting-key >= 51 and current-crafting-key <= 54:
			say "The recipe says 'Place any [ShortestDesc of H] in the bowl and the Goddess will do the rest.'";
		otherwise:
			say "The recipe just says '[if H is vessel]Pour any liquid from[otherwise]Place[end if] a [ShortDesc of H] into the bowl and the Goddess will do the rest.'";
	otherwise:
		say "This recipe is impossible to craft. I guess someone should probably submit a bug report, with the following information:[line break]CURRENT-CRAFTING-KEY: [current-crafting-key]. CURRENT-ALCHEMY-KEY: [current-alchemy-key]. RECIPE-KEY: [recipe key of item described][line break]";
		display complete alchemy data.

To decide which object is the recipe of (N - a number):
	repeat with R running through recipes:
		if the recipe key of R is N, decide on R;
	decide on nothing.	

To decide which number is the heaviness of (C - a recipe):
	decide on 1.

Recipe for latex curse reversal is a kind of thing. A recipe for latex curse reversal is usually portable. The printed name of recipe for latex curse reversal is "[TQlink of item described]recipe for latex curse reversal[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of recipe for latex curse reversal is "This recipe isn't written in any alphabet you've ever seen before. There's absolutely no way you'll have any chance of understanding it on your own.". There is 1 recipe for latex curse reversal. The text-shortcut of recipe for latex curse reversal is "rlc".
Definition: a recipe for latex curse reversal (called R) is immune to change:
	decide yes.
Check inking recipe for latex curse reversal:
	say "You get the feeling that would be a bad idea. What if you ever get the 'latex curse'?!" instead.
	
To determine items for (R - a recipe for latex curse reversal):
	do nothing.[The player can't read this particular recipe, so it's uncraftable.]

Recipe for condom of kings is a kind of recipe. The printed name of recipe for condom of kings is "[TQlink of item described]recipe for condom of kings[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of recipe for condom of kings is "The recipe just says: 'Rubber'.". There is 1 recipe for condom of kings. The text-shortcut of recipe for condom of kings is "rck".
Definition: a recipe for condom of kings (called R) is appropriate:
	if the player is female, decide no;
	if diaper lover >= 1 or watersports fetish is 1, decide no; [To avoid the headache of handling urination with this condom]
	decide yes.

To decide which number is the recipe key of (C - a recipe for condom of kings):
	decide on 13.

Recipe for whip of domination is a kind of recipe. The printed name of recipe for whip of domination is "[TQlink of item described]recipe for whip of domination[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of recipe for whip of domination is "The recipe just reads 'Severed Vine'.". There is 1 recipe for whip of domination. The text-shortcut of recipe for whip of domination is "rwd".

To decide which number is the recipe key of (C - a recipe for whip of domination):
	decide on 15.

Recipe for stethoscope is a kind of recipe. The printed name of recipe for stethoscope is "[TQlink of item described]recipe for stethoscope[shortcut-desc][TQxlink of item described][verb-desc of item described]". [The description of recipe for stethoscope is "Solid Metal Disc, Caffeinated Drink".]  There is 1 recipe for stethoscope. The text-shortcut of recipe for stethoscope is "rst".

To decide which number is the recipe key of (C - a recipe for stethoscope):
	decide on 16.

Recipe for spike bra is a kind of recipe. The printed name of recipe for spike bra is "[TQlink of item described]recipe for spike bra[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of recipe for spike bra is "This recipe says '[if egg laying fetish is 1]Medium Sized Egg or [end if][if diaper quest is 1]Grown Up[otherwise]Super Slutty[end if] Bra'". There is 1 recipe for spike bra. The text-shortcut of recipe for spike bra is "rsp".

To decide which number is the recipe key of (C - a recipe for spike bra):
	decide on 14.


Recipe for queen of hearts heels is a kind of recipe. The printed name of recipe for queen of hearts heels is "[TQlink of item described]recipe for queen of heart's heels[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of recipe for queen of hearts heels is "Queen of Hearts Playing Card". There is 1 recipe for queen of hearts heels. The text-shortcut of recipe for queen of hearts heels is "rqh".

To decide which number is the recipe key of (C - a recipe for queen of hearts heels):
	decide on 17.


Recipe for living belt of sturdiness is a kind of recipe. The printed name of recipe for living belt of sturdiness is "[TQlink of item described]recipe for living belt of sturdiness[shortcut-desc][TQxlink of item described][verb-desc of item described]". [The description of recipe for living belt of sturdiness is "Metal Disc, Living Plant, Silver Liquid".]  There is 1 recipe for living belt of sturdiness. The text-shortcut of recipe for living belt of sturdiness is "rlb".

To decide which number is the recipe key of (C - a recipe for living belt of sturdiness):
	decide on 19.
Definition: a recipe for living belt of sturdiness (called R) is appropriate:
	if diaper quest is 1, decide no;
	decide yes.

Recipe for cum dump's undergarment is a kind of recipe. The printed name of recipe for cum dump's undergarment is "[TQlink of item described]recipe for [if diaper quest is 1]diaper cover[otherwise]unholy cum dump's undergarment[end if][shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of recipe for cum dump's undergarment is "The recipe just says '[if diaper quest is 1]Pee-soaked underwear'[otherwise]Cumsoaked or crotchless underwear'[end if].". There is 1 recipe for cum dump's undergarment. Understand "unholy", "diaper cover", "cover" as recipe for cum dump's undergarment. The text-shortcut of recipe for cum dump's undergarment is "rcd".

To decide which number is the recipe key of (C - a recipe for cum dump's undergarment):
	decide on 18.

Recipe for tincture of strength is a kind of recipe. The printed name of recipe for tincture of strength is "[TQlink of item described]recipe for tincture of strength[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for tincture of strength. The text-shortcut of recipe for tincture of strength is "rts".

To decide which number is the recipe key of (C - a recipe for tincture of strength):
	decide on 1.

[Recipe for tincture of grace is a kind of recipe. The printed name of recipe for tincture of grace is "[TQlink of item described]recipe for tincture of grace[shortcut-desc][roman type]". The description of recipe for tincture of grace is "Latex Fetishwear, Potion of Speed". There is 1 recipe for tincture of grace.]

Recipe for tincture of acceleration is a kind of recipe. The printed name of recipe for tincture of acceleration is "[TQlink of item described]recipe for tincture of acceleration[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for tincture of acceleration. The text-shortcut of recipe for tincture of acceleration is "rta".

To decide which number is the recipe key of (C - a recipe for tincture of acceleration):
	decide on 2.

Recipe for elixir of magnetism is a kind of recipe. The printed name of recipe for elixir of magnetism is "[TQlink of item described]recipe for elixir of magnetism[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for elixir of magnetism. The text-shortcut of recipe for elixir of magnetism is "rem".

To decide which number is the recipe key of (C - a recipe for elixir of magnetism):
	decide on 3.

Recipe for elixir of life is a kind of recipe. The printed name of recipe for elixir of life is "[TQlink of item described]recipe for elixir of life[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for elixir of life. The text-shortcut of recipe for elixir of life is "rel".

Definition: a recipe for elixir of life (called R) is appropriate:
	if pregnancy fetish is 0, decide no;
	if the player is male and tg fetish is 0, decide no;
	decide yes.

To decide which number is the recipe key of (C - a recipe for elixir of life):
	decide on 4.

Recipe for elixir of invigoration is a kind of recipe. The printed name of recipe for elixir of invigoration is "[TQlink of item described]recipe for elixir of invigoration[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for elixir of invigoration. The text-shortcut of recipe for elixir of invigoration is "rei".
Definition: a recipe for elixir of invigoration (called R) is appropriate:
	if diaper quest is 1, decide no;
	decide yes.
To decide which number is the recipe key of (C - a recipe for elixir of invigoration):
	decide on 5.

Recipe for salve of buoyancy is a kind of recipe. The printed name of recipe for salve of buoyancy is "[TQlink of item described]recipe for salve of buoyancy[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for salve of buoyancy. The text-shortcut of recipe for salve of buoyancy is "rsb".
Definition: a recipe for salve of buoyancy (called R) is appropriate:
	if diaper quest is 1, decide no;
	decide yes.

To decide which number is the recipe key of (C - a recipe for salve of buoyancy):
	decide on 9.

Recipe for salve of restriction is a kind of recipe. The printed name of recipe for salve of restriction is "[TQlink of item described]recipe for salve of restriction[shortcut-desc][TQxlink of item described][verb-desc of item described]". [The description of recipe for salve of restriction is "Royal Emblem, Bronze Liquid".]  There is 1 recipe for salve of restriction.

To decide which number is the recipe key of (C - a recipe for salve of restriction):
	decide on 10.
Definition: a recipe for salve of restriction (called R) is appropriate:
	if diaper quest is 1, decide no;
	decide yes.

[Recipe for salve of protection is a kind of recipe. The printed name of recipe for salve of protection is "[TQlink of item described]recipe for salve of protection[roman type]". The description of recipe for salve of protection is "Solid Metal Disc, Potion of Virility". There is 1 recipe for salve of protection.]

Recipe for salve of concealment is a kind of recipe. The printed name of recipe for salve of concealment is "[TQlink of item described]recipe for salve of concealment[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for salve of concealment. The text-shortcut of recipe for salve of concealment is "rsc".
Definition: a recipe for salve of concealment (called R) is appropriate:
	if diaper quest is 1, decide no;
	decide yes.

To decide which number is the recipe key of (C - a recipe for salve of concealment):
	decide on 11.
Definition: a recipe for salve of concealment (called R) is appropriate:
	if diaper quest is 1, decide no;
	decide yes.

Recipe for potion of balance is a kind of recipe. The printed name of recipe for potion of balance is "[TQlink of item described]recipe for potion of balance[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for potion of balance. The text-shortcut of recipe for potion of balance is "rpb".
To decide which number is the recipe key of (C - a recipe for potion of balance):
	decide on 6.


Recipe for potion of the womb is a kind of recipe. The printed name of recipe for potion of the womb is "[TQlink of item described]recipe for potion of the womb[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for potion of the womb. The text-shortcut of recipe for potion of the womb is "rpw".
Definition: a recipe for potion of the womb (called R) is appropriate:
	if pregnancy fetish is 0, decide no;
	if the player is male and tg fetish is 0, decide no;
	decide yes.

To decide which number is the recipe key of (C - a recipe for potion of the womb):
	decide on 7.


Recipe for electric fan is a kind of recipe. The printed name of recipe for electric fan is "[TQlink of item described]recipe for electric fan[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for electric fan. The text-shortcut of recipe for electric fan is "ref".

To decide which number is the recipe key of (C - a recipe for electric fan):
	decide on 21.

Recipe for potion of bull strength is a kind of recipe. The printed name of recipe for potion of bull strength is "[TQlink of item described]recipe for potion of bull strength[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of recipe for potion of bull strength is "This recipe says 'horn Filled With Milk Matured In Your Belly'.". There is 1 recipe for potion of bull strength. The text-shortcut of recipe for potion of bull strength is "rps".
Definition: a recipe for potion of bull strength (called R) is appropriate:
	if weight gain fetish is 0 or lactation fetish is 0, decide no;
	decide yes.

To decide which number is the recipe key of (C - a recipe for potion of bull strength):
	decide on 12.

Recipe for potion of blessing is a kind of recipe. The printed name of recipe for potion of blessing is "[TQlink of item described]recipe for potion of blessing[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for potion of blessing. The text-shortcut of recipe for potion of blessing is "rpl".

To decide which number is the recipe key of (C - a recipe for potion of blessing):
	decide on 8.

Recipe for latex hood is a kind of recipe. The printed name of recipe for latex hood is "[TQlink of item described]recipe for latex hood[shortcut-desc][TQxlink of item described][verb-desc of item described]". The description of recipe for latex hood is "The recipe just says 'Rubber Headwear'.". There is 1 recipe for latex hood. The text-shortcut of recipe for latex hood is "rlh".

To decide which number is the recipe key of (C - a recipe for latex hood):
	decide on 20.

Definition: a recipe for latex hood (called R) is appropriate:
	if roleplay fetish is 1 or diaper quest is 1, decide no;
	decide yes.

Recipe for notebook is a kind of recipe. The printed name of recipe for notebook is "[TQlink of item described]recipe for notebook[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for notebook. The text-shortcut of recipe for notebook is "rsg".
The description of recipe for notebook is "This recipe says 'Place a book into the bowl'.".
Definition: a recipe for notebook (called R) is appropriate:
	decide yes.

To decide which number is the recipe key of (R - a recipe for notebook):
	decide on 22.


[Recipe for potion of defiance is a kind of recipe. The printed name of recipe for potion of defiance is "[TQlink of item described]recipe for potion of defiance[roman type]". The description of recipe for potion of defiance is "Royal Crest, Scarlet Liquid". There is 1 recipe for potion of defiance.]

Recipe for codpiece is a kind of recipe. The printed name of recipe for codpiece is "[TQlink of item described]recipe for codpiece[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for codpiece. The text-shortcut of recipe for codpiece is "rfc".
Definition: a recipe for codpiece (called R) is appropriate:
	decide no; [temporary]
	if the player is male, decide yes;
	decide no.


Recipe for powder of identification is a kind of recipe. The printed name of recipe for powder of identification is "[TQlink of item described]recipe for powder of identification[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for powder of identification. The text-shortcut of recipe for powder of identification is "rpi".
Definition: a recipe for powder of identification (called R) is appropriate:
	decide yes.

To decide which number is the recipe key of (R - a recipe for powder of identification):
	decide on 24.

Recipe for powder of enhancement is a kind of recipe. The printed name of recipe for powder of enhancement is "[TQlink of item described]recipe for powder of enhancement[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for powder of enhancement. The text-shortcut of recipe for powder of enhancement is "rpe".
Definition: a recipe for powder of enhancement (called R) is appropriate:
	decide yes.

To decide which number is the recipe key of (R - a recipe for powder of enhancement):
	decide on 25.

Recipe for powder of resistance is a kind of recipe. The printed name of recipe for powder of resistance is "[TQlink of item described]recipe for powder of resistance[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for powder of resistance. The text-shortcut of recipe for powder of resistance is "rpr".
Definition: a recipe for powder of resistance (called R) is appropriate:
	decide yes.

To decide which number is the recipe key of (R - a recipe for powder of resistance):
	decide on 26.

Recipe for powder of escape is a kind of recipe. The printed name of recipe for powder of escape is "[TQlink of item described]recipe for powder of escape[shortcut-desc][TQxlink of item described][verb-desc of item described]". There is 1 recipe for powder of escape. The text-shortcut of recipe for powder of escape is "rpx".
Definition: a recipe for powder of escape (called R) is appropriate:
	decide yes.

To decide which number is the recipe key of (R - a recipe for powder of escape):
	decide on 27.



Recipes ends here.

