Rope Harness by Dresses begins here.

rope harness is an overdress. rope harness is hemp. rope harness is see-through. rope harness is fully exposing. rope harness is neck covering. rope harness is unskirted. There is rope harness. Figure of rope harness is the file "Items/Clothes/Upper/Exposing/ropeharness1.png". Figure of rope harness full is the file "Items/Clothes/Upper/Exposing/ropeharness2.png". rope harness has a number called charge.

To decide which number is the initial outrage of (C - rope harness):
	decide on 12.

The printed name of rope harness is "[clothing-title-before]rope harness[clothing-title-after]". The text-shortcut of rope harness is "rh".

To decide which figure-name is clothing-image of (C - rope harness):
	decide on figure of rope harness.
To decide which figure-name is icarus-clothing-image of (C - rope harness):
	decide on figure of rope harness full.

To say ClothingDesc of (C - rope harness):
	say "[if C is worn]A shibari style rope harness[otherwise]This set of ropes with knots becomes a shibari style rope harness when worn[end if]. It restricts movement but maybe it could be used to train your muscles?".

To compute SelfExamineDesc of (C - rope harness):
	say "You are wearing a [ShortDesc of C]. ".

To say ShortDesc of (C - rope harness):
	say "shibari style rope harness".

To decide which number is the dexterity-influence of (C - rope harness):
	let D be -2;
	increase D by the magic-modifier of C;
	if D < 0, decide on D;
	decide on 0.

To compute periodic effect of (C - rope harness):
	increase the charge of C by 1;
	if the charge of C > (75 * the raw strength of the player):
		now the charge of C is 0;
		say "[bold type]Thanks to wearing the [ShortDesc of C], your muscles have gotten stronger![roman type][line break]";
		StrengthUp 1.

Definition: rope harness is transformation-protected: decide yes.
Definition: rope harness is brown themed: decide yes.

Definition: rope harness is IcarusScienceAppropriate:
	if it is actually summonable, decide yes;
	decide no.

This is the remove inappropriate rope harnesses rule:
	now rope harness is in Holding Pen.
The remove inappropriate rope harnesses rule is listed in the diaper quest fix rules.


Rope Harness ends here.
