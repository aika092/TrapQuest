Leotard by Dresses begins here.

A leotard is a kind of overdress.  A leotard is usually crotch-intact.  A leotard is usually crotch-intact.  A leotard is usually unskirted.  A leotard is fully covering.  A leotard is usually not-top-displacable.  A leotard is usually sheer-when-wet.  

A pink leotard is a kind of leotard.  A sexy blue leotard is a kind of leotard.

The printed name of pink leotard is usually "[TQlink of item described][clothing-title-before]pink leotard[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of pink leotard is "ple".
The printed name of sexy blue leotard is usually "[TQlink of item described][clothing-title-before]sexy blue leotard[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of sexy blue leotard is "ble".

Figure of pink leotard is the file "leotard1.png".  Figure of sexy blue leotard is the file "leotard2.png".

There is 1 pink leotard.  There is 1 unique sexy blue leotard.

To decide which figure-name is clothing-image of (C - a pink leotard):
	decide on figure of pink leotard.
To decide which figure-name is clothing-image of (C - a sexy blue leotard):
	decide on figure of sexy blue leotard.

To say ClothingDesc of (C - a pink leotard):
	say "A pink ballerina's leotard with a frilly tutu.[if C is crotch-ripped]A rip at the bottom of the leotard means that it unfortunately doesn't protect the crotch region.[end if]".
To say ClothingDesc of (C - a sexy blue leotard):
	say "A blue leotard which is so sheer that it would reveal everything if it wasn't the for opaque stars over each nipple and the crotch.[if C is crotch-ripped]A rip at the bottom of the leotard means that it unfortunately doesn't protect the crotch region.[end if]".

To compute SelfExamineDesc of (C - a leotard):
	say "You are wearing a [ShortDesc of C].  ".

To say ShortDesc of (C - a pink leotard):
	say "pretty pink leotard with frilly tutu".
To say ShortDesc of (C - a sexy blue leotard):
	say "sexy blue leotard with star pasties".

To decide which number is the initial outrage of (C - a leotard):
	decide on 3.
To decide which number is the initial outrage of (C - a sexy blue leotard):
	decide on 5.

To decide which number is the initial cringe of (C - a leotard):
	decide on 6.

To decide which number is the heel-skill-influence of (O - a leotard):
	let X be 2;
	increase X by the magic-modifier of O;
	decide on X.

To uniquely set up (C - a leotard):
	repair C;
	set up magic state of C.

To set up influence of (C - a leotard):
	set up submissiveness-based influence of C.
	
To decide what number is the original price of (C - a leotard):
	decide on 5.

Definition: a pink leotard (called C) is sissifying:
	decide yes.

To compute periodic effect of (L - a leotard):
	[ballerina stuff]
	let R be a random number between 1 and 1500 - (1000 * unlucky);
	let H be a random off-stage ballet heels;
	let S be a random off-stage plentiful ballet shoes;
	if H is actually summonable and R < the raw heel skill of the player * the raw heel skill of the player:
		say "[bold type]Your leotard glows powerfully, and extremely high heeled ballet shoes appear on your feet[if the player is upright].  You feel yourself forced to stand on tip-toes!  Uh-oh...[otherwise].[end if][roman type][line break]";
		summon H cursed;
	otherwise if S is actually summonable and R < 25 - (the raw heel skill of the player * 2):
		say "[bold type]Your leotard glows softly, and ballet shoes appear on your feet[if the player is upright].  You feel yourself forced to stand on tip-toes![otherwise].[end if][roman type][line break]";
		summon S cursed.

To decide which object is the unique-upgrade-target of (C - a leotard):
	if diaper focus is 0, decide on a random off-stage sexy blue leotard;
	decide on a random off-stage teddybear playsuit.

To decide which object is the potential-upgrade-target of (C - a leotard):
	if the milk-soak of C > 0:
		decide on a random off-stage white milking basque;
	otherwise if the number of worn skirts is 0 and diaper quest is 0:
		decide on a random off-stage long pink clubbing dress;
	decide on nothing.



Leotard ends here.
