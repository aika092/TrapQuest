Drinks Framework by Drinks begins here.



	
[
Magic Types:
1: Potion of dignity
2: Potion of patience
3: Energy drink
4: Potion of weight loss
5: Potion of virility
6: Potion of lucidity
7: Potion of brilliance
20: Semen
21: Urine
22: Milk
23: Unholy mix of above
All others: curse
]

To say FillName (N - a number):
	if N is 0, say "nothing right now";
	if N is 1, say "a potion of dignity";
	if N is 2, say "a potion of patience";
	if N is 3, say "an energy drink";
	if N is 4, say "a potion of [if diaper quest is 1]control[otherwise]weight loss[end if]";
	if N is 5, say "a potion of virility";
	if N is 6, say "a potion of lucidity";
	if N is 7, say "a potion of brilliance";
	if N >= lowest-cursed and N <= highest-cursed, say "a cursed drink";
	if N is 20, say "[semen]";
	if N is 21, say "[urine]";
	if N is 22, say "milk";
	if N is 23, say "an unholy mix of bodily fluids".

To decide which number is lowest-cursed:
	decide on 8.

To decide which number is highest-cursed:
	decide on 15.


[!<tableOfDrinks:Table>*

REQUIRES COMMENTING

*!]
Table of Drinks
Appearance	Magic	Known
silver	0	0
scarlet	0	0
blue	0	0
bronze	0	0
green	0	0
grey	0	0
clear	0	0
indigo	0	0
magenta	0	0
orange	0	0
lime	0	0
brownish	0	0
violet	0	0
glittery	0	0
turquoise	0	0
creamy	20	1
golden	21	1
white	22	1
murky	23	1

[!<ANumberIsRemembered>+

Does the player know what type of drink this is?

+!]
Definition: A number is remembered:
	let Z be the Known corresponding to an Magic of it in the Table of Drinks;
	if Z is 1, decide yes;
	decide no.

[!<magicCurse:MagicCurseEnum>*

REQUIRES COMMENTING

*!]
magic-curse is a kind of value. The magic-curses are bland, blessed, and cursed. 

[!<curseID:CurseIDEnum>*

REQUIRES COMMENTING

*!]
curse-ID is a kind of value. The curse-IDs are sure and unsure. 

[!<Thing>@<SayMagicCurse>+

REQUIRES COMMENTING

+@!]
To say magic curse of (C - a thing):
	if C is bland, say "uncursed";
	otherwise say "[magic-curse of C]".

[!<drinkColour:DrinkColourEnums>*

REQUIRES COMMENTING

*@!]
Drink-Colour is a kind of value. The drink-colours are white, scarlet, blue, golden, green, grey, clear, indigo, magenta, orange, lime, brownish, violet, glittery, turquoise, creamy, silver, bronze, murky.

Understand "milk" as a can when the fill-colour of item described is white and the doses of item described > 0.
Understand "urine", "piss", "pee", "wee" as a bottle when the fill-colour of item described is golden and the doses of item described > 0.
Understand "semen", "cum", "jizz" as a bottle when the fill-colour of item described is creamy and the doses of item described > 0. 
Understand "unholy" as a can when the fill-colour of item described is murky and the doses of item described > 0.

[!<Thing>@<KnownGoodPotion>+

REQUIRES COMMENTING

+@!]
Definition: a thing (called T) is known-good-potion:
	decide no.

[!<Thing>@<KnownCursedPotion>+

REQUIRES COMMENTING

+@!]
Definition: a thing (called T) is known-cursed-potion:
	decide no.

To Scramble Bottles:
	let I be 1;
	while I < highest-cursed + 1:
		let R be a random number from 1 to highest-cursed;
		if Magic in row R of the Table of Drinks is 0:
			now Magic in row R of the Table of Drinks is I;
			if debugmode is 1, say "Effect [I * 1] chosen for [appearance corresponding to an Magic of I in the Table of Drinks][line break]";
			increase I by 1.

To Print Drinks Table:
	repeat with N running from 1 to the number of rows in the Table of Drinks: 
		say "[appearance in row N of Table of Drinks] [Magic in row N of Table of Drinks] [Known in row N of Table of Drinks][line break]" .

Include Bottles by Drinks.
Include Cans by Drinks.
Include Vessels by Drinks.
Include Drink Effects by Drinks.
Include Dispensers by Drinks.

Drinks Framework ends here.

