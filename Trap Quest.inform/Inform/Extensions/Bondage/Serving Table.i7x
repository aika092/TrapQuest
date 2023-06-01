Serving Table by Bondage begins here.

serving-bondage is a kind of bondage. The text-shortcut of serving-bondage is "svt".
The clothingFocusPriority of serving-bondage is -2.

Definition: serving-bondage is waitress-enabling: decide yes.

Definition: a serving-bondage is actually summonable: decide no. [Shouldn't be selected randomly as a bondage to summon]

Definition: a serving-bondage is drink themed: decide yes.
To decide which number is the initial outrage of (C - a serving-bondage):
	decide on 4.
Check drinking a waitress vessel when a serving-bondage is worn:
	unless the class of the player is "cafe maid", say "You can't reach it, because you can't raise it higher than the serving table you're wearing!" instead.

To compute periodic effect of (C - a serving-bondage):
	if the number of alive royal guards is 0, follow the spawn initial royal guard rule; [the player can always find a friendly guard to serve drinks]
	if C is serving table and the player is upright:
		say "[bold type]The serving table [one of]tries[or]keeps trying[stopping] to force you back onto your knees as soon as it can![roman type][line break]";
		try kneeling;
	if (cocktail-glass is empty or cocktail-glass is not held) and (champagne-glass is empty or champagne-glass is not held):
		if C is serving table:
			say "[bold type]The [ShortDesc of C] vanishes![roman type][line break]";
			only destroy C;
		otherwise if C is locked or C is wrist locked:
			say "[bold type]The lock holding the chains to your [ShortDesc of C] clicks open, and the ropes holding your wrists behind you vanish![roman type] It looks like you can remove the [ShortDesc of C] when you want to.";
			unlock C;
			now C is wristless.
To compute school periodic effect of (C - a serving-bondage):
	compute periodic effect of C.

serving table is a serving-bondage. serving table is glass. The printed name of serving table is "[clothing-title-before]serving table[clothing-title-after]". The text-shortcut of serving table is "svtb".

Definition: serving table is removable: decide no.

To decide which figure-name is clothing-image of (C - serving table):
	decide on figure of serving table.

Figure of serving table is the file "Items/Accessories/Other/servingtable1.png".

To say ShortDesc of (C - serving table):
	say "serving table".

To say ClothingDesc of (C - serving table):
	say "A heavy glass table clings to your back with magical energy and prevents you from standing up. On the back is your [if there is a held cocktail-glass]cocktail glass[end if][if there is a held cocktail-glass and there is a held champagne-glass] and [end if][if there is a held champagne-glass]champagne glass[end if].".

This is the serving table prevents standing rule:
	if serving table is worn:
		if auto is 0, say "You try to stand up, but your serving table seems to magically prevent you!";
		rule fails.
The serving table prevents standing rule is listed in the ability to stand rules.

serving tray is a serving-bondage. serving tray is leather. The printed name of serving tray is "[clothing-title-before]serving tray[clothing-title-after]".

To decide which figure-name is clothing-image of (C - serving tray):
	decide on figure of serving tray.

Figure of serving tray is the file "Items/Accessories/Other/servingtray1.png".

To say ShortDesc of (C - serving tray):
	say "serving tray".

To say ClothingDesc of (C - serving tray):
	let N be a random worn neckwear;
	if C is worn, say "A black leather serving tray is connected to [if N is neckwear]your [MediumDesc of N][otherwise]a heavy metal collar[end if] by strong metal chains, allowing it to sit in front of your belly button, ready for others to place things on it, or take things from it. On it is your [if there is a held cocktail-glass]cocktail glass[end if][if there is a held cocktail-glass and there is a held champagne-glass] and [end if][if there is a held champagne-glass]champagne glass[end if][if C is wrist-bound-behind]. Your hands are kept behind you by a piece of strong and seemingly magical rope[end if].";
	otherwise say "The black leather serving tray that had been chained to your neck.".

broomstick is a clothing. broomstick is plastic. broomstick is unique. The printed name of broomstick is "[clothing-title-before]broomstick[clothing-title-after]". The text-shortcut of broomstick is "bstk".

To decide which figure-name is clothing-image of (C - broomstick):
	decide on figure of broomstick.

Figure of broomstick is the file "Items/Accessories/Other/broomstick1.jpg".

To say ShortDesc of (C - broomstick):
	say "broomstick".

To say ClothingDesc of (C - broomstick):
	say "This plastic witch's broomstick is permanently fixed to the [chastity-belt]. You need to hold both the buttons - whenever one button is released, the butt plug will release an electric shock. If both buttons are released, the vaginal plug ejaculates fresh [semen].".

To construct unique buttons for (T - broomstick):
	if ButtonTableFull is 0 and the player is in a predicament room:
		choose a blank row in the Table of Buttons;
		now the ButtonImage entry is Figure of ArmBlockIcon;
		now the ButtonCommand entry is "adjust arms";
		now the ButtonColour entry is lightModeFullGreen.


trashcan is an overdress. trashcan is metal. trashcan is unique. The printed name of trashcan is "[clothing-title-before]trashcan[clothing-title-after]". The text-shortcut of trashcan is "tsh".
trashcan is chestless. trashcan is not-top-displacable. trashcan is normally-nipple-exposing. trashcan is unskirted.

trashcan has a number called tissue-fill.

Definition: trashcan is condom pinnable:
	if the tissue-fill of trashcan >= 2, decide yes;
	decide no.
Definition: trashcan is drinkable condom pinned: decide no.
Definition: trashcan is remvoable: decide no.
Definition: trashcan is class-relevant:
	if the class of the player is human toilet or the class of the player is condom collector or the class of the player is latex fetish model, decide yes;
	decide no.
Definition: trashcan is trash-ready:
	if the tissue-fill of trashcan < 2, decide yes;
	if condom fetish >= 2 and the used condoms of trashcan < a random number between 1 and 25, decide yes;
	decide no.

To compute class set up of (C - trashcan):
	now the tissue-fill of trashcan is 2.

To say ClassSummonFlav of (C - trashcan):
	say "A [C] appears strapped around your [body area of C]! [bold type]You can sense that [NameDesc of C] [bold type]cannot be removed other than by changing your class...[roman type][line break]".

To say ShortDesc of (C - trashcan):
	say "trashcan".

To say ClothingDesc of (C - trashcan):
	say "A small metal wastepaper basket that is strapped tightly to your midriff. [bold type]It appears to have some powerful magical effect that is preventing you from unstrapping it, or even touching it, meaning that you can't do anything about anything that anyone drops inside it. [roman type]";
	if diaper quest is 0, say "[if the tissue-fill of trashcan is 0]It is completely empty, so people can see your belly and crotch straight through the mesh frame[otherwise if the tissue-fill of trashcan is 1]It is half-full of discarded [semen]-filled tissues, so people can see your belly straight through the mesh frame, but your crotch is hidden from view[otherwise]It is full of discarded [semen]-filled tissues, which is very humiliating, but is at least hiding your belly and crotch from view[end if].";
	say "[bold type]You can sense that [NameDesc of C] [bold type]cannot be removed other than by changing your class...[roman type][line break]".

To say CondomsPinnedDesc of (C - trashcan):
	if the used condoms of C >= 20, say "[BigNameDesc of C] has an almost countless number of used condoms in it.";
	otherwise say "[BigNameDesc of C] has [if the used condoms of C > 1][used condoms of C] very visible cum-filled condoms discarded on top of the tissues[otherwise if the used condoms of C is 1]a large cum-filled condom very visibly discarded on top of the tissues[end if][if the used condoms of C > 0 and the empty condoms of C > 0], and [end if][if the empty condoms of C > 1][empty condoms of C] used condoms that have been torn and sucked dry[otherwise if the empty condoms of C is 1]one used condom that has been torn and sucked dry[end if].".

To compute periodic effect of (C - trashcan):
	if the tissue-fill of trashcan < 2, now C is see-through;
	otherwise now C is dense;
	if C is not class-relevant:
		say "[BigNameDesc of C] fizzles from existence!";
		destroy C.
To compute school periodic effect of (C - trashcan):
	compute periodic effect of C.

Definition: trashcan is potentially vagina covering:
	if the tissue-fill of trashcan > 0 and the player is upright, decide yes;
	decide no.
Definition: trashcan is potentially penis covering:
	if trashcan is potentially vagina covering, decide yes;
	decide no.
Definition: trashcan is potentially at least partially vagina covering:
	if trashcan is potentially vagina covering, decide yes;
	decide no.
Definition: trashcan is potentially at least partially penis covering:
	if trashcan is potentially at least partially vagina covering, decide yes;
	decide no.

To decide which number is the soak-limit of (C - trashcan):
	decide on the tissue-fill of trashcan * 10.

To decide which number is the initial outrage of (C - trashcan):
	if the tissue-fill of trashcan > 0, decide on 14;
	decide on 3.

Definition: trashcan is acceptableCumRag: decide no.

Serving Table ends here.
