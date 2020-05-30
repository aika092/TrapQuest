Briefs by Knickers begins here.

A briefs is a kind of undies. Understand "pair", "pair of", "briefs" as briefs. The soak-limit of briefs is 10. The text-shortcut of briefs is "br".

To decide which number is the penis-capacity of (K - a briefs):
	decide on 6.

Definition: a briefs is rippable: decide yes.

The printed name of briefs is "[clothing-title-before][selfexamineuniquetitle of item described][clothing-title-after]".

To say TypeTitle of (T - a briefs):
	say "pair of briefs".

To say selfexaminetitle of (T - a briefs):
	say "[one of]saucy[or]cheeky[at random] [selfexamineuniquetitle of T]".

To uniquely set up (T - a briefs):
	now the damage of T is 0;
	now the armour of T is a random number between 7 and 10.

To decide which figure-name is clothing-image of (C - briefs):
	decide on figure of briefs 1.

To decide which figure-name is clothing-image of (C - white-briefs):
	decide on figure of briefs 1.

To decide which figure-name is clothing-image of (C - white-good girl briefs):
	decide on figure of briefs special 1b.

To decide which figure-name is clothing-image of (C - white-diagram briefs):
	decide on figure of briefs special 1.

To decide which figure-name is clothing-image of (C - pink briefs):
	decide on figure of briefs 2.

To decide which figure-name is clothing-image of (C - purple briefs):
	decide on figure of briefs 3.

To decide which figure-name is clothing-image of (C - red briefs):
	decide on figure of briefs 4.

To decide which figure-name is clothing-image of (C - black briefs):
	decide on figure of briefs 5.

To decide which figure-name is clothing-image of (C - blue-briefs):
	decide on figure of briefs 6.

To decide which figure-name is clothing-image of (C - silvery briefs):
	decide on figure of briefs 7.

To decide which figure-name is clothing-image of (C - green-briefs):
	decide on figure of briefs 8.

To decide which figure-name is clothing-image of (C - grey-briefs):
	decide on figure of briefs 9.

To decide which figure-name is clothing-image of (C - pale briefs):
	decide on figure of briefs 10.

To decide which figure-name is clothing-image of (C - pale blue-briefs):
	decide on figure of briefs 11.

To decide which figure-name is clothing-image of (C - red-orange briefs):
	decide on figure of briefs 12.

To decide which figure-name is clothing-image of (C - grey-hi-cut briefs):
	decide on figure of briefs 13.

To decide which figure-name is clothing-image of (C - blue-polka-dot briefs):
	decide on figure of briefs 14.

To decide which figure-name is clothing-image of (C - white-cameltoe briefs):
	decide on figure of briefs 15.

To decide which figure-name is clothing-image of (C - pink-kitty-briefs):
	decide on figure of briefs 16.

To decide which figure-name is clothing-image of (C - red-anal-briefs):
	decide on figure of briefs 17.

white-briefs is a briefs. white-briefs is sheer. The text-shortcut of white-briefs is "whb". Understand "white" as white-briefs.
To say selfexamineuniquetitle of (G - white-briefs):
	say "pair of white briefs".
To say UniqueClothingDesc of (G - white-briefs):
	say "This small white pair of briefs is a bit too sheer to give much modesty.".
Definition: white-briefs is white themed: decide yes.

white-good girl briefs is a briefs. white-good girl briefs is sheer-when-wet. The text-shortcut of white-good girl briefs is "wgg". Understand "white", "good" as white-good girl briefs.
To say selfexamineuniquetitle of (G - white-good girl briefs):
	say "pair of white 'good girl' briefs".
To say UniqueClothingDesc of (G - white-good girl briefs):
	say "This small white pair of briefs has 'good girl' written on the back in pink writing.".
To decide which number is the delicateness-influence of (C - white-good girl briefs):
	decide on 1.
To decide which number is the unique outrage of (C - white-good girl briefs):
	decide on 1.
To decide which number is the unique cringe of (C - white-good girl briefs):
	decide on 3.
Definition: white-good girl briefs is white themed: decide yes.

white-diagram briefs is a briefs. white-diagram briefs is sheer-when-wet. The text-shortcut of white-diagram briefs is "wdb".
To say selfexamineuniquetitle of (G - white-diagram briefs):
	say "pair of white ovaries diagram briefs".
To say UniqueClothingDesc of (G - white-diagram briefs):
	say "This modest white pair of briefs has a diagram of the female reproductive system on the front.".
Understand "ovaries", "reproductive", "system", "white", "diagram" as white-diagram briefs.
Definition: white-diagram briefs is pregnancy related: decide yes.
Definition: white-diagram briefs is fetish appropriate if pregnancy fetish > 0.
Definition: white-diagram briefs is vagina themed: decide yes.
Definition: white-diagram briefs is white themed: decide yes.
To uniquely set up (T - a white-diagram briefs):
	now the damage of T is 0;
	now the armour of T is a random number between 7 and 10;
	set up magic state of T;
	if pregnancy fetish is 0, now T is unique. [This stops it spawning if it the correct fetish is not enabled.]
