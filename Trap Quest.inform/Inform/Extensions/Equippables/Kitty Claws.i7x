Kitty Claws by Equippables begins here.

A kitty claws is a kind of gloves. A kitty claws is usually unique. A kitty claws is usually wool. There is 1 kitty claws. The printed name of kitty claws is "[TQlink of item described][item style][unless magic-curse of the item described is bland or curse-ID of the item described is unsure][magic-curse] [end if][raw-magic-modifier-desc]pair of kitty claws[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of kitty claws is "kc". Figure of kitty claws 1 is the file "Items\Accessories\Equippables\kittyclaws1.png". Figure of kitty claws 2 is the file "Items\Accessories\Equippables\kittyclaws2.png". Understand "paws" as kitty claws.

To decide which figure-name is clothing-image of (C - a kitty claws):
	if C is cursed, decide on figure of kitty claws 1;
	otherwise decide on figure of kitty claws 2.

To say ClothingDesc of (W - a kitty claws):
	say "A pair of giant fluffy cosplay cat paws. You lose some manual dexterity from wearing them, [if W is cursed]and some slapping power[otherwise]but the claws make your slaps much more powerful[end if].";
	if the class of the player is catgirl and W is worn, say "You feel [if the number of worn nudism-disabling clothing < 4]excellent[otherwise if the number of worn nudism-disabling clothing < 7]better[otherwise]worse[end if] at running away from monsters whilst on your knees.".
To say ShortDesc of (W - a kitty claws):
	say "cosplay cat paws".

This is the kitty claws prevent manual dexterity rule:
	if there are worn kitty claws:
		if manual hands attempt is 1, say "Your kitty claws mean you don't have the manual dexterity to do that.";
		rule fails.
The kitty claws prevent manual dexterity rule is listed in the manual dexterity restriction rules.

To decide which number is the initial outrage of (C - a kitty claws):
	decide on 2.
To decide which number is the initial cringe of (C - a kitty claws):
	decide on 5.

To decide which number is the damage improvement of (W - a kitty claws):
	let X be 3;
	if W is cursed, decrease X by 4;
	increase X by the magic-modifier of W;
	decide on X.

To compute attack of (W - a kitty claws) at (M - a monster):
	if W is cursed, say "You [if the bimbo of the player < 10][one of]weakly[or]pathetically[or]timidly[at random][otherwise][one of]playfully[or]meekly[or]softly[at random][end if] slap at [NameDesc of M] with your [printed name of W]!";
	otherwise say "[one of]You slash at [NameDesc of M] with your cat claws.[or]You scratch [NameDesc of M] with your sharp claws.[or]You meow as you swipe at [NameDesc of M] with your kitty claws.[or]You hiss as you slice [NameDesc of M] with your claws.[at random]".

To say CurseCurseFlav of (B - a kitty claws):
	if B is held, say "The claws of your [printed name of B] retract back into the fabric.".
	
To say BlessBlandFlav of (B - a kitty claws):
	if B is held, say "Claws spring out of your [printed name of B]!".

Definition: a kitty claws (called C) is cat themed:
	decide yes.


Kitty Claws ends here.

