Fetish Dress by Dresses begins here.

A fetish dress is a kind of overdress. A fetish dress is usually latex. A fetish dress is usually transformation-rare.

Figure of Latex Dress 1 is the file "Items/Clothes/Upper/Latex/latexdress1.png".
Figure of Latex Dress 2 is the file "Items/Clothes/Upper/Latex/latexdress2.png".
Figure of Latex Dress 3 is the file "Items/Clothes/Upper/Latex/latexdress3.png".
Figure of Latex Dress 4 is the file "Items/Clothes/Upper/Latex/latexdress4.png".
Figure of Latex Dress 5 is the file "Items/Clothes/Upper/Latex/latexdress5.png".
Figure of Latex Dress 6 is the file "Items/Clothes/Upper/Latex/latexdress6.png".
Figure of Latex Dress 7 is the file "Items/Clothes/Upper/Latex/latexdress7.png".
Figure of Latex Dress 8 is the file "Items/Clothes/Upper/Latex/latexdress8.png".
Figure of Latex Dress 9 is the file "Items/Clothes/Upper/Latex/latexdress9.png".

To compute SelfExamineDesc of (O - a fetish dress):
	say "A [ShortDesc of O] clings tightly to your body, showing off your curves[if the largeness of breasts > 4] and ample cleavage[end if]. ".

To say ShortDesc of (C - a fetish dress):
	say "latex fetish dress".

To decide which number is the initial outrage of (C - a fetish dress):
	decide on 6.

To decide which number is the original price of (C - a fetish dress):
	decide on 10.

To decide which number is the dexterity-influence of (C - a fetish dress):
	let D be 0;
	if C is not cursed: [When not cursed, this increases dexterity by the number of all latex items.]
		increase D by the magic-modifier of C;
		repeat with B running through clothing worn by the player:
			if B is latex, increase D by 1;
	decide on D.

To decide which number is the heel-skill-influence of (O - a fetish dress):
	let temp be 4;
	increase temp by the magic-modifier of O;
	decide on temp.

To uniquely set up (C - a fetish dress):
	if a random number between 1 and 3 is 1 and C is not cursed, now the magic-type of C is speed.

To decide which object is the unique-upgrade-target of (C - a fetish dress):
	if the number of worn trousers is 0, decide on a random off-stage assless fetish hobble dress;
	decide on nothing.

To set up influence of (C - a fetish dress):
	set up sex-based influence of C.

This is the remove inappropriate fetish dresses rule:
	repeat with B running through fetish dresses:
		unless B is baby themed, now B is in Holding Pen.
The remove inappropriate fetish dresses rule is listed in the diaper quest fix rules.

outrageous-fetish-dress is a humiliating situation.
Definition: outrageous-fetish-dress (called A) is applicable:
	let B be a random worn fetish dress;
	if B is a thing:
		if the player is not disgraced and (the outrage of B is too humiliating or B is too cringeworthy), decide yes;
	decide no.
To reflect on (A - outrageous-fetish-dress):
	let O be a random worn fetish dress;
	if O is superheroine fetish dress:
		say "[first custom style][one of][if the largeness of breasts > 2]This latex dress shows WAY too much cleavage. I'm not a slut![otherwise]I don't know what's more embarrassing, the fact that this dress has such a slutty neckline or how ridiculous it looks with my flat chest.[end if][or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is translucent fetish dress:
		say "[first custom style][one of][if penis is exposed]Okay this is too much, my dick is literally showing underneath this ridiculously high latex dress...[otherwise]This latex dress is just too much. Everyone can catch glimpses of my crotch whenever I move my legs![end if][or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is pink fetish dress:
		say "[first custom style][one of]This latex dress is just too much. Everyone can catch glimpses of my crotch whenever I move my legs![or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is low cut fetish dress:
		say "[first custom style][one of][if the largeness of breasts > 7]This latex dress shows WAY too much cleavage. Everything that looks at me is going to want to fuck![otherwise if the largeness of breasts > 2]I don't know what's more embarrassing, the fact that this dress has such an unacceptably slutty neckline or how ridiculous it looks with my small boobs.[otherwise]I don't know what's more embarrassing, the fact that this dress has such an unacceptably slutty neckline or how ridiculous it looks with my flat chest.[end if][or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is windowed fetish dress:
		say "[first custom style][one of]What is the point in even wearing this latex dress?! Everyone can still see my private parts through this slutty material, and it's probably even more provocative than wearing nothing at all.[or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is black fetish hobble dress:
		say "[first custom style][one of]Why would anyone wear a dress like this? I can't even walk properly.[or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	otherwise if O is fetish baby dress:
		say "[first custom style][one of]Why would anyone wear a dress like this? I can't even walk properly.[or]Whatever benefits this latex dress is giving me are not worth looking so trashy![stopping]";
	say "[roman type][line break]".

