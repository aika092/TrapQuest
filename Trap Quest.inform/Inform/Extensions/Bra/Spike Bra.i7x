Spike Bra by Bra begins here.

A spike bra is a kind of bra. Figure of spike bra 1 is the file "Items/Clothes/Upper/Bras/spikebra1.png". Figure of spike bra 2 is the file "Items/Clothes/Upper/Bras/spikebra2.png". A spike bra is usually spikey. The min size of a spike bra is usually 2. The max size of a spike bra is usually 15. The support of a spike bra is usually 3. A spike bra is low cut. A spike bra is usually pvc.

A pink spike bra is a kind of spike bra. A pink spike bra is usually cotton. The soak-limit of a pink spike bra is usually 18.

There is 1 unique spike bra. There is 1 unique pink spike bra. The text-shortcut of spike bra is "spb".

To say ShortDesc of (B - a spike bra):
	say "spike bra".

To say selfexaminetitle of (B - a spike bra):
	say "spiked bra".


To decide which figure-name is clothing-image of (C - a spike bra):
	decide on figure of spike bra 2.

To say ClothingDesc of (C - a spike bra):
	say "A bra made out of black straps with spikes facing outwards. It exposes a lot of breast flesh but covers the nipples and looks very dominant and intimidating.".

To decide which figure-name is clothing-image of (C - a pink spike bra):
	decide on figure of spike bra 1.

To say ClothingDesc of (C - a pink spike bra):
	say "A lavender coloured bra with innocent looking flowers above dangerous looking spikes.".

Definition: a pink spike bra is flower themed: decide yes.
Definition: a pink spike bra is pink themed: decide yes.
Definition: a pink spike bra is black themed: decide no.

To decide which object is the unique-upgrade-target of (C - a pink spike bra):
	decide on a random off-stage spike bra.

Definition: a spike bra is black themed: decide yes.
Definition: a spike bra is disintegration-protected: decide yes.
Definition: a spike bra is uncovered themed: decide yes.
Definition: a spike bra is product: decide yes.

To decide which number is the alchemy key of (C - a spike bra):
	decide on 14.

Definition: a spike bra is recipe specific: decide yes.

This is the spike bra specific recipe rule:
	now the Product in row 26 of the Table of Alchemy is 14;
	now the Recipe in row 26 of the Table of Alchemy is 1;
	if egg laying fetish is 1:
		now the Product in row 49 of the Table of Alchemy is 14;
		now the Recipe in row 49 of the Table of Alchemy is 1;
		now the Product in row 24 of the Table of Alchemy is 14;
		now the Recipe in row 24 of the Table of Alchemy is 1;
		now the Product in row 25 of the Table of Alchemy is 14;
		now the Recipe in row 25 of the Table of Alchemy is 1.
The spike bra specific recipe rule is listed in the specific recipe rules.

To compute recipe specific cursing of (T - a spike bra):
	now the size of T is the largeness of breasts + 1;
	if the player is top heavy, now the size of T is the largeness of breasts;
	if the size of T > 15, now the size of T is 15;
	if the size of T < 2, now the size of T is 2;
	now T is bland;
	now the raw-magic-modifier of T is 0;
	if the noun is bra:
		if the noun is fully exposing:
			now the raw-magic-modifier of T is 1;
		otherwise if diaper quest is 1:
			if the noun is training bra or the noun is sissifying:
				now T is cursed;
				now T is respiration;
				now the raw-magic-modifier of T is -2;
		otherwise if the noun is nipple covering:
			now T is cursed;
			now T is temptation;
			now the raw-magic-modifier of T is -2;
	otherwise if the noun is not egg:
		now the raw-magic-modifier of T is -2;
		now T is cursed.

To compute periodic effect of (B - a spike bra):
	BraGrow B;
	if B is blessed and a random number between 1 and (250 - (the magic-modifier of B * 25)) is 1:
		say "You look down at your [printed name of B] and feel more confident about yourself.";
		Dignify 200.

To decide which number is the initial outrage of (C - a spike bra):
	decide on 5.

To decide which number is the initial outrage of (C - a pink spike bra):
	decide on 1.

To decide which number is the bimbo-influence of (C - a spike bra):
	let B be -1;
	if C is cursed, increase B by 1;
	if C is blessed, decrease B by 1;
	decide on B.

To decide which number is the bartering value of (T - a spike bra) for (M - a gladiator):
	decide on 4.


Spike Bra ends here.
