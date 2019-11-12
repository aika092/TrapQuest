Leotard by Dresses begins here.

A leotard is a kind of overdress. A leotard is usually crotch-intact. A leotard is usually crotch-intact. A leotard is usually unskirted. A leotard is fully covering. A leotard is usually not-top-displacable. A leotard is usually sheer-when-wet. A leotard has a number called charge.

Definition: a leotard is ballet related: decide yes.
Definition: a leotard is sissifying: decide yes.

A pink leotard is a kind of leotard. A sexy blue leotard is a kind of leotard.

The printed name of pink leotard is usually "[clothing-title-before]pink leotard[clothing-title-after]". The text-shortcut of pink leotard is "ple".
The printed name of sexy blue leotard is usually "[clothing-title-before]sexy blue leotard[clothing-title-after]". The text-shortcut of sexy blue leotard is "ble".

Figure of pink leotard is the file "Items/Clothes/Upper/Leotards/leotard1.png". Figure of sexy blue leotard is the file "Items/Clothes/Upper/Leotards/leotard2.png".

There is 1 pink leotard. There is 1 transformation-rare sexy blue leotard.

To decide which figure-name is clothing-image of (C - a pink leotard):
	decide on figure of pink leotard.
To decide which figure-name is clothing-image of (C - a sexy blue leotard):
	decide on figure of sexy blue leotard.

To say ClothingDesc of (C - a pink leotard):
	say "A pink ballerina's leotard with a frilly tutu.[if C is crotch-ripped]A rip at the bottom of the leotard means that it unfortunately doesn't protect the crotch region.[end if]".
To say ClothingDesc of (C - a sexy blue leotard):
	say "A blue leotard which is so sheer that it would reveal everything if it wasn't the for opaque stars over each nipple and the crotch.[if C is crotch-ripped]A rip at the bottom of the leotard means that it unfortunately doesn't protect the crotch region.[end if]".

Definition: a pink leotard is pink themed: decide yes.
Definition: a sexy blue leotard is star themed: decide yes.
Definition: a sexy blue leotard is blue themed: decide yes.

To compute SelfExamineDesc of (C - a leotard):
	say "You are wearing a [ShortDesc of C]. ".

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

To set up influence of (C - a leotard):
	set up submissiveness-based influence of C.

To decide what number is the original price of (C - a leotard):
	decide on 5.


To compute periodic effect of (L - a leotard):
	[ballerina stuff]
	increase the charge of L by 1;
	if the charge of L > 200:
		now the charge of L is 0;
		let H be a random off-stage ballet heels;
		let S be a random off-stage plentiful ballet shoes;
		if H is actually summonable and the raw heel skill of the player > 5:
			say "[bold type]Your leotard glows powerfully, and extremely high heeled ballet shoes appear on your feet[if the player is upright]. You feel yourself forced to stand on tip-toes! Uh-oh...[otherwise].[end if][roman type][line break]";
			summon H cursed with quest;
		otherwise if S is actually summonable:
			say "[bold type]Your leotard glows softly, and ballet shoes appear on your feet[if the player is upright]. You feel yourself forced to stand on tip-toes![otherwise].[end if][roman type][line break]";
			summon S cursed with quest.

To decide which object is the unique-upgrade-target of (C - a leotard):
	if a random number between 1 and 2 is 1, decide on a random off-stage sexy blue leotard;
	if diaper focus is 0, decide on a random off-stage ballet corset;
	otherwise decide on a random off-stage teddybear playsuit.




Leotard ends here.

