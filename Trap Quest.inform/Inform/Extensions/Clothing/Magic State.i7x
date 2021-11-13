Magic State by Clothing begins here.

Understand the magic-type property as describing a clothing when the item described is identified.
A clothing has a curse-ID. A clothing is usually unsure.
A clothing has a magic-curse. Understand the magic-curse property as describing a clothing when item described is sure. Clothing is usually bland.
Definition: a clothing is uncursed:
	if it is not cursed, decide yes;
	decide no.
Definition: a clothing is unblessed:
	if it is not blessed, decide yes;
	decide no.

Definition: a clothing is alwaysIdentified: [Should never be considered to possibly have a magic state]
	if it is alwaysSure, decide yes;
	decide no.
Definition: a clothing is alwaysSure: [Should never be considered to possibly be blessed or cursed]
	if it is cursable, decide no;
	decide yes.

Definition: a thing is cursable: decide no.
Definition: a bottle is cursable: [TODO: work out why I coded this like this]
	if it is held, decide yes;
	decide no.
Definition: a clothing is cursable: decide yes.

Definition: a thing (called T) is actually cursable:
	if T is not cursable, decide no;
	if T is cursed, decide no;
	decide yes.

[avoids errors if the item is not something that can be cursed]
Definition: a thing (called T) is maybe-cursed:
	if T is bottle or T is collectible or T is clothing or T is alchemy product:
		if T is cursed, decide yes;
	decide no.

[avoids errors if the item is not something that can be blessed]
Definition: a thing (called T) is maybe-blessed:
	if T is bottle or T is collectible or T is clothing or T is alchemy product:
		if T is blessed, decide yes;
	decide no.

[!<AThingIsBlessable>+

Determines whether or not a thing, "T" can be blessed

@param <Thing>:<T> A thing to be blessed
@return <Boolean> returns true if T can be blessed

+!]
Definition: a thing is blessable: decide no.

Definition: a clothing is blessable:
	if it is not blessed and it is potentially blessable, decide yes;
	decide no.

Definition: a clothing (called T) is potentially blessable:
	if T is not cursed and T is not cursable, decide no; [If an item somehow incorrectly becomes cursed, we still want to make it blessable rather than break the game]
	if T is not accessory or T is unique: [non-unique accessories (jewellery) is not applicable]
		if T is worn by the player or T is carried by the player, decide yes;
	decide no.

Definition: a bottle is blessable:
	if it is held and it is not blessed, decide yes;
	decide no.

Definition: an alchemy product is blessable:
	if it is carried and it is not blessed, decide yes;
	decide no.

To blandify (C - a thing):
	do nothing.

To blandify (C - an alchemy product):
	now C is bland.

To blandify (C - a clothing):
	only destroy C; [resets it but also sets it up with random magic state, so we need to do the below]
	now the raw-magic-modifier of C is 0;
	now C is bland;
	now C is blandness.

To blandify and reveal (C - a clothing):
	blandify C;
	now C is sure;
	now C is identified.

[Selkie: Would it be a helpful hint add some flavour text here?
	if B is not blessed:
		say "You feel [one of]a chill from the [B][or]the [B] vibrates for a moment[or]the [B] throbs angrily[or]the [B] chills unpleasantly, momentarily[or]the [B] burns briefly[or]the [B] seems somehow to squirm internally[at random]. ";
		now B is cursed;
	otherwise:
		say "You feel [one of]a coolness from the [B][or]the [B] vibrates for a moment[or]the [B] pulses[at random]. ";
		now B is bland.
	Aika: Maybe if we'd done that 4 years ago. It's too core a function used by a lot of other functions that assume it's going to stay silent.
]
To curse (B - a thing):
	if B is diaper-stack:
		let N be the number of entries in the list of stacked diapers;
		now B is entry N in the list of stacked diapers;
	if B is cursable:
		if B is worn, force clothing-focus redraw; [This forces the clothing window to redraw]
		if B is carried, force inventory-focus redraw; [This forces the inventory window to redraw]
		if B is not blessed:
			say CurseCurseFlav of B;
			now B is cursed;
		otherwise:
			say CurseBlandFlav of B;
			now B is bland.

To fully curse (B - a thing):
	if B is cursable:
		if B is blessed, curse B;
		curse B;

To fully bless (B - a thing):
	if B is cursable:
		if B is cursed, bless B;
		if B is blessable, bless B.

To say CurseCurseFlav of (B - a thing):
	do nothing.

To say CurseBlandFlav of (B - a thing):
	do nothing.

To say BlessBlessFlav of (B - a thing):
	do nothing.

To say BlessBlandFlav of (B - a thing):
	do nothing.

To bless (B - a thing):
	if B is diaper-stack:
		let N be the number of entries in the list of stacked diapers;
		now B is entry N in the list of stacked diapers;
	if B is cursable or B is cursed clothing:
		if B is worn, force clothing-focus redraw; [This forces the clothing window to redraw]
		if B is carried, force inventory-focus redraw; [This forces the inventory window to redraw]
		if B is not cursed and B is blessable:
			say BlessBlessFlav of B;
			now B is blessed;
		otherwise:
			say BlessBlandFlav of B;
			now B is bland.

To silently bless (B - a thing):
	if B is diaper-stack:
		let N be the number of entries in the list of stacked diapers;
		now B is entry N in the list of stacked diapers;
	if B is cursable or B is cursed clothing:
		if B is worn, force clothing-focus redraw; [This forces the clothing window to redraw]
		if B is carried, force inventory-focus redraw; [This forces the inventory window to redraw]
		if B is not cursed and B is blessable:
			now B is blessed;
		otherwise:
			now B is bland.


Definition: a clothing (called C) is positive-magic-enhanceable:
	if C is not magic-enhanceable, decide no;
	if the raw-magic-modifier of C < 0, decide no;
	decide yes.

Definition: a clothing is magic-enhanceable:
	if it is cursable, decide yes;
	decide no.

To decide which number is the magic-modifier of (C - a clothing):
	let R be the raw-magic-modifier of C;
	[if C is diaper or C is fluid immune, decide on R;
	decrease R by ((the semen-soak of C + 2) divided by 3);
	decrease R by ((the urine-soak of C + 2) divided by 4);
	decrease R by ((the milk-soak of C + 2) divided by 4);]
	if C is wet clean swimming themed clothing, increase R by 3;
	if C is cursed, decrease R by 1;
	if C is blessed, increase R by 1;
	decide on R.

To say raw-magic-modifier-desc:
	if magic-ID of the item described is identified and raw-magic-modifier of the item described is not 0:
		say "[if raw-magic-modifier of the item described > 0]+[end if][raw-magic-modifier of the item described] ".

Magic State ends here.
