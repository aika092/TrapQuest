Royal Dress by Dresses begins here.

royal dress is a kind of overdress. A royal dress is unique. A royal dress is usually silk. A royal dress is usually only arm covering.

Definition: a royal dress is class-relevant:
	if the class of the player is princess, decide yes;
	decide no.

To compute class set up of (C - a royal dress):
	increase the raw-magic-modifier of C by the number of friendly alive unleashed royal guards;
	decrease the raw-magic-modifier of C by the number of unfriendly alive unleashed royal guards.

The printed name of royal dress is usually "[clothing-title-before]royal dress[clothing-title-after]". The text-shortcut of royal dress is "rd".

To compute SelfExamineDesc of (O - a royal dress):
	say "[if the top-layer of O > 1 or the mid-layer of O > 1]Over this you[otherwise]You[end if] are wearing a [ShortDesc of O]. ".

To say ShortDesc of (O - a royal dress):
	say "pink silky royal dress";

Figure of Royal Dress 1 is the file "Items/Clothes/Upper/Dresses/Royal/royaldress1.png".
Figure of Royal Dress 2 is the file "Items/Clothes/Upper/Dresses/Royal/royaldress2.png".
Figure of Royal Dress 3 is the file "Items/Clothes/Upper/Dresses/Royal/royaldress3.png".
Figure of Royal Dress 4 is the file "Items/Clothes/Upper/Dresses/Royal/royaldress4.png".

To decide which number is the intelligence-influence of (O - a royal dress):
	let I be 1;
	increase I by the magic-modifier of O;
	decide on I.

To decide which object is the unique-upgrade-target of (C - a royal dress):
	if there is a worn diaper and diaper quest is 0, decide on baby royal dress; [DQ Tiara Quest is impossible to complete with a super short baby dress]
	if the throatskill of the player is 1 , decide on deepthroat princess crop top;
	if diaper quest is 1 and C is not lolita royal dress, decide on lolita royal dress;
	if diaper quest is 0 and C is not ballgown royal dress, decide on ballgown royal dress;
	decide on nothing.
Definition: a royal dress is royalty themed: decide yes.
Definition: a royal dress is pink themed: decide yes.
Definition: a royal dress is potentially erection concealing: decide yes. [non-tight skirts conceal erections]

Part 1 - Ballgown Royal Dress

ballgown royal dress is a royal dress. ballgown royal dress is optional-top-displacable. The text-shortcut of ballgown royal dress is "rd1".

To decide which figure-name is clothing-image of (C - ballgown royal dress):
	decide on figure of royal dress 1.

To say ClothingDesc of (O - ballgown royal dress):
	say "A pink, puffy silk dress with a deep plunging neckline that leaves a whole lot of [if O is worn]your[otherwise]the wearer's[end if] chest visible. [if the outrage of O is too humiliating][line break][first custom style]It's still more modest than most of the clothing in this game. But there's just something about being dressed as a dainty princess that's so... humiliating.[roman type][line break][end if]The fine cut of the material is evidence that this dress is meant only for the most important of people.".

To decide which number is the initial outrage of (C - ballgown royal dress):
	decide on 3.

Part 2 - Lolita Royal Dress

lolita royal dress is a royal dress. lolita royal dress is fully covering. lolita royal dress is not-top-displacable. The text-shortcut of lolita royal dress is "rd2".

To decide which figure-name is clothing-image of (C - lolita royal dress):
	decide on figure of royal dress 2.

To say ClothingDesc of (O - lolita royal dress):
	say "A long frilly hime lolita dress. It is layered with bows and lace, making it incredibly [if diaper quest is 0]feminine[otherwise]innocent looking[end if]. The fine cut of the material is evidence that this dress is meant only for the most important of people.".

Definition: lolita royal dress is bow themed: decide yes.
Definition: lolita royal dress is white themed: decide yes.

To decide which number is the initial outrage of (C - lolita royal dress):
	decide on 1.
To decide which number is the initial cringe of (C - lolita royal dress):
	decide on 3.


