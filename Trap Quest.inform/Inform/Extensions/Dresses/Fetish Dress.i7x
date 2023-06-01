Fetish Dress by Dresses begins here.

A fetish dress is a kind of overdress. A fetish dress is usually latex. A fetish dress is usually transformation-rare. A fetish dress is usually erect-nipple-exposing.

The printed name of a fetish dress is "[clothing-title-before][MediumDesc of item described][clothing-title-after]".

Definition: a fetish dress is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

Figure of Latex Dress 1 is the file "Items/Clothes/Upper/Latex/latexdress1.png".
Figure of Latex Dress 2 is the file "Items/Clothes/Upper/Latex/latexdress2.png".
Figure of Latex Dress 3 is the file "Items/Clothes/Upper/Latex/latexdress3.png".
Figure of Latex Dress 4 is the file "Items/Clothes/Upper/Latex/latexdress4.png".
Figure of Latex Dress 5 is the file "Items/Clothes/Upper/Latex/latexdress5.png".
Figure of Latex Dress 6 is the file "Items/Clothes/Upper/Latex/latexdress6.png".
Figure of Latex Dress 7 is the file "Items/Clothes/Upper/Latex/latexdress7.png".
Figure of Latex Dress 8 is the file "Items/Clothes/Upper/Latex/latexdress8.png".
Figure of Latex Dress 9 is the file "Items/Clothes/Upper/Latex/latexdress9.png".
Figure of Latex Dress 10 is the file "Items/Clothes/Upper/Latex/latexdress10.png".
Figure of Latex Dress 11 is the file "Items/Clothes/Upper/Latex/latexdress11a.png".
Figure of Latex Dress 11 gloves is the file "Items/Clothes/Upper/Latex/latexdress11b.png".

To compute SelfExamineDesc of (O - a fetish dress):
	say "A [ShortDesc of O] clings tightly to your body, showing off your curves[if the largeness of breasts > 4] and ample cleavage[end if]. ".

To say ShortDesc of (C - a fetish dress):
	say "fetish dress".
To say MediumDesc of (C - a fetish dress):
	say "latex fetish dress".

To say ExtraDesc of (C - a fetish dress):
	if C is worn, say "You can sense that [if C is cursed][bold type]if it was uncursed [roman type]it would increase[otherwise]increases[end if] your dexterity by the number of latex items you're wearing.".

To decide which number is the initial outrage of (C - a fetish dress):
	decide on 6.

To decide which number is the dexterity-influence of (C - a fetish dress):
	let D be 0;
	if C is not cursed, increase D by the magic-modifier of C + the number of worn latex clothing; [When not cursed, this increases dexterity by the number of all latex items.]
	decide on D.

To decide which number is the heel-skill-influence of (O - a fetish dress):
	let temp be 4;
	increase temp by the magic-modifier of O;
	decide on temp.

To set up magic attribute of (C - a fetish dress):
	if a random number between 1 and 2 is 1 and C is not cursed, now C is confidence;
	set up rare magic attribute of C.

To decide which object is the unique-upgrade-target of (C - a fetish dress):
	if the number of worn trousers is 0:
		if C is not hobble-skirted and assless-fetish-dress is off-stage, decide on assless-fetish-dress;
		if assless fetish hobble dress is off-stage, decide on assless fetish hobble dress;
	decide on nothing.

To set up influence of (C - a fetish dress):
	set up sex-based influence of C.

This is the remove inappropriate fetish dresses rule:
	repeat with B running through fetish dresses:
		unless B is baby themed or B is pink translucent fetish dress, now B is in Holding Pen.
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

green fetish hobble dress is a fetish dress. green fetish hobble dress is hobble-skirted. A green fetish hobble dress is low cut. The text-shortcut of green fetish hobble dress is "gld".

To say MediumDesc of (C - green fetish hobble dress):
	say "green latex fetish hobble dress".

To decide which figure-name is clothing-image of (C - green fetish hobble dress):
	decide on figure of latex dress 1.

To say ClothingDesc of (O - green fetish hobble dress):
	say "An extremely tight fitting green latex dress with a low cleavage cut. The long tight skirt [if O is worn]restricts your movement[otherwise]would restrict the wearer's movement[end if].".

Definition: green fetish hobble dress is green themed: decide yes.

Part 2 - Red Translucent Latex Dress

red-translucent-fetish-dress is a fetish dress. red-translucent-fetish-dress is sheer. red-translucent-fetish-dress is short. red-translucent-fetish-dress is fully covering. red-translucent-fetish-dress is not-top-displacable. The text-shortcut of red-translucent-fetish-dress is "rtld".

