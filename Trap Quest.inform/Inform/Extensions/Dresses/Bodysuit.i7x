Bodysuit by Dresses begins here.

A bodysuit is a kind of underdress. A bodysuit is fully covering. A bodysuit is usually unskirted. A bodysuit is usually crotch-intact. A bodysuit is usually not-top-displacable.

This is the remove inappropriate bodysuits rule:
	repeat with B running through catsuits:
		now B is in Holding Pen;
	now tight-green-romper is in Holding Pen;
	now tight-grey-romper is in Holding Pen;
	now plugsuit is in Holding Pen;
	now superheroine outfit is in Holding Pen;
	now rubber-jumpsuit is in Holding Pen.
The remove inappropriate bodysuits rule is listed in the diaper quest fix rules.

To decide which number is the initial outrage of (C - a bodysuit):
	decide on 3.

To set up magic attribute of (C - a bodysuit):
	if C is cursed:
		if a random number between 1 and 2 is 1, now the magic-type of C is posture training;
	otherwise:
		if a random number between 1 and 3 is 1, now the magic-type of C is speed.

To decide which object is the unique-upgrade-target of (C - a bodysuit):
	if diaper quest is 0 and there is a worn demonic wearthing, decide on tongue-suit;
	decide on nothing.

To say ShortDesc of (C - a bodysuit):
	say "bodysuit".
To say MediumDesc of (C - a bodysuit):
	say "bodysuit".


Part - unicorn-playsuit

unicorn-playsuit is a bodysuit. unicorn-playsuit is bottom-exclusive. unicorn-playsuit is average cut. The printed name of unicorn-playsuit is "[clothing-title-before]unicorn playsuit[clothing-title-after]". The text-shortcut of unicorn-playsuit is "upst". Understand "unicorn", "playsuit" as unicorn-playsuit.

Definition: unicorn-playsuit is displacable: decide no.
Definition: unicorn-playsuit is pink themed: decide yes.
Definition: unicorn-playsuit is horse themed: decide yes.
Definition: unicorn-playsuit is floral themed: decide yes.

Figure of unicorn playsuit is the file "Items/Clothes/Upper/Rompers/romper10.png".

To decide which figure-name is clothing-image of (C - unicorn-playsuit):
	decide on figure of unicorn playsuit.

To say ClothingDesc of (C - unicorn-playsuit):
	say "A pink, skin-tight one-piece playsuit. The suit clings to the body to make sure it hides none of its curves. It has a playful pattern of unicorns and rainbows and flowers on it.".

To say ShortDesc of (C - unicorn-playsuit):
	say "playsuit".
To say MediumDesc of (C - unicorn-playsuit):
	say "pink unicorn playsuit".

To decide which number is the initial outrage of (C - unicorn-playsuit):
	decide on 5.
To decide which number is the initial cringe of (C - unicorn-playsuit):
	decide on 4.
To decide which number is the crotch-tightness of (C - unicorn-playsuit):
	decide on 5.

Part - Tongue Suit

tongue-suit is an bodysuit. tongue-suit is unique. tongue-suit is biological. The printed name of tongue-suit is "[clothing-title-before]tongue suit[clothing-title-after]". The text-shortcut of tongue-suit is "tgst". Understand "tongue", "suit" as tongue-suit.

tongue-suit is very low cut. tongue-suit is optional-top-displacable.

Figure of white tongue suit is the file "Items/Clothes/Upper/Dresses/Demonic/tonguesuit1a.png".
Figure of tonguing white tongue suit is the file "Items/Clothes/Upper/Dresses/Demonic/tonguesuit1b.png".
Figure of black tongue suit is the file "Items/Clothes/Upper/Dresses/Demonic/tonguesuit2a.png".
Figure of tonguing black tongue suit is the file "Items/Clothes/Upper/Dresses/Demonic/tonguesuit2b.png".

To decide which figure-name is the clothing-image of (C - tongue-suit):
	if tonguesBlack is true:
		if C is tonguing, decide on figure of tonguing black tongue suit;
		decide on figure of black tongue suit;
	otherwise:
		if C is tonguing, decide on figure of tonguing white tongue suit;
		decide on figure of white tongue suit.

To say ClothingDesc of (C - tongue-suit):
	say "A [tonguesColour], skin-tight suit that goes up to the neck and down to the crotch. The suit clings to the body to make sure it hides none of its curves, and it has a long strip missing down the middle to show off a lot of cleavage. Almost countless red tongues snake out from underneath the fabric. [TongueStatus of C]".

To say ShortDesc of (C - tongue-suit):
	say "tongued suit".

To say MediumDesc of (C - tongue-suit):
	say "skin hugging tongued catsuit".

Definition: tongue-suit is displacable: decide yes.

Definition: tongue-suit is demonic: decide yes.
Definition: tongue-suit is tongued: decide yes.
Definition: tongue-suit is transformation-protected: decide yes.
Definition: tongue-suit is white themed:
	if tonguesBlack is false, decide yes;
	decide no.
Definition: tongue-suit is black themed:
	if tonguesBlack is true, decide yes;
	decide no.

To decide which number is the initial outrage of (C - tongue-suit):
	if C is tonguing, decide on 18;
	decide on 8.

To compute periodic effect of (C - tongue-suit):
	if C is crotch-in-place and the player is prone and there is a reactive dangerous willing to do vaginal monster and tonguesActive > 0:
		say "[bold type][BigNameDesc of C] [bold type]uses its tongues to pull itself out of the way, completely of its own volition![roman type][line break]";
		displace C.

Part - Plugsuit

plugsuit is a bodysuit. plugsuit is latex. plugsuit is manly. plugsuit is bottom-exclusive. plugsuit is vagina plugging. The plug size of plugsuit is 2. The printed name of plugsuit is "[clothing-title-before]latex plugsuit[clothing-title-after]". The text-shortcut of plugsuit is "pst". Understand "suit" as plugsuit.

Definition: plugsuit is displacable: decide no.
Definition: plugsuit is black themed: decide yes.
Definition: plugsuit is fetish appropriate:
	if diaper quest is 0, decide yes;
	decide no.

