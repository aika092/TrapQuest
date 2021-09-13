Kitty Claws by Equippables begins here.

kitty claws is a big-gloves. kitty claws is unique. kitty claws is wool. The printed name of kitty claws is "[clothing-title-before]pair of [ShortDesc of item described][clothing-title-after]". The text-shortcut of kitty claws is "kc". Figure of kitty claws 1 is the file "Items/Accessories/Equippables/kittyclaws1.png". Figure of kitty claws 2 is the file "Items/Accessories/Equippables/kittyclaws2.png". Understand "paws" as kitty claws.

Definition: kitty claws is class-relevant:
	if the class of the player is catgirl, decide yes;
	decide no.

To decide which figure-name is clothing-image of (C - kitty claws):
	if C is cursed, decide on figure of kitty claws 1;
	otherwise decide on figure of kitty claws 2.

To say ClothingDesc of (W - kitty claws):
	say "A pair of giant fluffy cosplay cat paws. You lose some manual dexterity from wearing them, [if W is cursed]and some slapping power[otherwise]but the claws make your slaps much more powerful[end if].";
	if the class of the player is catgirl and W is worn, say "You feel [if the number of worn nudism-disabling clothing < 3]excellent[otherwise if the number of worn nudism-disabling clothing < the crawling hindrance of the player]better[otherwise if the number of worn nudism-disabling clothing is the crawling hindrance of the player]no better[otherwise]worse[end if] at running away from monsters whilst on your knees.".
To say ShortDesc of (W - kitty claws):
	say "kitty [if W is cursed]paws[otherwise]claws[end if]".
To say MediumDesc of (W - kitty claws):
	say "cosplay [ShortDesc of W]".

This is the kitty claws prevent manual dexterity rule:
	if kitty claws is worn:
		if manual hands attempt is 1, say "Your [ShortDesc of kitty claws] mean you don't have the manual dexterity to do that.";
		rule fails.
The kitty claws prevent manual dexterity rule is listed in the manual dexterity restriction rules.

To decide which number is the initial outrage of (C - kitty claws):
	decide on 3.
To decide which number is the initial cringe of (C - kitty claws):
	decide on 5.

To decide which number is the slap damage improvement of (W - kitty claws):
	let X be 3;
	if W is cursed, decrease X by 4;
	increase X by the magic-modifier of W;
	decide on X.

To compute attack of (W - kitty claws) at (M - a monster):
	if W is cursed, say "You [if the bimbo of the player < 10][one of]weakly[or]pathetically[or]timidly[at random][otherwise][one of]playfully[or]meekly[or]softly[at random][end if] slap at [NameDesc of M] with your [printed name of W]!";
	otherwise say "[one of]You slash at [NameDesc of M] with your cat claws.[or]You scratch [NameDesc of M] with your sharp claws.[or]You meow as you swipe at [NameDesc of M] with your kitty claws.[or]You hiss as you slice [NameDesc of M] with your claws.[at random]".

To say CurseCurseFlav of (B - kitty claws):
	if B is held, say "The claws of your [printed name of B] retract back into the fabric.".

To say BlessBlandFlav of (B - kitty claws):
	if B is held, say "Claws spring out of your [printed name of B]!".

Definition: kitty claws is cat themed: decide yes.
Definition: kitty claws is black themed: decide yes.
Definition: kitty claws is pink themed:
	if it is cursed, decide yes;
	decide no.

meow cow claws is a big-gloves. meow cow claws is unique. meow cow claws is leather. The printed name of meow cow claws is "[clothing-title-before]pair of [ShortDesc of item described][clothing-title-after]". The text-shortcut of meow cow claws is "mcc".

Figure of meow cow claws is the file "Items/Accessories/Equippables/kittyclaws3.png".

Definition: meow cow claws is class-relevant:
	if the class of the player is cowgirl or the class of the player is catgirl, decide yes;
	decide no.

To decide which figure-name is clothing-image of (C - meow cow claws):
	decide on figure of meow cow claws.

To say ClothingDesc of (W - meow cow claws):
	say "A pair of giant fluffy cosplay cat paws with a cow print. You lose some manual dexterity from wearing them, but the claws make your slaps much more powerful.";
	if the class of the player is catgirl and W is worn, say "You feel [if the number of worn nudism-disabling clothing < 3]excellent[otherwise if the number of worn nudism-disabling clothing < the crawling hindrance of the player]better[otherwise if the number of worn nudism-disabling clothing is the crawling hindrance of the player]no better[otherwise]worse[end if] at running away from monsters whilst on your knees.".
To say ShortDesc of (W - meow cow claws):
	say "meow cow claws".
To say MediumDesc of (W - meow cow claws):
	say ShortDesc of W.

This is the meow cow claws prevent manual dexterity rule:
	if meow cow claws is worn:
		if manual hands attempt is 1, say "Your [ShortDesc of meow cow claws] mean you don't have the manual dexterity to do that.";
		rule fails.
The meow cow claws prevent manual dexterity rule is listed in the manual dexterity restriction rules.

To decide which number is the initial outrage of (C - meow cow claws):
	decide on 3.

To decide which number is the slap damage improvement of (W - meow cow claws):
	decide on 3 + the magic-modifier of W.

To compute attack of (W - meow cow claws) at (M - a monster):
	say "[one of]You slash at [NameDesc of M] with your cat claws.[or]You scratch [NameDesc of M] with your sharp claws.[or]You meow as you swipe at [NameDesc of M] with your meow cow claws.[or]You moo as you slice [NameDesc of M] with your claws.[at random]".

Definition: meow cow claws is cat themed: decide yes.
Definition: meow cow claws is cow themed: decide yes.
Definition: meow cow claws is black themed: decide yes.
Definition: meow cow claws is white themed: decide yes.

Kitty Claws ends here.
