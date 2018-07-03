Rope Harness by Dresses begins here.

A rope harness is a kind of overdress. A rope harness is usually hemp. A rope harness is usually see-through. A rope harness is usually fully exposing. A rope harness is usually belly covering. A rope harness is usually unskirted. There is rope harness. Figure of rope harness is the file "Items/Clothes/Upper/Exposing/ropeharness1.png". The soak-limit of a rope harness is usually 7.  A rope harness has a number called charge.

To decide which number is the original price of (C - a rope harness):
	decide on 5.

To decide which number is the initial outrage of (C - a rope harness):
	decide on 9.
	
The printed name of rope harness is usually "[TQlink of item described][clothing-title-before]rope harness[clothing-title-after][TQxlink of item described][verb-desc of item described]". The text-shortcut of rope harness is "rh".

To decide which figure-name is clothing-image of (C - a rope harness):
	decide on figure of rope harness.

To say ClothingDesc of (C - a rope harness):
	say "[if C is worn]A shibari style rope harness[otherwise]This set of ropes with knots becomes a shibari style rope harness when worn[end if]. It restricts movement but maybe it could be used to train your muscles?".

To compute SelfExamineDesc of (C - a rope harness):
	say "You are wearing a [ShortDesc of C]. ".

To say ShortDesc of (C - a rope harness):
	say "shibari style rope harness".

To decide which number is the dexterity-influence of (C - a rope harness):
	let D be -2;
	increase D by the magic-modifier of C;
	if D < 0, decide on D;
	decide on 0.
	

To compute periodic effect of (C - a rope harness):
	increase the charge of C by 1;
	if the charge of C > (75 * the raw strength of the player):
		now the charge of C is 0;
		say "[bold type]Thanks to wearing the [ShortDesc of C], your muscles have gotten stronger![roman type][line break]";
		StrengthUp 1.
	
Definition: a rope harness (called C) is untransformable:
	decide yes.
	
This is the remove inappropriate rope harnesses rule:
	repeat with B running through rope harness:
		now B is in Holding Pen.
The remove inappropriate rope harnesses rule is listed in the diaper quest fix rules.

Report wearing hemp clothing:
	repeat with B running through worn cursed hemp clothing:
		if the noun is rope harness or B is rope harness:
			if the noun is not B:
				say "The ropes seem to twist around each other and form an even more secure knot. Your [printed name of B] is now linked to your [printed name of the noun]... uh-oh.";
				fully curse the noun;
				fully curse B.


Rope Harness ends here.

