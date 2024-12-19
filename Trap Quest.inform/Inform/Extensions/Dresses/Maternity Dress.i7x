Maternity Dress by Dresses begins here.

A maternity dress is a kind of overdress. A maternity dress is unique. A maternity dress is absorption. A maternity dress is fully covering. A maternity dress is vaginal-sex-addiction-influencing. The skirt-length of a maternity dress is 7.

Figure of Maternity Dress is the file "Items/Clothes/Upper/Special/maternitydress1.png". A maternity dress has a number called charge.

The printed name of maternity dress is "[clothing-title-before]maternity dress[clothing-title-after]". The text-shortcut of maternity dress is "md".

There is 1 maternity dress.

To decide which figure-name is clothing-image of (C - a maternity dress):
	decide on figure of maternity dress.

To say ClothingDesc of (C - a maternity dress):
	say "This very pale blue free flowing dress has lots of spare room, to allow it to accommodate even the largest of pregnant bellies. You feel like you can detect a small amount of magical force emanating from the dress.".

Definition: a maternity dress is pregnancy themed: decide yes.
Definition: a maternity dress is disintegration-protected: decide yes.
Definition: a maternity dress is class-transformation-protected:
	if the pregnancy of the player > 0, decide yes;
	decide no.
Definition: a maternity dress is grey themed: decide yes.
Definition: a maternity dress is blue themed: decide yes.
Definition: a maternity dress is potentially erection concealing: decide yes. [non-tight skirts conceal erections]

To compute SelfExamineDesc of (O - a maternity dress):
	say "A [ShortDesc of O] clings to your [if the pregnancy of the player > 0]pregnant belly. [otherwise]belly. [end if]".

To say ShortDesc of (C - a maternity dress):
	say "maternity dress".
To say MediumDesc of (C - a maternity dress):
	say "modest maternity dress".

To decide which number is the initial outrage of (C - a maternity dress):
	decide on 2.

To decide which object is the unique-upgrade-target of (C - a maternity dress):
	if the pregnancy of the player > 0, decide on a random off-stage I'm knocked up T-shirt;
	decide on nothing.

To uniquely set up (M - a maternity dress):
	if lactation fetish is 1, now M is milk production.

To compute periodic effect of (M - a maternity dress):
	[Certain items cause perfect absorption]
	if lactation fetish is 1:
		if there is a worn absorption bra or there is a worn yoga pants:
			if M is dirty:
				say "Your [printed name of M] magically cleans itself of all the [fluids of M]!";
				clean M;
			repeat with B running through worn dirty absorption bras:
				say "Your [printed name of M] magically cleans your [printed name of B] of all the [fluids of B]!";
				clean B;
			repeat with B running through worn dirty yoga pants:
				say "Your [printed name of M] magically cleans your [printed name of B] of all the [fluids of B]!";
				clean B;
	[Maternity dress can spawn yoga pants]
	increase the charge of M by 1;
	if the charge of M > 500 / (unlucky + 1):
		now the charge of M is 0;
		let Y be a random off-stage yoga pants;
		if Y is actually summonable:
			say "[bold type]A [ShortDesc of Y] appears on your lower half![roman type][line break]";
			summon Y cursed with quest.

This is the remove inappropriate maternity dresses rule:
	repeat with B running through maternity dresses:
		now B is in Holding Pen.
The remove inappropriate maternity dresses rule is listed in the diaper quest fix rules.

To LiquidSoak (L - semen) On (C - a maternity dress):
	SemenSoakUp C by 1;
	if C is not cursed:
		say "A dark glow surrounds your [ShortDesc of C] as the [semen] makes it become cursed!";
		now C is cursed;
		now C is sure.

To decide which number is the slap damage improvement of (E - a maternity dress):
	let S be the square root of (the womb volume of vagina + total egg count of vagina);
	if the pregnancy of the player > 0 and shopkeeper is the father, increase S by 1;
	decide on S.


Part - Tight Grey Dress

tight-grey-dress is an overdress. tight-grey-dress is bottom-exclusive. tight-grey-dress is only arm covering. tight-grey-dress is not-top-displacable. tight-grey-dress is high cut. tight-grey-dress is normally-partially-nipple-covering. The text-shortcut of tight-grey-dress is "tgyd". The printed name of tight-grey-dress is "[clothing-title-before]tight grey dress[clothing-title-after]". Understand "tight", "grey", "dress" as tight-grey-dress.

Definition: tight-grey-dress is grey themed: decide yes.
To decide which number is the stealth-influence of (C - tight-grey-dress):
	if C is sneaking, decide on 4;
	decide on 1.

Figure of tight grey dress is the file "Items/Clothes/Upper/Dresses/tight1.png".

To decide which figure-name is clothing-image of (C - tight-grey-dress):
	decide on figure of tight grey dress.

To say ClothingDesc of (C - tight-grey-dress):
	say "This short-sleeved grey dress is so figure-hugging that it can't even hide the contours of [if C is worn]your[otherwise]the wearer's[end if] nipples. But it is a dark, plain colour, so it may perhaps help you to remain unnoticed in a dark corner.".

To say ShortDesc of (C - tight-grey-dress):
	say "tight grey dress".

To decide which number is the initial outrage of (C - tight-grey-dress):
	decide on 3.

A diaper quest fix rule:
	now tight-grey-dress is in Holding Pen;

Maternity Dress ends here.