To say MediumDesc of (C - red-translucent-fetish-dress):
	say "red translucent latex fetish dress".
Understand "red", "translucent", "fetish", "dress" as red-translucent-fetish-dress.

To decide which figure-name is clothing-image of (C - red-translucent-fetish-dress):
	decide on figure of latex dress 2.

To say ClothingDesc of (O - red-translucent-fetish-dress):
	say "A slightly translucent red latex dress that goes all the way up to your neck but is so short that it [if the size of penis > 3 and the number of worn chastity cages is 0 and 0 is the number of worn knickers]doesn't even cover your [ShortDesc of penis]. [otherwise]barely covers your crotch. [end if]".

To decide which number is the initial outrage of (C - red-translucent-fetish-dress):
	decide on 7.

Definition: red-translucent-fetish-dress is red themed: decide yes.

Part 3 - Pink Fetish Dress

pink fetish dress is a fetish dress. pink fetish dress is short. The text-shortcut of pink fetish dress is "pfd".

To say MediumDesc of (C - pink fetish dress):
	say "pink latex fetish dress".

To decide which figure-name is clothing-image of (C - pink fetish dress):
	decide on figure of latex dress 3.

To say ClothingDesc of (O - pink fetish dress):
	say "An extremely tight fitting pink latex dress[if the largeness of breasts > 3] that shows off a decent amount of cleavage[end if].[if O is worn and the outrage of O is too humiliating]The bottom of the dress only goes down to your inner thighs, and is so tight that you walk with small steps to avoid it constantly riding up and revealing your crotch.[otherwise if O is worn]The bottom of the dress only goes down to your inner thighs and threatens to ride up at any moment.[end if]".

To decide which object is the unique-upgrade-target of (C - pink fetish dress):
	if pink-catsuit is off-stage and the number of worn crotch covering clothing is 0, decide on pink-catsuit;
	decide on nothing.

Definition: pink fetish dress is pink themed: decide yes.

Part 4 - Red Fetish Dress

red fetish dress is a fetish dress. red fetish dress is ridiculously low cut. The text-shortcut of red fetish dress is "rld".

To say MediumDesc of (C - red fetish dress):
	say "red latex fetish dress".

To decide which figure-name is clothing-image of (C - red fetish dress):
	decide on figure of latex dress 4.

To say ClothingDesc of (O - red fetish dress):
	say "This tight fitting red latex dress has a huge circular neckline, made for someone with gigantic boobs to show off most of their cleavage. It [if O is worn]provides[otherwise]would provide[end if] a decent amount of modesty for your bottom half.".

Definition: red fetish dress is red themed: decide yes.

Part 5 - White Fetish Dress

windowed fetish dress is a fetish dress. windowed fetish dress is sheer. windowed fetish dress is short. windowed fetish dress is fully covering. windowed fetish dress is neck covering. windowed fetish dress is not-top-displacable. The text-shortcut of windowed fetish dress is "wld".

To say MediumDesc of (C - windowed fetish dress):
	say "white latex fetish dress".
Understand "white" as windowed fetish dress.

To decide which number is the initial outrage of (C - windowed fetish dress):
	decide on 11.

To decide which figure-name is clothing-image of (C - windowed fetish dress):
	decide on figure of latex dress 5.

To say ClothingDesc of (O - a windowed fetish dress):
	say "This tight white latex dress is opaque at the sides but translucent at the front and back, allowing anyone close enough to still get a great view of your private parts. The bottom of the dress only goes down to your inner thighs and threatens to ride up at any moment. A tight and full collar prevents you from wearing anything else at your neck.".

To decide which number is the bimbo-influence of (O - windowed fetish dress):
	decide on 1.

Definition: windowed fetish dress is white themed: decide yes.

Part 6 - Black Fetish Hobble Dress

black fetish hobble dress is a fetish dress. black fetish hobble dress is hobble-skirted. black fetish hobble dress is crotch-skirted. black fetish hobble dress is low cut. The text-shortcut of black fetish hobble dress is "bld".

Definition: black fetish hobble dress is class-relevant:
	if the class of the player is maid or the class of the player is latex fetish model, decide yes;
	decide no.

To say MediumDesc of (C - black fetish hobble dress):
	say "black latex fetish hobble dress".

To decide which figure-name is clothing-image of (C - black fetish hobble dress):
	decide on figure of latex dress 6.

To say ClothingDesc of (O - black fetish hobble dress):
	say "This tight black latex dress has a hobble style skirt which forces the wearer to walk with short steps. The deep neckline and bottom of the dress have a white pattern that vaguely resembles a maid's outfit.".