Report wearing a white-diagram briefs:
	if the pregnancy rate of the player is 1:
		now the pregnancy rate of the player is 2;
		if the player is not possessing a vagina, say "Somewhere deep down, something clicks, and you realise you wish you could get pregnant and have babies.";
		otherwise say "[if the pregnancy of the player is 0]You can almost hear your womb cry out for something to fill it![otherwise]You feel an energetic kick from your stomach. Wow, the baby is growing fast![end if]";
	otherwise if the size of penis > min penis size:
		say "You watch your [ShortDesc of penis] ";
		if the size of penis > min penis size + 1, PenisDown 2;
		otherwise PenisDown 1;
		say "[Shrink] into a [ShortDesc of penis].".

pink briefs is a briefs. The text-shortcut of pink briefs is "pib". pink briefs has a number called charge.
To say selfexamineuniquetitle of (G - pink briefs):
	say "pair of pink 'Hole' briefs".
To say UniqueClothingDesc of (G - pink briefs):
	say "This stretchy pair of pink briefs says 'Hole' on the front, reminding any onlookers about what [if G is worn]your[otherwise]the wearer's[end if] [fuckholes] should be used as.".
Understand "hole" as pink briefs.
Definition: pink briefs is vagina themed: decide yes.
Definition: pink briefs is pink themed: decide yes.
To compute periodic effect of (G - pink briefs):
	increase the charge of G by 1;
	if the charge of G > 93:
		now the charge of G is 0;
		if the openness of asshole < 8 and ungape is 0:
			say "[bold type]You feel your [ShortDesc of G] magically make your [asshole] stretch [if the openness of asshole > 4]even [end if]wider![roman type][line break]";
			gape asshole times 1.
To decide which number is the unique outrage of (C - pink briefs):
	decide on 4.

purple briefs is a briefs. The text-shortcut of purple briefs is "pub".
To say selfexamineuniquetitle of (G - purple briefs):
	say "pair of purple briefs".
To say UniqueClothingDesc of (G - purple briefs):
	say "A stretchy pair of purple briefs.".
Definition: purple briefs is purple themed: decide yes.

red briefs is a briefs. The text-shortcut of red briefs is "reb".
To say selfexamineuniquetitle of (G - red briefs):
	say "pair of red 'SEE YOU TONIGHT' briefs".
To say UniqueClothingDesc of (G - red briefs):
	say "This pair of red briefs says 'SEE YOU TONIGHT' in capital letters on the back, to let people who can see it know that [if G is worn]you are[otherwise]the wearer is[end if] up for anything.".
Understand "see you", "tonight" as red briefs.
To decide which number is the sex-addiction-influence of (G - red briefs):
	if G is blessed, decide on 1;
	decide on 2.
To decide which number is the unique outrage of (C - red briefs):
	decide on 2.
Definition: red briefs is red themed: decide yes.

black briefs is a briefs. The text-shortcut of black briefs is "blb".
To say selfexamineuniquetitle of (G - black briefs):
	say "pair of black 'LET'S GET A ROOM' briefs".
To say UniqueClothingDesc of (G - black briefs):
	say "This pair of black briefs says 'LET'S GET A ROOM' in shiny silver capital letters on the back, to let people who can see it know that [if G is worn]you are[otherwise]the wearer is[end if] up for anything.".
Understand "let's", "lets", "get", "a room", "room" as black briefs.
To decide which number is the sex-addiction-influence of (G - black briefs):
	if G is blessed, decide on 1;
	decide on 2.
To decide which number is the unique outrage of (C - black briefs):
	decide on 2.
Definition: black briefs is black themed: decide yes.
Definition: black briefs is gem themed: decide yes.

blue-briefs is a briefs. The text-shortcut of blue-briefs is "bbr". Understand "blue", "briefs" as blue-briefs.
To say selfexamineuniquetitle of (G - blue-briefs):
	say "pair of blue briefs".
To say UniqueClothingDesc of (G - blue-briefs):
	say "A basic pair of blue briefs.".
Definition: blue-briefs is blue themed: decide yes.

silvery briefs is a briefs. The text-shortcut of silvery briefs is "sib".
To say selfexamineuniquetitle of (G - silvery briefs):
	say "pair of silvery briefs".
To say UniqueClothingDesc of (G - silvery briefs):
	say "A pair of shiny silvery briefs.".
To decide which number is the penis-capacity of (K - silvery briefs):
	decide on 2.
Definition: silvery briefs is grey themed: decide yes.

