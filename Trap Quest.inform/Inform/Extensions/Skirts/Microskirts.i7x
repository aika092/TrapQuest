Microskirts by Skirts begins here.

A microskirt is a kind of skirt.  A microskirt is usually super-short. The soak-limit of  microskirt is usually 10.  A microskirt is usually unique.

Understand "micro" or "skirt" as the microskirt.

A red microskirt is a kind of microskirt.  There is 1 latex red microskirt.  Printed name of red microskirt is "[TQlink of item described][clothing-title-before]red latex microskirt[clothing-title-after][TQxlink of item described][verb-desc of item described]".  Figure of red microskirt is the file "microskirt1.png".  The text-shortcut of red microskirt is "rms".
A white microskirt is a kind of microskirt.  There is 1 latex white microskirt.  Printed name of white microskirt is "[TQlink of item described][clothing-title-before]white latex microskirt[clothing-title-after][TQxlink of item described][verb-desc of item described]".  Figure of white microskirt is the file "microskirt5.png".  The text-shortcut of white microskirt is "wms".
A tartan microskirt is a kind of microskirt.  There is 1 tartan microskirt.  Printed name of tartan microskirt is "[TQlink of item described][clothing-title-before]tartan microskirt[clothing-title-after][TQxlink of item described][verb-desc of item described]".   The text-shortcut of tartan microskirt is "tms".  Figure of tartan microskirt is the file "microskirt2.png".
Definition: a tartan microskirt (called C) is untransformable:
	if the player is a schoolgirl, decide yes;
	decide no.
A pink microskirt is a kind of microskirt.  There is 1 pink microskirt.  Printed name of pink microskirt is "[TQlink of item described][clothing-title-before]pink microskirt[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of pink microskirt is "pms".  Figure of pink microskirt is the file "microskirt3.png".
A black sporty microskirt is a kind of microskirt.  A black sporty microskirt is usually plentiful.  There is 1 black sporty microskirt.  A black sporty microskirt is usually nylon.  Printed name of black sporty microskirt is "[TQlink of item described][clothing-title-before]black sporty microskirt[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of black sporty microskirt is "bms".  Figure of black sporty microskirt is the file "microskirt4.png".
A babydoll microskirt is a kind of microskirt.  A babydoll microskirt is usually plentiful.  There is 1 unique babydoll microskirt.  A babydoll microskirt is usually mesh.  A babydoll microskirt is sheer.  The printed name of babydoll microskirt is "[TQlink of item described][clothing-title-before]babydoll microskirt[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of babydoll microskirt is "bdm".  Figure of babydoll microskirt is the file "microskirt6.png".
Definition: a babydoll microskirt (called C) is sissifying:
	decide yes.

To decide which figure-name is clothing-image of (C - a red microskirt):
	decide on figure of red microskirt.
To say ClothingDesc of (C - a red microskirt):
	say "This red latex skirt is only crotch high.  [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a white microskirt):
	decide on figure of white microskirt.
To say ClothingDesc of (C - a white microskirt):
	say "This white latex skirt is only crotch high.  [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a tartan microskirt):
	decide on figure of tartan microskirt.
To say ClothingDesc of (C - a tartan microskirt):
	say "This tartan skirt is only crotch high.  [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a pink microskirt):
	decide on figure of pink microskirt.
To say ClothingDesc of (C - a pink microskirt):
	say "This pink skirt is only crotch high.  [one of]Really, it should be called a belt.[or]Only the sluttiest of girls would wear this, especially without anything else underneath.[or]It conceals absolutely nothing![at random]".
To decide which figure-name is clothing-image of (C - a black sporty microskirt):
	decide on figure of black sporty microskirt.
To say ClothingDesc of (C - a black sporty microskirt):
	say "This black lycra skirt is only crotch high.  It has pink stripes which make it appear sporty.".
To decide which figure-name is clothing-image of (C - a babydoll microskirt):
	decide on figure of babydoll microskirt.
To say ClothingDesc of (C - a babydoll microskirt):
	say "This pink frilly skirt is extremely delicate and sheer.  But that doesn't even matter because it is only crotch high!".

To decide which number is the dexterity-influence of (C - a black sporty microskirt):
	decide on 2 + the magic-modifier of C.

To set up influence of (C - a microskirt):
	set up stat-based influence of C.

To compute SelfExamineDesc of (Y - a  microskirt):
	if the player is prone:
		say "You are sporting a tiny [ShortDesc of Y] around your waist that completely fails to cover your ass or crotch, especially while you are on your knees with your ass in the air.   ";
	otherwise:
		say "You are sporting a tiny [ShortDesc of Y] around your waist that almost completely fails to cover your ass, even though you're standing up straight.   ".

To say ShortDesc of (Y - a  microskirt):
	say "tiny [clothing-material of Y] microskirt".
To say ShortDesc of (Y - a  black sporty microskirt):
	say "tiny black lycra microskirt".

To decide which number is the initial outrage of (C - a microskirt):
	decide on 9.

Definition: a microskirt (called C) is end of transformation chain:
	decide yes.


Microskirts ends here.
