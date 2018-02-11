Undies by Knickers begins here.

undies is a kind of knickers.

Definition: a undies is displacable:
	decide yes.
	
To say UniqueClothingDesc of (U - an undies):
	say "A [selfexaminetitle of U]. ".

To say selfexaminetitle of (U - an undies):
	say "pair of undies".

To decide which number is the initial outrage of (C - a undies):
	if the armour of C < 7, decide on 7 - the armour of C;
	decide on 0.

An undies has a number called shape-charge.
	
To compute periodic effect of (P - an undies):
	if P is cursed:
		increase the shape-charge of P by 1;
		if the shape-charge of P > 45:
			now the shape-charge of P is 0;
			if the thickness of hips < max ass size and a random number between 1 and 2 is 1:
				say "You feel your [printed name of P] try to grow your hips to make your buttocks even less concealed!";
				HipUp 1;
			otherwise if the size of penis > min penis size:
				PenisDown 1;
				say "You feel your [printed name of P] [Shrink] your manhood to better conceal your [ShortDesc of penis]!".

Definition: an undies (called C) is potentially penis covering:[doesn't check for density]
	unless C is pussy covering clothing, decide no;
	if C is crotch-displaced, decide no;
	if there is a worn chastity cage, decide yes;
	if the size of penis > the armour of C, decide no; [unbound penises can poke out of small undies]
	decide yes.

Definition: an undies (called C) is actually penis covering:
	unless C is potentially penis covering clothing, decide no;
	if C is actually dense, decide yes;
	decide no.

Report wearing undies:
	if the armour of the noun < the size of penis:
		say "Your [ShortDesc of penis] can't even fit inside this tiny piece of fabric!".
	
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
	now green-briefs is in Holding Pen;
	repeat with B running through pink panties:
		now B is in Holding Pen;
	repeat with B running through black sucking cocks panties:
		now B is in Holding Pen;
	repeat with B running through pale panties:
		now B is in Holding Pen;
	repeat with B running through green panties:
		now B is in Holding Pen.
The remove inappropriate undies rule is listed in the diaper quest fix rules.


Undies ends here.