Part 3 - Baby Royal Dress

baby royal dress is a royal dress. baby royal dress is not-top-displacable. baby royal dress is short. baby royal dress is bed wetting. The text-shortcut of baby royal dress is "rd3". baby royal dress is diaper-addiction-influencing.

To decide which figure-name is clothing-image of (C - baby royal dress):
	decide on figure of royal dress 3.

To say ClothingDesc of (O - baby royal dress):
	say "A pink baby dress with a peter pan collar that is poofy and short, threatening to expose what the wearer has underneath[if there is a worn diaper and O is worn]. Which in your case, is a diaper[end if]. It has a pattern of cartoon princesses and pink flowers. It looks like it would only ever be worn by toddler girls, but it's in your size.".

To decide which number is the initial outrage of (C - baby royal dress):
	if diaper quest is 0, decide on the initial cringe of C;
	decide on 0.

To decide which number is the initial cringe of (C - baby royal dress):
	decide on 7.

To say ShortDesc of (O - baby royal dress):
	say "pink princess pattern baby dress";

Definition: baby royal dress is fetish appropriate:
	if the player is diapered, decide yes;
	decide no.
Definition: baby royal dress is baby themed: decide yes.
Definition: baby royal dress is bow themed: decide yes.

To compute (C - baby royal dress) unique inheriting from (D - a clothing):
	now C is bed wetting.

To transform (D - a clothing) into (C - baby royal dress):
	say "[bold type]Your [D] transforms into ";
	silently transform D into C;
	say "a [C][bold type] in front of your eyes![roman type] ";
	cutshow figure of princess diaper cutscene 1 for C;
	say TransformReaction of C.


Part 4 - Queen of Spades Dress

queen-of-spades-dress is a royal dress. queen-of-spades-dress is bottom-exclusive. queen-of-spades-dress is crotch-exposing. queen-of-spades-dress is unskirted. queen-of-spades-dress is low cut. queen-of-spades-dress is normally-nipple-exposing. The text-shortcut of queen-of-spades-dress is "qsd".

The printed name of queen-of-spades-dress is "[clothing-title-before]queen of spades dress[clothing-title-after]". Understand "queen", "of spades", "spades", "dress" as queen-of-spades-dress.

To decide which number is the initial outrage of (C - queen-of-spades-dress):
	decide on 6.

Definition: queen-of-spades-dress is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

To say ShortDesc of (C - queen-of-spades-dress):
	say "queen of spades dress".
To say MediumDesc of (C - queen-of-spades-dress):
	say "completely exposing queen of spades dress".

To decide which figure-name is clothing-image of (C - queen-of-spades-dress):
	decide on figure of royal dress 4.

To say ClothingDesc of (C - queen-of-spades-dress):
	say "This 'dress' is really just some extremely eroticand exposing negligee, with a [']queen of spades['] theme, and spade-shaped nipple holes. It ties at the hips, allowing [if C is worn]your[otherwise]the wearer's[end if] crotch to remain fully accessible. Despite all this, it still feels somewhat regal.".

Definition: queen-of-spades-dress is pink themed: decide no.
Definition: queen-of-spades-dress is white themed: decide yes.
Definition: queen-of-spades-dress is black themed: decide yes.
Definition: queen-of-spades-dress is playing card themed: decide yes.
Definition: queen-of-spades-dress is interracial themed: decide yes.
Definition: queen-of-spades-dress is unskirted themed: decide no.

To compute class set up of (C - queen-of-spades-dress):
	now C is elasticity;
	now C is luck-influencing;
	now the raw-magic-modifier of C is 2.

To compute periodic effect of (C - queen-of-spades-dress):
	if C is not temptation:
		let SK be a random worn skirt;
		if SK is nothing, let SK be a random worn trousers;
		if SK is clothing and SK is not queen-of-spades-skirt:
			say "[bold type][BigNameDesc of C] [bold type]rumbles angrily, and its magical enhancement changes to 'temptation'!";
			now C is temptation.

Royal Dress ends here.
