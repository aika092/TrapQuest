Corsets Framework by Corsets begins here.

A corset is a kind of clothing. The printed name of corset is usually "[clothing-title-before][clothing-material of the item described] corset[clothing-title-after]". The printed plural name of corset is usually "[clothing-title-before][clothing-material of the item described] corsets[clothing-title-after]". The text-shortcut of corset is "co". A corset is usually belly covering. The soak-limit of a corset is usually 14.

Definition: a corset is same-type if theme-share-target is corset.

To compute SelfExamineDesc of (C - a corset):
	say "A tight corset keeps it [if C is constriction and the latex-transformation of the player < 4]painfully [end if]under control. ".

To say ShortDesc of (C - a corset):
	say "corset".

To decide which number is the initial outrage of (C - a corset):
	decide on 2.

To decide which number is the original price of (C - a corset):
	decide on 5.

To set up influence of (C - a corset):
	set up random-based influence of C.

To compute corset strain:
	repeat with C running through corsets worn by the player:
		compute corset strain of C.

To compute corset strain of (C - a corset):
	let F be 17;
	increase F by the magic-modifier of C;
	repeat with X running through worn clothing:
		increase F by the leniency-addition of X;
	let B be the largeness fill of belly;
	if B > F:
		say "Your [printed name of C] rips and bursts under the pressure from your belly! ";
		repeat with D running through worn dresses:
			if a random number between 1 and 5 > 2 and the mid-layer of D > the mid-layer of C:
				say "The [printed name of C] destroys your [printed name of D] with it!";
				destroy D;
		destroy C.

Report examining corsets:
	if newbie tips is 1, say "[one of][item style]Corsets [if the number of worn corsets is 0]would [end if]help keep your belly in control, as large bellies can make movement difficult.[roman type][line break][or][stopping]".

To uniquely set up (C - a corset):
	let R be a random number between 1 and 7;
	if R is 1, now the magic-type of C is confidence;
	if R is 2, now the magic-type of C is endurance;
	if R is 3, now the magic-type of C is posture training;
	if R is 4, now the magic-type of C is constriction;
	if R is 3 or R is 4, curse C.

To restock (C - a corset):
	let B be a random basic loot corset;
	if B is corset, now B is in Standard Item Pen.

This is the setup starting corsets rule:
	let C be a random corset;
	repeat with N running from 1 to 3:
		restock C.
The setup starting corsets rule is listed in the setup starting items rules.

To decide which object is the unique-upgrade-target of (C - a corset):
	if there is worn ballet related clothing, decide on a random off-stage ballet corset.

Definition: a corset is end of transformation chain if it is latex.

This is the remove inappropriate corsets rule:
	repeat with B running through corsets:
		now B is in Holding Pen.
The remove inappropriate corsets rule is listed in the diaper quest fix rules.

Report wearing corset:
	if the noun is cursed, say "The [clothing-material of the noun] seals itself to your skin! This corset must be cursed!".

Report taking off a corset:
	if the largeness of belly > 2, say "As you loosen the straps of the [ShortDesc of the noun] your belly [if the largeness of belly > 5]suddenly shoots outwards[otherwise]rounds out[end if], relieved from the pressure.".



Part - Wearability

corset wearability rules is a rulebook. The wearability rules of corset is usually corset wearability rules.

corset removability rules is a rulebook. The removability rules of corset is usually corset removability rules.

This is the corset already worn rule:
	repeat with O running through worn corsets:
		if summoning is 0 and autowear is false, say "You can't wear that because [if O is wearing-target]you're already wearing it[otherwise]you're already wearing the [ShortDesc of O][end if]!";
		rule fails.
The corset already worn rule is listed in the corset wearability rules.

This is the belly too big for corset rule:
	if the largeness of belly > 5:
		if summoning is 0 and autowear is false, say "You need a flatter belly to get this corset on successfully.";
		rule fails.
The belly too big for corset rule is listed in the corset wearability rules.

This is the bra corset clash rule:
	repeat with B running through worn breast covering corsets:
		if summoning is 0:
			say "You can't wear that over your [ShortDesc of B], [if wearing-target is exclusive]the [ShortDesc of wearing-target] is [bold type]exclusive[roman type]![otherwise if B is exclusive]the [ShortDesc of B] is [bold type]exclusive[roman type]![otherwise]it should go underneath.[end if]";
			rule fails.
The bra corset clash rule is listed in the bra wearability rules.



Corsets Framework ends here.