Figure of plugsuit is the file "Items/Clothes/Upper/Latex/plugsuit1.jpg".

To decide which figure-name is clothing-image of (C - plugsuit):
	decide on figure of plugsuit.

To say ClothingDesc of (C - plugsuit):
	say "A black, skin-tight one-piece leotard. The suit clings to the body to make sure it hides none of its curves. A plug is inbuilt into the crotch of the garment, to ensure that anyone who wears the item has their [if the player is possessing a vagina][vagina][otherwise][asshole][end if] kept [if (the vaginal sex addiction of the player > 3 and the player is possessing a vagina) or (the anal sex addiction of the player > 3 and the player is not possessing a vagina)]nice and [end if]full.".

To compute SelfExamineDesc of (C - plugsuit):
	let F be a random fuckhole penetrated by C;
	say "Your neck to your crotch is covered by a [ShortDesc of C][if F is fuckhole]. Its in-built plug is keeping your [variable F] open and stimulated[end if].".

To say ShortDesc of (C - plugsuit):
	say "catsuit".
To say MediumDesc of (C - plugsuit):
	say "black latex plugsuit".

To decide which number is the initial outrage of (C - plugsuit):
	decide on 5.

Part - Purple Latex Bodysuit

purple rubber bodysuit is a bodysuit. purple rubber bodysuit is latex. purple rubber bodysuit is totally-exclusive. purple rubber bodysuit is neck covering. purple rubber bodysuit is erect-nipple-exposing. The printed name of purple rubber bodysuit is "[clothing-title-before]purple latex bodysuit[clothing-title-after]". The text-shortcut of purple rubber bodysuit is "plb".

purple rubber bodysuit has a number called top-transform.
purple rubber bodysuit has a number called bottom-transform.

Definition: purple rubber bodysuit is breast hiding:
	if the top-transform of it > 0, decide yes;
	decide no.

To decide which number is the initial outrage of (C - purple rubber bodysuit):
	let X be 2 + (5 * the top-transform of C);
	if the bottom-transform of C > 1, increase X by the bottom-transform of C;
	decide on X.

To decide which number is the crotch-tightness of (C - purple rubber bodysuit):
	if the bottom-transform of C > 0, decide on 5;
	decide on 2.

To decide which number is the sex-addiction-influence of (C - purple rubber bodysuit):
	if the bottom-transform of C >= 3, decide on 3;
	decide on 0.

Definition: purple rubber bodysuit is upgradable:
	if the bottom-transform of purple rubber bodysuit is 0:
		if the player is possessing a vagina or the player is ready for common event tg, decide yes;
	otherwise if the bottom-transform of purple rubber bodysuit < 3 and pregnancy fetish is 1 and the pregnancy of the player is 0:
		decide yes;
	otherwise if the top-transform of purple rubber bodysuit is 0:
		decide yes;
	decide no.
Definition: purple rubber bodysuit is transformation-protected:
	if it is not upgradable, decide yes;
	decide no.
Definition: purple rubber bodysuit is disintegration-protected: decide yes.
Definition: purple rubber bodysuit is loop-safe-upgradable:
	if it is upgradable, decide yes;
	decide no.
