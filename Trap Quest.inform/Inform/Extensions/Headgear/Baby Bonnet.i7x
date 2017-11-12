Baby Bonnet by Headgear begins here.

A baby bonnet is a kind of headgear.  A baby bonnet is usually silk. There is 1 baby bonnet.  Figure of baby bonnet is the file "babybonnet1.png".  A baby bonnet is blondeness-negative.  A baby bonnet is brightness-negative.  A baby bonnet is redness-negative.  A baby bonnet is usually hair growing.  A baby bonnet is usually diaper-addiction-influencing.

The printed name of baby bonnet is usually "[TQlink of item described][clothing-title-before]baby bonnet[clothing-title-after][TQxlink of item described][verb-desc of item described]".  The text-shortcut of baby bonnet is "bon".

To decide if a baby bonnet is roleplay:
	if diaper lover >= 1, decide yes;
	decide no.

To decide which figure-name is the clothing-image of (C - a baby bonnet):
	decide on figure of baby bonnet.
	
To say ClothingDesc of (H - a baby bonnet):
	say "A Victorian style pink baby bonnet, that covers the top, back and sides of your head.".
	
To say ShortDesc of (H - a baby bonnet):
	say "pink baby bonnet".

To compute SelfExamineDesc of (H - a baby bonnet):
	let X be the largeness of hair;
	say "You are wearing a pink baby bonnet which [if the largeness of hair < 6]completely[otherwise if the largeness of hair < 8]mostly[otherwise]only partially[end if] covers your [ShortDesc of hair].  ".

baby-summoned is a number that varies.

To compute class outfit of (H - a baby bonnet):
	let O be a random off-stage onesie;
	let M be a random off-stage mittens;
	let P be nothing;
	let B be a random off-stage baby booties;
	if there is a worn mittens and there is a worn baby booties and a random tiger pacifier is off-stage:
		now P is a random tiger pacifier;
	otherwise if there is an off-stage white pacifier:
		now P is a random white pacifier;
	otherwise if there is an off-stage pink pacifier:
		now P is a random pink pacifier;
	if the headgear chance of H < the threshold of H:
		if O is actually summonable or (O is onesie and baby-summoned is 0):
			if baby-summoned is 0:
				repeat with D running through worn dresses:
					say "Your [D] vanishes!";
					destroy D;
				repeat with D running through worn corsets:
					say "Your [D] vanishes!";
					destroy D;
			say "[bold type]Your bonnet flutters in an invisible wind as a warm, thick onesie appears over you, encasing your torso and limbs in its soft fabric.[roman type][line break]";
			summon O cursed;
			now the raw-magic-modifier of O is 0;
			let D be a random worn diaper;
			if D is diaper:
				increase the raw-magic-modifier of O by 1;
				if the urine-soak of D > 0, increase the raw-magic-modifier of O by 1;
				if D is messed, increase the raw-magic-modifier of O by 1;
			now baby-summoned is 1;
		otherwise if M is actually summonable:
			say "[bold type]Your bonnet flutters in an invisible wind as large, round mittens appear around your hands.[roman type][line break]";
			summon M cursed;
			now the raw-magic-modifier of M is 0;
		otherwise if B is actually summonable:
			say "[bold type]Your bonnet flutters in an invisible wind as soft pink booties appear around your feet.[roman type][line break]";
			summon B cursed;
			now the raw-magic-modifier of B is 0;
		otherwise if P is actually summonable:
			if the semen taste addiction of the player > 11:
				now P is a random cock pacifier;
				say "[bold type]Your bonnet flutters in an invisible wind as a penis shaped pacifier suddenly appears out of nowhere and forces its way into your mouth![roman type][line break]";
			otherwise:
				say "[bold type]Your bonnet flutters in an invisible wind as a pacifier suddenly appears out of nowhere and forces its way into your mouth![roman type][line break]";
			summon P cursed;
			now the raw-magic-modifier of P is 0.

Definition: a baby bonnet (called C) is condom pinnable:
	decide yes.


Baby Bonnet ends here.