Part 1 - Green Fetish Hobble Dress

A green fetish hobble dress is a kind of fetish dress. A green fetish hobble dress is usually hobble-skirted. A green fetish hobble dress is usually low cut. The text-shortcut of green fetish hobble dress is "gld".

There is 1 green fetish hobble dress.

The printed name of green fetish hobble dress is usually "[clothing-title-before]green latex dress[clothing-title-after]".

To uniquely set up (C - a green fetish hobble dress):
	repair C;
	now the armour of C is 8.

To decide which figure-name is clothing-image of (C - a green fetish hobble dress):
	decide on figure of latex dress 1.

To say ClothingDesc of (O - a green fetish hobble dress):
	say "An extremely tight fitting green latex dress with a low cleavage cut. The long tight skirt [if O is worn]restricts your movement[otherwise]would restrict the wearer's movement[end if].".

Definition: a green fetish hobble dress is green themed: decide yes.

Part 2 - Translucent Latex Dress

A translucent fetish dress is a kind of fetish dress. A translucent fetish dress is sheer. A translucent fetish dress is usually short. A translucent fetish dress is fully covering. A translucent fetish dress is usually not-top-displacable. The text-shortcut of translucent fetish dress is "tld".

There is 1 translucent fetish dress.

The printed name of translucent fetish dress is usually "[clothing-title-before]translucent latex dress[clothing-title-after]".

To decide which figure-name is clothing-image of (C - a translucent fetish dress):
	decide on figure of latex dress 2.

To say ClothingDesc of (O - a translucent fetish dress):
	say "A slightly translucent red latex dress that goes all the way up to your neck but is so short that it [if the size of penis > 3 and the number of worn chastity cages is 0 and 0 is the number of worn knickers]doesn't even cover your [ShortDesc of penis]. [otherwise]barely covers your crotch. [end if]".

To decide which number is the initial outrage of (C - a translucent fetish dress):
	decide on 11.

Definition: a translucent fetish dress is red themed: decide yes.

Part 3 - Pink Fetish Dress

A pink fetish dress is a kind of fetish dress. A pink fetish dress is usually short. The text-shortcut of pink fetish dress is "pfd".

There is 1 pink fetish dress.

The printed name of pink fetish dress is usually "[clothing-title-before]pink latex dress[clothing-title-after]".

To decide which figure-name is clothing-image of (C - a pink fetish dress):
	decide on figure of latex dress 3.

To say ClothingDesc of (O - a pink fetish dress):
	say "An extremely tight fitting pink latex dress[if the largeness of breasts > 3] that shows off a decent amount of cleavage[end if].[if O is worn and the outrage of O is too humiliating]The bottom of the dress only goes down to your inner thighs, and is so tight that you walk with small steps to avoid it constantly riding up and revealing your crotch.[otherwise if O is worn]The bottom of the dress only goes down to your inner thighs and threatens to ride up at any moment.[end if]".

To decide which object is the unique-upgrade-target of (C - a pink fetish dress):
	if there is worn crotch covering clothing, decide on nothing;
	decide on a random off-stage pink catsuit.

Definition: a pink fetish dress is pink themed: decide yes.

Part 4 - Red Fetish Dress

A red fetish dress is a kind of fetish dress. A red fetish dress is rare. A red fetish dress is ridiculously low cut. The text-shortcut of red fetish dress is "rld".

There is 1 red fetish dress.

The printed name of red fetish dress is usually "[clothing-title-before]red latex dress[clothing-title-after]".

To decide which figure-name is clothing-image of (C - a red fetish dress):
	decide on figure of latex dress 4.

To say ClothingDesc of (O - a red fetish dress):
	say "This tight fitting red latex dress has a huge circular neckline, made for someone with gigantic boobs to show off most of their cleavage. It [if O is worn]provides[otherwise]would provide[end if] a decent amount of modesty for your bottom half.".


Definition: a red fetish dress is red themed: decide yes.