green-briefs is a briefs. The text-shortcut of green-briefs is "gib".
To say selfexamineuniquetitle of (G - green-briefs):
	say "pair of green 'Feeling lucky?' briefs".
To say UniqueClothingDesc of (G - green-briefs):
	say "This pair of green and white polka dot briefs says 'Feeling lucky?' on the front, to encourage people to hit on you.".
Understand "feeling", "lucky", "green", "briefs" as green-briefs.
To decide which number is the sex-addiction-influence of (G - green-briefs):
	if G is blessed, decide on 1;
	decide on 2.
To decide which number is the unique outrage of (C - green-briefs):
	decide on 1.
To decide which number is the luck-influence of (C - green-briefs):
	decide on 5.
Definition: green-briefs is green themed: decide yes.

grey-briefs is a briefs. The text-shortcut of grey-briefs is "grb".
To say selfexamineuniquetitle of (G - grey-briefs):
	say "pair of grey 'UP ALL NIGHT' briefs".
To say UniqueClothingDesc of (G - grey-briefs):
	say "This pair of grey and black briefs says 'UP ALL NIGHT' on the back, to let people know [if G is worn]you like[otherwise]the wearer likes[end if] to party, and fuck.".
Understand "up", "up all", "all night", "night", "grey", "briefs" as grey-briefs.
To decide which number is the sex-addiction-influence of (G - grey-briefs):
	if G is blessed, decide on 1;
	decide on 2.
To decide which number is the unique outrage of (C - grey-briefs):
	decide on 2.
Definition: grey-briefs is grey themed: decide yes.

pale briefs is a briefs. A pale briefs is sheer. A pale briefs is nylon. Understand "sheer" as pale briefs. The text-shortcut of pale briefs is "pab".
To say selfexamineuniquetitle of (G - pale briefs):
	say "pair of sheer nylon briefs".
To say UniqueClothingDesc of (G - pale briefs):
	say "This pair of pink [sissy] briefs are very delicate and sheer.".
Definition: pale briefs is sissifying: decide yes.
Definition: pale briefs is pink themed: decide yes.

white-cameltoe briefs is a briefs. The text-shortcut of white-cameltoe briefs is "wcb". Understand "white", "cameltoe" as white-cameltoe briefs.
To say selfexamineuniquetitle of (G - white-cameltoe briefs):
	say "pair of white cameltoe briefs".
To say UniqueClothingDesc of (G - white-cameltoe briefs):
	say "A pair of low cut white briefs that would give a female wearer a very visible cameltoe.".
