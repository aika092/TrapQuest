Puppy Mittens by Equippables begins here.

puppy mittens is a gloves. puppy mittens is unique. puppy mittens is leather. puppy mittens is manly. The printed name of puppy mittens is "[clothing-title-before]pair of puppy mittens[clothing-title-after]". The text-shortcut of puppy mittens is "pm".

Definition: puppy mittens is class-relevant:
	if the class of the player is puppygirl, decide yes;
	decide no.

Figure of puppy mittens is the file "Items/Accessories/Equippables/puppymittens1.png".

To decide which figure-name is clothing-image of (C - puppy mittens):
	decide on figure of puppy mittens.

To say ClothingDesc of (W - puppy mittens):
	say "A pair of black leather bondage mittens with a paw print design on the front. You lose some manual dexterity from wearing them, and some slapping power.";
	if W is worn, say "You feel [if the number of worn nudism-disabling clothing < 3]excellent[otherwise if the number of worn nudism-disabling clothing < 5]better[otherwise]worse[end if] at running away from monsters whilst on your knees[if the number of worn nudism-disabling clothing > 1], and would be better if you removed any of your [list of worn nudism-disabling clothing][otherwise if the number of worn nudism-disabling clothing is 1], and would be better if you removed your [random worn nudism-disabling clothing][end if].".

To say ClassSummonFlav of (W - puppy mittens):
	say "Your hands become encased in tight leather mittens. On closer inspection, these are puppy paws!".

To say ShortDesc of (W - puppy mittens):
	say "puppy mittens".
To say MediumDesc of (W - puppy mittens):
	say "black leather puppy mittens".

Definition: puppy mittens is dog themed: decide yes.
Definition: puppy mittens is black themed: decide yes.

This is the puppy mittens prevent manual dexterity rule:
	if there are worn puppy mittens:
		if manual hands attempt is 1, say "Your puppy mittens mean you don't have the manual dexterity to do that.";
		rule fails.
The puppy mittens prevent manual dexterity rule is listed in the manual dexterity restriction rules.

To decide which number is the initial outrage of (C - puppy mittens):
	decide on 3.

To decide which number is the damage improvement of (W - puppy mittens):
	let X be -2;
	if W is cursed, decrease X by 1;
	if W is blessed, increase X by 1;
	increase X by the magic-modifier of W;
	decide on X.

To compute attack of (W - puppy mittens) at (M - a monster):
	if the damage improvement of W < 0, say "You [if the bimbo of the player < 12][one of]weakly[or]pathetically[or]timidly[at random][otherwise][one of]playfully[or]meekly[or]softly[at random][end if] slap at [NameDesc of M] with your [printed name of W]!";
	otherwise say "You slap at [NameDesc of M] with your puppy paws.".

To compute class set up of (C - puppy mittens):
	now the raw-magic-modifier of C is 1;
	now C is endurance.

Puppy Mittens ends here.