To decide which number is the initial outrage of (C - black fetish hobble dress):
	decide on 8.

To compute class set up of (M - black fetish hobble dress):
	increase the raw-magic-modifier of M by the crawl count of the player / 10.

To decide which number is the strength-influence of (O - black fetish hobble dress):
	let S be the magic-modifier of O;
	decide on S.

Definition: black fetish hobble dress is transformation-protected:
	if the class of the player is maid, decide yes;
	decide no.

To say TransformReaction of (C - black fetish hobble dress):
	if the outrage of C is too humiliating:
		say "[variable custom style]How am I even supposed to walk properly in this?! [if C is cursed]I wish I could take it off.[otherwise if the class of the player is maid]I guess I should probably take it off. But then I'd lose the bonuses from being a [']maid[']...[otherwise]I guess I should probably just take it off.[end if][roman type][line break]";
	otherwise if C is almost too much:
		say "[variable custom style]The way this forces me to walk actually makes me feel really sexy! But it's probably not going to help me win this game...[roman type][line break]";
	otherwise if the humiliation of the player < 40000:
		say "[variable custom style]Ooh, I didn't think that outfit could get any more ridiculous, but I'm glad it did![roman type][line break]".

Definition: black fetish hobble dress is black themed: decide yes.
Definition: black fetish hobble dress is black-and-white themed: decide yes.

Part 7 - Purple Fetish Hobble Dress

purple fetish hobble dress is a fetish dress. purple fetish hobble dress is hobble-skirted. purple fetish hobble dress is crotch-skirted. A purple fetish hobble dress is high cut. A purple fetish hobble dress is only arm covering. The text-shortcut of purple fetish hobble dress is "phd".

To say MediumDesc of (C - purple fetish hobble dress):
	say "purple latex fetish hobble dress".

To decide which figure-name is clothing-image of (C - purple fetish hobble dress):
	decide on figure of latex dress 7.

To say ClothingDesc of (O - purple fetish hobble dress):
	say "This tight purple latex dress has a hobble style skirt which forces the wearer to walk with short steps. The high neckline makes it seem relatively modest, but the fetishistic nature of a skin-tight latex dress means it is still very provocative.".

To decide which number is the initial outrage of (C - purple fetish hobble dress):
	decide on 7.

To decide which number is the strength-influence of (O - purple fetish hobble dress):
	let S be the magic-modifier of O;
	decide on S.

Definition: purple fetish hobble dress is purple themed: decide yes.

Part 8 - Assless Fetish Hobble Dress

assless fetish hobble dress is a fetish dress. assless fetish hobble dress is hobble-skirted. assless fetish hobble dress is crotch-skirted. assless fetish hobble dress is fully covering. assless fetish hobble dress is crotch-assless. assless fetish hobble dress is sheer. assless fetish hobble dress is finger covering. The text-shortcut of assless fetish hobble dress is "alhd".

To say MediumDesc of (C - assless fetish hobble dress):
	say "assless latex fetish hobble dress".

To decide which figure-name is clothing-image of (C - assless fetish hobble dress):
	decide on figure of latex dress 8.

To say ClothingDesc of (O - assless fetish hobble dress):
	say "This tight latex dress has a hobble style skirt which forces the wearer to walk with short steps. The dress is essentially see-through and it also has a huge hole cut at at the butt, with a tight strap that runs underneath the crotch to keep everything held in place.".

To decide which number is the initial outrage of (C - assless fetish hobble dress):
	decide on 15.

To decide which number is the strength-influence of (O - assless fetish hobble dress):
	let S be the magic-modifier of O;
	decide on S.

