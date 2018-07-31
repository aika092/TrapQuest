Crafting Table by Objects begins here.

a crafting-table is a kind of thing. a crafting-table is not portable. The printed name of crafting-table is "[TQlink of item described][ShortDesc of item described] with [if the charge of item described <= 0][item style]glowing bowl[roman type][otherwise]dull bowl[end if][TQxlink of item described][shortcut-desc][verb-desc of item described]". The text-shortcut of crafting-table is "crft". Understand "wooden bowl", "bowl", "dull bowl", "with glowing bowl", "glowing", "table" as crafting-table. 

The description of crafting-table is "A [if the charge of item described <= 0]glowing bowl[otherwise]currently dull bowl[end if] sits on a large wooden crafting table.".

To say ShortDesc of (C - a crafting-table):
	say "crafting-table".
crafting-table has a number called charge.
Check taking crafting-table:
	say "You can't lift that!" instead.
Check putting something on crafting-table:
	try crafting the noun instead.
Check inserting something into crafting-table:
	try crafting the noun instead.

Definition: a crafting-table (called C) is ready for alchemy:
	if the charge of C > 0, decide no;
	decide yes.

To reset alchemy charge:
	let C be a random crafting-table in the location of the player;
	reset alchemy charge of C.

To reset alchemy charge of (C - a crafting-table):
	now the charge of C is 325 - (the intelligence of the player * 10);
	if the craftskill of the player is 1, now the charge of C is the charge of C / 4;
	say "The bowl stops glowing[one of] - maybe you will have to wait a while until the magic returns[or][stopping].".



the alchemist's table is a crafting-table. alchemist's table is in Dungeon37.  The text-shortcut of alchemist's table is "at".  The indefinite article of alchemist's table is "an". Understand "alchemy", "alchemists" as alchemist's table.

the science table is a crafting-table. science table is in School28. The text-shortcut of science table is "scit". science table has a number called second charge.
The printed name of science table is "[TQlink of item described][ShortDesc of item described] with [if the charge of science table <= 0 and the second charge of science table <= 0]two glowing bowls[otherwise if the charge of science table <= 0 or the second charge of science table <= 0 ]one glowing bowl[otherwise]two dull bowls[end if][TQxlink of item described][shortcut-desc][verb-desc of item described]".
The description of science table is "[if the charge of science table <= 0 and the second charge of science table <= 0]Two glowing bowls[otherwise if the charge of science table <= 0 or the second charge of science table <= 0 ]One glowing bowl and one currently dull bowl[otherwise]Two currently dull bowls[end if] sit on a large metal crafting-table.".
Definition: a science table (called C) is ready for alchemy:
	if the charge of C > 0 and the second charge of C > 0, decide no;
	decide yes.
To reset alchemy charge of (C - science table):
	if the charge of C <= 0:
		now the charge of C is 325 - (the intelligence of the player * 10);
		if the craftskill of the player is 1, now the charge of C is the charge of C / 4;
		say "The first bowl stops glowing[if the second charge of C <= 0], but the second bowl is still ready for use[end if].";
	otherwise:
		now the second charge of C is 325 - (the intelligence of the player * 10);
		if the craftskill of the player is 1, now the second charge of C is the second charge of C / 4;
		say "The second bowl stops glowing.".

Crafting Table ends here.