Part 5 - White Fetish Dress

A windowed fetish dress is a kind of fetish dress. A windowed fetish dress is usually sheer. A windowed fetish dress is usually short. A windowed fetish dress is fully covering. A windowed fetish dress is neck covering. A windowed fetish dress is usually not-top-displacable. The text-shortcut of windowed fetish dress is "wld".

There is 1 windowed fetish dress.

The printed name of a windowed fetish dress is usually "[clothing-title-before]white latex dress[clothing-title-after]". Understand "white" as windowed fetish dress.

To decide which number is the initial outrage of (C - a windowed fetish dress):
	decide on 11.

To decide which figure-name is clothing-image of (C - a windowed fetish dress):
	decide on figure of latex dress 5.

To say ClothingDesc of (O - a windowed fetish dress):
	say "This tight white latex dress is opaque at the sides but translucent at the front and back, allowing anyone close enough to still get a great view of your private parts. The bottom of the dress only goes down to your inner thighs and threatens to ride up at any moment. A tight and full collar prevents you from wearing anything else at your neck.".

To decide which number is the bimbo-influence of (O - a windowed fetish dress):
	decide on 1.

Definition: a windowed fetish dress is white themed: decide yes.

Part 6 - Black Fetish Hobble Dress

A black fetish hobble dress is a kind of fetish dress. A black fetish hobble dress is usually hobble-skirted. A black fetish hobble dress is usually crotch-skirted. A black fetish hobble dress is usually low cut. The text-shortcut of black fetish hobble dress is "bld". The armour of black fetish hobble dress is usually 14.

There is 1 black fetish hobble dress.

The printed name of black fetish hobble dress is usually "[clothing-title-before]black latex hobble dress[clothing-title-after]".

To decide which figure-name is clothing-image of (C - a black fetish hobble dress):
	decide on figure of latex dress 6.

To say ClothingDesc of (O - a black fetish hobble dress):
	say "This tight black latex dress has a hobble style skirt which forces the wearer to walk with short steps. The deep neckline and bottom of the dress have a white pattern that vaguely resembles a maid's outfit.".

To decide which number is the initial outrage of (C - a black fetish hobble dress):
	decide on 8.

To uniquely set up (C - a black fetish hobble dress):
	repair C;
	now the armour of C is 8.

To decide which number is the strength-influence of (O - a black fetish hobble dress):
	let S be the magic-modifier of O;
	decide on S.

Definition: a black fetish hobble dress is transformation-protected if the class of the player is maid.

To say TransformReaction of (C - a black fetish hobble dress):
	if the outrage of C is too humiliating:
		say "[variable custom style]How am I even supposed to walk properly in this?! [if C is cursed]I wish I could take it off.[otherwise if the class of the player is maid]I guess I should probably take it off. But then I'd lose the bonuses from being a [']maid[']...[otherwise]I guess I should probably just take it off.[end if][roman type][line break]";
	otherwise if C is almost too much:
		say "[variable custom style]The way this forces me to walk actually makes me feel really sexy! But it's probably not going to help me win this game...[roman type][line break]";
	otherwise if the humiliation of the player < 40000:
		say "[variable custom style]Ooh, I didn't think that outfit could get any more ridiculous, but I'm glad it did![roman type][line break]".

Definition: a black fetish hobble dress is black themed: decide yes.
Definition: a black fetish hobble dress is black-and-white themed: decide yes.

Part 7 - Purple Fetish Hobble Dress

A purple fetish hobble dress is a kind of fetish dress. A purple fetish hobble dress is usually hobble-skirted. A purple fetish hobble dress is usually crotch-skirted. A purple fetish hobble dress is usually high cut. A purple fetish hobble dress is usually only arm covering. The text-shortcut of purple fetish hobble dress is "phd". The armour of purple fetish hobble dress is usually 14.

There is 1 purple fetish hobble dress.

The printed name of purple fetish hobble dress is usually "[clothing-title-before]purple latex hobble dress[clothing-title-after]".

To decide which figure-name is clothing-image of (C - a purple fetish hobble dress):
	decide on figure of latex dress 7.

To say ClothingDesc of (O - a purple fetish hobble dress):
	say "This tight purple latex dress has a hobble style skirt which forces the wearer to walk with short steps. The high neckline makes it seem relatively modest, but the fetishistic nature of a skin-tight latex dress means it is still very provocative.".

