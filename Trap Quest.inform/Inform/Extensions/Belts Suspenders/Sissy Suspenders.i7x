Sissy Suspenders by Belts Suspenders begins here.

a sissy-suspenders is a kind of suspenders. There is 1 unique sissy-suspenders. A sissy-suspenders is usually silk. The printed name of a sissy-suspenders is usually "[TQlink of item described][clothing-title-before]pair of sissy-suspenders[clothing-title-after][TQxlink of item described][verb-desc of item described]". The printed plural name of a sissy-suspenders is usually "[TQlink of item described][clothing-title-before]pairs of sissy suspenders[clothing-title-after][TQxlink of item described][verb-desc of item described]". Figure of sissy-suspenders is the file "Items/Clothes/Lower/Waist/Suspenders/suspenders2.png". The text-shortcut of sissy-suspenders is "sss". Understand "sissy", "suspenders" as sissy-suspenders.

To decide which figure-name is clothing-image of (C - a sissy-suspenders):
	decide on figure of sissy-suspenders.

To say ClothingDesc of (S - a sissy-suspenders):
	say "A hyper-feminine set of pink silky and frilly suspenders.".
	
To say ShortDesc of (S - a sissy-suspenders):
	say "pink sissy suspenders".

Definition: a sissy-suspenders (called C) is sissifying:
	decide yes.

To decide which number is the initial outrage of (C - a sissy-suspenders):
	decide on 6.

To set up influence of (C - a sissy-suspenders):
	now C is delicateness-influencing.

Definition: a sissy-suspenders (called C) is end of transformation chain:
	decide yes. [It's the end of the transformation chain. This will make some things avoid bothering to attempt to transform it.]

To say TransformReaction of (C - a sissy-suspenders):
	if the outrage of C is too humiliating:
		if C is cursed, say "[variable custom style]Am I really stuck wearing this?  Look at these stupid hyper-feminine frills![roman type][line break]";
		otherwise say "[variable custom style]Maybe it's time to take these off. They've just got way too ridiculous...[roman type][line break]";
	otherwise if C is almost too much:
		say "[variable custom style]I guess this is what I have become. [if the player is male]A super feminine sissy...[otherwise]A parody of my own gender...[end if][roman type][line break]";
	otherwise if the humiliation of the player < HUMILIATION-BROKEN:
		say "[variable custom style]These are so [if the humiliation of the player > HUMILIATION-SHAMELESS - 2000]perfect[otherwise]cute[end if]. I love the silky frills![roman type][line break]".

Sissy Suspenders ends here.