Definition: white-cameltoe briefs is white themed: decide yes.
Definition: white-cameltoe briefs is potentially vagina covering if the player is male and it is potentially pussy covering. [On women, this item doesn't fully conceal the vagina]
To decide which number is the penis-capacity of (H - white-cameltoe briefs):
	decide on 2.

pink-kitty-briefs is a briefs. pink-kitty-briefs is silk. Understand "frilly", "kitty" as pink-kitty-briefs. The text-shortcut of pink-kitty-briefs is "fkb".
To say selfexamineuniquetitle of (G - pink-kitty-briefs):
	say "pair of frilly kitty briefs".
To say UniqueClothingDesc of (G - pink-kitty-briefs):
	say "This pair of frilly silky pink and white briefs has a kitty cat holding a heart on the front, with two teddy bears waving from behind her. It's very effeminate.".
Definition: pink-kitty-briefs is cat themed: decide yes.
Definition: pink-kitty-briefs is pink themed: decide yes.
Definition: pink-kitty-briefs is white themed: decide yes.
Definition: pink-kitty-briefs is bow themed: decide yes.
Definition: pink-kitty-briefs is heart themed: decide yes.
Definition: pink-kitty-briefs is bear themed: decide yes.
Definition: pink-kitty-briefs is sissifying: decide yes.
To decide which number is the unique cringe of (C - pink-kitty-briefs):
	decide on 3.

red-anal-briefs is a briefs. red-anal-briefs is silk. Understand "red", "daddy's", "anal", "whore" as red-anal-briefs. The text-shortcut of red-anal-briefs is "rawb".
To say selfexamineuniquetitle of (G - red-anal-briefs):
	say "pair of red anal whore briefs".
To say UniqueClothingDesc of (G - red-anal-briefs):
	say "This pair of red briefs has the words 'Daddy's Anal Whore' on the back in large sparkly cursive letters.".
Definition: red-anal-briefs is red themed: decide yes.
Definition: red-anal-briefs is anal sex themed: decide yes.
Definition: red-anal-briefs is whore themed: decide yes.
Definition: red-anal-briefs is gem themed: decide yes.
To decide which number is the unique outrage of (C - red-anal-briefs):
	decide on 7.
To decide which number is the anal-sex-addiction-influence of (G - red-anal-briefs):
	if G is blessed, decide on 1;
	decide on 2.

Figure of briefs 1 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs1.png".
Figure of briefs special 1 is the file "Items/Clothes/Lower/Underwear/Briefs/briefsspecial1.png".
Figure of briefs special 1b is the file "Items/Clothes/Lower/Underwear/Briefs/briefsspecial1b.png".
Figure of briefs 2 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs2.png".
Figure of briefs 3 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs3.png".
Figure of briefs 4 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs4.png".
Figure of briefs 5 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs5.png".
Figure of briefs 6 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs6.png".
Figure of briefs 7 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs7.png".
Figure of briefs 8 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs8.png".
Figure of briefs 9 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs9.png".
Figure of briefs 10 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs10.png".
Figure of briefs 11 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs11.png".
Figure of briefs 12 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs12.png".
Figure of briefs 13 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs13.png".
Figure of briefs 14 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs14.png".
Figure of briefs 15 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs15.png".
Figure of briefs 16 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs16.png".
Figure of briefs 17 is the file "Items/Clothes/Lower/Underwear/Briefs/briefs17.png".

[Below are from Lucas]

pale blue-briefs is a briefs. The text-shortcut of pale blue-briefs is "pbbr". pale blue-briefs has a number called charge.
Understand "I want", "it all", "blue", "briefs" as pale blue-briefs.
To say selfexamineuniquetitle of (G - pale blue-briefs):
	say "pair of pale blue 'I WANT IT ALL' briefs".
To say UniqueClothingDesc of (G - pale blue-briefs):
	say "A comfortable pair of blue briefs with silvery words on the pack suggesting that the wearer loves taking every inch of a [manly-penis].".
To decide which number is the anal-sex-addiction-influence of (G - pale blue-briefs):
	if G is blessed, decide on 1;
	decide on 2.
To decide which number is the vaginal-sex-addiction-influence of (G - pale blue-briefs):
	if the player is male, decide on 0;
	if G is blessed, decide on 1;
	decide on 2.
To compute periodic effect of (G - pale blue-briefs):
	increase the charge of G by 1;
	if the charge of G > 53:
		now the charge of G is 0;
		if the player is not possessing a vagina:
			if the openness of asshole < 8:
				say "[bold type]You feel your [G] magically make your [asshole] stretch [if the openness of asshole > 4]even [end if]wider![roman type][line break]";
				gape asshole times 1;
		otherwise:
			if the openness of vagina < 8:
				say "[bold type]You feel your [G] magically make your [vagina] stretch [if the openness of vagina > 4]even [end if]wider![roman type][line break]";
				gape vagina times 1.
Definition: pale blue-briefs is blue themed: decide yes.

red-orange briefs is a briefs. The text-shortcut of red-orange briefs is "rob".
Understand "trick", "trick me" as red-orange briefs.
To say selfexamineuniquetitle of (G - red-orange briefs):
	say "pair of red-orange 'TRICK ME' briefs".
To say UniqueClothingDesc of (G - red-orange briefs):
	say "Red-orange briefs that shows off that the wearer gets aroused by being tricked into humiliating situations.".
To decide which number is the unique outrage of (C - red-orange briefs):
	decide on 1.
To decide which number is the unique cringe of (C - red-orange briefs):
	decide on 2.
Definition: red-orange briefs is red themed: decide yes.

grey-hi-cut briefs is a briefs. The text-shortcut of grey-hi-cut briefs is "ghb".
To say selfexamineuniquetitle of (G - grey-hi-cut briefs):
	say "pair of grey hi-cut 'I woke up like this' briefs".
Understand "I woke", "woke up", "like", "this", "grey", "hi-cut" as grey-hi-cut briefs.
To say UniqueClothingDesc of (G - grey-hi-cut briefs):
	say "A pair of grey hi-cut briefs with the words [']I woke up like this['] over the right thigh, drawing attention and proclaiming that the wearer is quite the hot mess.".
Definition: grey-hi-cut briefs is grey themed: decide yes.

blue-polka-dot briefs is a briefs. The text-shortcut of blue-polka-dot briefs is "bpb".
To say selfexamineuniquetitle of (G - blue-polka-dot briefs):
	say "pair of blue polka-dot 'I heart boys' briefs".
Understand "I heart", "heart", "boys" as blue-polka-dot briefs.
To say UniqueClothingDesc of (G - blue-polka-dot briefs):
	say "A cute pair of blue polka-dot briefs, with a message notifying others that the wearer thinks of nothing but them and their hard [manly-penis]s.".
To decide which number is the sex-addiction-influence of (G - blue-polka-dot briefs):
	if G is blessed, decide on 1;
	decide on 2.
Understand "blue", "polka", "dot" as blue-polka-dot briefs.
Definition: blue-polka-dot briefs is heart themed: decide yes.
Definition: blue-polka-dot briefs is blue themed: decide yes.

Briefs ends here.
