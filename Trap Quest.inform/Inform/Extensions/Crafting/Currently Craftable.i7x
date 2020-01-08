Currently Craftable by Crafting begins here.


[These are the items designated for crafting. Item1 is reserved for the liquid involved in the alchemy.]
craftable-item1 is a object which varies. craftable-item1 is nothing.
craftable-item2 is a object which varies. craftable-item2 is nothing.
craftable-item3 is a object which varies. craftable-item3 is nothing.
craftable-item4 is a object which varies. craftable-item4 is nothing.
craft-target is a object which varies. craft-target is nothing.

[Set items from 'nothing' to the correct item if held by the player. Extra item slots not needed for this recipe are set from 'nothing' to 'the player' so that when checking if a recipe is craftable, we can just check if any of the crafting slots are still 'nothing'.]
To determine items for (R - a recipe):
	do nothing.[recipes should have their own version of this function]
	

['Appropriate' means the player has enabled the right fetishes in order to be allowed to find this recipe.]
Definition: a recipe is appropriate: decide yes.

['Acceptable' means a recipe the player has access to the information of at this moment in time.]
Definition: a recipe (called R) is acceptable:
	if R is memorised or R is in the location of the player or R is carried by the player, decide yes;
	decide no.

['Craftable' means a recipe the player has access to the information and the required materials at this moment in time.]
Definition: a recipe (called R) is craftable:
	if R is not acceptable, decide no;
	now craftable-item1 is nothing;
	now craftable-item2 is nothing;
	now craftable-item3 is nothing;
	now craftable-item4 is nothing;
	determine items for R;
	if craftable-item1 is nothing or craftable-item2 is nothing or craftable-item3 is nothing or craftable-item4 is nothing, decide no;
	decide yes.


To decide which number is craftable-recipes:
	let X be 0;
	repeat with R running through craftable recipes:
		increase X by 1;
	decide on X.


Currently Craftable ends here.