To decide which number is the initial outrage of (C - a purple fetish hobble dress):
	decide on 7.

To uniquely set up (C - a purple fetish hobble dress):
	repair C;
	now the armour of C is 8.

To decide which number is the strength-influence of (O - a purple fetish hobble dress):
	let S be the magic-modifier of O;
	decide on S.

Definition: a purple fetish hobble dress is purple themed: decide yes.

Part 8 - Assless Fetish Hobble Dress

An assless fetish hobble dress is a kind of fetish dress. An assless fetish hobble dress is usually hobble-skirted. An assless fetish hobble dress is usually crotch-skirted. An assless fetish hobble dress is usually fully covering. An assless fetish hobble dress is usually crotch-assless. An assless fetish hobble dress is usually sheer. An assless fetish hobble dress is usually transformation-rare. An assless fetish hobble dress is usually finger covering. The text-shortcut of assless fetish hobble dress is "alhd". The armour of assless fetish hobble dress is usually 12.

There is 1 assless fetish hobble dress.

The printed name of assless fetish hobble dress is usually "[clothing-title-before]assless latex hobble dress[clothing-title-after]".

To decide which figure-name is clothing-image of (C - an assless fetish hobble dress):
	decide on figure of latex dress 8.

To say ClothingDesc of (O - an assless fetish hobble dress):
	say "This tight latex dress has a hobble style skirt which forces the wearer to walk with short steps. The dress is essentially see-through and it also has a huge hole cut at at the butt, to allow for easy anal access.".

To decide which number is the initial outrage of (C - an assless fetish hobble dress):
	decide on 15.

To uniquely set up (C - an assless fetish hobble dress):
	repair C;
	now the armour of C is 8.

To decide which number is the strength-influence of (O - an assless fetish hobble dress):
	let S be the magic-modifier of O;
	decide on S.

Definition: an assless fetish hobble dress is end of transformation chain: decide yes. [It's the end of the transformation chain. This will make some things avoid bothering to attempt to transform it.]

Part 9 - Assless Fetish Dress

An assless fetish dress is a kind of fetish dress. An assless fetish dress is usually crotch-skirted. An assless fetish dress is usually fully covering. An assless fetish dress is usually butt-windowed. An assless fetish dress is usually transformation-rare. The text-shortcut of assless fetish dress is "ald".

There is 1 assless fetish dress.

The printed name of assless fetish dress is usually "[clothing-title-before]assless latex dress[clothing-title-after]".

To decide which figure-name is clothing-image of (C - an assless fetish dress):
	decide on figure of latex dress 9.

To say ClothingDesc of (O - an assless fetish dress):
	say "This red tight latex dress has a butt window in the skirt.".

To decide which number is the initial outrage of (C - an assless fetish dress):
	decide on 10.

To decide which number is the strength-influence of (O - an assless fetish dress):
	let S be the magic-modifier of O;
	decide on S.

Definition: an assless fetish dress is red themed: decide yes.


Part 10 - Fetish Baby Dress

fetish baby dress is a fetish dress. fetish baby dress is short. A fetish baby dress is transformation-rare. The text-shortcut of fetish baby dress is "fbbd".

The printed name of fetish baby dress is usually "[clothing-title-before]latex fetish [if diaper lover > 0]baby [end if]dress[clothing-title-after]".

Definition: fetish baby dress is fetish appropriate if diaper lover > 0.

Figure of fetish baby dress is the file "Items/Clothes/Upper/Latex/latexbabydress1.png".

To decide which figure-name is clothing-image of (C - a fetish baby dress):
	decide on figure of fetish baby dress.

To say ClothingDesc of (O - a fetish baby dress):
	say "This cream and blue latex dress is covered in bows. It has a frilly[if diaper lover > 0], babyish[end if] theme, including what looks like a blue [if diaper lover > 0]baby [end if]rein harness around the middle.".

To decide which number is the initial outrage of (C - a fetish baby dress):
	if diaper quest is 1, decide on 0;
	decide on 15.
To decide which number is the initial cringe of (C - a fetish baby dress):
	decide on 15.

Definition: a fetish baby dress is baby themed: decide yes.
Definition: a fetish baby dress is white themed: decide yes.
Definition: a fetish baby dress is bow themed: decide yes.
Definition: a fetish baby dress is transformation-protected if the class of the player is latex clown.


Fetish Dress ends here.
