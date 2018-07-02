Stethoscope by Accessories begins here.

A stethoscope is a kind of neckwear. The printed name of stethoscope is "[TQlink of item described][clothing-title-before]stethoscope[clothing-title-after][TQxlink of item described][verb-desc of item described]".

A stethoscope is unique.

Understand "steth","stetho" as a stethoscope. The text-shortcut of stethoscope is "ste".

To decide which number is the initial outrage of (C - a stethoscope):
	decide on 0.

To say ShortDesc of (C - a stethoscope):
	say "stethoscope".

Report wearing stethoscope:
	say "You put the stethoscope around your neck. You realise you could probably use this to try and detect traps. Maybe even some of those [one of]boxes[or]crates[or]containers[purely at random] you weren't sure about before?".

To decide which number is the intelligence-influence of (C - a stethoscope):
	let I be 2;
	if C is cursed, decrease I by 5;
	increase I by the magic-modifier of C;
	decide on I.

Check taking off a stethoscope:
	if the flat intelligence of the player < the intelligence-influence of the noun + 1, say "As you try to take [the noun] off, you feel consciousness slipping from you. You decide to leave it on..." instead.

[To uniquely set up (C - a stethoscope):
	do nothing. redundant]

Part 1 - Doctor Stethoscope

A doctor stethoscope is a kind of stethoscope. There is 1 doctor stethoscope.

Figure of stethoscope 1 is the file "Items/Accessories/Neck/stethoscope1.png".

To decide which figure-name is clothing-image of (C - a doctor stethoscope):
	decide on figure of stethoscope 1.

To say ClothingDesc of (C - a doctor stethoscope):
	say "You can wear this around your neck. If you do, you will be more reliable when searching crates for traps.".

Definition: a doctor stethoscope (called C) is untransformable:
	if diaper quest is 1, decide yes;
	decide no.

Definition: a doctor stethoscope (called W) is product:
	decide yes.
	
To decide which number is the alchemy key of (W - a doctor stethoscope):
	decide on 16.


Part 2 - Cock Stethoscope

A cock stethoscope is a kind of stethoscope. There is 1 cock stethoscope.

Figure of stethoscope 2 is the file "Items/Accessories/Neck/stethoscope2.png".

To decide which figure-name is clothing-image of (C - a cock stethoscope):
	decide on figure of stethoscope 2.

To decide which number is the initial outrage of (C - a cock stethoscope):
	decide on 9.

To say ClothingDesc of (C - a cock stethoscope):
	say "A normal doctor's stethoscope but with cocks for your ears and at the sensor end. You can wear this around your neck. If you do, you will be more reliable when searching crates for traps.". 



Stethoscope ends here.

