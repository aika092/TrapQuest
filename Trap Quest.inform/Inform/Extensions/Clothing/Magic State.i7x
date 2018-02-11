Magic State by Clothing begins here.

Understand the magic-type property as describing a clothing when the item described is identified.
A clothing has a curse-ID. A clothing is usually unsure.
A clothing has a magic-curse. Understand the magic-curse property as describing a clothing when item described is sure. Clothing is usually bland.
Definition: a clothing is uncursed if it is not cursed.
Definition: a clothing is unblessed if it is not blessed.
Definition: a thing (called C) is cursable:
	decide no.
Definition: a clothing (called C) is cursable:
	decide yes.
Definition: an accessory (called C) is cursable:
	if C is plentiful, decide no;
	decide yes.
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
	if B is not blessed, now B is cursed;
	otherwise now B is bland.

To fully curse (B - a thing):
	if B is blessed, curse B;
	curse B;

To fully bless (B - a thing):
	if B is cursed, bless B;
	if B is blessable, bless B.

[Selkie: likewise, here?
Aika: likewise.]
To bless (B - a thing):
	if B is not cursed and B is blessable, now B is blessed;
	otherwise now B is bland.

To decide which number is the magic-modifier of (C - a clothing):
	let R be the raw-magic-modifier of C;
	if C is diaper or C is fluid immune, decide on R;
	decrease R by ((the semen-soak of C + 2) divided by 3);
	decrease R by ((the urine-soak of C + 2) divided by 4);
	decrease R by ((the milk-soak of C + 2) divided by 4);
	if C is cursed, decrease R by 1;
	if C is blessed, increase R by 1;
	decide on R.

To say raw-magic-modifier-desc:
	if magic-ID of the item described is identified and raw-magic-modifier of the item described is not 0:
		say "[if raw-magic-modifier of the item described > 0]+[end if][raw-magic-modifier of the item described] ".


Magic State ends here.

