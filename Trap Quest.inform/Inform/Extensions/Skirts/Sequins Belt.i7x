Sequins Belt by Skirts begins here.

A sequins belt is a kind of skirt. A sequins belt is usually sheer. A sequins belt is usually super-short. Figure of sequins belt is the file "belt1.png". There is 1 unique metal sequins belt. The printed name of sequins belt is usually "[TQlink of item described][clothing-title-before]sequins belt[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of sequins belt is "seq".

To decide which figure-name is clothing-image of (C - a sequins belt):
	decide on figure of sequins belt.

To say ClothingDesc of (C - a sequins belt):
	say "This belt is made of several strands of sequins that hang freely in front of your crotch, held around your waist by a small black strap. It would appear to be completely pointless except for possibly providing the tiniest amount of modesty.".

To compute SelfExamineDesc of (Y - a sequins belt):
	say "Several strands of sequins hang in front of your crotch. ".

To say ShortDesc of (Y - a sequins belt):
	say "sequins belt".

To decide which number is the initial outrage of (C - a sequins belt):
	decide on 10.

To decide which number is the bartering value of (T - a sequins belt) for (M - a gladiator):
	decide on 2.

To set up influence of (C - a sequins belt):
	set up stat-based influence of C.

To decide which object is the potential-upgrade-target of (C - a sequins belt):
	let S be a random off-stage sequins outfit;
	if the number of worn overdress + the number of worn bottom-exclusive corsets + the number of worn bottom-exclusive bras + the number of worn bottom-exclusive knickers is 0, decide on S;
	decide on nothing.

To transform (D - a sequins belt) into (C - a sequins outfit):
	say "Your [D] transforms into ";
	silently transform D into C;
	say "a [C] in front of your eyes!  ";
	say "[TransformReaction of C]".

Sequins Belt ends here.

