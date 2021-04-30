Undies by Knickers begins here.

undies is a kind of knickers.

The DQFigure of undies is usually DQWhitePants.

Definition: an undies is displacable: decide yes.
Definition: an undies is same-type:
	if theme-share-target is undies, decide yes;
	decide no.

To say UniqueClothingDesc of (U - an undies):
	say "A [selfexaminetitle of U]. ".

To say MediumDesc of (U - an undies):
	say selfexaminetitle of U.
To say selfexaminetitle of (U - an undies):
	say "pair of undies".

To decide which number is the core outrage of (C - an undies): [This is plugged into both outrage and cringe]
	if C is crotch-exposing, decide on 15;
	let O be 13 - the penis-capacity of C;
	if O < 11 and C is actually sheer, decide on 11; [Sheer undies? Very lewd!]
	if O < 6, decide on 6; [It's always a bit outrageous to have your underwear on display]
	decide on O.

Report wearing undies:
	if the noun is cursed and diaper quest is 0:
		if the thickness of hips < max hip size and a random number between 1 and 2 is 1:
			say "You feel [NameDesc of the noun] try to grow your hips to make your buttocks even less concealed!";
			HipUp 1;
		otherwise if the noun is not potentially penis covering and the size of penis > min penis size:
			say "You feel [NameDesc of the noun] try to shrink your [ShortDesc of penis] to make it better able to conceal it!";
			PenisDown 1;

To decide which object is the unique-upgrade-target of (C - an undies):
	if diaper quest is 1 and there is a worn demonic wearthing and tongue-panties is off-stage, decide on tongue-panties;
	decide on nothing.

This is the remove inappropriate undies rule:
	repeat with B running through g-strings:
		now B is in Holding Pen;
	repeat with B running through thongs:
		now B is in Holding Pen;
	now pink briefs is in Holding Pen;
	now red briefs is in Holding Pen;
	now black briefs is in Holding Pen;
	now green-briefs is in Holding Pen;
	now grey-briefs is in Holding Pen;
	now pale blue-briefs is in Holding Pen;
	now grey-hi-cut briefs is in Holding Pen;
	now blue-polka-dot briefs is in Holding Pen;
	now red-anal-briefs is in Holding Pen;
	now pink-panties is in Holding Pen;
	now black-sucking-cocks-panties is in Holding Pen;
	now pale-panties is in Holding Pen;
	now green-panties is in Holding Pen.
The remove inappropriate undies rule is listed in the diaper quest fix rules.

Undies ends here.