Definition: purple rubber bodysuit is transformation-theme-blockable: decide no. [It doesn't care about the theme it shares with other items.]
To decide which object is the unique-upgrade-target of (C - purple rubber bodysuit):
	decide on purple rubber bodysuit.
To decide which number is the transformability of (C - purple rubber bodysuit):
	decide on 20.

To transform (C - purple rubber bodysuit):
	if the bottom-transform of C is 0:
		now the bottom-transform of C is 1;
		if the player is not possessing a vagina:
			say "[DefaultSexchangeFlav]";
			SexChange the player;
		say "[BigNameDesc of C] tightens around your [vagina] until your [LabiaDesc] can clearly be seen in the form of a big fat cameltoe![line break][variable custom style][if the player is disgraced]How lewd![otherwise]You can't be serious!!![end if][roman type][line break]";
	otherwise if pregnancy fetish is 1 and the pregnancy of the player is 0 and the bottom-transform of C < 3:
		increase the bottom-transform of C by 1;
		if the bottom-transform of C is 2, say "The belly section of [NameDesc of C] morphs until it looks like a nine-months-pregnant belly! It's completely fake, of course, but nobody looking at you will know that - it'll instead look like you're carrying around a child and ready to pop![line break][variable custom style][if the player is proud]No! I don't want people to think I'm pregnant![otherwise if the player is not disgraced]Being pregnant isn't that shameful, but combined with the cameltoe it makes me look like a shameful whore...[otherwise]All the fun of looking like I'm knocked up with none of the baggage, I guess![end if][roman type][line break]";
		otherwise say "A pink mark appears on the fake pregnant belly of [NameDesc of C], shaped like a heart with a subtle womb theme, and glowing softly. Sexual thoughts and desires flood your mind.[line break][variable custom style]H-haaaah...[roman type][line break]";
	otherwise:
		now the top-transform of C is 1;
		now C is normally-nipple-covering;
		say "The chest section of [NameDesc of C] morphs until it looks like a comically giant pair of completely exposed breasts! It's completely fake, of course, but nobody looking at you will know that - it'll instead look like you're carrying around oversized melons on your chest![line break][variable custom style]I look like such a disgrace![roman type][line break]";
	update appearance level;
	force clothing-focus redraw. [This forces the clothing window to redraw]

To say ClothingDesc of (C - purple rubber bodysuit):
	say "This purple latex bodysuit hugs your figure tightly[if the bottom-transform of C > 0], especially the crotch which digs into your [vagina], giving you a permanent puffy cameltoe[end if][if the bottom-transform of C > 1]. The belly section has a massive exposed fake belly that makes you look nine months pregnant[end if][if the bottom-transform of C > 2] and comes with a glowing pink womb-themed heart sign on it which is flooding your head with sexual thoughts[end if][if the top-transform of C > 0]. The chest section has two gigantic exposed fake breasts that make you look like a walking cartoon pornstar[end if].".

Definition: purple rubber bodysuit is pregnancy themed:
	if the bottom-transform of it > 1, decide yes;
	decide no.
Definition: purple rubber bodysuit is boob themed:
	if the top-transform of it > 0, decide yes;
	decide no.

Definition: purple rubber bodysuit is displacable: decide no.
Definition: purple rubber bodysuit is purple themed: decide yes.
Definition: purple rubber bodysuit is fetish appropriate:
	if diaper quest is 1, decide no;
	if the player is possessing a vagina or the player is ready for common event TG, decide yes;
	decide no.

Part - Sequins Bodysuit

sequins bodysuit is a bodysuit. sequins bodysuit is low cut. sequins bodysuit is plastic.

The printed name of sequins bodysuit is usually "[clothing-title-before]sequins bodysuit[clothing-title-after]". The text-shortcut of sequins bodysuit is "sdr".

Figure of sequins bodysuit is the file "Items/Clothes/Upper/Special/sequinsbodysuit1.png".

To decide which figure-name is clothing-image of (C - sequins bodysuit):
	decide on figure of sequins bodysuit.

To say ClothingDesc of (C - sequins bodysuit):
	say "This bodysuit covers minimal skin with purple sequins.".

To compute SelfExamineDesc of (C - sequins bodysuit):
	say "A purple sequins bodysuit covers your bellybutton and rude bits. ".

To decide which number is the initial outrage of (C - sequins bodysuit):
	decide on 6.

To decide which number is the initial armour of (C - sequins bodysuit):
	decide on 6.

This is the remove inappropriate sequins bodysuit rule:
	now sequins bodysuit is in Holding Pen.
The remove inappropriate sequins bodysuit rule is listed in the diaper quest fix rules.

Definition: sequins bodysuit is layer-concealing: decide no.
Definition: sequins bodysuit is purple themed: decide yes.
Definition: sequins bodysuit is party themed: decide yes.
Definition: sequins bodysuit is gem themed: decide yes.
Definition: sequins bodysuit is star themed: decide yes.

Volume - Romper

A romper is a kind of bodysuit. A romper is usually leg covering. Understand "romper" as a romper.

To set up magic state of (C - a romper):
	now the raw-magic-modifier of C is 0.

Definition: a romper is displacable: decide no.
Definition: a romper is potentially erection concealing:
	if it is baby themed, decide yes;
	decide no. [non-tight loins conceal erections]

To decide which number is the crotch-tightness of (C - a romper):
	decide on 0. [hardly touches the vulva]

Definition: a romper is unskirted themed:
	if it is baby themed, decide yes;
	decide no.

Part 1 - Busy Patterned Romper

A busy patterned romper is a kind of romper. There is 1 busy patterned romper. The text-shortcut of busy patterned romper is "bpr". The printed name of busy patterned romper is usually "[clothing-title-before]busy patterned romper[clothing-title-after]".

Figure of busy patterned romper is the file "Items/Clothes/Upper/Rompers/romper1.png".

To decide which figure-name is clothing-image of (C - a busy patterned romper):
	decide on figure of busy patterned romper.

To say ClothingDesc of (C - a busy patterned romper):
	say "This black and white outfit is like a single-piece bodysuit that goes down to your ankles. It has quite a busy pattern, including a circular pattern over each butt-cheek, which serves to make them look [if the flesh volume of hips > 5]even [end if]larger than they are.".

To say ShortDesc of (C - a busy patterned romper):
	say "romper".
To say MediumDesc of (C - a busy patterned romper):
	say "busy black and white romper".

To decide which number is the initial outrage of (C - a busy patterned romper):
	decide on 3.
To decide which number is the crotch-tightness of (C - a busy patterned romper):
	decide on 2.

To decide which object is the unique-upgrade-target of (C - a busy patterned romper):
	if diaper quest is 1 and a random number between 1 and 2 is 1, decide on a random off-stage pink baby romper;
	decide on a random off-stage plaid skimpy romper.

Definition: a busy patterned romper is black themed: decide yes.
Definition: a busy patterned romper is white themed: decide yes.

Part 2 - Pink Baby Romper

A pink baby romper is a kind of romper. There is 1 transformation-rare pink baby romper. A pink baby romper is top-exclusive. The text-shortcut of pink baby romper is "pbr". The printed name of pink baby romper is usually "[clothing-title-before]pink baby romper[clothing-title-after]".

Figure of pink baby romper is the file "Items/Clothes/Upper/Rompers/romper2.png".

To decide which figure-name is clothing-image of (C - a pink baby romper):
	decide on figure of pink baby romper.

To say ClothingDesc of (C - a pink baby romper):
	say "This soft pink romper suit clearly looks like it's made for a baby girl. But it's in your size! It has a large zip down the middle.".

To say ShortDesc of (C - a pink baby romper):
	say "pink romper".
To say MediumDesc of (C - a pink baby romper):
	say "baby pink romper".

To decide which number is the initial outrage of (C - a pink baby romper):
	if diaper quest is 1, decide on 0;
	decide on the initial cringe of C.

To decide which number is the initial cringe of (C - a pink baby romper):
	decide on 6.

To decide which object is the unique-upgrade-target of (C - a pink baby romper):
	decide on a random off-stage cupcake baby romper.

Definition: a pink baby romper is pink themed: decide yes.
Definition: a pink baby romper is baby themed: decide yes.

Part 3 - Cupcake Baby Romper

A cupcake baby romper is a kind of romper. There is 1 transformation-rare cupcake baby romper. A cupcake baby romper is top-exclusive. The text-shortcut of cupcake baby romper is "cpr". The printed name of cupcake baby romper is usually "[clothing-title-before]cupcake baby romper[clothing-title-after]".

Figure of cupcake baby romper is the file "Items/Clothes/Upper/Rompers/romper3.png".

To decide which figure-name is clothing-image of (C - a cupcake baby romper):
	decide on figure of cupcake baby romper.

To say ClothingDesc of (C - a cupcake baby romper):
	say "This pink romper suit has a childish cupcake pattern and clearly looks like it's made for a baby girl. But it's in your size! It has a large zip down the middle.".

To say ShortDesc of (C - a cupcake baby romper):
	say "pink romper".
To say MediumDesc of (C - a cupcake baby romper):
	say "cupcake patterned baby pink romper".

To decide which number is the initial outrage of (C - a cupcake baby romper):
	if diaper quest is 1, decide on 0;
	decide on the initial cringe of C.

To decide which number is the initial cringe of (C - a cupcake baby romper):
	decide on 7.

To decide which object is the unique-upgrade-target of (C - a cupcake baby romper):
	decide on a random off-stage yellow baby romper.

Definition: a cupcake baby romper is food themed: decide yes.
Definition: a cupcake baby romper is pink themed: decide yes.
Definition: a cupcake baby romper is baby themed: decide yes.

Part 4 - Yellow Baby Romper

A yellow baby romper is a kind of romper. There is 1 transformation-rare yellow baby romper. A yellow baby romper is top-exclusive. The text-shortcut of yellow baby romper is "ybr". The printed name of yellow baby romper is usually "[clothing-title-before]yellow baby romper[clothing-title-after]".


Figure of yellow baby romper is the file "Items/Clothes/Upper/Rompers/romper4.png".

To decide which figure-name is clothing-image of (C - a yellow baby romper):
	decide on figure of yellow baby romper.

To say ClothingDesc of (C - a yellow baby romper):
	say "This yellow romper suit has loose pink pockets and a peter pan collar. It clearly looks like it's made for a baby girl, but it's in your size! It has line of popper buttons the middle.".

To say ShortDesc of (C - a yellow baby romper):
	say "yellow romper".
To say MediumDesc of (C - a yellow baby romper):
	say "yellow baby romper".

To decide which number is the initial outrage of (C - a yellow baby romper):
	if diaper quest is 0, decide on the initial cringe of C;
	decide on 0.

To decide which number is the initial cringe of (C - a yellow baby romper):
	decide on 8.

Definition: a yellow baby romper is end of transformation chain: decide yes.
Definition: a yellow baby romper is babywear: decide yes.
Definition: a yellow baby romper is yellow themed: decide yes.
Definition: a yellow baby romper is baby themed: decide yes.

Part 5 - Pink Hooded Romper

[this item only appears in a predicament, then disappears again]
pink-hooded-romper is a bodysuit. pink-hooded-romper is unique. pink-hooded-romper is only arm covering. The text-shortcut of pink-hooded-romper is "phr". The printed name of pink-hooded-romper is "[clothing-title-before]pink hooded romper[clothing-title-after]". Understand "pink", "hooded", "romper" as pink-hooded-romper.

Figure of pink-hooded-romper is the file "Items/Clothes/Upper/Rompers/romper7.png".

To decide which figure-name is clothing-image of (C - pink-hooded-romper):
	decide on figure of pink-hooded-romper.

To say ClothingDesc of (C - pink-hooded-romper):
	say "This pink romper suit has long sleeves, furry wrists and legholes, and a furry hood.".

To say ShortDesc of (C - pink-hooded-romper):
	say "pink romper".
To say MediumDesc of (C - pink-hooded-romper):
	say "pink hooded romper".

To decide which number is the initial outrage of (C - pink-hooded-romper):
	if diaper quest is 0, decide on the initial cringe of C;
	decide on 2.

To decide which number is the initial cringe of (C - pink-hooded-romper):
	decide on 6.

Definition: pink-hooded-romper is fetish appropriate: decide no.
Definition: pink-hooded-romper is baby themed: decide yes.
Definition: pink-hooded-romper is pink themed: decide yes.

Part - Plaid Skimpy Romper

plaid skimpy romper is a romper. plaid skimpy romper is leg exposing. plaid skimpy romper is arm exposing. plaid skimpy romper is average cut. The text-shortcut of plaid skimpy romper is "psr". The printed name of plaid skimpy romper is "[clothing-title-before]plaid skimpy romper[clothing-title-after]".

Definition: plaid skimpy romper is yellow themed: [Is it significantly yellow?]
	decide yes.

Definition: plaid skimpy romper is tartan themed: [Is it tartan patterned?]
	decide yes.

Figure of plaid skimpy romper is the file "Items/Clothes/Upper/Rompers/romper6.png".

To decide which figure-name is clothing-image of (C - plaid skimpy romper):
	decide on figure of plaid skimpy romper.

To say ClothingDesc of (C - plaid skimpy romper):
	say "This yellow red and navy onepiece item is rather skimpy, showing off [if C is worn]your[otherwise]the wearer's[end if] shoulders, arms and hips.".

To say ShortDesc of (C - plaid skimpy romper):
	say "plaid skimpy romper".

To decide which number is the initial outrage of (C - plaid skimpy romper):
	decide on 4.
To decide which number is the adult-influence of (C - plaid skimpy romper):
	decide on 3.
To decide which number is the crotch-tightness of (C - plaid skimpy romper):
	decide on 2.

Definition: plaid skimpy romper is displacable: decide yes.

To decide which object is the unique-upgrade-target of (C - plaid skimpy romper):
	if diaper quest is 1, decide on a random off-stage yellow baby romper;
	decide on nothing.

Part - Tight Green Romper

tight-green-romper is a romper. tight-green-romper is leg exposing. tight-green-romper is bottom-exclusive. tight-green-romper is average cut. tight-green-romper is normally-partially-nipple-covering. The text-shortcut of tight-green-romper is "tgr". The printed name of tight-green-romper is "[clothing-title-before]tight green romper[clothing-title-after]". Understand "tight", "green" as tight-green-romper.

Definition: tight-green-romper is green themed: decide yes.

Figure of tight-green-romper is the file "Items/Clothes/Upper/Rompers/romper8.png".

To decide which figure-name is clothing-image of (C - tight-green-romper):
	decide on figure of tight-green-romper.

To say ClothingDesc of (C - tight-green-romper):
	say "This longsleeved green romper is so figure-hugging that it can't even hide the contours of [if C is worn]your[otherwise]the wearer's[end if] nipples or crotch.".

To say ShortDesc of (C - tight-green-romper):
	say "tight green romper".

To decide which number is the initial outrage of (C - tight-green-romper):
	decide on 5.
To decide which number is the adult-influence of (C - tight-green-romper):
	decide on 1.
To decide which number is the crotch-tightness of (C - tight-green-romper):
	decide on 5.

To decide which object is the unique-upgrade-target of (C - tight-green-romper):
	if diaper quest is 0, decide on lycra-bodysuit;
	decide on nothing.

Part - Tight Grey Romper

tight-grey-romper is a romper. tight-grey-romper is bottom-exclusive. tight-grey-romper is leg exposing. tight-grey-romper is arm exposing. tight-grey-romper is average cut. tight-grey-romper is normally-partially-nipple-covering. The text-shortcut of tight-grey-romper is "tgyr". The printed name of tight-grey-romper is "[clothing-title-before]tight grey romper[clothing-title-after]". Understand "tight", "grey" as tight-grey-romper.

Definition: tight-grey-romper is grey themed: decide yes.

Figure of tight-grey-romper is the file "Items/Clothes/Upper/Rompers/romper9.png".

To decide which figure-name is clothing-image of (C - tight-grey-romper):
	decide on figure of tight-grey-romper.

To say ClothingDesc of (C - tight-grey-romper):
	say "This longsleeved grey romper is so figure-hugging that it can't even hide the contours of [if C is worn]your[otherwise]the wearer's[end if] nipples or crotch.".

To say ShortDesc of (C - tight-grey-romper):
	say "tight grey romper".

To decide which number is the initial outrage of (C - tight-grey-romper):
	decide on 5.
To decide which number is the adult-influence of (C - tight-grey-romper):
	decide on 1.
To decide which number is the crotch-tightness of (C - tight-grey-romper):
	decide on 5.

Volume - Jumpsuit

A jumpsuit is a kind of bodysuit. A jumpsuit is usually leg covering. A jumpsuit is usually only arm covering. A jumpsuit is usually zippable. A jumpsuit is usually top-exclusive.

Definition: a jumpsuit is end of transformation chain: decide yes.
Definition: a jumpsuit is difficult to don: decide yes. [Does it take 2 turns to wear]

To compute SelfExamineDesc of (C - a jumpsuit):
	say "Your neck to your feet is covered by a [ShortDesc of C]. ".

Part - Latex Bodysuit

rubber-jumpsuit is a jumpsuit. The printed name of rubber-jumpsuit is "[clothing-title-before]latex bodysuit[clothing-title-after]".
rubber-jumpsuit is sheer. rubber-jumpsuit is neck covering. rubber-jumpsuit is latex. rubber-jumpsuit is manly. The text-shortcut of rubber-jumpsuit is "lab". Understand "bodysuit" as rubber-jumpsuit.

Figure of latex bodysuit 1 is the file "Items/Clothes/Upper/Latex/bodysuit1.png".

To decide which figure-name is clothing-image of (C - rubber-jumpsuit):
	decide on figure of latex bodysuit 1.

To say ClothingDesc of (C - rubber-jumpsuit):
	say "A cream coloured translucent skin-tight suit that stretches up to the neck and down to the feet. The suit clings to the body to make sure it hides none of its curves, and it has a zipper at the crotch. Frills at the neck prevent the wearing of any other neckwear. The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...".

To say ShortDesc of (O - rubber-jumpsuit):
	say "latex bodysuit".
To say MediumDesc of (O - rubber-jumpsuit):
	say "skin hugging cream latex bodysuit".

Part - Full Body Baby Romper

full body babyromper is a jumpsuit. full body babyromper is transformation-rare. The text-shortcut of full body babyromper is "fbbr". Understand "baby", "romper" as full body babyromper.

The printed name of full body babyromper is "[clothing-title-before]full body baby romper[clothing-title-after]".

Figure of full body babyromper is the file "Items/Clothes/Upper/Rompers/romper5.png".

To decide which figure-name is clothing-image of (C - full body babyromper):
	decide on figure of full body babyromper.

Definition: full body babyromper is babywear: decide yes.
Definition: full body babyromper is bear themed: decide yes.
Definition: full body babyromper is cat themed: decide yes.
Definition: full body babyromper is bow themed: decide yes.
Definition: full body babyromper is drink themed: decide yes.
Definition: full body babyromper is pink themed: decide yes.

To say ClothingDesc of (C - full body babyromper):
	say "This snug pink romper stretches all the way down [if C is worn]your[otherwise]the wearer's[end if] arms and legs. A colourful pattern of rubber ducks, smiling suns, teddies, sippy cups and socks leaves no doubt as to the age appropriateness of the garment.".

To say ShortDesc of (O - full body babyromper):
	say "baby romper".
To say MediumDesc of (O - full body babyromper):
	say "full body baby romper".

To decide which number is the initial outrage of (C - full body babyromper):
	if diaper quest is 0, decide on 6;
	decide on 0.

To decide which number is the initial cringe of (C - full body babyromper):
	decide on 12.

Part - Wrestler Suit

wrestler-jumpsuit is a jumpsuit. wrestler-jumpsuit is latex. wrestler-jumpsuit is unique. wrestler-jumpsuit is manly. The text-shortcut of wrestler-jumpsuit is "wbs". Understand "wrestler", "bodysuit" as wrestler-jumpsuit.

Definition: wrestler-jumpsuit is class-relevant:
	if the class of the player is latex fetish model or the class of the player is superhero, decide yes;
	decide no.

The printed name of wrestler-jumpsuit is "[clothing-title-before]wrestler bodysuit[clothing-title-after]".

Figure of wrestler suit is the file "Items/Clothes/Upper/Latex/wrestlersuit1.png".

To decide which figure-name is clothing-image of (C - wrestler-jumpsuit):
	decide on figure of wrestler suit.

To say ClothingDesc of (C - wrestler-jumpsuit):
	say "A black and purple skin-tight suit that stretches up to the neck and down to the feet. The suit clings to the body to make sure it hides none of its curves, and it has a zipper at the crotch. The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off[if C is worn]. You can sense that it is helping you hold back orgasm when you [bold type]resist[roman type][end if].".

To say ShortDesc of (O - wrestler-jumpsuit):
	say "wrestler suit".

Definition: wrestler-jumpsuit is black themed: decide yes.
Definition: wrestler-jumpsuit is purple themed: decide yes.
Definition: wrestler-jumpsuit is exercise themed: decide yes.

Part - Superheroine Outfit

superheroine outfit is a jumpsuit. superheroine outfit is manly. superheroine outfit is rare. superheroine outfit is nylon. superheroine outfit is low cut. superheroine outfit is not-top-displacable. superheroine outfit is erect-nipple-exposing. The text-shortcut of superheroine outfit is "bso".

The printed name of superheroine outfit is "[clothing-title-before]superheroine outfit[clothing-title-after]".

Figure of superheroine outfit is the file "Items/Clothes/Upper/Special/Hero/Xheroine1.png".

To decide which figure-name is clothing-image of (C - superheroine outfit):
	decide on figure of superheroine outfit.

Definition: superheroine outfit is class-relevant:
	if the class of the player is superhero, decide yes;
	decide no.

To decide which number is the strength-influence of (C - superheroine outfit):
	let S be -1;
	increase S by the magic-modifier of C;
	if diaper quest is 1:
		let D be a random worn diaper;
		if D is diaper, increase S by 1 + (the soak-limit of D / 10);
	otherwise if C is currently uncovered:
		increase S by the largeness of breasts / 3;
	decide on S.

To say ClothingDesc of (C - superheroine outfit):
	say "This blue lycra jumpsuit has a large X cut out at the chest, in order to expose a lot of cleavage. It is styled in a western superheroine fashion.";
	if diaper quest is 1, say "[if the noun is worn]You somehow know by instinct that the strength of the outfit depends on the thickness of your diaper.[end if]";
	otherwise say "[if saved-flat-intelligence > 9]You realise that the cleavage window is probably the secret to its magic power. [end if][if saved-flat-intelligence > 15]The larger your breasts, the more strength this will give you.[end if]".

To say ShortDesc of (C - superheroine outfit):
	say "lycra outfit".
To say MediumDesc of (C - superheroine outfit):
	say "blue superheroine outfit".

Report wearing superheroine outfit when there is a worn diaper:
	cutshow figure of superhero cutscene 1 for the noun.

Definition: superheroine outfit is titfuck protection: decide no.
Definition: superheroine outfit is blue themed: decide yes.
Definition: superheroine outfit is boob themed: decide yes.
Definition: superheroine outfit is disintegration-protected: decide yes.
Definition: superheroine outfit is displacable: decide no.

Volume - Catsuit

A catsuit is a kind of jumpsuit. A catsuit is usually latex. A catsuit is usually transformation-rare. A catsuit is usually manly. A catsuit is usually crotch-exposing. The printed name of catsuit is usually "[clothing-title-before]latex catsuit[clothing-title-after]". The text-shortcut of catsuit is "cst". Understand "cat", "suit", "catsuit" as catsuit. A catsuit is usually unzippable.

To say ShortDesc of (C - a catsuit):
	say "catsuit".

To set up magic attribute of (C - a catsuit):
	if C is cursed:
		if a random number between 1 and 2 is 1, now C is posture training;
	otherwise:
		let R be a random number between 1 and 3;
		if R is 2, now C is elasticity;
		if R is 3, now C is speed.

To decide which number is the dexterity-influence of (C - a catsuit):
	let D be 0;
	if C is not cursed: [When not cursed, this increases dexterity by the number of all other latex items.]
		increase D by the magic-modifier of C;
		increase D by the number of worn latex clothing - 1;
	decide on D.

Definition: a catsuit is displacable: decide no.

To decide which number is the initial outrage of (C - a catsuit):
	decide on 7.

Figure of Latex Catsuit 1 is the file "Items/Clothes/Upper/Latex/latexcatsuit1.png".
Figure of Latex Catsuit 3 is the file "Items/Clothes/Upper/Latex/latexcatsuit3.png".

outrageous-catsuit is a humiliating situation.
Definition: outrageous-catsuit (called A) is applicable:
	let B be a random worn catsuit;
	let O be the outrage of B;
	if B is crotch covering or B is not fully exposing, decide no; [e.g. pink catsuit]
	if the player is not disgraced and O is too humiliating and (penis is exposed or vagina is exposed), decide yes;
	decide no.
To reflect on (A - outrageous-catsuit):
	let B be a random worn catsuit;
	if the player is not a pervert:
		say "[first custom style][one of]If anyone I know ever sees photos of me in this catsuit, [if the player is possessing a vagina]with my tits and [vagina] on full display, [end if]I will be so mortified that I will just curl up into a ball and die.[or]Everyone can see my [genitals]... this catsuit is just so pointless![stopping]";
	otherwise if the dexterity-influence of B > 0 and the player is a pervert:
		say "[second custom style][one of]I know this catsuit is completely outrageous, but I do somehow feel more flexible![or]This naughty catsuit just makes me feel so limber![stopping]";
	otherwise:
		say "[variable custom style][one of]This catsuit has holes specifically for my chest and [genitals]. This must be the sluttiest item of clothing ever made.[or]I need to get this catsuit off as soon as possible, before someone else sees me![stopping]".

To say FriendReaction of (M - a real-life patron) to (A - outrageous-catsuit):
	if M is friend-shocked:
		say "... Do you like walking around with your genitals on display like that? ";
	otherwise:
		say "[if M is nemesis-friend]It doesn't surprise me that a whore like you would walk around with [his of the player] genitals on display like that.[otherwise]... I don't know why I'm not shocked to see you with your genitals on display like that. Ugh. [end if]".

Part 1 - Pink Catsuit

pink-catsuit is a catsuit. pink-catsuit is very low cut. pink-catsuit is womanly. pink-catsuit is crotch-intact. pink-catsuit is plentiful. pink-catsuit is optional-top-displacable. The printed name of pink-catsuit is "[clothing-title-before]pink latex catsuit[clothing-title-after]". The text-shortcut of pink-catsuit is "pcs". pink-catsuit is zippable.

Definition: pink-catsuit is pink themed: decide yes.

To decide which figure-name is clothing-image of (C - pink-catsuit):
	decide on figure of latex catsuit 3.

To say ClothingDesc of (C - pink-catsuit):
	say "A pink, skin-tight suit that goes up to the neck and down to the ankles. The suit clings to the body to make sure it hides none of its curves, and it has a long strip missing down the middle to show off a lot of cleavage. [if C is not worn]The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...[end if][line break]".

To compute SelfExamineDesc of (C - pink-catsuit):
	say "Your neck to your ankles is covered by a [MediumDesc of C]. ".

To say MediumDesc of (C - pink-catsuit):
	say "skin hugging pink latex catsuit".

To decide which number is the initial outrage of (C - pink-catsuit):
	decide on 6.

Part 2 - Black Catsuit

black-catsuit is a catsuit. black-catsuit is fully exposing. The printed name of black-catsuit is "[clothing-title-before]black latex catsuit[clothing-title-after]". The text-shortcut of black-catsuit is "bcs". Understand "black" as black-catsuit.

To compute class set up of (C - black-catsuit):
	now C is cursed.

To decide which figure-name is clothing-image of (C - black-catsuit):
	decide on Figure of Latex Catsuit 1.

To say ClothingDesc of (C - black-catsuit):
	say "A black, skin-tight suit that goes up to the neck and down to the ankles. The suit clings to the body to make sure it hides none of its curves, and it has holes for breasts and is crotchless at the back, meaning it fails to cover all of one's most sensitive parts! [if the largeness of breasts > 6]It would definitely do nothing to support your [BreastDesc]. [end if][if C is not worn]The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...[end if][line break]".

To compute SelfExamineDesc of (C - black-catsuit):
	say "Your neck to your ankles (except your tits and crotch) is covered by a [MediumDesc of C]. ".

To say MediumDesc of (O - black-catsuit):
	say "skin hugging black latex catsuit".

Report wearing latex clothing:
	repeat with B running through worn cursed latex clothing:
		if the noun is black-catsuit or B is black-catsuit: [cursed latex clothing sticks to each other if at least one is black-catsuit]
			if the noun is not B:
				if the noun is pasties, say "Your [printed name of B] shivers, and thin strands of plastic shoot out of its edges in all four directions, connecting it to the catsuit.";
				otherwise say "Your [printed name of B] seem to melt into your [printed name of the noun] to form one item of clothing... uh-oh.";
				fully curse the noun;
				fully curse B.

Definition: black-catsuit is black themed: decide yes.

Part 3 - WC Catsuit

WC catsuit is a catsuit. WC catsuit is arm exposing. The printed name of WC catsuit is "[clothing-title-before]latex human toilet catsuit[clothing-title-after]". Understand "human", "human toilet" as WC catsuit. WC catsuit is unique. The text-shortcut of WC catsuit is "wcs". WC catsuit is oral-sex-addiction-influencing.

Definition: WC catsuit is class-relevant:
	if the class of the player is human toilet, decide yes;
	decide no.

To compute class set up of (C - WC catsuit):
	now the raw-magic-modifier of C is 2;
	now C is speed.

To say ClassSummonFlav of (C - WC catsuit):
	say "A white catsuit materialises over your body![line break][variable custom style][if the player is not disgraced]Holy crap, is this icon on the front what I think it is?![otherwise]Oh, I get what this icon on the front means. I'm a human toilet now![end if][roman type][line break]".

Figure of WC catsuit is the file "Items/Clothes/Upper/Special/WcLatexCat.png".

To decide which figure-name is clothing-image of (C - WC catsuit):
	decide on figure of WC catsuit.

Definition: WC catsuit is toilet themed: decide yes.
Definition: WC catsuit is white themed: decide yes.

[!<TheWCCatsuitPissSlutRule>+

Significantly increases the chances of urination.

+!]
This is the WC catsuit piss slut rule:
	if WC catsuit is worn, increase the desirability of belly by 20.
The WC catsuit piss slut rule is listed in the piss slut eligibility rules.

To say ClothingDesc of (C - WC catsuit):
	say "A white, skin-tight suit that goes up to the neck and down to the knees. The suit clings to the body to make sure it hides none of its curves, and it has a massive gap at the crotch, leaving the wearer completely exposed! Even worse, the catsuit has stick figures of a man and a woman printed on the chest, much like you would see at the entrance to a public toilet. You can sense that it has the magic power to enhance the wearer's mind if they allow themselves to get pissed on[if C is not worn]. The rubbery nature of the suit and the long arms ending in latex gloves mean it would take a long time to take on and off...[otherwise].[end if][line break]".

To compute SelfExamineDesc of (C - WC catsuit):
	say "Your neck to your knees (except your crotch) is covered by a [MediumDesc of C]. ".

To say MediumDesc of (O - WC catsuit):
	say "white [']human toilet['] catsuit".

To decide which number is the initial outrage of (C - WC catsuit):
	decide on 16.

Part - Lycra Bodysuit

lycra-bodysuit is a catsuit. lycra-bodysuit is transformation-rare. lycra-bodysuit is low cut. lycra-bodysuit is optional-top-displacable. lycra-bodysuit is crotch-exposing. lycra-bodysuit is unskirted. lycra-bodysuit is leg covering. lycra-bodysuit is only arm covering. lycra-bodysuit is lycra. The printed name of lycra-bodysuit is "[clothing-title-before]lycra bodysuit[clothing-title-after]". The text-shortcut of lycra-bodysuit is "lyb". lycra-bodysuit is see-through. Understand "bodysuit" as lycra-bodysuit.

Figure of lycra-bodysuit is the file "Items/Clothes/Upper/Exposing/lycrabodysuit1.png".

To decide which figure-name is clothing-image of (C - lycra-bodysuit):
	decide on figure of lycra-bodysuit.

To say ClothingDesc of (C - lycra-bodysuit):
	say "A neon green lycra bodysuit which goes to the wrists and ankles. The low cleavage cut is pointless considering that the whole item is pretty much see-through, and a hole at the crotch leaves [if C is worn]your[otherwise]the wearer's[end if] crotch completely uncovered[if C is in Toilet01 and the used condoms of C > 0]. It seems that your anonymous gloryhole lovers have been pinning their used condoms to the waist[end if].".

To say ShortDesc of (C - lycra-bodysuit):
	say "neon green bodysuit".

To decide which number is the initial outrage of (C - lycra-bodysuit):
	decide on 6.

Definition: lycra-bodysuit is class-transformation-protected:
	if the class of the player is cumdumpster, decide yes;
	decide no.
Definition: lycra-bodysuit is green themed: decide yes.


Volume - Leotard

A leotard is a kind of bodysuit. A leotard is usually sheer-when-wet. A leotard is usually erect-nipple-exposing. A leotard has a number called charge.

Definition: a leotard is ballet related: decide yes.
Definition: a leotard is sissifying: decide yes.

To set up influence of (C - a leotard):
	now C is dexterity-influencing.

To decide which number is the initial cringe of (C - a leotard):
	decide on 5.

To decide which number is the heel-skill-influence of (O - a leotard):
	let X be 2;
	increase X by the magic-modifier of O;
	decide on X.

To compute periodic effect of (L - a leotard):
	[ballerina stuff]
	increase the charge of L by 1;
	if the charge of L > 200:
		now the charge of L is 0;
		let S be a random off-stage plentiful ballet shoes;
		if ballet heels is off-stage and the raw heel skill of the player > 5 and ballet heels is actually summonable:
			say "[bold type]Your leotard glows powerfully, and extremely high heeled ballet shoes appear on your feet[if the player is upright]. You feel yourself forced to stand on tip-toes! Uh-oh...[otherwise].[end if][roman type][line break]";
			summon ballet heels cursed with quest;
		otherwise if S is actually summonable:
			say "[bold type]Your leotard glows softly, and ballet shoes appear on your feet[if the player is upright]. You feel yourself forced to stand on tip-toes![otherwise].[end if][roman type][line break]";
			summon S cursed with quest.

To decide which object is the unique-upgrade-target of (C - a leotard):
	if a random number between 1 and 2 is 1 and C is not sexy blue leotard, decide on a random off-stage sexy blue leotard;
	if diaper focus is 0 and ballet corset is off-stage, decide on ballet corset;
	otherwise decide on a random off-stage teddybear playsuit.

To compute SelfExamineDesc of (C - a leotard):
	say "You are wearing a [ShortDesc of C]. ".

To decide which number is the initial outrage of (C - a leotard):
	decide on 3.
To decide which number is the crotch-tightness of (C - a leotard):
	decide on 3.

A pink leotard is a kind of leotard. A pink leotard is top-exclusive.

The printed name of pink leotard is usually "[clothing-title-before]pink leotard[clothing-title-after]". The text-shortcut of pink leotard is "ple".

Figure of pink leotard is the file "Items/Clothes/Upper/Leotards/leotard1.png".

There is 1 pink leotard.

To decide which figure-name is clothing-image of (C - a pink leotard):
	decide on figure of pink leotard.

To say ShortDesc of (C - a pink leotard):
	say "pink leotard".
To say MediumDesc of (C - a pink leotard):
	say "pretty pink leotard with frilly tutu".
To say ClothingDesc of (C - a pink leotard):
	say "A pink ballerina's leotard with a frilly tutu.[if C is crotch-ripped]A rip at the bottom of the leotard means that it unfortunately doesn't protect the crotch region.[end if]".

Definition: a pink leotard is pink themed: decide yes.
Definition: a pink leotard is potentially erection concealing: decide yes. [frills conceal erections]
To decide which number is the crotch-tightness of (C - a pink leotard):
	decide on 0.  [frills conceal cameltoes]


A sexy blue leotard is a kind of leotard.
The printed name of sexy blue leotard is usually "[clothing-title-before]sexy blue leotard[clothing-title-after]". The text-shortcut of sexy blue leotard is "ble".

There is 1 transformation-rare sexy blue leotard.

Definition: a sexy blue leotard is star themed: decide yes.
Definition: a sexy blue leotard is blue themed: decide yes.

To decide which number is the initial outrage of (C - a sexy blue leotard):
	decide on 5.

Figure of sexy blue leotard is the file "Items/Clothes/Upper/Leotards/leotard2.png".
To decide which figure-name is clothing-image of (C - a sexy blue leotard):
	decide on figure of sexy blue leotard.

To say ShortDesc of (C - a sexy blue leotard):
	say "blue leotard".
To say MediumDesc of (C - a sexy blue leotard):
	say "sexy blue leotard with star pasties".
To say ClothingDesc of (C - a sexy blue leotard):
	say "A blue leotard which is so sheer that it would reveal everything if it wasn't the for opaque stars over each nipple and the crotch.[if C is crotch-ripped]A rip at the bottom of the leotard means that it unfortunately doesn't protect the crotch region.[end if]".


wing leotard is a leotard. wing leotard is very low cut. wing leotard is unique.
The printed name of wing leotard is "[clothing-title-before]wing themed leotard[clothing-title-after]".Understand "themed" as wing leotard. The text-shortcut of wing leotard is "wle".

The tradability of wing leotard is 7.
The raw-magic-modifier of wing leotard is 1.

Definition: wing leotard is inflation themed: decide yes.

Figure of wing leotard is the file "Items/Clothes/Upper/Leotards/leotard3.png".
To decide which figure-name is clothing-image of (C - wing leotard):
	decide on figure of wing leotard.

To say ShortDesc of (C - wing leotard):
	say "wing themed leotard".
To say MediumDesc of (C - wing leotard):
	say "partially sheer wing themed leotard".
To say ClothingDesc of (C - wing leotard):
	say "A beige leotard which is so sheer that it would reveal everything if it wasn't the for opaque white wing pattern over the chest and another white patch at the crotch.[if C is crotch-ripped]A rip at the bottom of the leotard means that it unfortunately doesn't protect the crotch region.[end if]".

Bodysuit ends here.
