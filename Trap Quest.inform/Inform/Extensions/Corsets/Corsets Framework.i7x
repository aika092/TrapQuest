Corsets Framework by Corsets begins here.

A corset is a kind of clothing. The printed name of a corset is "[clothing-title-before][MediumDesc of item described][clothing-title-after]". The text-shortcut of corset is "co". A corset is belly covering. Understand "corset" as a corset.

Definition: a corset is same-type:
	if theme-share-target is corset, decide yes;
	decide no.

To compute SelfExamineDesc of (C - a corset):
	say "A tight corset keeps it [if C is constriction and the latex-transformation of the player < 4]painfully [end if]under control. ".

To say ShortDesc of (C - a corset):
	say "corset".
To say MediumDesc of (C - a corset):
	say "[clothing-material of C] corset".

To decide which number is the initial outrage of (C - a corset):
	decide on 2.

To set up influence of (C - a corset):
	set up random-based influence of C.

To compute corset strain:
	do nothing.
	[repeat with C running through worn corsets:
		compute corset strain of C.

To compute corset strain of (C - a corset):
	let F be a random number between 17 and 100;
	increase F by the magic-modifier of C;
	repeat with X running through worn clothing:
		increase F by the leniency-addition of X;
	let B be the largeness fill of belly;
	if B > F:
		say "[bold type]Your [printed name of C] [bold type]rips and bursts under the pressure from your belly! [roman type]";
		destroy C.]

Report examining corsets:
	if newbie tips is 1, say "[one of][item style]Corsets [if the number of worn corsets is 0]would [end if]help keep your belly in control, as large bellies can make movement difficult.[roman type][line break][or][stopping]".

To set up magic attribute of (C - a corset):
	let R be a random number between 1 and 9;
	if R is 1, now C is confidence;
	if R is 2, now C is endurance;
	if R is 3, now C is posture training;
	if R is 4, now C is constriction;
	if R is 5, now C is provocation;
	if R is 3 or R is 4, curse C.

To restock (C - a corset):
	let B be a random basic loot corset;
	if B is corset:
		repeat with L running through Standard Item Pen:
			if L is corset, remove L from Standard Item Pen;
		add B to Standard Item Pen.

This is the setup starting corsets rule:
	let C be a random corset;
	restock C.
The setup starting corsets rule is listed in the setup starting items rules.

To decide which object is the unique-upgrade-target of (C - a corset):
	if there is worn ballet related clothing, decide on a random off-stage ballet corset.

Definition: a corset is end of transformation chain:
	if it is latex, decide yes;
	decide no.

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
