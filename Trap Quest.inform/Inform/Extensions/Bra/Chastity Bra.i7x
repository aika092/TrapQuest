Chastity Bra by Bra begins here.

A chastity bra is a kind of bra.  Figure of metal bra is the file "metalbra1.png".  A chastity bra is usually metal.

There is 1 chastity bra.  The text-shortcut of chastity bra is "cbr".

The min size of a chastity bra is usually 4.  The max size of a chastity bra is usually 8.  The support of a chastity bra is usually -4.

To say ShortDesc of (B - a chastity bra):
	say "chastity bra".

To say selfexaminetitle of (B - a chastity bra):
	say "shiny metal chastity bra".

To decide which figure-name is clothing-image of (C - a chastity bra):
	decide on figure of metal bra.

To say ClothingDesc of (C - a chastity bra):
	say "A heavy, shiny silver [printed name of C], which has very strong restraints to prevent excessive breast growth.";

To decide which number is the initial outrage of (C - a chastity bra):
	decide on 4.

To compute bra strain of (B - a chastity bra):
	while the size of B < the largeness of breasts + the leniency of B and the largeness of breasts > 1:
		if the air volume of breasts > 0:
			decrease the air volume of breasts by 1;
		otherwise if the milk volume of breasts > the flesh volume of breasts:
			decrease the milk volume of breasts by 1;
		otherwise if the flesh volume of breasts > 0:
			decrease the flesh volume of breasts by 1;
		otherwise:
			decrease the silicone volume of breasts by 1;
	say "[one of]You can feel your [printed name of B] preventing your [BreastDesc] from growing any further.[or][then purely at random]".

To decide which object is the potential-upgrade-target of (C - a chastity bra):
	decide on a random off-stage sheer bra.


Chastity Bra ends here.