Definition: assless fetish hobble dress is end of transformation chain: decide yes. [It's the end of the transformation chain. This will make some things avoid bothering to attempt to transform it.]

Part 9 - Assless Fetish Dress

assless-fetish-dress is a fetish dress. assless-fetish-dress is crotch-skirted. assless-fetish-dress is fully covering. assless-fetish-dress is butt-windowed. assless-fetish-dress is transformation-rare. The text-shortcut of assless-fetish-dress is "ald".

To say MediumDesc of (C - assless-fetish-dress):
	say "assless latex fetish dress".
Understand "assless", "fetish", "dress" as assless-fetish-dress.

To decide which figure-name is clothing-image of (C - assless-fetish-dress):
	decide on figure of latex dress 9.

To say ClothingDesc of (O - assless-fetish-dress):
	say "This tight red latex dress has a butt window in the skirt.".

To decide which number is the initial outrage of (C - assless-fetish-dress):
	decide on 10.

To decide which number is the strength-influence of (O - assless-fetish-dress):
	let S be the magic-modifier of O;
	decide on S.

Definition: assless-fetish-dress is red themed: decide yes.


Part 10 - Pink Translucent Latex Dress

pink translucent fetish dress is a fetish dress. pink translucent fetish dress is sheer. pink translucent fetish dress is high cut. The text-shortcut of pink translucent fetish dress is "ptld".

To say MediumDesc of (C - pink translucent fetish dress):
	say "pink translucent latex fetish dress".

To decide which figure-name is clothing-image of (C - pink translucent fetish dress):
	decide on figure of latex dress 10.

To say ClothingDesc of (O - pink translucent fetish dress):
	say "A translucent pink latex dress with white bows and frills that give it a 'babydoll' feel. While the cleavage line is rather modest, this is a bit of a moot point since it's partially transparent.".

To decide which number is the initial outrage of (C - pink translucent fetish dress):
	decide on 6.

Definition: pink translucent fetish dress is pink themed: decide yes.
Definition: pink translucent fetish dress is bow themed: decide yes.

Part 11 - Pink and Blue Translucent Latex Dress

pink-and-blue translucent fetish dress is a fetish dress. pink-and-blue translucent fetish dress is unique. pink-and-blue translucent fetish dress is short. pink-and-blue translucent fetish dress is slap ready. pink-and-blue translucent fetish dress is sheer. pink-and-blue translucent fetish dress is high cut. The text-shortcut of pink-and-blue translucent fetish dress is "pbld". Understand "pink", "and blue", "blue" as pink-and-blue translucent fetish dress.

To say MediumDesc of (C - pink-and-blue translucent fetish dress):
	say "pink and blue translucent latex fetish dress".

To decide which figure-name is clothing-image of (C - pink-and-blue translucent fetish dress):
	if C is not worn and C is in a painting-room, decide on Figure of dress painting flying;
	if C is hand ready, decide on figure of latex dress 11 gloves;
	decide on figure of latex dress 11.

To say ClothingDesc of (O - pink-and-blue translucent fetish dress):
	say "A translucent pink latex dress with blue bows and frills that give it a 'babydoll' feel. While the cleavage line is rather modest, this is a bit of a moot point since it's partially transparent[if O is hand ready]. It comes with matching gloves that you can't seem to remove without also removing the dress[end if].".

To decide which number is the initial outrage of (C - pink-and-blue translucent fetish dress):
	decide on 6.

Definition: pink-and-blue translucent fetish dress is pink themed: decide yes.
Definition: pink-and-blue translucent fetish dress is bow themed: decide yes.
Definition: pink-and-blue translucent fetish dress is class-relevant: decide yes. [It's not that easy to get rid of!]


Part 100 - Fetish Baby Dress

fetish baby dress is a fetish dress. fetish baby dress is short. fetish baby dress is transformation-rare. The text-shortcut of fetish baby dress is "fbbd".

To say MediumDesc of (C - fetish baby dress):
	say "cream latex fetish [if diaper lover > 0]baby [end if]dress".
Understand "cream" as fetish baby dress.

Definition: fetish baby dress is class-relevant:
	if the class of the player is latex clown, decide yes;
	decide no.

Definition: fetish baby dress is fetish appropriate:
	if diaper lover > 0, decide yes;
	decide no.

Figure of fetish baby dress is the file "Items/Clothes/Upper/Latex/latexbabydress1.png".

To decide which figure-name is clothing-image of (C - fetish baby dress):
	decide on figure of fetish baby dress.

To say ClothingDesc of (O - fetish baby dress):
	say "This cream and blue latex dress is covered in bows. It has a frilly[if diaper lover > 0], babyish[end if] theme, including what looks like a blue [if diaper lover > 0]baby [end if]rein harness around the middle.".

To say ClassSummonFlav of (C - fetish baby dress):
	say "Your mask emits a high pitched cackling sound, and then a creamy fetish dress materialises over your body![line break][variable custom style]I look so ridiculous! [if the player is shameless]How delicious[otherwise]This is crazy[end if]![roman type][line break]".

To compute class set up of (C - fetish baby dress):
	now C is dominance;
	now the raw-magic-modifier of C is 3.

To decide which number is the initial outrage of (C - fetish baby dress):
	if diaper quest is 1, decide on 0;
	decide on 15.
To decide which number is the initial cringe of (C - fetish baby dress):
	decide on 15.

Definition: fetish baby dress is baby themed: decide yes.
Definition: fetish baby dress is white themed: decide yes.
Definition: fetish baby dress is bow themed: decide yes.

Fetish Dress ends here.
